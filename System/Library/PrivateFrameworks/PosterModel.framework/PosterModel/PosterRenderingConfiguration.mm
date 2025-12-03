@interface PosterRenderingConfiguration
- (_TtC11PosterModel28PosterRenderingConfiguration)init;
- (_TtC11PosterModel28PosterRenderingConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PosterRenderingConfiguration

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_isDepthEffectDisabled);
  coderCopy = coder;
  selfCopy = self;
  [coderCopy encodeBool:v4 forKey:@"depthEffectDisabled"];
  [coderCopy encodeBool:*(&selfCopy->super.isa + OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_areMotionEffectsDisabled) forKey:@"motionEffectsDisabled"];
}

- (_TtC11PosterModel28PosterRenderingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  decodeBoolForKey_ = [coderCopy decodeBoolForKey_];
  decodeBoolForKey_2 = [coderCopy decodeBoolForKey_];
  v6 = type metadata accessor for PosterRenderingConfiguration();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_isDepthEffectDisabled] = decodeBoolForKey_;
  v7[OBJC_IVAR____TtC11PosterModel28PosterRenderingConfiguration_areMotionEffectsDisabled] = decodeBoolForKey_2;
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