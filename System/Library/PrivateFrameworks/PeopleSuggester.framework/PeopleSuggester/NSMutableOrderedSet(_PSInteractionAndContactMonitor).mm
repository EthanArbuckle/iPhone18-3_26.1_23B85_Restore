@interface NSMutableOrderedSet(_PSInteractionAndContactMonitor)
- (void)_ps_appendObject:()_PSInteractionAndContactMonitor truncatingToCount:;
@end

@implementation NSMutableOrderedSet(_PSInteractionAndContactMonitor)

- (void)_ps_appendObject:()_PSInteractionAndContactMonitor truncatingToCount:
{
  v8 = a3;
  [self removeObject:?];
  v6 = [self count] + 1;
  v7 = v6 - a4;
  if (v6 >= a4)
  {
    [self removeObjectsInRange:{0, v7}];
  }

  [self addObject:{v8, v7}];
}

@end