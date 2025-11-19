@interface TVCatalogEditorialCollectionDetailViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
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
  v2 = self;
  sub_20B97996C();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_20B979B5C();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVCatalogEditorialCollectionDetailViewController();
  v4 = v5.receiver;
  [(TVCatalogEditorialCollectionDetailViewController *)&v5 viewDidDisappear:v3];
  sub_20B97BF04(&qword_27C7681F0, type metadata accessor for TVCatalogEditorialCollectionDetailViewController);
  sub_20B97BF04(&qword_27C7681F8, type metadata accessor for TVCatalogEditorialCollectionDetailViewController);
  sub_20C139374();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TVCatalogEditorialCollectionDetailViewController();
  v12.receiver = self;
  v12.super_class = v9;
  v10 = self;
  [(TVCatalogEditorialCollectionDetailViewController *)&v12 viewDidAppear:v3];
  v11[1] = *(&v10->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController_dataProvider);
  sub_20BC497A4(v8);
  type metadata accessor for TVCatalogEditorialCollectionDetailPageDataProvider();
  sub_20B97BF04(&unk_27C768200, type metadata accessor for TVCatalogEditorialCollectionDetailPageDataProvider);
  sub_20C138C54();
  (*(v6 + 8))(v8, v5);
  sub_20B97BF04(&qword_27C7681F0, type metadata accessor for TVCatalogEditorialCollectionDetailViewController);
  sub_20B97BF04(&qword_27C7681F8, type metadata accessor for TVCatalogEditorialCollectionDetailViewController);
  sub_20C139364();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20B979FD0(a3);
}

- (_TtC9SeymourUI48TVCatalogEditorialCollectionDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end