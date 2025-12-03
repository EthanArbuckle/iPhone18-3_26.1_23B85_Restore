@interface MISAgentClient
- (BOOL)trustProfileUUID:(id)d signature:(id)signature error:(id *)error;
- (BOOL)trustTeamID:(id)d signature:(id)signature error:(id *)error;
- (BOOL)untrustProfileUUID:(id)d error:(id *)error;
- (BOOL)untrustTeamID:(id)d error:(id *)error;
- (MISAgentClient)init;
- (id)ping:(id *)ping;
@end

@implementation MISAgentClient

- (id)ping:(id *)ping
{
  sub_1B9DA5D10();
  v3 = sub_1B9DD2968();

  return v3;
}

- (BOOL)trustProfileUUID:(id)d signature:(id)signature error:(id *)error
{
  v7 = sub_1B9DD2998();
  v9 = v8;
  selfCopy = self;
  if (signature)
  {
    signatureCopy = signature;
    signature = sub_1B9DD2798();
    v13 = v12;
  }

  else
  {
    v13 = 0xF000000000000000;
  }

  sub_1B9DA5EC0(v7, v9, 0, 0, signature, v13, 1);

  sub_1B9D9D520(signature, v13);

  return 1;
}

- (BOOL)untrustProfileUUID:(id)d error:(id *)error
{
  v5 = sub_1B9DD2998();
  v7 = v6;
  selfCopy = self;
  sub_1B9DA5EC0(v5, v7, 0, 0, 0, 0xF000000000000000, 0);

  return 1;
}

- (BOOL)trustTeamID:(id)d signature:(id)signature error:(id *)error
{
  v7 = sub_1B9DD2998();
  v9 = v8;
  selfCopy = self;
  if (signature)
  {
    signatureCopy = signature;
    signature = sub_1B9DD2798();
    v13 = v12;
  }

  else
  {
    v13 = 0xF000000000000000;
  }

  sub_1B9DA5EC0(0, 0, v7, v9, signature, v13, 1);

  sub_1B9D9D520(signature, v13);

  return 1;
}

- (BOOL)untrustTeamID:(id)d error:(id *)error
{
  v5 = sub_1B9DD2998();
  v7 = v6;
  selfCopy = self;
  sub_1B9DA5EC0(0, 0, v5, v7, 0, 0xF000000000000000, 0);

  return 1;
}

- (MISAgentClient)init
{
  v3.receiver = self;
  v3.super_class = MISAgentClient;
  return [(MISAgentClient *)&v3 init];
}

@end