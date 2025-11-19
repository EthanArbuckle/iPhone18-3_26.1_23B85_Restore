@interface PosterEditingConfirmationViewController
- (_TtC11PosterBoard39PosterEditingConfirmationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PosterEditingConfirmationViewController

- (void)loadView
{
  v2 = self;
  sub_21B614F24();
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_21B616754(a3, a4);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PosterEditingConfirmationViewController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(PosterEditingConfirmationViewController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21B644E48(v7, a4);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

- (_TtC11PosterBoard39PosterEditingConfirmationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_21B6C8DA4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_21B61722C(v5, v7, a4);
}

@end