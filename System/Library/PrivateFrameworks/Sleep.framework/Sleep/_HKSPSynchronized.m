@interface _HKSPSynchronized
- (void)performBlock:(id)a3;
@end

@implementation _HKSPSynchronized

- (void)performBlock:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5[2]();
  objc_sync_exit(v4);
}

@end