@interface SessionViewController
- (NSArray)keyCommands;
- (NSArray)preferredFocusEnvironments;
- (UIViewController)childViewControllerForHomeIndicatorAutoHidden;
- (_TtC9SeymourUI21SessionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (unint64_t)supportedInterfaceOrientations;
- (void)handleEscapeKeyCommand;
- (void)handleSpacebarCommand;
- (void)menuButtonTapped;
- (void)playerViewController:(id)a3 didSelectMediaPresentationSetting:(id)a4 forMediaPresentationSelector:(id)a5;
- (void)playerViewController:(id)a3 failedToStartPictureInPictureWithError:(id)a4;
- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)playerViewControllerDidStopPictureInPicture:(id)a3;
- (void)playerViewControllerWillStartPictureInPicture:(id)a3;
- (void)playerViewControllerWillStopPictureInPicture:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SessionViewController

- (void)handleSpacebarCommand
{
  v1 = a1;
  sub_20BBFCCC4();
}

- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = v9;
  v14[4] = sub_20B877AAC;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_20B7B548C;
  v14[3] = &block_descriptor_11;
  v11 = _Block_copy(v14);
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = self;

  [a5 addCoordinatedAnimations:v11 completion:0];
  _Block_release(v11);

  swift_unknownObjectRelease();
}

- (void)playerViewController:(id)a3 didSelectMediaPresentationSetting:(id)a4 forMediaPresentationSelector:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_20B8768AC(v9);
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = SessionViewController.supportedInterfaceOrientations.getter();

  return v3;
}

- (NSArray)keyCommands
{
  if (_s9SeymourUI21SessionViewControllerC11keyCommandsSaySo12UIKeyCommandCGSgvg_0())
  {
    sub_20B51C88C(0, &qword_27C771A70);
    v2 = sub_20C13CC54();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)handleEscapeKeyCommand
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_20C13B574();
  sub_20C13BB64();
  (*(v4 + 8))(v6, v3);
  sub_20BBDA1C0();
}

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
  SessionViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v3 = sub_20C13CC54();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  SessionViewController.viewDidLoad()();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  SessionViewController.viewDidDisappear(_:)(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  SessionViewController.viewWillLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  SessionViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)menuButtonTapped
{
  v2 = self;
  sub_20BBDA1C0();
}

- (_TtC9SeymourUI21SessionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UIViewController)childViewControllerForHomeIndicatorAutoHidden
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21SessionViewController_introSequenceCompleted) == 1)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)playerViewControllerWillStartPictureInPicture:(id)a3
{
  v4 = a3;
  v5 = self;
  _s9SeymourUI21SessionViewControllerC06playerde18WillStartPictureInI0yySo08AVPlayerdE0CF_0();
}

- (void)playerViewController:(id)a3 failedToStartPictureInPictureWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_20BFE8928(v8);
}

- (void)playerViewControllerWillStopPictureInPicture:(id)a3
{
  v4 = a3;
  v5 = self;
  _s9SeymourUI21SessionViewControllerC06playerde17WillStopPictureInI0yySo08AVPlayerdE0CF_0();
}

- (void)playerViewControllerDidStopPictureInPicture:(id)a3
{
  v4 = a3;
  v5 = self;
  _s9SeymourUI21SessionViewControllerC06playerde16DidStopPictureInI0yySo08AVPlayerdE0CF_0();
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = objc_opt_self();
  v8 = a3;
  v9 = a4;
  v10 = [v7 sheetPresentationControllerForPresentedController:v8 presentingController:v9];
  [v10 setPrefersPageSizing_];
  v11 = [objc_opt_self() smu:5.0 effectWithBlurRadius:?];
  [v10 setBackgroundBlurEffect_];

  return v10;
}

@end