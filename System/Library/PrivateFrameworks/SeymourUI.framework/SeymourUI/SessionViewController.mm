@interface SessionViewController
- (NSArray)keyCommands;
- (NSArray)preferredFocusEnvironments;
- (UIViewController)childViewControllerForHomeIndicatorAutoHidden;
- (_TtC9SeymourUI21SessionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)handleEscapeKeyCommand;
- (void)handleSpacebarCommand;
- (void)menuButtonTapped;
- (void)playerViewController:(id)controller didSelectMediaPresentationSetting:(id)setting forMediaPresentationSelector:(id)selector;
- (void)playerViewController:(id)controller failedToStartPictureInPictureWithError:(id)error;
- (void)playerViewController:(id)controller willTransitionToVisibilityOfPlaybackControls:(BOOL)controls withAnimationCoordinator:(id)coordinator;
- (void)playerViewControllerDidStopPictureInPicture:(id)picture;
- (void)playerViewControllerWillStartPictureInPicture:(id)picture;
- (void)playerViewControllerWillStopPictureInPicture:(id)picture;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SessionViewController

- (void)handleSpacebarCommand
{
  selfCopy = self;
  sub_20BBFCCC4();
}

- (void)playerViewController:(id)controller willTransitionToVisibilityOfPlaybackControls:(BOOL)controls withAnimationCoordinator:(id)coordinator
{
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = controls;
  *(v10 + 24) = v9;
  v14[4] = sub_20B877AAC;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_20B7B548C;
  v14[3] = &block_descriptor_11;
  v11 = _Block_copy(v14);
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;

  [coordinator addCoordinatedAnimations:v11 completion:0];
  _Block_release(v11);

  swift_unknownObjectRelease();
}

- (void)playerViewController:(id)controller didSelectMediaPresentationSetting:(id)setting forMediaPresentationSelector:(id)selector
{
  controllerCopy = controller;
  settingCopy = setting;
  selectorCopy = selector;
  selfCopy = self;
  sub_20B8768AC(settingCopy);
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
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
  selfCopy = self;
  sub_20C13B574();
  sub_20C13BB64();
  (*(v4 + 8))(v6, v3);
  sub_20BBDA1C0();
}

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  SessionViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v3 = sub_20C13CC54();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  SessionViewController.viewDidLoad()();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  SessionViewController.viewDidDisappear(_:)(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  SessionViewController.viewWillLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  SessionViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)menuButtonTapped
{
  selfCopy = self;
  sub_20BBDA1C0();
}

- (_TtC9SeymourUI21SessionViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (void)playerViewControllerWillStartPictureInPicture:(id)picture
{
  pictureCopy = picture;
  selfCopy = self;
  _s9SeymourUI21SessionViewControllerC06playerde18WillStartPictureInI0yySo08AVPlayerdE0CF_0();
}

- (void)playerViewController:(id)controller failedToStartPictureInPictureWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_20BFE8928(errorCopy);
}

- (void)playerViewControllerWillStopPictureInPicture:(id)picture
{
  pictureCopy = picture;
  selfCopy = self;
  _s9SeymourUI21SessionViewControllerC06playerde17WillStopPictureInI0yySo08AVPlayerdE0CF_0();
}

- (void)playerViewControllerDidStopPictureInPicture:(id)picture
{
  pictureCopy = picture;
  selfCopy = self;
  _s9SeymourUI21SessionViewControllerC06playerde16DidStopPictureInI0yySo08AVPlayerdE0CF_0();
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  v7 = objc_opt_self();
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v10 = [v7 sheetPresentationControllerForPresentedController:controllerCopy presentingController:viewControllerCopy];
  [v10 setPrefersPageSizing_];
  v11 = [objc_opt_self() smu:5.0 effectWithBlurRadius:?];
  [v10 setBackgroundBlurEffect_];

  return v10;
}

@end