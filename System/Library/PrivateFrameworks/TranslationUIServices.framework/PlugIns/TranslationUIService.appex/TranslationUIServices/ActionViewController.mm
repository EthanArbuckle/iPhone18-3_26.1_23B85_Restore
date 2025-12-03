@interface ActionViewController
- (_TtC20TranslationUIService20ActionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_willAppearInRemoteViewController;
- (void)adaptForPresentationInPopover:(BOOL)popover;
- (void)viewDidLoad;
@end

@implementation ActionViewController

- (void)_willAppearInRemoteViewController
{
  selfCopy = self;
  sub_100005E78();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100006550();
}

- (void)adaptForPresentationInPopover:(BOOL)popover
{
  selfCopy = self;
  sub_100004F58();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100050308();
}

- (_TtC20TranslationUIService20ActionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100051158();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100007484(v5, v7, bundle);
}

@end