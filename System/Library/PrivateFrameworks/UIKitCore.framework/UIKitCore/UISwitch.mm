@interface UISwitch
+ (id)visualElementForTraitCollection:(id)collection;
+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)behavior;
- (BOOL)_isFixedSize;
- (CGPoint)accessibilityActivationPoint;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)_layoutSizeThatFits:(CGSize)fits fixedAxes:(unint64_t)axes;
- (UIEdgeInsets)alignmentRectInsets;
- (UIImpactFeedbackGenerator)_impactFeedbackGenerator;
- (UISwitch)initWithCoder:(NSCoder *)coder;
- (UISwitch)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_refreshVisualElement;
- (void)_refreshVisualElementForTraitCollection:(id)collection populatingAPIProperties:(BOOL)properties;
- (void)_setAlwaysShowsOnOffLabel:(BOOL)label;
- (void)_setImpactFeedbackGenerator:(id)generator;
- (void)_setStyle:(int64_t)style;
- (void)_showingOnOffLabelChanged;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)setEnabled:(BOOL)enabled;
- (void)setFrame:(CGRect)frame;
- (void)setOffImage:(UIImage *)offImage;
- (void)setOn:(BOOL)on animated:(BOOL)animated notifyingVisualElement:(BOOL)element;
- (void)setOnImage:(UIImage *)onImage;
- (void)setOnTintColor:(UIColor *)onTintColor;
- (void)setPreferredStyle:(UISwitchStyle)preferredStyle;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setThumbTintColor:(UIColor *)thumbTintColor;
- (void)setTintColor:(id)color;
- (void)setTitle:(NSString *)title;
- (void)tintColorDidChange;
- (void)visualElement:(id)element transitionedToOn:(BOOL)on;
@end

@implementation UISwitch

- (BOOL)_isFixedSize
{
  visualElement = [(UISwitch *)self visualElement];
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    isFixedSize = [objc_opt_class() isFixedSize];
  }

  else
  {
    isFixedSize = 1;
  }

  return isFixedSize;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = UISwitch;
  [(UIView *)&v4 tintColorDidChange];
  visualElement = [(UISwitch *)self visualElement];
  [visualElement tintColorDidChange];
}

