@interface PUPhotoEditEffectCell
+ (id)selectionOutlineImage;
- (PUPhotoEditEffectCell)initWithFrame:(CGRect)a3;
- (id)_colorForIsSelected:(BOOL)a3;
- (void)_setSubview:(id)a3 visible:(BOOL)a4 animated:(BOOL)a5;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setName:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)updateConstraints;
@end

@implementation PUPhotoEditEffectCell

- (void)_setSubview:(id)a3 visible:(BOOL)a4 animated:(BOOL)a5
{
  v6 = a4;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (a5)
  {
    if (v6)
    {
      v10 = 131078;
    }

    else
    {
      v10 = 65542;
    }

    v11 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PUPhotoEditEffectCell__setSubview_visible_animated___block_invoke;
    v12[3] = &unk_1E7B7FF70;
    v13 = v7;
    v14 = v9;
    [v11 animateWithDuration:v10 delay:v12 usingSpringWithDamping:0 initialSpringVelocity:0.3 options:0.0 animations:1.0 completion:v9];
  }

  else
  {
    [v7 setAlpha:v9];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(PUPhotoEditEffectCell *)self isHighlighted]!= a3)
  {
    v6.receiver = self;
    v6.super_class = PUPhotoEditEffectCell;
    [(PUPhotoEditEffectCell *)&v6 setHighlighted:v3];
    v5 = [(PUPhotoEditEffectCell *)self highlightView];
    [(PUPhotoEditEffectCell *)self _setSubview:v5 visible:v3 animated:1];
  }
}

- (id)_colorForIsSelected:(BOOL)a3
{
  v4 = +[PUInterfaceManager currentTheme];
  v5 = v4;
  if (a3)
  {
    [v4 photoEditingActiveFilterTitleColor];
  }

  else
  {
    [v4 photoEditingInactiveFilterTitleColor];
  }
  v6 = ;

  return v6;
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(PUPhotoEditEffectCell *)self isSelected]!= a3)
  {
    v10.receiver = self;
    v10.super_class = PUPhotoEditEffectCell;
    [(PUPhotoEditEffectCell *)&v10 setSelected:v5];
    v7 = [(PUPhotoEditEffectCell *)self _colorForIsSelected:v5];
    v8 = [(PUPhotoEditEffectCell *)self nameLabel];
    [v8 setTextColor:v7];

    v9 = [(PUPhotoEditEffectCell *)self selectionView];
    [(PUPhotoEditEffectCell *)self _setSubview:v9 visible:v5 animated:v4];
  }
}

- (void)setName:(id)a3
{
  if (self->_name != a3)
  {
    v4 = a3;
    v5 = [v4 copy];
    name = self->_name;
    self->_name = v5;

    v7 = [(PUPhotoEditEffectCell *)self nameLabel];
    [v7 setText:v4];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_image, a3);
    v6 = [(PUPhotoEditEffectCell *)self imageView];
    [v6 setImage:v7];

    v5 = v7;
  }
}

