@interface TVLibraryGalleryViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI30TVLibraryGalleryViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI30TVLibraryGalleryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (_TtC9SeymourUI30TVLibraryGalleryViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_20C006080();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_20C0061CC();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVLibraryGalleryViewController();
  v4 = v5.receiver;
  [(TVLibraryGalleryViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_20C006E68(&unk_27C771C50);
  sub_20C006E68(&qword_27C771C68);
  sub_20C139374();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TVLibraryGalleryViewController();
  v12.receiver = self;
  v12.super_class = v9;
  selfCopy = self;
  [(TVLibraryGalleryViewController *)&v12 viewDidAppear:appearCopy];
  v11[1] = selfCopy;
  (*(v6 + 16))(v8, *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30TVLibraryGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI28TVLibraryGalleryDataProvider_metricPage, v5);
  sub_20C006E68(&qword_27C771C60);
  sub_20C138C54();
  (*(v6 + 8))(v8, v5);
  sub_20C006E68(&unk_27C771C50);
  sub_20C006E68(&qword_27C771C68);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20C00657C(disappear);
}

- (_TtC9SeymourUI30TVLibraryGalleryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end