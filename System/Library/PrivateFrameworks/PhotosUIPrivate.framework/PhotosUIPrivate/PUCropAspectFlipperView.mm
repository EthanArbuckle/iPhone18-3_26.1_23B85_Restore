@interface PUCropAspectFlipperView
- (PUCropAspectFlipperView)initWithLayoutOrientation:(int64_t)orientation;
- (PUCropAspectViewControllerDelegate)delegate;
- (void)aspectRatioButtonPressed:(id)pressed;
- (void)setAspectRatioOrientation:(int64_t)orientation;
- (void)setEnabled:(BOOL)enabled;
- (void)setLayoutOrientation:(int64_t)orientation;
@end

@implementation PUCropAspectFlipperView

- (PUCropAspectViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_enabled = enabled;
  [(UIButton *)self->_verticalAspectButton setEnabled:?];
  horizontalAspectButton = self->_horizontalAspectButton;

  [(UIButton *)horizontalAspectButton setEnabled:enabledCopy];
}

- (void)aspectRatioButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  if (([(UIButton *)pressedCopy isSelected]& 1) == 0)
  {
    [(PUCropAspectFlipperView *)self setAspectRatioOrientation:self->_horizontalAspectButton != pressedCopy];
    delegate = [(PUCropAspectFlipperView *)self delegate];
    [delegate cropAspectFlipperView:self cropOrientationSelected:{-[PUCropAspectFlipperView aspectRatioOrientation](self, "aspectRatioOrientation")}];
  }
}

- (void)setAspectRatioOrientation:(int64_t)orientation
{
  self->_aspectRatioOrientation = orientation;
  [(UIButton *)self->_verticalAspectButton setSelected:orientation == 1];
  horizontalAspectButton = self->_horizontalAspectButton;

  [(UIButton *)horizontalAspectButton setSelected:orientation == 0];
}

- (void)setLayoutOrientation:(int64_t)orientation
{
  if (self->_layoutOrientation != orientation)
  {
    if (self->_layoutConstraints)
    {
      [(PUCropAspectFlipperView *)self removeConstraints:?];
      layoutConstraints = self->_layoutConstraints;
      self->_layoutConstraints = 0;
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    selfCopy = self;
    verticalAspectButton = selfCopy->_verticalAspectButton;
    if (orientation)
    {
      topAnchor = [(UIButton *)verticalAspectButton topAnchor];
      topAnchor2 = [(PUCropAspectFlipperView *)selfCopy topAnchor];
      v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
      [(NSArray *)v6 addObject:v10];

      topAnchor3 = [(UIButton *)selfCopy->_horizontalAspectButton topAnchor];
      bottomAnchor = [(UIButton *)selfCopy->_verticalAspectButton bottomAnchor];
      v13 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:10.0];
      [(NSArray *)v6 addObject:v13];

      bottomAnchor2 = [(UIButton *)selfCopy->_horizontalAspectButton bottomAnchor];
      bottomAnchor3 = [(PUCropAspectFlipperView *)selfCopy bottomAnchor];
      v16 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-10.0];
      [(NSArray *)v6 addObject:v16];

      leftAnchor = [(UIButton *)selfCopy->_verticalAspectButton leftAnchor];
      leftAnchor2 = [(PUCropAspectFlipperView *)selfCopy leftAnchor];
      v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:10.0];
      [(NSArray *)v6 addObject:v19];

      rightAnchor = [(UIButton *)selfCopy->_verticalAspectButton rightAnchor];
      rightAnchor2 = [(PUCropAspectFlipperView *)selfCopy rightAnchor];
      v22 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-10.0];
      [(NSArray *)v6 addObject:v22];

      centerXAnchor = [(UIButton *)selfCopy->_horizontalAspectButton centerXAnchor];
      [(UIButton *)selfCopy->_verticalAspectButton centerXAnchor];
    }

    else
    {
      leftAnchor3 = [(UIButton *)verticalAspectButton leftAnchor];
      leftAnchor4 = [(PUCropAspectFlipperView *)selfCopy leftAnchor];
      v26 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:10.0];
      [(NSArray *)v6 addObject:v26];

      leftAnchor5 = [(UIButton *)selfCopy->_horizontalAspectButton leftAnchor];
      rightAnchor3 = [(UIButton *)selfCopy->_verticalAspectButton rightAnchor];
      v29 = [leftAnchor5 constraintEqualToAnchor:rightAnchor3 constant:10.0];
      [(NSArray *)v6 addObject:v29];

      rightAnchor4 = [(UIButton *)selfCopy->_horizontalAspectButton rightAnchor];
      rightAnchor5 = [(PUCropAspectFlipperView *)selfCopy rightAnchor];
      v32 = [rightAnchor4 constraintEqualToAnchor:rightAnchor5 constant:-10.0];
      [(NSArray *)v6 addObject:v32];

      topAnchor4 = [(UIButton *)selfCopy->_verticalAspectButton topAnchor];
      topAnchor5 = [(PUCropAspectFlipperView *)selfCopy topAnchor];
      v35 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:10.0];
      [(NSArray *)v6 addObject:v35];

      bottomAnchor4 = [(UIButton *)selfCopy->_verticalAspectButton bottomAnchor];
      bottomAnchor5 = [(PUCropAspectFlipperView *)selfCopy bottomAnchor];
      v38 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-10.0];
      [(NSArray *)v6 addObject:v38];

      centerXAnchor = [(UIButton *)selfCopy->_horizontalAspectButton centerYAnchor];
      [(UIButton *)selfCopy->_verticalAspectButton centerYAnchor];
    }
    v39 = ;
    v40 = [centerXAnchor constraintEqualToAnchor:v39];
    [(NSArray *)v6 addObject:v40];

    [(PUCropAspectFlipperView *)selfCopy addConstraints:v6];
    v41 = self->_layoutConstraints;
    self->_layoutConstraints = v6;

    self->_layoutOrientation = orientation;
  }
}

