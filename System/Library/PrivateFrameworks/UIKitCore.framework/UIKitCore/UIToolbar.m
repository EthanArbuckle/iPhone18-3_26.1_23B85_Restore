@interface UIToolbar
+ (Class)_visualProviderClassForToolbar:(id)a3;
+ (double)defaultHeightForBarSize:(int)a3;
+ (id)_visualProviderForToolbar:(id)a3;
- (BOOL)_accessibilityHUDGestureManager:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)_shouldDecodeSubviews;
- (BOOL)_subclassImplementsDrawRect;
- (BOOL)isTranslucent;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_frameOfBarButtonItem:(id)a3;
- (CGSize)defaultSizeForOrientation:(int64_t)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)_backdropViewLayerGroupName;
- (NSString)description;
- (UIImage)backgroundImageForToolbarPosition:(UIBarPosition)topOrBottom barMetrics:(UIBarMetrics)barMetrics;
- (UIImage)shadowImageForToolbarPosition:(UIBarPosition)topOrBottom;
- (UIToolbar)initWithCoder:(id)a3;
- (UIToolbar)initWithFrame:(CGRect)a3;
- (UIToolbarAppearance)standardAppearance;
- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6;
- (id)_accessibilityHUDGestureManager:(id)a3 HUDItemForPoint:(CGPoint)a4;
- (id)_itemAtPoint:(CGPoint)a3;
- (id)_traitCollectionForChildEnvironment:(id)a3;
- (id)delegate;
- (id)initInView:(id)a3 withFrame:(CGRect)a4 withItemList:(id)a5;
- (int64_t)_expectedInterfaceOrientation;
- (int64_t)_hintFromCurrentAppearance;
- (void)_accessibilityHUDGestureManager:(id)a3 gestureLiftedAtPoint:(CGPoint)a4;
- (void)_customViewChangedForButtonItem:(id)a3;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_doCommonToolbarInit;
- (void)_effectiveBarTintColorDidChangeWithPreviousColor:(id)a3;
- (void)_frameOrBoundsChangedWithVisibleSizeChange:(BOOL)a3 wasMinibar:(BOOL)a4;
- (void)_installDefaultAppearance;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_sendAction:(id)a3 withEvent:(id)a4;
- (void)_setBackdropViewLayerGroupName:(id)a3;
- (void)_setBarPosition:(int64_t)a3;
- (void)_setButtonBackgroundImage:(id)a3 mini:(id)a4 forStates:(unint64_t)a5;
- (void)_setDisableBlurTinting:(BOOL)a3;
- (void)_setForceTopBarAppearance:(BOOL)a3;
- (void)_setHidesShadow:(BOOL)a3;
- (void)_setLocked:(BOOL)a3;
- (void)_setNeedsBackgroundViewUpdate;
- (void)_setVisualAltitude:(double)a3;
- (void)_setVisualAltitudeBias:(CGSize)a3;
- (void)_setupAXHUDGestureIfNecessary;
- (void)_updateBarForStyle;
- (void)backdropView:(id)a3 didChangeToGraphicsQuality:(int64_t)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)setBackgroundEffects:(id)a3;
- (void)setBackgroundImage:(UIImage *)backgroundImage forToolbarPosition:(UIBarPosition)topOrBottom barMetrics:(UIBarMetrics)barMetrics;
- (void)setBarStyle:(UIBarStyle)barStyle;
- (void)setBarTintColor:(UIColor *)barTintColor;
- (void)setBounds:(CGRect)a3;
- (void)setCompactAppearance:(UIToolbarAppearance *)compactAppearance;
- (void)setCompactScrollEdgeAppearance:(UIToolbarAppearance *)compactScrollEdgeAppearance;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)a3;
- (void)setItems:(NSArray *)items animated:(BOOL)animated;
- (void)setScrollEdgeAppearance:(UIToolbarAppearance *)scrollEdgeAppearance;
- (void)setShadowImage:(UIImage *)shadowImage forToolbarPosition:(UIBarPosition)topOrBottom;
- (void)setStandardAppearance:(UIToolbarAppearance *)standardAppearance;
- (void)setTintColor:(UIColor *)tintColor;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3;
- (void)setTranslucent:(BOOL)translucent;
@end

@implementation UIToolbar

