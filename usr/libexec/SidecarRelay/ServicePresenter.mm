@interface ServicePresenter
- (void)relayPresenterServiceExtensionReady:(id)a3;
- (void)relayPresenterStartServiceExtension:(id)a3 completion:(id)a4;
- (void)relayRegisterServicePresenter:(id)a3;
- (void)relayServicePresenterReady:(int64_t)a3 completion:(id)a4;
- (void)relaySessionOpen:(id)a3 reconnect:(id)a4 serviceIdentifier:(id)a5 destination:(id)a6 transport:(int64_t)a7 completion:(id)a8;
@end

@implementation ServicePresenter

- (void)relayRegisterServicePresenter:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10004A470(v5, v4);
  _Block_release(v4);
}

- (void)relaySessionOpen:(id)a3 reconnect:(id)a4 serviceIdentifier:(id)a5 destination:(id)a6 transport:(int64_t)a7 completion:(id)a8
{
  v29 = self;
  v30 = a7;
  v10 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v29 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v29 - v20;
  v22 = _Block_copy(a8);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  sub_10001137C(v13, v23, 1, v14);
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v22);
  v27 = v29;
  sub_10004A758(v21, v13, v24, v26, v19, v30, v27, v22);
  _Block_release(v22);

  v28 = *(v15 + 8);
  v28(v19, v14);
  sub_10004B2B0(v13);
  v28(v21, v14);
}

- (void)relayPresenterStartServiceExtension:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_10004ABBC(v6, v8, sub_10001131C, v9);
}

- (void)relayPresenterServiceExtensionReady:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10004AE9C(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)relayServicePresenterReady:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = self;
  sub_10004F1DC(a3);
}

@end