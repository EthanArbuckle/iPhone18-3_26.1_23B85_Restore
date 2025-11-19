@interface UIStepper
+ (Class)_fallbackVisualElementClass;
+ (Class)visualElementClassForTraitCollection:(id)a3 usingImageCustomization:(BOOL)a4;
+ (id)visualElementForTraitCollection:(id)a3 usingImageCustomization:(BOOL)a4;
+ (void)_registerVisualElementClass:(Class)a3 forIdiom:(int64_t)a4;
+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)a3;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (UIImage)backgroundImageForState:(UIControlState)state;
- (UIImage)decrementImageForState:(UIControlState)state;
- (UIImage)dividerImageForLeftSegmentState:(UIControlState)state rightSegmentState:(UIControlState)a4;
- (UIImage)incrementImageForState:(UIControlState)state;
- (UIStepper)initWithCoder:(id)a3;
- (UIStepper)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_commonStepperInit;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_refreshVisualElement;
- (void)_refreshVisualElementForTraitCollection:(id)a3 populatingAPIProperties:(BOOL)a4;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)setAutorepeat:(BOOL)autorepeat;
- (void)setBackgroundImage:(UIImage *)image forState:(UIControlState)state;
- (void)setContinuous:(BOOL)continuous;
- (void)setDecrementImage:(UIImage *)image forState:(UIControlState)state;
- (void)setDividerImage:(UIImage *)image forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState;
- (void)setEnabled:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setIncrementImage:(UIImage *)image forState:(UIControlState)state;
- (void)setMaximumValue:(double)maximumValue;
- (void)setMinimumValue:(double)minimumValue;
- (void)setStepValue:(double)stepValue;
- (void)setTintColor:(id)a3;
- (void)setValue:(double)value;
- (void)setWraps:(BOOL)wraps;
- (void)tintColorDidChange;
@end

@implementation UIStepper

- (UIStepper)initWithFrame:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  [objc_msgSend(objc_opt_class() "_fallbackVisualElementClass")];
  v11.receiver = self;
  v11.super_class = UIStepper;
  v8 = [(UIControl *)&v11 initWithFrame:x, y, v6, v7];
  v9 = v8;
  if (v8)
  {
    [(UIStepper *)v8 _commonStepperInit];
    [(UIStepper *)v9 _refreshVisualElement];
  }

  return v9;
}

- (void)_populateArchivedSubviews:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIStepper;
  v4 = a3;
  [(UIView *)&v6 _populateArchivedSubviews:v4];
  v5 = [(UIStepper *)self visualElement:v6.receiver];
  [v4 removeObject:v5];
}

- (void)setFrame:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIStepper *)self sizeThatFits:a3.size.width, a3.size.height];
  v8.receiver = self;
  v8.super_class = UIStepper;
  [(UIView *)&v8 setFrame:x, y, v6, v7];
}

- (void)setValue:(double)value
{
  if (self->_minimumValue > value)
  {
    value = self->_minimumValue;
  }

  if (value >= self->_maximumValue)
  {
    maximumValue = self->_maximumValue;
  }

  else
  {
    maximumValue = value;
  }

  if (maximumValue != self->_value)
  {
    self->_value = maximumValue;
    v4 = [(UIStepper *)self visualElement];
    [v4 setValue:maximumValue];
  }
}

- (void)setMinimumValue:(double)minimumValue
{
  if (self->_minimumValue != minimumValue)
  {
    if (self->_maximumValue < minimumValue)
    {
      [(UIStepper *)self setMaximumValue:minimumValue];
    }

    self->_minimumValue = minimumValue;
    value = self->_value;
    if (value < minimumValue)
    {
      value = minimumValue;
    }

    [(UIStepper *)self setValue:value];
    v6 = [(UIStepper *)self visualElement];
    [v6 setMinimumValue:minimumValue];
  }
}

- (void)setMaximumValue:(double)maximumValue
{
  if (self->_maximumValue != maximumValue)
  {
    if (self->_minimumValue > maximumValue)
    {
      [(UIStepper *)self setMinimumValue:maximumValue];
    }

    self->_maximumValue = maximumValue;
    value = self->_value;
    if (value >= maximumValue)
    {
      value = maximumValue;
    }

    [(UIStepper *)self setValue:value];
    v6 = [(UIStepper *)self visualElement];
    [v6 setMaximumValue:maximumValue];
  }
}

