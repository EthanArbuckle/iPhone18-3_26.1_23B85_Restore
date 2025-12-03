@interface PUPhotoEditAdjustmentControl
- (BOOL)_setContentPropertyKey:(id)key withValue:(id)value forState:(unint64_t)state;
- (PUPhotoEditAdjustmentControl)initWithFrame:(CGRect)frame;
- (id)_contentForState:(unint64_t)state;
- (id)_currentImage;
- (id)colorForState:(unint64_t)state;
- (id)imageForState:(unint64_t)state;
- (void)_layoutImageView;
- (void)_resetAllValues;
- (void)_setContent:(id)content forState:(unint64_t)state;
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
- (void)setDefaultColor:(id)color;
- (void)setDisplayMappedValue:(BOOL)value;
- (void)setEnabled:(BOOL)enabled;
- (void)setImage:(id)image forState:(unint64_t)state;
- (void)setSelected:(BOOL)selected;
- (void)setShouldShowCircularRing:(BOOL)ring;
- (void)setShouldShowValueLabel:(BOOL)label;
- (void)setValue:(double)value;
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
    circularIndicatorView = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
    [circularIndicatorView minValue];
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
  circularIndicatorView2 = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView2 maxValue];
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

  circularIndicatorView3 = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView3 setCurrentValue:v19];

  if (![(PUPhotoEditAdjustmentControl *)self displayMappedValue])
  {
    [(PUPhotoEditAdjustmentControl *)self value];
    v19 = v21;
  }

  formatter = self->_formatter;
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  v23 = [(NSNumberFormatter *)formatter stringFromNumber:v25];
  valueLabel = [(PUPhotoEditAdjustmentControl *)self valueLabel];
  [valueLabel setText:v23];
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

  formatter = [(PUPhotoEditAdjustmentControl *)self formatter];
  [formatter setMultiplier:v3];
}

- (void)_updateSubviewColors
{
  circularIndicatorView = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView currentValue];
  v5 = v4;

  v6 = &OBJC_IVAR___PUPhotoEditAdjustmentControl__defaultColor;
  if (v5 > 0.0)
  {
    v6 = &OBJC_IVAR___PUPhotoEditAdjustmentControl__alternateColor;
  }

  v7 = *(&self->super.super.super.super.isa + *v6);
  traitCollection = [(PUPhotoEditAdjustmentControl *)self traitCollection];
  v9 = [v7 resolvedColorWithTraitCollection:traitCollection];
  circularIndicatorView2 = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView2 setRingColor:v9];

  circularIndicatorView3 = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  ringColor = [circularIndicatorView3 ringColor];
  valueLabel = [(PUPhotoEditAdjustmentControl *)self valueLabel];
  [valueLabel setTextColor:ringColor];
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

  imageView = [(PUPhotoEditAdjustmentControl *)self imageView];
  [imageView setAlpha:v3];

  if ([(PUPhotoEditAdjustmentControl *)self shouldShowValueLabel])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  valueLabel = [(PUPhotoEditAdjustmentControl *)self valueLabel];
  [valueLabel setAlpha:v5];
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

  circularIndicatorView = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView setAlpha:v3];
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

- (void)setShouldShowCircularRing:(BOOL)ring
{
  if (self->_shouldShowCircularRing != ring)
  {
    self->_shouldShowCircularRing = ring;
    [(PUPhotoEditAdjustmentControl *)self _updateRingVisibility];
  }
}

- (void)setDisplayMappedValue:(BOOL)value
{
  if (self->_displayMappedValue != value)
  {
    self->_displayMappedValue = value;
    [(PUPhotoEditAdjustmentControl *)self _updateFormatter];
  }
}

- (void)setShouldShowValueLabel:(BOOL)label
{
  if (self->_shouldShowValueLabel != label)
  {
    self->_shouldShowValueLabel = label;
    [(PUPhotoEditAdjustmentControl *)self _updateSubviewVisibility];
  }
}

- (void)setValue:(double)value
{
  if (self->_value != value)
  {
    [(PUPhotoEditAdjustmentControl *)self minValue];
    [(PUPhotoEditAdjustmentControl *)self maxValue];
    PXClamp();
    self->_value = v4;

    [(PUPhotoEditAdjustmentControl *)self _updateSubviews];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(PUPhotoEditAdjustmentControl *)self isEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = PUPhotoEditAdjustmentControl;
    [(PUPhotoEditAdjustmentControl *)&v5 setEnabled:enabledCopy];
    [(PUPhotoEditAdjustmentControl *)self setNeedsLayout];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(PUPhotoEditAdjustmentControl *)self isSelected]!= selected)
  {
    v5.receiver = self;
    v5.super_class = PUPhotoEditAdjustmentControl;
    [(PUPhotoEditAdjustmentControl *)&v5 setSelected:selectedCopy];
    [(PUPhotoEditAdjustmentControl *)self setNeedsLayout];
  }
}

