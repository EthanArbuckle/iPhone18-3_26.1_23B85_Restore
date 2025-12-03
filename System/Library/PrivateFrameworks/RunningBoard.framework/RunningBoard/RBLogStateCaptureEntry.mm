@interface RBLogStateCaptureEntry
- (void)setQueue:(uint64_t)queue;
- (void)setTitle:(uint64_t)title;
@end

@implementation RBLogStateCaptureEntry

- (void)setTitle:(uint64_t)title
{
  if (title)
  {
    objc_storeStrong((title + 8), a2);
  }
}

- (void)setQueue:(uint64_t)queue
{
  if (queue)
  {
    objc_storeStrong((queue + 24), a2);
  }
}

@end