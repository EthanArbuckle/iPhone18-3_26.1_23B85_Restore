@interface INShareETAIntentHandler
- (_TtC7SiriGeo23INShareETAIntentHandler)init;
- (void)confirmShareETA:(id)a3 completion:(id)a4;
- (void)handleShareETA:(id)a3 completion:(id)a4;
- (void)resolveRecipientsForShareETA:(id)a3 withCompletion:(id)a4;
@end

@implementation INShareETAIntentHandler

- (void)resolveRecipientsForShareETA:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  specialized INShareETAIntentHandler.resolveRecipients(for:with:)(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)confirmShareETA:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  specialized INShareETAIntentHandler.confirm(intent:completion:)(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handleShareETA:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  v9 = a3;
  specialized INShareETAIntentHandler.handleShareETA(intent:completion:)(v9, v8, v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned INDeleteParkingLocationIntentResponse) -> (), v7);
}

- (_TtC7SiriGeo23INShareETAIntentHandler)init
{
  v3 = OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *(&self->super.isa + v3) = OS_os_log.init(subsystem:category:)();
  v4 = (self + OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_sharedTripContact);
  v4[1] = 0u;
  v4[2] = 0u;
  *v4 = 0u;
  v5 = OBJC_IVAR____TtC7SiriGeo23INShareETAIntentHandler_contactService;
  type metadata accessor for ContactService();
  swift_allocObject();
  *(&self->super.isa + v5) = ContactService.init()();
  v7.receiver = self;
  v7.super_class = type metadata accessor for INShareETAIntentHandler();
  return [(INShareETAIntentHandler *)&v7 init];
}

@end