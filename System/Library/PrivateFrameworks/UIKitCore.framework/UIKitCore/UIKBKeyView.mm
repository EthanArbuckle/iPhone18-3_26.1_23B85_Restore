@interface UIKBKeyView
+ (BOOL)_shouldShowDebugHitArea;
+ (BOOL)isDotKey:(id)a3;
+ (BOOL)shouldUseOvalHitArea;
+ (int64_t)_hitAreaPercent;
- (BOOL)_isActivePopupKey;
- (BOOL)_shouldUpdateLayers;
- (BOOL)allowBackgroundCachingForRenderFlags:(int64_t)a3;
- (BOOL)hasRendered;
- (BOOL)pointInsideTapActionRegion:(CGPoint)a3;
- (CGRect)drawFrame;
- (CGRect)tapActionRegion;
- (CGRect)variantFrame;
- (NSString)cacheKey;
- (UIEdgeInsets)displayInsets;
- (UIKBKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5;
- (UIKBKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5 screenTraits:(id)a6;
- (UIKBRenderFactory)factory;
- (UIKeyboardMenuView)popupMenu;
- (id)_generateBackdropAndBorderMaskImage;
- (id)cacheKeysForRenderFlags:(id)a3;
- (id)layerForRenderFlags:(int64_t)a3;
- (id)renderFlagsForTraits:(id)a3;
- (int)textEffectsVisibilityLevel;
- (int64_t)assetIdiom;
- (int64_t)cachedRenderFlags;
- (int64_t)imageOrientationForLayer:(id)a3;
- (unint64_t)focusableVariantCount;
- (void)_populateLayer:(id)a3 withContents:(id)a4;
- (void)_updateDebugHitTargetLayer;
- (void)changeBackgroundToActiveIfNecessary;
- (void)changeBackgroundToEnabled;
- (void)configureBackdropView:(id)a3 forRenderConfig:(id)a4;
- (void)dealloc;
- (void)dimKeys:(id)a3;
- (void)displayLayer:(id)a3;
- (void)drawContentsOfRenderers:(id)a3;
- (void)hideKeyCap:(BOOL)a3;
- (void)layoutSubviews;
- (void)orientKeyCap:(int64_t)a3;
- (void)prepareForDisplay;
- (void)removeFromSuperview;
- (void)setRenderConfig:(id)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)updateForKeyplane:(id)a3 key:(id)a4;
- (void)willDisplayModalActionView:(id)a3 withSubTreeKeyView:(id)a4 completion:(id)a5;
@end

@implementation UIKBKeyView

- (CGRect)drawFrame
{
  x = self->m_drawFrame.origin.x;
  y = self->m_drawFrame.origin.y;
  width = self->m_drawFrame.size.width;
  height = self->m_drawFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

void __32__UIKBKeyView_prepareForDisplay__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 unsignedIntegerValue];
  v4 = *(*(a1 + 32) + 480);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v6 = +[_UIKBKeyViewLayer layer];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  [*(a1 + 40) setObject:v6 forKey:v8];
  v7 = [*(a1 + 32) layer];
  [v7 insertSublayer:v6 atIndex:0];

  [*(a1 + 48) addObject:v6];
}

- (void)prepareForDisplay
{
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v3 = [(UIKBKeyView *)self factory];
  v4 = [v3 traitsForKey:self->m_key onKeyplane:self->m_keyplane];

  v5 = [(UIKBKeyView *)self renderFlagsForTraits:v4];
  keyLayers = self->_keyLayers;
  if (!keyLayers || (v7 = MEMORY[0x1E695DFD8], -[NSMutableDictionary allKeys](keyLayers, "allKeys"), v8 = objc_claimAutoreleasedReturnValue(), [v7 setWithArray:v8], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", v5), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToSet:", v10), v10, v9, v8, !v11) || -[UIKBKeyView requiresSublayers](self, "requiresSublayers") && (renderedKeyState = self->_renderedKeyState, renderedKeyState != -[UIKBTree state](self->m_key, "state")))
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = [MEMORY[0x1E695DF70] array];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __32__UIKBKeyView_prepareForDisplay__block_invoke;
    v22[3] = &unk_1E71140D0;
    v22[4] = self;
    v25 = v26;
    v15 = v13;
    v23 = v15;
    v16 = v14;
    v24 = v16;
    [v5 enumerateObjectsWithOptions:2 usingBlock:v22];
    v17 = self->_keyLayers;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __32__UIKBKeyView_prepareForDisplay__block_invoke_2;
    v20[3] = &unk_1E71140F8;
    v18 = v16;
    v21 = v18;
    [(NSMutableDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v20];
    objc_storeStrong(&self->_keyLayers, v13);
    if (!self->_renderedKeyState)
    {
      v19 = +[UIKeyboardCache sharedInstance];
      [v19 incrementExpectedRender:self];
    }
  }

  _Block_object_dispose(v26, 8);
}

- (UIKBRenderFactory)factory
{
  m_factory = self->m_factory;
  if (!m_factory)
  {
    v4 = [(UIKBKeyView *)self renderConfig];
    v5 = [UIKBRenderingContext renderingContextForRenderConfig:v4];

    v6 = +[UIKeyboardImpl activeInstance];
    v7 = [v6 textInputTraits];
    [v5 setKeyboardType:{objc_msgSend(v7, "keyboardType")}];

    [v5 setIsFloating:{-[UIKBTree isFloating](self->m_keyplane, "isFloating")}];
    v8 = [UIKBRenderFactory factoryForVisualStyle:[(UIKBTree *)self->m_keyplane visualStyling] renderingContext:v5];
    v9 = self->m_factory;
    self->m_factory = v8;

    [(UIView *)self contentScaleFactor];
    [(UIKBRenderFactory *)self->m_factory setScale:?];
    screenTraits = self->_screenTraits;
    if (screenTraits)
    {
      [(UIKBScreenTraits *)screenTraits stretchFactor];
      v13 = self->m_factory;
    }

    else
    {
      v13 = self->m_factory;
      v11 = 1.0;
      v12 = 1.0;
    }

    [(UIKBRenderFactory *)v13 setStretchFactor:v11, v12];

    m_factory = self->m_factory;
  }

  return m_factory;
}

