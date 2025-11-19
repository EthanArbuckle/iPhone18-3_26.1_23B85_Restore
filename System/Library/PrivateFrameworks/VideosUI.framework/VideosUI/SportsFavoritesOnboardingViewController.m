@interface SportsFavoritesOnboardingViewController
- (_TtC8VideosUI39SportsFavoritesOnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doConfirmationAction;
- (void)doDeferAction;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SportsFavoritesOnboardingViewController

- (void)viewDidLoad
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3988438();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3988938(v4);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3988B84(v4);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3988C70();
}

- (void)doConfirmationAction
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E39894FC();
}

- (void)doDeferAction
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E398AB90();
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1E398ADEC(v6, a4);

  swift_unknownObjectRelease();
}

- (_TtC8VideosUI39SportsFavoritesOnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E398AEDC();
}

@end