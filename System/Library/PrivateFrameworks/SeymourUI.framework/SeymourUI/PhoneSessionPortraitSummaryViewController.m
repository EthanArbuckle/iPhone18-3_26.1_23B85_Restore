@interface PhoneSessionPortraitSummaryViewController
- (_TtC9SeymourUI41PhoneSessionPortraitSummaryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (uint64_t)handleGuidedRunButtonTapped;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PhoneSessionPortraitSummaryViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_20BE08D7C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhoneSessionPortraitSummaryViewController();
  v12.receiver = self;
  v12.super_class = v9;
  v10 = self;
  [(PhoneSessionPortraitSummaryViewController *)&v12 viewDidAppear:v3];
  v11[1] = v10;
  sub_20BFB4810(v8);
  sub_20BE0D2EC(&qword_27C76F530, type metadata accessor for PhoneSessionPortraitSummaryViewController);
  sub_20C138C54();
  (*(v6 + 8))(v8, v5);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20BE090B0(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_20BE0A0E0();
}

- (void)updateViewConstraints
{
  v2 = self;
  sub_20BE0B3B0();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for PhoneSessionPortraitSummaryViewController();
  [(PhoneSessionPortraitSummaryViewController *)&v3 updateViewConstraints];
}

- (_TtC9SeymourUI41PhoneSessionPortraitSummaryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20BE0BCD8(a3);
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
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v9 = v8;
    v10 = sub_20C132B64();
    [v9 openURL:v10 configuration:0 completionHandler:0];
  }

  return (*(v4 + 8))(v6, v3);
}

@end