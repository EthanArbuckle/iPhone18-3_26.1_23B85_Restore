@interface TSWPInstructionalTextLayout
- (TSWPInstructionalTextLayout)initWithInfo:(id)info storage:(id)storage frame:(CGRect)frame;
@end

@implementation TSWPInstructionalTextLayout

- (TSWPInstructionalTextLayout)initWithInfo:(id)info storage:(id)storage frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  storageCopy = storage;
  v16.receiver = self;
  v16.super_class = TSWPInstructionalTextLayout;
  height = [(TSWPLayout *)&v16 initWithInfo:info frame:x, y, width, height];
  v14 = height;
  if (height)
  {
    objc_storeStrong(&height->super._storage, storage);
  }

  return v14;
}

@end