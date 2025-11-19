@interface CKShare(BRCUserNotificationRequestAccessAdditions)
- (uint64_t)inferParticipantPermissions;
@end

@implementation CKShare(BRCUserNotificationRequestAccessAdditions)

- (uint64_t)inferParticipantPermissions
{
  v2 = [a1 participants];
  if ([v2 count] < 2)
  {
    v4 = 2;
  }

  else
  {
    v3 = [a1 participants];
    if ([v3 br_all_of:&__block_literal_global_45])
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  return v4;
}

@end