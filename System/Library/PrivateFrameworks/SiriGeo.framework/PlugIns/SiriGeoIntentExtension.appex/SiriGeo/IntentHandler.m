@interface IntentHandler
- (_TtC22SiriGeoIntentExtension13IntentHandler)init;
- (id)handlerForIntent:(id)a3;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  IntentHandler.handler(for:)(v4, v8);

  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v8);

  return v6;
}

- (_TtC22SiriGeoIntentExtension13IntentHandler)init
{
  v3 = OBJC_IVAR____TtC22SiriGeoIntentExtension13IntentHandler_logObject;
  type metadata accessor for OS_os_log();
  *(&self->super.super.isa + v3) = OS_os_log.init(subsystem:category:)();
  v5.receiver = self;
  v5.super_class = type metadata accessor for IntentHandler();
  return [(IntentHandler *)&v5 init];
}

@end