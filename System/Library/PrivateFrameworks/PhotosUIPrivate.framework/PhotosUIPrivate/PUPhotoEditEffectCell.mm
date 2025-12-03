@interface PUPhotoEditEffectCell
+ (id)selectionOutlineImage;
- (PUPhotoEditEffectCell)initWithFrame:(CGRect)frame;
- (id)_colorForIsSelected:(BOOL)selected;
- (void)_setSubview:(id)subview visible:(BOOL)visible animated:(BOOL)animated;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setName:(id)name;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)updateConstraints;
@end

@implementation PUPhotoEditEffectCell

- (void)_setSubview:(id)subview visible:(BOOL)visible animated:(BOOL)animated
{
  visibleCopy = visible;
  subviewCopy = subview;
  v8 = subviewCopy;
  if (visibleCopy)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (animated)
  {
    if (visibleCopy)
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
    v13 = subviewCopy;
    v14 = v9;
    [v11 animateWithDuration:v10 delay:v12 usingSpringWithDamping:0 initialSpringVelocity:0.3 options:0.0 animations:1.0 completion:v9];
  }

  else
  {
    [subviewCopy setAlpha:v9];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(PUPhotoEditEffectCell *)self isHighlighted]!= highlighted)
  {
    v6.receiver = self;
    v6.super_class = PUPhotoEditEffectCell;
    [(PUPhotoEditEffectCell *)&v6 setHighlighted:highlightedCopy];
    highlightView = [(PUPhotoEditEffectCell *)self highlightView];
    [(PUPhotoEditEffectCell *)self _setSubview:highlightView visible:highlightedCopy animated:1];
  }
}

- (id)_colorForIsSelected:(BOOL)selected
{
  v4 = +[PUInterfaceManager currentTheme];
  v5 = v4;
  if (selected)
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

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  if ([(PUPhotoEditEffectCell *)self isSelected]!= selected)
  {
    v10.receiver = self;
    v10.super_class = PUPhotoEditEffectCell;
    [(PUPhotoEditEffectCell *)&v10 setSelected:selectedCopy];
    v7 = [(PUPhotoEditEffectCell *)self _colorForIsSelected:selectedCopy];
    nameLabel = [(PUPhotoEditEffectCell *)self nameLabel];
    [nameLabel setTextColor:v7];

    selectionView = [(PUPhotoEditEffectCell *)self selectionView];
    [(PUPhotoEditEffectCell *)self _setSubview:selectionView visible:selectedCopy animated:animatedCopy];
  }
}

- (void)setName:(id)name
{
  if (self->_name != name)
  {
    nameCopy = name;
    v5 = [nameCopy copy];
    name = self->_name;
    self->_name = v5;

    nameLabel = [(PUPhotoEditEffectCell *)self nameLabel];
    [nameLabel setText:nameCopy];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_image, image);
    imageView = [(PUPhotoEditEffectCell *)self imageView];
    [imageView setImage:v7];

    imageCopy = v7;
  }
}

- (void)updateConstraints
{
  v37.receiver = self;
  v37.super_class = PUPhotoEditEffectCell;
  [(PUPhotoEditEffectCell *)&v37 updateConstraints];
  if (!self->_constraints)
  {
    contentView = [(PUPhotoEditEffectCell *)self contentView];
    imageView = [(PUPhotoEditEffectCell *)self imageView];
    v30 = objc_alloc(MEMORY[0x1E695DEC8]);
    widthAnchor = [contentView widthAnchor];
    nameLabel = [(PUPhotoEditEffectCell *)self nameLabel];
    widthAnchor2 = [nameLabel widthAnchor];
    v28 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v34 = contentView;
    widthAnchor3 = [contentView widthAnchor];
    widthAnchor4 = [imageView widthAnchor];
    v5 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    topAnchor = [contentView topAnchor];
    topAnchor2 = [imageView topAnchor];
    v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
    widthAnchor5 = [imageView widthAnchor];
    heightAnchor = [imageView heightAnchor];
    v10 = [widthAnchor5 constraintEqualToAnchor:heightAnchor multiplier:1.0 constant:0.0];
    v11 = [v30 initWithObjects:{v28, v5, v7, v10, 0}];
    constraints = self->_constraints;
    self->_constraints = v11;

    [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  }

  if (!self->_gapConstraint)
  {
    nameLabel2 = [(PUPhotoEditEffectCell *)self nameLabel];
    topAnchor3 = [nameLabel2 topAnchor];
    imageView2 = [(PUPhotoEditEffectCell *)self imageView];
    bottomAnchor = [imageView2 bottomAnchor];
    v17 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:0.0];
    gapConstraint = self->_gapConstraint;
    self->_gapConstraint = v17;

    [(NSLayoutConstraint *)self->_gapConstraint setActive:1];
  }

  if (!self->_bottomLabelConstraint)
  {
    contentView2 = [(PUPhotoEditEffectCell *)self contentView];
    bottomAnchor2 = [contentView2 bottomAnchor];
    nameLabel3 = [(PUPhotoEditEffectCell *)self nameLabel];
    bottomAnchor3 = [nameLabel3 bottomAnchor];
    v23 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    bottomLabelConstraint = self->_bottomLabelConstraint;
    self->_bottomLabelConstraint = v23;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  orientation = [currentDevice orientation];

  if ((orientation - 3) >= 2)
  {
    v27 = 5.0;
  }

  else
  {
    v27 = 0.0;
  }

  [(NSLayoutConstraint *)self->_bottomLabelConstraint setActive:(orientation - 3) < 2];
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

- (PUPhotoEditEffectCell)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = PUPhotoEditEffectCell;
  v3 = [(PUPhotoEditEffectCell *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[PUInterfaceManager currentTheme];
    v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(PUPhotoEditEffectCell *)v3 contentView];
    [contentView addSubview:v5];

    [(PUPhotoEditEffectCell *)v3 setImageView:v5];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v7 setNumberOfLines:2];
    [v7 setTextAlignment:1];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(PUPhotoEditEffectCell *)v3 _colorForIsSelected:0];
    [v7 setTextColor:v8];

    v9 = +[PUInterfaceManager currentTheme];
    photoEditingFilterTitleFont = [v9 photoEditingFilterTitleFont];
    [v7 setFont:photoEditingFilterTitleFont];

    [v7 setAdjustsFontSizeToFitWidth:0];
    [v7 setLineBreakMode:0];
    contentView2 = [(PUPhotoEditEffectCell *)v3 contentView];
    [contentView2 addSubview:v7];

    [(PUPhotoEditEffectCell *)v3 setNameLabel:v7];
    v12 = objc_alloc(MEMORY[0x1E69DD250]);
    [v5 bounds];
    v13 = [v12 initWithFrame:?];
    [v13 setAutoresizingMask:18];
    photoEditingEffectCellHighlightBackgroundColor = [v4 photoEditingEffectCellHighlightBackgroundColor];
    [v13 setBackgroundColor:photoEditingEffectCellHighlightBackgroundColor];

    [v5 addSubview:v13];
    [(PUPhotoEditEffectCell *)v3 setHighlightView:v13];
    v15 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [v5 bounds];
    v16 = [v15 initWithFrame:?];
    [v16 setAutoresizingMask:18];
    selectionOutlineImage = [objc_opt_class() selectionOutlineImage];
    [v16 setImage:selectionOutlineImage];

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
    px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [px_mainScreen scale];
    v5 = v4;
    v15.width = 7.0;
    v15.height = 7.0;
    UIGraphicsBeginImageContextWithOptions(v15, 0, v5);

    CurrentContext = UIGraphicsGetCurrentContext();
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [blackColor setStroke];

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