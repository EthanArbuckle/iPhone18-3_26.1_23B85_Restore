@interface UISlider
- (BOOL)_deferFinalActions;
- (BOOL)_fluidTrackHidden;
- (BOOL)isTracking;
- (CGRect)maximumValueImageRectForBounds:(CGRect)bounds;
- (CGRect)minimumValueImageRectForBounds:(CGRect)bounds;
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (CGRect)valueTextRectForBounds:(CGRect)bounds;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (UIEdgeInsets)_thumbHitEdgeInsets;
- (UIEdgeInsets)alignmentRectInsets;
- (UISlider)initWithCoder:(id)coder;
- (UISlider)initWithFrame:(CGRect)frame;
- (UISliderTrackConfiguration)trackConfiguration;
- (_UISliderConfiguration)_sliderConfiguration;
- (id)_additionalTrackingViews;
- (id)description;
- (int64_t)sliderStyle;
- (unint64_t)_fluidUpdateSource;
- (void)_installVisualElement;
- (void)_installVisualElement:(id)element;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_reinstallVisualElementIfNeeded;
- (void)_setFluidTrackHidden:(BOOL)hidden;
- (void)_setMaximumEnabledValue:(float)value;
- (void)_setMinimumEnabledValue:(float)value;
- (void)_setMinimumTrackVisible:(BOOL)visible withDuration:(double)duration;
- (void)_setSliderConfiguration:(int)configuration minimumEnabledValue:(float)value maximumEnabledValue:(float)enabledValue updateMinMaxEnabledValues:;
- (void)_setSliderSpeedMultiplier:(float)multiplier;
- (void)_setSliderStyle:(int64_t)style;
- (void)_setThumbEnabled:(BOOL)enabled;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setContinuous:(BOOL)continuous;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMaximumTrackImage:(UIImage *)image forState:(UIControlState)state;
- (void)setMaximumTrackImage:(id)image forStates:(unint64_t)states;
- (void)setMaximumTrackTintColor:(UIColor *)maximumTrackTintColor;
- (void)setMaximumValue:(float)maximumValue;
- (void)setMaximumValueImage:(UIImage *)maximumValueImage;
- (void)setMinimumTrackImage:(UIImage *)image forState:(UIControlState)state;
- (void)setMinimumTrackImage:(id)image forStates:(unint64_t)states;
- (void)setMinimumTrackTintColor:(UIColor *)minimumTrackTintColor;
- (void)setMinimumValue:(float)minimumValue;
- (void)setMinimumValueImage:(UIImage *)minimumValueImage;
- (void)setPreferredBehavioralStyle:(UIBehavioralStyle)preferredBehavioralStyle;
- (void)setSelected:(BOOL)selected;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setShowValue:(BOOL)value;
- (void)setSliderStyle:(int64_t)style;
- (void)setThumbImage:(UIImage *)image forState:(UIControlState)state;
- (void)setThumbImage:(id)image forStates:(unint64_t)states;
- (void)setThumbTintColor:(UIColor *)thumbTintColor;
- (void)setTrackConfiguration:(id)configuration;
- (void)setTracking:(BOOL)tracking;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation UISlider

- (void)_installVisualElement
{
  v3 = [_UISliderFluidVisualElementFactory fluidVisualElementForStyle:self->_sliderStyle hasTrackImages:[(UISliderDataModel *)self->_data hasAnyTrackImage]];
  *&self->_visualElementFlags |= 0x100u;
  [(UISlider *)self _installVisualElement:v3];
}

- (_UISliderConfiguration)_sliderConfiguration
{
  v2 = [(_UISliderConfiguration *)self->_sliderConfiguration copyWithZone:0];

  return v2;
}

- (BOOL)isTracking
{
  if ((*&self->_visualElementFlags & 0x10) != 0)
  {
    v5 = 0;
    if ([(_UISliderVisualElement *)self->_visualElement overrideTrackingState:&v5])
    {
      return v5;
    }

    else
    {
      return [(UISliderDataModel *)self->_data isTracking];
    }
  }

  else
  {
    data = self->_data;

    return [(UISliderDataModel *)data isTracking];
  }
}

