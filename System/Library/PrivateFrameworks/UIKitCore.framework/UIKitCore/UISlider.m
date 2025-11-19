@interface UISlider
- (BOOL)_deferFinalActions;
- (BOOL)_fluidTrackHidden;
- (BOOL)isTracking;
- (CGRect)maximumValueImageRectForBounds:(CGRect)bounds;
- (CGRect)minimumValueImageRectForBounds:(CGRect)bounds;
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (CGRect)valueTextRectForBounds:(CGRect)a3;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (UIEdgeInsets)_thumbHitEdgeInsets;
- (UIEdgeInsets)alignmentRectInsets;
- (UISlider)initWithCoder:(id)a3;
- (UISlider)initWithFrame:(CGRect)a3;
- (UISliderTrackConfiguration)trackConfiguration;
- (_UISliderConfiguration)_sliderConfiguration;
- (id)_additionalTrackingViews;
- (id)description;
- (int64_t)sliderStyle;
- (unint64_t)_fluidUpdateSource;
- (void)_installVisualElement;
- (void)_installVisualElement:(id)a3;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_reinstallVisualElementIfNeeded;
- (void)_setFluidTrackHidden:(BOOL)a3;
- (void)_setMaximumEnabledValue:(float)a3;
- (void)_setMinimumEnabledValue:(float)a3;
- (void)_setMinimumTrackVisible:(BOOL)a3 withDuration:(double)a4;
- (void)_setSliderConfiguration:(int)a3 minimumEnabledValue:(float)a4 maximumEnabledValue:(float)a5 updateMinMaxEnabledValues:;
- (void)_setSliderSpeedMultiplier:(float)a3;
- (void)_setSliderStyle:(int64_t)a3;
- (void)_setThumbEnabled:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setContinuous:(BOOL)continuous;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMaximumTrackImage:(UIImage *)image forState:(UIControlState)state;
- (void)setMaximumTrackImage:(id)a3 forStates:(unint64_t)a4;
- (void)setMaximumTrackTintColor:(UIColor *)maximumTrackTintColor;
- (void)setMaximumValue:(float)maximumValue;
- (void)setMaximumValueImage:(UIImage *)maximumValueImage;
- (void)setMinimumTrackImage:(UIImage *)image forState:(UIControlState)state;
- (void)setMinimumTrackImage:(id)a3 forStates:(unint64_t)a4;
- (void)setMinimumTrackTintColor:(UIColor *)minimumTrackTintColor;
- (void)setMinimumValue:(float)minimumValue;
- (void)setMinimumValueImage:(UIImage *)minimumValueImage;
- (void)setPreferredBehavioralStyle:(UIBehavioralStyle)preferredBehavioralStyle;
- (void)setSelected:(BOOL)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setShowValue:(BOOL)a3;
- (void)setSliderStyle:(int64_t)a3;
- (void)setThumbImage:(UIImage *)image forState:(UIControlState)state;
- (void)setThumbImage:(id)a3 forStates:(unint64_t)a4;
- (void)setThumbTintColor:(UIColor *)thumbTintColor;
- (void)setTrackConfiguration:(id)a3;
- (void)setTracking:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
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

