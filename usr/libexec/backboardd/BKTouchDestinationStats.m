@interface BKTouchDestinationStats
- (BKTouchDestinationStats)init;
@end

@implementation BKTouchDestinationStats

- (BKTouchDestinationStats)init
{
  v8.receiver = self;
  v8.super_class = BKTouchDestinationStats;
  v2 = [(BKTouchDestinationStats *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableIndexSet);
    pathIndexes = v2->_pathIndexes;
    v2->_pathIndexes = v3;

    v5 = objc_alloc_init(NSMutableIndexSet);
    touchIdentifiers = v2->_touchIdentifiers;
    v2->_touchIdentifiers = v5;
  }

  return v2;
}

@end