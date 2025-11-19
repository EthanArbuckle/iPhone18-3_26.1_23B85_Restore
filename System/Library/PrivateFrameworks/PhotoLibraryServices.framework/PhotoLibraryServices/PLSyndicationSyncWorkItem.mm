@interface PLSyndicationSyncWorkItem
+ (id)workItemForFindingSyncDate;
- (PLSyndicationSyncWorkItem)initWithSyndicationQueryType:(int64_t)a3 startDate:(id)a4 endDate:(id)a5;
@end

@implementation PLSyndicationSyncWorkItem

- (PLSyndicationSyncWorkItem)initWithSyndicationQueryType:(int64_t)a3 startDate:(id)a4 endDate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PLSyndicationSyncWorkItem;
  v11 = [(PLSyndicationSyncWorkItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_queryType = a3;
    objc_storeStrong(&v11->_startDate, a4);
    objc_storeStrong(&v12->_endDate, a5);
  }

  return v12;
}

+ (id)workItemForFindingSyncDate
{
  v2 = objc_alloc_init(a1);
  v2[8] = 1;

  return v2;
}

@end