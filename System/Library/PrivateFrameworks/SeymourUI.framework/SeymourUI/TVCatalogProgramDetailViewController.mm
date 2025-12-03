@interface TVCatalogProgramDetailViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI36TVCatalogProgramDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
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
  selfCopy = self;
  sub_20B664CAC();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_20B664DD4();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVCatalogProgramDetailViewController();
  v4 = v5.receiver;
  [(TVCatalogProgramDetailViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_20B667330(&unk_27C763078, type metadata accessor for TVCatalogProgramDetailViewController);
  sub_20B667330(&qword_27C763098, type metadata accessor for TVCatalogProgramDetailViewController);
  sub_20C139374();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20B665060(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20B66538C(disappear);
}

- (_TtC9SeymourUI36TVCatalogProgramDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end