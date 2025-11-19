@interface CSDCallHistoryManagerXPCServer
- (CSDCallHistoryManagerXPCServer)initWithManager:(id)a3;
- (void)invalidate;
- (void)registerClient:(id)a3;
- (void)reportRecentCallForConversation:(id)a3 withStartDate:(id)a4 avMode:(unint64_t)a5;
- (void)unregisterClient:(id)a3;
- (void)updateOutgoingLocalParticipantUUID:(id)a3 forCallsWithOutgoingLocalParticipantUUID:(id)a4;
@end

@implementation CSDCallHistoryManagerXPCServer

- (CSDCallHistoryManagerXPCServer)initWithManager:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = CSDCallHistoryManagerXPCServer;
  v6 = [(CSDCallHistoryManagerXPCServer *)&v19 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.callhistorymanagerxpcserver", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_callHistoryManager, a3);
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
    v13 = [(CSDCallHistoryManagerXPCServer *)v12 queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10011DC58;
    v15[3] = &unk_100619D38;
    v16 = v12;
    dispatch_async(v13, v15);
  }

  return v6;
}

- (void)invalidate
{
  v3 = [(CSDCallHistoryManagerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011DCF4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)reportRecentCallForConversation:(id)a3 withStartDate:(id)a4 avMode:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CSDCallHistoryManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(CSDCallHistoryManagerXPCServer *)self clientManager];
  v12 = [v11 currentClient];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011DE60;
  v15[3] = &unk_10061BDD0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = a5;
  v13 = v9;
  v14 = v8;
  sub_100004AA4(v12, @"modify-call-history", v15, 0, "[CSDCallHistoryManagerXPCServer reportRecentCallForConversation:withStartDate:avMode:]");
}

- (void)updateOutgoingLocalParticipantUUID:(id)a3 forCallsWithOutgoingLocalParticipantUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallHistoryManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDCallHistoryManagerXPCServer *)self clientManager];
  v10 = [v9 currentClient];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011DFDC;
  v13[3] = &unk_100619E58;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  sub_100004AA4(v10, @"modify-call-history", v13, 0, "[CSDCallHistoryManagerXPCServer updateOutgoingLocalParticipantUUID:forCallsWithOutgoingLocalParticipantUUID:]");
}

- (void)registerClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallHistoryManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011E0E4;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)unregisterClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallHistoryManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011E1EC;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end