- (int64_t)cachedRenderFlags
{
  m_allowsCaching = self->m_allowsCaching;
  if (!m_allowsCaching)
  {
    v4 = [(UIKBTree *)self->m_key displayType];
    v5 = v4 > 0x37 || ((1 << v4) & 0x80003000001000) == 0;
    if (!v5 || ((v12 = v4, v13 = -[UIKBTree visualStyling](self->m_keyplane, "visualStyling") & 0xFF00, v12 != 56) ? (v14 = v13 == 32512) : (v14 = 1), v14 || v12 == 4 && (-[UIKBKeyView renderConfig](self, "renderConfig"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 animatedBackground], v15, v16)))
    {
      v6 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v6 = MEMORY[0x1E695E4D0];
    }

    m_allowsCaching = *v6;
    self->m_allowsCaching = m_allowsCaching;
  }

  if (m_allowsCaching == *MEMORY[0x1E695E4C0])
  {
    return 0;
  }

  v7 = [(UIKBTree *)self->m_key state];
  result = 255;
  v9 = v7 - 4;
  if ((v7 - 4) <= 0x3C)
  {
    if (((1 << v9) & 0x1000000010000010) != 0)
    {
      return result;
    }

    if (((1 << v9) & 0x11000) != 0)
    {
      goto LABEL_12;
    }

    if (v7 == 4)
    {
      if ([(UIKBTree *)self->m_key displayType]!= 14 && [(UIKBTree *)self->m_key displayType]!= 11 && [(UIKBTree *)self->m_key displayType]!= 47 && [(UIKBTree *)self->m_key displayType]!= 48 && [(UIKBTree *)self->m_key interactionType]!= 16)
      {
        if ([(UIKBTree *)self->m_key interactionType]== 2 && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
        {
          return 3;
        }

LABEL_12:
        if ([(UIKBKeyView *)self containedInDynamicKey])
        {
          return 3;
        }

        else
        {
          return 0;
        }
      }

      return 255;
    }
  }

  if (v7 == 1)
  {
    return result;
  }

  if (v7 != 2)
  {
    return 0;
  }

  v10 = [(UIKBTree *)self->m_key name];
  v11 = [v10 isEqualToString:@"LanguageIndicator"];

  if (v11)
  {
    return 0;
  }

  if ([(UIKBTree *)self->m_key displayType]!= 13)
  {
    return 255;
  }

  v17 = [(UIKBTree *)self->m_key overrideDisplayString];
  v18 = [v17 isEqualToString:@"emoji"];

  if (v18)
  {
    return 3;
  }

  else
  {
    return 255;
  }
}

void __32__UIKBKeyView_prepareForDisplay__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [v4 removeFromSuperlayer];
  }
}

- (UIKeyboardMenuView)popupMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_popupMenu);

  return WeakRetained;
}

- (BOOL)_shouldUpdateLayers
{
  if ([(UIKBKeyView *)self containedInDynamicKey])
  {
    if ([(UIKBKeyView *)self _isActivePopupKey])
    {
      return 0;
    }

    else
    {
      return ![(UIView *)self isHidden];
    }
  }

  else
  {
    renderedKeyState = self->_renderedKeyState;
    return renderedKeyState != [(UIKBTree *)self->m_key state]|| ([(UIKBTree *)self->m_key state]& 0x10) != 0 || [(UIKBTree *)self->m_key dynamicDisplayTypeHint]|| self->_singleRerender || [(UIKBTree *)self->m_key rendering]== 38 || [(UIKBTree *)self->m_key rendering]== 9;
  }
}

- (BOOL)_isActivePopupKey
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 || [(UIKBTree *)self->m_key state]!= 4 || [(UIKBTree *)self->m_key interactionType]!= 2)
  {
    return 0;
  }

  v3 = [(UIKBKeyView *)self factory];
  v4 = [v3 allowsPaddleForKey:self->m_key];

  return v4;
}

+ (BOOL)shouldUseOvalHitArea
{
  if (qword_1ED499C68 != -1)
  {
    dispatch_once(&qword_1ED499C68, &__block_literal_global_352);
  }

  return _MergedGlobals_9_4;
}

uint64_t __35__UIKBKeyView_shouldUseOvalHitArea__block_invoke()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = _UIMainBundleIdentifier();
  v3 = [v2 isEqualToString:@"com.apple.mobilesafari"];

  v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v5 = [v4 valueForPreferenceKey:@"UseDotKeyOvalHitArea"];
  v6 = [v5 BOOLValue];

  result = os_variant_has_internal_diagnostics();
  if (result)
  {
    v8 = (v1 == 0) & v3 & v6;
  }

  else
  {
    v8 = 0;
  }

  _MergedGlobals_9_4 = v8;
  return result;
}

+ (BOOL)_shouldShowDebugHitArea
{
  if (qword_1ED499C70 != -1)
  {
    dispatch_once(&qword_1ED499C70, &__block_literal_global_52_1);
  }

  return byte_1ED499C61;
}

uint64_t __38__UIKBKeyView__shouldShowDebugHitArea__block_invoke()
{
  v0 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"ShowDotKeyDebugHitArea"];
  v2 = [v1 BOOLValue];

  result = os_variant_has_internal_diagnostics();
  if (!result)
  {
    v2 = 0;
  }

  byte_1ED499C61 = v2;
  return result;
}

+ (int64_t)_hitAreaPercent
{
  if (qword_1ED499C80 != -1)
  {
    dispatch_once(&qword_1ED499C80, &__block_literal_global_54_1);
  }

  return qword_1ED499C78;
}

void __30__UIKBKeyView__hitAreaPercent__block_invoke()
{
  if (os_variant_has_internal_diagnostics())
  {
    v1 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v0 = [v1 valueForPreferenceKey:@"DotKeyHitAreaPercentage"];
    qword_1ED499C78 = [v0 intValue];
  }
}

- (UIKBKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = UIKBKeyView;
  v14 = [(UIView *)&v21 initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    [(UIView *)v14 setEnabled:0];
    v15->_cachedBackgroundOpacity = 1.0;
    objc_storeStrong(&v15->m_keyplane, a4);
    objc_storeStrong(&v15->m_key, a5);
    [(UIView *)v15 setOpaque:[(UIKBKeyView *)v15 _viewShouldBeOpaque]];
    v15->_containedInDynamicKey = 0;
    if ([v13 interactionType] == 6)
    {
      v16 = [v13 name];
      if ([v16 rangeOfString:@"HWR"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [v13 displayTypeHint];

        if (v17 != 11)
        {
          if (+[UIKeyboardImpl rivenTranslationPreference])
          {
            v18 = 9;
          }

          else
          {
            v18 = 0;
          }

          [(UIKBTree *)v15->m_key setDisplayTypeHint:v18];
        }
      }

      else
      {
      }
    }

    v19 = v15;
  }

  return v15;
}

- (UIKBKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5 screenTraits:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a6;
  v15 = [(UIKBKeyView *)self initWithFrame:a4 keyplane:a5 key:x, y, width, height];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_screenTraits, a6);
  }

  return v16;
}

- (void)updateForKeyplane:(id)a3 key:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (v7)
  {
    objc_storeStrong(&self->m_key, a4);
  }

  if (v8)
  {
    objc_storeStrong(&self->m_keyplane, a3);
  }

  [(UIView *)self setOpaque:[(UIKBKeyView *)self _viewShouldBeOpaque]];
}

