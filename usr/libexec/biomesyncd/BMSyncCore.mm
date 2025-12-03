@interface BMSyncCore
+ (void)resetEagerExitTimer;
- (BMSyncCore)initWithQueue:(id)queue;
- (BOOL)shouldCacheConnectionToMachService:(unint64_t)service domain:(unint64_t)domain useCase:(id)case;
- (BOOL)start;
@end

@implementation BMSyncCore

- (BOOL)start
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_state == 2)
  {
    return 1;
  }

  [BMXPCConnectionFactory setDelegate:self];
  v4 = [BMAccessClient alloc];
  v5 = [v4 initWithUseCase:BMUseCaseSync];
  v6 = [BMResourceSpecifier alloc];
  v7 = [v6 initWithType:5 name:BMSyncResource];
  v26 = 0;
  v8 = [v5 requestAccessToResource:v7 mode:3 error:&v26];
  v9 = v26;
  accessAssertion = self->_accessAssertion;
  self->_accessAssertion = v8;

  if (self->_accessAssertion)
  {
    v11 = [BMSyncDatabase createPrimaryDatabaseWithQueue:self->_queue];
    open = [v11 open];
    if (open)
    {
      objc_storeStrong(&self->_primaryDatabase, v11);
      v12 = [BMDistributedSyncMultiStreamManager multiStreamManagerWithPrimaryDatabase:self->_primaryDatabase account:0 queue:self->_queue];
      primaryUserSyncStreamManager = self->_primaryUserSyncStreamManager;
      self->_primaryUserSyncStreamManager = v12;

      v14 = [[BMRapportSyncEngine alloc] initWithQueue:self->_queue primarySyncManager:self->_primaryUserSyncStreamManager primaryDatabase:self->_primaryDatabase];
      rapportSyncEngine = self->_rapportSyncEngine;
      self->_rapportSyncEngine = v14;

      v16 = [[BMCloudKitSyncEngine alloc] initWithQueue:self->_queue multiStreamManager:self->_primaryUserSyncStreamManager database:self->_primaryDatabase];
      cloudKitSyncEngine = self->_cloudKitSyncEngine;
      self->_cloudKitSyncEngine = v16;

      v18 = [BMSyncScheduler alloc];
      v19 = self->_rapportSyncEngine;
      v20 = self->_cloudKitSyncEngine;
      peerStatusTracker = [(BMRapportSyncEngine *)v19 peerStatusTracker];
      v22 = [(BMSyncScheduler *)v18 initWithRapportSyncEngine:v19 cloudKitSyncEngine:v20 peerStatusTracker:peerStatusTracker database:self->_primaryDatabase queue:self->_queue];
      syncScheduler = self->_syncScheduler;
      self->_syncScheduler = v22;

      self->_state = 2;
      +[BMSyncCore resetEagerExitTimer];
      [(BMDistributedSyncMultiStreamManager *)self->_primaryUserSyncStreamManager scheduleBackgroundTaskIfThereAreDeferredPendingBatches];
    }

    else
    {
      self->_state = 1;
    }
  }

  else
  {
    v24 = __biome_log_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100047F18(v9, v24);
    }

    open = 0;
    self->_state = 1;
  }

  return open;
}

+ (void)resetEagerExitTimer
{
  if (qword_10008BCF0 != -1)
  {
    sub_1000020A0();
  }

  v2 = qword_10008BCE8;
  v3 = dispatch_time(0, 60000000000);

  dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
}

- (BMSyncCore)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = BMSyncCore;
  v6 = [(BMSyncCore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (BOOL)shouldCacheConnectionToMachService:(unint64_t)service domain:(unint64_t)domain useCase:(id)case
{
  caseCopy = case;
  v8 = caseCopy;
  v9 = 0;
  if (service == 1 && !domain)
  {
    if ([caseCopy isEqual:BMUseCaseSync] & 1) != 0 || (objc_msgSend(v8, "isEqual:", BMUseCaseWriter))
    {
      v9 = 1;
    }

    else
    {
      v9 = [v8 isEqual:BMUseCasePruner];
    }
  }

  return v9;
}

@end