@interface SportsFavoritesOnboardingViewController
- (_TtC8VideosUI39SportsFavoritesOnboardingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doConfirmationAction;
- (void)doDeferAction;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation SportsFavoritesOnboardingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3988438();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3988938(v4);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3988B84(v4);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3988C70();
}

- (void)doConfirmationAction
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E39894FC();
}

- (void)doDeferAction
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E398AB90();
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E398ADEC(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (_TtC8VideosUI39SportsFavoritesOnboardingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E398AEDC();
}

@end