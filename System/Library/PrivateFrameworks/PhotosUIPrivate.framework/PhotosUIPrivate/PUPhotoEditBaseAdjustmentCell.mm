@interface PUPhotoEditBaseAdjustmentCell
- (PUPhotoEditBaseAdjustmentCell)initWithCoder:(id)a3;
- (PUPhotoEditBaseAdjustmentCell)initWithFrame:(CGRect)a3;
- (double)defaultValue;
- (double)identityValue;
- (double)maxValue;
- (double)minValue;
- (double)value;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_setupContainerButton;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)resetToDefault;
- (void)setDefaultValue:(double)a3;
- (void)setIdentityValue:(double)a3;
- (void)setMaxValue:(double)a3;
- (void)setMinValue:(double)a3;
- (void)setSelected:(BOOL)a3;
- (void)setValue:(double)a3;
@end

@implementation PUPhotoEditBaseAdjustmentCell

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
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

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = PUPhotoEditBaseAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v7 setSelected:?];
  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  v6 = [v5 alwaysShowValueWhenAdjustmentIsSelected];

  [(PUPhotoEditBaseAdjustmentCell *)self setIsUserModifying:v3 & v6];
}

- (double)maxValue
{
  v2 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v2 maxValue];
  v4 = v3;

  return v4;
}

- (void)setMaxValue:(double)a3
{
  v4 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setMaxValue:a3];
}

- (double)minValue
{
  v2 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v2 minValue];
  v4 = v3;

  return v4;
}

- (void)setMinValue:(double)a3
{
  v4 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setMinValue:a3];
}

- (double)identityValue
{
  v2 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v2 identityValue];
  v4 = v3;

  return v4;
}

- (void)setIdentityValue:(double)a3
{
  v4 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setIdentityValue:a3];
}

- (double)defaultValue
{
  v2 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v2 defaultValue];
  v4 = v3;

  return v4;
}

- (void)setDefaultValue:(double)a3
{
  v4 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setDefaultValue:a3];
}

- (double)value
{
  v2 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v2 value];
  v4 = v3;

  return v4;
}

- (void)setValue:(double)a3
{
  v4 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setValue:a3];
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
  v11 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PUPhotoEditBaseAdjustmentCell;
  [(PUPhotoEditBaseAdjustmentCell *)&v5 prepareForReuse];
  v3 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v3 resetToDefaults];

  v4 = [(PUPhotoEditBaseAdjustmentCell *)self containerButton];
  [v4 setUserInteractionEnabled:0];

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
  v9 = [(PUPhotoEditBaseAdjustmentCell *)self contentView];
  [v9 addSubview:self->_containerButton];
}

- (PUPhotoEditBaseAdjustmentCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditBaseAdjustmentCell;
  v3 = [(PUPhotoEditBaseAdjustmentCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    commonInit_39190(v3);
  }

  return v4;
}

- (PUPhotoEditBaseAdjustmentCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditBaseAdjustmentCell;
  v3 = [(PUPhotoEditBaseAdjustmentCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    commonInit_39190(v3);
  }

  return v4;
}

@end