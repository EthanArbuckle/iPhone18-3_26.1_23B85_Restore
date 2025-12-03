@interface ALBacklight
- (void)dealloc;
@end

@implementation ALBacklight

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8ALDaemon11ALBacklight_backlightService);
  selfCopy = self;
  [v2 removeObserver:selfCopy];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for ALBacklight();
  [(ALBacklight *)&v4 dealloc];
}

@end