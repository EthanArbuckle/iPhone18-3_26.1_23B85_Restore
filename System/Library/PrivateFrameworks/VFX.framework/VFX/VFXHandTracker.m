@interface VFXHandTracker
- (_TtC3VFX14VFXHandTracker)init;
@end

@implementation VFXHandTracker

- (_TtC3VFX14VFXHandTracker)init
{
  *(&self->super.isa + OBJC_IVAR____TtC3VFX14VFXHandTracker_updateCount) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC3VFX14VFXHandTracker__worlds) = MEMORY[0x1E69E7CC0];
  v3.receiver = self;
  v3.super_class = type metadata accessor for VFXHandTracker();
  return [(VFXHandTracker *)&v3 init];
}

@end