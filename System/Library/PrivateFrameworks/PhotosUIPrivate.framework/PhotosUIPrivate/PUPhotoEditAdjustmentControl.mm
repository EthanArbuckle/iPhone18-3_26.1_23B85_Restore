@interface PUPhotoEditAdjustmentControl
- (BOOL)_setContentPropertyKey:(id)a3 withValue:(id)a4 forState:(unint64_t)a5;
- (PUPhotoEditAdjustmentControl)initWithFrame:(CGRect)a3;
- (id)_contentForState:(unint64_t)a3;
- (id)_currentImage;
- (id)colorForState:(unint64_t)a3;
- (id)imageForState:(unint64_t)a3;
- (void)_layoutImageView;
- (void)_resetAllValues;
- (void)_setContent:(id)a3 forState:(unint64_t)a4;
- (void)_setup;
- (void)_setupImageView;
- (void)_updateFormatter;
- (void)_updateImageView;
- (void)_updateRingVisibility;
- (void)_updateSubviewColors;
- (void)_updateSubviewValues;
- (void)_updateSubviewVisibility;
- (void)_updateSubviews;
- (void)layoutSubviews;
- (void)resetToDefaults;
- (void)setDefaultColor:(id)a3;
- (void)setDisplayMappedValue:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setImage:(id)a3 forState:(unint64_t)a4;
- (void)setSelected:(BOOL)a3;
- (void)setShouldShowCircularRing:(BOOL)a3;
- (void)setShouldShowValueLabel:(BOOL)a3;
- (void)setValue:(double)a3;
@end

@implementation PUPhotoEditAdjustmentControl

- (void)_updateSubviewValues
{
  [(PUPhotoEditAdjustmentControl *)self minValue];
  v4 = v3;
  [(PUPhotoEditAdjustmentControl *)self identityValue];
  v5 = 0.0;
  if (v4 < v6)
  {
    v7 = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
    [v7 minValue];
    v5 = v8;
  }

  [(PUPhotoEditAdjustmentControl *)self value];
  v10 = v9;
  [(PUPhotoEditAdjustmentControl *)self minValue];
  v12 = v11;
  [(PUPhotoEditAdjustmentControl *)self identityValue];
  v14 = v13;
  [(PUPhotoEditAdjustmentControl *)self maxValue];
  v16 = v15;
  v17 = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [v17 maxValue];
  if (v16 > v12)
  {
    if (v10 >= v14)
    {
      if (v16 > v14)
      {
        v19 = (v10 - v14) * v18 / (v16 - v14) + 0.0;
        goto LABEL_10;
      }
    }

    else if (v14 > v12)
    {
      v19 = v5 + (0.0 - v5) * (v10 - v12) / (v14 - v12);
      goto LABEL_10;
    }
  }

  v19 = 2.22507386e-308;
LABEL_10:

  if (round(v19 * 100.0) / 100.0 == 0.0)
  {
    v19 = 0.0;
  }

  v20 = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [v20 setCurrentValue:v19];

  if (![(PUPhotoEditAdjustmentControl *)self displayMappedValue])
  {
    [(PUPhotoEditAdjustmentControl *)self value];
    v19 = v21;
  }

  formatter = self->_formatter;
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  v23 = [(NSNumberFormatter *)formatter stringFromNumber:v25];
  v24 = [(PUPhotoEditAdjustmentControl *)self valueLabel];
  [v24 setText:v23];
}

- (void)_updateFormatter
{
  if ([(PUPhotoEditAdjustmentControl *)self displayMappedValue])
  {
    v3 = &unk_1F2B7EE58;
  }

  else
  {
    v3 = &unk_1F2B7EE70;
  }

  v4 = [(PUPhotoEditAdjustmentControl *)self formatter];
  [v4 setMultiplier:v3];
}