- (BOOL)_subclassImplementsDrawRect
{
  if (!__drawRectUIToolbarIMP)
  {
    __drawRectUIToolbarIMP = [UIToolbar instanceMethodForSelector:sel_drawRect_];
  }

  v3 = [(UIToolbar *)self methodForSelector:sel_drawRect_];
  if (v3)
  {
    v4 = v3 == __drawRectUIToolbarIMP;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (void)_doCommonToolbarInit
{
  v10[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = 512;
  }

  else
  {
    v4 = 0;
  }

  *&self->_toolbarFlags = *&self->_toolbarFlags & 0xFDFF | v4;

  v5 = [objc_opt_class() _visualProviderForToolbar:self];
  visualProvider = self->_visualProvider;
  self->_visualProvider = v5;

  if (!self->_standardAppearance)
  {
    if (_UIBarAppearanceAPIVersion() < 2)
    {
      goto LABEL_8;
    }

    [(UIToolbar *)self _installDefaultAppearance];
  }

  [(_UIToolbarVisualProvider *)self->_visualProvider setUseModernAppearance:1];
LABEL_8:
  [(UIToolbar *)self _setNeedsBackgroundViewUpdate];
  if ([(UIView *)self translatesAutoresizingMaskIntoConstraints])
  {
    [(UIView *)self _setHostsLayoutEngine:1];
  }

  [(UIView *)self _setSafeAreaCornerAdaptation:3];
  [(_UIToolbarVisualProvider *)self->_visualProvider prepare];
  [(UIToolbar *)self _setupAXHUDGestureIfNecessary];
  v10[0] = 0x1EFE32398;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [(UIView *)self _registerForTraitTokenChanges:v7 withTarget:self action:sel__setupAXHUDGestureIfNecessary];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:self selector:sel__largeContentViewerEnabledStatusDidChange_ name:@"UILargeContentViewerInteractionEnabledStatusDidChangeNotification" object:0];
}

- (UIToolbarAppearance)standardAppearance
{
  standardAppearance = self->_standardAppearance;
  if (!standardAppearance)
  {
    [(UIToolbar *)self _installDefaultAppearance];
    standardAppearance = self->_standardAppearance;
  }

  return standardAppearance;
}

- (void)_installDefaultAppearance
{
  if (!self->_standardAppearance)
  {
    v3 = objc_opt_new();
    standardAppearance = self->_standardAppearance;
    self->_standardAppearance = v3;

    v5 = [(_UIToolbarVisualProvider *)self->_visualProvider appearanceObserver];
    v6 = self->_standardAppearance;
    if (v6)
    {
      v7 = v5;
      objc_storeWeak(&v6->super._changeObserver, v5);
      v5 = v7;
    }
  }
}

- (void)_setNeedsBackgroundViewUpdate
{
  if (![(UIView *)self _isInLayoutSubviews])
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setupAXHUDGestureIfNecessary
{
  if (!self->_axHUDGestureManager)
  {
    if (dyld_program_sdk_at_least())
    {
      v3 = [(UIView *)self traitCollection];
      v4 = [v3 _isLargeContentViewerEnabled];

      if (v4)
      {
        v5 = [[UIAccessibilityHUDGestureManager alloc] initWithView:self delegate:self];
        axHUDGestureManager = self->_axHUDGestureManager;
        self->_axHUDGestureManager = v5;
      }
    }
  }
}

- (CGSize)intrinsicContentSize
{
  [(_UIToolbarVisualProvider *)self->_visualProvider defaultSizeForOrientation:[(UIToolbar *)self _expectedInterfaceOrientation]];
  v3 = -1.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIToolbar;
  [(UIView *)&v3 layoutSubviews];
  [(_UIToolbarVisualProvider *)self->_visualProvider layoutSubviews];
}

- (void)_updateBarForStyle
{
  if ((*&self->_toolbarFlags & 0x3F) == 9)
  {
    v3 = 2;
  }

  else
  {
    v3 = *&self->_toolbarFlags & 7;
  }

  [(_UIToolbarVisualProvider *)self->_visualProvider updateBarForStyle:v3];
  [(UIView *)self setNeedsDisplay];

  [(UIToolbar *)self _setNeedsBackgroundViewUpdate];
}

- (int64_t)_expectedInterfaceOrientation
{
  v3 = [(UIView *)self window];
  if (!v3)
  {
    if ((*&self->_toolbarFlags & 0x200) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v4 = [WeakRetained _toolbarWindowForInterfaceOrientation:self];

      if (v4)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 1;
    goto LABEL_10;
  }

  v4 = v3;
LABEL_3:
  v5 = [v4 _windowInterfaceOrientation];
  if (!v5)
  {
    v5 = [UIApp _sceneInterfaceOrientationFromWindow:v4];
  }

  v6 = v5;
LABEL_10:

  return v6;
}

- (BOOL)isTranslucent
{
  toolbarFlags = self->_toolbarFlags;
  v4 = [(UIToolbar *)self _effectiveBarTintColor];
  v5 = [(UIView *)self _screen];
  IsTranslucentOnScreen = _UIBarStyleWithTintColorIsTranslucentOnScreen(toolbarFlags & 7, v4, v5);

  v7 = (*&self->_toolbarFlags >> 3) & 7;
  if (v7)
  {
    return v7 == 1;
  }

  v9 = [(UIView *)self _screen];
  v10 = [v9 _userInterfaceIdiom];

  result = v10 != 3 && IsTranslucentOnScreen;
  if (v10 == 3 && IsTranslucentOnScreen)
  {
    return (*&self->_toolbarFlags & 7) != 3;
  }

  return result;
}

- (void)dealloc
{
  self->_disableAutolayoutWarnings = 1;
  v2.receiver = self;
  v2.super_class = UIToolbar;
  [(UIView *)&v2 dealloc];
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = UIToolbar;
  v3 = [(UIView *)&v6 description];
  v4 = [v3 mutableCopy];

  if ([objc_opt_class() _forceLegacyVisualProvider])
  {
    [v4 appendFormat:@" forcedLegacyProvider"];
  }

  if (self->_standardAppearance)
  {
    [v4 appendFormat:@" standardAppearance=%p", self->_standardAppearance];
  }

  if (self->_compactAppearance)
  {
    [v4 appendFormat:@" compactAppearance=%p", self->_compactAppearance];
  }

  if (self->_scrollEdgeAppearance)
  {
    [v4 appendFormat:@" scrollEdgeAppearance=%p", self->_scrollEdgeAppearance];
  }

  if (self->_compactScrollEdgeAppearance)
  {
    [v4 appendFormat:@" compactScrollEdgeAppearance=%p", self->_compactScrollEdgeAppearance];
  }

  return v4;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8.receiver = self;
  v8.super_class = UIToolbar;
  if ([(UIView *)&v8 pointInside:a4 withEvent:?])
  {
    return 1;
  }

  [(_UIToolbarVisualProvider *)self->_visualProvider backgroundFrame];
  v9.x = x;
  v9.y = y;
  return CGRectContainsPoint(v10, v9);
}

+ (id)_visualProviderForToolbar:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_msgSend(a1 _visualProviderClassForToolbar:{v4)), "initWithToolbar:", v4}];

  return v5;
}