- (void)setStepValue:(double)stepValue
{
  if (self->_stepValue != stepValue)
  {
    if (stepValue <= 0.0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"stepValue must be greater than 0"];
    }

    self->_stepValue = stepValue;
    v5 = [(UIStepper *)self visualElement];
    [v5 setStepValue:stepValue];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UIControl *)self isEnabled]!= a3)
  {
    v6.receiver = self;
    v6.super_class = UIStepper;
    [(UIControl *)&v6 setEnabled:v3];
    v5 = [(UIStepper *)self visualElement];
    [v5 setEnabled:v3];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIStepper *)self visualElement];
  v7 = v6;
  if (v6)
  {
    [v6 sizeThatFits:self forControl:{width, height}];
  }

  else
  {
    [objc_msgSend(objc_opt_class() "_fallbackVisualElementClass")];
  }

  v10 = v8;
  v11 = v9;

  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIStepper *)self visualElement];
  v7 = v6;
  if (v6)
  {
    [v6 intrinsicSizeWithinSize:self forControl:{width, height}];
  }

  else
  {
    [objc_msgSend(objc_opt_class() "_fallbackVisualElementClass")];
  }

  v10 = v8;
  v11 = v9;

  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  v3 = [(UIStepper *)self visualElement];
  v4 = v3;
  if (v3)
  {
    [v3 alignmentRectInsetsForControl:self];
  }

  else
  {
    [objc_msgSend(objc_opt_class() "_fallbackVisualElementClass")];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)setContinuous:(BOOL)continuous
{
  if (self->_continuous != continuous)
  {
    v4 = continuous;
    self->_continuous = continuous;
    v5 = [(UIStepper *)self visualElement];
    [v5 setContinuous:v4];
  }
}

- (void)setAutorepeat:(BOOL)autorepeat
{
  if (self->_autorepeat != autorepeat)
  {
    v4 = autorepeat;
    self->_autorepeat = autorepeat;
    v5 = [(UIStepper *)self visualElement];
    [v5 setAutorepeat:v4];
  }
}

- (void)setWraps:(BOOL)wraps
{
  if (self->_wraps != wraps)
  {
    v4 = wraps;
    self->_wraps = wraps;
    v5 = [(UIStepper *)self visualElement];
    [v5 setWraps:v4];
  }
}

- (UIStepper)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UIStepper;
  v5 = [(UIControl *)&v12 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(UIStepper *)v5 _commonStepperInit];
    if ([v4 containsValueForKey:@"UIValue"])
    {
      [v4 decodeDoubleForKey:@"UIValue"];
      v6->_value = v7;
    }

    if ([v4 containsValueForKey:@"UIMinimumValue"])
    {
      [v4 decodeDoubleForKey:@"UIMinimumValue"];
      v6->_minimumValue = v8;
    }

    if ([v4 containsValueForKey:@"UIMaximumValue"])
    {
      [v4 decodeDoubleForKey:@"UIMaximumValue"];
      v6->_maximumValue = v9;
    }

    if ([v4 containsValueForKey:@"UIStepValue"])
    {
      [v4 decodeDoubleForKey:@"UIStepValue"];
      v6->_stepValue = v10;
    }

    if ([v4 containsValueForKey:@"UIContinuous"])
    {
      v6->_continuous = [v4 decodeBoolForKey:@"UIContinuous"];
    }

    if ([v4 containsValueForKey:@"UIAutorepeat"])
    {
      v6->_autorepeat = [v4 decodeBoolForKey:@"UIAutorepeat"];
    }

    if ([v4 containsValueForKey:@"UIWraps"])
    {
      v6->_wraps = [v4 decodeBoolForKey:@"UIWraps"];
    }

    [(UIStepper *)v6 _refreshVisualElement];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = UIStepper;
  [(UIControl *)&v5 encodeWithCoder:v4];
  if (self->_value != 0.0)
  {
    [v4 encodeDouble:@"UIValue" forKey:?];
  }

  if (self->_minimumValue != 0.0)
  {
    [v4 encodeDouble:@"UIMinimumValue" forKey:?];
  }

  if (self->_maximumValue != 100.0)
  {
    [v4 encodeDouble:@"UIMaximumValue" forKey:?];
  }

  if (self->_stepValue != 1.0)
  {
    [v4 encodeDouble:@"UIStepValue" forKey:?];
  }

  if (!self->_continuous)
  {
    [v4 encodeBool:0 forKey:@"UIContinuous"];
  }

  if (!self->_autorepeat)
  {
    [v4 encodeBool:0 forKey:@"UIAutorepeat"];
  }

  if (self->_wraps)
  {
    [v4 encodeBool:1 forKey:@"UIWraps"];
  }
}

