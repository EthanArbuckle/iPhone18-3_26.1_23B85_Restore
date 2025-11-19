@interface WBUHistory
- (WBUHistory)initWithDatabaseID:(id)a3;
- (id)_createHistoryStore;
@end

@implementation WBUHistory

- (id)_createHistoryStore
{
  v3 = [off_279EB0F48 alloc];
  v4 = [(WBSHistory *)self databaseID];
  v5 = [v3 initWithDatabaseID:v4 itemCountLimit:4000 historyAgeLimit:-[WBUHistory _historyItemClass](self historyItemClass:{"_historyItemClass"), *(&self->super.super.isa + *off_279EB0F58)}];

  return v5;
}

- (WBUHistory)initWithDatabaseID:(id)a3
{
  v7.receiver = self;
  v7.super_class = WBUHistory;
  v3 = [(WBSHistory *)&v7 initWithDatabaseID:a3];
  v4 = v3;
  if (v3)
  {
    v3->_shouldScheduleMaintenance = 1;
    *(&v3->super.super.isa + *off_279EB0F58) = 0x4143C68000000000;
    [(WBSHistory *)v3 _createHistoryStoreIfNeeded];
    v5 = v4;
  }

  return v4;
}

@end