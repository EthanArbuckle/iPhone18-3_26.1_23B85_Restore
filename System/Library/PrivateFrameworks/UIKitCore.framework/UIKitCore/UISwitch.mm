@interface UISwitch
+ (id)visualElementForTraitCollection:(id)a3;
+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)a3;
- (BOOL)_isFixedSize;
- (CGPoint)accessibilityActivationPoint;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)_layoutSizeThatFits:(CGSize)a3 fixedAxes:(unint64_t)a4;
- (UIEdgeInsets)alignmentRectInsets;
- (UIImpactFeedbackGenerator)_impactFeedbackGenerator;
- (UISwitch)initWithCoder:(NSCoder *)coder;
- (UISwitch)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_refreshVisualElement;
- (void)_refreshVisualElementForTraitCollection:(id)a3 populatingAPIProperties:(BOOL)a4;
- (void)_setAlwaysShowsOnOffLabel:(BOOL)a3;
- (void)_setImpactFeedbackGenerator:(id)a3;
- (void)_setStyle:(int64_t)a3;
- (void)_showingOnOffLabelChanged;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)setEnabled:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setOffImage:(UIImage *)offImage;
- (void)setOn:(BOOL)a3 animated:(BOOL)a4 notifyingVisualElement:(BOOL)a5;
- (void)setOnImage:(UIImage *)onImage;
- (void)setOnTintColor:(UIColor *)onTintColor;
- (void)setPreferredStyle:(UISwitchStyle)preferredStyle;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setThumbTintColor:(UIColor *)thumbTintColor;
- (void)setTintColor:(id)a3;
- (void)setTitle:(NSString *)title;
- (void)tintColorDidChange;
- (void)visualElement:(id)a3 transitionedToOn:(BOOL)a4;
@end

@implementation UISwitch

- (BOOL)_isFixedSize
{
  v2 = [(UISwitch *)self visualElement];
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [objc_opt_class() isFixedSize];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = UISwitch;
  [(UIView *)&v4 tintColorDidChange];
  v3 = [(UISwitch *)self visualElement];
  [v3 tintColorDidChange];
}

- (UIEdgeInsets)alignmentRectInsets
{
  v3 = [(UISwitch *)self visualElement];
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
      [v3 alignmentRectInsets];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIAccessibilityOnOffSwitchLabelsDidChangeNotification" object:0];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = UISwitch;
  [(UIControl *)&v15 encodeWithCoder:v4];
  if ([(UIControl *)self isEnabled])
  {
    [v4 encodeBool:-[UIControl isEnabled](self forKey:{"isEnabled"), @"UISwitchEnabled"}];
  }

  if ([(UISwitch *)self isOn])
  {
    [v4 encodeBool:-[UISwitch isOn](self forKey:{"isOn"), @"UISwitchOn"}];
  }

  v5 = [(UISwitch *)self onTintColor];

  if (v5)
  {
    v6 = [(UISwitch *)self onTintColor];
    [v4 encodeObject:v6 forKey:@"UISwitchOnTintColor"];
  }

  v7 = [(UISwitch *)self tintColor];

  if (v7)
  {
    v8 = [(UISwitch *)self tintColor];
    [v4 encodeObject:v8 forKey:@"UISwitchTintColor"];
  }

  v9 = [(UISwitch *)self thumbTintColor];

  if (v9)
  {
    v10 = [(UISwitch *)self thumbTintColor];
    [v4 encodeObject:v10 forKey:@"UISwitchThumbTintColor"];
  }

  v11 = [(UISwitch *)self onImage];

  if (v11)
  {
    v12 = [(UISwitch *)self onImage];
    [v4 encodeObject:v12 forKey:@"UISwitchOnImage"];
  }

  v13 = [(UISwitch *)self offImage];

  if (v13)
  {
    v14 = [(UISwitch *)self offImage];
    [v4 encodeObject:v14 forKey:@"UISwitchOffImage"];
  }

  if ([(UISwitch *)self preferredStyle])
  {
    [v4 encodeInteger:self->_style forKey:@"UISwitchStyle"];
  }
}

- (void)_populateArchivedSubviews:(id)a3
{
  v6.receiver = self;
  v6.super_class = UISwitch;
  v4 = a3;
  [(UIView *)&v6 _populateArchivedSubviews:v4];
  v5 = [(UISwitch *)self visualElement:v6.receiver];
  [v4 removeObject:v5];
}

