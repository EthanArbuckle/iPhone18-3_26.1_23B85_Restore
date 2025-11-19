@interface TVLibraryGalleryViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI30TVLibraryGalleryViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI30TVLibraryGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TVLibraryGalleryViewController

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *((*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_dataProvider))[2] + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (_TtC9SeymourUI30TVLibraryGalleryViewController)initWithCoder:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_layout);
  *v4 = xmmword_20C15B0B0;
  v4[1] = xmmword_20C150E50;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_visibility) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_resignActiveObserver) = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_lastFocusedIndexPath;
  v6 = sub_20C133244();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_settlingTimer) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20C006080();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_20C0061CC();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVLibraryGalleryViewController();
  v4 = v5.receiver;
  [(TVLibraryGalleryViewController *)&v5 viewDidDisappear:v3];
  sub_20C006E68(&unk_27C771C50);
  sub_20C006E68(&qword_27C771C68);
  sub_20C139374();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TVLibraryGalleryViewController();
  v12.receiver = self;
  v12.super_class = v9;
  v10 = self;
  [(TVLibraryGalleryViewController *)&v12 viewDidAppear:v3];
  v11[1] = v10;
  (*(v6 + 16))(v8, *(&v10->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_metricPage, v5);
  sub_20C006E68(&qword_27C771C60);
  sub_20C138C54();
  (*(v6 + 8))(v8, v5);
  sub_20C006E68(&unk_27C771C50);
  sub_20C006E68(&qword_27C771C68);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20C00657C(a3);
}

- (_TtC9SeymourUI30TVLibraryGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end