@interface TVCatalogProgramDetailViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI36TVCatalogProgramDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TVCatalogProgramDetailViewController

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *((*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dataProvider))[51] + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20B664CAC();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_20B664DD4();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVCatalogProgramDetailViewController();
  v4 = v5.receiver;
  [(TVCatalogProgramDetailViewController *)&v5 viewDidDisappear:v3];
  sub_20B667330(&unk_27C763078, type metadata accessor for TVCatalogProgramDetailViewController);
  sub_20B667330(&qword_27C763098, type metadata accessor for TVCatalogProgramDetailViewController);
  sub_20C139374();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_20B665060(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20B66538C(a3);
}

- (_TtC9SeymourUI36TVCatalogProgramDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end