- (void)dealloc
{
  v3 = +[UIKeyboardCache sharedInstance];
  [v3 decrementExpectedRender:self];

  activeBackgroundColor = self->_activeBackgroundColor;
  if (activeBackgroundColor)
  {
    CGColorRelease(activeBackgroundColor);
    self->_activeBackgroundColor = 0;
  }

  activeCompositingFilter = self->_activeCompositingFilter;
  if (activeCompositingFilter)
  {
    CFRelease(activeCompositingFilter);
    v6 = self->_activeCompositingFilter;
    self->_activeCompositingFilter = 0;
  }

  v7.receiver = self;
  v7.super_class = UIKBKeyView;
  [(UIView *)&v7 dealloc];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = UIKBKeyView;
  [(UIView *)&v14 layoutSubviews];
  [(UIView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([objc_opt_class() shouldUseOvalHitArea] && (v11 = objc_opt_class(), -[UIKBKeyView key](self, "key"), v12 = objc_claimAutoreleasedReturnValue(), LOBYTE(v11) = objc_msgSend(v11, "isDotKey:", v12), v12, (v11 & 1) != 0))
  {
    v13 = v8 * ([objc_opt_class() _hitAreaPercent] / 100.0);
    self->_tapActionRegion.origin.x = v8 - v13;
    self->_tapActionRegion.origin.y = 0.0;
    self->_tapActionRegion.size.width = v13;
    self->_tapActionRegion.size.height = v10;
    [(UIKBKeyView *)self _updateDebugHitTargetLayer];
  }

  else
  {
    self->_tapActionRegion.origin.x = v4;
    self->_tapActionRegion.origin.y = v6;
    self->_tapActionRegion.size.width = v8;
    self->_tapActionRegion.size.height = v10;
  }
}

+ (BOOL)isDotKey:(id)a3
{
  v3 = a3;
  if ([v3 displayType] == 27)
  {
    v4 = [v3 name];
    v5 = [v4 isEqualToString:@"Email-Dot-Key"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateDebugHitTargetLayer
{
  if ([objc_opt_class() shouldUseOvalHitArea])
  {
    v3 = objc_opt_class();
    v4 = [(UIKBKeyView *)self key];
    LODWORD(v3) = [v3 isDotKey:v4];

    if (v3)
    {
      debugHitTargetLayer = self->_debugHitTargetLayer;
      if (debugHitTargetLayer)
      {
        [(CAShapeLayer *)debugHitTargetLayer removeFromSuperlayer];
        v6 = self->_debugHitTargetLayer;
        self->_debugHitTargetLayer = 0;
      }

      if ([objc_opt_class() _shouldShowDebugHitArea])
      {
        v7 = [MEMORY[0x1E69794A0] layer];
        v8 = self->_debugHitTargetLayer;
        self->_debugHitTargetLayer = v7;

        v9 = [UIBezierPath bezierPathWithOvalInRect:self->_tapActionRegion.origin.x, self->_tapActionRegion.origin.y, self->_tapActionRegion.size.width, self->_tapActionRegion.size.height];
        -[CAShapeLayer setPath:](self->_debugHitTargetLayer, "setPath:", [v9 CGPath]);

        v10 = [UIColor colorWithRed:1.0 green:1.0 blue:0.0 alpha:0.4];
        -[CAShapeLayer setFillColor:](self->_debugHitTargetLayer, "setFillColor:", [v10 CGColor]);

        v11 = [(UIView *)self layer];
        [v11 insertSublayer:self->_debugHitTargetLayer atIndex:0];
      }
    }
  }
}

- (BOOL)pointInsideTapActionRegion:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([objc_opt_class() shouldUseOvalHitArea] && (v6 = objc_opt_class(), -[UIKBKeyView key](self, "key"), v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v6) = objc_msgSend(v6, "isDotKey:", v7), v7, (v6 & 1) != 0))
  {
    v8 = [UIBezierPath bezierPathWithOvalInRect:self->_tapActionRegion.origin.x, self->_tapActionRegion.origin.y, self->_tapActionRegion.size.width, self->_tapActionRegion.size.height];
    v9 = [v8 containsPoint:{x, y}];

    return v9;
  }

  else
  {
    v11 = self->_tapActionRegion.origin.x;
    v12 = self->_tapActionRegion.origin.y;
    width = self->_tapActionRegion.size.width;
    height = self->_tapActionRegion.size.height;
    v15 = x;
    v16 = y;

    return CGRectContainsPoint(*&v11, *&v15);
  }
}

- (int)textEffectsVisibilityLevel
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 isDictationPopoverPresented];

  if (v3)
  {
    return 301;
  }

  else
  {
    return 200;
  }
}

- (CGRect)variantFrame
{
  v3 = [(UIKBKeyView *)self key];
  v4 = [v3 popupDirection];

  [(UIKBKeyView *)self drawFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (v4 != 3)
  {
    v13 = [(UIKBKeyView *)self key];
    [v13 frame];
    v6 = v6 + 0.0;
    v8 = v8 + 0.0;
    v12 = v12 - (v14 + 0.0);
  }

  v15 = v6;
  v16 = v8;
  v17 = v10;
  v18 = v12;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = [UIInputSwitcherView sharedInstance:a3];
  v5 = [v6 superview];

  if (v5 == self)
  {
    [v6 hide];
  }
}

- (unint64_t)focusableVariantCount
{
  v2 = [(UIKBKeyView *)self key];
  v3 = [v2 subtrees];
  v4 = [v3 count];

  return v4;
}

- (void)willDisplayModalActionView:(id)a3 withSubTreeKeyView:(id)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5);
  }
}

- (void)dimKeys:(id)a3
{
  v4 = a3;
  keyLayers = self->_keyLayers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __23__UIKBKeyView_dimKeys___block_invoke;
  v7[3] = &unk_1E7114068;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(NSMutableDictionary *)keyLayers enumerateKeysAndObjectsUsingBlock:v7];
}

void __23__UIKBKeyView_dimKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __23__UIKBKeyView_dimKeys___block_invoke_2;
  v9[3] = &unk_1E7114040;
  v10 = v5;
  v11 = v6;
  v7 = *(a1 + 32);
  v9[4] = *(a1 + 40);
  v8 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

void __23__UIKBKeyView_dimKeys___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = (*(a1 + 48) & [a2 integerValue]) == 0;
  v8 = v10;
  if (!v7)
  {
    [v10 floatValue];
    if (*(a1 + 48))
    {
      *(*(a1 + 32) + 528) = v9;
    }

    [*(a1 + 40) setOpacity:?];
    *a4 = 1;
    v8 = v10;
  }
}

- (void)hideKeyCap:(BOOL)a3
{
  keyLayers = self->_keyLayers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __26__UIKBKeyView_hideKeyCap___block_invoke;
  v4[3] = &__block_descriptor_33_e34_v32__0__NSNumber_8__CALayer_16_B24l;
  v5 = a3;
  [(NSMutableDictionary *)keyLayers enumerateKeysAndObjectsUsingBlock:v4];
}

void __26__UIKBKeyView_hideKeyCap___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (([a2 integerValue] & 0x34) != 0)
  {
    [v7 setHidden:*(a1 + 32)];
    *a4 = 1;
  }
}

- (void)orientKeyCap:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  keyLayers = self->_keyLayers;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __28__UIKBKeyView_orientKeyCap___block_invoke;
  v16[3] = &__block_descriptor_40_e34_v32__0__NSNumber_8__CALayer_16_B24l;
  v16[4] = a3;
  [(NSMutableDictionary *)keyLayers enumerateKeysAndObjectsUsingBlock:v16];
  [(UIKBKeyView *)self updateKeycapLayerOrientation];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(UIView *)self subviews];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 orientKeyCap:a3];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