+ (id)visualElementForTraitCollection:(id)a3
{
  v5 = a3;
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
  v8 = [v5 userInterfaceIdiom];
  v9 = 0;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      if ((_UISolariumEnabled() & 1) == 0)
      {
        v16 = UISwitchCarPlayVisualElement;
        goto LABEL_15;
      }
    }

    else if (v8 != 5 && v8 != 8)
    {
      goto LABEL_18;
    }

LABEL_14:
    v16 = v7;
LABEL_15:
    v9 = objc_alloc_init(v16);
    goto LABEL_18;
  }

  if (v8 < 2)
  {
    goto LABEL_14;
  }

  if (v8 == -1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = v10;
    v12 = @"UISwitch attempted to be initialized or updated with a trait collection containing UIUserInterfaceIdiomUnspecified.";
    v13 = a2;
    v14 = a1;
    v15 = 250;
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_18;
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = v10;
    v12 = @"UISwitch cannot be used on tvOS.";
    v13 = a2;
    v14 = a1;
    v15 = 247;
  }

  [v10 handleFailureInMethod:v13 object:v14 file:@"UISwitch.m" lineNumber:v15 description:v12];

  v9 = 0;
LABEL_18:

  return v9;
}

- (void)_refreshVisualElement
{
  v3 = [(UIView *)self traitCollection];
  [(UISwitch *)self _refreshVisualElementForTraitCollection:v3 populatingAPIProperties:1];
}

- (void)_refreshVisualElementForTraitCollection:(id)a3 populatingAPIProperties:(BOOL)a4
{
  v4 = a4;
  v8 = __visualElementProvider;
  if (!__visualElementProvider)
  {
    v8 = self;
  }

  v24 = v8;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = [(UISwitch *)self style];
  if (objc_opt_respondsToSelector())
  {
    [v10 visualElementForTraitCollection:v9 style:v11];
  }

  else
  {
    [v10 visualElementForTraitCollection:v9];
  }
  v12 = ;

  if (!v12)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [(UIView *)v24 description];
    [v22 handleFailureInMethod:a2 object:self file:@"UISwitch.m" lineNumber:275 description:{@"Nil UISwitch visual element provided by %@", v23}];
  }

  v13 = [(UISwitch *)self visualElement];
  [v13 removeFromSuperview];

  v14 = [(UISwitch *)self visualElement];
  [v14 setSwitchControl:0];

  [(UISwitch *)self setVisualElement:0];
  [(UISwitch *)self setVisualElement:v12];
  v15 = [(UISwitch *)self visualElement];
  [v15 setSwitchControl:self];

  if ([(UISwitch *)self _isFixedSize])
  {
    [(UIView *)self frame];
    v16 = self;
  }

  else
  {
    [(UIView *)v12 setAutoresizingMask:18];
    [(UIView *)self bounds];
    v16 = v12;
  }

  [(UISwitch *)v16 setFrame:?];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self addSubview:v12];
  [(UISwitch *)v12 setOn:[(UISwitch *)self isOn] animated:0];
  [(UISwitch *)v12 setShowsOnOffLabel:[(UISwitch *)self _shouldShowOnOffLabels]];
  [(UISwitch *)v12 setEnabled:[(UIControl *)self isEnabled]];
  [(UISwitch *)v12 setSemanticContentAttribute:[(UIView *)self semanticContentAttribute]];
  if (v4)
  {
    v17 = [(UISwitch *)self onImage];
    [(UISwitch *)v12 setOnImage:v17];

    v18 = [(UISwitch *)self offImage];
    [(UISwitch *)v12 setOffImage:v18];

    v19 = [(UISwitch *)self tintColor];
    [(UISwitch *)v12 setTintColor:v19];

    v20 = [(UISwitch *)self onTintColor];
    [(UISwitch *)v12 setOnTintColor:v20];

    v21 = [(UISwitch *)self thumbTintColor];
    [(UISwitch *)v12 setThumbTintColor:v21];
  }
}

- (void)visualElement:(id)a3 transitionedToOn:(BOOL)a4
{
  [(UISwitch *)self setOn:a4 animated:0 notifyingVisualElement:0];

  [(UIControl *)self sendActionsForControlEvents:4096];
}

