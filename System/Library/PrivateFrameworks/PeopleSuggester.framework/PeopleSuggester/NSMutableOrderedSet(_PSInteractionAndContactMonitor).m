@interface NSMutableOrderedSet(_PSInteractionAndContactMonitor)
- (void)_ps_appendObject:()_PSInteractionAndContactMonitor truncatingToCount:;
@end

@implementation NSMutableOrderedSet(_PSInteractionAndContactMonitor)

- (void)_ps_appendObject:()_PSInteractionAndContactMonitor truncatingToCount:
{
  v8 = a3;
  [a1 removeObject:?];
  v6 = [a1 count] + 1;
  v7 = v6 - a4;
  if (v6 >= a4)
  {
    [a1 removeObjectsInRange:{0, v7}];
  }

  [a1 addObject:{v8, v7}];
}

@end