+ (Class)_visualProviderClassForToolbar:(id)a3
{
  v3 = a3;
  if (([objc_opt_class() _forceLegacyVisualProvider] & 1) == 0)
  {
    NSClassFromString(&cfstr_Sftoolbar.isa);
    v4 = (objc_opt_isKindOfClass() & 1) != 0 ? _UISolariumEnabled() : 1;
    if (_UISwiftUIToolbarEnabled() && v4)
    {
      v5 = +[_UIToolbarVisualProviderSwiftClassProvider providerClass];
      if (v5)
      {
        v6 = v5;
        goto LABEL_13;
      }

      if (os_variant_has_internal_diagnostics())
      {
        v10 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Failed to load toolbar visual provider class, falling back to the default.", buf, 2u);
        }
      }

      else
      {
        v7 = *(__UILogGetCategoryCachedImpl("Assert", &_visualProviderClassForToolbar____s_category) + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v11[0] = 0;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Failed to load toolbar visual provider class, falling back to the default.", v11, 2u);
        }
      }
    }
  }

  v6 = objc_opt_class();
LABEL_13:
  v8 = v6;

  return v8;
}

- (UIToolbar)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIToolbar;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_barPosition = 1;
    [(UIToolbar *)v3 _doCommonToolbarInit];
  }

  return v4;
}

- (UIToolbar)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = UIToolbar;
  v5 = [(UIView *)&v20 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    *&v5->_toolbarFlags &= 0xFFF8u;
    if ([v4 containsValueForKey:@"UIBarStyle"])
    {
      *&v6->_toolbarFlags = *&v6->_toolbarFlags & 0xFFF8 | [v4 decodeIntegerForKey:@"UIBarStyle"] & 7;
    }

    v7 = [v4 decodeObjectForKey:@"UIDelegate"];
    objc_storeWeak(&v6->_delegate, v7);

    v8 = [v4 decodeObjectForKey:@"UIBarTintColor"];
    barTintColor = v6->_barTintColor;
    v6->_barTintColor = v8;

    if ([v4 containsValueForKey:@"UIBarPosition"])
    {
      v6->_barPosition = [v4 decodeIntegerForKey:@"UIBarPosition"];
    }

    if ([v4 containsValueForKey:@"UIBarTranslucence"])
    {
      *&v6->_toolbarFlags = (8 * ([v4 decodeIntegerForKey:@"UIBarTranslucence"] & 7)) | *&v6->_toolbarFlags & 0xFFC7;
    }

    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      *&v6->_toolbarFlags |= 0x80u;
    }

    v10 = [v4 decodeObjectForKey:@"UIToolbarStandardAppearance"];
    standardAppearance = v6->_standardAppearance;
    v6->_standardAppearance = v10;

    if (v6->_standardAppearance)
    {
      v12 = [v4 decodeObjectForKey:@"UIToolbarCompactAppearance"];
      compactAppearance = v6->_compactAppearance;
      v6->_compactAppearance = v12;

      v14 = [v4 decodeObjectForKey:@"UIToolbarScrollEdgeAppearance"];
      scrollEdgeAppearance = v6->_scrollEdgeAppearance;
      v6->_scrollEdgeAppearance = v14;

      v16 = [v4 decodeObjectForKey:@"UIToolbarCompactScrollEdgeAppearance"];
      compactScrollEdgeAppearance = v6->_compactScrollEdgeAppearance;
      v6->_compactScrollEdgeAppearance = v16;
    }

    [(UIToolbar *)v6 _doCommonToolbarInit];
    v18 = [v4 decodeObjectForKey:@"UIItems"];
    if (v18)
    {
      [(UIToolbar *)v6 setItems:v18 animated:0];
    }
  }

  return v6;
}

