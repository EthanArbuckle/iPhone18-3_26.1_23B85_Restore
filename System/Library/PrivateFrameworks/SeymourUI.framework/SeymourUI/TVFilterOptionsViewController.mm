@interface TVFilterOptionsViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI29TVFilterOptionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)menuButtonTapped;
- (void)viewDidLoad;
@end

@implementation TVFilterOptionsViewController

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  selfCopy = self;
  v5 = sub_20C060B2C();
  v6 = *&v5[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  *(v3 + 32) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v7 = sub_20C13CC54();

  return v7;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20BD3C90C();
}

- (void)menuButtonTapped
{
  selfCopy = self;
  sub_20BD3D1E8();
}

- (_TtC9SeymourUI29TVFilterOptionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end