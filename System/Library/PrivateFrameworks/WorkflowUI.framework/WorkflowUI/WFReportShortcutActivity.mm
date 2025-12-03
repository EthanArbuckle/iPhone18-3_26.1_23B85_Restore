@interface WFReportShortcutActivity
+ (NSString)activityType;
- (BOOL)canPerformWithActivityItems:(id)items;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIActivityViewController)activityControler;
- (UIViewController)activityViewController;
- (WFReportShortcutActivity)initWithWorkflow:(id)workflow completion:(id)completion;
- (id)_systemImageName;
- (void)setActivityControler:(id)controler;
@end

@implementation WFReportShortcutActivity

+ (NSString)activityType
{
  v2 = sub_2748658B8();

  return v2;
}

- (UIActivityViewController)activityControler
{
  v2 = sub_274865960();

  return v2;
}

- (void)setActivityControler:(id)controler
{
  controlerCopy = controler;
  selfCopy = self;
  sub_2748659CC(controler);
}

- (WFReportShortcutActivity)initWithWorkflow:(id)workflow completion:(id)completion
{
  v5 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v5;
  workflowCopy = workflow;
  return ReportShortcutActivity.init(workflow:completion:)();
}

- (NSString)activityType
{
  selfCopy = self;
  v3 = sub_274865C88();

  return v3;
}

- (NSString)activityTitle
{
  selfCopy = self;
  sub_274865D4C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_2749FCD64();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_systemImageName
{
  sub_274865E60();
  v2 = sub_2749FCD64();

  return v2;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v4 = sub_2749FCF84();
  selfCopy = self;
  v6 = sub_274865ECC(v4);

  return v6;
}

- (UIViewController)activityViewController
{
  selfCopy = self;
  v3 = sub_27486649C();

  return v3;
}

@end