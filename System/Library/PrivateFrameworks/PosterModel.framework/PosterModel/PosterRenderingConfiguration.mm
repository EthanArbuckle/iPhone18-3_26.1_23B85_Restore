@interface PosterRenderingConfiguration
- (_TtC11PosterModel28PosterRenderingConfiguration)init;
- (_TtC11PosterModel28PosterRenderingConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PosterRenderingConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_isDepthEffectDisabled);
  v5 = a3;
  v6 = self;
  [v5 encodeBool:v4 forKey:@"depthEffectDisabled"];
  [v5 encodeBool:*(&v6->super.isa + OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_areMotionEffectsDisabled) forKey:@"motionEffectsDisabled"];
}

- (_TtC11PosterModel28PosterRenderingConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeBoolForKey_];
  v5 = [v3 decodeBoolForKey_];
  v6 = type metadata accessor for PosterRenderingConfiguration();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_isDepthEffectDisabled] = v4;
  v7[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_areMotionEffectsDisabled] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = [(PosterRenderingConfiguration *)&v10 init];

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (_TtC11PosterModel28PosterRenderingConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end