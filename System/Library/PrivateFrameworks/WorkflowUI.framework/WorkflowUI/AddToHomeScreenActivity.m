@interface AddToHomeScreenActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIViewController)activityViewController;
- (id)_systemImageName;
- (void)activityDidFinish:(BOOL)a3;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation AddToHomeScreenActivity

- (NSString)activityType
{
  v2 = AddToHomeScreenActivity.activityType.getter();

  return v2;
}

- (NSString)activityTitle
{
  v2 = self;
  AddToHomeScreenActivity.activityTitle.getter();
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
  v2 = sub_2749FCD64();

  return v2;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  sub_2749FCF84();

  return 1;
}

- (void)prepareWithActivityItems:(id)a3
{
  sub_2749FCF84();
}

- (UIViewController)activityViewController
{
  v2 = self;
  v3 = AddToHomeScreenActivity.activityViewController.getter();

  return v3;
}

- (void)activityDidFinish:(BOOL)a3
{
  v4 = self;
  AddToHomeScreenActivity.activityDidFinish(_:)(a3);
}

@end