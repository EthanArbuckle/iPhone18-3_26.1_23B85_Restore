@interface CKShareParticipant(WBSCKShareParticipantExtras)
- (id)safari_shareParticipantIdentifier;
@end

@implementation CKShareParticipant(WBSCKShareParticipantExtras)

- (id)safari_shareParticipantIdentifier
{
  userIdentity = [self userIdentity];
  userRecordID = [userIdentity userRecordID];
  recordName = [userRecordID recordName];

  return recordName;
}

@end