- (UISlider)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = UISlider;
  v3 = [(UIControl *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (UISlider)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = UISlider;
  v5 = [(UIControl *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    data = v5->_data;
    v5->_data = v6;

    [(UISlider *)v5 _installVisualElement];
    [(UIControl *)v5 setSymbolAnimationEnabled:1];
    [(UISlider *)v5 _registerForTraitChanges];
    if ([v4 containsValueForKey:@"UIBehavioralStyle"])
    {
      v8 = [v4 decodeIntegerForKey:@"UIBehavioralStyle"];
    }

    else
    {
      v8 = 0;
    }

    [(UISlider *)v5 setPreferredBehavioralStyle:v8];
    [v4 decodeFloatForKey:@"UIMinValue"];
    [(UISliderDataModel *)v5->_data setMinimumValue:?];
    v9 = [v4 containsValueForKey:@"UIMaxValue"];
    LODWORD(v10) = 1.0;
    if (v9)
    {
      [v4 decodeFloatForKey:{@"UIMaxValue", v10}];
    }

    [(UISliderDataModel *)v5->_data setMaximumValue:v10];
    [v4 decodeFloatForKey:@"UIValue"];
    [(UISliderDataModel *)v5->_data setValue:?];
    [(_UISliderVisualElement *)v5->_visualElement didSetValues];
    if ([v4 containsValueForKey:@"UIContinuous"])
    {
      -[UISliderDataModel setContinuous:](v5->_data, "setContinuous:", [v4 decodeBoolForKey:@"UIContinuous"]);
      [(_UISliderVisualElement *)v5->_visualElement didSetContinuous];
    }

    v11 = [v4 decodeObjectForKey:@"UIMinimumValueImage"];
    if (v11)
    {
      [(UISliderDataModel *)v5->_data setMinimumValueImage:v11];
      [(_UISliderVisualElement *)v5->_visualElement didSetMinimumValueImage];
    }

    v12 = [v4 decodeObjectForKey:@"UIMaximumValueImage"];
    if (v12)
    {
      [(UISliderDataModel *)v5->_data setMaximumValueImage:v12];
      [(_UISliderVisualElement *)v5->_visualElement didSetMaximumValueImage];
    }

    if ([v4 containsValueForKey:@"UIMinimumTintColor"])
    {
      v13 = v5->_data;
      v14 = [v4 decodeObjectForKey:@"UIMinimumTintColor"];
      [(UISliderDataModel *)v13 setMinimumTrackTintColor:v14];

      [(_UISliderVisualElement *)v5->_visualElement didSetMinimumTrackTintColor];
    }

    if ([v4 containsValueForKey:@"UIMaximumTintColor"])
    {
      v15 = v5->_data;
      v16 = [v4 decodeObjectForKey:@"UIMaximumTintColor"];
      [(UISliderDataModel *)v15 setMaximumTrackTintColor:v16];

      [(_UISliderVisualElement *)v5->_visualElement didSetMaximumTrackTintColor];
    }

    if ([v4 containsValueForKey:@"UIThumbTintColor"])
    {
      v17 = v5->_data;
      v18 = [v4 decodeObjectForKey:@"UIThumbTintColor"];
      [(UISliderDataModel *)v17 setThumbTintColor:v18];

      [(UISlider *)v5 setThumbImage:0 forStates:7];
      [(_UISliderVisualElement *)v5->_visualElement didSetThumbTintColor];
    }
  }

  return v5;
}

- (void)_installVisualElement:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(_UISliderVisualElement *)self->_visualElement setSlider:0];
  [(_UISliderVisualElement *)self->_visualElement removeFromSuperview];
  objc_storeStrong(&self->_visualElement, a3);
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
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"UISlider.m" lineNumber:235 description:@"Installing visual element before data model has been created"];
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

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = UISlider;
  [(UIView *)&v5 setSemanticContentAttribute:?];
  [(_UISliderVisualElement *)self->_visualElement setSemanticContentAttribute:a3];
}

- (void)_populateArchivedSubviews:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UISlider;
  [(UIView *)&v9 _populateArchivedSubviews:v4];
  [v4 removeObject:self->_visualElement];
  [v4 removeObject:self->_visualElement];
  dummyViews = self->_dummyViews;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__UISlider__populateArchivedSubviews___block_invoke;
  v7[3] = &unk_1E70F3F18;
  v8 = v4;
  v6 = v4;
  [(NSArray *)dummyViews enumerateObjectsUsingBlock:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = UISlider;
  [(UIControl *)&v15 encodeWithCoder:v4];
  [(UISliderDataModel *)self->_data value];
  if (v5 != 0.0)
  {
    [v4 encodeFloat:@"UIValue" forKey:?];
  }

  [(UISliderDataModel *)self->_data minimumValue];
  if (v6 != 0.0)
  {
    [v4 encodeFloat:@"UIMinValue" forKey:?];
  }

  [(UISliderDataModel *)self->_data maximumValue];
  if (v7 != 1.0)
  {
    [v4 encodeFloat:@"UIMaxValue" forKey:?];
  }

  if (![(UISliderDataModel *)self->_data isContinuous])
  {
    [v4 encodeBool:0 forKey:@"UIContinuous"];
  }

  v8 = [(UISlider *)self minimumValueImage];

  if (v8)
  {
    v9 = [(UISlider *)self minimumValueImage];
    [v4 encodeObject:v9 forKey:@"UIMinimumValueImage"];
  }

  v10 = [(UISlider *)self maximumValueImage];

  if (v10)
  {
    v11 = [(UISlider *)self maximumValueImage];
    [v4 encodeObject:v11 forKey:@"UIMaximumValueImage"];
  }

  v12 = [(UISliderDataModel *)self->_data minimumTrackTintColor];
  if (v12)
  {
    [v4 encodeObject:v12 forKey:@"UIMinimumTintColor"];
  }

  v13 = [(UISliderDataModel *)self->_data maximumTrackTintColor];
  if (v13)
  {
    [v4 encodeObject:v13 forKey:@"UIMaximumTintColor"];
  }

  v14 = [(UISliderDataModel *)self->_data thumbTintColor];
  if (v14)
  {
    [v4 encodeObject:v14 forKey:@"UIThumbTintColor"];
  }

  [v4 encodeInteger:-[UISlider preferredBehavioralStyle](self forKey:{"preferredBehavioralStyle"), @"UIBehavioralStyle"}];
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
  v4 = [(UISliderDataModel *)self->_data thumbTintColor];

  v5 = v6;
  if (v4 != v6)
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
  v4 = [(UISliderDataModel *)self->_data minimumTrackTintColor];

  v5 = v6;
  if (v4 != v6)
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
  v4 = [(UISliderDataModel *)self->_data minimumValueImage];

  v5 = v6;
  if (v4 != v6)
  {
    [(UISliderDataModel *)self->_data setMinimumValueImage:v6];
    [(_UISliderVisualElement *)self->_visualElement didSetMinimumValueImage];
    v5 = v6;
  }
}

