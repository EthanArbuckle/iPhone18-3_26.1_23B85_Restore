@interface PGKeyCuratorCluster
- (PGKeyCuratorCluster)initWithSubclusters:(id)subclusters keyItem:(id)item score:(double)score;
@end

@implementation PGKeyCuratorCluster

- (PGKeyCuratorCluster)initWithSubclusters:(id)subclusters keyItem:(id)item score:(double)score
{
  subclustersCopy = subclusters;
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = PGKeyCuratorCluster;
  v11 = [(PGKeyCuratorCluster *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_subclusters, subclusters);
    objc_storeStrong(&v12->_keyItem, item);
    v12->_score = score;
  }

  return v12;
}

@end