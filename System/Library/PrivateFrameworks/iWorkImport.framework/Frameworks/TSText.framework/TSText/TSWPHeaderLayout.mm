@interface TSWPHeaderLayout
- (CGSize)maximumFrameSizeForChild:(id)child;
- (TSWPHeaderLayout)initWithInfo:(id)info;
- (TSWPHeaderLayout)initWithInfo:(id)info frame:(CGRect)frame;
- (TSWPHeaderLayout)initWithInfo:(id)info storage:(id)storage frame:(CGRect)frame;
@end

@implementation TSWPHeaderLayout

- (CGSize)maximumFrameSizeForChild:(id)child
{
  [(TSWPLayout *)self maxSize];
  v5 = v4 * 0.800000012;
  result.height = v5;
  result.width = v3;
  return result;
}

- (TSWPHeaderLayout)initWithInfo:(id)info frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = TSWPHeaderLayout;
  swift_unknownObjectRetain();
  height = [(TSWPLayout *)&v11 initWithInfo:info frame:x, y, width, height];
  swift_unknownObjectRelease();
  if (height)
  {
  }

  return height;
}

- (TSWPHeaderLayout)initWithInfo:(id)info storage:(id)storage frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14.receiver = self;
  v14.super_class = TSWPHeaderLayout;
  swift_unknownObjectRetain();
  storageCopy = storage;
  height = [(TSWPLayout *)&v14 initWithInfo:info storage:storageCopy frame:x, y, width, height];
  swift_unknownObjectRelease();

  if (height)
  {
  }

  return height;
}

- (TSWPHeaderLayout)initWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = TSWPHeaderLayout;
  swift_unknownObjectRetain();
  v4 = [(TSWPLayout *)&v6 initWithInfo:info];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

@end