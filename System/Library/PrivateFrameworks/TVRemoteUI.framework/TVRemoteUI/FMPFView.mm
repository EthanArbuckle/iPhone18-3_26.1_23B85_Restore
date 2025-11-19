@interface FMPFView
- (NSString)description;
- (_TtC10TVRemoteUI8FMPFView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)thermalStateDidChangeWithNotification:(id)a3;
@end

@implementation FMPFView

- (NSString)description
{
  v2 = self;
  v3 = FMR1HapticsController.description.getter();
  v5 = v4;

  v6 = MEMORY[0x26D6B1210](v3, v5);

  return v6;
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_ecoModeObservation);
  v4 = self;
  if (v3)
  {
    v5 = v3;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for FMPFView();
  [(FMPFView *)&v6 dealloc];
}

- (void)thermalStateDidChangeWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  FMPFView.thermalStateDidChange(notification:)(v4);
}

- (_TtC10TVRemoteUI8FMPFView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end