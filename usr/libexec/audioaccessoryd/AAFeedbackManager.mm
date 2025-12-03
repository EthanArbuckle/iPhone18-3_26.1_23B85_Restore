@interface AAFeedbackManager
- (id)_feedbackCampainIdentifierForCampain:(int)campain;
- (id)_feedbackCampainLocalizedTitleForCampain:(int)campain;
@end

@implementation AAFeedbackManager

- (id)_feedbackCampainIdentifierForCampain:(int)campain
{
  if (campain == 1)
  {
    return @":framework-conversation-awareness";
  }

  else
  {
    return 0;
  }
}

- (id)_feedbackCampainLocalizedTitleForCampain:(int)campain
{
  if (campain == 1)
  {
    v3 = [NSBundle bundleWithPath:@"/System/Library/CoreServices/BluetoothUIService.app/"];
    v4 = [v3 localizedStringForKey:@"FEED_BACK_NOTIFICATION_TITLE_STRING" value:&stru_1002C1358 table:@"Localizable"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end