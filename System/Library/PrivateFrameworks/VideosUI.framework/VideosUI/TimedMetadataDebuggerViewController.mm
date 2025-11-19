@interface TimedMetadataDebuggerViewController
- (_TtC8VideosUI35TimedMetadataDebuggerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)observeCurrentVendor;
- (void)stopObserving;
@end

@implementation TimedMetadataDebuggerViewController

- (_TtC8VideosUI35TimedMetadataDebuggerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E3B9CAA8();
}

- (void)observeCurrentVendor
{
  v2 = self;
  sub_1E3B9CB00();
}

- (void)stopObserving
{
  v2 = self;
  sub_1E3B9CB4C();
}

@end