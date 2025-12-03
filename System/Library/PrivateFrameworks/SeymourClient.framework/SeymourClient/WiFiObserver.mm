@interface WiFiObserver
- (_TtC13SeymourClient12WiFiObserver)init;
- (void)dealloc;
@end

@implementation WiFiObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13SeymourClient12WiFiObserver_wifiInterface);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for WiFiObserver();
  [(WiFiObserver *)&v4 dealloc];
}

- (_TtC13SeymourClient12WiFiObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end