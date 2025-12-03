@interface ConversationLinkSyncIDSInteractor
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation ConversationLinkSyncIDSInteractor

- (void)service:(id)service devicesChanged:(id)changed
{
  if (changed)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  serviceCopy = service;
  selfCopy = self;
  sub_1002E9DDC(service, v6);
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  if (changed)
  {
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  serviceCopy = service;
  selfCopy = self;
  sub_1002EA084(selfCopy, v6);
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  if (data)
  {
    serviceCopy = service;
    accountCopy = account;
    dCopy = d;
    contextCopy = context;
    selfCopy = self;
    v17 = dataCopy;
    dataCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (!d)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  serviceCopy2 = service;
  accountCopy2 = account;
  dCopy2 = d;
  contextCopy2 = context;
  selfCopy2 = self;
  v19 = 0xF000000000000000;
  if (d)
  {
LABEL_3:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_5:
  sub_1002EA17C();

  sub_100290B6C(dataCopy, v19);
}

@end