@interface UIStepper
+ (Class)_fallbackVisualElementClass;
+ (Class)visualElementClassForTraitCollection:(id)collection usingImageCustomization:(BOOL)customization;
+ (id)visualElementForTraitCollection:(id)collection usingImageCustomization:(BOOL)customization;
+ (void)_registerVisualElementClass:(Class)class forIdiom:(int64_t)idiom;
+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)behavior;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)alignmentRectInsets;
- (UIImage)backgroundImageForState:(UIControlState)state;
- (UIImage)decrementImageForState:(UIControlState)state;
- (UIImage)dividerImageForLeftSegmentState:(UIControlState)state rightSegmentState:(UIControlState)state;
- (UIImage)incrementImageForState:(UIControlState)state;
- (UIStepper)initWithCoder:(id)coder;
- (UIStepper)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_commonStepperInit;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_refreshVisualElement;
- (void)_refreshVisualElementForTraitCollection:(id)collection populatingAPIProperties:(BOOL)properties;
- (void)cancelTrackingWithEvent:(id)event;
- (void)encodeWithCoder:(id)coder;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)setAutorepeat:(BOOL)autorepeat;
- (void)setBackgroundImage:(UIImage *)image forState:(UIControlState)state;
- (void)setContinuous:(BOOL)continuous;
- (void)setDecrementImage:(UIImage *)image forState:(UIControlState)state;
- (void)setDividerImage:(UIImage *)image forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState;
- (void)setEnabled:(BOOL)enabled;
- (void)setFrame:(CGRect)frame;
- (void)setIncrementImage:(UIImage *)image forState:(UIControlState)state;
- (void)setMaximumValue:(double)maximumValue;
- (void)setMinimumValue:(double)minimumValue;
- (void)setStepValue:(double)stepValue;
- (void)setTintColor:(id)color;
- (void)setValue:(double)value;
- (void)setWraps:(BOOL)wraps;
- (void)tintColorDidChange;
@end

@implementation UIStepper

- (UIStepper)initWithFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)_populateArchivedSubviews:(id)subviews
{
  v6.receiver = self;
  v6.super_class = UIStepper;
  subviewsCopy = subviews;
  [(UIView *)&v6 _populateArchivedSubviews:subviewsCopy];
  v5 = [(UIStepper *)self visualElement:v6.receiver];
  [subviewsCopy removeObject:v5];
}

