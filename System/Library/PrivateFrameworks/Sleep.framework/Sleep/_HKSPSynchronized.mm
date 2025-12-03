@interface _HKSPSynchronized
- (void)performBlock:(id)block;
@end

@implementation _HKSPSynchronized

- (void)performBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  blockCopy[2]();
  objc_sync_exit(selfCopy);
}

@end