@interface PosterViewController
- (_TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didMoveToParentViewController:(id)controller;
- (void)revealSensitivePoster;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PosterViewController

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  PosterViewController.didMove(toParent:)(controller);
}

- (void)viewDidLoad
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9490);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v13.receiver = self;
  v13.super_class = ObjectType;
  selfCopy = self;
  [(PosterViewController *)&v13 viewDidLoad];
  sub_275262DE8();
  sub_275263164();
  v8 = sub_27526D388();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_27526D358();
  v9 = selfCopy;
  v10 = sub_27526D348();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_2752652A0(0, 0, v6, &unk_27526E900, v11);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  PosterViewController.viewDidLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  PosterViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)revealSensitivePoster
{
  selfCopy = self;
  sub_275268824();
}

- (_TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end