void __28__UIKBKeyView_orientKeyCap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 integerValue] & 0x34) != 0)
  {
    [v5 setImageOrientation:*(a1 + 32)];
  }
}

- (UIEdgeInsets)displayInsets
{
  [(UIKBKeyView *)self drawFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIKBTree *)self->m_key paddedFrame];
  v12 = v6 - v11;
  v14 = v11 + v13 - (v6 + v10);
  v16 = v4 - v15;
  v18 = v15 + v17 - (v4 + v8);
  v19 = v12;
  v20 = v14;
  result.right = v18;
  result.bottom = v20;
  result.left = v16;
  result.top = v19;
  return result;
}

- (NSString)cacheKey
{
  if (([(UIKBKeyView *)self cachedRenderFlags]& 4) != 0)
  {
    m_key = self->m_key;
    v5 = [(UIKBTree *)self->m_keyplane visualStyling];
    v6 = [(UIKBKeyView *)self renderConfig];
    v7 = [UIKBCacheToken tokenForKey:m_key style:v5 renderConfig:v6];
    v3 = [v7 string];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)cacheKeysForRenderFlags:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIKBKeyView *)self cachedRenderFlags];
  v6 = [(UIKBTree *)self->m_key interactionType]== 2 && [(UIKBTree *)self->m_key state]== 16;
  v53 = v5;
  if (![(UIKBKeyView *)self renderAsMask]|| v6)
  {
    if (!v5)
    {
LABEL_62:
      v56 = 0;
      goto LABEL_63;
    }

    m_key = self->m_key;
    v12 = [(UIKBTree *)self->m_keyplane visualStyling];
    v9 = [(UIKBKeyView *)self renderConfig];
    if (v5 == 255)
    {
      [UIKBCacheToken tokenForKey:m_key style:v12 renderConfig:v9];
    }

    else
    {
      [(UIKBKeyView *)self displayInsets];
      [UIKBCacheToken tokenForKey:m_key style:v12 renderConfig:v9 displayInsets:?];
    }
    v10 = ;
  }

  else
  {
    v7 = self->m_key;
    v8 = [(UIKBTree *)self->m_keyplane visualStyling];
    v9 = [(UIKBKeyView *)self renderConfig];
    [(UIKBKeyView *)self displayInsets];
    v10 = [UIKBCacheToken tokenForKeyMask:v7 style:v8 renderConfig:v9 displayInsets:?];
  }

  v13 = v10;

  v55 = v13;
  if (!v13)
  {
    goto LABEL_62;
  }

  if ([(UIKBTree *)self->m_key isRightToLeftSensitive])
  {
    v14 = +[UIKeyboardInputModeController sharedInputModeController];
    v15 = [v14 currentLinguisticInputMode];
    [v13 annotateWithBool:{objc_msgSend(v15, "isDefaultRightToLeft")}];
  }

  v16 = v5;
  if (([v55 styling] & 0x3F) == 3)
  {
    [v55 annotateWithBool:UIKeyboardCarPlayIsRightHandDrive()];
  }

  if ([(UIKBKeyView *)self cachedSelector])
  {
    [v55 annotateWithInt:{-[UIKBKeyView cachedSelector](self, "cachedSelector")}];
  }

  if (([v55 styling] & 0x3F) == 0x17 || (objc_msgSend(v55, "styling") & 0x3F) == 0x18)
  {
    if ([(UIKBKeyView *)self cachedAnchorCorner])
    {
      [v55 annotateWithInt:{-[UIKBKeyView cachedAnchorCorner](self, "cachedAnchorCorner")}];
    }

    if ([(UIKBKeyView *)self cachedShiftState]<= 4)
    {
      [v55 annotateWithInt:{-[UIKBKeyView cachedShiftState](self, "cachedShiftState")}];
    }

    if ([(UIKBKeyView *)self cachedControlKeyRenderingPreference])
    {
      [v55 annotateWithBool:{-[UIKBKeyView cachedControlKeyRenderingPreference](self, "cachedControlKeyRenderingPreference")}];
    }
  }

  if ([(UIKBTree *)self->m_key displayType]== 7)
  {
    v17 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v18 = [v17 preferencesActions];
    v19 = [v18 BOOLForPreferenceKey:@"GesturesEnabled"];

    if (v19)
    {
      [v55 annotateWithBool:{-[UIKBTree isShiftKeyplane](self->m_keyplane, "isShiftKeyplane")}];
    }
  }

  if ((([(UIKBTree *)self->m_keyplane visualStyling]& 0x3F) == 1 || ([(UIKBTree *)self->m_keyplane visualStyling]& 0x3F) == 0x18 || ([(UIKBTree *)self->m_keyplane visualStyling]& 0x3F) == 0x19 || ([(UIKBTree *)self->m_keyplane visualStyling]& 0x3F) == 0x1A || ([(UIKBTree *)self->m_keyplane visualStyling]& 0x3F) == 0x17) && ([(UIKBTree *)self->m_keyplane visualStyling]& 0xFF0000) == 0xB0000)
  {
    [(UIKBTree *)self->m_key frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [(UIKBTree *)self->m_key paddedFrame];
    v66.origin.x = v28;
    v66.origin.y = v29;
    v66.size.width = v30;
    v66.size.height = v31;
    v65.origin.x = v21;
    v65.origin.y = v23;
    v65.size.width = v25;
    v65.size.height = v27;
    [v55 annotateWithBool:{CGRectEqualToRect(v65, v66)}];
  }

  v32 = v55;
  if ([(UIKBKeyView *)self containedInDynamicKey]|| [(UIKBKeyView *)self isDynamicKey])
  {
    [(UIKBTree *)self->m_key frame];
    LODWORD(v34) = llround(v33);
    [v55 annotateWithInt:v34];
  }

  v56 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v52 = v4;
  obj = v4;
  v35 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v59;
    v54 = v6;
    do
    {
      v38 = 0;
      do
      {
        if (*v59 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v58 + 1) + 8 * v38);
        v40 = [v39 integerValue];
        if (!(v6 | ![(UIKBKeyView *)self renderAsMask]))
        {
          v44 = [v32 string];
          if (!v44)
          {
            goto LABEL_52;
          }

LABEL_51:
          [v56 setObject:v44 forKey:v39];

          goto LABEL_52;
        }

        v41 = v40 & v16;
        if (!v41)
        {
          goto LABEL_52;
        }

        if ([(UIKBKeyView *)self allowBackgroundCachingForRenderFlags:v41])
        {
          v42 = [(UIKBKeyView *)self cachedTraitsHashString];
          v43 = [(UIKBKeyView *)self renderConfig];
          v6 = v54;
          v44 = [UIKBRenderFactory cacheKeyForString:v42 withRenderFlags:v41 renderConfig:v43];

          v32 = v55;
          if (v44)
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (v41 <= 3 && [(UIKBKeyView *)self containedInDynamicKey])
          {
            v45 = [v32 copyTokenWithoutContentProperties];
            v46 = [v45 string];
            v47 = [(UIKBKeyView *)self renderConfig];
            v32 = v55;
            v44 = [UIKBRenderFactory cacheKeyForString:v46 withRenderFlags:v41 renderConfig:v47];

            v6 = v54;
          }

          else
          {
            v48 = [v32 string];
            v49 = [(UIKBKeyView *)self renderConfig];
            v44 = [UIKBRenderFactory cacheKeyForString:v48 withRenderFlags:v41 renderConfig:v49];

            v32 = v55;
          }

          v16 = v53;
          if (v44)
          {
            goto LABEL_51;
          }
        }

LABEL_52:
        ++v38;
      }

      while (v36 != v38);
      v50 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
      v36 = v50;
    }

    while (v50);
  }

  v4 = v52;
