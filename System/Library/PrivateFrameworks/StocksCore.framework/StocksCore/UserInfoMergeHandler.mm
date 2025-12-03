@interface UserInfoMergeHandler
- (id)commandsToMergeRecordWithServer:(id)server;
@end

@implementation UserInfoMergeHandler

- (id)commandsToMergeRecordWithServer:(id)server
{
  serverCopy = server;
  sub_1DACB71F4();
  sub_1DAB5068C(serverCopy);

  sub_1DAA485B8(0, &qword_1ECBE7CA8, &protocolRef_SCWZoneCommand);
  v4 = sub_1DACB9634();

  return v4;
}

@end