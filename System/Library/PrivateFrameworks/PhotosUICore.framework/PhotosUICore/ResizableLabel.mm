@interface ResizableLabel
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)setFrame:(CGRect)frame;
@end

@implementation ResizableLabel

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore14ResizableLabel_targetLabel) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ResizableLabel();
  [(ResizableLabel *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = type metadata accessor for ResizableLabel();
  v15.receiver = self;
  v15.super_class = v8;
  selfCopy = self;
  [(ResizableLabel *)&v15 frame];
  v17.origin.x = v10;
  v17.origin.y = v11;
  v17.size.width = v12;
  v17.size.height = v13;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (!CGRectEqualToRect(v16, v17))
  {
    sub_1A3F4BBA0(0.0, 0.0, width, height);
  }

  v14.receiver = selfCopy;
  v14.super_class = v8;
  [(ResizableLabel *)&v14 setFrame:x, y, width, height];
}

@end