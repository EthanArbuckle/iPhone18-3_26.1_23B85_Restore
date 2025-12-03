@interface SessionVideoPlayerViewController.NoKeyCommandAVPlayerViewController
- (_TtCC9SeymourUI32SessionVideoPlayerViewControllerP33_B8375A4CE4C4E315AD41C55B9F4AE73534NoKeyCommandAVPlayerViewController)initWithCoder:(id)coder;
- (_TtCC9SeymourUI32SessionVideoPlayerViewControllerP33_B8375A4CE4C4E315AD41C55B9F4AE73534NoKeyCommandAVPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtCC9SeymourUI32SessionVideoPlayerViewControllerP33_B8375A4CE4C4E315AD41C55B9F4AE73534NoKeyCommandAVPlayerViewController)initWithPlayerLayerView:(id)view;
@end

@implementation SessionVideoPlayerViewController.NoKeyCommandAVPlayerViewController

- (_TtCC9SeymourUI32SessionVideoPlayerViewControllerP33_B8375A4CE4C4E315AD41C55B9F4AE73534NoKeyCommandAVPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_20C13C954();
    bundleCopy = bundle;
    v7 = sub_20C13C914();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SessionVideoPlayerViewController.NoKeyCommandAVPlayerViewController();
  v9 = [(SessionVideoPlayerViewController.NoKeyCommandAVPlayerViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtCC9SeymourUI32SessionVideoPlayerViewControllerP33_B8375A4CE4C4E315AD41C55B9F4AE73534NoKeyCommandAVPlayerViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SessionVideoPlayerViewController.NoKeyCommandAVPlayerViewController();
  coderCopy = coder;
  v5 = [(SessionVideoPlayerViewController.NoKeyCommandAVPlayerViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtCC9SeymourUI32SessionVideoPlayerViewControllerP33_B8375A4CE4C4E315AD41C55B9F4AE73534NoKeyCommandAVPlayerViewController)initWithPlayerLayerView:(id)view
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SessionVideoPlayerViewController.NoKeyCommandAVPlayerViewController();
  return [(SessionVideoPlayerViewController.NoKeyCommandAVPlayerViewController *)&v5 initWithPlayerLayerView:view];
}

@end