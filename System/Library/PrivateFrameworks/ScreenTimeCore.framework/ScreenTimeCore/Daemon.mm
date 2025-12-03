@interface Daemon
+ (void)setReactor:(id)reactor;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC15ScreenTimeAgent6Daemon)init;
- (id)operationToResolveAsset:(id)asset;
- (id)operationToSendEvents:(id)events;
- (id)operationToSendStatusUpdate:(id)update;
- (void)configurationSourceDidFailToRegister:(id)register withError:(id)error;
- (void)containerEventChanged:(id)changed;
- (void)dealloc;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)start;
- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler;
@end

@implementation Daemon

+ (void)setReactor:(id)reactor
{
  v4 = qword_1001E7018;
  qword_1001E7018 = reactor;
  reactorCopy = reactor;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = sub_1000D53C8();
  [v3 invalidate];

  v4 = sub_1000D53E8();
  [v4 invalidate];

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for Daemon();
  [(Daemon *)&v5 dealloc];
}

- (void)start
{
  selfCopy = self;
  sub_1000D5D28();
}

- (_TtC15ScreenTimeAgent6Daemon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1000DBBC4(connectionCopy);

  return v9 & 1;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  accountCopy = account;
  errorCopy = error;
  contextCopy = context;
  selfCopy = self;
  sub_1000DDAD4();
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  if (!identifier)
  {
    v10 = 0;
    v12 = 0;
    if (context)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(v19, 0, sizeof(v19));
    serviceCopy = service;
    accountCopy = account;
    selfCopy = self;
    goto LABEL_6;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (!context)
  {
    goto LABEL_5;
  }

LABEL_3:
  serviceCopy2 = service;
  accountCopy2 = account;
  swift_unknownObjectRetain();
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
LABEL_6:
  sub_1000DDD0C(v10, v12);

  sub_1000A5148(v19, &qword_1001E03A0, qword_100140A70);
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v13 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v35 - v15;
  if (!data)
  {
    serviceCopy = service;
    accountCopy = account;
    dCopy = d;
    contextCopy = context;
    selfCopy = self;
    v24 = 0xF000000000000000;
    if (d)
    {
      goto LABEL_3;
    }

LABEL_5:
    v25 = 0;
    v27 = 0;
    goto LABEL_6;
  }

  serviceCopy2 = service;
  accountCopy2 = account;
  dCopy2 = d;
  contextCopy2 = context;
  selfCopy2 = self;
  dataCopy = data;
  data = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (!d)
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
  v34[5] = service;
  v34[6] = account;
  v34[7] = data;
  v34[8] = v24;
  v34[9] = v25;
  v34[10] = v27;
  v34[11] = context;
  sub_1000D4310(0, 0, v16, &unk_100141EF0, v34);
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context
{
  v13 = sub_1000A0F2C(&qword_1001E1850, &qword_100141EE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v23 - v15;
  if (l)
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

  if (d)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_1000DDE70();

  sub_1000A5148(v16, &qword_1001E1850, &qword_100141EE0);
}

- (void)service:(id)service activeAccountsChanged:(id)changed
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
  v11[4] = service;
  v11[5] = self;
  serviceCopy = service;
  selfCopy = self;
  sub_1000D4310(0, 0, v9, &unk_100141ED0, v11);
}

- (void)containerEventChanged:(id)changed
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000D8244();

  (*(v5 + 8))(v8, v4);
}

- (void)configurationSourceDidFailToRegister:(id)register withError:(id)error
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
  v11[4] = error;
  v11[5] = self;
  errorCopy = error;
  selfCopy = self;
  sub_1000D45CC(0, 0, v9, &unk_100141EB0, v11);
}

- (id)operationToSendStatusUpdate:(id)update
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v5 = sub_1000D4C80();
  requestManager = [v5 requestManager];

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [requestManager operationToSendStatusUpdate:isa];

  return v8;
}

- (id)operationToSendEvents:(id)events
{
  selfCopy = self;
  v4 = sub_1000DE0B8("DMFConfigurationSourceClientDelegate.operation(toSendEvents)", "DMSourceClient toSendEvents Not implemented");

  return v4;
}

- (id)operationToResolveAsset:(id)asset
{
  assetCopy = asset;
  selfCopy = self;
  v6 = sub_1000DE0B8("DMFConfigurationSourceClientDelegate.operation(toResolveAsset)", "DMSourceClient toResolveAsset Not implemented");

  return v6;
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = center;
  v14[3] = response;
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
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_10010D4C0(0, 0, v12, &unk_100140230, v17);
}

@end