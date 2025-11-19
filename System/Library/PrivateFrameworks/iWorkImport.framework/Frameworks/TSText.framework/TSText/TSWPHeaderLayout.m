@interface TSWPHeaderLayout
- (CGSize)maximumFrameSizeForChild:(id)a3;
- (TSWPHeaderLayout)initWithInfo:(id)a3;
- (TSWPHeaderLayout)initWithInfo:(id)a3 frame:(CGRect)a4;
- (TSWPHeaderLayout)initWithInfo:(id)a3 storage:(id)a4 frame:(CGRect)a5;
@end

@implementation TSWPHeaderLayout

- (CGSize)maximumFrameSizeForChild:(id)a3
{
  [(TSWPLayout *)self maxSize];
  v5 = v4 * 0.800000012;
  result.height = v5;
  result.width = v3;
  return result;
}

- (TSWPHeaderLayout)initWithInfo:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11.receiver = self;
  v11.super_class = TSWPHeaderLayout;
  swift_unknownObjectRetain();
  v9 = [(TSWPLayout *)&v11 initWithInfo:a3 frame:x, y, width, height];
  swift_unknownObjectRelease();
  if (v9)
  {
  }

  return v9;
}

- (TSWPHeaderLayout)initWithInfo:(id)a3 storage:(id)a4 frame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14.receiver = self;
  v14.super_class = TSWPHeaderLayout;
  swift_unknownObjectRetain();
  v11 = a4;
  v12 = [(TSWPLayout *)&v14 initWithInfo:a3 storage:v11 frame:x, y, width, height];
  swift_unknownObjectRelease();

  if (v12)
  {
  }

  return v12;
}

- (TSWPHeaderLayout)initWithInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSWPHeaderLayout;
  swift_unknownObjectRetain();
  v4 = [(TSWPLayout *)&v6 initWithInfo:a3];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

@end