- (void)_updateSubviewColors
{
  v3 = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [v3 currentValue];
  v5 = v4;

  v6 = &OBJC_IVAR___PUPhotoEditAdjustmentControl__defaultColor;
  if (v5 > 0.0)
  {
    v6 = &OBJC_IVAR___PUPhotoEditAdjustmentControl__alternateColor;
  }

  v7 = *(&self->super.super.super.super.isa + *v6);
  v8 = [(PUPhotoEditAdjustmentControl *)self traitCollection];
  v9 = [v7 resolvedColorWithTraitCollection:v8];
  v10 = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [v10 setRingColor:v9];

  v13 = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  v11 = [v13 ringColor];
  v12 = [(PUPhotoEditAdjustmentControl *)self valueLabel];
  [v12 setTextColor:v11];
}

- (void)_updateSubviews
{
  [(PUPhotoEditAdjustmentControl *)self _updateSubviewValues];

  [(PUPhotoEditAdjustmentControl *)self _updateSubviewColors];
}

- (void)_updateSubviewVisibility
{
  if ([(PUPhotoEditAdjustmentControl *)self shouldShowValueLabel])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = [(PUPhotoEditAdjustmentControl *)self imageView];
  [v4 setAlpha:v3];

  if ([(PUPhotoEditAdjustmentControl *)self shouldShowValueLabel])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [(PUPhotoEditAdjustmentControl *)self valueLabel];
  [v6 setAlpha:v5];
}

- (void)_updateRingVisibility
{
  if ([(PUPhotoEditAdjustmentControl *)self shouldShowCircularRing])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [v4 setAlpha:v3];
}

- (void)_updateImageView
{
  v3 = [(PUPhotoEditAdjustmentControl *)self imageForState:[(PUPhotoEditAdjustmentControl *)self state]];
  v5 = v3;
  if (v3)
  {
    [(PUPhotoEditAdjustmentControl *)self _setupImageView];
    p_imageView = &self->_imageView;
    [(UIImageView *)*p_imageView setImage:v5];
    v3 = v5;
  }

  else
  {
    p_imageView = &self->_imageView;
  }

  [(UIImageView *)*p_imageView setHidden:v3 == 0];
}

- (void)setShouldShowCircularRing:(BOOL)a3
{
  if (self->_shouldShowCircularRing != a3)
  {
    self->_shouldShowCircularRing = a3;
    [(PUPhotoEditAdjustmentControl *)self _updateRingVisibility];
  }
}

- (void)setDisplayMappedValue:(BOOL)a3
{
  if (self->_displayMappedValue != a3)
  {
    self->_displayMappedValue = a3;
    [(PUPhotoEditAdjustmentControl *)self _updateFormatter];
  }
}

- (void)setShouldShowValueLabel:(BOOL)a3
{
  if (self->_shouldShowValueLabel != a3)
  {
    self->_shouldShowValueLabel = a3;
    [(PUPhotoEditAdjustmentControl *)self _updateSubviewVisibility];
  }
}

- (void)setValue:(double)a3
{
  if (self->_value != a3)
  {
    [(PUPhotoEditAdjustmentControl *)self minValue];
    [(PUPhotoEditAdjustmentControl *)self maxValue];
    PXClamp();
    self->_value = v4;

    [(PUPhotoEditAdjustmentControl *)self _updateSubviews];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(PUPhotoEditAdjustmentControl *)self isEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PUPhotoEditAdjustmentControl;
    [(PUPhotoEditAdjustmentControl *)&v5 setEnabled:v3];
    [(PUPhotoEditAdjustmentControl *)self setNeedsLayout];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(PUPhotoEditAdjustmentControl *)self isSelected]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PUPhotoEditAdjustmentControl;
    [(PUPhotoEditAdjustmentControl *)&v5 setSelected:v3];
    [(PUPhotoEditAdjustmentControl *)self setNeedsLayout];
  }
}

- (void)setDefaultColor:(id)a3
{
  v5 = a3;
  if (self->_defaultColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_defaultColor, a3);
    [(PUPhotoEditAdjustmentControl *)self _updateSubviewColors];
    v5 = v6;
  }
}