- (UIEdgeInsets)alignmentRectInsets
{
  visualElement = [(UISwitch *)self visualElement];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = objc_opt_class();
    if ([(UISwitch *)self _isFixedSize])
    {
      [v6 preferredAlignmentRectInsets];
    }

    else
    {
      [visualElement alignmentRectInsets];
    }

    v12 = v7;
    v13 = v8;
    v14 = v9;
    v11 = v10;
  }

  else
  {
    v11 = 2.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  v15 = v12;
  v16 = v13;
  v17 = v14;
  v18 = v11;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (UISwitch)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = UISwitch;
  v3 = [(UIControl *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  _UISwitchCommonInit(v3);
  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIAccessibilityOnOffSwitchLabelsDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = UISwitch;
  [(UIView *)&v4 dealloc];
}

- (UISwitch)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v12.receiver = self;
  v12.super_class = UISwitch;
  v5 = [(UIControl *)&v12 initWithCoder:v4];
  if (v5)
  {
    v5->_preferredStyle = [(NSCoder *)v4 decodeIntegerForKey:@"UISwitchStyle"];
    _UISwitchCommonInit(v5);
    [(UISwitch *)v5 setEnabled:[(NSCoder *)v4 decodeBoolForKey:@"UISwitchEnabled"]];
    [(UISwitch *)v5 setOn:[(NSCoder *)v4 decodeBoolForKey:@"UISwitchOn"]];
    if ([(NSCoder *)v4 containsValueForKey:@"UISwitchOnTintColor"])
    {
      v6 = [(NSCoder *)v4 decodeObjectForKey:@"UISwitchOnTintColor"];
      [(UISwitch *)v5 setOnTintColor:v6];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UISwitchTintColor"])
    {
      v7 = [(NSCoder *)v4 decodeObjectForKey:@"UISwitchTintColor"];
      [(UISwitch *)v5 setTintColor:v7];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UISwitchThumbTintColor"])
    {
      v8 = [(NSCoder *)v4 decodeObjectForKey:@"UISwitchThumbTintColor"];
      [(UISwitch *)v5 setThumbTintColor:v8];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UISwitchOnImage"])
    {
      v9 = [(NSCoder *)v4 decodeObjectForKey:@"UISwitchOnImage"];
      [(UISwitch *)v5 setOnImage:v9];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UISwitchOffImage"])
    {
      v10 = [(NSCoder *)v4 decodeObjectForKey:@"UISwitchOffImage"];
      [(UISwitch *)v5 setOffImage:v10];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = UISwitch;
  [(UIControl *)&v15 encodeWithCoder:coderCopy];
  if ([(UIControl *)self isEnabled])
  {
    [coderCopy encodeBool:-[UIControl isEnabled](self forKey:{"isEnabled"), @"UISwitchEnabled"}];
  }

  if ([(UISwitch *)self isOn])
  {
    [coderCopy encodeBool:-[UISwitch isOn](self forKey:{"isOn"), @"UISwitchOn"}];
  }

  onTintColor = [(UISwitch *)self onTintColor];

  if (onTintColor)
  {
    onTintColor2 = [(UISwitch *)self onTintColor];
    [coderCopy encodeObject:onTintColor2 forKey:@"UISwitchOnTintColor"];
  }

  tintColor = [(UISwitch *)self tintColor];

  if (tintColor)
  {
    tintColor2 = [(UISwitch *)self tintColor];
    [coderCopy encodeObject:tintColor2 forKey:@"UISwitchTintColor"];
  }

  thumbTintColor = [(UISwitch *)self thumbTintColor];

  if (thumbTintColor)
  {
    thumbTintColor2 = [(UISwitch *)self thumbTintColor];
    [coderCopy encodeObject:thumbTintColor2 forKey:@"UISwitchThumbTintColor"];
  }

  onImage = [(UISwitch *)self onImage];

  if (onImage)
  {
    onImage2 = [(UISwitch *)self onImage];
    [coderCopy encodeObject:onImage2 forKey:@"UISwitchOnImage"];
  }

  offImage = [(UISwitch *)self offImage];

  if (offImage)
  {
    offImage2 = [(UISwitch *)self offImage];
    [coderCopy encodeObject:offImage2 forKey:@"UISwitchOffImage"];
  }

  if ([(UISwitch *)self preferredStyle])
  {
    [coderCopy encodeInteger:self->_style forKey:@"UISwitchStyle"];
  }
}

- (void)_populateArchivedSubviews:(id)subviews
{
  v6.receiver = self;
  v6.super_class = UISwitch;
  subviewsCopy = subviews;
  [(UIView *)&v6 _populateArchivedSubviews:subviewsCopy];
  v5 = [(UISwitch *)self visualElement:v6.receiver];
  [subviewsCopy removeObject:v5];
}

+ (id)visualElementForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v6 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v18 = _UIInternalPreference_AquaDuckUISwitchEnabled;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_AquaDuckUISwitchEnabled)
    {
      while (v6 >= v18)
      {
        _UIInternalPreferenceSync(v6, &_UIInternalPreference_AquaDuckUISwitchEnabled, @"AquaDuckUISwitchEnabled", _UIInternalPreferenceUpdateBool);
        v18 = _UIInternalPreference_AquaDuckUISwitchEnabled;
        if (v6 == _UIInternalPreference_AquaDuckUISwitchEnabled)
        {
          goto LABEL_4;
        }
      }

      if (byte_1EA95E2CC && (!dyld_program_sdk_at_least() || (_UIAquaDuckVisualProvidersEnabled() & 1) == 0))
      {
        _UISolariumEnabled();
      }
    }
  }

LABEL_4:
  v7 = objc_opt_class();
  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
  v9 = 0;
  if (userInterfaceIdiom > 2)
  {
    if (userInterfaceIdiom == 3)
    {
      if ((_UISolariumEnabled() & 1) == 0)
      {
        v16 = UISwitchCarPlayVisualElement;
        goto LABEL_15;
      }
    }

    else if (userInterfaceIdiom != 5 && userInterfaceIdiom != 8)
    {
      goto LABEL_18;
    }

LABEL_14:
    v16 = v7;
LABEL_15:
    v9 = objc_alloc_init(v16);
    goto LABEL_18;
  }

  if (userInterfaceIdiom < 2)
  {
    goto LABEL_14;
  }

  if (userInterfaceIdiom == -1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = currentHandler;
    v12 = @"UISwitch attempted to be initialized or updated with a trait collection containing UIUserInterfaceIdiomUnspecified.";
    v13 = a2;
    selfCopy2 = self;
    v15 = 250;
  }

  else
  {
    if (userInterfaceIdiom != 2)
    {
      goto LABEL_18;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = currentHandler;
    v12 = @"UISwitch cannot be used on tvOS.";
    v13 = a2;
    selfCopy2 = self;
    v15 = 247;
  }

  [currentHandler handleFailureInMethod:v13 object:selfCopy2 file:@"UISwitch.m" lineNumber:v15 description:v12];

  v9 = 0;
LABEL_18:

  return v9;
}

- (void)_refreshVisualElement
{
  traitCollection = [(UIView *)self traitCollection];
  [(UISwitch *)self _refreshVisualElementForTraitCollection:traitCollection populatingAPIProperties:1];
}

- (void)_refreshVisualElementForTraitCollection:(id)collection populatingAPIProperties:(BOOL)properties
{
  propertiesCopy = properties;
  selfCopy = __visualElementProvider;
  if (!__visualElementProvider)
  {
    selfCopy = self;
  }

  v24 = selfCopy;
  collectionCopy = collection;
  v10 = objc_opt_class();
  style = [(UISwitch *)self style];
  if (objc_opt_respondsToSelector())
  {
    [v10 visualElementForTraitCollection:collectionCopy style:style];
  }

  else
  {
    [v10 visualElementForTraitCollection:collectionCopy];
  }
  v12 = ;

  if (!v12)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [(UIView *)v24 description];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISwitch.m" lineNumber:275 description:{@"Nil UISwitch visual element provided by %@", v23}];
  }

  visualElement = [(UISwitch *)self visualElement];
  [visualElement removeFromSuperview];

  visualElement2 = [(UISwitch *)self visualElement];
  [visualElement2 setSwitchControl:0];

  [(UISwitch *)self setVisualElement:0];
  [(UISwitch *)self setVisualElement:v12];
  visualElement3 = [(UISwitch *)self visualElement];
  [visualElement3 setSwitchControl:self];

  if ([(UISwitch *)self _isFixedSize])
  {
    [(UIView *)self frame];
    selfCopy2 = self;
  }

  else
  {
    [(UIView *)v12 setAutoresizingMask:18];
    [(UIView *)self bounds];
    selfCopy2 = v12;
  }

  [(UISwitch *)selfCopy2 setFrame:?];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self addSubview:v12];
  [(UISwitch *)v12 setOn:[(UISwitch *)self isOn] animated:0];
  [(UISwitch *)v12 setShowsOnOffLabel:[(UISwitch *)self _shouldShowOnOffLabels]];
  [(UISwitch *)v12 setEnabled:[(UIControl *)self isEnabled]];
  [(UISwitch *)v12 setSemanticContentAttribute:[(UIView *)self semanticContentAttribute]];
  if (propertiesCopy)
  {
    onImage = [(UISwitch *)self onImage];
    [(UISwitch *)v12 setOnImage:onImage];

    offImage = [(UISwitch *)self offImage];
    [(UISwitch *)v12 setOffImage:offImage];

    tintColor = [(UISwitch *)self tintColor];
    [(UISwitch *)v12 setTintColor:tintColor];

    onTintColor = [(UISwitch *)self onTintColor];
    [(UISwitch *)v12 setOnTintColor:onTintColor];

    thumbTintColor = [(UISwitch *)self thumbTintColor];
    [(UISwitch *)v12 setThumbTintColor:thumbTintColor];
  }
}

- (void)visualElement:(id)element transitionedToOn:(BOOL)on
{
  [(UISwitch *)self setOn:on animated:0 notifyingVisualElement:0];

  [(UIControl *)self sendActionsForControlEvents:4096];
}

- (void)_setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(UISwitch *)self _refreshVisualElement];
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  visualElement = [(UISwitch *)self visualElement];
  v7 = objc_opt_class();
  if ([(UISwitch *)self _isFixedSize])
  {
    [v7 preferredContentSize];
  }

  else
  {
    [visualElement _intrinsicSizeWithinSize:{width, height}];
  }

  v10 = v8;
  v11 = v9;

  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  if (![(UISwitch *)self _isFixedSize])
  {

    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)_layoutSizeThatFits:(CGSize)fits fixedAxes:(unint64_t)axes
{
  [(UISwitch *)self _intrinsicSizeWithinSize:axes, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(UISwitch *)self _isFixedSize])
  {
    [(UISwitch *)self sizeThatFits:width, height];
    width = v8;
    height = v9;
  }

  v10.receiver = self;
  v10.super_class = UISwitch;
  [(UIView *)&v10 setFrame:x, y, width, height];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  visualElement = [(UISwitch *)self visualElement];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    visualElement2 = [(UISwitch *)self visualElement];
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
  visualElement = [(UISwitch *)self visualElement];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    visualElement2 = [(UISwitch *)self visualElement];
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
  visualElement = [(UISwitch *)self visualElement];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    visualElement2 = [(UISwitch *)self visualElement];
    [visualElement2 pointerInteraction:interactionCopy willEnterRegion:regionCopy animator:animatorCopy];
  }
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  interactionCopy = interaction;
  regionCopy = region;
  animatorCopy = animator;
  visualElement = [(UISwitch *)self visualElement];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    visualElement2 = [(UISwitch *)self visualElement];
    [visualElement2 pointerInteraction:interactionCopy willExitRegion:regionCopy animator:animatorCopy];
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v6.receiver = self;
  v6.super_class = UISwitch;
  [(UIView *)&v6 setSemanticContentAttribute:?];
  visualElement = [(UISwitch *)self visualElement];
  [visualElement setSemanticContentAttribute:attribute];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = UISwitch;
  [(UIControl *)&v6 setEnabled:?];
  visualElement = [(UISwitch *)self visualElement];
  [visualElement setEnabled:enabledCopy];
}

