@interface IDSInboundMessaging
- (_TtC21UserNotificationsCore19IDSInboundMessaging)init;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
@end

@implementation IDSInboundMessaging

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  if (changed)
  {
    v6 = sub_1DA940E94();
  }

  else
  {
    v6 = 0;
  }

  serviceCopy = service;
  selfCopy = self;
  sub_1DA905670(v6);
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  dCopy = d;
  if (message)
  {
    v12 = sub_1DA940974();
    if (dCopy)
    {
LABEL_3:
      v13 = sub_1DA940A14();
      dCopy = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (d)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_1DA9057CC(v12, v13, dCopy);
}

- (_TtC21UserNotificationsCore19IDSInboundMessaging)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end