@interface TVUpNextQueueListViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI31TVUpNextQueueListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleBackButtonPressed:(id)pressed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TVUpNextQueueListViewController

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dataProvider);
  *(v3 + 16) = xmmword_20C14F580;
  v5 = *(*(v4 + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  *(v3 + 32) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v7 = sub_20C13CC54();

  return v7;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20B9F5370();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  QueueListViewController = type metadata accessor for TVUpNextQueueListViewController();
  v12.receiver = self;
  v12.super_class = QueueListViewController;
  selfCopy = self;
  [(TVUpNextQueueListViewController *)&v12 viewDidAppear:appearCopy];
  v11[1] = selfCopy;
  (*(v6 + 16))(v8, *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_metricPage, v5);
  sub_20B9F66D4(&qword_27C769020);
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
  QueueListViewController = type metadata accessor for TVUpNextQueueListViewController();
  v12.receiver = self;
  v12.super_class = QueueListViewController;
  selfCopy = self;
  [(TVUpNextQueueListViewController *)&v12 viewWillDisappear:disappearCopy];
  v11[1] = selfCopy;
  sub_20C132E84();
  sub_20B9F66D4(&qword_27C769018);
  sub_20C139274();
  (*(v6 + 8))(v8, v5);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TVUpNextQueueListViewController();
  v2 = v3.receiver;
  [(TVUpNextQueueListViewController *)&v3 viewWillLayoutSubviews];
  sub_20B79596C(0);
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for TVUpNextQueueListViewController();
  v2 = v10.receiver;
  [(TVUpNextQueueListViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI29TVUpNextQueueListDataProvider_page);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (void)handleBackButtonPressed:(id)pressed
{
  selfCopy = self;
  sub_20B83B504();
}

- (_TtC9SeymourUI31TVUpNextQueueListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end