- (void)_populateArchivedSubviews:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = UIToolbar;
  [(UIView *)&v19 _populateArchivedSubviews:v4];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 view];

        if (v11)
        {
          v12 = [v10 view];
          [v4 removeObject:v12];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [(_UIToolbarVisualProvider *)self->_visualProvider currentBackgroundView];

  if (v13)
  {
    v14 = [(_UIToolbarVisualProvider *)self->_visualProvider currentBackgroundView];
    [v4 removeObject:v14];
  }

  if (self->_shadowView)
  {
    [v4 removeObject:?];
  }

  [(_UIToolbarVisualProvider *)self->_visualProvider updateArchivedSubviews:v4, v15];
}

- (BOOL)_shouldDecodeSubviews
{
  v2 = [objc_opt_class() _visualProviderClassForToolbar:self];

  return [v2 shouldDecodeSubviews];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UIToolbar;
  [(UIView *)&v14 encodeWithCoder:v4];
  if ((*&self->_toolbarFlags & 7) != 0)
  {
    [v4 encodeInteger:? forKey:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [v4 encodeConditionalObject:WeakRetained forKey:@"UIDelegate"];
  }

  barTintColor = self->_barTintColor;
  if (barTintColor)
  {
    [v4 encodeObject:barTintColor forKey:@"UIBarTintColor"];
  }

  items = self->_items;
  if (items)
  {
    [v4 encodeObject:items forKey:@"UIItems"];
  }

  barPosition = self->_barPosition;
  if (barPosition)
  {
    [v4 encodeInteger:barPosition forKey:@"UIBarPosition"];
  }

  v9 = (*&self->_toolbarFlags >> 3) & 7;
  if (v9)
  {
    [v4 encodeInteger:v9 forKey:@"UIBarTranslucence"];
  }

  if ([(_UIToolbarVisualProvider *)self->_visualProvider useModernAppearance])
  {
    standardAppearance = self->_standardAppearance;
    if (standardAppearance)
    {
      [v4 encodeObject:standardAppearance forKey:@"UIToolbarStandardAppearance"];
    }

    compactAppearance = self->_compactAppearance;
    if (compactAppearance)
    {
      [v4 encodeObject:compactAppearance forKey:@"UIToolbarCompactAppearance"];
    }

    scrollEdgeAppearance = self->_scrollEdgeAppearance;
    if (scrollEdgeAppearance)
    {
      [v4 encodeObject:scrollEdgeAppearance forKey:@"UIToolbarScrollEdgeAppearance"];
    }

    compactScrollEdgeAppearance = self->_compactScrollEdgeAppearance;
    if (compactScrollEdgeAppearance)
    {
      [v4 encodeObject:compactScrollEdgeAppearance forKey:@"UIToolbarCompactScrollEdgeAppearance"];
    }
  }
}

- (void)_setBarPosition:(int64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  if (v3 != self->_barPosition)
  {
    self->_barPosition = v3;
    [(UIToolbar *)self _setNeedsBackgroundViewUpdate];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  if ((*&self->_toolbarFlags & 0x40) != 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot manually set the delegate on a UIToolbar managed by a controller."];
  }

  v4 = objc_storeWeak(&self->_delegate, obj);
  if (objc_opt_respondsToSelector())
  {
    v5 = 512;
  }

  else
  {
    v5 = 0;
  }

  *&self->_toolbarFlags = *&self->_toolbarFlags & 0xFDFF | v5;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setBarTintColor:(UIColor *)barTintColor
{
  v4 = barTintColor;
  v5 = self->_barTintColor;
  if (v5 != v4)
  {
    v9 = v4;
    v6 = v4;
    v7 = self->_barTintColor;
    self->_barTintColor = v6;
    v8 = v5;

    [(UIToolbar *)self _effectiveBarTintColorDidChangeWithPreviousColor:v8];
    v4 = v9;
  }
}

- (void)setTintColor:(UIColor *)tintColor
{
  v4 = tintColor;
  v5 = [(UIToolbar *)self _effectiveBarTintColor];
  v6.receiver = self;
  v6.super_class = UIToolbar;
  [(UIView *)&v6 setTintColor:v4];

  [(UIToolbar *)self _effectiveBarTintColorDidChangeWithPreviousColor:v5];
}

- (void)_effectiveBarTintColorDidChangeWithPreviousColor:(id)a3
{
  [(UIView *)self setNeedsDisplay];

  [(UIToolbar *)self _setNeedsBackgroundViewUpdate];
}

- (void)setBarStyle:(UIBarStyle)barStyle
{
  toolbarFlags = self->_toolbarFlags;
  if ((toolbarFlags & 7) != barStyle)
  {
    *&self->_toolbarFlags = toolbarFlags & 0xFFF8 | barStyle & 7;
    [(UIToolbar *)self _updateBarForStyle];
  }
}

- (void)setTranslucent:(BOOL)translucent
{
  v3 = 1;
  if (!translucent)
  {
    v3 = 2;
  }

  toolbarFlags = self->_toolbarFlags;
  if (v3 != ((toolbarFlags >> 3) & 7))
  {
    *&self->_toolbarFlags = toolbarFlags & 0xFFC7 | (8 * v3);
    [(UIToolbar *)self _updateBarForStyle];
  }
}

- (NSString)_backdropViewLayerGroupName
{
  v2 = [(UIView *)self traitCollection];
  v3 = objc_opt_self();
  v4 = [v2 objectForTrait:v3];

  return v4;
}

- (void)_setBackdropViewLayerGroupName:(id)a3
{
  v7 = a3;
  v4 = [(UIView *)self traitOverrides];
  v5 = objc_opt_self();
  if (v7)
  {
    [v4 setObject:v7 forTrait:v5];
  }

  else
  {
    v6 = [v4 containsTrait:v5];

    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = [(UIView *)self traitOverrides];
    v5 = objc_opt_self();
    [v4 removeTrait:v5];
  }

LABEL_6:
}

- (void)backdropView:(id)a3 didChangeToGraphicsQuality:(int64_t)a4
{
  v5 = [(UIView *)self subviews];
  _UINavigationButtonUpdateAccessibilityBackgrounds(v5, a4 == 100, 0);
}

- (void)setCompactAppearance:(UIToolbarAppearance *)compactAppearance
{
  v4 = compactAppearance;
  v5 = self->_compactAppearance;
  v6 = v4;
  v13 = v6;
  if (v5 == v6)
  {

    goto LABEL_13;
  }

  if (v6 && v5)
  {
    v7 = [(UIBarAppearance *)v5 isEqual:v6];

    if (v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v8 = self->_compactAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v13 copy];
  v10 = self->_compactAppearance;
  self->_compactAppearance = v9;

  [(UIToolbar *)self _installDefaultAppearance];
  v11 = [(_UIToolbarVisualProvider *)self->_visualProvider appearanceObserver];
  v12 = self->_compactAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, v11);
  }

  [(UIBarAppearance *)self->_compactAppearance _signalCategoryChanges:?];
LABEL_13:
  [(_UIToolbarVisualProvider *)self->_visualProvider setUseModernAppearance:1];
}

- (void)setStandardAppearance:(UIToolbarAppearance *)standardAppearance
{
  v4 = standardAppearance;
  v5 = self->_standardAppearance;
  v6 = v4;
  v13 = v6;
  if (v5 == v6)
  {

    goto LABEL_13;
  }

  if (v6 && v5)
  {
    v7 = [(UIBarAppearance *)v5 isEqual:v6];

    if (v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v8 = self->_standardAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v13 copy];
  v10 = self->_standardAppearance;
  self->_standardAppearance = v9;

  [(UIToolbar *)self _installDefaultAppearance];
  v11 = [(_UIToolbarVisualProvider *)self->_visualProvider appearanceObserver];
  v12 = self->_standardAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, v11);
  }

  [(UIBarAppearance *)self->_standardAppearance _signalCategoryChanges:?];
LABEL_13:
  [(_UIToolbarVisualProvider *)self->_visualProvider setUseModernAppearance:1];
}

- (void)setScrollEdgeAppearance:(UIToolbarAppearance *)scrollEdgeAppearance
{
  v4 = scrollEdgeAppearance;
  v5 = self->_scrollEdgeAppearance;
  v6 = v4;
  v13 = v6;
  if (v5 == v6)
  {

    goto LABEL_13;
  }

  if (v6 && v5)
  {
    v7 = [(UIBarAppearance *)v5 isEqual:v6];

    if (v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v8 = self->_scrollEdgeAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v13 copy];
  v10 = self->_scrollEdgeAppearance;
  self->_scrollEdgeAppearance = v9;

  [(UIToolbar *)self _installDefaultAppearance];
  v11 = [(_UIToolbarVisualProvider *)self->_visualProvider appearanceObserver];
  v12 = self->_scrollEdgeAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, v11);
  }

  [(UIBarAppearance *)self->_scrollEdgeAppearance _signalCategoryChanges:?];
LABEL_13:
  [(_UIToolbarVisualProvider *)self->_visualProvider setUseModernAppearance:1];
}

