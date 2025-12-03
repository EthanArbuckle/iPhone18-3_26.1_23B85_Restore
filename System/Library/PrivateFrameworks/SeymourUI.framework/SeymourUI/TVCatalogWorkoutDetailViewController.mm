@interface TVCatalogWorkoutDetailViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI36TVCatalogWorkoutDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TVCatalogWorkoutDetailViewController

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *((*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dataProvider))[51] + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20B594C08();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_20B594E24();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20B594FD8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20B595304(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVCatalogWorkoutDetailViewController();
  v4 = v5.receiver;
  [(TVCatalogWorkoutDetailViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_20B5978DC(&qword_27C7620A8, type metadata accessor for TVCatalogWorkoutDetailViewController);
  sub_20B5978DC(&unk_27C7620B0, type metadata accessor for TVCatalogWorkoutDetailViewController);
  sub_20C139374();
}

- (_TtC9SeymourUI36TVCatalogWorkoutDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end