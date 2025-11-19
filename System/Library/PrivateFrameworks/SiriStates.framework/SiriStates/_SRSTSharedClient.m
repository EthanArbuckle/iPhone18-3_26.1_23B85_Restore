@interface _SRSTSharedClient
- (NSString)mostRecentEventName;
- (_SRSTSharedClientDelegate)delegate;
- (_SRSTSharedState)currentState;
- (void)dispatchEvent:(int64_t)a3;
- (void)setCurrentState:(id)a3;
- (void)stopClient;
@end

@implementation _SRSTSharedClient

- (_SRSTSharedClientDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_SRSTSharedState)currentState
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setCurrentState:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = self;
  static Published.subscript.setter();
}

- (NSString)mostRecentEventName
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0xB8);
  v3 = self;
  v4 = v2();
  if (v5)
  {

    v6 = 0;
  }

  else
  {
    v7 = SharedEvent.name.getter(v4);
    v9 = v8;

    v10 = MEMORY[0x26D631880](v7, v9);

    v6 = v10;
  }

  return v6;
}

- (void)dispatchEvent:(int64_t)a3
{
  type metadata accessor for NotificationCenterHelper();
  v5 = a3;
  v4 = lazy protocol witness table accessor for type SharedEvent and conformance SharedEvent();
  static NotificationCenterHelper.dispatch<A>(_:)(&v5, &type metadata for SharedEvent, v4);
}

- (void)stopClient
{
  v2 = self;
  SharedClient.stopClient()();
}

@end