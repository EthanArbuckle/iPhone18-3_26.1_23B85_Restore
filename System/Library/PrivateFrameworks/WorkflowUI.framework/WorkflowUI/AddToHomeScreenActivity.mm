@interface AddToHomeScreenActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIViewController)activityViewController;
- (id)_systemImageName;
- (void)activityDidFinish:(BOOL)finish;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation AddToHomeScreenActivity

- (NSString)activityType
{
  v2 = AddToHomeScreenActivity.activityType.getter();

  return v2;
}

- (NSString)activityTitle
{
  selfCopy = self;
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

- (BOOL)canPerformWithActivityItems:(id)items
{
  sub_2749FCF84();

  return 1;
}

- (void)prepareWithActivityItems:(id)items
{
  sub_2749FCF84();
}

- (UIViewController)activityViewController
{
  selfCopy = self;
  v3 = AddToHomeScreenActivity.activityViewController.getter();

  return v3;
}

- (void)activityDidFinish:(BOOL)finish
{
  selfCopy = self;
  AddToHomeScreenActivity.activityDidFinish(_:)(finish);
}

@end