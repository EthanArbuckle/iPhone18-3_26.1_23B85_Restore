@interface SFMagicHeadShadowView
- (SFMagicHeadShadowView)initWithFrame:(CGRect)frame;
- (void)setVisible:(BOOL)visible;
@end

@implementation SFMagicHeadShadowView

- (SFMagicHeadShadowView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SFMagicHeadShadowView;
  v3 = [(SFMagicHeadShadowView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SFMagicHeadShadowView *)v3 setBackgroundColor:clearColor];

    layer = [(SFMagicHeadShadowView *)v3 layer];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.07];
    [layer setShadowColor:{objc_msgSend(v6, "CGColor")}];

    [layer setShadowRadius:12.0];
  }

  return v3;
}

- (void)setVisible:(BOOL)visible
{
  if (self->_visible != visible)
  {
    self->_visible = visible;
    if (visible)
    {
      v4 = *"333?";
    }

    else
    {
      v4 = 0.0;
    }

    layer = [(SFMagicHeadShadowView *)self layer];
    *&v5 = v4;
    [layer setShadowOpacity:v5];
  }
}

@end