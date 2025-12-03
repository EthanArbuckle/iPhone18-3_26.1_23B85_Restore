@interface SharedDynamicLayer
- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418SharedDynamicLayer)init;
- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418SharedDynamicLayer)initWithCoder:(id)coder;
- (void)drawInDisplayList:(id)list;
@end

@implementation SharedDynamicLayer

- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919418SharedDynamicLayer)initWithCoder:(id)coder
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

- (void)drawInDisplayList:(id)list
{
  listCopy = list;
  selfCopy = self;
  SharedDynamicLayer.draw(inDisplayList:)(listCopy);
}

@end