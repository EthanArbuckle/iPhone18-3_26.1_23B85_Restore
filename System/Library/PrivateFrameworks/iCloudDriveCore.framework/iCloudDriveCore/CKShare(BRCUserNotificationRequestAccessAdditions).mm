@interface CKShare(BRCUserNotificationRequestAccessAdditions)
- (uint64_t)inferParticipantPermissions;
@end

@implementation CKShare(BRCUserNotificationRequestAccessAdditions)

- (uint64_t)inferParticipantPermissions
{
  participants = [self participants];
  if ([participants count] < 2)
  {
    v4 = 2;
  }

  else
  {
    participants2 = [self participants];
    if ([participants2 br_all_of:&__block_literal_global_45])
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