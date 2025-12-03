@interface _SRSTCallClient
- (NSString)mostRecentEventName;
- (_SRSTCallClientDelegate)delegate;
- (_SRSTCallState)currentState;
- (void)dispatchEvent:(int64_t)event;
- (void)setCurrentState:(id)state;
- (void)stopClient;
@end

@implementation _SRSTCallClient

- (_SRSTCallClientDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_SRSTCallState)currentState
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setCurrentState:(id)state
{
  swift_getKeyPath();
  swift_getKeyPath();
  stateCopy = state;
  selfCopy = self;
  static Published.subscript.setter();
}

- (NSString)mostRecentEventName
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0xB8);
  selfCopy = self;
  v4 = v2();
  if (v5)
  {

    v6 = 0;
  }

  else
  {
    v7 = CallEvent.name.getter(v4);
    v9 = v8;

    v10 = MEMORY[0x26D631880](v7, v9);

    v6 = v10;
  }

  return v6;
}

- (void)dispatchEvent:(int64_t)event
{
  type metadata accessor for NotificationCenterHelper();
  eventCopy = event;
  v4 = lazy protocol witness table accessor for type CallEvent and conformance CallEvent();
  static NotificationCenterHelper.dispatch<A>(_:)(&eventCopy, &type metadata for CallEvent, v4);
}

- (void)stopClient
{
  selfCopy = self;
  CallClient.stopClient()();
}

@end