- (void)setCompactScrollEdgeAppearance:(UIToolbarAppearance *)compactScrollEdgeAppearance
{
  v4 = compactScrollEdgeAppearance;
  v5 = self->_compactScrollEdgeAppearance;
  v6 = v4;
  v13 = v6;
  if (v5 == v6)
  {

    goto LABEL_13;
  }

  if (v6 && v5)
  {
    v7 = [(UIBarAppearance *)v5 isEqual:v6];

    if (v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v8 = self->_compactScrollEdgeAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v13 copy];
  v10 = self->_compactScrollEdgeAppearance;
  self->_compactScrollEdgeAppearance = v9;

  [(UIToolbar *)self _installDefaultAppearance];
  v11 = [(_UIToolbarVisualProvider *)self->_visualProvider appearanceObserver];
  v12 = self->_compactScrollEdgeAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, v11);
  }

  [(UIBarAppearance *)self->_compactScrollEdgeAppearance _signalCategoryChanges:?];
LABEL_13:
  [(_UIToolbarVisualProvider *)self->_visualProvider setUseModernAppearance:1];
}

- (int64_t)_hintFromCurrentAppearance
{
  [(UIToolbar *)self _backgroundTransitionProgress];
  if (v2 == 0.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_sendAction:(id)a3 withEvent:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_items;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 view];

        if (v14 == v6)
        {
          if ([v13 action])
          {
            v15 = UIApp;
            v16 = [v13 action];
            v17 = [v13 target];
            [v15 sendAction:v16 toTarget:v17 fromSender:v13 forEvent:v7];
          }

          goto LABEL_12;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)setItems:(NSArray *)items animated:(BOOL)animated
{
  v6 = items;
  v7 = self->_items;
  v8 = v6;
  v19 = v8;
  if (v7 == v8)
  {
    WeakRetained = v8;
LABEL_13:

    v10 = v19;
    goto LABEL_14;
  }

  if (!v8 || !v7)
  {

LABEL_8:
    v7 = [(NSArray *)self->_items copy];
    v12 = [(NSArray *)v19 copy];
    v13 = self->_items;
    self->_items = v12;

    [(_UIToolbarVisualProvider *)self->_visualProvider updateItemsForNewFrame:self->_items];
    [(UIToolbar *)self _updateBarForStyle];
    v14 = [(UIToolbar *)self _effectiveBarTintColor];
    [(UIToolbar *)self _effectiveBarTintColorDidChangeWithPreviousColor:v14];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();
    v16 = v15 | animated;
    if ((v15 & 1) != 0 && !animated)
    {
      v16 = [WeakRetained _toolbarShouldAnimateItemsUpdate:self];
    }

    [(_UIToolbarVisualProvider *)self->_visualProvider updateWithItems:self->_items fromOldItems:v7 animate:v16 & 1];
    v17 = [(UIToolbar *)self _itemsDidChangeBlock];

    if (v17)
    {
      v18 = [(UIToolbar *)self _itemsDidChangeBlock];
      v18[2]();
    }

    goto LABEL_13;
  }

  v9 = [(NSArray *)v7 isEqual:v8];

  v10 = v19;
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
}

- (void)_customViewChangedForButtonItem:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_items containsObject:?])
  {
    [(_UIToolbarVisualProvider *)self->_visualProvider customViewChangedForButtonItem:v4];
  }
}

