@interface NSURL(FaceTime_ShowAddParticipant)
- (id)conversationGroupUUID;
- (uint64_t)isShowAddParticipantURL;
@end

@implementation NSURL(FaceTime_ShowAddParticipant)

- (uint64_t)isShowAddParticipantURL
{
  result = [a1 isFaceTimeMultiwayURL];
  if (result)
  {
    v3 = [a1 tuQueryParameters];
    v4 = [v3 objectForKeyedSubscript:@"show-add-participant"];
    v5 = [v4 isEqualToString:@"1"];

    return v5;
  }

  return result;
}

- (id)conversationGroupUUID
{
  v1 = [a1 tuQueryParameters];
  v2 = [v1 objectForKeyedSubscript:@"conversationUUID"];

  return v2;
}

@end