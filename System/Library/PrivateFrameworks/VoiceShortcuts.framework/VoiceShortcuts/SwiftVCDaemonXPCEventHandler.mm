@interface SwiftVCDaemonXPCEventHandler
- (NSArray)streams;
- (SwiftVCDaemonXPCEventHandler)initWithStreams:(id)streams;
- (SwiftVCDaemonXPCEventHandler)initWithStreams:(id)streams queue:(id)queue;
- (void)activate;
- (void)addObserver:(id)observer selector:(SEL)selector name:(id)name;
- (void)addObserver:(id)observer selector:(SEL)selector stream:(id)stream eventName:(id)name;
- (void)removeObserver:(id)observer;
- (void)removeObserver:(id)observer eventName:(id)name;
- (void)removeObserver:(id)observer name:(id)name;
@end

@implementation SwiftVCDaemonXPCEventHandler

- (NSArray)streams
{
  DaemonXPCEventHandler.streams.getter();
  type metadata accessor for VCXPCEventStream(0);
  v2 = sub_231158F38();

  return v2;
}

- (SwiftVCDaemonXPCEventHandler)initWithStreams:(id)streams queue:(id)queue
{
  type metadata accessor for VCXPCEventStream(0);
  v5 = sub_231158F48();
  return DaemonXPCEventHandler.init(streams:queue:)(v5, queue);
}

- (SwiftVCDaemonXPCEventHandler)initWithStreams:(id)streams
{
  type metadata accessor for VCXPCEventStream(0);
  sub_231158F48();
  return DaemonXPCEventHandler.init(streams:)();
}

- (void)addObserver:(id)observer selector:(SEL)selector stream:(id)stream eventName:(id)name
{
  sub_231158E58();
  swift_unknownObjectRetain();
  streamCopy = stream;
  selfCopy = self;
  sub_23104A65C();
  swift_unknownObjectRelease();
}

- (void)addObserver:(id)observer selector:(SEL)selector name:(id)name
{
  swift_unknownObjectRetain();
  nameCopy = name;
  selfCopy = self;
  sub_23104AB08(observer, selector, nameCopy);
  swift_unknownObjectRelease();
}

- (void)removeObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_23104AF44();
  swift_unknownObjectRelease();
}

- (void)removeObserver:(id)observer name:(id)name
{
  swift_unknownObjectRetain();
  nameCopy = name;
  selfCopy = self;
  sub_23104AFB4();
  swift_unknownObjectRelease();
}

- (void)removeObserver:(id)observer eventName:(id)name
{
  if (name)
  {
    sub_231158E58();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_23104B248();
  swift_unknownObjectRelease();
}

- (void)activate
{
  selfCopy = self;
  sub_23104BFF8();
}

@end