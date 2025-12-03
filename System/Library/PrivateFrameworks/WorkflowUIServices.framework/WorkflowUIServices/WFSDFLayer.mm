@interface WFSDFLayer
- (CGRect)frame;
- (_TtC18WorkflowUIServices10WFSDFLayer)initWithLayer:(id)layer;
- (double)cornerRadius;
- (void)setCornerRadius:(double)radius;
- (void)setFrame:(CGRect)frame;
@end

@implementation WFSDFLayer

- (CGRect)frame
{
  selfCopy = self;
  sub_1C8346A84();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  selfCopy = self;
  sub_1C8346B30();
}

- (double)cornerRadius
{
  selfCopy = self;
  sub_1C8346C10();
  v4 = v3;

  return v4;
}

- (void)setCornerRadius:(double)radius
{
  selfCopy = self;
  sub_1C8346C9C(radius);
}

- (_TtC18WorkflowUIServices10WFSDFLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_1C840D35C();
  swift_unknownObjectRelease();
  WFSDFLayer.init(layer:)();
}

@end