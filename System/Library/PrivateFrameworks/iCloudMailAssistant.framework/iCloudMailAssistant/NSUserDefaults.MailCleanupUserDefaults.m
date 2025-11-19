@interface NSUserDefaults.MailCleanupUserDefaults
- (_TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults)initWithSuiteName:(id)a3;
@end

@implementation NSUserDefaults.MailCleanupUserDefaults

- (_TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults)initWithSuiteName:(id)a3
{
  if (a3)
  {
    v3 = sub_21498F870();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return NSUserDefaults.MailCleanupUserDefaults.init(suiteName:)(v3, v4);
}

@end