- (void)_commonStepperInit
{
  self->_maximumValue = 100.0;
  self->_stepValue = 1.0;
  self->_continuous = 1;
  self->_autorepeat = 1;
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  dividerImages = self->_dividerImages;
  self->_dividerImages = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  backgroundImages = self->_backgroundImages;
  self->_backgroundImages = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  incrementImages = self->_incrementImages;
  self->_incrementImages = v7;

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  decrementImages = self->_decrementImages;
  self->_decrementImages = v9;
}

+ (void)_registerVisualElementClass:(Class)a3 forIdiom:(int64_t)a4
{
  v6 = __stepperIdiomsToVisualElementClasses;
  if (!__stepperIdiomsToVisualElementClasses)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = __stepperIdiomsToVisualElementClasses;
    __stepperIdiomsToVisualElementClasses = v7;

    v6 = __stepperIdiomsToVisualElementClasses;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v6 setObject:a3 forKey:v9];
}

+ (Class)_fallbackVisualElementClass
{
  v2 = objc_opt_class();
  v3 = +[UITraitCollection _fallbackTraitCollection];
  v4 = [v2 visualElementClassForTraitCollection:v3 usingImageCustomization:0];

  return v4;
}

+ (Class)visualElementClassForTraitCollection:(id)a3 usingImageCustomization:(BOOL)a4
{
  v4 = a3;
  v5 = v4;
  v6 = __stepperIdiomsToVisualElementClasses;
  if (__stepperIdiomsToVisualElementClasses && ([MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "userInterfaceIdiom")}], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "objectForKeyedSubscript:", v7), v7, v8))
  {
    v9 = v8;
  }

  else
  {
    if (!dyld_program_sdk_at_least() || (_UIAquaDuckVisualProvidersEnabled() & 1) == 0)
    {
      _UISolariumEnabled();
    }

    objc_opt_class();
    [v5 userInterfaceIdiom];
    v9 = objc_opt_self();
  }

  v10 = v9;

  return v10;
}

+ (id)visualElementForTraitCollection:(id)a3 usingImageCustomization:(BOOL)a4
{
  v4 = [a1 visualElementClassForTraitCollection:a3 usingImageCustomization:a4];
  v5 = [objc_msgSend(v4 "alloc")];

  return v5;
}

- (void)_refreshVisualElement
{
  v3 = [(UIView *)self traitCollection];
  [(UIStepper *)self _refreshVisualElementForTraitCollection:v3 populatingAPIProperties:0];
}

