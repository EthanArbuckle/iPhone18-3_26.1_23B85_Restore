@interface UserNotificationsIDSCloudReceiver
- (_TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver)init;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
@end

@implementation UserNotificationsIDSCloudReceiver

- (_TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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
  sub_1DA91325C(a3, a4, v12, v13, v8, a7);
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - v17;
  if (a5)
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

  if (a6)
  {
    a6 = sub_1DA940974();
  }

  if (a7)
  {
    v21 = sub_1DA940A14();
    a7 = v22;
  }

  else
  {
    v21 = 0;
  }

  v23 = a3;
  v24 = a4;
  v25 = a8;
  v26 = self;
  sub_1DA916C0C(v23, v24, v18, a6, v21, a7);

  sub_1DA7BA120(v18, &qword_1ECBD6310, &unk_1DA95F3B0);
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
    v9 = sub_1DA93F9A4();
    v19 = v18;

    if (a6)
    {
LABEL_3:
      v20 = sub_1DA940A14();
      v22 = v21;

      goto LABEL_6;
    }
  }

  else
  {
    v23 = a3;
    v24 = a4;
    v25 = a6;
    v26 = a7;
    v27 = self;
    v19 = 0xF000000000000000;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  v22 = 0;
LABEL_6:
  sub_1DA9152A4(a3, a4, v9, v19, v20, v22, a7);

  sub_1DA852CB0(v9, v19);
}

@end