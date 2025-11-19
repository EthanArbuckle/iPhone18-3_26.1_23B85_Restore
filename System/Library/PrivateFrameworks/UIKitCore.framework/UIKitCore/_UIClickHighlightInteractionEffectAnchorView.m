@interface _UIClickHighlightInteractionEffectAnchorView
- (_UIClickHighlightInteractionEffectAnchorView)init;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation _UIClickHighlightInteractionEffectAnchorView

- (_UIClickHighlightInteractionEffectAnchorView)init
{
  v5.receiver = self;
  v5.super_class = _UIClickHighlightInteractionEffectAnchorView;
  v2 = [(UIView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIView *)v2 setUserInteractionEnabled:0];
  }

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = _UIClickHighlightInteractionEffectAnchorView;
  [(UIView *)&v3 setFrame:a3.origin.x, a3.origin.y, 5.0, 5.0];
}

- (void)setBounds:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = _UIClickHighlightInteractionEffectAnchorView;
  [(UIView *)&v3 setBounds:0.0, 0.0, 5.0, 5.0];
}

@end