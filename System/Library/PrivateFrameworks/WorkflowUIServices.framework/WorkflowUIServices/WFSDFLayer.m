@interface WFSDFLayer
- (CGRect)frame;
- (_TtC18WorkflowUIServices10WFSDFLayer)initWithLayer:(id)a3;
- (double)cornerRadius;
- (void)setCornerRadius:(double)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation WFSDFLayer

- (CGRect)frame
{
  v2 = self;
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

- (void)setFrame:(CGRect)a3
{
  v3 = self;
  sub_1C8346B30();
}

- (double)cornerRadius
{
  v2 = self;
  sub_1C8346C10();
  v4 = v3;

  return v4;
}

- (void)setCornerRadius:(double)a3
{
  v4 = self;
  sub_1C8346C9C(a3);
}

- (_TtC18WorkflowUIServices10WFSDFLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1C840D35C();
  swift_unknownObjectRelease();
  WFSDFLayer.init(layer:)();
}

@end