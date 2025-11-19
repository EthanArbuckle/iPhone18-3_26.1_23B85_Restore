@interface UserInfoMergeHandler
- (id)commandsToMergeRecordWithServer:(id)a3;
@end

@implementation UserInfoMergeHandler

- (id)commandsToMergeRecordWithServer:(id)a3
{
  v3 = a3;
  sub_1DACB71F4();
  sub_1DAB5068C(v3);

  sub_1DAA485B8(0, &qword_1ECBE7CA8, &protocolRef_SCWZoneCommand);
  v4 = sub_1DACB9634();

  return v4;
}

@end