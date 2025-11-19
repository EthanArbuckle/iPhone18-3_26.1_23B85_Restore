@interface AssertionClient
- (void)didConnect;
- (void)didInvalidate:(id)a3;
@end

@implementation AssertionClient

- (void)didInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_26579E344();
  v8 = v7;

  v9 = sub_26579E334();
  v10 = sub_26579E274();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_26579E264();
  v13 = sub_26579E344();
  v15 = v14;
  sub_26578A710();
  sub_26579E254();
  sub_26578422C(v13, v15);

  AssertionClient.didInvalidate(invalidationMessage:)(&v16);

  sub_26578422C(v6, v8);
}

- (void)didConnect
{
  v2 = self;
  AssertionClient.didConnect()();
}

@end