- (void)setMaximumValueImage:(UIImage *)maximumValueImage
{
  v6 = maximumValueImage;
  v4 = [(UISliderDataModel *)self->_data maximumValueImage];

  v5 = v6;
  if (v4 != v6)
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

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  [(_UISliderVisualElement *)self->_visualElement _intrinsicSizeWithinSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  v4 = a3;
  if (self->_visualElement == v4)
  {
    [(UIView *)self invalidateIntrinsicContentSize];
  }

  v5.receiver = self;
  v5.super_class = UISlider;
  [(UIView *)&v5 _intrinsicContentSizeInvalidatedForChildView:v4];
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

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UIView *)self isUserInteractionEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = UISlider;
    [(UIView *)&v5 setUserInteractionEnabled:v3];
    [(UISliderDataModel *)self->_data setUserInteractionEnabled:v3];
    if ((*&self->_visualElementFlags & 8) != 0)
    {
      [(_UISliderVisualElement *)self->_visualElement didSetUserInteractionEnabled];
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UIControl *)self isEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = UISlider;
    [(UIControl *)&v5 setEnabled:v3];
    [(UISliderDataModel *)self->_data setEnabled:v3];
    [(_UISliderVisualElement *)self->_visualElement didSetEnabled];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(UIControl *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = UISlider;
    [(UIControl *)&v5 setHighlighted:v3];
    [(UISliderDataModel *)self->_data setHighlighted:v3];
    [(_UISliderVisualElement *)self->_visualElement didSetHighlighted];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(UIControl *)self isSelected]!= a3)
  {
    v5.receiver = self;
    v5.super_class = UISlider;
    [(UIControl *)&v5 setSelected:v3];
    [(UISliderDataModel *)self->_data setSelected:v3];
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

- (void)setTracking:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UISlider;
  [(UIControl *)&v5 setTracking:?];
  [(UISliderDataModel *)self->_data setTracking:v3];
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
    v2 = [(_UISliderVisualElement *)self->_visualElement additionalTrackingViews];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = UISlider;
    v2 = [(UIControl *)&v4 _additionalTrackingViews];
  }

  return v2;
}

- (void)setShowValue:(BOOL)a3
{
  v3 = a3;
  if ([(UISliderDataModel *)self->_data showValue]!= a3)
  {
    [(UISliderDataModel *)self->_data setShowValue:v3];
    visualElement = self->_visualElement;

    [(_UISliderVisualElement *)visualElement didSetShowValue];
  }
}

- (CGRect)valueTextRectForBounds:(CGRect)a3
{
  [(_UISliderVisualElement *)self->_visualElement valueTextRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setThumbImage:(id)a3 forStates:(unint64_t)a4
{
  [(UISliderDataModel *)self->_data setThumbImage:a3 forStates:a4];
  visualElement = self->_visualElement;

  [(_UISliderVisualElement *)visualElement didSetThumbImageForStates];
}

- (void)setMinimumTrackImage:(id)a3 forStates:(unint64_t)a4
{
  [(UISliderDataModel *)self->_data setMinimumTrackImage:a3 forStates:a4];
  visualElement = self->_visualElement;

  [(_UISliderVisualElement *)visualElement didSetMinimumTrackImageForStates];
}

- (void)setMaximumTrackImage:(id)a3 forStates:(unint64_t)a4
{
  [(UISliderDataModel *)self->_data setMaximumTrackImage:a3 forStates:a4];
  visualElement = self->_visualElement;

  [(_UISliderVisualElement *)visualElement didSetMaximumTrackImageForStates];
}

- (void)_setThumbEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UISliderDataModel *)self->_data isThumbEnabled]!= a3)
  {
    [(UISliderDataModel *)self->_data setThumbEnabled:v3];
    visualElement = self->_visualElement;

    [(_UISliderVisualElement *)visualElement didSetThumbEnabled];
  }
}