LABEL_63:

  return v56;
}

- (BOOL)allowBackgroundCachingForRenderFlags:(int64_t)a3
{
  if (UIKeyboardDeviceSupportsSplit())
  {
    return 0;
  }

  v6 = [(UIKBKeyView *)self cachedTraitsHashString];
  v5 = a3 < 4 && v6 != 0;

  return v5;
}

- (BOOL)hasRendered
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(UIView *)self layer];
  v4 = [v3 sublayers];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) contents];

        if (!v8)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  renderedKeyState = self->_renderedKeyState;
  if (renderedKeyState == [(UIKBTree *)self->m_key state])
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (void)removeFromSuperview
{
  v3 = +[UIKeyboardCache sharedInstance];
  [v3 decrementExpectedRender:self];

  v4.receiver = self;
  v4.super_class = UIKBKeyView;
  [(UIView *)&v4 removeFromSuperview];
}

- (id)layerForRenderFlags:(int64_t)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__122;
  v16 = __Block_byref_object_dispose__122;
  keyLayers = self->_keyLayers;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v17 = [(NSMutableDictionary *)keyLayers objectForKey:v6];

  v7 = v13[5];
  if (!v7)
  {
    v8 = self->_keyLayers;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __35__UIKBKeyView_layerForRenderFlags___block_invoke;
    v11[3] = &unk_1E7114120;
    v11[4] = &v12;
    v11[5] = a3;
    [(NSMutableDictionary *)v8 enumerateKeysAndObjectsUsingBlock:v11];
    v7 = v13[5];
  }

  v9 = v7;
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __35__UIKBKeyView_layerForRenderFlags___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ((*(a1 + 40) & ~[a2 unsignedIntegerValue]) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (int64_t)imageOrientationForLayer:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 imageOrientation];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_populateLayer:(id)a3 withContents:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    memset(&v29, 0, sizeof(v29));
    [v6 affineTransform];
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
    v10 = [(UIView *)self layer];
    [v10 frame];
    v12 = v11;
    v14 = v13;

    v28 = v29;
    v30.origin.x = v8;
    v30.origin.y = v9;
    v30.size.width = v12;
    v30.size.height = v14;
    v31 = CGRectApplyAffineTransform(v30, &v28);
    width = v31.size.width;
    height = v31.size.height;
    v17 = [(UIView *)self layer:v31.origin.x];
    [v17 frame];
    v19 = (v18 - width) * 0.5;

    v20 = [(UIView *)self layer];
    [v20 frame];
    v22 = (v21 - height) * 0.5;

    [v6 setFrame:{v19, v22, width, height}];
    if (!v7)
    {
      v23 = 0;
LABEL_15:
      v7 = v23;
      goto LABEL_16;
    }

    [v6 setContents:{objc_msgSend(v7, "CGImage")}];
    [(UIView *)self contentScaleFactor];
    [v6 setContentsScale:?];
    [(UIView *)self contentScaleFactor];
    [v6 setRasterizationScale:?];
    v23 = [v7 _imageThatSuppressesAccessibilityHairlineThickening];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setImageOrientation:{objc_msgSend(v23, "imageOrientation")}];
    }

    if ([v23 imageOrientation] == 1)
    {
      if (v29.d < 0.0)
      {
        goto LABEL_12;
      }

      CGAffineTransformMakeScale(&v27, 1.0, -1.0);
      *&v28.a = *&v27.a;
      *&v28.c = *&v27.c;
      v24 = *&v27.tx;
    }

    else
    {
      if (v29.d > 0.0)
      {
        goto LABEL_12;
      }

      v25 = *(MEMORY[0x1E695EFD0] + 16);
      *&v28.a = *MEMORY[0x1E695EFD0];
      *&v28.c = v25;
      v24 = *(MEMORY[0x1E695EFD0] + 32);
    }

    *&v28.tx = v24;
    [v6 setAffineTransform:&v28];