- (void)updateConstraints
{
  v37.receiver = self;
  v37.super_class = PUPhotoEditEffectCell;
  [(PUPhotoEditEffectCell *)&v37 updateConstraints];
  if (!self->_constraints)
  {
    v3 = [(PUPhotoEditEffectCell *)self contentView];
    v4 = [(PUPhotoEditEffectCell *)self imageView];
    v30 = objc_alloc(MEMORY[0x1E695DEC8]);
    v35 = [v3 widthAnchor];
    v36 = [(PUPhotoEditEffectCell *)self nameLabel];
    v33 = [v36 widthAnchor];
    v28 = [v35 constraintEqualToAnchor:v33];
    v34 = v3;
    v32 = [v3 widthAnchor];
    v31 = [v4 widthAnchor];
    v5 = [v32 constraintEqualToAnchor:v31];
    v29 = [v3 topAnchor];
    v6 = [v4 topAnchor];
    v7 = [v29 constraintEqualToAnchor:v6];
    v8 = [v4 widthAnchor];
    v9 = [v4 heightAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 multiplier:1.0 constant:0.0];
    v11 = [v30 initWithObjects:{v28, v5, v7, v10, 0}];
    constraints = self->_constraints;
    self->_constraints = v11;

    [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  }

  if (!self->_gapConstraint)
  {
    v13 = [(PUPhotoEditEffectCell *)self nameLabel];
    v14 = [v13 topAnchor];
    v15 = [(PUPhotoEditEffectCell *)self imageView];
    v16 = [v15 bottomAnchor];
    v17 = [v14 constraintEqualToAnchor:v16 constant:0.0];
    gapConstraint = self->_gapConstraint;
    self->_gapConstraint = v17;

    [(NSLayoutConstraint *)self->_gapConstraint setActive:1];
  }

  if (!self->_bottomLabelConstraint)
  {
    v19 = [(PUPhotoEditEffectCell *)self contentView];
    v20 = [v19 bottomAnchor];
    v21 = [(PUPhotoEditEffectCell *)self nameLabel];
    v22 = [v21 bottomAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    bottomLabelConstraint = self->_bottomLabelConstraint;
    self->_bottomLabelConstraint = v23;
  }

  v25 = [MEMORY[0x1E69DC938] currentDevice];
  v26 = [v25 orientation];

  if ((v26 - 3) >= 2)
  {
    v27 = 5.0;
  }

  else
  {
    v27 = 0.0;
  }

  [(NSLayoutConstraint *)self->_bottomLabelConstraint setActive:(v26 - 3) < 2];
  [(NSLayoutConstraint *)self->_gapConstraint setConstant:v27];
}

- (void)prepareForReuse
{
  [(PUPhotoEditEffectCell *)self setSelected:0 animated:0];
  [(PUPhotoEditEffectCell *)self setNeedsUpdateConstraints];
  v3.receiver = self;
  v3.super_class = PUPhotoEditEffectCell;
  [(PUPhotoEditEffectCell *)&v3 prepareForReuse];
}

- (PUPhotoEditEffectCell)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = PUPhotoEditEffectCell;
  v3 = [(PUPhotoEditEffectCell *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[PUInterfaceManager currentTheme];
    v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(PUPhotoEditEffectCell *)v3 contentView];
    [v6 addSubview:v5];

    [(PUPhotoEditEffectCell *)v3 setImageView:v5];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v7 setNumberOfLines:2];
    [v7 setTextAlignment:1];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(PUPhotoEditEffectCell *)v3 _colorForIsSelected:0];
    [v7 setTextColor:v8];

    v9 = +[PUInterfaceManager currentTheme];
    v10 = [v9 photoEditingFilterTitleFont];
    [v7 setFont:v10];

    [v7 setAdjustsFontSizeToFitWidth:0];
    [v7 setLineBreakMode:0];
    v11 = [(PUPhotoEditEffectCell *)v3 contentView];
    [v11 addSubview:v7];

    [(PUPhotoEditEffectCell *)v3 setNameLabel:v7];
    v12 = objc_alloc(MEMORY[0x1E69DD250]);
    [v5 bounds];
    v13 = [v12 initWithFrame:?];
    [v13 setAutoresizingMask:18];
    v14 = [v4 photoEditingEffectCellHighlightBackgroundColor];
    [v13 setBackgroundColor:v14];

    [v5 addSubview:v13];
    [(PUPhotoEditEffectCell *)v3 setHighlightView:v13];
    v15 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [v5 bounds];
    v16 = [v15 initWithFrame:?];
    [v16 setAutoresizingMask:18];
    v17 = [objc_opt_class() selectionOutlineImage];
    [v16 setImage:v17];

    v18 = [(PUPhotoEditEffectCell *)v3 _colorForIsSelected:1];
    [v16 setTintColor:v18];

    [v5 addSubview:v16];
    [(PUPhotoEditEffectCell *)v3 setSelectionView:v16];
    [(PUPhotoEditEffectCell *)v3 _setSubview:v13 visible:0 animated:0];
    [(PUPhotoEditEffectCell *)v3 _setSubview:v16 visible:0 animated:0];
    [(PUPhotoEditEffectCell *)v3 setNeedsUpdateConstraints];
  }

  return v3;
}

+ (id)selectionOutlineImage
{
  if (PUFiltersCellSelectionOutlineImage)
  {
    v2 = PUFiltersCellSelectionOutlineImage;
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [v3 scale];
    v5 = v4;
    v15.width = 7.0;
    v15.height = 7.0;
    UIGraphicsBeginImageContextWithOptions(v15, 0, v5);

    CurrentContext = UIGraphicsGetCurrentContext();
    v7 = [MEMORY[0x1E69DC888] blackColor];
    [v7 setStroke];

    CGContextSetLineWidth(CurrentContext, 3.0);
    v16.origin.x = 0.0;
    v16.origin.y = 0.0;
    v16.size.width = 7.0;
    v16.size.height = 7.0;
    v17 = CGRectInset(v16, 1.5, 1.5);
    CGContextStrokeRectWithWidth(CurrentContext, v17, 3.0);
    v8 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v9 = [v8 resizableImageWithCapInsets:{3.0, 3.0, 3.0, 3.0}];

    v10 = [v9 imageWithRenderingMode:2];

    v11 = PUFiltersCellSelectionOutlineImage;
    PUFiltersCellSelectionOutlineImage = v10;
    v12 = v10;

    v2 = PUFiltersCellSelectionOutlineImage;
  }

  return v2;
}

@end