- (void)setDefaultColor:(id)color
{
  colorCopy = color;
  if (self->_defaultColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_defaultColor, color);
    [(PUPhotoEditAdjustmentControl *)self _updateSubviewColors];
    colorCopy = v6;
  }
}

- (id)_currentImage
{
  state = [(PUPhotoEditAdjustmentControl *)self state];

  return [(PUPhotoEditAdjustmentControl *)self imageForState:state];
}

- (id)colorForState:(unint64_t)state
{
  v4 = [(PUPhotoEditAdjustmentControl *)self _contentForState:state];
  color = [v4 color];

  if (!color)
  {
    v6 = [(PUPhotoEditAdjustmentControl *)self _contentForState:0];
    color = [v6 color];
  }

  return color;
}

- (id)imageForState:(unint64_t)state
{
  v4 = [(PUPhotoEditAdjustmentControl *)self _contentForState:state];
  image = [v4 image];

  if (!image)
  {
    v6 = [(PUPhotoEditAdjustmentControl *)self _contentForState:0];
    image = [v6 image];
  }

  return image;
}

- (void)setImage:(id)image forState:(unint64_t)state
{
  if ([(PUPhotoEditAdjustmentControl *)self _setContentPropertyKey:@"image" withValue:image forState:state])
  {

    [(PUPhotoEditAdjustmentControl *)self _updateImageView];
  }
}

- (BOOL)_setContentPropertyKey:(id)key withValue:(id)value forState:(unint64_t)state
{
  keyCopy = key;
  valueCopy = value;
  v10 = [(PUPhotoEditAdjustmentControl *)self _contentForState:state];
  if (!v10)
  {
    v10 = objc_alloc_init(PUPhotoEditAdjustmentControlContent);
    [(PUPhotoEditAdjustmentControl *)self _setContent:v10 forState:state];
  }

  v11 = [(PUPhotoEditAdjustmentControlContent *)v10 valueForKey:keyCopy];
  if (v11 == valueCopy)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = [valueCopy isEqual:v11] ^ 1;
  }

  [(PUPhotoEditAdjustmentControlContent *)v10 setValue:valueCopy forKey:keyCopy];

  return v12;
}

- (id)_contentForState:(unint64_t)state
{
  if (self->_stateToContentMap)
  {
    stateToContentMap = [(PUPhotoEditAdjustmentControl *)self stateToContentMap];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
    v6 = [stateToContentMap objectForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setContent:(id)content forState:(unint64_t)state
{
  contentCopy = content;
  if (!self->_stateToContentMap)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    stateToContentMap = self->_stateToContentMap;
    self->_stateToContentMap = weakToStrongObjectsMapTable;
  }

  stateToContentMap = [(PUPhotoEditAdjustmentControl *)self stateToContentMap];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  if (contentCopy)
  {
    [stateToContentMap setObject:contentCopy forKey:v9];
  }

  else
  {
    [stateToContentMap removeObjectForKey:v9];
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
  circularIndicatorView = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView setFrame:{v4, v6, v8, v10}];

  [(PUPhotoEditAdjustmentControl *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  valueLabel = [(PUPhotoEditAdjustmentControl *)self valueLabel];
  [valueLabel setFrame:{v13, v15, v17, v19}];

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
    imageView = [(PUPhotoEditAdjustmentControl *)self imageView];
    [imageView setCenter:{v7, v9}];
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
  circularIndicatorView = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView resetToDefaults];

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
  circularIndicatorView = [(PUPhotoEditAdjustmentControl *)self circularIndicatorView];
  [circularIndicatorView setRingColor:defaultColor];
}

- (void)_setup
{
  v20 = +[PUInterfaceManager currentTheme];
  photoEditingAdjustmentControlDefaultColor = [v20 photoEditingAdjustmentControlDefaultColor];
  defaultColor = self->_defaultColor;
  self->_defaultColor = photoEditingAdjustmentControlDefaultColor;

  photoEditingAdjustmentControlAlternateColor = [v20 photoEditingAdjustmentControlAlternateColor];
  alternateColor = self->_alternateColor;
  self->_alternateColor = photoEditingAdjustmentControlAlternateColor;

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
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v15 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  formatter = self->_formatter;
  self->_formatter = v15;

  [(NSNumberFormatter *)self->_formatter setLocale:currentLocale];
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

- (PUPhotoEditAdjustmentControl)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditAdjustmentControl;
  v3 = [(PUPhotoEditAdjustmentControl *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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