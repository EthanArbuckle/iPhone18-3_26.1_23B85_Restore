@interface PLSyndicationSyncWorkItem
+ (id)workItemForFindingSyncDate;
- (PLSyndicationSyncWorkItem)initWithSyndicationQueryType:(int64_t)type startDate:(id)date endDate:(id)endDate;
@end

@implementation PLSyndicationSyncWorkItem

- (PLSyndicationSyncWorkItem)initWithSyndicationQueryType:(int64_t)type startDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v14.receiver = self;
  v14.super_class = PLSyndicationSyncWorkItem;
  v11 = [(PLSyndicationSyncWorkItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_queryType = type;
    objc_storeStrong(&v11->_startDate, date);
    objc_storeStrong(&v12->_endDate, endDate);
  }

  return v12;
}

+ (id)workItemForFindingSyncDate
{
  v2 = objc_alloc_init(self);
  v2[8] = 1;

  return v2;
}

@end