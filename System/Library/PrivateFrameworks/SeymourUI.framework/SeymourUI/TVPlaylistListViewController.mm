@interface TVPlaylistListViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI28TVPlaylistListViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI28TVPlaylistListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TVPlaylistListViewController

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *((*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_dataProvider))[4] + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (_TtC9SeymourUI28TVPlaylistListViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_visibility) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_resignActiveObserver) = 0;
  v4 = OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_lastFocusedIndexPath;
  v5 = sub_20C133244();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_settlingTimer) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20BE7CB40();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TVPlaylistListViewController();
  v12.receiver = self;
  v12.super_class = v9;
  selfCopy = self;
  [(TVPlaylistListViewController *)&v12 viewDidAppear:appearCopy];
  v11[1] = selfCopy;
  (*(v6 + 16))(v8, *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_metricPage, v5);
  sub_20BE7D750(&unk_27C76FAF0);
  sub_20C138C54();
  (*(v6 + 8))(v8, v5);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TVPlaylistListViewController();
  v12.receiver = self;
  v12.super_class = v9;
  selfCopy = self;
  [(TVPlaylistListViewController *)&v12 viewWillDisappear:disappearCopy];
  v11[1] = selfCopy;
  sub_20C132E84();
  sub_20BE7D750(&qword_27C76FAE8);
  sub_20C139274();
  (*(v6 + 8))(v8, v5);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TVPlaylistListViewController();
  v2 = v3.receiver;
  [(TVPlaylistListViewController *)&v3 viewWillLayoutSubviews];
  sub_20B7959E8(0);
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for TVPlaylistListViewController();
  v2 = v10.receiver;
  [(TVPlaylistListViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI28TVPlaylistListViewController_dataProvider] + 32);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (_TtC9SeymourUI28TVPlaylistListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end