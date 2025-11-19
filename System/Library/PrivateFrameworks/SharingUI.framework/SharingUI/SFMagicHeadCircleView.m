@interface SFMagicHeadCircleView
- (SFMagicHeadCircleView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)update;
@end

@implementation SFMagicHeadCircleView

- (SFMagicHeadCircleView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SFMagicHeadCircleView;
  v3 = [(SFMagicHeadCircleView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFMagicHeadCircleView *)v3 update];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFMagicHeadCircleView;
  [(SFMagicHeadCircleView *)&v3 layoutSubviews];
  [(SFMagicHeadCircleView *)self update];
}

- (void)update
{
  v6 = [(SFMagicHeadCircleView *)self layer];
  [(SFMagicHeadCircleView *)self frame];
  [v6 setCornerRadius:CGRectGetWidth(v8) * 0.5];
  v3 = MEMORY[0x1E69DC728];
  [(SFMagicHeadCircleView *)self bounds];
  v4 = [v3 bezierPathWithOvalInRect:?];
  [v6 setPath:{objc_msgSend(v4, "CGPath")}];

  [v6 setMasksToBounds:1];
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  [v6 setFillColor:{objc_msgSend(v5, "CGColor")}];
}

@end