- (CGRect)_frameOfBarButtonItem:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = [(NSArray *)self->_items containsObject:v4];

  if (!v6 || v5 == 0)
  {
    v10 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v8 = [v5 superview];
    [v5 frame];
    [v8 convertRect:self toView:?];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)_accessibilityHUDGestureManager:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(UIToolbar *)self items];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v5 view];
        v12 = [v10 view];
        v13 = [v11 isDescendantOfView:v12];

        if (v13)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)_accessibilityHUDGestureManager:(id)a3 gestureLiftedAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v12 = a3;
  v7 = [(UIToolbar *)self _itemAtPoint:x, y];
  v8 = [v7 view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 view];
    v10 = [v9 _accessibilityShouldActivateOnHUDLift];

    if (!v10)
    {
      goto LABEL_5;
    }

    v8 = [v7 view];
    v11 = [v12 view];
    [v8 convertPoint:v11 fromView:{x, y}];
    [v8 _activateForAccessibilityHUDLiftAtPoint:?];
  }

LABEL_5:
}

- (id)_accessibilityHUDGestureManager:(id)a3 HUDItemForPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(UIToolbar *)self _itemAtPoint:a3];
  if (v7)
  {
    v8 = [UIAccessibilityHUDItem HUDItemForBarButtonItem:v7 atPoint:self inView:0 isBackButton:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_itemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_items;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 view];
        v13 = [v11 view];
        [(UIView *)self convertPoint:v13 toView:x, y];
        v14 = [v12 pointInside:0 withEvent:?];

        if (v14)
        {
          v15 = v11;
          goto LABEL_11;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)_traitCollectionForChildEnvironment:(id)a3
{
  v8.receiver = self;
  v8.super_class = UIToolbar;
  v4 = a3;
  v5 = [(UIView *)&v8 _traitCollectionForChildEnvironment:v4];
  v6 = [(_UIToolbarVisualProvider *)self->_visualProvider traitCollectionForChild:v4 baseTraitCollection:v5, v8.receiver, v8.super_class];

  return v6;
}

- (CGSize)defaultSizeForOrientation:(int64_t)a3
{
  [(_UIToolbarVisualProvider *)self->_visualProvider defaultSizeForOrientation:a3];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3
{
  v3 = a3;
  if ((*&self->_toolbarFlags & 0x40) != 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot manually set translatesAutoResizingMaskIntoConstraints on a UIToolbar managed by a controller."];
  }

  v5.receiver = self;
  v5.super_class = UIToolbar;
  [(UIView *)&v5 setTranslatesAutoresizingMaskIntoConstraints:v3];
}

- (void)invalidateIntrinsicContentSize
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = UIToolbar;
  [(UIView *)&v12 invalidateIntrinsicContentSize];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(UIView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidateIntrinsicContentSize];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(UIView *)self superview:a3.width];
  v6 = v5;
  if (v5)
  {
    [v5 bounds];
    width = v7;
  }

  else if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(_UIToolbarVisualProvider *)self->_visualProvider defaultSizeForOrientation:[(UIToolbar *)self _expectedInterfaceOrientation]];
    width = v8;
  }

  [(_UIToolbarVisualProvider *)self->_visualProvider defaultSizeForOrientation:[(UIToolbar *)self _expectedInterfaceOrientation]];
  v10 = v9;

  v11 = width;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = UIToolbar;
  [(UIView *)&v10 _didMoveFromWindow:a3 toWindow:v6];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      -[UIToolbar _setBarPosition:](self, "_setBarPosition:", [WeakRetained positionForBar:self]);
    }

    if (!self->_barPosition)
    {
      [(UIToolbar *)self _setBarPosition:1];
    }

    v8 = [(UIView *)self layer];
    v9 = [v6 screen];
    [v9 scale];
    [v8 setRasterizationScale:?];

    [(UIView *)self setNeedsLayout];
  }
}