- (void)setOn:(BOOL)on animated:(BOOL)animated notifyingVisualElement:(BOOL)element
{
  if (self->_on != on)
  {
    onCopy = on;
    self->_on = on;
    if (element)
    {
      animatedCopy = animated;
      visualElement = [(UISwitch *)self visualElement];
      [visualElement setOn:onCopy animated:animatedCopy];
    }
  }
}

- (void)setOnTintColor:(UIColor *)onTintColor
{
  objc_storeStrong(&self->_onTintColor, onTintColor);
  v5 = onTintColor;
  visualElement = [(UISwitch *)self visualElement];
  [visualElement setOnTintColor:v5];
}

- (void)setTintColor:(id)color
{
  objc_storeStrong(&self->_tintColor, color);
  colorCopy = color;
  visualElement = [(UISwitch *)self visualElement];
  [visualElement setTintColor:colorCopy];
}

- (void)setThumbTintColor:(UIColor *)thumbTintColor
{
  objc_storeStrong(&self->_thumbTintColor, thumbTintColor);
  v5 = thumbTintColor;
  visualElement = [(UISwitch *)self visualElement];
  [visualElement setThumbTintColor:v5];
}

- (void)setOffImage:(UIImage *)offImage
{
  objc_storeStrong(&self->_offImage, offImage);
  v5 = offImage;
  visualElement = [(UISwitch *)self visualElement];
  [visualElement setOffImage:v5];
}

