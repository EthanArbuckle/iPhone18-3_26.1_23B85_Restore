@interface UISwitchVisualElement
+ (CGSize)preferredContentSize;
+ (UIEdgeInsets)preferredAlignmentRectInsets;
- (CGSize)preferredContentSize;
- (UISwitchControl)switchControl;
- (UISwitchVisualElement)initWithFrame:(CGRect)frame;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation UISwitchVisualElement

- (UISwitchControl)switchControl
{
  WeakRetained = objc_loadWeakRetained(&self->_switchControl);

  return WeakRetained;
}

- (UISwitchVisualElement)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UISwitchVisualElement;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = 0.5;
  if (enabled)
  {
    v5 = 1.0;
  }

  [(UIView *)self setAlpha:v5];
  self->_enabled = enabledCopy;

  [(UIView *)self setUserInteractionEnabled:enabledCopy];
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
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