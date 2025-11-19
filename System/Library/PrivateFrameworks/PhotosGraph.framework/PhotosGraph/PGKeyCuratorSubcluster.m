@interface PGKeyCuratorSubcluster
- (PGKeyCuratorSubcluster)initWithItems:(id)a3 keyItem:(id)a4 score:(double)a5 iconicScoreBucket:(unint64_t)a6;
@end

@implementation PGKeyCuratorSubcluster

- (PGKeyCuratorSubcluster)initWithItems:(id)a3 keyItem:(id)a4 score:(double)a5 iconicScoreBucket:(unint64_t)a6
{
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PGKeyCuratorSubcluster;
  v11 = [(PGKeyCuratorSubcluster *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_keyItem, a4);
    v12->_score = a5;
    v12->_iconicScoreBucket = a6;
  }

  return v12;
}

@end