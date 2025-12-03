@interface TSKBiggerButton
+ (id)tsdPlatformButtonWithFrame:(CGRect)frame;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (void)setHitBufferTop:(double)top left:(double)left bottom:(double)bottom right:(double)right;
@end

@implementation TSKBiggerButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v14.receiver = self;
  v14.super_class = TSKBiggerButton;
  result = [(TSKBiggerButton *)&v14 pointInside:event withEvent:?];
  if (self->mHitTestWithOutsets && !result)
  {
    [(TSKBiggerButton *)self bounds];
    top = self->mOutsets.top;
    left = self->mOutsets.left;
    v16.origin.x = v10 + left;
    v16.origin.y = v11 + top;
    v16.size.width = v12 - (left + self->mOutsets.right);
    v16.size.height = v13 - (top + self->mOutsets.bottom);
    v15.x = x;
    v15.y = y;
    return CGRectContainsPoint(v16, v15);
  }

  return result;
}

- (void)setHitBufferTop:(double)top left:(double)left bottom:(double)bottom right:(double)right
{
  self->mOutsets.top = -top;
  self->mOutsets.left = -left;
  self->mOutsets.bottom = -bottom;
  self->mOutsets.right = -right;
  self->mHitTestWithOutsets = 1;
}

+ (id)tsdPlatformButtonWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [TSKBiggerButton buttonWithType:0];
  [(TSKBiggerButton *)v7 setFrame:x, y, width, height];
  return v7;
}

@end