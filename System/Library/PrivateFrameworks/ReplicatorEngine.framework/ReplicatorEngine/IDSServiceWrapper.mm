@interface IDSServiceWrapper
- (_TtC16ReplicatorEngine17IDSServiceWrapper)init;
- (void)dealloc;
- (void)pairedDeviceStateChangedWithNotification:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
@end

@implementation IDSServiceWrapper

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6 = OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceNotificationToken;
  swift_beginAccess();
  notify_cancel(*(&v4->super.isa + v6));
  v7.receiver = v4;
  v7.super_class = type metadata accessor for IDSServiceWrapper();
  [(IDSServiceWrapper *)&v7 dealloc];
}

- (_TtC16ReplicatorEngine17IDSServiceWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v25 - v17;
  if (a5)
  {
    sub_1DEF8D1A8();
    v19 = sub_1DEF8D1E8();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v20 = sub_1DEF8D1E8();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  if (a6)
  {
    a6 = sub_1DEF8D848();
  }

  if (a7)
  {
    sub_1DEF8D948();
  }

  v21 = a3;
  v22 = a4;
  v23 = a8;
  v24 = self;
  sub_1DEEE8C28(v18, a6, v23);

  sub_1DEE171B4(v18, &qword_1ECDE4890, &qword_1DEF90990);
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  if (a5)
  {
    v12 = sub_1DEF8D848();
    if (!a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  if (a6)
  {
LABEL_3:
    sub_1DEF8D948();
  }

LABEL_4:
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = self;
  sub_1DEEE9470(v12, a7);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  if (a5)
  {
    v12 = sub_1DEF8D948();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = self;
  sub_1DEEE9BFC(v12, v14, a6, a7);
}

- (void)pairedDeviceStateChangedWithNotification:(id)a3
{
  v3 = self;
  sub_1DEEE82F8();
}

@end