- (UISlider)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = UISlider;
  v3 = [(UIControl *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setOpaque:0];
    v5 = objc_opt_new();
    data = v4->_data;
    v4->_data = v5;

    [(UISlider *)v4 _installVisualElement];
    [(UIControl *)v4 setSymbolAnimationEnabled:1];
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      [(UIView *)v4 bounds];
      LODWORD(v8) = 0;
      [UISlider thumbRectForBounds:v4 trackRect:"thumbRectForBounds:trackRect:value:" value:v8];
    }

    [(UISlider *)v4 _registerForTraitChanges];
  }

  return v4;
}

- (UISlider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = UISlider;
  v5 = [(UIControl *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    data = v5->_data;
    v5->_data = v6;

    [(UISlider *)v5 _installVisualElement];
    [(UIControl *)v5 setSymbolAnimationEnabled:1];
    [(UISlider *)v5 _registerForTraitChanges];
    if ([coderCopy containsValueForKey:@"UIBehavioralStyle"])
    {
      v8 = [coderCopy decodeIntegerForKey:@"UIBehavioralStyle"];
    }

    else
    {
      v8 = 0;
    }

    [(UISlider *)v5 setPreferredBehavioralStyle:v8];
    [coderCopy decodeFloatForKey:@"UIMinValue"];
    [(UISliderDataModel *)v5->_data setMinimumValue:?];
    v9 = [coderCopy containsValueForKey:@"UIMaxValue"];
    LODWORD(v10) = 1.0;
    if (v9)
    {
      [coderCopy decodeFloatForKey:{@"UIMaxValue", v10}];
    }

    [(UISliderDataModel *)v5->_data setMaximumValue:v10];
    [coderCopy decodeFloatForKey:@"UIValue"];
    [(UISliderDataModel *)v5->_data setValue:?];
    [(_UISliderVisualElement *)v5->_visualElement didSetValues];
    if ([coderCopy containsValueForKey:@"UIContinuous"])
    {
      -[UISliderDataModel setContinuous:](v5->_data, "setContinuous:", [coderCopy decodeBoolForKey:@"UIContinuous"]);
      [(_UISliderVisualElement *)v5->_visualElement didSetContinuous];
    }

    v11 = [coderCopy decodeObjectForKey:@"UIMinimumValueImage"];
    if (v11)
    {
      [(UISliderDataModel *)v5->_data setMinimumValueImage:v11];
      [(_UISliderVisualElement *)v5->_visualElement didSetMinimumValueImage];
    }

    v12 = [coderCopy decodeObjectForKey:@"UIMaximumValueImage"];
    if (v12)
    {
      [(UISliderDataModel *)v5->_data setMaximumValueImage:v12];
      [(_UISliderVisualElement *)v5->_visualElement didSetMaximumValueImage];
    }

    if ([coderCopy containsValueForKey:@"UIMinimumTintColor"])
    {
      v13 = v5->_data;
      v14 = [coderCopy decodeObjectForKey:@"UIMinimumTintColor"];
      [(UISliderDataModel *)v13 setMinimumTrackTintColor:v14];

      [(_UISliderVisualElement *)v5->_visualElement didSetMinimumTrackTintColor];
    }

    if ([coderCopy containsValueForKey:@"UIMaximumTintColor"])
    {
      v15 = v5->_data;
      v16 = [coderCopy decodeObjectForKey:@"UIMaximumTintColor"];
      [(UISliderDataModel *)v15 setMaximumTrackTintColor:v16];

      [(_UISliderVisualElement *)v5->_visualElement didSetMaximumTrackTintColor];
    }

    if ([coderCopy containsValueForKey:@"UIThumbTintColor"])
    {
      v17 = v5->_data;
      v18 = [coderCopy decodeObjectForKey:@"UIThumbTintColor"];
      [(UISliderDataModel *)v17 setThumbTintColor:v18];

      [(UISlider *)v5 setThumbImage:0 forStates:7];
      [(_UISliderVisualElement *)v5->_visualElement didSetThumbTintColor];
    }
  }

  return v5;
}

- (void)_installVisualElement:(id)element
{
  v23[2] = *MEMORY[0x1E69E9840];
  elementCopy = element;
  [(_UISliderVisualElement *)self->_visualElement setSlider:0];
  [(_UISliderVisualElement *)self->_visualElement removeFromSuperview];
  objc_storeStrong(&self->_visualElement, element);
  *&self->_visualElementFlags = *&self->_visualElementFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  *&self->_visualElementFlags = *&self->_visualElementFlags & 0xFFFD | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  *&self->_visualElementFlags = *&self->_visualElementFlags & 0xFFFB | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  *&self->_visualElementFlags = *&self->_visualElementFlags & 0xFFF7 | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 16;
  }

  else
  {
    v10 = 0;
  }

  *&self->_visualElementFlags = *&self->_visualElementFlags & 0xFFEF | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 32;
  }

  else
  {
    v11 = 0;
  }

  *&self->_visualElementFlags = *&self->_visualElementFlags & 0xFFDF | v11;
  if (objc_opt_respondsToSelector())
  {
    v12 = 64;
  }

  else
  {
    v12 = 0;
  }

  *&self->_visualElementFlags = *&self->_visualElementFlags & 0xFFBF | v12;
  objc_opt_class();
  v13 = objc_opt_respondsToSelector();
  v14 = 0;
  if (v13)
  {
    if ([objc_opt_class() defersFinalActions])
    {
      v14 = 128;
    }

    else
    {
      v14 = 0;
    }
  }

  *&self->_visualElementFlags = *&self->_visualElementFlags & 0xFF7F | v14;
  [(_UISliderVisualElement *)self->_visualElement setSlider:self];
  [(_UISliderVisualElement *)self->_visualElement setSemanticContentAttribute:[(UIView *)self semanticContentAttribute]];
  if (!self->_data)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISlider.m" lineNumber:235 description:@"Installing visual element before data model has been created"];
  }

  [(_UISliderVisualElement *)self->_visualElement setData:?];
  visualElement = self->_visualElement;
  [(UIView *)self bounds];
  [(_UISliderVisualElement *)visualElement setFrame:?];
  [(_UISliderVisualElement *)self->_visualElement setAutoresizingMask:18];
  if ((dyld_program_sdk_at_least() & 1) == 0 && !self->_dummyViews)
  {
    v16 = objc_opt_new();
    v23[0] = v16;
    v17 = objc_opt_new();
    v23[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    dummyViews = self->_dummyViews;
    self->_dummyViews = v18;

    v20 = self->_dummyViews;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __34__UISlider__installVisualElement___block_invoke;
    v22[3] = &unk_1E70F3F18;
    v22[4] = self;
    [(NSArray *)v20 enumerateObjectsUsingBlock:v22];
  }

  [(UIView *)self addSubview:self->_visualElement];
}

