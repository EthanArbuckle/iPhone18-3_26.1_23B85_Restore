@interface CSDCallHistoryManager
- (CSDCallHistoryManager)init;
- (CSDCallHistoryManager)initWithCHManager:(id)a3;
- (CSDCallHistoryManager)initWithCHManager:(id)a3 queue:(id)a4;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)handleCallHistoryDatabaseChangedNotification:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)reportRecentCallForConversation:(id)a3 withStartDate:(id)a4 avMode:(unint64_t)a5;
- (void)updateOutgoingLocalParticipantUUID:(id)a3 forCallsWithOutgoingLocalParticipantUUID:(id)a4;
@end

@implementation CSDCallHistoryManager

- (CSDCallHistoryManager)init
{
  v3 = objc_alloc_init(CHManager);
  v4 = [(CSDCallHistoryManager *)self initWithCHManager:v3];

  return v4;
}

- (CSDCallHistoryManager)initWithCHManager:(id)a3
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);
  v7 = a3;

  v8 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.callhistorymanager", v6);
  v9 = [(CSDCallHistoryManager *)self initWithCHManager:v7 queue:v8];

  return v9;
}

- (CSDCallHistoryManager)initWithCHManager:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CSDCallHistoryManager;
  v9 = [(CSDCallHistoryManager *)&v14 init];
  if (v9)
  {
    v10 = objc_alloc_init(TUDelegateController);
    delegateController = v9->_delegateController;
    v9->_delegateController = v10;

    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v9->_chManager, a3);
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v9 selector:"handleCallHistoryDatabaseChangedNotification:" name:kCallHistoryDatabaseChangedNotification object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:kCallHistoryDatabaseChangedNotification object:0];

  v4.receiver = self;
  v4.super_class = CSDCallHistoryManager;
  [(CSDCallHistoryManager *)&v4 dealloc];
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDCallHistoryManager *)self delegateController];
  [v8 addDelegate:v7 queue:v6];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallHistoryManager *)self delegateController];
  [v5 removeDelegate:v4];
}

- (void)updateOutgoingLocalParticipantUUID:(id)a3 forCallsWithOutgoingLocalParticipantUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallHistoryManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024054C;
  block[3] = &unk_100619E58;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)reportRecentCallForConversation:(id)a3 withStartDate:(id)a4 avMode:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CSDCallHistoryManager *)self delegateController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002406B0;
  v13[3] = &unk_10061F6F8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  [v10 enumerateDelegatesUsingBlock:v13];
}

- (void)handleCallHistoryDatabaseChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = v4;
    v6 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@.", buf, 0x16u);
  }

  v7 = [(CSDCallHistoryManager *)self delegateController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002408EC;
  v8[3] = &unk_10061F720;
  v8[4] = self;
  [v7 enumerateDelegatesUsingBlock:v8];
}

@end