- (void)_refreshVisualElementForTraitCollection:(id)a3 populatingAPIProperties:(BOOL)a4
{
  v4 = a4;
  dividerImages = self->_dividerImages;
  v8 = a3;
  if ([(NSMutableDictionary *)dividerImages count])
  {
    v9 = 1;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_backgroundImages count]!= 0;
  }

  v10 = [objc_opt_class() visualElementForTraitCollection:v8 usingImageCustomization:v9];

  if (!v10)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"UIStepper.m" lineNumber:328 description:@"Nil UIStepper visual element"];
  }

  v11 = [(UIStepper *)self visualElement];
  [v11 removeFromSuperview];

  v12 = [(UIStepper *)self visualElement];
  [v12 setStepperControl:0];

  [(UIStepper *)self setVisualElement:v10];
  [v10 setStepperControl:self];
  [(UIView *)self addSubview:v10];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
  [(UIView *)self setNeedsDisplay];
  [v10 setEnabled:{-[UIControl isEnabled](self, "isEnabled")}];
  [(UIStepper *)self minimumValue];
  [v10 setMinimumValue:?];
  [(UIStepper *)self maximumValue];
  [v10 setMaximumValue:?];
  [(UIStepper *)self value];
  [v10 setValue:?];
  [(UIStepper *)self stepValue];
  [v10 setStepValue:?];
  [v10 setContinuous:{-[UIStepper isContinuous](self, "isContinuous")}];
  [v10 setWraps:{-[UIStepper wraps](self, "wraps")}];
  [v10 setAutorepeat:{-[UIStepper autorepeat](self, "autorepeat")}];
  if (v4)
  {
    v13 = [(UIView *)self tintColor];
    [v10 setTintColor:v13];
  }

  v14 = self->_dividerImages;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __77__UIStepper__refreshVisualElementForTraitCollection_populatingAPIProperties___block_invoke;
  v29[3] = &unk_1E71050F8;
  v15 = v10;
  v30 = v15;
  [(NSMutableDictionary *)v14 enumerateKeysAndObjectsUsingBlock:v29];
  incrementImages = self->_incrementImages;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __77__UIStepper__refreshVisualElementForTraitCollection_populatingAPIProperties___block_invoke_2;
  v27[3] = &unk_1E7105120;
  v17 = v15;
  v28 = v17;
  [(NSMutableDictionary *)incrementImages enumerateKeysAndObjectsUsingBlock:v27];
  decrementImages = self->_decrementImages;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __77__UIStepper__refreshVisualElementForTraitCollection_populatingAPIProperties___block_invoke_3;
  v25[3] = &unk_1E7105120;
  v19 = v17;
  v26 = v19;
  [(NSMutableDictionary *)decrementImages enumerateKeysAndObjectsUsingBlock:v25];
  backgroundImages = self->_backgroundImages;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__UIStepper__refreshVisualElementForTraitCollection_populatingAPIProperties___block_invoke_4;
  v23[3] = &unk_1E7105120;
  v24 = v19;
  v21 = v19;
  [(NSMutableDictionary *)backgroundImages enumerateKeysAndObjectsUsingBlock:v23];
}

void __77__UIStepper__refreshVisualElementForTraitCollection_populatingAPIProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = 0;
  v7 = 0;
  v5 = a3;
  [a2 getValue:&v6 size:16];
  [*(a1 + 32) setDividerImage:v5 forLeftSegmentState:v6 rightSegmentState:v7];
}

void __77__UIStepper__refreshVisualElementForTraitCollection_populatingAPIProperties___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 setIncrementImage:v5 forState:{objc_msgSend(a2, "unsignedIntegerValue")}];
}

void __77__UIStepper__refreshVisualElementForTraitCollection_populatingAPIProperties___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 setDecrementImage:v5 forState:{objc_msgSend(a2, "unsignedIntegerValue")}];
}

void __77__UIStepper__refreshVisualElementForTraitCollection_populatingAPIProperties___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 setBackgroundImage:v5 forState:{objc_msgSend(a2, "unsignedIntegerValue")}];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v4 = self;
  v9.receiver = self;
  v9.super_class = UIStepper;
  v5 = [(UIControl *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = [(UIStepper *)v4 visualElement];

  if (v5 != v6)
  {
    v4 = v5;
  }

  v7 = v4;

  return v4;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIStepper *)self visualElement];
  v9 = [v8 beginTrackingWithTouch:v7 withEvent:v6];

  return v9;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIStepper *)self visualElement];
  v9 = [v8 continueTrackingWithTouch:v7 withEvent:v6];

  return v9;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIStepper *)self visualElement];
  [v8 endTrackingWithTouch:v7 withEvent:v6];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4 = a3;
  v5 = [(UIStepper *)self visualElement];
  [v5 cancelTrackingWithEvent:v4];
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UIStepper *)self visualElement];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(UIStepper *)self visualElement];
    v14 = [v13 pointerInteraction:v8 regionForRequest:v9 defaultRegion:v10];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIStepper *)self visualElement];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(UIStepper *)self visualElement];
    v11 = [v10 pointerInteraction:v6 styleForRegion:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(UIStepper *)self visualElement];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(UIStepper *)self visualElement];
    [v12 pointerInteraction:v13 willEnterRegion:v8 animator:v9];
  }
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(UIStepper *)self visualElement];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(UIStepper *)self visualElement];
    [v12 pointerInteraction:v13 willExitRegion:v8 animator:v9];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = v5 == self || ![v4 _isGestureType:0] || objc_msgSend(v4, "numberOfTouchesRequired") != 1 || objc_msgSend(v4, "numberOfTapsRequired") != 1;

  return v6;
}

