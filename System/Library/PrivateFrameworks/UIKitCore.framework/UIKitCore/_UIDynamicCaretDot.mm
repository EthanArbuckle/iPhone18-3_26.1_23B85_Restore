@interface _UIDynamicCaretDot
- (_UIDynamicCaretDot)initWithFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame;
@end

@implementation _UIDynamicCaretDot

- (_UIDynamicCaretDot)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIDynamicCaretDot;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor whiteColor];
    [(UIView *)v3 setBackgroundColor:v4];

    [(UIView *)v3 setOpaque:0];
    [(UIView *)v3 setUserInteractionEnabled:0];
    [(UIView *)v3 setAnchorPoint:0.5, 0.5];
  }

  return v3;
}

- (void)setFrame:(CGRect)frame
{
  width = frame.size.width;
  v6.receiver = self;
  v6.super_class = _UIDynamicCaretDot;
  [(UIView *)&v6 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  layer = [(UIView *)self layer];
  [layer setCornerRadius:width * 0.5];
}

@end