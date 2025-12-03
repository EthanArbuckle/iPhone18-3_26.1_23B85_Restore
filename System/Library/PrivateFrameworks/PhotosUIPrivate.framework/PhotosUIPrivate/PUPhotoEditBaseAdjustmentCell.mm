@interface PUPhotoEditBaseAdjustmentCell
- (PUPhotoEditBaseAdjustmentCell)initWithCoder:(id)coder;
- (PUPhotoEditBaseAdjustmentCell)initWithFrame:(CGRect)frame;
- (double)defaultValue;
- (double)identityValue;
- (double)maxValue;
- (double)minValue;
- (double)value;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_setupContainerButton;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)resetToDefault;
- (void)setDefaultValue:(double)value;
- (void)setIdentityValue:(double)value;
- (void)setMaxValue:(double)value;
- (void)setMinValue:(double)value;
- (void)setSelected:(BOOL)selected;
- (void)setValue:(double)value;
@end

@implementation PUPhotoEditBaseAdjustmentCell

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v6 = [MEMORY[0x1E69DCDA0] effectWithPreview:v5];
  PXEdgeInsetsMake();
  [(PUPhotoEditBaseAdjustmentCell *)self frame];
  PXEdgeInsetsInsetRect();
  v7 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:? cornerRadius:?];
  v8 = [MEMORY[0x1E69DCDD0] styleWithEffect:v6 shape:v7];

  return v8;
}

- (void)resetToDefault
{
  [(PUPhotoEditBaseAdjustmentCell *)self defaultValue];

  [(PUPhotoEditBaseAdjustmentCell *)self setValue:?];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = PUPhotoEditBaseAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v7 setSelected:?];
  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  alwaysShowValueWhenAdjustmentIsSelected = [v5 alwaysShowValueWhenAdjustmentIsSelected];

  [(PUPhotoEditBaseAdjustmentCell *)self setIsUserModifying:selectedCopy & alwaysShowValueWhenAdjustmentIsSelected];
}

- (double)maxValue
{
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton maxValue];
  v4 = v3;

  return v4;
}

- (void)setMaxValue:(double)value
{
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setMaxValue:value];
}

- (double)minValue
{
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton minValue];
  v4 = v3;

  return v4;
}

- (void)setMinValue:(double)value
{
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setMinValue:value];
}

- (double)identityValue
{
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton identityValue];
  v4 = v3;

  return v4;
}

- (void)setIdentityValue:(double)value
{
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setIdentityValue:value];
}

- (double)defaultValue
{
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton defaultValue];
  v4 = v3;

  return v4;
}

- (void)setDefaultValue:(double)value
{
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setDefaultValue:value];
}

- (double)value
{
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton value];
  v4 = v3;

  return v4;
}

- (void)setValue:(double)value
{
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setValue:value];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PUPhotoEditBaseAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v12 layoutSubviews];
  [(PUPhotoEditBaseAdjustmentCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton setFrame:{v4, v6, v8, v10}];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PUPhotoEditBaseAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v5 prepareForReuse];
  containerButton = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton resetToDefaults];

  containerButton2 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [containerButton2 setUserInteractionEnabled:0];

  [(PUPhotoEditBaseAdjustmentCell *)self setIsUserModifying:0];
  [(PUPhotoEditBaseAdjustmentCell *)self setImageTransformBlock:0];
}

- (void)_setupContainerButton
{
  [(PUPhotoEditBaseAdjustmentCell *)self bounds];
  v7 = [[PUPhotoEditAdjustmentControl alloc] initWithFrame:v3, v4, v5, v6];
  containerButton = self->_containerButton;
  self->_containerButton = v7;

  [(PUPhotoEditAdjustmentControl *)self->_containerButton setUserInteractionEnabled:0];
  contentView = [(PUPhotoEditBaseAdjustmentCell *)self contentView];
  [contentView addSubview:self->_containerButton];
}

- (PUPhotoEditBaseAdjustmentCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditBaseAdjustmentCell;
  v3 = [(PUPhotoEditBaseAdjustmentCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    commonInit_39190(v3);
  }

  return v4;
}

- (PUPhotoEditBaseAdjustmentCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditBaseAdjustmentCell;
  v3 = [(PUPhotoEditBaseAdjustmentCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    commonInit_39190(v3);
  }

  return v4;
}

@end