- (void)_frameOrBoundsChangedWithVisibleSizeChange:(BOOL)a3 wasMinibar:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    [(_UIToolbarVisualProvider *)self->_visualProvider updateBarBackgroundSize];
    [(UIView *)self setNeedsDisplay];
    [(UIView *)self setNeedsLayout];
  }

  if ([(UIToolbar *)self isMinibar]!= v4)
  {
    visualProvider = self->_visualProvider;
    items = self->_items;

    [(_UIToolbarVisualProvider *)visualProvider updateItemsForNewFrame:items];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIToolbar *)self isMinibar];
  [(UIView *)self bounds];
  v11 = height != v10 || width != v9;
  v12.receiver = self;
  v12.super_class = UIToolbar;
  [(UIView *)&v12 setBounds:x, y, width, height];
  [(UIToolbar *)self _frameOrBoundsChangedWithVisibleSizeChange:v11 wasMinibar:v8];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIToolbar *)self isMinibar];
  [(UIView *)self frame];
  v11 = height != v10 || width != v9;
  v12.receiver = self;
  v12.super_class = UIToolbar;
  [(UIView *)&v12 setFrame:x, y, width, height];
  [(UIToolbar *)self _frameOrBoundsChangedWithVisibleSizeChange:v11 wasMinibar:v8];
}

- (void)setBackgroundImage:(UIImage *)backgroundImage forToolbarPosition:(UIBarPosition)topOrBottom barMetrics:(UIBarMetrics)barMetrics
{
  v8 = backgroundImage;
  v9 = v8;
  if ((barMetrics - 101) > 1)
  {
    appearanceStorage = self->__appearanceStorage;
    if (v8)
    {
      v16 = v8;
      if (!appearanceStorage)
      {
        v11 = objc_alloc_init(_UIToolbarAppearanceStorage);
        v12 = self->__appearanceStorage;
        self->__appearanceStorage = v11;

        v9 = v16;
      }

      if ([(UIImage *)v9 _isResizable]|| ([(UIImage *)v16 size], v13 <= 1.0))
      {
        v9 = v16;
      }

      else
      {
        v14 = [(UIImage *)v16 resizableImageWithCapInsets:0.0, 0.0, 0.0, 0.0];

        v9 = v14;
      }
    }

    else if (!appearanceStorage)
    {
      goto LABEL_16;
    }

    v15 = v9;
    [self->__appearanceStorage setBackgroundImage:? forBarPosition:? barMetrics:?];
    if (topOrBottom == UIBarPositionAny)
    {
      [self->__appearanceStorage setBackgroundImage:v15 forBarPosition:1 barMetrics:barMetrics];
      [self->__appearanceStorage setBackgroundImage:v15 forBarPosition:3 barMetrics:barMetrics];
      [self->__appearanceStorage setBackgroundImage:v15 forBarPosition:2 barMetrics:barMetrics];
      [self->__appearanceStorage setBackgroundImage:v15 forBarPosition:4 barMetrics:barMetrics];
    }

    [(UIToolbar *)self _setNeedsBackgroundViewUpdate];
  }

  else
  {
    if (setBackgroundImage_forToolbarPosition_barMetrics__didWarn)
    {
      goto LABEL_16;
    }

    setBackgroundImage_forToolbarPosition_barMetrics__didWarn = 1;
    v15 = v8;
    NSLog(&cfstr_SCustomization.isa, "UIToolbar", @"background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }

  v9 = v15;
LABEL_16:
}

- (UIImage)backgroundImageForToolbarPosition:(UIBarPosition)topOrBottom barMetrics:(UIBarMetrics)barMetrics
{
  if ((barMetrics - 101) > 1)
  {
    v4 = [self->__appearanceStorage backgroundImageForBarPosition:topOrBottom barMetrics:?];
  }

  else
  {
    if ((backgroundImageForToolbarPosition_barMetrics__didWarn & 1) == 0)
    {
      backgroundImageForToolbarPosition_barMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, topOrBottom, "UIToolbar", @"background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    v4 = 0;
  }

  return v4;
}

- (void)setBackgroundEffects:(id)a3
{
  v4 = a3;
  backgroundEffects = self->_backgroundEffects;
  if (backgroundEffects != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)backgroundEffects isEqualToArray:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_backgroundEffects;
      self->_backgroundEffects = v7;

      [(UIToolbar *)self _updateBackgroundView];
      v4 = v9;
    }
  }
}

- (void)_setVisualAltitude:(double)a3
{
  v4.receiver = self;
  v4.super_class = UIToolbar;
  [(UIView *)&v4 _setVisualAltitude:a3];
  [(UIToolbar *)self _updateBackgroundView];
}

- (void)_setVisualAltitudeBias:(CGSize)a3
{
  v4.receiver = self;
  v4.super_class = UIToolbar;
  [(UIView *)&v4 _setVisualAltitudeBias:a3.width, a3.height];
  [(UIToolbar *)self _updateBackgroundView];
}

- (void)setShadowImage:(UIImage *)shadowImage forToolbarPosition:(UIBarPosition)topOrBottom
{
  v6 = shadowImage;
  appearanceStorage = self->__appearanceStorage;
  if (v6)
  {
    v8 = v6;
    v15 = v6;
    if (!appearanceStorage)
    {
      v9 = objc_alloc_init(_UIToolbarAppearanceStorage);
      v10 = self->__appearanceStorage;
      self->__appearanceStorage = v9;

      v8 = v15;
    }

    if ([(UIImage *)v8 _isResizable]|| ([(UIImage *)v15 size], v11 <= 1.0))
    {
      v13 = v15;
    }

    else
    {
      v12 = [(UIImage *)v15 resizableImageWithCapInsets:0.0, 0.0, 0.0, 0.0];

      v13 = v12;
    }
  }

  else
  {
    if (!appearanceStorage)
    {
      return;
    }

    v13 = 0;
  }

  v14 = self->__appearanceStorage;
  v16 = v13;
  if (topOrBottom == UIBarPositionBottom)
  {
    goto LABEL_13;
  }

  [v14 setTopShadowImage:v13];
  if (topOrBottom != UIBarPositionTop)
  {
    v14 = self->__appearanceStorage;
    v13 = v16;
LABEL_13:
    [v14 setShadowImage:v13];
  }

  [(UIToolbar *)self _setNeedsBackgroundViewUpdate];
}

- (UIImage)shadowImageForToolbarPosition:(UIBarPosition)topOrBottom
{
  appearanceStorage = self->__appearanceStorage;
  if (topOrBottom == UIBarPositionTop)
  {
    [appearanceStorage topShadowImage];
  }

  else
  {
    [appearanceStorage shadowImage];
  }
  v4 = ;

  return v4;
}

- (void)_setHidesShadow:(BOOL)a3
{
  v3 = a3;
  appearanceStorage = self->__appearanceStorage;
  if (!appearanceStorage)
  {
    v6 = objc_alloc_init(_UIToolbarAppearanceStorage);
    v7 = self->__appearanceStorage;
    self->__appearanceStorage = v6;

    appearanceStorage = self->__appearanceStorage;
  }

  if ([appearanceStorage hidesShadow] != v3)
  {
    [self->__appearanceStorage setHidesShadow:v3];

    [(UIToolbar *)self _updateBackgroundView];
  }
}

- (void)_setDisableBlurTinting:(BOOL)a3
{
  toolbarFlags = self->_toolbarFlags;
  if (((((toolbarFlags & 0x100) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }

    *&self->_toolbarFlags = toolbarFlags & 0xFEFF | v4;
    [(UIToolbar *)self _updateBackgroundView];
  }
}

- (void)_setLocked:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_toolbarFlags = *&self->_toolbarFlags & 0xFFBF | v3;
}

- (void)_setForceTopBarAppearance:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(UIToolbar *)self _setBarPosition:v3];
}