- (id)_currentImage
{
  v3 = [(PUPhotoEditAdjustmentControl *)self state];

  return [(PUPhotoEditAdjustmentControl *)self imageForState:v3];
}

- (id)colorForState:(unint64_t)a3
{
  v4 = [(PUPhotoEditAdjustmentControl *)self _contentForState:a3];
  v5 = [v4 color];

  if (!v5)
  {
    v6 = [(PUPhotoEditAdjustmentControl *)self _contentForState:0];
    v5 = [v6 color];
  }

  return v5;
}

- (id)imageForState:(unint64_t)a3
{
  v4 = [(PUPhotoEditAdjustmentControl *)self _contentForState:a3];
  v5 = [v4 image];

  if (!v5)
  {
    v6 = [(PUPhotoEditAdjustmentControl *)self _contentForState:0];
    v5 = [v6 image];
  }

  return v5;
}

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  if ([(PUPhotoEditAdjustmentControl *)self _setContentPropertyKey:@"image" withValue:a3 forState:a4])
  {

    [(PUPhotoEditAdjustmentControl *)self _updateImageView];
  }
}

- (BOOL)_setContentPropertyKey:(id)a3 withValue:(id)a4 forState:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PUPhotoEditAdjustmentControl *)self _contentForState:a5];
  if (!v10)
  {
    v10 = objc_alloc_init(PUPhotoEditAdjustmentControlContent);
    [(PUPhotoEditAdjustmentControl *)self _setContent:v10 forState:a5];
  }

  v11 = [(PUPhotoEditAdjustmentControlContent *)v10 valueForKey:v8];
  if (v11 == v9)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = [v9 isEqual:v11] ^ 1;
  }

  [(PUPhotoEditAdjustmentControlContent *)v10 setValue:v9 forKey:v8];

  return v12;
}