- (void)setBackgroundImage:(UIImage *)image forState:(UIControlState)state
{
  backgroundImages = self->_backgroundImages;
  v7 = MEMORY[0x1E696AD98];
  v8 = image;
  v9 = [v7 numberWithUnsignedInteger:state];
  [(NSMutableDictionary *)backgroundImages setObject:v8 forKeyedSubscript:v9];

  v10 = [(UIStepper *)self visualElement];
  [v10 setBackgroundImage:v8 forState:state];
}

- (UIImage)backgroundImageForState:(UIControlState)state
{
  v4 = [(UIStepper *)self visualElement];
  v5 = [v4 backgroundImageForState:state];

  return v5;
}

- (void)setDividerImage:(UIImage *)image forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState
{
  dividerImages = self->_dividerImages;
  v13 = leftState;
  v14 = rightState;
  v9 = MEMORY[0x1E696B098];
  v10 = image;
  v11 = [v9 valueWithBytes:&v13 objCType:"{?=QQ}"];
  [(NSMutableDictionary *)dividerImages setObject:v10 forKeyedSubscript:v11, v13, v14];

  v12 = [(UIStepper *)self visualElement];
  [v12 setDividerImage:v10 forLeftSegmentState:leftState rightSegmentState:rightState];
}

- (UIImage)dividerImageForLeftSegmentState:(UIControlState)state rightSegmentState:(UIControlState)a4
{
  v6 = [(UIStepper *)self visualElement];
  v7 = [v6 dividerImageForLeftSegmentState:state rightSegmentState:a4];

  return v7;
}

- (void)setIncrementImage:(UIImage *)image forState:(UIControlState)state
{
  incrementImages = self->_incrementImages;
  v7 = MEMORY[0x1E696AD98];
  v8 = image;
  v9 = [v7 numberWithUnsignedInteger:state];
  [(NSMutableDictionary *)incrementImages setObject:v8 forKeyedSubscript:v9];

  v10 = [(UIStepper *)self visualElement];
  [v10 setIncrementImage:v8 forState:state];
}

- (UIImage)incrementImageForState:(UIControlState)state
{
  v4 = [(UIStepper *)self visualElement];
  v5 = [v4 incrementImageForState:state];

  return v5;
}

- (void)setDecrementImage:(UIImage *)image forState:(UIControlState)state
{
  decrementImages = self->_decrementImages;
  v7 = MEMORY[0x1E696AD98];
  v8 = image;
  v9 = [v7 numberWithUnsignedInteger:state];
  [(NSMutableDictionary *)decrementImages setObject:v8 forKeyedSubscript:v9];

  v10 = [(UIStepper *)self visualElement];
  [v10 setDecrementImage:v8 forState:state];
}

- (UIImage)decrementImageForState:(UIControlState)state
{
  v4 = [(UIStepper *)self visualElement];
  v5 = [v4 decrementImageForState:state];

  return v5;
}

- (void)setTintColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIStepper;
  v4 = a3;
  [(UIView *)&v6 setTintColor:v4];
  v5 = [(UIStepper *)self visualElement:v6.receiver];
  [v5 setTintColor:v4];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = UIStepper;
  [(UIView *)&v4 tintColorDidChange];
  v3 = [(UIStepper *)self visualElement];
  [v3 tintColorDidChange];
}

+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  _UnsupportedFlags_0 = _UnsupportedFlags_0 & 0xFD | v3;
}

@end