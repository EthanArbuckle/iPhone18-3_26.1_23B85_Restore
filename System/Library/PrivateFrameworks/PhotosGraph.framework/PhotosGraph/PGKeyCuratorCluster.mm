@interface PGKeyCuratorCluster
- (PGKeyCuratorCluster)initWithSubclusters:(id)a3 keyItem:(id)a4 score:(double)a5;
@end

@implementation PGKeyCuratorCluster

- (PGKeyCuratorCluster)initWithSubclusters:(id)a3 keyItem:(id)a4 score:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PGKeyCuratorCluster;
  v11 = [(PGKeyCuratorCluster *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_subclusters, a3);
    objc_storeStrong(&v12->_keyItem, a4);
    v12->_score = a5;
  }

  return v12;
}

@end