@interface _UICollectionViewListDetailAccessoryButton
- (_UICollectionViewListDetailAccessoryButton)initWithConstants:(id)a3;
- (id)_renderedImage;
- (void)_executeActionHandler;
- (void)setAccessoryBackgroundColor:(id)a3;
- (void)setAccessoryTintColor:(id)a3;
- (void)setAccessoryUsesMonochromaticTreatment:(BOOL)a3;
- (void)setActionHandler:(id)a3;
- (void)setConstants:(id)a3;
- (void)updateConfiguration;
@end

@implementation _UICollectionViewListDetailAccessoryButton

- (_UICollectionViewListDetailAccessoryButton)initWithConstants:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _UICollectionViewListDetailAccessoryButton;
  v6 = [(UIButton *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_constants, a3);
    v8 = +[UIButtonConfiguration filledButtonConfiguration];
    [v8 setButtonSize:1];
    v9 = [v5 defaultDetailAccessoryImage];
    [v8 setImage:v9];

    [(UIButton *)v7 setConfiguration:v8];
  }

  return v7;
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
  v5 = a3;
  if (self->_accessoryTintColor != v5)
  {
    objc_storeStrong(&self->_accessoryTintColor, a3);
    v6.receiver = self;
    v6.super_class = _UICollectionViewListDetailAccessoryButton;
    [(UIButton *)&v6 setTintColor:v5];
  }
}

- (void)setAccessoryBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_accessoryBackgroundColor != v5)
  {
    objc_storeStrong(&self->_accessoryBackgroundColor, a3);
    v6.receiver = self;
    v6.super_class = _UICollectionViewListDetailAccessoryButton;
    [(UIView *)&v6 setBackgroundColor:v5];
  }
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

- (id)_renderedImage
{
  v2 = [(UIButton *)self configuration];
  v3 = [v2 image];

  return v3;
}

- (void)setConstants:(id)a3
{
  v5 = a3;
  if (self->_constants != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_constants, a3);
    [(UIButton *)self setNeedsUpdateConfiguration];
    v5 = v6;
  }
}

- (void)updateConfiguration
{
  v4 = [(UIButton *)self configuration];
  v3 = [(UITableConstants *)self->_constants defaultDetailAccessoryImage];
  [v4 setImage:v3];

  [(UIButton *)self setConfiguration:v4];
}

@end