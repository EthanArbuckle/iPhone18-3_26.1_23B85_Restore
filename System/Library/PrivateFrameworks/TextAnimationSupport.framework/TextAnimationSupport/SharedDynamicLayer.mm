@interface SharedDynamicLayer
- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418SharedDynamicLayer)init;
- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418SharedDynamicLayer)initWithCoder:(id)a3;
- (void)drawInDisplayList:(id)a3;
@end

@implementation SharedDynamicLayer

- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418SharedDynamicLayer)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418SharedDynamicLayer)init
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(RBLayer *)&v4 init];
  [(SharedDynamicLayer *)v2 setFrame:0.0, 0.0, 0.0, 0.0];
  [(SharedDynamicLayer *)v2 setOpaque:0];
  [(SharedDynamicLayer *)v2 setNeedsDisplay];

  return v2;
}

- (void)drawInDisplayList:(id)a3
{
  v4 = a3;
  v5 = self;
  SharedDynamicLayer.draw(inDisplayList:)(v4);
}

@end