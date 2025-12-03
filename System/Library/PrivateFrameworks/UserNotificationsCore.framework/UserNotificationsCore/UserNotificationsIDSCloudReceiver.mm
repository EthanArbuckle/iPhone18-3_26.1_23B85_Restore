@interface UserNotificationsIDSCloudReceiver
- (_TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver)init;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
@end

@implementation UserNotificationsIDSCloudReceiver

- (_TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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
  sub_1DA91325C(service, account, v12, v13, dCopy, context);
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - v17;
  if (l)
  {
    sub_1DA93F914();
    v19 = sub_1DA93F964();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v20 = sub_1DA93F964();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  if (metadata)
  {
    metadata = sub_1DA940974();
  }

  if (d)
  {
    v21 = sub_1DA940A14();
    d = v22;
  }

  else
  {
    v21 = 0;
  }

  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_1DA916C0C(serviceCopy, accountCopy, v18, metadata, v21, d);

  sub_1DA7BA120(v18, &qword_1ECBD6310, &unk_1DA95F3B0);
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
    dataCopy = sub_1DA93F9A4();
    v19 = v18;

    if (d)
    {
LABEL_3:
      v20 = sub_1DA940A14();
      v22 = v21;

      goto LABEL_6;
    }
  }

  else
  {
    serviceCopy2 = service;
    accountCopy2 = account;
    dCopy2 = d;
    contextCopy2 = context;
    selfCopy2 = self;
    v19 = 0xF000000000000000;
    if (d)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  v22 = 0;
LABEL_6:
  sub_1DA9152A4(service, account, dataCopy, v19, v20, v22, context);

  sub_1DA852CB0(dataCopy, v19);
}

@end