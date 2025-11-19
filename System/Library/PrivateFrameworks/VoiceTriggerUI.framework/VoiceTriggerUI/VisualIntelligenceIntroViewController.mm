@interface VisualIntelligenceIntroViewController
- (_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController)initWithDelegate:(id)a3;
- (_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (int64_t)preferredStatusBarStyle;
- (void)continueTapped;
- (void)viewDidLoad;
@end

@implementation VisualIntelligenceIntroViewController

- (int64_t)preferredStatusBarStyle
{
  v2 = self;
  v3 = [(VisualIntelligenceIntroViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController)initWithDelegate:(id)a3
{
  swift_unknownObjectRetain();
  VisualIntelligenceIntroViewController.init(delegate:)();
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_27291C084();
}

- (void)continueTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong userDidTapContinue_];

    swift_unknownObjectRelease();
  }
}

- (_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end