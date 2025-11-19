@interface AABattery
- (BOOL)stale;
@end

@implementation AABattery

- (BOOL)stale
{
  Current = CFAbsoluteTimeGetCurrent();
  [(AABattery *)self lastSeen];
  return Current - v4 > 600.0;
}

@end