- (id)_contentForState:(unint64_t)a3
{
  if (self->_stateToContentMap)
  {
    v4 = [(PUPhotoEditAdjustmentControl *)self stateToContentMap];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v6 = [v4 objectForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setContent:(id)a3 forState:(unint64_t)a4
{
  v10 = a3;
  if (!self->_stateToContentMap)
  {
    v6 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    stateToContentMap = self->_stateToContentMap;
    self->_stateToContentMap = v6;
  }

  v8 = [(PUPhotoEditAdjustmentControl *)self stateToContentMap];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  if (v10)
  {
    [v8 setObject:v10 forKey:v9];
  }

  else
  {
    [v8 removeObjectForKey:v9];
  }
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = PUPhotoEditAdjustmentControl;
  [(PUPhotoEditAdjustmentControl *)&v21 layoutSubviews];
  [(PUPhotoEditAdjustmentControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(PUPhotoEditAdjustmentControl *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(PUPhotoEditAdjustmentControl *)self valueLabel];
  [v20 setFrame:{v13, v15, v17, v19}];

  [(PUPhotoEditAdjustmentControl *)self _updateImageView];
  [(PUPhotoEditAdjustmentControl *)self _layoutImageView];
  [(PUPhotoEditAdjustmentControl *)self _updateRingVisibility];
}

- (void)_layoutImageView
{
  imageView = self->_imageView;
  if (imageView && ([(UIImageView *)imageView isHidden]& 1) == 0)
  {
    [(PUPhotoEditAdjustmentControl *)self bounds];
    v5 = v4;
    [(PUPhotoEditAdjustmentControl *)self bounds];
    [(UIImageView *)self->_imageView setFrame:0.0, 0.0, v5];
    [(PUPhotoEditAdjustmentControl *)self bounds];
    PXRectGetCenter();
    v7 = v6;
    v9 = v8;
    v10 = [(PUPhotoEditAdjustmentControl *)self imageView];
    [v10 setCenter:{v7, v9}];
  }
}

- (void)_setupImageView
{
  if (!self->_imageView)
  {
    [(PUPhotoEditAdjustmentControl *)self bounds];
    v4 = v3;
    [(PUPhotoEditAdjustmentControl *)self bounds];
    v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v4, v5}];
    imageView = self->_imageView;
    self->_imageView = v6;

    [(UIImageView *)self->_imageView setUserInteractionEnabled:0];
    v8 = self->_imageView;
    valueLabel = self->_valueLabel;

    [(PUPhotoEditAdjustmentControl *)self insertSubview:v8 belowSubview:valueLabel];
  }
}

- (void)resetToDefaults
{
  v3 = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [v3 resetToDefaults];

  [(PUPhotoEditAdjustmentControl *)self _resetAllValues];
}

- (void)_resetAllValues
{
  [(PUPhotoEditAdjustmentControl *)self setValue:0.0];
  self->_minValue = -1.0;
  self->_maxValue = 1.0;
  self->_defaultValue = 0.0;
  self->_identityValue = 0.0;
  defaultColor = self->_defaultColor;
  v4 = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [v4 setRingColor:defaultColor];
}

- (void)_setup
{
  v20 = +[PUInterfaceManager currentTheme];
  v3 = [v20 photoEditingAdjustmentControlDefaultColor];
  defaultColor = self->_defaultColor;
  self->_defaultColor = v3;

  v5 = [v20 photoEditingAdjustmentControlAlternateColor];
  alternateColor = self->_alternateColor;
  self->_alternateColor = v5;

  v7 = [PUPhotoEditCircularIndicatorView alloc];
  [(PUPhotoEditAdjustmentControl *)self bounds];
  v8 = [(PUPhotoEditCircularIndicatorView *)v7 initWithFrame:?];
  circularIndicatorView = self->_circularIndicatorView;
  self->_circularIndicatorView = v8;

  [(PUPhotoEditCircularIndicatorView *)self->_circularIndicatorView setRingColor:self->_defaultColor];
  [(PUPhotoEditCircularIndicatorView *)self->_circularIndicatorView setUserInteractionEnabled:0];
  [(PUPhotoEditAdjustmentControl *)self addSubview:self->_circularIndicatorView];
  v10 = objc_alloc(MEMORY[0x1E69DCC10]);
  [(PUPhotoEditAdjustmentControl *)self bounds];
  v11 = [v10 initWithFrame:?];
  valueLabel = self->_valueLabel;
  self->_valueLabel = v11;

  v13 = PXMonospacedNumberFontWithSizeAndWeight();
  [(UILabel *)self->_valueLabel setFont:v13];
  [(UILabel *)self->_valueLabel setTextAlignment:1];
  [(UILabel *)self->_valueLabel setTextColor:self->_defaultColor];
  v14 = [MEMORY[0x1E695DF58] currentLocale];
  v15 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  formatter = self->_formatter;
  self->_formatter = v15;

  [(NSNumberFormatter *)self->_formatter setLocale:v14];
  [(NSNumberFormatter *)self->_formatter setMultiplier:&unk_1F2B7EE58];
  [(NSNumberFormatter *)self->_formatter setRoundingMode:4];
  v17 = self->_formatter;
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_value];
  v19 = [(NSNumberFormatter *)v17 stringFromNumber:v18];
  [(UILabel *)self->_valueLabel setText:v19];

  [(UILabel *)self->_valueLabel setAlpha:0.0];
  [(PUPhotoEditAdjustmentControl *)self addSubview:self->_valueLabel];
  self->_shouldShowCircularRing = 1;
  self->_shouldScaleDownImage = 1;
  self->_displayMappedValue = 1;
}

- (PUPhotoEditAdjustmentControl)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditAdjustmentControl;
  v3 = [(PUPhotoEditAdjustmentControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_minValue = -1.0;
    v3->_maxValue = 1.0;
    v3->_value = 0.0;
    v3->_defaultValue = 0.0;
    v3->_identityValue = 0.0;
    [(PUPhotoEditAdjustmentControl *)v3 _setup];
    [(PUPhotoEditAdjustmentControl *)v4 setContentMode:3];
  }

  return v4;
}

@end