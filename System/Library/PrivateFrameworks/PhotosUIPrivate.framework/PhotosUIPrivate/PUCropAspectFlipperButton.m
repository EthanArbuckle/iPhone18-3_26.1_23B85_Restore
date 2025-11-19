@interface PUCropAspectFlipperButton
- (PUCropAspectFlipperButton)init;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation PUCropAspectFlipperButton

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUCropAspectFlipperButton;
  [(PUCropAspectFlipperButton *)&v4 setEnabled:a3];
  [(PUCropAspectFlipperButton *)self setNeedsLayout];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUCropAspectFlipperButton;
  [(PUCropAspectFlipperButton *)&v4 setSelected:a3];
  [(PUCropAspectFlipperButton *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  if (!self->_pageLayer)
  {
    [(PUCropAspectFlipperButton *)self orientation];
    v3 = objc_alloc_init(MEMORY[0x1E6979398]);
    pageLayer = self->_pageLayer;
    self->_pageLayer = v3;

    [(CALayer *)self->_pageLayer setCornerRadius:4.0];
    PXRectWithCenterAndSize();
    [(CALayer *)self->_pageLayer setBounds:?];
    [(PUCropAspectFlipperButton *)self bounds];
    v6 = v5 * 0.5;
    [(PUCropAspectFlipperButton *)self bounds];
    [(CALayer *)self->_pageLayer setPosition:v6, v7 * 0.5];
    [(CALayer *)self->_pageLayer setBorderWidth:2.0];
    v8 = [(PUCropAspectFlipperButton *)self layer];
    [v8 addSublayer:self->_pageLayer];
  }

  if (!self->_selectionCheckboxLayer)
  {
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
    v10 = objc_alloc_init(MEMORY[0x1E6979398]);
    selectionCheckboxLayer = self->_selectionCheckboxLayer;
    self->_selectionCheckboxLayer = v10;

    -[CALayer setContents:](self->_selectionCheckboxLayer, "setContents:", [v9 CGImage]);
    PXRectWithCenterAndSize();
    [(CALayer *)self->_selectionCheckboxLayer setBounds:?];
  }

  if ([(PUCropAspectFlipperButton *)self isEnabled])
  {
    v12 = [MEMORY[0x1E69DC888] systemGrayColor];
    -[CALayer setBackgroundColor:](self->_pageLayer, "setBackgroundColor:", [v12 CGColor]);

    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    v13 = [MEMORY[0x1E69DC888] systemGray5Color];
    -[CALayer setBackgroundColor:](self->_pageLayer, "setBackgroundColor:", [v13 CGColor]);

    [MEMORY[0x1E69DC888] systemGray3Color];
  }
  v14 = ;
  -[CALayer setBorderColor:](self->_pageLayer, "setBorderColor:", [v14 CGColor]);

  if ([(PUCropAspectFlipperButton *)self isSelected]&& [(PUCropAspectFlipperButton *)self isEnabled])
  {
    v15 = [(CALayer *)self->_selectionCheckboxLayer superlayer];

    if (!v15)
    {
      v16 = self->_pageLayer;
      v17 = self->_selectionCheckboxLayer;

      [(CALayer *)v16 addSublayer:v17];
    }
  }

  else
  {
    v18 = [(CALayer *)self->_selectionCheckboxLayer superlayer];

    if (v18)
    {
      v19 = self->_selectionCheckboxLayer;

      [(CALayer *)v19 removeFromSuperlayer];
    }
  }
}

- (PUCropAspectFlipperButton)init
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = PUCropAspectFlipperButton;
  v2 = [(PUCropAspectFlipperButton *)&v6 init];
  if (v2)
  {
    v7[0] = objc_opt_class();
    v7[1] = objc_opt_class();
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
    v4 = [(PUCropAspectFlipperButton *)v2 registerForTraitChanges:v3 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v2;
}

@end