LABEL_12:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [v23 formatColor];
      [v6 setContentsMultiplyColor:{objc_msgSend(v26, "CGColor")}];
    }

    else
    {
      [v6 setContentsMultiplyColor:UIKBGetNamedColor(@"UIKBColorWhite")];
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (id)renderFlagsForTraits:(id)a3
{
  v4 = a3;
  if (![(UIKBRenderConfig *)self->m_renderConfig colorAdaptiveBackground])
  {
    if ([v4 blendForm] == 1)
    {
      v9 = [(UIKBTree *)self->m_key state];
      if ([(UIKBTree *)self->m_key displayType]== 3)
      {
        v10 = &unk_1EFE2C370;
        v11 = &unk_1EFE2C388;
        v12 = (v9 & 3) == 0;
LABEL_9:
        if (v12)
        {
          v13 = v11;
        }

        else
        {
          v13 = v10;
        }

        goto LABEL_22;
      }

      if ([(UIKBTree *)self->m_key displayType]== 23)
      {
        if (v9 == 8)
        {
          v13 = &unk_1EFE2C3A0;
          goto LABEL_22;
        }

        v10 = &unk_1EFE2C3B8;
        v11 = &unk_1EFE2C3D0;
        v12 = (v9 & 0x64) == 0;
        goto LABEL_9;
      }

      if ([v4 renderSecondarySymbolsSeparately])
      {
        v25 = [v4 secondarySymbolStyles];
        v26 = [v25 count];

        if (v26 == 1)
        {
          v7 = &unk_1EFE2C3E8;
          goto LABEL_5;
        }

        v30 = [v4 secondarySymbolStyles];
        v31 = [v30 count];

        if (v31 != 2)
        {
          v13 = &unk_1EFE2C3E8;
          goto LABEL_22;
        }

        v19 = &unk_1EFE2C3E8;
        v20 = &unk_1EFE2C400;
        goto LABEL_20;
      }

      v14 = [v4 controlOpacities];
      v15 = &unk_1EFE2C430;
      v16 = &unk_1EFE2C418;
    }

    else
    {
      if ([v4 blendForm] != 2)
      {
        if ((-[UIKBKeyView cachedRenderFlags](self, "cachedRenderFlags") & 4) != 0 && [v4 blendForm] != 3)
        {
          v27 = [v4 renderFlags];

          if (v27)
          {
            v8 = [v4 renderFlags];
            goto LABEL_21;
          }

          if (![v4 renderSecondarySymbolsSeparately])
          {
            v13 = &unk_1EFE2C4D8;
            goto LABEL_22;
          }

          v32 = [v4 secondarySymbolStyles];
          v33 = [v32 count];

          if (v33 == 1)
          {
            v7 = &unk_1EFE2C4A8;
            goto LABEL_5;
          }

          v34 = [v4 secondarySymbolStyles];
          v35 = [v34 count];

          if (v35 != 2)
          {
            v13 = &unk_1EFE2C4A8;
            goto LABEL_22;
          }

          v19 = &unk_1EFE2C4A8;
          v20 = &unk_1EFE2C4C0;
        }

        else
        {
          if (![v4 renderSecondarySymbolsSeparately])
          {
            goto LABEL_41;
          }

          v23 = [v4 secondarySymbolStyles];
          v24 = [v23 count];

          if (v24 == 1)
          {
            v7 = &unk_1EFE2C478;
            goto LABEL_5;
          }

          v28 = [v4 secondarySymbolStyles];
          v29 = [v28 count];

          if (v29 != 2)
          {
LABEL_41:
            v13 = &unk_1EFE2C478;
            goto LABEL_22;
          }

          v19 = &unk_1EFE2C478;
          v20 = &unk_1EFE2C490;
        }

LABEL_20:
        v8 = [v19 arrayByAddingObjectsFromArray:v20];
        goto LABEL_21;
      }

      v14 = [v4 controlOpacities];
      v15 = &unk_1EFE2C460;
      v16 = &unk_1EFE2C448;
    }

    if (v14)
    {
      v13 = v16;
    }

    else
    {
      v13 = v15;
    }

    goto LABEL_22;
  }

  if ([v4 renderSecondarySymbolsSeparately])
  {
    v5 = [v4 secondarySymbolStyles];
    v6 = [v5 count];

    if (v6 == 1)
    {
      v7 = &unk_1EFE2C340;
LABEL_5:
      v8 = [v7 arrayByAddingObject:&unk_1EFE31078];
LABEL_21:
      v13 = v8;
      goto LABEL_22;
    }

    v17 = [v4 secondarySymbolStyles];
    v18 = [v17 count];

    if (v18 != 2)
    {
      v13 = &unk_1EFE2C340;
      goto LABEL_22;
    }

    v19 = &unk_1EFE2C340;
    v20 = &unk_1EFE2C358;
    goto LABEL_20;
  }

  v13 = &unk_1EFE2C328;
LABEL_22:
  v21 = v13;

  return v13;
}

- (void)displayLayer:(id)a3
{
  v78[1] = *MEMORY[0x1E69E9840];
  v4 = [(UIView *)self window];

  if (v4)
  {
    if (![(UIKBKeyView *)self containedInDynamicKey]|| ![(UIView *)self isHidden]&& ([(UIView *)self alpha], v5 != 0.0))
    {
      if (!self->m_key || ![(UIKBKeyView *)self _shouldUpdateLayers])
      {
        goto LABEL_23;
      }

      v6 = [(UIView *)self layer];
      [v6 setContents:0];

      v7 = [(UIKBKeyView *)self factory];
      v8 = [v7 traitsForKey:self->m_key onKeyplane:self->m_keyplane];

      v9 = [v8 hashString];
      [(UIKBKeyView *)self setCachedTraitsHashString:v9];

      v10 = [v8 symbolStyle];
      -[UIKBKeyView setCachedAnchorCorner:](self, "setCachedAnchorCorner:", [v10 anchorCorner]);

      v11 = [(UIKBKeyView *)self factory];
      v12 = [v11 renderingContext];
      -[UIKBKeyView setCachedShiftState:](self, "setCachedShiftState:", [v12 shiftState]);

      v13 = [v8 symbolStyle];
      -[UIKBKeyView setCachedSelector:](self, "setCachedSelector:", [v13 selector]);

      v14 = [(UIKBKeyView *)self factory];
      -[UIKBKeyView setCachedControlKeyRenderingPreference:](self, "setCachedControlKeyRenderingPreference:", [v14 preferStringKeycapOverImage]);

      v15 = [(UIKBKeyView *)self renderFlagsForTraits:v8];
      v16 = +[UIKeyboardCache sharedInstance];
      v17 = [(UIKBTree *)self->m_keyplane layoutName];
      v18 = [v16 displayImagesForView:self fromLayout:v17 imageFlags:v15];

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __28__UIKBKeyView_displayLayer___block_invoke;
      v54[3] = &unk_1E7114148;
      v19 = v18;
      v55 = v19;
      v56 = self;
      [v15 enumerateObjectsUsingBlock:v54];
      v20 = [(UIView *)self layer];
      [v20 setAllowsGroupBlending:0];

      v21 = [(UIKBKeyView *)self layerForRenderFlags:1];
      cachedBackgroundOpacity = self->_cachedBackgroundOpacity;
      v23 = [(UIKBKeyView *)self renderConfig];
      if ([v23 lightKeyboard])
      {
        if ([v8 blendForm] == 1 || objc_msgSend(v8, "blendForm") == 2)
        {

LABEL_11:
          v24 = [(UIKBKeyView *)self renderConfig];
          [v24 lightKeycapOpacity];
LABEL_17:
          v26 = v25;

          v27 = cachedBackgroundOpacity * v26;
          *&v27 = cachedBackgroundOpacity * v26;
          [v21 setOpacity:v27];
          if ([v8 blendForm] == 10 || objc_msgSend(v8, "blendForm") == 11)
          {
            v77 = &unk_1EFE31048;
            v78[0] = *MEMORY[0x1E6979D78];
            v28 = MEMORY[0x1E695DF20];
            v29 = v78;
            v30 = &v77;
LABEL_20:
            v31 = 1;
LABEL_21:
            v32 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:v31];
LABEL_22:
            v51[0] = MEMORY[0x1E69E9820];
            v51[1] = 3221225472;
            v51[2] = __28__UIKBKeyView_displayLayer___block_invoke_157;
            v51[3] = &unk_1E7114170;
            v51[4] = self;
            v52 = v32;
            v53 = v8;
            v33 = v8;
            v34 = v32;
            [v15 enumerateObjectsUsingBlock:v51];
            [MEMORY[0x1E6979518] commit];
            self->_renderedKeyState = [(UIKBTree *)self->m_key state];
            [(UIKBKeyView *)self setCachedTraitsHashString:0];

LABEL_23:
            v35 = +[UIKeyboardCache sharedInstance];
            [v35 decrementExpectedRender:self];

            return;
          }

          if ([v8 blendForm] == 3)
          {
            v36 = *MEMORY[0x1E6979CF8];
            v75[0] = &unk_1EFE31048;
            v75[1] = &unk_1EFE310A8;
            v37 = *MEMORY[0x1E6979860];
            v76[0] = v36;
            v76[1] = v37;
            v28 = MEMORY[0x1E695DF20];
            v29 = v76;
            v30 = v75;
          }

          else
          {
            if ([v8 blendForm] == 4)
            {
              v73 = &unk_1EFE31060;
              v74 = *MEMORY[0x1E69798E8];
              v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
              v39 = [(UIView *)self layer];
              [v39 setAllowsGroupBlending:1];

              goto LABEL_22;
            }

            if ([v8 blendForm] == 5)
            {
              v71 = &unk_1EFE31060;
              v72 = *MEMORY[0x1E6979CF8];
              v28 = MEMORY[0x1E695DF20];
              v29 = &v72;
              v30 = &v71;
              goto LABEL_20;
            }

            if ([v8 blendForm] == 13)
            {
              v40 = *MEMORY[0x1E6979D78];
              v69[0] = &unk_1EFE31048;
              v69[1] = &unk_1EFE310C0;
              v41 = *MEMORY[0x1E6979CE8];
              v70[0] = v40;
              v70[1] = v41;
              v28 = MEMORY[0x1E695DF20];
              v29 = v70;
              v30 = v69;
            }

            else if ([v8 blendForm] == 12)
            {
              v42 = *MEMORY[0x1E6979D78];
              v67[0] = &unk_1EFE31048;
              v67[1] = &unk_1EFE310C0;
              v43 = *MEMORY[0x1E6979CF8];
              v68[0] = v42;
              v68[1] = v43;
              v28 = MEMORY[0x1E695DF20];
              v29 = v68;
              v30 = v67;
            }

            else
            {
              if ([v8 blendForm] != 9)
              {
                if ([v8 blendForm] == 8)
                {
                  v46 = [(UIKBKeyView *)self factory];
                  v47 = [v46 useBlueThemingForKey:self->m_key];

                  if ((v47 & 1) == 0)
                  {
                    v48 = *MEMORY[0x1E6979D78];
                    v63[0] = &unk_1EFE31048;
                    v63[1] = &unk_1EFE310A8;
                    v49 = *MEMORY[0x1E6979CE8];
                    v64[0] = v48;
                    v64[1] = v49;
                    v28 = MEMORY[0x1E695DF20];
                    v29 = v64;
                    v30 = v63;
                    goto LABEL_27;
                  }
                }

                else
                {
                  if ([v8 blendForm] == 6)
                  {
                    v61 = &unk_1EFE31048;
                    v62 = *MEMORY[0x1E6979860];
                    v28 = MEMORY[0x1E695DF20];
                    v29 = &v62;
                    v30 = &v61;
                    goto LABEL_20;
                  }

                  if ([v8 controlOpacities] && (objc_msgSend(v8, "blendForm") == 1 || objc_msgSend(v8, "blendForm") == 7))
                  {
                    v59 = &unk_1EFE31048;
                    v60 = *MEMORY[0x1E6979850];
                    v28 = MEMORY[0x1E695DF20];
                    v29 = &v60;
                    v30 = &v59;
                    goto LABEL_20;
                  }

                  if (([v8 controlOpacities] & 1) == 0 && objc_msgSend(v8, "blendForm") == 2)
                  {
                    v57 = &unk_1EFE310A8;
                    v58 = *MEMORY[0x1E6979850];
                    v28 = MEMORY[0x1E695DF20];
                    v29 = &v58;
                    v30 = &v57;
                    goto LABEL_20;
                  }
                }

                v32 = 0;
                goto LABEL_22;
              }

              v44 = *MEMORY[0x1E6979CF8];
              v65[0] = &unk_1EFE31048;
              v65[1] = &unk_1EFE310A8;
              v45 = *MEMORY[0x1E6979CE8];
              v66[0] = v44;
              v66[1] = v45;
              v28 = MEMORY[0x1E695DF20];
              v29 = v66;
              v30 = v65;
            }
          }

LABEL_27:
          v31 = 2;
          goto LABEL_21;
        }

        v38 = [v8 blendForm];

        if (v38 == 7)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      v24 = [(UIKBKeyView *)self renderConfig];
      [v24 keycapOpacity];
      goto LABEL_17;
    }
  }

  else
  {
    v50 = +[UIKeyboardCache sharedInstance];
    [v50 decrementExpectedRender:self];
  }
}

void __28__UIKBKeyView_displayLayer___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = [v3 objectForKey:v4];
  v5 = [v4 unsignedIntegerValue];

  v6 = [*(a1 + 40) layerForRenderFlags:v5];
  v7 = v6;
  if (*(*(a1 + 40) + 546) == 1)
  {
    v8 = [v6 meshTransform];
    if (v8)
    {
      v9 = v8;
      v10 = [*(*(a1 + 40) + 416) state];

      if (v10 != 4)
      {
        [v7 setMeshTransform:0];
      }
    }
  }

  [*(a1 + 40) _populateLayer:v7 withContents:v11];
}

