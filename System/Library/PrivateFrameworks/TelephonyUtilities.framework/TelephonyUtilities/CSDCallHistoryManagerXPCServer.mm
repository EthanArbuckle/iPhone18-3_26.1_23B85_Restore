@interface CSDCallHistoryManagerXPCServer
- (CSDCallHistoryManagerXPCServer)initWithManager:(id)manager;
- (void)invalidate;
- (void)registerClient:(id)client;
- (void)reportRecentCallForConversation:(id)conversation withStartDate:(id)date avMode:(unint64_t)mode;
- (void)unregisterClient:(id)client;
- (void)updateOutgoingLocalParticipantUUID:(id)d forCallsWithOutgoingLocalParticipantUUID:(id)iD;
@end

@implementation CSDCallHistoryManagerXPCServer

- (CSDCallHistoryManagerXPCServer)initWithManager:(id)manager
{
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = CSDCallHistoryManagerXPCServer;
  v6 = [(CSDCallHistoryManagerXPCServer *)&v19 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.callhistorymanagerxpcserver", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_callHistoryManager, manager);
    [(CSDCallHistoryManager *)v6->_callHistoryManager addDelegate:v6 queue:v6->_queue];
    v9 = [[CSDClientManager alloc] initWithSerialQueue:v6->_queue];
    clientManager = v6->_clientManager;
    v6->_clientManager = v9;

    v11 = v6->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011D9E0;
    block[3] = &unk_100619D38;
    v12 = v6;
    v18 = v12;
    dispatch_sync(v11, block);
    queue = [(CSDCallHistoryManagerXPCServer *)v12 queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10011DC58;
    v15[3] = &unk_100619D38;
    v16 = v12;
    dispatch_async(queue, v15);
  }

  return v6;
}

- (void)invalidate
{
  queue = [(CSDCallHistoryManagerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011DCF4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)reportRecentCallForConversation:(id)conversation withStartDate:(id)date avMode:(unint64_t)mode
{
  conversationCopy = conversation;
  dateCopy = date;
  queue = [(CSDCallHistoryManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDCallHistoryManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011DE60;
  v15[3] = &unk_10061BDD0;
  v15[4] = self;
  v16 = conversationCopy;
  v17 = dateCopy;
  modeCopy = mode;
  v13 = dateCopy;
  v14 = conversationCopy;
  sub_100004AA4(currentClient, @"modify-call-history", v15, 0, "[CSDCallHistoryManagerXPCServer reportRecentCallForConversation:withStartDate:avMode:]");
}

- (void)updateOutgoingLocalParticipantUUID:(id)d forCallsWithOutgoingLocalParticipantUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  queue = [(CSDCallHistoryManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDCallHistoryManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011DFDC;
  v13[3] = &unk_100619E58;
  v13[4] = self;
  v14 = dCopy;
  v15 = iDCopy;
  v11 = iDCopy;
  v12 = dCopy;
  sub_100004AA4(currentClient, @"modify-call-history", v13, 0, "[CSDCallHistoryManagerXPCServer updateOutgoingLocalParticipantUUID:forCallsWithOutgoingLocalParticipantUUID:]");
}

- (void)registerClient:(id)client
{
  clientCopy = client;
  queue = [(CSDCallHistoryManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011E0E4;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)unregisterClient:(id)client
{
  clientCopy = client;
  queue = [(CSDCallHistoryManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011E1EC;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

@end