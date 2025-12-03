@interface _UITableCellAccessoryButton
- (_UITableCellAccessoryButton)initWithFrame:(CGRect)frame backgroundImageProvider:(id)provider accessoryType:(int64_t)type;
- (id)_backgroundImageView;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_reloadBackgroundImage;
- (void)setAccessoryTintColor:(id)color;
@end

@implementation _UITableCellAccessoryButton

- (void)_reloadBackgroundImage
{
  backgroundImageProvider = [(_UITableCellAccessoryButton *)self backgroundImageProvider];
  v4 = (backgroundImageProvider)[2](backgroundImageProvider, self->_accessoryTintColor);

  [(UIButton *)self setBackgroundImage:v4 forStates:0];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = _UITableCellAccessoryButton;
  [(UIView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(_UITableCellAccessoryButton *)self _reloadBackgroundImage];
}

- (_UITableCellAccessoryButton)initWithFrame:(CGRect)frame backgroundImageProvider:(id)provider accessoryType:(int64_t)type
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = _UITableCellAccessoryButton;
  height = [(UIButton *)&v16 initWithFrame:x, y, width, height];
  if (height)
  {
    if (!providerCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:height file:@"UICollectionTableSharedSupport.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"backgroundImageProvider != NULL"}];
    }

    [(_UITableCellAccessoryButton *)height setBackgroundImageProvider:providerCopy];
    [(UIView *)height setOpaque:0];
    [(UIView *)height setUserInteractionEnabled:0];
    height->_accessoryType = type;
    [(_UITableCellAccessoryButton *)height _reloadBackgroundImage];
  }

  return height;
}

- (void)setAccessoryTintColor:(id)color
{
  colorCopy = color;
  if (![(UIColor *)self->_accessoryTintColor isEqual:?])
  {
    objc_storeStrong(&self->_accessoryTintColor, color);
    [(_UITableCellAccessoryButton *)self _reloadBackgroundImage];
  }
}

- (id)_backgroundImageView
{
  _backgroundView = [(UIButton *)self _backgroundView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _backgroundView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end