@interface ALBacklight
- (void)dealloc;
@end

@implementation ALBacklight

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8ALDaemon11ALBacklight_backlightService);
  v3 = self;
  [v2 removeObserver:v3];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for ALBacklight();
  [(ALBacklight *)&v4 dealloc];
}

@end