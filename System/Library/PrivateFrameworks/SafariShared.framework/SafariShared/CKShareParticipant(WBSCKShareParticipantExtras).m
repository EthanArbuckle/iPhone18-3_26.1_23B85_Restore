@interface CKShareParticipant(WBSCKShareParticipantExtras)
- (id)safari_shareParticipantIdentifier;
@end

@implementation CKShareParticipant(WBSCKShareParticipantExtras)

- (id)safari_shareParticipantIdentifier
{
  v1 = [a1 userIdentity];
  v2 = [v1 userRecordID];
  v3 = [v2 recordName];

  return v3;
}

@end