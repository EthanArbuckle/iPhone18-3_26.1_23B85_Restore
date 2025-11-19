@interface _UITableCellAccessoryButton
- (_UITableCellAccessoryButton)initWithFrame:(CGRect)a3 backgroundImageProvider:(id)a4 accessoryType:(int64_t)a5;
- (id)_backgroundImageView;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_reloadBackgroundImage;
- (void)setAccessoryTintColor:(id)a3;
@end

@implementation _UITableCellAccessoryButton

- (void)_reloadBackgroundImage
{
  v3 = [(_UITableCellAccessoryButton *)self backgroundImageProvider];
  v4 = (v3)[2](v3, self->_accessoryTintColor);

  [(UIButton *)self setBackgroundImage:v4 forStates:0];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = _UITableCellAccessoryButton;
  [(UIView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(_UITableCellAccessoryButton *)self _reloadBackgroundImage];
}

- (_UITableCellAccessoryButton)initWithFrame:(CGRect)a3 backgroundImageProvider:(id)a4 accessoryType:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = _UITableCellAccessoryButton;
  v13 = [(UIButton *)&v16 initWithFrame:x, y, width, height];
  if (v13)
  {
    if (!v12)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:v13 file:@"UICollectionTableSharedSupport.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"backgroundImageProvider != NULL"}];
    }

    [(_UITableCellAccessoryButton *)v13 setBackgroundImageProvider:v12];
    [(UIView *)v13 setOpaque:0];
    [(UIView *)v13 setUserInteractionEnabled:0];
    v13->_accessoryType = a5;
    [(_UITableCellAccessoryButton *)v13 _reloadBackgroundImage];
  }

  return v13;
}

- (void)setAccessoryTintColor:(id)a3
{
  v5 = a3;
  if (![(UIColor *)self->_accessoryTintColor isEqual:?])
  {
    objc_storeStrong(&self->_accessoryTintColor, a3);
    [(_UITableCellAccessoryButton *)self _reloadBackgroundImage];
  }
}

- (id)_backgroundImageView
{
  v2 = [(UIButton *)self _backgroundView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end