void __34__UISlider__installVisualElement___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAutoresizingMask:18];
  [*(a1 + 32) bounds];
  [v3 setFrame:?];
  [*(a1 + 32) addSubview:v3];
}

- (void)_reinstallVisualElementIfNeeded
{
  if ((*&self->_visualElementFlags & 0x100) != 0 && [_UISliderFluidVisualElementFactory visualElement:self->_visualElement needsUpdateForStyle:self->_sliderStyle hasTrackImages:[(UISliderDataModel *)self->_data hasAnyTrackImage]])
  {

    [(UISlider *)self _installVisualElement];
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = UISlider;
  [(UIView *)&v5 setSemanticContentAttribute:?];
  [(_UISliderVisualElement *)self->_visualElement setSemanticContentAttribute:attribute];
}

- (void)_populateArchivedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v9.receiver = self;
  v9.super_class = UISlider;
  [(UIView *)&v9 _populateArchivedSubviews:subviewsCopy];
  [subviewsCopy removeObject:self->_visualElement];
  [subviewsCopy removeObject:self->_visualElement];
  dummyViews = self->_dummyViews;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__UISlider__populateArchivedSubviews___block_invoke;
  v7[3] = &unk_1E70F3F18;
  v8 = subviewsCopy;
  v6 = subviewsCopy;
  [(NSArray *)dummyViews enumerateObjectsUsingBlock:v7];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = UISlider;
  [(UIControl *)&v15 encodeWithCoder:coderCopy];
  [(UISliderDataModel *)self->_data value];
  if (v5 != 0.0)
  {
    [coderCopy encodeFloat:@"UIValue" forKey:?];
  }

  [(UISliderDataModel *)self->_data minimumValue];
  if (v6 != 0.0)
  {
    [coderCopy encodeFloat:@"UIMinValue" forKey:?];
  }

  [(UISliderDataModel *)self->_data maximumValue];
  if (v7 != 1.0)
  {
    [coderCopy encodeFloat:@"UIMaxValue" forKey:?];
  }

  if (![(UISliderDataModel *)self->_data isContinuous])
  {
    [coderCopy encodeBool:0 forKey:@"UIContinuous"];
  }

  minimumValueImage = [(UISlider *)self minimumValueImage];

  if (minimumValueImage)
  {
    minimumValueImage2 = [(UISlider *)self minimumValueImage];
    [coderCopy encodeObject:minimumValueImage2 forKey:@"UIMinimumValueImage"];
  }

  maximumValueImage = [(UISlider *)self maximumValueImage];

  if (maximumValueImage)
  {
    maximumValueImage2 = [(UISlider *)self maximumValueImage];
    [coderCopy encodeObject:maximumValueImage2 forKey:@"UIMaximumValueImage"];
  }

  minimumTrackTintColor = [(UISliderDataModel *)self->_data minimumTrackTintColor];
  if (minimumTrackTintColor)
  {
    [coderCopy encodeObject:minimumTrackTintColor forKey:@"UIMinimumTintColor"];
  }

  maximumTrackTintColor = [(UISliderDataModel *)self->_data maximumTrackTintColor];
  if (maximumTrackTintColor)
  {
    [coderCopy encodeObject:maximumTrackTintColor forKey:@"UIMaximumTintColor"];
  }

  thumbTintColor = [(UISliderDataModel *)self->_data thumbTintColor];
  if (thumbTintColor)
  {
    [coderCopy encodeObject:thumbTintColor forKey:@"UIThumbTintColor"];
  }

  [coderCopy encodeInteger:-[UISlider preferredBehavioralStyle](self forKey:{"preferredBehavioralStyle"), @"UIBehavioralStyle"}];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = UISlider;
  v3 = [(UIView *)&v7 description];
  v4 = [v3 mutableCopy];

  [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
  [(UISlider *)self value];
  [v4 appendFormat:@"; value: %f>", v5];

  return v4;
}

- (void)setThumbImage:(UIImage *)image forState:(UIControlState)state
{
  data = self->_data;
  v7 = image;
  [(UISliderDataModel *)data setThumbTintColor:0];
  [(UISliderDataModel *)self->_data setThumbImage:v7 forState:state];

  visualElement = self->_visualElement;

  [(_UISliderVisualElement *)visualElement didSetThumbImageForState:state];
}

- (void)setThumbTintColor:(UIColor *)thumbTintColor
{
  v6 = thumbTintColor;
  thumbTintColor = [(UISliderDataModel *)self->_data thumbTintColor];

  v5 = v6;
  if (thumbTintColor != v6)
  {
    [(UISliderDataModel *)self->_data setThumbTintColor:v6];
    [(UISlider *)self setThumbImage:0 forStates:7];
    [(_UISliderVisualElement *)self->_visualElement didSetThumbTintColor];
    v5 = v6;
  }
}

- (void)setMinimumTrackImage:(UIImage *)image forState:(UIControlState)state
{
  [(UISliderDataModel *)self->_data setMinimumTrackImage:image forState:?];
  [(UISlider *)self _reinstallVisualElementIfNeeded];
  visualElement = self->_visualElement;

  [(_UISliderVisualElement *)visualElement didSetMinimumTrackImageForState:state];
}

- (void)setMinimumTrackTintColor:(UIColor *)minimumTrackTintColor
{
  v6 = minimumTrackTintColor;
  minimumTrackTintColor = [(UISliderDataModel *)self->_data minimumTrackTintColor];

  v5 = v6;
  if (minimumTrackTintColor != v6)
  {
    [(UISliderDataModel *)self->_data setMinimumTrackTintColor:v6];
    [(_UISliderVisualElement *)self->_visualElement didSetMinimumTrackTintColor];
    v5 = v6;
  }
}

- (void)setMaximumTrackImage:(UIImage *)image forState:(UIControlState)state
{
  [(UISliderDataModel *)self->_data setMaximumTrackImage:image forState:?];
  [(UISlider *)self _reinstallVisualElementIfNeeded];
  visualElement = self->_visualElement;

  [(_UISliderVisualElement *)visualElement didSetMaximumTrackImageForState:state];
}

- (void)setMaximumTrackTintColor:(UIColor *)maximumTrackTintColor
{
  [(UISliderDataModel *)self->_data setMaximumTrackTintColor:maximumTrackTintColor];
  visualElement = self->_visualElement;

  [(_UISliderVisualElement *)visualElement didSetMaximumTrackTintColor];
}

- (void)setMinimumValueImage:(UIImage *)minimumValueImage
{
  v6 = minimumValueImage;
  minimumValueImage = [(UISliderDataModel *)self->_data minimumValueImage];

  v5 = v6;
  if (minimumValueImage != v6)
  {
    [(UISliderDataModel *)self->_data setMinimumValueImage:v6];
    [(_UISliderVisualElement *)self->_visualElement didSetMinimumValueImage];
    v5 = v6;
  }
}

- (void)setMaximumValueImage:(UIImage *)maximumValueImage
{
  v6 = maximumValueImage;
  maximumValueImage = [(UISliderDataModel *)self->_data maximumValueImage];

  v5 = v6;
  if (maximumValueImage != v6)
  {
    [(UISliderDataModel *)self->_data setMaximumValueImage:v6];
    [(_UISliderVisualElement *)self->_visualElement didSetMaximumValueImage];
    v5 = v6;
  }
}

- (CGRect)minimumValueImageRectForBounds:(CGRect)bounds
{
  [(_UISliderVisualElement *)self->_visualElement minimumValueImageRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)maximumValueImageRectForBounds:(CGRect)bounds
{
  [(_UISliderVisualElement *)self->_visualElement maximumValueImageRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  [(_UISliderVisualElement *)self->_visualElement trackRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
  [(_UISliderVisualElement *)self->_visualElement thumbRectForBounds:bounds.origin.x trackRect:bounds.origin.y value:bounds.size.width, bounds.size.height, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  [(_UISliderVisualElement *)self->_visualElement _intrinsicSizeWithinSize:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  viewCopy = view;
  if (self->_visualElement == viewCopy)
  {
    [(UIView *)self invalidateIntrinsicContentSize];
  }

  v5.receiver = self;
  v5.super_class = UISlider;
  [(UIView *)&v5 _intrinsicContentSizeInvalidatedForChildView:viewCopy];
}

- (UIEdgeInsets)alignmentRectInsets
{
  [(_UISliderVisualElement *)self->_visualElement alignmentRectInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UISlider;
  [(UIView *)&v3 layoutSubviews];
  [(_UISliderVisualElement *)self->_visualElement didPerformLayout];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UIView *)self isUserInteractionEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = UISlider;
    [(UIView *)&v5 setUserInteractionEnabled:enabledCopy];
    [(UISliderDataModel *)self->_data setUserInteractionEnabled:enabledCopy];
    if ((*&self->_visualElementFlags & 8) != 0)
    {
      [(_UISliderVisualElement *)self->_visualElement didSetUserInteractionEnabled];
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UIControl *)self isEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = UISlider;
    [(UIControl *)&v5 setEnabled:enabledCopy];
    [(UISliderDataModel *)self->_data setEnabled:enabledCopy];
    [(_UISliderVisualElement *)self->_visualElement didSetEnabled];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(UIControl *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = UISlider;
    [(UIControl *)&v5 setHighlighted:highlightedCopy];
    [(UISliderDataModel *)self->_data setHighlighted:highlightedCopy];
    [(_UISliderVisualElement *)self->_visualElement didSetHighlighted];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(UIControl *)self isSelected]!= selected)
  {
    v5.receiver = self;
    v5.super_class = UISlider;
    [(UIControl *)&v5 setSelected:selectedCopy];
    [(UISliderDataModel *)self->_data setSelected:selectedCopy];
    [(_UISliderVisualElement *)self->_visualElement didSetSelected];
  }
}

- (void)setContinuous:(BOOL)continuous
{
  [(UISliderDataModel *)self->_data setContinuous:continuous];
  visualElement = self->_visualElement;

  [(_UISliderVisualElement *)visualElement didSetContinuous];
}

- (void)setMinimumValue:(float)minimumValue
{
  if ([(UISliderDataModel *)self->_data setMinimumValue:?])
  {
    visualElement = self->_visualElement;

    [(_UISliderVisualElement *)visualElement didSetValues];
  }
}

- (void)setMaximumValue:(float)maximumValue
{
  if ([(UISliderDataModel *)self->_data setMaximumValue:?])
  {
    visualElement = self->_visualElement;

    [(_UISliderVisualElement *)visualElement didSetValues];
  }
}

- (void)setTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  v5.receiver = self;
  v5.super_class = UISlider;
  [(UIControl *)&v5 setTracking:?];
  [(UISliderDataModel *)self->_data setTracking:trackingCopy];
}

- (BOOL)_deferFinalActions
{
  if ((*&self->_visualElementFlags & 0x80) != 0)
  {
    return 1;
  }

  v3.receiver = self;
  v3.super_class = UISlider;
  return [(UIControl *)&v3 _deferFinalActions];
}

- (id)_additionalTrackingViews
{
  if ((*&self->_visualElementFlags & 0x40) != 0)
  {
    additionalTrackingViews = [(_UISliderVisualElement *)self->_visualElement additionalTrackingViews];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = UISlider;
    additionalTrackingViews = [(UIControl *)&v4 _additionalTrackingViews];
  }

  return additionalTrackingViews;
}

- (void)setShowValue:(BOOL)value
{
  valueCopy = value;
  if ([(UISliderDataModel *)self->_data showValue]!= value)
  {
    [(UISliderDataModel *)self->_data setShowValue:valueCopy];
    visualElement = self->_visualElement;

    [(_UISliderVisualElement *)visualElement didSetShowValue];
  }
}

- (CGRect)valueTextRectForBounds:(CGRect)bounds
{
  [(_UISliderVisualElement *)self->_visualElement valueTextRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setThumbImage:(id)image forStates:(unint64_t)states
{
  [(UISliderDataModel *)self->_data setThumbImage:image forStates:states];
  visualElement = self->_visualElement;

  [(_UISliderVisualElement *)visualElement didSetThumbImageForStates];
}

- (void)setMinimumTrackImage:(id)image forStates:(unint64_t)states
{
  [(UISliderDataModel *)self->_data setMinimumTrackImage:image forStates:states];
  visualElement = self->_visualElement;

  [(_UISliderVisualElement *)visualElement didSetMinimumTrackImageForStates];
}

- (void)setMaximumTrackImage:(id)image forStates:(unint64_t)states
{
  [(UISliderDataModel *)self->_data setMaximumTrackImage:image forStates:states];
  visualElement = self->_visualElement;

  [(_UISliderVisualElement *)visualElement didSetMaximumTrackImageForStates];
}

- (void)_setThumbEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UISliderDataModel *)self->_data isThumbEnabled]!= enabled)
  {
    [(UISliderDataModel *)self->_data setThumbEnabled:enabledCopy];
    visualElement = self->_visualElement;

    [(_UISliderVisualElement *)visualElement didSetThumbEnabled];
  }
}

- (void)_setMinimumTrackVisible:(BOOL)visible withDuration:(double)duration
{
  visibleCopy = visible;
  if ([(UISliderDataModel *)self->_data isMinimumTrackVisible]!= visible)
  {
    [(UISliderDataModel *)self->_data setMinimumTrackVisible:visibleCopy];
    visualElement = self->_visualElement;

    [(_UISliderVisualElement *)visualElement didChangeMinimumTrackVisibleWithDuration:duration];
  }
}

- (UIEdgeInsets)_thumbHitEdgeInsets
{
  [(_UISliderVisualElement *)self->_visualElement thumbHitEdgeInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_setSliderConfiguration:(int)configuration minimumEnabledValue:(float)value maximumEnabledValue:(float)enabledValue updateMinMaxEnabledValues:
{
  v9 = a2;
  v10 = v9;
  if (self)
  {
    v20 = v9;
    v11 = [v9 isEqual:*(self + 480)];
    v10 = v20;
    if ((v11 & 1) == 0)
    {
      if (configuration)
      {
        [*(self + 464) minimumValue];
        v13 = v12;
        [*(self + 464) maximumValue];
        v15 = v14 - v13;
        v16 = v15 * value + v13;
        *&v16 = v16;
        [self _setMinimumEnabledValue:v16];
        v17 = v15 * enabledValue + v13;
        *&v17 = v17;
        [self _setMaximumEnabledValue:v17];
        v10 = v20;
      }

      v18 = [v10 copyWithZone:0];
      v19 = *(self + 480);
      *(self + 480) = v18;

      v10 = v20;
      if ((*(self + 504) & 2) != 0)
      {
        [*(self + 456) didUpdateConfiguration];
        v10 = v20;
      }
    }
  }
}

- (void)_setSliderStyle:(int64_t)style
{
  if (self->_sliderStyle != style)
  {
    self->_sliderStyle = style;
    [(UISlider *)self _installVisualElement];
  }
}

- (UISliderTrackConfiguration)trackConfiguration
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(_UISliderConfiguration *)self->_sliderConfiguration copyWithZone:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTrackConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy minimumEnabledValue];
  v5 = v4;
  [configurationCopy maximumEnabledValue];
  [(UISlider *)self _setSliderConfiguration:configurationCopy minimumEnabledValue:1 maximumEnabledValue:v5 updateMinMaxEnabledValues:v6];
}

- (int64_t)sliderStyle
{
  if (self->_sliderStyle >= 100)
  {
    return 0;
  }

  else
  {
    return self->_sliderStyle;
  }
}

- (void)setSliderStyle:(int64_t)style
{
  if (style <= 99 && self->_sliderStyle != style)
  {
    self->_sliderStyle = style;
    if ((*&self->_visualElementFlags & 4) != 0)
    {
      [(_UISliderVisualElement *)self->_visualElement didUpdateSliderStyle];
    }
  }
}

- (unint64_t)_fluidUpdateSource
{
  if (*&self->_visualElementFlags)
  {
    return [(_UISliderVisualElement *)self->_visualElement fluidUpdateSource];
  }

  else
  {
    return 0;
  }
}

- (void)_setFluidTrackHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ((*&self->_visualElementFlags & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISlider.m" lineNumber:1096 description:@"Using fluid slider methods on non-fluid slider."];
  }

  [(UISliderDataModel *)self->_data setFluidTrackHidden:hiddenCopy];
  visualElement = self->_visualElement;

  [(_UISliderVisualElement *)visualElement didSetFluidTrackHidden];
}

- (BOOL)_fluidTrackHidden
{
  if ((*&self->_visualElementFlags & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISlider.m" lineNumber:1103 description:@"Using fluid slider methods on non-fluid slider."];
  }

  data = self->_data;

  return [(UISliderDataModel *)data isFluidTrackHidden];
}

- (void)_setMinimumEnabledValue:(float)value
{
  if ([(UISliderDataModel *)self->_data setMinimumEnabledValue:?])
  {
    visualElement = self->_visualElement;

    [(_UISliderVisualElement *)visualElement didSetValues];
  }
}

- (void)_setMaximumEnabledValue:(float)value
{
  if ([(UISliderDataModel *)self->_data setMaximumEnabledValue:?])
  {
    visualElement = self->_visualElement;

    [(_UISliderVisualElement *)visualElement didSetValues];
  }
}

- (void)_setSliderSpeedMultiplier:(float)multiplier
{
  [(UISliderDataModel *)self->_data sliderSpeedMultiplier];
  if (vabds_f32(*&v5, multiplier) >= 0.00000011921)
  {
    *&v5 = multiplier;
    [(UISliderDataModel *)self->_data setSliderSpeedMultiplier:v5];
    if ((*&self->_visualElementFlags & 0x20) != 0)
    {
      visualElement = self->_visualElement;

      [(_UISliderVisualElement *)visualElement didSetSpeedMultiplier];
    }
  }
}

- (void)setPreferredBehavioralStyle:(UIBehavioralStyle)preferredBehavioralStyle
{
  behavioralStyle = [(UISlider *)self behavioralStyle];
  self->_preferredBehavioralStyle = preferredBehavioralStyle;
  if (!self->_visualElement || behavioralStyle != [(UISlider *)self behavioralStyle])
  {

    [(UISlider *)self _installVisualElement];
  }
}

@end