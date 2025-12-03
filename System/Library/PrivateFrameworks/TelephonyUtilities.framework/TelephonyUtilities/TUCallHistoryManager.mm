@interface TUCallHistoryManager
- (TUCallHistoryManager)init;
- (TUCallHistoryManager)initWithDataSource:(id)source;
- (void)dealloc;
- (void)reportRecentCallForConversation:(id)conversation withStartDate:(id)date avMode:(unint64_t)mode;
- (void)updateOutgoingLocalParticipantUUID:(id)d forCallsWithOutgoingLocalParticipantUUID:(id)iD;
@end

@implementation TUCallHistoryManager

- (TUCallHistoryManager)init
{
  v3 = objc_alloc_init(TUCallHistoryManagerXPCClient);
  v4 = [(TUCallHistoryManager *)self initWithDataSource:v3];

  return v4;
}

- (TUCallHistoryManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = TUCallHistoryManager;
  v6 = [(TUCallHistoryManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (void)dealloc
{
  [(TUCallHistoryManagerDataSource *)self->_dataSource invalidate];
  v3.receiver = self;
  v3.super_class = TUCallHistoryManager;
  [(TUCallHistoryManager *)&v3 dealloc];
}

- (void)updateOutgoingLocalParticipantUUID:(id)d forCallsWithOutgoingLocalParticipantUUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  dataSource = [(TUCallHistoryManager *)self dataSource];
  [dataSource updateOutgoingLocalParticipantUUID:dCopy forCallsWithOutgoingLocalParticipantUUID:iDCopy];
}

- (void)reportRecentCallForConversation:(id)conversation withStartDate:(id)date avMode:(unint64_t)mode
{
  dateCopy = date;
  conversationCopy = conversation;
  dataSource = [(TUCallHistoryManager *)self dataSource];
  [dataSource reportRecentCallForConversation:conversationCopy withStartDate:dateCopy avMode:mode];
}

@end