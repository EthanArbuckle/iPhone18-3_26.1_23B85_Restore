@interface VisualIntelligenceIntroViewController
- (_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController)initWithDelegate:(id)delegate;
- (_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (int64_t)preferredStatusBarStyle;
- (void)continueTapped;
- (void)viewDidLoad;
@end

@implementation VisualIntelligenceIntroViewController

- (int64_t)preferredStatusBarStyle
{
  selfCopy = self;
  traitCollection = [(VisualIntelligenceIntroViewController *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController)initWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  VisualIntelligenceIntroViewController.init(delegate:)();
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
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

- (_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end