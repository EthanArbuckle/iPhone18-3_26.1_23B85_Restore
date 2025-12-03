@interface CatalogTipGalleryViewController
- (_TtC9SeymourUI31CatalogTipGalleryViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI31CatalogTipGalleryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CatalogTipGalleryViewController

- (_TtC9SeymourUI31CatalogTipGalleryViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_visibility) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_resignActiveObserver) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_hasPostedEnterEvent) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_hasPostedExitEvent) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)dealloc
{
  selfCopy = self;
  sub_20B764A38();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for CatalogTipGalleryViewController();
  [(CatalogTipGalleryViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20B764078();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CatalogTipGalleryViewController();
  v4 = v9.receiver;
  [(CatalogTipGalleryViewController *)&v9 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    navigationBar = [navigationController navigationBar];

    v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [navigationBar setTintColor_];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20B7642B8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20B764604(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CatalogTipGalleryViewController();
  v4 = v7.receiver;
  [(CatalogTipGalleryViewController *)&v7 viewDidDisappear:disappearCopy];
  sub_20B766090(&qword_27C764CF8, v5, type metadata accessor for CatalogTipGalleryViewController);
  sub_20B766090(&qword_27C764D00, v6, type metadata accessor for CatalogTipGalleryViewController);
  sub_20C139374();
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for CatalogTipGalleryViewController();
  v2 = v10.receiver;
  [(CatalogTipGalleryViewController *)&v10 viewDidLayoutSubviews];
  v3 = *(*&v2[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_dataProvider] + 56);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v5 = v3;
  [v4 bounds];
  sub_20B9D8614(v6, v7, v8, v9);
}

- (_TtC9SeymourUI31CatalogTipGalleryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end