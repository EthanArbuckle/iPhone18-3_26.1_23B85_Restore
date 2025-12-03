@interface CACRecordedUserActionManager
+ (id)sharedManager;
- (CACRecordedUserActionManager)init;
- (id)recordedUserActionFlow;
- (void)addRecognizedSpokenCommand:(id)command;
- (void)beginExecutingRecordedUserActionFlow:(id)flow completionBlock:(id)block;
- (void)cancelExecution;
- (void)startRecordingUserActions;
- (void)stopRecordingUserActions;
@end

@implementation CACRecordedUserActionManager

+ (id)sharedManager
{
  if (sharedManager_singletonInit != -1)
  {
    +[CACRecordedUserActionManager sharedManager];
  }

  v3 = sCACRecordedUserActionManager;

  return v3;
}

uint64_t __45__CACRecordedUserActionManager_sharedManager__block_invoke()
{
  sCACRecordedUserActionManager = objc_alloc_init(CACRecordedUserActionManager);

  return MEMORY[0x2821F96F8]();
}

- (CACRecordedUserActionManager)init
{
  v6.receiver = self;
  v6.super_class = CACRecordedUserActionManager;
  v2 = [(CACRecordedUserActionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recordedUserActions = v2->_recordedUserActions;
    v2->_recordedUserActions = v3;
  }

  return v2;
}

- (void)addRecognizedSpokenCommand:(id)command
{
  commandCopy = command;
  identifier = [commandCopy identifier];
  v5 = identifier;
  if (self->_isRecording && ([identifier isEqualToString:@"System.StartRecordingCommands"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"System.StopRecordingCommands") & 1) == 0)
  {
    recordedUserActions = self->_recordedUserActions;
    v7 = [[CACRecordedUserAction alloc] initWithSpokenCommand:commandCopy];
    [(NSMutableArray *)recordedUserActions addObject:v7];
  }
}

- (void)startRecordingUserActions
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableArray *)obj->_recordedUserActions removeAllObjects];
  obj->_isRecording = 1;
  objc_sync_exit(obj);
}

- (void)stopRecordingUserActions
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isRecording = 0;
  objc_sync_exit(obj);
}

- (id)recordedUserActionFlow
{
  v2 = [[CACRecordedUserActionFlow alloc] initWithUserActions:self->_recordedUserActions];

  return v2;
}

- (void)beginExecutingRecordedUserActionFlow:(id)flow completionBlock:(id)block
{
  flowCopy = flow;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isExecuting)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy->_isExecuting = 1;
    objc_storeStrong(&selfCopy->_executingUserActionFlow, flow);
    objc_sync_exit(selfCopy);

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __85__CACRecordedUserActionManager_beginExecutingRecordedUserActionFlow_completionBlock___block_invoke;
    v10[3] = &unk_279CEB690;
    v10[4] = selfCopy;
    v11 = blockCopy;
    [flowCopy beginExecutingWithCompletionBlock:v10];
  }
}

void __85__CACRecordedUserActionManager_beginExecutingRecordedUserActionFlow_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v7 = a2;
  objc_sync_enter(v4);
  *(*(a1 + 32) + 25) = 0;
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  objc_sync_exit(v4);
  (*(*(a1 + 40) + 16))();
}

- (void)cancelExecution
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_isRecording && obj->_isExecuting)
  {
    executingUserActionFlow = obj->_executingUserActionFlow;
    if (executingUserActionFlow)
    {
      [(CACRecordedUserActionFlow *)executingUserActionFlow cancelExecution];
    }
  }

  objc_sync_exit(obj);
}

@end