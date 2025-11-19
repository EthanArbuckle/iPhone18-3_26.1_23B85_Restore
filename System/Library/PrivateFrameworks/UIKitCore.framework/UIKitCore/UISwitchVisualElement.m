@interface UISwitchVisualElement
+ (CGSize)preferredContentSize;
+ (UIEdgeInsets)preferredAlignmentRectInsets;
- (CGSize)preferredContentSize;
- (UISwitchControl)switchControl;
- (UISwitchVisualElement)initWithFrame:(CGRect)a3;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation UISwitchVisualElement

- (UISwitchControl)switchControl
{
  WeakRetained = objc_loadWeakRetained(&self->_switchControl);

  return WeakRetained;
}

- (UISwitchVisualElement)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UISwitchVisualElement;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UISwitchVisualElement *)v3 setEnabledAlpha:1.0];
    [(UISwitchVisualElement *)v4 setEnabled:1];
  }

  return v4;
}

+ (CGSize)preferredContentSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

+ (UIEdgeInsets)preferredAlignmentRectInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = 0.5;
  if (a3)
  {
    v5 = 1.0;
  }

  [(UIView *)self setAlpha:v5];
  self->_enabled = v3;

  [(UIView *)self setUserInteractionEnabled:v3];
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  if (([objc_opt_class() isFixedSize] & 1) == 0)
  {

    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)preferredContentSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

@end