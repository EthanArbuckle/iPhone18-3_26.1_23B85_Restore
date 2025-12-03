@interface TVSessionSummaryViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI30TVSessionSummaryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)menuButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TVSessionSummaryViewController

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  sub_20BF2DC84();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v3 = sub_20C13CC54();

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TVSessionSummaryViewController();
  v12.receiver = self;
  v12.super_class = v9;
  selfCopy = self;
  [(TVSessionSummaryViewController *)&v12 viewDidAppear:appearCopy];
  v11[1] = selfCopy;
  sub_20BFB4810(v8);
  sub_20BF324A0();
  sub_20C138C54();
  (*(v6 + 8))(v8, v5);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20BF2E3E4(disappear);
}

- (void)menuButtonTapped
{
  v2 = (*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_presenter))[4];
  if (v2)
  {
    selfCopy = self;
    v4 = sub_20B584050(v2);
    v2(v4);

    sub_20B583ECC(v2);
  }
}

- (_TtC9SeymourUI30TVSessionSummaryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end