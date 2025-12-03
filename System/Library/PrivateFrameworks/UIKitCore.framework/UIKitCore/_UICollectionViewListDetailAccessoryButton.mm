@interface _UICollectionViewListDetailAccessoryButton
- (_UICollectionViewListDetailAccessoryButton)initWithConstants:(id)constants;
- (id)_renderedImage;
- (void)_executeActionHandler;
- (void)setAccessoryBackgroundColor:(id)color;
- (void)setAccessoryTintColor:(id)color;
- (void)setAccessoryUsesMonochromaticTreatment:(BOOL)treatment;
- (void)setActionHandler:(id)handler;
- (void)setConstants:(id)constants;
- (void)updateConfiguration;
@end

@implementation _UICollectionViewListDetailAccessoryButton

- (_UICollectionViewListDetailAccessoryButton)initWithConstants:(id)constants
{
  constantsCopy = constants;
  v11.receiver = self;
  v11.super_class = _UICollectionViewListDetailAccessoryButton;
  v6 = [(UIButton *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_constants, constants);
    v8 = +[UIButtonConfiguration filledButtonConfiguration];
    [v8 setButtonSize:1];
    defaultDetailAccessoryImage = [constantsCopy defaultDetailAccessoryImage];
    [v8 setImage:defaultDetailAccessoryImage];

    [(UIButton *)v7 setConfiguration:v8];
  }

  return v7;
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
  colorCopy = color;
  if (self->_accessoryTintColor != colorCopy)
  {
    objc_storeStrong(&self->_accessoryTintColor, color);
    v6.receiver = self;
    v6.super_class = _UICollectionViewListDetailAccessoryButton;
    [(UIButton *)&v6 setTintColor:colorCopy];
  }
}

- (void)setAccessoryBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_accessoryBackgroundColor != colorCopy)
  {
    objc_storeStrong(&self->_accessoryBackgroundColor, color);
    v6.receiver = self;
    v6.super_class = _UICollectionViewListDetailAccessoryButton;
    [(UIView *)&v6 setBackgroundColor:colorCopy];
  }
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

- (id)_renderedImage
{
  configuration = [(UIButton *)self configuration];
  image = [configuration image];

  return image;
}

- (void)setConstants:(id)constants
{
  constantsCopy = constants;
  if (self->_constants != constantsCopy)
  {
    v6 = constantsCopy;
    objc_storeStrong(&self->_constants, constants);
    [(UIButton *)self setNeedsUpdateConfiguration];
    constantsCopy = v6;
  }
}

- (void)updateConfiguration
{
  configuration = [(UIButton *)self configuration];
  defaultDetailAccessoryImage = [(UITableConstants *)self->_constants defaultDetailAccessoryImage];
  [configuration setImage:defaultDetailAccessoryImage];

  [(UIButton *)self setConfiguration:configuration];
}

@end