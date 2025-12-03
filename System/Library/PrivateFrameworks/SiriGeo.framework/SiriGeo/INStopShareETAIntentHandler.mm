@interface INStopShareETAIntentHandler
- (_TtC7SiriGeo27INStopShareETAIntentHandler)init;
- (void)confirmStopShareETA:(id)a completion:(id)completion;
@end

@implementation INStopShareETAIntentHandler

- (void)confirmStopShareETA:(id)a completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  aCopy = a;
  selfCopy = self;
  specialized INStopShareETAIntentHandler.confirm(intent:completion:)(selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC7SiriGeo27INStopShareETAIntentHandler)init
{
  v3 = OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *(&self->super.isa + v3) = OS_os_log.init(subsystem:category:)();
  v4 = OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_contactService;
  type metadata accessor for ContactService();
  swift_allocObject();
  *(&self->super.isa + v4) = ContactService.init()();
  *(&self->super.isa + OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for INStopShareETAIntentHandler();
  return [(INStopShareETAIntentHandler *)&v6 init];
}

@end