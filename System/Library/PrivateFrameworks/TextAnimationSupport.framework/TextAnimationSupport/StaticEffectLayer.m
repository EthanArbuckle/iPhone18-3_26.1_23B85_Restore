@interface StaticEffectLayer
- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer)init;
- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer)initWithCoder:(id)a3;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation StaticEffectLayer

- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)drawInContext:(CGContext *)a3
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a3;
  v10 = self;
  [(StaticEffectLayer *)v10 contentsScale];
  v12 = v10;
  EnvironmentValues.init()();
  static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)();

  (*(v6 + 8))(v8, v5);
}

- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919417StaticEffectLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end