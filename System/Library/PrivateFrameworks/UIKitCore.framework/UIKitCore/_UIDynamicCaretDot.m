@interface _UIDynamicCaretDot
- (_UIDynamicCaretDot)initWithFrame:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation _UIDynamicCaretDot

- (_UIDynamicCaretDot)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIDynamicCaretDot;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setFrame:(CGRect)a3
{
  width = a3.size.width;
  v6.receiver = self;
  v6.super_class = _UIDynamicCaretDot;
  [(UIView *)&v6 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [(UIView *)self layer];
  [v5 setCornerRadius:width * 0.5];
}

@end