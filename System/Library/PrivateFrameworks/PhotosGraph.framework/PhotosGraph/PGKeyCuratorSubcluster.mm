@interface PGKeyCuratorSubcluster
- (PGKeyCuratorSubcluster)initWithItems:(id)items keyItem:(id)item score:(double)score iconicScoreBucket:(unint64_t)bucket;
@end

@implementation PGKeyCuratorSubcluster

- (PGKeyCuratorSubcluster)initWithItems:(id)items keyItem:(id)item score:(double)score iconicScoreBucket:(unint64_t)bucket
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = PGKeyCuratorSubcluster;
  v11 = [(PGKeyCuratorSubcluster *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_keyItem, item);
    v12->_score = score;
    v12->_iconicScoreBucket = bucket;
  }

  return v12;
}

@end