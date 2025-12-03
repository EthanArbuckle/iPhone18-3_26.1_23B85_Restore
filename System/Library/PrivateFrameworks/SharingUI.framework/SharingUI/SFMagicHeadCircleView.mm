@interface SFMagicHeadCircleView
- (SFMagicHeadCircleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)update;
@end

@implementation SFMagicHeadCircleView

- (SFMagicHeadCircleView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SFMagicHeadCircleView;
  v3 = [(SFMagicHeadCircleView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  layer = [(SFMagicHeadCircleView *)self layer];
  [(SFMagicHeadCircleView *)self frame];
  [layer setCornerRadius:CGRectGetWidth(v8) * 0.5];
  v3 = MEMORY[0x1E69DC728];
  [(SFMagicHeadCircleView *)self bounds];
  v4 = [v3 bezierPathWithOvalInRect:?];
  [layer setPath:{objc_msgSend(v4, "CGPath")}];

  [layer setMasksToBounds:1];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [layer setFillColor:{objc_msgSend(whiteColor, "CGColor")}];
}

@end