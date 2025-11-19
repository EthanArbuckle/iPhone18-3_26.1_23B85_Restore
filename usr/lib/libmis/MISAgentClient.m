@interface MISAgentClient
- (BOOL)trustProfileUUID:(id)a3 signature:(id)a4 error:(id *)a5;
- (BOOL)trustTeamID:(id)a3 signature:(id)a4 error:(id *)a5;
- (BOOL)untrustProfileUUID:(id)a3 error:(id *)a4;
- (BOOL)untrustTeamID:(id)a3 error:(id *)a4;
- (MISAgentClient)init;
- (id)ping:(id *)a3;
@end

@implementation MISAgentClient

- (id)ping:(id *)a3
{
  sub_1B9DA5D10();
  v3 = sub_1B9DD2968();

  return v3;
}

- (BOOL)trustProfileUUID:(id)a3 signature:(id)a4 error:(id *)a5
{
  v7 = sub_1B9DD2998();
  v9 = v8;
  v10 = self;
  if (a4)
  {
    v11 = a4;
    a4 = sub_1B9DD2798();
    v13 = v12;
  }

  else
  {
    v13 = 0xF000000000000000;
  }

  sub_1B9DA5EC0(v7, v9, 0, 0, a4, v13, 1);

  sub_1B9D9D520(a4, v13);

  return 1;
}

- (BOOL)untrustProfileUUID:(id)a3 error:(id *)a4
{
  v5 = sub_1B9DD2998();
  v7 = v6;
  v8 = self;
  sub_1B9DA5EC0(v5, v7, 0, 0, 0, 0xF000000000000000, 0);

  return 1;
}

- (BOOL)trustTeamID:(id)a3 signature:(id)a4 error:(id *)a5
{
  v7 = sub_1B9DD2998();
  v9 = v8;
  v10 = self;
  if (a4)
  {
    v11 = a4;
    a4 = sub_1B9DD2798();
    v13 = v12;
  }

  else
  {
    v13 = 0xF000000000000000;
  }

  sub_1B9DA5EC0(0, 0, v7, v9, a4, v13, 1);

  sub_1B9D9D520(a4, v13);

  return 1;
}

- (BOOL)untrustTeamID:(id)a3 error:(id *)a4
{
  v5 = sub_1B9DD2998();
  v7 = v6;
  v8 = self;
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