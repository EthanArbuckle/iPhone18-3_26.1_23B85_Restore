@interface SPCSTopHitResult
- (SPCSTopHitResult)initWithRankingItem:(id)item clientData:(id)data;
@end

@implementation SPCSTopHitResult

- (SPCSTopHitResult)initWithRankingItem:(id)item clientData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = SPCSTopHitResult;
  v8 = [(SPTopHitResult *)&v11 initWithRankingItem:item];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientData, data);
  }

  return v9;
}

@end