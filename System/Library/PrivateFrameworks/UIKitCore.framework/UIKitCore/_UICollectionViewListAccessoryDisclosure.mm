@interface _UICollectionViewListAccessoryDisclosure
- (CGSize)_minimumSizeForHitTesting;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UICollectionViewListAccessoryDisclosure)initWithConstants:(id)constants handlesOwnAction:(BOOL)action;
- (double)_enforcedWidthForWidth:(double)width;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)_executeActionHandler;
- (void)_updateRotation;
- (void)forcedSelectionOfMenu:(id)menu willChangeTo:(id)to;
- (void)layoutSubviews;
- (void)setAccessoryTintColor:(id)color;
- (void)setAccessoryUsesMonochromaticTreatment:(BOOL)treatment;
- (void)setActionHandler:(id)handler;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setMenu:(id)menu;
@end

@implementation _UICollectionViewListAccessoryDisclosure

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = _UICollectionViewListAccessoryDisclosure;
  [(UIView *)&v21 layoutSubviews];
  _currentImage = [(UIImageView *)self->_imageView _currentImage];
  [_currentImage size];
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
  isUserInteractionEnabled = [(UIView *)self isUserInteractionEnabled];
  v3 = 44.0;
  v4 = *(MEMORY[0x1E695F060] + 8);
  if (isUserInteractionEnabled)
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
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  rotationAngle = self->_rotationAngle;
  if (_shouldReverseLayoutDirection)
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

- (_UICollectionViewListAccessoryDisclosure)initWithConstants:(id)constants handlesOwnAction:(BOOL)action
{
  constantsCopy = constants;
  v12.receiver = self;
  v12.super_class = _UICollectionViewListAccessoryDisclosure;
  v7 = [(UIControl *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    [(UIView *)v7 setOpaque:0];
    objc_storeStrong(&v8->_constants, constants);
    v9 = objc_alloc_init(UIImageView);
    imageView = v8->_imageView;
    v8->_imageView = v9;

    [(UIView *)v8 addSubview:v8->_imageView];
  }

  return v8;
}

- (void)setActionHandler:(id)handler
{
  actionHandler = self->_actionHandler;
  v6 = [handler copy];
  v7 = self->_actionHandler;
  self->_actionHandler = v6;

  if (!handler || actionHandler)
  {
    if (!handler && actionHandler)
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

- (void)setAccessoryTintColor:(id)color
{
  objc_storeStrong(&self->_accessoryTintColor, color);
  colorCopy = color;
  [(UIView *)self->_imageView setTintColor:colorCopy];
}

- (void)setAccessoryUsesMonochromaticTreatment:(BOOL)treatment
{
  if (self->_accessoryUsesMonochromaticTreatment != treatment)
  {
    treatmentCopy = treatment;
    self->_accessoryUsesMonochromaticTreatment = treatment;
    if (treatment)
    {
      [(UIView *)self _setMonochromaticTreatment:1];
    }

    [(UIView *)self _setEnableMonochromaticTreatment:treatmentCopy];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  [(UITableConstants *)self->_constants defaultDisclosureLayoutWidthForView:self, fits.width];
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

- (double)_enforcedWidthForWidth:(double)width
{
  [(_UICollectionViewListAccessoryDisclosure *)self _minimumSizeForHitTesting];
  if (result <= width)
  {
    return width;
  }

  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (frame.size.width > 0.0)
  {
    [(_UICollectionViewListAccessoryDisclosure *)self _enforcedWidthForWidth:frame.size.width];
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(_UICollectionViewListAccessoryDisclosure *)self _enforcedWidthForWidth:bounds.size.width];
  v8.receiver = self;
  v8.super_class = _UICollectionViewListAccessoryDisclosure;
  [(UIView *)&v8 setBounds:x, y, v7, height];
}

- (void)setMenu:(id)menu
{
  menuCopy = menu;
  menu = self->_menu;
  if (menu != menuCopy)
  {
    v10 = menuCopy;
    v6 = menuCopy;
    v7 = self->_menu;
    self->_menu = v6;
    menuCopy2 = menu;

    contextMenuInteraction = [(UIControl *)self contextMenuInteraction];
    _UIControlMenuUpdateVisibleMenu(contextMenuInteraction, menuCopy2, v6);

    [(UIMenu *)v6 setForcedAutomaticSelectionDelegate:self];
    [(UIMenu *)v6 setForceAutomaticSelection:1];

    [(UIControl *)self setContextMenuInteractionEnabled:v6 != 0];
    menuCopy = v10;
  }
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
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

- (void)forcedSelectionOfMenu:(id)menu willChangeTo:(id)to
{
  selectedElementDidChangeHandler = self->_selectedElementDidChangeHandler;
  if (selectedElementDidChangeHandler)
  {
    v5 = [menu copy];
    selectedElementDidChangeHandler[2](selectedElementDidChangeHandler, v5);
  }
}

@end