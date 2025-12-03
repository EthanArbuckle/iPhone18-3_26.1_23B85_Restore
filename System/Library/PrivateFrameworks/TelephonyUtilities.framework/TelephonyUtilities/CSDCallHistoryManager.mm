@interface CSDCallHistoryManager
- (CSDCallHistoryManager)init;
- (CSDCallHistoryManager)initWithCHManager:(id)manager;
- (CSDCallHistoryManager)initWithCHManager:(id)manager queue:(id)queue;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)dealloc;
- (void)handleCallHistoryDatabaseChangedNotification:(id)notification;
- (void)removeDelegate:(id)delegate;
- (void)reportRecentCallForConversation:(id)conversation withStartDate:(id)date avMode:(unint64_t)mode;
- (void)updateOutgoingLocalParticipantUUID:(id)d forCallsWithOutgoingLocalParticipantUUID:(id)iD;
@end

@implementation CSDCallHistoryManager

- (CSDCallHistoryManager)init
{
  v3 = objc_alloc_init(CHManager);
  v4 = [(CSDCallHistoryManager *)self initWithCHManager:v3];

  return v4;
}

- (CSDCallHistoryManager)initWithCHManager:(id)manager
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);
  managerCopy = manager;

  v8 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.callhistorymanager", v6);
  v9 = [(CSDCallHistoryManager *)self initWithCHManager:managerCopy queue:v8];

  return v9;
}

- (CSDCallHistoryManager)initWithCHManager:(id)manager queue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = CSDCallHistoryManager;
  v9 = [(CSDCallHistoryManager *)&v14 init];
  if (v9)
  {
    v10 = objc_alloc_init(TUDelegateController);
    delegateController = v9->_delegateController;
    v9->_delegateController = v10;

    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v9->_chManager, manager);
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

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  delegateController = [(CSDCallHistoryManager *)self delegateController];
  [delegateController addDelegate:delegateCopy queue:queueCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateController = [(CSDCallHistoryManager *)self delegateController];
  [delegateController removeDelegate:delegateCopy];
}

- (void)updateOutgoingLocalParticipantUUID:(id)d forCallsWithOutgoingLocalParticipantUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  queue = [(CSDCallHistoryManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024054C;
  block[3] = &unk_100619E58;
  v12 = iDCopy;
  selfCopy = self;
  v14 = dCopy;
  v9 = dCopy;
  v10 = iDCopy;
  dispatch_async(queue, block);
}

- (void)reportRecentCallForConversation:(id)conversation withStartDate:(id)date avMode:(unint64_t)mode
{
  conversationCopy = conversation;
  dateCopy = date;
  delegateController = [(CSDCallHistoryManager *)self delegateController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002406B0;
  v13[3] = &unk_10061F6F8;
  v13[4] = self;
  v14 = conversationCopy;
  v15 = dateCopy;
  modeCopy = mode;
  v11 = dateCopy;
  v12 = conversationCopy;
  [delegateController enumerateDelegatesUsingBlock:v13];
}

- (void)handleCallHistoryDatabaseChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = notificationCopy;
    v6 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@.", buf, 0x16u);
  }

  delegateController = [(CSDCallHistoryManager *)self delegateController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002408EC;
  v8[3] = &unk_10061F720;
  v8[4] = self;
  [delegateController enumerateDelegatesUsingBlock:v8];
}

@end