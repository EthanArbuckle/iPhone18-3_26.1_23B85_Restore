@interface TVCatalogEditorialCollectionDetailViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TVCatalogEditorialCollectionDetailViewController

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *((*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_dataProvider))[6] + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20B97996C();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_20B979B5C();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVCatalogEditorialCollectionDetailViewController();
  v4 = v5.receiver;
  [(TVCatalogEditorialCollectionDetailViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_20B97BF04(&qword_27C7681F0, type metadata accessor for TVCatalogEditorialCollectionDetailViewController);
  sub_20B97BF04(&qword_27C7681F8, type metadata accessor for TVCatalogEditorialCollectionDetailViewController);
  sub_20C139374();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TVCatalogEditorialCollectionDetailViewController();
  v12.receiver = self;
  v12.super_class = v9;
  selfCopy = self;
  [(TVCatalogEditorialCollectionDetailViewController *)&v12 viewDidAppear:appearCopy];
  v11[1] = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_dataProvider);
  sub_20BC497A4(v8);
  type metadata accessor for TVCatalogEditorialCollectionDetailPageDataProvider();
  sub_20B97BF04(&unk_27C768200, type metadata accessor for TVCatalogEditorialCollectionDetailPageDataProvider);
  sub_20C138C54();
  (*(v6 + 8))(v8, v5);
  sub_20B97BF04(&qword_27C7681F0, type metadata accessor for TVCatalogEditorialCollectionDetailViewController);
  sub_20B97BF04(&qword_27C7681F8, type metadata accessor for TVCatalogEditorialCollectionDetailViewController);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20B979FD0(disappear);
}

- (_TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end