- (void)setFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIStepper *)self sizeThatFits:frame.size.width, frame.size.height];
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
    visualElement = [(UIStepper *)self visualElement];
    [visualElement setValue:maximumValue];
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
    visualElement = [(UIStepper *)self visualElement];
    [visualElement setMinimumValue:minimumValue];
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
    visualElement = [(UIStepper *)self visualElement];
    [visualElement setMaximumValue:maximumValue];
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
    visualElement = [(UIStepper *)self visualElement];
    [visualElement setStepValue:stepValue];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UIControl *)self isEnabled]!= enabled)
  {
    v6.receiver = self;
    v6.super_class = UIStepper;
    [(UIControl *)&v6 setEnabled:enabledCopy];
    visualElement = [(UIStepper *)self visualElement];
    [visualElement setEnabled:enabledCopy];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  visualElement = [(UIStepper *)self visualElement];
  v7 = visualElement;
  if (visualElement)
  {
    [visualElement sizeThatFits:self forControl:{width, height}];
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

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  visualElement = [(UIStepper *)self visualElement];
  v7 = visualElement;
  if (visualElement)
  {
    [visualElement intrinsicSizeWithinSize:self forControl:{width, height}];
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
  visualElement = [(UIStepper *)self visualElement];
  v4 = visualElement;
  if (visualElement)
  {
    [visualElement alignmentRectInsetsForControl:self];
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
    visualElement = [(UIStepper *)self visualElement];
    [visualElement setContinuous:v4];
  }
}

- (void)setAutorepeat:(BOOL)autorepeat
{
  if (self->_autorepeat != autorepeat)
  {
    v4 = autorepeat;
    self->_autorepeat = autorepeat;
    visualElement = [(UIStepper *)self visualElement];
    [visualElement setAutorepeat:v4];
  }
}

- (void)setWraps:(BOOL)wraps
{
  if (self->_wraps != wraps)
  {
    v4 = wraps;
    self->_wraps = wraps;
    visualElement = [(UIStepper *)self visualElement];
    [visualElement setWraps:v4];
  }
}

- (UIStepper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = UIStepper;
  v5 = [(UIControl *)&v12 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(UIStepper *)v5 _commonStepperInit];
    if ([coderCopy containsValueForKey:@"UIValue"])
    {
      [coderCopy decodeDoubleForKey:@"UIValue"];
      v6->_value = v7;
    }

    if ([coderCopy containsValueForKey:@"UIMinimumValue"])
    {
      [coderCopy decodeDoubleForKey:@"UIMinimumValue"];
      v6->_minimumValue = v8;
    }

    if ([coderCopy containsValueForKey:@"UIMaximumValue"])
    {
      [coderCopy decodeDoubleForKey:@"UIMaximumValue"];
      v6->_maximumValue = v9;
    }

    if ([coderCopy containsValueForKey:@"UIStepValue"])
    {
      [coderCopy decodeDoubleForKey:@"UIStepValue"];
      v6->_stepValue = v10;
    }

    if ([coderCopy containsValueForKey:@"UIContinuous"])
    {
      v6->_continuous = [coderCopy decodeBoolForKey:@"UIContinuous"];
    }

    if ([coderCopy containsValueForKey:@"UIAutorepeat"])
    {
      v6->_autorepeat = [coderCopy decodeBoolForKey:@"UIAutorepeat"];
    }

    if ([coderCopy containsValueForKey:@"UIWraps"])
    {
      v6->_wraps = [coderCopy decodeBoolForKey:@"UIWraps"];
    }

    [(UIStepper *)v6 _refreshVisualElement];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = UIStepper;
  [(UIControl *)&v5 encodeWithCoder:coderCopy];
  if (self->_value != 0.0)
  {
    [coderCopy encodeDouble:@"UIValue" forKey:?];
  }

  if (self->_minimumValue != 0.0)
  {
    [coderCopy encodeDouble:@"UIMinimumValue" forKey:?];
  }

  if (self->_maximumValue != 100.0)
  {
    [coderCopy encodeDouble:@"UIMaximumValue" forKey:?];
  }

  if (self->_stepValue != 1.0)
  {
    [coderCopy encodeDouble:@"UIStepValue" forKey:?];
  }

  if (!self->_continuous)
  {
    [coderCopy encodeBool:0 forKey:@"UIContinuous"];
  }

  if (!self->_autorepeat)
  {
    [coderCopy encodeBool:0 forKey:@"UIAutorepeat"];
  }

  if (self->_wraps)
  {
    [coderCopy encodeBool:1 forKey:@"UIWraps"];
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

+ (void)_registerVisualElementClass:(Class)class forIdiom:(int64_t)idiom
{
  v6 = __stepperIdiomsToVisualElementClasses;
  if (!__stepperIdiomsToVisualElementClasses)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = __stepperIdiomsToVisualElementClasses;
    __stepperIdiomsToVisualElementClasses = dictionary;

    v6 = __stepperIdiomsToVisualElementClasses;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  [v6 setObject:class forKey:v9];
}

+ (Class)_fallbackVisualElementClass
{
  v2 = objc_opt_class();
  v3 = +[UITraitCollection _fallbackTraitCollection];
  v4 = [v2 visualElementClassForTraitCollection:v3 usingImageCustomization:0];

  return v4;
}

+ (Class)visualElementClassForTraitCollection:(id)collection usingImageCustomization:(BOOL)customization
{
  collectionCopy = collection;
  v5 = collectionCopy;
  v6 = __stepperIdiomsToVisualElementClasses;
  if (__stepperIdiomsToVisualElementClasses && ([MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(collectionCopy, "userInterfaceIdiom")}], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "objectForKeyedSubscript:", v7), v7, v8))
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

+ (id)visualElementForTraitCollection:(id)collection usingImageCustomization:(BOOL)customization
{
  v4 = [self visualElementClassForTraitCollection:collection usingImageCustomization:customization];
  v5 = [objc_msgSend(v4 "alloc")];

  return v5;
}

- (void)_refreshVisualElement
{
  traitCollection = [(UIView *)self traitCollection];
  [(UIStepper *)self _refreshVisualElementForTraitCollection:traitCollection populatingAPIProperties:0];
}

- (void)_refreshVisualElementForTraitCollection:(id)collection populatingAPIProperties:(BOOL)properties
{
  propertiesCopy = properties;
  dividerImages = self->_dividerImages;
  collectionCopy = collection;
  if ([(NSMutableDictionary *)dividerImages count])
  {
    v9 = 1;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_backgroundImages count]!= 0;
  }

  v10 = [objc_opt_class() visualElementForTraitCollection:collectionCopy usingImageCustomization:v9];

  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIStepper.m" lineNumber:328 description:@"Nil UIStepper visual element"];
  }

  visualElement = [(UIStepper *)self visualElement];
  [visualElement removeFromSuperview];

  visualElement2 = [(UIStepper *)self visualElement];
  [visualElement2 setStepperControl:0];

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
  if (propertiesCopy)
  {
    tintColor = [(UIView *)self tintColor];
    [v10 setTintColor:tintColor];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  selfCopy = self;
  v9.receiver = self;
  v9.super_class = UIStepper;
  v5 = [(UIControl *)&v9 hitTest:event withEvent:test.x, test.y];
  visualElement = [(UIStepper *)selfCopy visualElement];

  if (v5 != visualElement)
  {
    selfCopy = v5;
  }

  v7 = selfCopy;

  return selfCopy;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  visualElement = [(UIStepper *)self visualElement];
  v9 = [visualElement beginTrackingWithTouch:touchCopy withEvent:eventCopy];

  return v9;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  visualElement = [(UIStepper *)self visualElement];
  v9 = [visualElement continueTrackingWithTouch:touchCopy withEvent:eventCopy];

  return v9;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  visualElement = [(UIStepper *)self visualElement];
  [visualElement endTrackingWithTouch:touchCopy withEvent:eventCopy];
}

- (void)cancelTrackingWithEvent:(id)event
{
  eventCopy = event;
  visualElement = [(UIStepper *)self visualElement];
  [visualElement cancelTrackingWithEvent:eventCopy];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  visualElement = [(UIStepper *)self visualElement];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    visualElement2 = [(UIStepper *)self visualElement];
    v14 = [visualElement2 pointerInteraction:interactionCopy regionForRequest:requestCopy defaultRegion:regionCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  visualElement = [(UIStepper *)self visualElement];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    visualElement2 = [(UIStepper *)self visualElement];
    v11 = [visualElement2 pointerInteraction:interactionCopy styleForRegion:regionCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  interactionCopy = interaction;
  regionCopy = region;
  animatorCopy = animator;
  visualElement = [(UIStepper *)self visualElement];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    visualElement2 = [(UIStepper *)self visualElement];
    [visualElement2 pointerInteraction:interactionCopy willEnterRegion:regionCopy animator:animatorCopy];
  }
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  interactionCopy = interaction;
  regionCopy = region;
  animatorCopy = animator;
  visualElement = [(UIStepper *)self visualElement];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    visualElement2 = [(UIStepper *)self visualElement];
    [visualElement2 pointerInteraction:interactionCopy willExitRegion:regionCopy animator:animatorCopy];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  v6 = view == self || ![beginCopy _isGestureType:0] || objc_msgSend(beginCopy, "numberOfTouchesRequired") != 1 || objc_msgSend(beginCopy, "numberOfTapsRequired") != 1;

  return v6;
}

- (void)setBackgroundImage:(UIImage *)image forState:(UIControlState)state
{
  backgroundImages = self->_backgroundImages;
  v7 = MEMORY[0x1E696AD98];
  v8 = image;
  v9 = [v7 numberWithUnsignedInteger:state];
  [(NSMutableDictionary *)backgroundImages setObject:v8 forKeyedSubscript:v9];

  visualElement = [(UIStepper *)self visualElement];
  [visualElement setBackgroundImage:v8 forState:state];
}

- (UIImage)backgroundImageForState:(UIControlState)state
{
  visualElement = [(UIStepper *)self visualElement];
  v5 = [visualElement backgroundImageForState:state];

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

  visualElement = [(UIStepper *)self visualElement];
  [visualElement setDividerImage:v10 forLeftSegmentState:leftState rightSegmentState:rightState];
}

- (UIImage)dividerImageForLeftSegmentState:(UIControlState)state rightSegmentState:(UIControlState)state
{
  visualElement = [(UIStepper *)self visualElement];
  v7 = [visualElement dividerImageForLeftSegmentState:state rightSegmentState:state];

  return v7;
}

- (void)setIncrementImage:(UIImage *)image forState:(UIControlState)state
{
  incrementImages = self->_incrementImages;
  v7 = MEMORY[0x1E696AD98];
  v8 = image;
  v9 = [v7 numberWithUnsignedInteger:state];
  [(NSMutableDictionary *)incrementImages setObject:v8 forKeyedSubscript:v9];

  visualElement = [(UIStepper *)self visualElement];
  [visualElement setIncrementImage:v8 forState:state];
}

- (UIImage)incrementImageForState:(UIControlState)state
{
  visualElement = [(UIStepper *)self visualElement];
  v5 = [visualElement incrementImageForState:state];

  return v5;
}

- (void)setDecrementImage:(UIImage *)image forState:(UIControlState)state
{
  decrementImages = self->_decrementImages;
  v7 = MEMORY[0x1E696AD98];
  v8 = image;
  v9 = [v7 numberWithUnsignedInteger:state];
  [(NSMutableDictionary *)decrementImages setObject:v8 forKeyedSubscript:v9];

  visualElement = [(UIStepper *)self visualElement];
  [visualElement setDecrementImage:v8 forState:state];
}

- (UIImage)decrementImageForState:(UIControlState)state
{
  visualElement = [(UIStepper *)self visualElement];
  v5 = [visualElement decrementImageForState:state];

  return v5;
}

- (void)setTintColor:(id)color
{
  v6.receiver = self;
  v6.super_class = UIStepper;
  colorCopy = color;
  [(UIView *)&v6 setTintColor:colorCopy];
  v5 = [(UIStepper *)self visualElement:v6.receiver];
  [v5 setTintColor:colorCopy];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = UIStepper;
  [(UIView *)&v4 tintColorDidChange];
  visualElement = [(UIStepper *)self visualElement];
  [visualElement tintColorDidChange];
}

+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)behavior
{
  if (behavior)
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