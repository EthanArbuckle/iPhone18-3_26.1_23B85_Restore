@interface _UICollectionViewListAccessoryDisclosure
- (CGSize)_minimumSizeForHitTesting;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UICollectionViewListAccessoryDisclosure)initWithConstants:(id)a3 handlesOwnAction:(BOOL)a4;
- (double)_enforcedWidthForWidth:(double)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)_executeActionHandler;
- (void)_updateRotation;
- (void)forcedSelectionOfMenu:(id)a3 willChangeTo:(id)a4;
- (void)layoutSubviews;
- (void)setAccessoryTintColor:(id)a3;
- (void)setAccessoryUsesMonochromaticTreatment:(BOOL)a3;
- (void)setActionHandler:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setMenu:(id)a3;
@end

@implementation _UICollectionViewListAccessoryDisclosure

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = _UICollectionViewListAccessoryDisclosure;
  [(UIView *)&v21 layoutSubviews];
  v3 = [(UIImageView *)self->_imageView _currentImage];
  [v3 size];
  v5 = v4;
  v7 = v6;

  [(UIImageView *)self->_imageView setBounds:0.0, 0.0, v5, v7];
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIView *)self _currentScreenScale];
  v17 = UIRectCenteredIntegralRectScale(0.0, 0.0, v5, v7, v9, v11, v13, v15, v16);
  [(UIImageView *)self->_imageView setCenter:v17 + v18 * 0.5, v20 + v19 * 0.5];
}

- (CGSize)_minimumSizeForHitTesting
{
  v2 = [(UIView *)self isUserInteractionEnabled];
  v3 = 44.0;
  v4 = *(MEMORY[0x1E695F060] + 8);
  if (v2)
  {
    v4 = 44.0;
  }

  else
  {
    v3 = *MEMORY[0x1E695F060];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_updateRotation
{
  v3 = [(UIView *)self _shouldReverseLayoutDirection];
  rotationAngle = self->_rotationAngle;
  if (v3)
  {
    rotationAngle = -rotationAngle;
  }

  if (!self->_rotated)
  {
    rotationAngle = 0.0;
  }

  CGAffineTransformMakeRotation(&v7, rotationAngle);
  imageView = self->_imageView;
  v6 = v7;
  [(UIView *)imageView setTransform:&v6];
}

- (_UICollectionViewListAccessoryDisclosure)initWithConstants:(id)a3 handlesOwnAction:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _UICollectionViewListAccessoryDisclosure;
  v7 = [(UIControl *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    [(UIView *)v7 setOpaque:0];
    objc_storeStrong(&v8->_constants, a3);
    v9 = objc_alloc_init(UIImageView);
    imageView = v8->_imageView;
    v8->_imageView = v9;

    [(UIView *)v8 addSubview:v8->_imageView];
  }

  return v8;
}

- (void)setActionHandler:(id)a3
{
  actionHandler = self->_actionHandler;
  v6 = [a3 copy];
  v7 = self->_actionHandler;
  self->_actionHandler = v6;

  if (!a3 || actionHandler)
  {
    if (!a3 && actionHandler)
    {

      [(UIControl *)self removeTarget:self action:sel__executeActionHandler forControlEvents:0x2000];
    }
  }

  else
  {

    [(UIControl *)self addTarget:self action:sel__executeActionHandler forControlEvents:0x2000];
  }
}

- (void)_executeActionHandler
{
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    actionHandler[2]();
  }
}

- (void)setAccessoryTintColor:(id)a3
{
  objc_storeStrong(&self->_accessoryTintColor, a3);
  v5 = a3;
  [(UIView *)self->_imageView setTintColor:v5];
}

- (void)setAccessoryUsesMonochromaticTreatment:(BOOL)a3
{
  if (self->_accessoryUsesMonochromaticTreatment != a3)
  {
    v4 = a3;
    self->_accessoryUsesMonochromaticTreatment = a3;
    if (a3)
    {
      [(UIView *)self _setMonochromaticTreatment:1];
    }

    [(UIView *)self _setEnableMonochromaticTreatment:v4];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  [(UITableConstants *)self->_constants defaultDisclosureLayoutWidthForView:self, a3.width];
  v6 = v5;
  [(_UICollectionViewListAccessoryDisclosure *)self _minimumSizeForHitTesting];
  if (height >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = height;
  }

  if (v6 >= v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  v10 = v6;
  result.height = v9;
  result.width = v10;
  return result;
}

- (double)_enforcedWidthForWidth:(double)a3
{
  [(_UICollectionViewListAccessoryDisclosure *)self _minimumSizeForHitTesting];
  if (result <= a3)
  {
    return a3;
  }

  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a3.size.width > 0.0)
  {
    [(_UICollectionViewListAccessoryDisclosure *)self _enforcedWidthForWidth:a3.size.width];
    v9 = v8;
    v10 = x + (width - v8) * 0.5;
    [(UIView *)self _currentScreenScale];
    x = UIRectIntegralWithScale(v10, y + (height - height) * 0.5, v9, height, v11);
    y = v12;
    width = v13;
    height = v14;
  }

  v15.receiver = self;
  v15.super_class = _UICollectionViewListAccessoryDisclosure;
  [(UIView *)&v15 setFrame:x, y, width, height];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_UICollectionViewListAccessoryDisclosure *)self _enforcedWidthForWidth:a3.size.width];
  v8.receiver = self;
  v8.super_class = _UICollectionViewListAccessoryDisclosure;
  [(UIView *)&v8 setBounds:x, y, v7, height];
}

- (void)setMenu:(id)a3
{
  v4 = a3;
  menu = self->_menu;
  if (menu != v4)
  {
    v10 = v4;
    v6 = v4;
    v7 = self->_menu;
    self->_menu = v6;
    v8 = menu;

    v9 = [(UIControl *)self contextMenuInteraction];
    _UIControlMenuUpdateVisibleMenu(v9, v8, v6);

    [(UIMenu *)v6 setForcedAutomaticSelectionDelegate:self];
    [(UIMenu *)v6 setForceAutomaticSelection:1];

    [(UIControl *)self setContextMenuInteractionEnabled:v6 != 0];
    v4 = v10;
  }
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v4 = self->_menu;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98___UICollectionViewListAccessoryDisclosure_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v8[3] = &unk_1E70F6A70;
  v9 = v4;
  v5 = v4;
  v6 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v8];

  return v6;
}

- (void)forcedSelectionOfMenu:(id)a3 willChangeTo:(id)a4
{
  selectedElementDidChangeHandler = self->_selectedElementDidChangeHandler;
  if (selectedElementDidChangeHandler)
  {
    v5 = [a3 copy];
    selectedElementDidChangeHandler[2](selectedElementDidChangeHandler, v5);
  }
}

@end