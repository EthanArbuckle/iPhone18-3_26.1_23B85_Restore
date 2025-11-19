@interface TestServer
- (NSString)description;
- (void)activateWithCompletion:(id)a3;
@end

@implementation TestServer

- (NSString)description
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_100011C50;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_100054660(v7, v6, &unk_10008FBB8, sub_100055C1C, &unk_10008FBD0);
  sub_100010FE8(v7);
}

@end