@interface SwiftVCDaemonXPCEventHandler
- (NSArray)streams;
- (SwiftVCDaemonXPCEventHandler)initWithStreams:(id)a3;
- (SwiftVCDaemonXPCEventHandler)initWithStreams:(id)a3 queue:(id)a4;
- (void)activate;
- (void)addObserver:(id)a3 selector:(SEL)a4 name:(id)a5;
- (void)addObserver:(id)a3 selector:(SEL)a4 stream:(id)a5 eventName:(id)a6;
- (void)removeObserver:(id)a3;
- (void)removeObserver:(id)a3 eventName:(id)a4;
- (void)removeObserver:(id)a3 name:(id)a4;
@end

@implementation SwiftVCDaemonXPCEventHandler

- (NSArray)streams
{
  DaemonXPCEventHandler.streams.getter();
  type metadata accessor for VCXPCEventStream(0);
  v2 = sub_231158F38();

  return v2;
}

- (SwiftVCDaemonXPCEventHandler)initWithStreams:(id)a3 queue:(id)a4
{
  type metadata accessor for VCXPCEventStream(0);
  v5 = sub_231158F48();
  return DaemonXPCEventHandler.init(streams:queue:)(v5, a4);
}

- (SwiftVCDaemonXPCEventHandler)initWithStreams:(id)a3
{
  type metadata accessor for VCXPCEventStream(0);
  sub_231158F48();
  return DaemonXPCEventHandler.init(streams:)();
}

- (void)addObserver:(id)a3 selector:(SEL)a4 stream:(id)a5 eventName:(id)a6
{
  sub_231158E58();
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = self;
  sub_23104A65C();
  swift_unknownObjectRelease();
}

- (void)addObserver:(id)a3 selector:(SEL)a4 name:(id)a5
{
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_23104AB08(a3, a4, v9);
  swift_unknownObjectRelease();
}

- (void)removeObserver:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_23104AF44();
  swift_unknownObjectRelease();
}

- (void)removeObserver:(id)a3 name:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_23104AFB4();
  swift_unknownObjectRelease();
}

- (void)removeObserver:(id)a3 eventName:(id)a4
{
  if (a4)
  {
    sub_231158E58();
  }

  swift_unknownObjectRetain();
  v5 = self;
  sub_23104B248();
  swift_unknownObjectRelease();
}

- (void)activate
{
  v2 = self;
  sub_23104BFF8();
}

@end