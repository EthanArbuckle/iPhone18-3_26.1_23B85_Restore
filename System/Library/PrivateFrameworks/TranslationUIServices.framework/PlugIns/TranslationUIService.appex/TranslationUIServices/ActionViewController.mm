@interface ActionViewController
- (_TtC20TranslationUIService20ActionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_willAppearInRemoteViewController;
- (void)adaptForPresentationInPopover:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ActionViewController

- (void)_willAppearInRemoteViewController
{
  v2 = self;
  sub_100005E78();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100006550();
}

- (void)adaptForPresentationInPopover:(BOOL)a3
{
  v3 = self;
  sub_100004F58();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100050308();
}

- (_TtC20TranslationUIService20ActionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100051158();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100007484(v5, v7, a4);
}

@end