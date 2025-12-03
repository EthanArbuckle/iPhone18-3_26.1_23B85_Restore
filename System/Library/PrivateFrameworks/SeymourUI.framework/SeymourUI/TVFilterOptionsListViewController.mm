@interface TVFilterOptionsListViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI33TVFilterOptionsListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleActionButtonTapped;
- (void)menuButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation TVFilterOptionsListViewController

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *((*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_dataProvider))[5] + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20B610F30();
}

- (void)menuButtonTapped
{
  selfCopy = self;
  sub_20B61168C();
}

- (void)handleActionButtonTapped
{
  selfCopy = self;
  sub_20BDA10FC();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVFilterOptionsListViewController();
  v4 = v5.receiver;
  [(TVFilterOptionsListViewController *)&v5 viewDidAppear:appearCopy];
  sub_20BDF6D08();
}

- (_TtC9SeymourUI33TVFilterOptionsListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end