@interface CSDCallTranslationController
- (CSDCallTranslationController)initWithQueue:(id)queue speechAssetManager:(id)manager;
- (void)client:(id)client didStopTranslationWithError:(id)error;
- (void)downloadAndGenerateRemoteLocaleDisclosureWithLocale:(id)locale;
- (void)handleAudioRouteChangedWithNotification:(id)notification;
- (void)handleCallStatusChangedWithNotification:(id)notification;
- (void)handleCurrentLocaleDidChange;
- (void)handleFaceTimeAudioUpgradeToVideoWithNotification:(id)notification;
- (void)handleTranslationStatusChangedWithNotification:(id)notification;
- (void)performRequest:(id)request forCall:(id)call completion:(id)completion;
- (void)serverDidDisconnectForClient:(id)client;
@end

@implementation CSDCallTranslationController

- (void)handleAudioRouteChangedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_10000E150();
}

- (void)handleCallStatusChangedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_10002F834();
}

- (void)handleTranslationStatusChangedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100033B54(notificationCopy);
}

- (CSDCallTranslationController)initWithQueue:(id)queue speechAssetManager:(id)manager
{
  queueCopy = queue;
  managerCopy = manager;
  sub_1002AB14C();
  return result;
}

- (void)handleFaceTimeAudioUpgradeToVideoWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1002AC1C4(notificationCopy);
}

- (void)performRequest:(id)request forCall:(id)call completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  requestCopy = request;
  callCopy = call;
  selfCopy = self;
  sub_1002AE4A8(requestCopy, callCopy, selfCopy, v8);
  _Block_release(v8);
}

- (void)downloadAndGenerateRemoteLocaleDisclosureWithLocale:(id)locale
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002AB748();

  (*(v5 + 8))(v9, v4);
}

- (void)client:(id)client didStopTranslationWithError:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_1002B57C4();
}

- (void)serverDidDisconnectForClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  sub_1002B5AB0();
}

- (void)handleCurrentLocaleDidChange
{
  selfCopy = self;
  sub_1002B5CE4();
}

@end