+ (double)defaultHeightForBarSize:(int)a3
{
  NSLog(&cfstr_PleaseStopUsin.isa, a2, "+[UIToolbar defaultHeightForBarSize:]");
  result = 44.0;
  if (a3 == 2)
  {
    return 32.0;
  }

  return result;
}

- (id)initInView:(id)a3 withFrame:(CGRect)a4 withItemList:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  NSLog(&cfstr_PleaseStopUsin.isa, "[UIToolbar initInView:withFrame:withItemList:]");
  v13.receiver = self;
  v13.super_class = UIToolbar;
  v11 = [(UIView *)&v13 initWithFrame:x, y, width, height];
  if (v11)
  {
    [v10 addSubview:v11];
    [(UIView *)v11 setAutoresizingMask:8];
    [(UIToolbar *)v11 _setNeedsBackgroundViewUpdate];
  }

  return v11;
}

- (void)_setButtonBackgroundImage:(id)a3 mini:(id)a4 forStates:(unint64_t)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a3;
  NSLog(&cfstr_PleaseStopUsin.isa, "[UIToolbar _setButtonBackgroundImage:mini:forStates:]");
  if (a5 >= 2)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UIToolbar.m" lineNumber:1136 description:@"Normal and Highlighted (pressed) states are the only supported states."];
  }

  v14[0] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [(UIView *)UIToolbarButton appearanceWhenContainedInInstancesOfClasses:v11];

  [v12 _setBackgroundImage:v10 forState:a5 barMetrics:0];
  [v12 _setBackgroundImage:v9 forState:a5 barMetrics:1];
}

- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6
{
  result = 0.0;
  if (a6)
  {
    v7.receiver = self;
    v7.super_class = UIToolbar;
    [(UIView *)&v7 _autolayoutSpacingAtEdge:*&a3 forAttribute:a4 inContainer:a5 isGuide:1, 0.0];
  }

  return result;
}

@end