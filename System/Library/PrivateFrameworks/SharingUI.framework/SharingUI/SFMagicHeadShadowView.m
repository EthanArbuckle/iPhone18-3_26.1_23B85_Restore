@interface SFMagicHeadShadowView
- (SFMagicHeadShadowView)initWithFrame:(CGRect)a3;
- (void)setVisible:(BOOL)a3;
@end

@implementation SFMagicHeadShadowView

- (SFMagicHeadShadowView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SFMagicHeadShadowView;
  v3 = [(SFMagicHeadShadowView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(SFMagicHeadShadowView *)v3 setBackgroundColor:v4];

    v5 = [(SFMagicHeadShadowView *)v3 layer];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.07];
    [v5 setShadowColor:{objc_msgSend(v6, "CGColor")}];

    [v5 setShadowRadius:12.0];
  }

  return v3;
}

- (void)setVisible:(BOOL)a3
{
  if (self->_visible != a3)
  {
    self->_visible = a3;
    if (a3)
    {
      v4 = *"333?";
    }

    else
    {
      v4 = 0.0;
    }

    v6 = [(SFMagicHeadShadowView *)self layer];
    *&v5 = v4;
    [v6 setShadowOpacity:v5];
  }
}

@end