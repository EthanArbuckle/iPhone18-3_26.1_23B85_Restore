@interface INRetrieveParkingLocationIntentHandler
- (_TtC7SiriGeo38INRetrieveParkingLocationIntentHandler)init;
- (void)handleRetrieveParkingLocation:(id)a3 completion:(id)a4;
@end

@implementation INRetrieveParkingLocationIntentHandler

- (void)handleRetrieveParkingLocation:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  specialized INRetrieveParkingLocationIntentHandler.handle(intent:completion:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned INDeleteParkingLocationIntentResponse) -> (), v7);
}

- (_TtC7SiriGeo38INRetrieveParkingLocationIntentHandler)init
{
  v3 = OBJC_IVAR____TtC7SiriGeo38INRetrieveParkingLocationIntentHandler_logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *(&self->super.isa + v3) = OS_os_log.init(subsystem:category:)();
  v5.receiver = self;
  v5.super_class = type metadata accessor for INRetrieveParkingLocationIntentHandler();
  return [(INRetrieveParkingLocationIntentHandler *)&v5 init];
}

@end