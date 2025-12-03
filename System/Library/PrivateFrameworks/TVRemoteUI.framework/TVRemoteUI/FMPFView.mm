@interface FMPFView
- (NSString)description;
- (_TtC10TVRemoteUI8FMPFView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)thermalStateDidChangeWithNotification:(id)notification;
@end

@implementation FMPFView

- (NSString)description
{
  selfCopy = self;
  v3 = FMR1HapticsController.description.getter();
  v5 = v4;

  v6 = MEMORY[0x26D6B1210](v3, v5);

  return v6;
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_ecoModeObservation);
  selfCopy = self;
  if (v3)
  {
    v5 = v3;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for FMPFView();
  [(FMPFView *)&v6 dealloc];
}

- (void)thermalStateDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  FMPFView.thermalStateDidChange(notification:)(notificationCopy);
}

- (_TtC10TVRemoteUI8FMPFView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end