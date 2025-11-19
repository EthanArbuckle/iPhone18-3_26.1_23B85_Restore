@interface ForYouFeedViewController
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (_TtC8StocksUI24ForYouFeedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)preferredStatusBarStyle;
- (void)didMoveToParentViewController:(id)a3;
- (void)didTapAttributionButton;
- (void)scrollViewDidChangeAdjustedContentInset:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation ForYouFeedViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_220513C6C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_22051EE1C(a3);
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_220520A80(a3);
}

- (void)didMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(ForYouFeedViewController *)&v6 didMoveToParentViewController:v4];
  sub_22088A97C();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_2207F6740();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22088A96C();
  sub_22051EF30();
}

- (_TtC8StocksUI24ForYouFeedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2207F641C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(ForYouFeedViewController *)&v6 viewWillDisappear:v3];
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

  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2208582A4();
    [v4 bringSubviewToFront_];

    sub_2207F6A18();
LABEL_4:

    return;
  }

  __break(1u);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v5 = a3;
  v4 = self;
  MEMORY[0x223D82B00](v5);
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_2207FA794();

  return self & 1;
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)a3
{
  v5 = sub_22088C32C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  v11 = self;
  sub_22088C76C();
  swift_getObjectType();
  sub_22088D92C();
  swift_unknownObjectRelease();
  [v10 adjustedContentInset];
  sub_22058B43C(v9, v12);

  (*(v6 + 8))(v9, v5);
}

- (void)didTapAttributionButton
{
  v3 = (*(&self->super.super.super.isa + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler))[5];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 120);
  v6 = self;
  v5(ObjectType, v3);
}

@end