- (void)_setMinimumTrackVisible:(BOOL)a3 withDuration:(double)a4
{
  v5 = a3;
  if ([(UISliderDataModel *)self->_data isMinimumTrackVisible]!= a3)
  {
    [(UISliderDataModel *)self->_data setMinimumTrackVisible:v5];
    visualElement = self->_visualElement;

    [(_UISliderVisualElement *)visualElement didChangeMinimumTrackVisibleWithDuration:a4];
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

- (void)_setSliderConfiguration:(int)a3 minimumEnabledValue:(float)a4 maximumEnabledValue:(float)a5 updateMinMaxEnabledValues:
{
  v9 = a2;
  v10 = v9;
  if (a1)
  {
    v20 = v9;
    v11 = [v9 isEqual:*(a1 + 480)];
    v10 = v20;
    if ((v11 & 1) == 0)
    {
      if (a3)
      {
        [*(a1 + 464) minimumValue];
        v13 = v12;
        [*(a1 + 464) maximumValue];
        v15 = v14 - v13;
        v16 = v15 * a4 + v13;
        *&v16 = v16;
        [a1 _setMinimumEnabledValue:v16];
        v17 = v15 * a5 + v13;
        *&v17 = v17;
        [a1 _setMaximumEnabledValue:v17];
        v10 = v20;
      }

      v18 = [v10 copyWithZone:0];
      v19 = *(a1 + 480);
      *(a1 + 480) = v18;

      v10 = v20;
      if ((*(a1 + 504) & 2) != 0)
      {
        [*(a1 + 456) didUpdateConfiguration];
        v10 = v20;
      }
    }
  }
}

- (void)_setSliderStyle:(int64_t)a3
{
  if (self->_sliderStyle != a3)
  {
    self->_sliderStyle = a3;
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

- (void)setTrackConfiguration:(id)a3
{
  v7 = a3;
  [v7 minimumEnabledValue];
  v5 = v4;
  [v7 maximumEnabledValue];
  [(UISlider *)self _setSliderConfiguration:v7 minimumEnabledValue:1 maximumEnabledValue:v5 updateMinMaxEnabledValues:v6];
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

- (void)setSliderStyle:(int64_t)a3
{
  if (a3 <= 99 && self->_sliderStyle != a3)
  {
    self->_sliderStyle = a3;
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

- (void)_setFluidTrackHidden:(BOOL)a3
{
  v3 = a3;
  if ((*&self->_visualElementFlags & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UISlider.m" lineNumber:1096 description:@"Using fluid slider methods on non-fluid slider."];
  }

  [(UISliderDataModel *)self->_data setFluidTrackHidden:v3];
  visualElement = self->_visualElement;

  [(_UISliderVisualElement *)visualElement didSetFluidTrackHidden];
}

- (BOOL)_fluidTrackHidden
{
  if ((*&self->_visualElementFlags & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UISlider.m" lineNumber:1103 description:@"Using fluid slider methods on non-fluid slider."];
  }

  data = self->_data;

  return [(UISliderDataModel *)data isFluidTrackHidden];
}

- (void)_setMinimumEnabledValue:(float)a3
{
  if ([(UISliderDataModel *)self->_data setMinimumEnabledValue:?])
  {
    visualElement = self->_visualElement;

    [(_UISliderVisualElement *)visualElement didSetValues];
  }
}

- (void)_setMaximumEnabledValue:(float)a3
{
  if ([(UISliderDataModel *)self->_data setMaximumEnabledValue:?])
  {
    visualElement = self->_visualElement;

    [(_UISliderVisualElement *)visualElement didSetValues];
  }
}

- (void)_setSliderSpeedMultiplier:(float)a3
{
  [(UISliderDataModel *)self->_data sliderSpeedMultiplier];
  if (vabds_f32(*&v5, a3) >= 0.00000011921)
  {
    *&v5 = a3;
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
  v5 = [(UISlider *)self behavioralStyle];
  self->_preferredBehavioralStyle = preferredBehavioralStyle;
  if (!self->_visualElement || v5 != [(UISlider *)self behavioralStyle])
  {

    [(UISlider *)self _installVisualElement];
  }
}

@end