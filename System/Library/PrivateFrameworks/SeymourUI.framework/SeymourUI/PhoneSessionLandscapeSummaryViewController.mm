@interface PhoneSessionLandscapeSummaryViewController
- (_TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (uint64_t)handleGuidedRunButtonTapped;
- (void)traitCollectionDidChange:(id)change;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PhoneSessionLandscapeSummaryViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhoneSessionLandscapeSummaryViewController();
  v12.receiver = self;
  v12.super_class = v9;
  selfCopy = self;
  [(PhoneSessionLandscapeSummaryViewController *)&v12 viewDidAppear:appearCopy];
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_scrollView) flashScrollIndicators];
  v11[1] = selfCopy;
  sub_20BFB4810(v8);
  sub_20BFA7518();
  sub_20C138C54();
  (*(v6 + 8))(v8, v5);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20BFA0FFC(disappear);
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhoneSessionLandscapeSummaryViewController();
  v2 = v3.receiver;
  [(PhoneSessionLandscapeSummaryViewController *)&v3 viewDidLayoutSubviews];
  sub_20BFA3614();
}

- (void)updateViewConstraints
{
  selfCopy = self;
  sub_20BFA30E8();
  sub_20BFA3614();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for PhoneSessionLandscapeSummaryViewController();
  [(PhoneSessionLandscapeSummaryViewController *)&v3 updateViewConstraints];
}

- (_TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20BFA55AC(change);
}

- (uint64_t)handleGuidedRunButtonTapped
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_20C132C14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FeedbackHandler();
  sub_20C0930CC(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_20B520158(v2, &unk_27C7617F0);
  }

  (*(v4 + 32))(v6, v2, v3);
  defaultWorkspace = [objc_opt_self() defaultWorkspace];
  if (defaultWorkspace)
  {
    v9 = defaultWorkspace;
    v10 = sub_20C132B64();
    [v9 openURL:v10 configuration:0 completionHandler:0];
  }

  return (*(v4 + 8))(v6, v3);
}

@end