@interface UpNextQueueViewController
- (_TtC9SeymourUI25UpNextQueueViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI25UpNextQueueViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation UpNextQueueViewController

- (unint64_t)supportedInterfaceOrientations
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_platform) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  UpNextQueueViewController.viewDidLoad()();
}

- (_TtC9SeymourUI25UpNextQueueViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_visibility) = 1;
  v3 = self + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_currentContentInsetBehavior;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = -4;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_isTransitioningContentInset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_resignActiveObserver) = 0;
  v4 = self + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_layout;
  sub_20BC3A3D8(v7);
  v5 = v7[1];
  *v4 = v7[0];
  *(v4 + 1) = v5;
  *(v4 + 2) = v7[2];
  *(v4 + 6) = v8;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  ObjectType = swift_getObjectType();
  v6 = sub_20C1333A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = self;
  v15.super_class = ObjectType;
  selfCopy = self;
  [(UpNextQueueViewController *)&v15 viewDidAppear:appearCopy];
  v14[1] = selfCopy;
  (*(v7 + 16))(v9, *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_metricPage, v6);
  sub_20BC3AAFC(&qword_27C76C4C8, v11, type metadata accessor for UpNextQueueViewController);
  sub_20C138C54();
  (*(v7 + 8))(v9, v6);
  sub_20BC3AAFC(&qword_27C76C4D0, v12, type metadata accessor for UpNextQueueViewController);
  sub_20BC3AAFC(&qword_27C76C4D8, v13, type metadata accessor for UpNextQueueViewController);
  sub_20C139364();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  UpNextQueueViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  ObjectType = swift_getObjectType();
  v6 = sub_20C132E94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = self;
  v13.super_class = ObjectType;
  selfCopy = self;
  [(UpNextQueueViewController *)&v13 viewWillDisappear:disappearCopy];
  v12[1] = selfCopy;
  sub_20C132E84();
  sub_20BC3AAFC(&qword_27C76C4D0, v11, type metadata accessor for UpNextQueueViewController);
  sub_20C139274();
  (*(v7 + 8))(v9, v6);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(UpNextQueueViewController *)&v7 viewDidDisappear:disappearCopy];
  sub_20BC3AAFC(&qword_27C76C4D0, v5, type metadata accessor for UpNextQueueViewController);
  sub_20BC3AAFC(&qword_27C76C4D8, v6, type metadata accessor for UpNextQueueViewController);
  sub_20C139374();
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(UpNextQueueViewController *)&v3 viewWillLayoutSubviews];
  sub_20BC35974();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  v2 = v10.receiver;
  [(UpNextQueueViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30UpNextQueueGalleryDataProvider_page);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (_TtC9SeymourUI25UpNextQueueViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end