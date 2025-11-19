@interface ConversationLinkSyncIDSInteractor
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
@end

@implementation ConversationLinkSyncIDSInteractor

- (void)service:(id)a3 devicesChanged:(id)a4
{
  if (a4)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_1002E9DDC(a3, v6);
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  if (a4)
  {
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_1002EA084(v8, v6);
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a5;
  if (a5)
  {
    v12 = a3;
    v13 = a4;
    v14 = a6;
    v15 = a7;
    v16 = self;
    v17 = v9;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (!a6)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v20 = a3;
  v21 = a4;
  v22 = a6;
  v23 = a7;
  v24 = self;
  v19 = 0xF000000000000000;
  if (a6)
  {
LABEL_3:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_5:
  sub_1002EA17C();

  sub_100290B6C(v9, v19);
}

@end