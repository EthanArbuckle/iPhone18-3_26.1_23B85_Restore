@interface TSWPInstructionalTextLayout
- (TSWPInstructionalTextLayout)initWithInfo:(id)a3 storage:(id)a4 frame:(CGRect)a5;
@end

@implementation TSWPInstructionalTextLayout

- (TSWPInstructionalTextLayout)initWithInfo:(id)a3 storage:(id)a4 frame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = TSWPInstructionalTextLayout;
  v13 = [(TSWPLayout *)&v16 initWithInfo:a3 frame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->super._storage, a4);
  }

  return v14;
}

@end