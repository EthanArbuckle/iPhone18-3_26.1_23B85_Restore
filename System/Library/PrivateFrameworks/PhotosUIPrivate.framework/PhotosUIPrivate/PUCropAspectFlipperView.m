@interface PUCropAspectFlipperView
- (PUCropAspectFlipperView)initWithLayoutOrientation:(int64_t)a3;
- (PUCropAspectViewControllerDelegate)delegate;
- (void)aspectRatioButtonPressed:(id)a3;
- (void)setAspectRatioOrientation:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setLayoutOrientation:(int64_t)a3;
@end

@implementation PUCropAspectFlipperView

- (PUCropAspectViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  self->_enabled = a3;
  [(UIButton *)self->_verticalAspectButton setEnabled:?];
  horizontalAspectButton = self->_horizontalAspectButton;

  [(UIButton *)horizontalAspectButton setEnabled:v3];
}

- (void)aspectRatioButtonPressed:(id)a3
{
  v5 = a3;
  if (([(UIButton *)v5 isSelected]& 1) == 0)
  {
    [(PUCropAspectFlipperView *)self setAspectRatioOrientation:self->_horizontalAspectButton != v5];
    v4 = [(PUCropAspectFlipperView *)self delegate];
    [v4 cropAspectFlipperView:self cropOrientationSelected:{-[PUCropAspectFlipperView aspectRatioOrientation](self, "aspectRatioOrientation")}];
  }
}

- (void)setAspectRatioOrientation:(int64_t)a3
{
  self->_aspectRatioOrientation = a3;
  [(UIButton *)self->_verticalAspectButton setSelected:a3 == 1];
  horizontalAspectButton = self->_horizontalAspectButton;

  [(UIButton *)horizontalAspectButton setSelected:a3 == 0];
}

- (void)setLayoutOrientation:(int64_t)a3
{
  if (self->_layoutOrientation != a3)
  {
    if (self->_layoutConstraints)
    {
      [(PUCropAspectFlipperView *)self removeConstraints:?];
      layoutConstraints = self->_layoutConstraints;
      self->_layoutConstraints = 0;
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42 = self;
    verticalAspectButton = v42->_verticalAspectButton;
    if (a3)
    {
      v8 = [(UIButton *)verticalAspectButton topAnchor];
      v9 = [(PUCropAspectFlipperView *)v42 topAnchor];
      v10 = [v8 constraintEqualToAnchor:v9 constant:10.0];
      [(NSArray *)v6 addObject:v10];

      v11 = [(UIButton *)v42->_horizontalAspectButton topAnchor];
      v12 = [(UIButton *)v42->_verticalAspectButton bottomAnchor];
      v13 = [v11 constraintEqualToAnchor:v12 constant:10.0];
      [(NSArray *)v6 addObject:v13];

      v14 = [(UIButton *)v42->_horizontalAspectButton bottomAnchor];
      v15 = [(PUCropAspectFlipperView *)v42 bottomAnchor];
      v16 = [v14 constraintEqualToAnchor:v15 constant:-10.0];
      [(NSArray *)v6 addObject:v16];

      v17 = [(UIButton *)v42->_verticalAspectButton leftAnchor];
      v18 = [(PUCropAspectFlipperView *)v42 leftAnchor];
      v19 = [v17 constraintEqualToAnchor:v18 constant:10.0];
      [(NSArray *)v6 addObject:v19];

      v20 = [(UIButton *)v42->_verticalAspectButton rightAnchor];
      v21 = [(PUCropAspectFlipperView *)v42 rightAnchor];
      v22 = [v20 constraintEqualToAnchor:v21 constant:-10.0];
      [(NSArray *)v6 addObject:v22];

      v23 = [(UIButton *)v42->_horizontalAspectButton centerXAnchor];
      [(UIButton *)v42->_verticalAspectButton centerXAnchor];
    }

    else
    {
      v24 = [(UIButton *)verticalAspectButton leftAnchor];
      v25 = [(PUCropAspectFlipperView *)v42 leftAnchor];
      v26 = [v24 constraintEqualToAnchor:v25 constant:10.0];
      [(NSArray *)v6 addObject:v26];

      v27 = [(UIButton *)v42->_horizontalAspectButton leftAnchor];
      v28 = [(UIButton *)v42->_verticalAspectButton rightAnchor];
      v29 = [v27 constraintEqualToAnchor:v28 constant:10.0];
      [(NSArray *)v6 addObject:v29];

      v30 = [(UIButton *)v42->_horizontalAspectButton rightAnchor];
      v31 = [(PUCropAspectFlipperView *)v42 rightAnchor];
      v32 = [v30 constraintEqualToAnchor:v31 constant:-10.0];
      [(NSArray *)v6 addObject:v32];

      v33 = [(UIButton *)v42->_verticalAspectButton topAnchor];
      v34 = [(PUCropAspectFlipperView *)v42 topAnchor];
      v35 = [v33 constraintEqualToAnchor:v34 constant:10.0];
      [(NSArray *)v6 addObject:v35];

      v36 = [(UIButton *)v42->_verticalAspectButton bottomAnchor];
      v37 = [(PUCropAspectFlipperView *)v42 bottomAnchor];
      v38 = [v36 constraintEqualToAnchor:v37 constant:-10.0];
      [(NSArray *)v6 addObject:v38];

      v23 = [(UIButton *)v42->_horizontalAspectButton centerYAnchor];
      [(UIButton *)v42->_verticalAspectButton centerYAnchor];
    }
    v39 = ;
    v40 = [v23 constraintEqualToAnchor:v39];
    [(NSArray *)v6 addObject:v40];

    [(PUCropAspectFlipperView *)v42 addConstraints:v6];
    v41 = self->_layoutConstraints;
    self->_layoutConstraints = v6;

    self->_layoutOrientation = a3;
  }
}

- (PUCropAspectFlipperView)initWithLayoutOrientation:(int64_t)a3
{
  v18.receiver = self;
  v18.super_class = PUCropAspectFlipperView;
  v4 = [(PUCropAspectFlipperView *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [(PUCropAspectFlipperView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(PUCropAspectFlipperView *)v6 layer];
    [v7 setCornerRadius:3.0];

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
    [(PUCropAspectFlipperView *)v8 setLayoutOrientation:a3];
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