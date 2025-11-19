@interface CSDCallTranslationController
- (CSDCallTranslationController)initWithQueue:(id)a3 speechAssetManager:(id)a4;
- (void)client:(id)a3 didStopTranslationWithError:(id)a4;
- (void)downloadAndGenerateRemoteLocaleDisclosureWithLocale:(id)a3;
- (void)handleAudioRouteChangedWithNotification:(id)a3;
- (void)handleCallStatusChangedWithNotification:(id)a3;
- (void)handleCurrentLocaleDidChange;
- (void)handleFaceTimeAudioUpgradeToVideoWithNotification:(id)a3;
- (void)handleTranslationStatusChangedWithNotification:(id)a3;
- (void)performRequest:(id)a3 forCall:(id)a4 completion:(id)a5;
- (void)serverDidDisconnectForClient:(id)a3;
@end

@implementation CSDCallTranslationController

- (void)handleAudioRouteChangedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000E150();
}

- (void)handleCallStatusChangedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002F834();
}

- (void)handleTranslationStatusChangedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100033B54(v4);
}

- (CSDCallTranslationController)initWithQueue:(id)a3 speechAssetManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_1002AB14C();
  return result;
}

- (void)handleFaceTimeAudioUpgradeToVideoWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002AC1C4(v4);
}

- (void)performRequest:(id)a3 forCall:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1002AE4A8(v9, v10, v11, v8);
  _Block_release(v8);
}

- (void)downloadAndGenerateRemoteLocaleDisclosureWithLocale:(id)a3
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  sub_1002AB748();

  (*(v5 + 8))(v9, v4);
}

- (void)client:(id)a3 didStopTranslationWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1002B57C4();
}

- (void)serverDidDisconnectForClient:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002B5AB0();
}

- (void)handleCurrentLocaleDidChange
{
  v2 = self;
  sub_1002B5CE4();
}

@end