@interface PosterEditingConfirmationViewController
- (_TtC11PosterBoard39PosterEditingConfirmationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PosterEditingConfirmationViewController

- (void)loadView
{
  selfCopy = self;
  sub_21B614F24();
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  sub_21B616754(window, disappear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PosterEditingConfirmationViewController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(PosterEditingConfirmationViewController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21B644E48(v7, coordinator);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

- (_TtC11PosterBoard39PosterEditingConfirmationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_21B6C8DA4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_21B61722C(v5, v7, bundle);
}

@end