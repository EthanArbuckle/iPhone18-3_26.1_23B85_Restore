@interface ForYouFeedViewController
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (_TtC8StocksUI24ForYouFeedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)preferredStatusBarStyle;
- (void)didMoveToParentViewController:(id)controller;
- (void)didTapAttributionButton;
- (void)scrollViewDidChangeAdjustedContentInset:(id)inset;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation ForYouFeedViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_220513C6C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_22051EE1C(appear);
}

- (int64_t)preferredStatusBarStyle
{
  v2 = (&self->super.super.super.isa + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_styler);
  swift_beginAccess();
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v6 = *(v3 - 8);
  v7 = MEMORY[0x28223BE20](v5, v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v7);
  v10 = (*(*(v4 + 16) + 8))(v3);
  (*(v6 + 8))(v9, v3);
  return v10;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_220520A80(change);
}

- (void)didMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  controllerCopy = controller;
  v5 = v6.receiver;
  [(ForYouFeedViewController *)&v6 didMoveToParentViewController:controllerCopy];
  sub_22088A97C();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_2207F6740();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_22088A96C();
  sub_22051EF30();
}

- (_TtC8StocksUI24ForYouFeedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2207F641C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(ForYouFeedViewController *)&v6 viewWillDisappear:disappearCopy];
  swift_getObjectType();
  sub_22088BBCC();
  v4[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_toolbarTitleIsHidden] = 1;
  sub_22044E3AC(&qword_28128A3B0, v5, type metadata accessor for ForYouFeedViewController);
  sub_22088844C();
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ForYouFeedViewController *)&v6 viewDidLayoutSubviews];
  if ((sub_22088F0DC() & 1) == 0)
  {
    goto LABEL_4;
  }

  view = [v2 view];
  if (view)
  {
    v4 = view;
    v5 = sub_2208582A4();
    [v4 bringSubviewToFront_];

    sub_2207F6A18();
LABEL_4:

    return;
  }

  __break(1u);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  MEMORY[0x223D82B00](draggingCopy);
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  topCopy = top;
  selfCopy = self;
  LOBYTE(self) = sub_2207FA794();

  return self & 1;
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)inset
{
  v5 = sub_22088C32C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  insetCopy = inset;
  selfCopy = self;
  sub_22088C76C();
  swift_getObjectType();
  sub_22088D92C();
  swift_unknownObjectRelease();
  [insetCopy adjustedContentInset];
  sub_22058B43C(v9, v12);

  (*(v6 + 8))(v9, v5);
}

- (void)didTapAttributionButton
{
  v3 = (*(&self->super.super.super.isa + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler))[5];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 120);
  selfCopy = self;
  v5(ObjectType, v3);
}

@end