- (void)_setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(UISwitch *)self _refreshVisualElement];
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UISwitch *)self visualElement];
  v7 = objc_opt_class();
  if ([(UISwitch *)self _isFixedSize])
  {
    [v7 preferredContentSize];
  }

  else
  {
    [v6 _intrinsicSizeWithinSize:{width, height}];
  }

  v10 = v8;
  v11 = v9;

  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  if (![(UISwitch *)self _isFixedSize])
  {

    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)_layoutSizeThatFits:(CGSize)a3 fixedAxes:(unint64_t)a4
{
  [(UISwitch *)self _intrinsicSizeWithinSize:a4, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UISwitch *)self visualElement];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(UISwitch *)self visualElement];
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
  v8 = [(UISwitch *)self visualElement];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(UISwitch *)self visualElement];
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
  v10 = [(UISwitch *)self visualElement];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(UISwitch *)self visualElement];
    [v12 pointerInteraction:v13 willEnterRegion:v8 animator:v9];
  }
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(UISwitch *)self visualElement];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(UISwitch *)self visualElement];
    [v12 pointerInteraction:v13 willExitRegion:v8 animator:v9];
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = UISwitch;
  [(UIView *)&v6 setSemanticContentAttribute:?];
  v5 = [(UISwitch *)self visualElement];
  [v5 setSemanticContentAttribute:a3];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = UISwitch;
  [(UIControl *)&v6 setEnabled:?];
  v5 = [(UISwitch *)self visualElement];
  [v5 setEnabled:v3];
}

- (void)setOn:(BOOL)a3 animated:(BOOL)a4 notifyingVisualElement:(BOOL)a5
{
  if (self->_on != a3)
  {
    v5 = a3;
    self->_on = a3;
    if (a5)
    {
      v6 = a4;
      v7 = [(UISwitch *)self visualElement];
      [v7 setOn:v5 animated:v6];
    }
  }
}

- (void)setOnTintColor:(UIColor *)onTintColor
{
  objc_storeStrong(&self->_onTintColor, onTintColor);
  v5 = onTintColor;
  v6 = [(UISwitch *)self visualElement];
  [v6 setOnTintColor:v5];
}

- (void)setTintColor:(id)a3
{
  objc_storeStrong(&self->_tintColor, a3);
  v5 = a3;
  v6 = [(UISwitch *)self visualElement];
  [v6 setTintColor:v5];
}

- (void)setThumbTintColor:(UIColor *)thumbTintColor
{
  objc_storeStrong(&self->_thumbTintColor, thumbTintColor);
  v5 = thumbTintColor;
  v6 = [(UISwitch *)self visualElement];
  [v6 setThumbTintColor:v5];
}

- (void)setOffImage:(UIImage *)offImage
{
  objc_storeStrong(&self->_offImage, offImage);
  v5 = offImage;
  v6 = [(UISwitch *)self visualElement];
  [v6 setOffImage:v5];
}

- (void)setOnImage:(UIImage *)onImage
{
  objc_storeStrong(&self->_onImage, onImage);
  v5 = onImage;
  v6 = [(UISwitch *)self visualElement];
  [v6 setOnImage:v5];
}

- (void)_setAlwaysShowsOnOffLabel:(BOOL)a3
{
  v3 = a3;
  v5 = [(UISwitch *)self visualElement];
  [v5 setShowsOnOffLabel:v3];

  self->_alwaysShowOnOffLabel = v3;
}

- (void)_showingOnOffLabelChanged
{
  v3 = [(UISwitch *)self visualElement];
  [v3 setShowsOnOffLabel:{-[UISwitch _shouldShowOnOffLabels](self, "_shouldShowOnOffLabels")}];
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
    v5 = [(UIView *)self traitCollection];
    [v5 userInterfaceIdiom];

    [(UISwitch *)self _setStyle:2];
  }
}

- (void)_setImpactFeedbackGenerator:(id)a3
{
  v5 = a3;
  v6 = [(UISwitch *)self visualElement];
  v7 = [v6 impactFeedbackGenerator];
  v8 = [v7 isActive];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UISwitch.m" lineNumber:564 description:@"Impact feedback behavior should not be changed while active."];
  }

  v10 = [(UISwitch *)self visualElement];
  [v10 setImpactFeedbackGenerator:v5];
}

- (UIImpactFeedbackGenerator)_impactFeedbackGenerator
{
  v2 = [(UISwitch *)self visualElement];
  v3 = [v2 impactFeedbackGenerator];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5 && ([(UISwitch *)self visualElement], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(UISwitch *)self visualElement];
    [v6 accessibilityActivationPoint];
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

+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)a3
{
  if (a3)
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