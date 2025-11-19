@interface RBLogStateCaptureEntry
- (void)setQueue:(uint64_t)a1;
- (void)setTitle:(uint64_t)a1;
@end

@implementation RBLogStateCaptureEntry

- (void)setTitle:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

- (void)setQueue:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

@end