void __28__UIKBKeyView_displayLayer___block_invoke_157(id *a1, void *a2)
{
  v10 = a2;
  v3 = [a1[4] layerForRenderFlags:{objc_msgSend(v10, "unsignedIntegerValue")}];
  if (v3)
  {
    v4 = [a1[5] objectForKey:v10];
    v5 = [v3 compositingFilter];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 type];

      if (v4 == v7)
      {
LABEL_8:

        goto LABEL_9;
      }

      if (v4 == *MEMORY[0x1E6979D78])
      {
        [v3 setCompositingFilter:0];
        v9 = [a1[6] extraFiltersForType:v4];
        [v3 setFilters:v9];

        goto LABEL_8;
      }

      v8 = [MEMORY[0x1E6979378] filterWithType:v4];
      [v3 setCompositingFilter:v8];
    }

    else
    {
      [v3 setCompositingFilter:0];
    }

    [v3 setFilters:0];
    goto LABEL_8;
  }

LABEL_9:
}

- (int64_t)assetIdiom
{
  v3 = [(UIKBKeyView *)self renderConfig];
  v4 = [v3 isFloating];

  if (v4)
  {
    return 0;
  }

  v6 = [(UIKBKeyView *)self factory];
  v7 = [v6 assetIdiom];

  return v7;
}

- (void)setRenderConfig:(id)a3
{
  v21 = a3;
  v5 = [(UIKBKeyView *)self renderConfig];
  if (v5)
  {
    v6 = [(UIKBKeyView *)self renderConfig];
    v7 = [v6 lightKeyboard];
    v8 = v7 ^ [v21 lightKeyboard];
  }

  else
  {
    v8 = 1;
  }

  v9 = [(UIKBTree *)self->m_keyplane visualStyling];
  if ((v8 & 1) == 0 && (v9 & 0xFF00) == 0x7F00)
  {
    v10 = [(UIKBKeyView *)self renderConfig];
    [v10 keycapOpacity];
    v12 = v11;
    [v21 keycapOpacity];
    v8 = v12 != v13;
  }

  objc_storeStrong(&self->m_renderConfig, a3);
  v14 = v21;
  if (v21)
  {
    v15 = [(UIKBKeyView *)self popupMenu];
    v16 = [(UIKBKeyView *)self renderConfig];
    [v15 setRenderConfig:v16];

    v17 = [(UIKBRenderFactory *)self->m_factory renderingContext];

    [(UIKBKeyView *)self renderConfig];
    if (v17)
      v18 = {;
      v19 = [(UIKBRenderFactory *)self->m_factory renderingContext];
      [v19 setRenderConfig:v18];
    }

    else
      v20 = {;
      v18 = [UIKBRenderingContext renderingContextForRenderConfig:v20];

      [v18 setIsFloating:{-[UIKBTree isFloating](self->m_keyplane, "isFloating")}];
      [(UIKBRenderFactory *)self->m_factory setRenderingContext:v18];
    }

    v14 = v21;
    if (v8)
    {
      self->_renderedKeyState = 0;
      [(UIView *)self setNeedsDisplay];
      v14 = v21;
    }
  }
}

