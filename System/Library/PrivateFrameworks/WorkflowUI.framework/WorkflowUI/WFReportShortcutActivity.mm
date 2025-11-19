@interface WFReportShortcutActivity
+ (NSString)activityType;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIActivityViewController)activityControler;
- (UIViewController)activityViewController;
- (WFReportShortcutActivity)initWithWorkflow:(id)a3 completion:(id)a4;
- (id)_systemImageName;
- (void)setActivityControler:(id)a3;
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

- (void)setActivityControler:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2748659CC(a3);
}

- (WFReportShortcutActivity)initWithWorkflow:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v5;
  v6 = a3;
  return ReportShortcutActivity.init(workflow:completion:)();
}

- (NSString)activityType
{
  v2 = self;
  v3 = sub_274865C88();

  return v3;
}

- (NSString)activityTitle
{
  v2 = self;
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

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = sub_2749FCF84();
  v5 = self;
  v6 = sub_274865ECC(v4);

  return v6;
}

- (UIViewController)activityViewController
{
  v2 = self;
  v3 = sub_27486649C();

  return v3;
}

@end