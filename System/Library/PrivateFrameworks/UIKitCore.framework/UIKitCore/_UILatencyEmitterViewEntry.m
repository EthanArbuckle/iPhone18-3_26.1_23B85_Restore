@interface _UILatencyEmitterViewEntry
- (_TtC5UIKit26_UILatencyEmitterViewEntry)init;
- (void)addEffectToView:(id)a3;
- (void)removeEffectFromView:(id)a3;
@end

@implementation _UILatencyEmitterViewEntry

- (void)addEffectToView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18908EE78(v4);
}

- (void)removeEffectFromView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18908F128(v4);
}

- (_TtC5UIKit26_UILatencyEmitterViewEntry)init
{
  v2 = self + OBJC_IVAR____TtC5UIKit26_UILatencyEmitterViewEntry_duration;
  *v2 = 0x4000000000000000;
  v2[8] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UILatencyEmitterViewEntry__cachedLatencyView) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for _UILatencyEmitterViewEntry();
  return [(_UILatencyEmitterViewEntry *)&v4 init];
}

@end