- (void)drawContentsOfRenderers:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIKBKeyView *)self factory];
  v6 = [v5 traitsForKey:self->m_key onKeyplane:self->m_keyplane];

  if ([(UIKBKeyView *)self renderAsMask])
  {
    [v6 modifyForMasking];
  }

  v7 = [(UIKBKeyView *)self factory];
  v18 = [v7 displayContentsForKey:self->m_key];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    LOBYTE(v11) = 0;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        if (v11)
        {
          v11 = 1;
        }

        else
        {
          v11 = !-[UIKBKeyView allowBackgroundCachingForRenderFlags:](self, "allowBackgroundCachingForRenderFlags:", [*(*(&v20 + 1) + 8 * v13) renderFlags]);
        }

        v15 = [v6 hashString];
        v16 = [v14 loadCachedImageForHashString:v15];

        if ((v16 & 1) == 0)
        {
          if (v11)
          {
            [v14 setDisableInternalCaching:1];
          }

          if ([v14 context])
          {
            CGContextSaveGState([v14 context]);
            v17 = [v14 context];
            CGAffineTransformMakeTranslation(&transform, -self->m_drawFrame.origin.x, -self->m_drawFrame.origin.y);
            CGContextConcatCTM(v17, &transform);
          }

          [v14 renderKeyContents:v18 withTraits:v6];
          if ([v14 context])
          {
            CGContextRestoreGState([v14 context]);
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

- (id)_generateBackdropAndBorderMaskImage
{
  [(UIKBKeyView *)self setRenderAsMask:1];
  v3 = +[UIKeyboardCache sharedInstance];
  v4 = [(UIKBTree *)self->m_keyplane layoutName];
  v5 = [v3 displayImagesForView:self fromLayout:v4 imageFlags:&unk_1EFE2C4F0];

  [(UIKBKeyView *)self setRenderAsMask:0];
  if ([v5 count])
  {
    v6 = [v5 objectForKey:&unk_1EFE310D8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)configureBackdropView:(id)a3 forRenderConfig:(id)a4
{
  v34 = a3;
  v6 = a4;
  v7 = [(UIKBKeyView *)self contentsKeyView];
  v8 = [(UIKBKeyView *)self keyplane];
  if (([v8 visualStyling] & 0xFF00) == 0x7F00)
  {
    v9 = 1;
  }

  else
  {
    v10 = [(UIKBKeyView *)self keyplane];
    if ([v10 visualStyle] == 5 || (objc_msgSend(v6, "emptyBackground") & 1) != 0 || (objc_msgSend(v6, "animatedBackground") & 1) != 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v6 colorAdaptiveBackground];
    }
  }

  v11 = [(UIKBKeyView *)self key];
  v12 = [v11 interactionType];

  v13 = [(UIKBKeyView *)self key];
  v33 = [v13 state];

  v14 = [(UIKBKeyView *)self key];
  v32 = [v14 state];

  v15 = [(UIKBKeyView *)self key];
  v16 = [v15 state];

  v17 = [(UIKBKeyView *)self key];
  v31 = [v17 displayTypeHint];

  v18 = [(UIKBKeyView *)self key];
  if ([v18 interactionType] == 9)
  {
    v19 = 1;
  }

  else
  {
    v20 = [(UIKBKeyView *)self key];
    if ([v20 interactionType] == 5)
    {
      v19 = 1;
    }

    else
    {
      v21 = [(UIKBKeyView *)self key];
      v19 = [v21 interactionType] == 6;
    }
  }

  if (v12 == 16)
  {
    v22 = [v7 key];
    v23 = [v22 state] == 20;
  }

  else
  {
    v23 = 0;
  }

  v24 = v9 & ((v16 & 0x10) >> 4) & v19 | v23;
  if (v24)
  {
    [(UIView *)self bounds];
    [v34 setFrame:?];
    [(UIView *)self bounds];
    [v7 setFrame:?];
  }

  v25 = v34;
  if ((v16 & 0x10) == 0 || (v26 = (v12 == 16) | ~[v6 lightKeyboard], v25 = v34, ((v26 | v19) & 1) == 0))
  {
    if (v33 & 4 | v32 & 8)
    {
      if (v31 != 10)
      {
        v27 = v9 | ~[v6 lightKeyboard];
        v25 = v34;
        if ((v27 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else if ((v9 & 1) == 0)
    {
LABEL_24:
      v28 = [v25 imageForCorners];
      v29 = 0;
      goto LABEL_27;
    }
  }

  v28 = [v25 _maskImage];
  v29 = 1;
LABEL_27:
  if (((v28 != 0) & ~v24) != 0)
  {
    v30 = v28;
  }

  else
  {
    v30 = [v7 _generateBackdropAndBorderMaskImage];

    if (v29)
    {
      [v34 _setMaskImage:v30];
    }

    else
    {
      [v34 setImageForCorners:v30];
    }
  }
}

- (void)changeBackgroundToEnabled
{
  if (!self->_singleRerender)
  {
    v11 = [(UIKBKeyView *)self layerForRenderFlags:1];
    v3 = [v11 contentsMultiplyColor];
    v4 = [v11 compositingFilter];
    if (v3)
    {
      activeBackgroundColor = self->_activeBackgroundColor;
      if (activeBackgroundColor)
      {
        CGColorRelease(activeBackgroundColor);
      }

      self->_activeBackgroundColor = CGColorRetain(v3);
    }

    if (v4)
    {
      activeCompositingFilter = self->_activeCompositingFilter;
      if (activeCompositingFilter)
      {
        CFRelease(activeCompositingFilter);
      }

      v7 = CFRetain(v4);
      v8 = self->_activeCompositingFilter;
      self->_activeCompositingFilter = v7;
    }

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v9 = [(UIKBKeyView *)self factory];
    v10 = [v9 defaultKeyBackgroundColorName];
    [v11 setContentsMultiplyColor:UIKBGetNamedColor(v10)];

    [v11 setCompositingFilter:0];
    [MEMORY[0x1E6979518] commit];
    self->_singleRerender = 1;
  }
}

- (void)changeBackgroundToActiveIfNecessary
{
  if (self->_singleRerender)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v3 = [(UIKBKeyView *)self layerForRenderFlags:1];
    v5 = v3;
    if (self->_activeBackgroundColor)
    {
      [v3 setContentsMultiplyColor:?];
      CGColorRelease(self->_activeBackgroundColor);
      self->_activeBackgroundColor = 0;
    }

    if (self->_activeCompositingFilter)
    {
      [v5 setCompositingFilter:?];
      CFRelease(self->_activeCompositingFilter);
      activeCompositingFilter = self->_activeCompositingFilter;
      self->_activeCompositingFilter = 0;
    }

    [MEMORY[0x1E6979518] commit];
    self->_singleRerender = 0;
  }
}

- (CGRect)tapActionRegion
{
  x = self->_tapActionRegion.origin.x;
  y = self->_tapActionRegion.origin.y;
  width = self->_tapActionRegion.size.width;
  height = self->_tapActionRegion.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end