- (PUCropAspectFlipperView)initWithLayoutOrientation:(int64_t)orientation
{
  v18.receiver = self;
  v18.super_class = PUCropAspectFlipperView;
  v4 = [(PUCropAspectFlipperView *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [(PUCropAspectFlipperView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(PUCropAspectFlipperView *)v6 layer];
    [layer setCornerRadius:3.0];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__PUCropAspectFlipperView_initWithLayoutOrientation___block_invoke;
    aBlock[3] = &unk_1E7B76378;
    v8 = v6;
    v17 = v8;
    v9 = _Block_copy(aBlock);
    v10 = v9[2](v9, 0);
    horizontalAspectButton = v8->_horizontalAspectButton;
    v8->_horizontalAspectButton = v10;

    v12 = v9[2](v9, 1);
    verticalAspectButton = v8->_verticalAspectButton;
    v8->_verticalAspectButton = v12;

    [(PUCropAspectFlipperView *)v8 addSubview:v8->_horizontalAspectButton];
    [(PUCropAspectFlipperView *)v8 addSubview:v8->_verticalAspectButton];
    v8->_layoutOrientation = -1;
    [(PUCropAspectFlipperView *)v8 setLayoutOrientation:orientation];
    v14 = v8;
  }

  return v5;
}

PUCropAspectFlipperButton *__53__PUCropAspectFlipperView_initWithLayoutOrientation___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(PUCropAspectFlipperButton);
  [(PUCropAspectFlipperButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(PUCropAspectFlipperButton *)v4 widthAnchor];
  v6 = [v5 constraintEqualToConstant:31.0];
  [v6 setActive:1];

  v7 = [(PUCropAspectFlipperButton *)v4 heightAnchor];
  v8 = [v7 constraintEqualToConstant:31.0];
  [v8 setActive:1];

  [(PUCropAspectFlipperButton *)v4 addTarget:*(a1 + 32) action:sel_aspectRatioButtonPressed_ forControlEvents:1];
  [(PUCropAspectFlipperButton *)v4 setOrientation:a2];

  return v4;
}

@end