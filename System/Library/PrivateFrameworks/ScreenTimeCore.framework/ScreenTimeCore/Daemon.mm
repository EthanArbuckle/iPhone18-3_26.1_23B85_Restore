@interface Daemon
+ (void)setReactor:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC15ScreenTimeAgent6Daemon)init;
- (id)operationToResolveAsset:(id)a3;
- (id)operationToSendEvents:(id)a3;
- (id)operationToSendStatusUpdate:(id)a3;
- (void)configurationSourceDidFailToRegister:(id)a3 withError:(id)a4;
- (void)containerEventChanged:(id)a3;
- (void)dealloc;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)start;
- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 didReceiveNotificationResponse:(UNNotificationResponse *)a4 withCompletionHandler:(id)a5;
@end

@implementation Daemon

+ (void)setReactor:(id)a3
{
  v4 = qword_1001E7018;
  qword_1001E7018 = a3;
  v3 = a3;
}

- (void)dealloc
{
  v2 = self;
  v3 = sub_1000D53C8();
  [v3 invalidate];

  v4 = sub_1000D53E8();
  [v4 invalidate];

  v5.receiver = v2;
  v5.super_class = type metadata accessor for Daemon();
  [(Daemon *)&v5 dealloc];
}

- (void)start
{
  v2 = self;
  sub_1000D5D28();
}

- (_TtC15ScreenTimeAgent6Daemon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1000DBBC4(v7);

  return v9 & 1;
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  if (a5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = a3;
  v14 = a4;
  v17 = a7;
  v15 = a8;
  v16 = self;
  sub_1000DDAD4();
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  if (!a5)
  {
    v10 = 0;
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(v19, 0, sizeof(v19));
    v16 = a3;
    v17 = a4;
    v18 = self;
    goto LABEL_6;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = a3;
  v14 = a4;
  swift_unknownObjectRetain();
  v15 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
LABEL_6:
  sub_1000DDD0C(v10, v12);

  sub_1000A5148(v19, &qword_1001E03A0, qword_100140A70);
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v13 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v35 - v15;
  if (!a5)
  {
    v28 = a3;
    v29 = a4;
    v30 = a6;
    v31 = a7;
    v32 = self;
    v24 = 0xF000000000000000;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v25 = 0;
    v27 = 0;
    goto LABEL_6;
  }

  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a7;
  v21 = self;
  v22 = a5;
  a5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

LABEL_6:
  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = self;
  v34[5] = a3;
  v34[6] = a4;
  v34[7] = a5;
  v34[8] = v24;
  v34[9] = v25;
  v34[10] = v27;
  v34[11] = a7;
  sub_1000D4310(0, 0, v16, &unk_100141EF0, v34);
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7
{
  v13 = sub_1000A0F2C(&qword_1001E1850, &qword_100141EE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v23 - v15;
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  }

  else
  {
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  }

  if (a6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v19 = a3;
  v20 = a4;
  v21 = a7;
  v22 = self;
  sub_1000DDE70();

  sub_1000A5148(v16, &qword_1001E1850, &qword_100141EE0);
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v6 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = self;
  v12 = a3;
  v13 = self;
  sub_1000D4310(0, 0, v9, &unk_100141ED0, v11);
}

- (void)containerEventChanged:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_1000D8244();

  (*(v5 + 8))(v8, v4);
}

- (void)configurationSourceDidFailToRegister:(id)a3 withError:(id)a4
{
  v6 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a4;
  v11[5] = self;
  v12 = a4;
  v13 = self;
  sub_1000D45CC(0, 0, v9, &unk_100141EB0, v11);
}

- (id)operationToSendStatusUpdate:(id)a3
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  v5 = sub_1000D4C80();
  v6 = [v5 requestManager];

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v6 operationToSendStatusUpdate:isa];

  return v8;
}

- (id)operationToSendEvents:(id)a3
{
  v3 = self;
  v4 = sub_1000DE0B8("DMFConfigurationSourceClientDelegate.operation(toSendEvents)", "DMSourceClient toSendEvents Not implemented");

  return v4;
}

- (id)operationToResolveAsset:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000DE0B8("DMFConfigurationSourceClientDelegate.operation(toResolveAsset)", "DMSourceClient toResolveAsset Not implemented");

  return v6;
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 didReceiveNotificationResponse:(UNNotificationResponse *)a4 withCompletionHandler:(id)a5
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100141E98;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100140550;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10010D4C0(0, 0, v12, &unk_100140230, v17);
}

@end