@interface SLKeyQueryController
- (SLKeyQueryController)init;
- (SLKeyQueryController)initWithService:(id)service targetQueue:(id)queue;
@end

@implementation SLKeyQueryController

- (SLKeyQueryController)initWithService:(id)service targetQueue:(id)queue
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = objc_opt_self();
  queueCopy = queue;
  result = [v9 sharedInstance];
  if (result)
  {
    v12 = result;
    v14[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSIDQueryController, 0x277D18728);
    v14[4] = &protocol witness table for IDSIDQueryController;
    v14[0] = v12;
    v13 = (*(ObjectType + 176))(v5, v7, queueCopy, v14);
    swift_deallocPartialClassInstance();
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (SLKeyQueryController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end