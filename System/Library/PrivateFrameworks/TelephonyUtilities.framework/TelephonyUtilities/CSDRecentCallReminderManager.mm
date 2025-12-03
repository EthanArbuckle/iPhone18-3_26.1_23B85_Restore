@interface CSDRecentCallReminderManager
- (void)markRemindersAsCompleteFor:(id)for;
@end

@implementation CSDRecentCallReminderManager

- (void)markRemindersAsCompleteFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_1003ACEF4(forCopy);
}

@end