- (void)setOnImage:(UIImage *)onImage
{
  objc_storeStrong(&self->_onImage, onImage);
  v5 = onImage;
  visualElement = [(UISwitch *)self visualElement];
  [visualElement setOnImage:v5];
}

- (void)_setAlwaysShowsOnOffLabel:(BOOL)label
{
  labelCopy = label;
  visualElement = [(UISwitch *)self visualElement];
  [visualElement setShowsOnOffLabel:labelCopy];

  self->_alwaysShowOnOffLabel = labelCopy;
}

- (void)_showingOnOffLabelChanged
{
  visualElement = [(UISwitch *)self visualElement];
  [visualElement setShowsOnOffLabel:{-[UISwitch _shouldShowOnOffLabels](self, "_shouldShowOnOffLabels")}];
}

- (void)setTitle:(NSString *)title
{
  v4 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithValidatedFormat:0x1EFBB07D0 validFormatSpecifiers:@"%@ %@" error:0, v8, v6];
  [(UIView *)self _throwForUnsupportedNonMacIdiomBehaviorWithReason:v7];
}

- (void)setPreferredStyle:(UISwitchStyle)preferredStyle
{
  if (self->_preferredStyle != preferredStyle)
  {
    self->_preferredStyle = preferredStyle;
    traitCollection = [(UIView *)self traitCollection];
    [traitCollection userInterfaceIdiom];

    [(UISwitch *)self _setStyle:2];
  }
}

- (void)_setImpactFeedbackGenerator:(id)generator
{
  generatorCopy = generator;
  visualElement = [(UISwitch *)self visualElement];
  impactFeedbackGenerator = [visualElement impactFeedbackGenerator];
  isActive = [impactFeedbackGenerator isActive];

  if (isActive)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISwitch.m" lineNumber:564 description:@"Impact feedback behavior should not be changed while active."];
  }

  visualElement2 = [(UISwitch *)self visualElement];
  [visualElement2 setImpactFeedbackGenerator:generatorCopy];
}

- (UIImpactFeedbackGenerator)_impactFeedbackGenerator
{
  visualElement = [(UISwitch *)self visualElement];
  impactFeedbackGenerator = [visualElement impactFeedbackGenerator];

  return impactFeedbackGenerator;
}

- (CGPoint)accessibilityActivationPoint
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5 && ([(UISwitch *)self visualElement], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    visualElement = [(UISwitch *)self visualElement];
    [visualElement accessibilityActivationPoint];
    v8 = v7;
    v10 = v9;

    v11 = v8;
    v12 = v10;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UISwitch;
    [&v13 accessibilityActivationPoint];
  }

  result.y = v12;
  result.x = v11;
  return result;
}

+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)behavior
{
  if (behavior)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  _UnsupportedFlags_0 = _UnsupportedFlags_0 & 0xEF | v3;
}

@end