@interface INShareETAIntentHandler
- (_TtC7SiriGeo23INShareETAIntentHandler)init;
- (void)confirmShareETA:(id)a completion:(id)completion;
- (void)handleShareETA:(id)a completion:(id)completion;
- (void)resolveRecipientsForShareETA:(id)a withCompletion:(id)completion;
@end

@implementation INShareETAIntentHandler

- (void)resolveRecipientsForShareETA:(id)a withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  aCopy = a;
  selfCopy = self;
  specialized INShareETAIntentHandler.resolveRecipients(for:with:)(aCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)confirmShareETA:(id)a completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  aCopy = a;
  selfCopy = self;
  specialized INShareETAIntentHandler.confirm(intent:completion:)(selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handleShareETA:(id)a completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  aCopy = a;
  specialized INShareETAIntentHandler.handleShareETA(intent:completion:)(aCopy, selfCopy, selfCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned INDeleteParkingLocationIntentResponse) -> (), v7);
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