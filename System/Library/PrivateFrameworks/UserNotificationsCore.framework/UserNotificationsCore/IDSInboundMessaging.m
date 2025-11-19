@interface IDSInboundMessaging
- (_TtC21UserNotificationsCore19IDSInboundMessaging)init;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
@end

@implementation IDSInboundMessaging

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  if (a4)
  {
    v6 = sub_1DA940E94();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_1DA905670(v6);
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v8 = a6;
  if (a5)
  {
    v12 = sub_1DA940974();
    if (v8)
    {
LABEL_3:
      v13 = sub_1DA940A14();
      v8 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = self;
  sub_1DA9057CC(v12, v13, v8);
}

- (_TtC21UserNotificationsCore19IDSInboundMessaging)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end