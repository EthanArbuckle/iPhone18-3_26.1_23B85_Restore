@interface UIKBKeyplaneView
- (BOOL)_shouldAllowKey:(id)a3;
- (BOOL)retestSelectedVariantIndexForKey:(id)a3 atPoint:(CGPoint)a4 phase:(int64_t)a5;
- (BOOL)shouldAnimateInKeyView:(id)a3;
- (BOOL)shouldAnimateOutKeyView:(id)a3;
- (BOOL)useDefaultKeyplaneCacheTokenForRenderFlags:(int64_t)a3;
- (BOOL)validForKeyplane:(id)a3 withVisualStyle:(int)a4;
- (CGRect)_safeFrameForKeyViewFrame:(CGRect)a3 inContainer:(id)a4 forKey:(id)a5;
- (NSString)cacheKey;
- (UIKBKeyplaneView)initWithFrame:(CGRect)a3 keyplane:(id)a4;
- (UIKBKeyplaneViewDelegate)delegate;
- (UIKBRenderFactory)factory;
- (UIView)keyplaneMaskView;
- (double)cachedWidth;
- (id)cacheIdentifierForKey:(id)a3;
- (id)cacheIdentifierForKey:(id)a3 withState:(int)a4;
- (id)cacheKeysForRenderFlags:(id)a3;
- (id)containingViewForKey:(id)a3 withState:(int)a4 wantsActiveOut:(BOOL *)a5;
- (id)existingVariantsKeyViewForKey:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)viewForKey:(id)a3;
- (id)viewForKey:(id)a3 state:(int)a4;
- (int64_t)assetIdiom;
- (int64_t)cacheDeferPriority;
- (unint64_t)cornerMaskForKey:(id)a3 recursive:(BOOL)a4;
- (void)_generateFactoryIfNeeded;
- (void)_generateRenderingContextIfNeeded;
- (void)_updateKeyplaneMaskView;
- (void)activateKeys;
- (void)addKeyToDelayedDeactivationSet:(id)a3;
- (void)deactivateAdaptiveKey:(id)a3;
- (void)deactivateKey:(id)a3 previousState:(int)a4;
- (void)deactivateKey:(id)a3 previousState:(int)a4 keyView:(id)a5;
- (void)deactivateKeysWithReason:(id)a3 force:(BOOL)a4;
- (void)dealloc;
- (void)dimKeys:(id)a3;
- (void)displayLayer:(id)a3;
- (void)drawContentsOfRenderers:(id)a3;
- (void)hideKeyCaps:(BOOL)a3;
- (void)hideKeyCaps:(BOOL)a3 andControlKeysWithInteractionTypes:(id)a4;
- (void)layoutSubviews;
- (void)orientKeyCapForKey:(id)a3 orientation:(int64_t)a4;
- (void)prepareForDisplay;
- (void)purgeActiveKeyViews;
- (void)purgeFactory;
- (void)purgeKeyViews;
- (void)purgeLayerContents;
- (void)purgeSubviews;
- (void)removeFromSuperview;
- (void)removeKeyFromDelayedDeactivationSet:(id)a3;
- (void)setContentScaleFactor:(double)a3;
- (void)setRenderConfig:(id)a3;
- (void)setRenderingContext:(id)a3;
- (void)setState:(int)a3 forKey:(id)a4 withReason:(id)a5 force:(BOOL)a6;
- (void)updateFrameForKey:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation UIKBKeyplaneView

- (UIKBKeyplaneView)initWithFrame:(CGRect)a3 keyplane:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v22.receiver = self;
  v22.super_class = UIKBKeyplaneView;
  v11 = [(UIKBSplitImageView *)&v22 initWithFrame:0 canStretchAsFullWidth:x, y, width, height];
  if (v11)
  {
    UIKeyboardGetSafeDeviceIdiom();
    v11->_shouldDrawRect = 1;
    objc_storeStrong(&v11->_keyplane, a4);
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    subviewIndex = v11->_subviewIndex;
    v11->_subviewIndex = v12;

    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    activeViewIndex = v11->_activeViewIndex;
    v11->_activeViewIndex = v14;

    v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    renderedKeyViews = v11->_renderedKeyViews;
    v11->_renderedKeyViews = v16;

    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    delayedDeactivationKeys = v11->_delayedDeactivationKeys;
    v11->_delayedDeactivationKeys = v18;

    [(UIView *)v11 setOpaque:0];
    [(UIView *)v11 setUserInteractionEnabled:1];
    v20 = v11;
  }

  return v11;
}

- (void)removeFromSuperview
{
  v3 = +[UIKeyboardCache sharedInstance];
  [v3 decrementExpectedRender:self];

  [(UIKBKeyplaneView *)self purgeKeyViews];
  v4.receiver = self;
  v4.super_class = UIKBKeyplaneView;
  [(UIView *)&v4 removeFromSuperview];
}

- (void)dealloc
{
  v3 = +[UIKeyboardCache sharedInstance];
  [v3 decrementExpectedRender:self];

  v4.receiver = self;
  v4.super_class = UIKBKeyplaneView;
  [(UIView *)&v4 dealloc];
}

- (BOOL)validForKeyplane:(id)a3 withVisualStyle:(int)a4
{
  v6 = [(UIKBTree *)self->_keyplane looksLike:a3];
  if (v6)
  {
    LOBYTE(v6) = [(UIKBTree *)self->_keyplane visualStyle]== a4;
  }

  return v6;
}

- (void)setRenderConfig:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(UIKBKeyplaneView *)self renderConfig];
  if (v6 && (v7 = v6, -[UIKBKeyplaneView renderConfig](self, "renderConfig"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 lightKeyboard], v10 = objc_msgSend(v5, "lightKeyboard"), v8, v7, v9 == v10))
  {
    if ([(UIKBKeyplaneView *)self isPasscodeStyle])
    {
      v22 = [(UIKBKeyplaneView *)self renderConfig];
      [v22 keycapOpacity];
      v24 = v23;
      [v5 keycapOpacity];
      v11 = v24 == v25;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&self->_renderConfig, a3);
  v12 = [(UIKBRenderFactory *)self->_factory renderingContext];

  [(UIKBKeyplaneView *)self renderConfig];
  if (v12)
    v13 = {;
    v14 = [(UIKBRenderFactory *)self->_factory renderingContext];
    [v14 setRenderConfig:v13];
  }

  else
    v15 = {;
    v13 = [UIKBRenderingContext renderingContextForRenderConfig:v15];

    [v13 setIsFloating:{-[UIKBTree isFloating](self->_keyplane, "isFloating")}];
    [(UIKBRenderFactory *)self->_factory setRenderingContext:v13];
  }

  if (v5 != 0 && !v11)
  {
    [(UIView *)self setNeedsDisplay];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [(UIView *)self subviews];
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v21 setRenderConfig:self->_renderConfig];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }
}

- (void)setRenderingContext:(id)a3
{
  v7 = a3;
  v5 = [v7 handBias];
  v6 = [(UIKBRenderingContext *)self->_renderingContext handBias];
  objc_storeStrong(&self->_renderingContext, a3);
  if (v5 == v6)
  {
    [(UIKBRenderFactory *)self->_factory setRenderingContext:v7];
  }

  else
  {
    [(UIKBKeyplaneView *)self purgeFactory];
    [(UIKBKeyplaneView *)self _generateFactoryIfNeeded];
  }
}

- (void)prepareForDisplay
{
  [(UIKBKeyplaneView *)self _generateFactoryIfNeeded];
  if (self->_keyCaps)
  {
    [(UIView *)self bounds];
    [(UIView *)self->_keyCaps setFrame:?];
  }

  else
  {
    v3 = [UIKBSplitImageView alloc];
    [(UIView *)self bounds];
    v4 = [(UIKBSplitImageView *)v3 initWithFrame:0 canStretchAsFullWidth:?];
    keyCaps = self->_keyCaps;
    self->_keyCaps = v4;

    [(UIKBSplitImageView *)self->_keyCaps prepareForDisplay:([(UIKBTree *)self->_keyplane visualStyling]>> 7) & 1];
    [(UIKBSplitImageView *)self insertSubviewAtBottom:self->_keyCaps];
  }

  if (self->_keyBackgrounds)
  {
    [(UIView *)self bounds];
    [(UIView *)self->_keyBackgrounds setFrame:?];
  }

  else
  {
    v6 = [UIKBSplitImageView alloc];
    [(UIView *)self bounds];
    v7 = [(UIKBSplitImageView *)v6 initWithFrame:0 canStretchAsFullWidth:?];
    keyBackgrounds = self->_keyBackgrounds;
    self->_keyBackgrounds = v7;

    [(UIKBSplitImageView *)self->_keyBackgrounds prepareForDisplay:([(UIKBTree *)self->_keyplane visualStyling]>> 7) & 1];
    [(UIKBSplitImageView *)self insertSubviewAtBottom:self->_keyBackgrounds];
  }

  if (self->_keyBorders)
  {
    [(UIView *)self bounds];
    [(UIView *)self->_keyBorders setFrame:?];
  }

  else
  {
    v9 = [UIKBSplitImageView alloc];
    [(UIView *)self bounds];
    v10 = [(UIKBSplitImageView *)v9 initWithFrame:0 canStretchAsFullWidth:?];
    keyBorders = self->_keyBorders;
    self->_keyBorders = v10;

    [(UIKBSplitImageView *)self->_keyBorders prepareForDisplay:([(UIKBTree *)self->_keyplane visualStyling]>> 7) & 1];
    [(UIKBSplitImageView *)self insertSubviewAtBottom:self->_keyBorders];
  }

  v12 = +[UIKeyboardCache sharedInstance];
  [v12 incrementExpectedRender:self];

  v13 = [(UIKBKeyplaneView *)self cacheKeysForRenderFlags:&unk_1EFE2C520];
  v14 = [(UIKBTree *)self->_keyplane layoutName];
  v15 = +[UIKeyboard activeKeyboard];
  v16 = [v15 traitCollection];

  v17 = dispatch_get_global_queue(25, 0);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __37__UIKBKeyplaneView_prepareForDisplay__block_invoke;
  v21[3] = &unk_1E70F6B40;
  v22 = &unk_1EFE2C520;
  v23 = v13;
  v24 = v14;
  v25 = v16;
  v18 = v16;
  v19 = v14;
  v20 = v13;
  dispatch_async(v17, v21);
}

void __37__UIKBKeyplaneView_prepareForDisplay__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) objectForKey:{*(*(&v10 + 1) + 8 * v6), v10}];
        v8 = +[UIKeyboardCache sharedInstance];
        v9 = [v8 cachedImageForKey:v7 fromLayout:*(a1 + 48) traitCollection:*(a1 + 56)];

        CGImageRelease(v9);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)_generateRenderingContextIfNeeded
{
  if (!self->_renderingContext)
  {
    v3 = [(UIKBKeyplaneView *)self renderConfig];
    v4 = [UIKBRenderingContext renderingContextForRenderConfig:v3];
    renderingContext = self->_renderingContext;
    self->_renderingContext = v4;

    v6 = +[UIKeyboardImpl activeInstance];
    v7 = [v6 textInputTraits];
    -[UIKBRenderingContext setKeyboardType:](self->_renderingContext, "setKeyboardType:", [v7 keyboardType]);

    v8 = [(UIKBTree *)self->_keyplane isFloating];
    v9 = self->_renderingContext;

    [(UIKBRenderingContext *)v9 setIsFloating:v8];
  }
}

- (void)_generateFactoryIfNeeded
{
  if (!self->_factory)
  {
    [(UIKBKeyplaneView *)self _generateRenderingContextIfNeeded];
    v3 = [(UIKBTree *)self->_keyplane visualStyling];
    v4 = [(UIKBKeyplaneView *)self renderingContext];
    v5 = [UIKBRenderFactory factoryForVisualStyle:v3 renderingContext:v4];
    factory = self->_factory;
    self->_factory = v5;

    [(UIView *)self contentScaleFactor];
    [(UIKBRenderFactory *)self->_factory setScale:?];
    [(UIKBScreenTraits *)self->_overrideScreenTraits stretchFactor];
    v7 = self->_factory;

    [(UIKBRenderFactory *)v7 setStretchFactor:?];
  }
}

- (UIKBRenderFactory)factory
{
  [(UIKBKeyplaneView *)self _generateFactoryIfNeeded];
  factory = self->_factory;

  return factory;
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = UIKBKeyplaneView;
  [(UIView *)&v6 willMoveToWindow:v4];
  if (v4)
  {
    v5 = [v4 screen];
    [v5 scale];
    [(UIKBRenderFactory *)self->_factory setScale:?];

    [(UIKBScreenTraits *)self->_overrideScreenTraits stretchFactor];
    [(UIKBRenderFactory *)self->_factory setStretchFactor:?];
  }
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = UIKBKeyplaneView;
  [(UIView *)&v16 layoutSubviews];
  keyplaneMaskView = self->_keyplaneMaskView;
  if (keyplaneMaskView)
  {
    [(UIView *)keyplaneMaskView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(UIView *)self bounds];
    v18.origin.x = v12;
    v18.origin.y = v13;
    v18.size.width = v14;
    v18.size.height = v15;
    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v9;
    v17.size.height = v11;
    if (!CGRectEqualToRect(v17, v18))
    {
      [(UIView *)self bounds];
      [(UIView *)self->_keyplaneMaskView setFrame:?];
      [(UIKBKeyplaneView *)self _updateKeyplaneMaskView];
    }
  }
}

- (NSString)cacheKey
{
  v3 = [(UIKBKeyplaneView *)self cacheToken];
  v4 = [(UIKBTree *)self->_keyplane isSplit];
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v3 stringForSplitState:v4 handBias:{objc_msgSend(v5, "currentHandBias")}];

  return v6;
}

- (BOOL)useDefaultKeyplaneCacheTokenForRenderFlags:(int64_t)a3
{
  v5 = [(UIKBKeyplaneView *)self defaultKeyplaneCacheToken];
  v6 = [(UIKBKeyplaneView *)self cacheToken];
  LOBYTE(a3) = [v5 isUsableForCacheToken:v6 withRenderFlags:a3];

  return a3;
}

- (id)cacheKeysForRenderFlags:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = [(UIKBKeyplaneView *)self cacheKey];
  if (v24)
  {
    v23 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v26;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [v10 integerValue];
          v12 = v24;
          if ([(UIKBKeyplaneView *)self useDefaultKeyplaneCacheTokenForRenderFlags:v11])
          {
            if (v7 || (-[UIKBKeyplaneView defaultKeyplaneCacheToken](self, "defaultKeyplaneCacheToken"), v13 = objc_claimAutoreleasedReturnValue(), v14 = -[UIKBTree isSplit](self->_keyplane, "isSplit"), +[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v15 = objc_claimAutoreleasedReturnValue(), [v13 stringForSplitState:v14 handBias:{objc_msgSend(v15, "currentHandBias")}], v7 = objc_claimAutoreleasedReturnValue(), v15, v13, v7))
            {
              v7 = v7;

              v12 = v7;
            }
          }

          v16 = [(UIKBKeyplaneView *)self renderConfig];
          v17 = [UIKBRenderFactory cacheKeyForString:v12 withRenderFlags:v11 renderConfig:v16];

          [v23 setObject:v17 forKey:v10];
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    if ([(UIKBKeyplaneView *)self isPasscodeStyle])
    {
      v19 = 0;
    }

    else
    {
      v19 = v23;
    }

    v18 = v19;

    v4 = v21;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)displayLayer:(id)a3
{
  v36 = a3;
  if (self->_shouldDrawRect)
  {
    v4 = [(UIView *)self superview];
    if (v4)
    {
      if (self->_keyCaps || self->_keyBackgrounds)
      {

LABEL_6:
        v5 = [(UIView *)self layer];
        [v5 setContents:0];

        v6 = [(UIKBKeyplaneView *)self factory];
        v7 = [v6 backgroundTraitsForKeyplane:self->_keyplane];

        if (self->_keyplaneMaskView || [(UIKBKeyplaneView *)self isPasscodeStyle])
        {
          v8 = &unk_1EFE2C538;
        }

        else
        {
          v8 = &unk_1EFE2C538;
          if ([v7 blendForm] != 2 && objc_msgSend(v7, "blendForm") != 8)
          {
            v8 = &unk_1EFE2C550;
          }
        }

        if ([(UIKBRenderConfig *)self->_renderConfig colorAdaptiveBackground])
        {
          v8 = &unk_1EFE2C568;
        }

        v9 = +[UIKeyboardCache sharedInstance];
        v10 = [(UIKBTree *)self->_keyplane layoutName];
        v11 = [v9 displayImagesForView:self fromLayout:v10 imageFlags:v8];

        [(UIKBKeyplaneView *)self cachedWidth];
        v13 = v12;
        v14 = [v11 objectForKey:&unk_1EFE31150];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = [v11 objectForKey:&unk_1EFE31168];
        }

        v17 = v16;

        [(UIKBSplitImageView *)self->_keyCaps setImage:v17 cachedWidth:self->_keyplane keyplane:v13];
        v18 = [v11 objectForKey:&unk_1EFE31138];
        [(UIKBSplitImageView *)self->_keyBackgrounds setImage:v18 cachedWidth:self->_keyplane keyplane:v13];
        v19 = [v11 objectForKey:&unk_1EFE31120];
        [(UIKBSplitImageView *)self->_keyBorders setImage:v19 cachedWidth:self->_keyplane keyplane:v13];
        v20 = +[UIKeyboardImpl activeInstance];
        v21 = [v20 isTrackpadMode];

        if ((v21 & 1) == 0)
        {
          [(UIView *)self->_keyCaps setAlpha:1.0];
          [(UIView *)self->_keyBackgrounds setAlpha:1.0];
          [(UIView *)self->_keyBorders setAlpha:1.0];
        }

        [(UIView *)self->_keyBackgrounds setHidden:v18 == 0];
        [(UIView *)self->_keyBorders setHidden:v19 == 0];
        v22 = [(UIKBKeyplaneView *)self renderConfig];
        v23 = [v22 lightKeyboard];

        v24 = [v7 blendForm];
        if (v23)
        {
          if (v24 == 1 || [v7 blendForm] == 2 || objc_msgSend(v7, "blendForm") == 7)
          {
            v25 = [(UIKBKeyplaneView *)self renderConfig];
            [v25 lightKeycapOpacity];
LABEL_23:
            [(UIView *)self->_keyBackgrounds setAlpha:?];

LABEL_24:
            if ([v7 blendForm] == 3)
            {
              v26 = *MEMORY[0x1E6979CF8];
              v27 = *MEMORY[0x1E6979860];
            }

            else
            {
              if ([v7 blendForm] == 2)
              {
                v27 = *MEMORY[0x1E6979850];
              }

              else
              {
                if ([v7 blendForm] != 8)
                {
                  if ([v7 blendForm] == 10 || objc_msgSend(v7, "blendForm") == 11)
                  {
                    v32 = [(UIKBKeyplaneView *)self renderConfig];
                    [v7 setUsesDarkAppearance:{objc_msgSend(v32, "lightKeyboard") ^ 1}];

                    [v7 setControlOpacities:0];
                    keyBackgrounds = self->_keyBackgrounds;
                    v34 = [v7 extraFiltersForType:*MEMORY[0x1E6979D78]];
                    [(UIKBSplitImageView *)keyBackgrounds addExtraFilters:v34];
                  }

                  v26 = 0;
                  v27 = 0;
                  goto LABEL_41;
                }

                v27 = *MEMORY[0x1E6979CE8];
                v28 = [(UIKBKeyplaneView *)self renderConfig];
                [v7 setUsesDarkAppearance:{objc_msgSend(v28, "lightKeyboard") ^ 1}];

                [v7 setControlOpacities:0];
                v29 = self->_keyBackgrounds;
                v30 = [v7 extraFiltersForType:*MEMORY[0x1E6979D78]];
                [(UIKBSplitImageView *)v29 addExtraFilters:v30];
              }

              v26 = 0;
            }

LABEL_41:
            [(UIKBSplitImageView *)self->_keyBackgrounds setFilterType:v26];
            [(UIKBSplitImageView *)self->_keyBorders setFilterType:v27];

            goto LABEL_42;
          }
        }

        else if (v24 != 8)
        {
          goto LABEL_24;
        }

        v25 = [(UIKBKeyplaneView *)self renderConfig];
        [v25 keycapOpacity];
        goto LABEL_23;
      }

      keyBorders = self->_keyBorders;

      if (keyBorders)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_42:
  v35 = +[UIKeyboardCache sharedInstance];
  [v35 decrementExpectedRender:self];
}

- (int64_t)cacheDeferPriority
{
  if ([(UIKBKeyplaneView *)self isPasscodeStyle])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (double)cachedWidth
{
  if (+[UIKeyboardCache enabled]&& [(UIKBTree *)self->_keyplane isSplit])
  {
    [(UIKBTree *)self->_keyplane frameForKeylayoutName:@"split-left"];
    v4 = v3;
    [(UIKBTree *)self->_keyplane frameForKeylayoutName:@"split-right"];
    return v4 + v5 + 3.0;
  }

  else
  {
    [(UIView *)self frame];
    return v7;
  }
}

- (int64_t)assetIdiom
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  return v3;
}

- (void)drawContentsOfRenderers:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v4 = 472;
  v5 = 0.0;
  if (+[UIKeyboardCache enabled]&& [(UIKBTree *)self->_keyplane isSplit])
  {
    [(UIKBTree *)self->_keyplane frameForKeylayoutName:@"split-right"];
    v7 = v6;
    [(UIKBTree *)self->_keyplane frameForKeylayoutName:@"split-left"];
    v5 = v7 - v8 + -3.0;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = [(UIKBTree *)self->_keyplane keys];
  v10 = [v9 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    v13 = 0x1E70E9000uLL;
    v36 = *v46;
    v37 = v9;
    do
    {
      v14 = 0;
      do
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v45 + 1) + 8 * v14);
        if ([v15 visible])
        {
          v16 = [(UIKBKeyplaneView *)self defaultKeyplane];
          if (![v15 renderKeyInKeyplane:v16] || -[UIKBKeyplaneView cornerMaskForKey:recursive:](self, "cornerMaskForKey:recursive:", v15, 0))
          {
            goto LABEL_12;
          }

          [v15 frame];
          IsEmpty = CGRectIsEmpty(v52);

          if (!IsEmpty)
          {
            v18 = *(v13 + 3232);
            v19 = [v15 displayString];
            LOBYTE(v18) = [v18 couldUseGlyphSelectorForDisplayString:v19];

            if ((v18 & 1) == 0)
            {
              v39 = v14;
              v40 = v11;
              v20 = [v15 state];
              [v15 setState:2];
              v21 = [(UIKBKeyplaneView *)self factory];
              v22 = v4;
              v16 = [v21 traitsForKey:v15 onKeyplane:*(&self->super.super.super.super.isa + v4)];

              v23 = self;
              v24 = [(UIKBKeyplaneView *)self factory];
              v25 = [v24 displayContentsForKey:v15];

              [v15 setState:v20];
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v26 = v38;
              v27 = [v26 countByEnumeratingWithState:&v41 objects:v49 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v42;
                do
                {
                  for (i = 0; i != v28; ++i)
                  {
                    if (*v42 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v31 = *(*(&v41 + 1) + 8 * i);
                    if ([v31 context])
                    {
                      CGContextSaveGState([v31 context]);
                      if (v5 != 0.0)
                      {
                        [v15 frame];
                        v33 = v32;
                        [*(&v23->super.super.super.super.isa + v22) frame];
                        if (v33 > v34 * 0.5)
                        {
                          CGContextTranslateCTM([v31 context], -v5, 0.0);
                        }
                      }
                    }

                    [v31 renderKeyContents:v25 withTraits:v16];
                    if ([v31 context])
                    {
                      CGContextRestoreGState([v31 context]);
                    }
                  }

                  v28 = [v26 countByEnumeratingWithState:&v41 objects:v49 count:16];
                }

                while (v28);
              }

              v4 = v22;
              self = v23;
              v12 = v36;
              v9 = v37;
              v13 = 0x1E70E9000;
              v14 = v39;
              v11 = v40;
LABEL_12:
            }
          }
        }

        ++v14;
      }

      while (v14 != v11);
      v35 = [v9 countByEnumeratingWithState:&v45 objects:v50 count:16];
      v11 = v35;
    }

    while (v35);
  }
}

- (void)setContentScaleFactor:(double)a3
{
  v7.receiver = self;
  v7.super_class = UIKBKeyplaneView;
  [(UIView *)&v7 setContentScaleFactor:?];
  factory = self->_factory;
  if (factory)
  {
    [(UIKBRenderFactory *)factory scale];
    if (v6 != a3)
    {
      [(UIKBRenderFactory *)self->_factory setScale:a3];
      [(UIView *)self setNeedsDisplay];
    }
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = UIKBKeyplaneView;
  v5 = [(UIView *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (void)addKeyToDelayedDeactivationSet:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UIKBKeyplaneView *)self keyViewAnimator];
    if (v5)
    {
      v6 = [(UIKBKeyplaneView *)self keyViewAnimator];
      v7 = [(UIKBKeyplaneView *)self viewForKey:v4];
      [v6 delayedDeactivationTimeForKeyView:v7];
      v9 = (v8 * 1000000000.0);
    }

    else
    {
      v9 = 59000000;
    }

    delayedDeactivationKeys = self->_delayedDeactivationKeys;
    v11 = [v4 name];
    [(NSMutableDictionary *)delayedDeactivationKeys setObject:v4 forKey:v11];

    v12 = dispatch_time(0, v9);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__UIKBKeyplaneView_addKeyToDelayedDeactivationSet___block_invoke;
    v13[3] = &unk_1E70F35B8;
    v13[4] = self;
    v14 = v4;
    dispatch_after(v12, MEMORY[0x1E69E96A0], v13);
  }
}

void __51__UIKBKeyplaneView_addKeyToDelayedDeactivationSet___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 552);
  v3 = [*(a1 + 40) name];
  v5 = [v2 objectForKey:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) setState:2 forKey:v5];
    v4 = v5;
  }
}

- (void)removeKeyFromDelayedDeactivationSet:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(NSMutableDictionary *)self->_delayedDeactivationKeys count];
    v4 = v8;
    if (v5)
    {
      delayedDeactivationKeys = self->_delayedDeactivationKeys;
      v7 = [v8 name];
      [(NSMutableDictionary *)delayedDeactivationKeys removeObjectForKey:v7];

      v4 = v8;
    }
  }
}

- (id)cacheIdentifierForKey:(id)a3
{
  v3 = a3;
  v4 = [v3 variantDisplayString];
  [v3 paddedFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = MEMORY[0x1E696AEC0];
  v14 = [v3 name];
  v15 = [v3 displayType];
  v16 = [v3 displayTypeHint];
  v17 = [v3 overrideDisplayString];

  v18 = [v13 stringWithFormat:@"%@%@%d%d%@%.0f%.0f%.0f%.0f", v14, v4, v15, v16, v17, v6, v8, v10, v12];

  return v18;
}

- (id)cacheIdentifierForKey:(id)a3 withState:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [v6 overrideDisplayString];

  if (v7)
  {
    v8 = [v6 name];
    v9 = [v6 overrideDisplayString];
    v10 = [v8 stringByAppendingFormat:@"_%@_%d", v9, v4];

LABEL_5:
    v8 = v10;
    goto LABEL_6;
  }

  v11 = [(UIKBKeyplaneView *)self _shouldUseUnifiedKeyView:v6 forState:v4];
  v12 = [v6 name];
  v8 = v12;
  if ((v11 & 1) == 0)
  {
    v10 = [v12 stringByAppendingFormat:@"_%d", v4];
    goto LABEL_5;
  }

LABEL_6:
  if ([v6 displayType] == 7)
  {
    v13 = +[UIKeyboardImpl activeInstance];
    v14 = [v13 isShiftLocked];

    if (v14)
    {
      v15 = [v8 stringByAppendingString:@"_caps"];

      v8 = v15;
    }
  }

  return v8;
}

- (unint64_t)cornerMaskForKey:(id)a3 recursive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (-[UIKBTree isSplit](self->_keyplane, "isSplit") && ([v6 displayType] == 36 || objc_msgSend(v6, "displayType") == 37))
  {
    if (v4)
    {
      v7 = [(UIView *)self _clipCornersOfView:self];
    }

    else
    {
      v7 = -1;
    }

    v11 = [v6 clipCorners] & v7;
    goto LABEL_40;
  }

  if ([v6 interactionType] != 16 && objc_msgSend(v6, "displayType") != 35 && objc_msgSend(v6, "displayType") != 31 && objc_msgSend(v6, "displayType") != 32 && objc_msgSend(v6, "displayType") != 1 && objc_msgSend(v6, "displayType") != 25 && (objc_msgSend(v6, "name"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"Chinese-Facemark"), v8, !v9) || -[UIKBScreenTraits idiom](self->_overrideScreenTraits, "idiom") != 1 && -[UIKBScreenTraits idiom](self->_overrideScreenTraits, "idiom") != 24 && -[UIKBScreenTraits idiom](self->_overrideScreenTraits, "idiom") != 25 && -[UIKBScreenTraits idiom](self->_overrideScreenTraits, "idiom") != 26 && -[UIKBScreenTraits idiom](self->_overrideScreenTraits, "idiom") != 23 || !-[UIKBTree isSplit](self->_keyplane, "isSplit"))
  {
LABEL_21:
    v11 = 0;
    goto LABEL_40;
  }

  if (v4)
  {
    v10 = [(UIView *)self _clipCornersOfView:self];
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v10 = -1;
  }

  [v6 paddedFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v53 = v18;
  [(UIKBTree *)self->_keyplane frameForKeylayoutName:@"split-left"];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v54 = v26;
  [(UIKBTree *)self->_keyplane frameForKeylayoutName:@"split-right"];
  v58 = v28;
  v59 = v27;
  v56 = v30;
  v57 = v29;
  v61.origin.x = v13;
  v55 = v13;
  v61.origin.y = v15;
  v61.size.width = v17;
  v61.size.height = v19;
  MaxX = CGRectGetMaxX(v61);
  v62.origin.x = v21;
  v60 = v21;
  v62.origin.y = v23;
  v62.size.width = v25;
  v62.size.height = v54;
  v32 = CGRectGetMaxX(v62);
  v33 = MaxX == v32;
  if (MaxX != v32)
  {
    v10 &= 5u;
  }

  v34 = 16 * (MaxX == v32);
  v63.origin.x = v13;
  v63.origin.y = v15;
  v63.size.width = v17;
  v63.size.height = v53;
  MinX = CGRectGetMinX(v63);
  v64.origin.y = v58;
  v64.origin.x = v59;
  v64.size.height = v56;
  v64.size.width = v57;
  v36 = CGRectGetMinX(v64);
  if (MinX == v36)
  {
    v37 = v10;
  }

  else
  {
    v37 = v10 & 0xA;
  }

  if (MinX == v36)
  {
    v34 = (16 * v33) | 0x20;
  }

  v65.origin.x = v21;
  v65.origin.y = v23;
  v65.size.width = v25;
  v65.size.height = v54;
  MaxY = CGRectGetMaxY(v65);
  v66.origin.x = v55;
  v66.origin.y = v15;
  v66.size.width = v17;
  v66.size.height = v53;
  v39 = MaxY - CGRectGetMaxY(v66);
  v40 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v41 = [v40 preferencesActions];
  [v41 rivenSizeFactor:1.0];
  v43 = v42;

  if (v39 > v43)
  {
    v37 &= 3u;
  }

  v67.origin.x = v55;
  v67.origin.y = v15;
  v67.size.width = v17;
  v67.size.height = v53;
  MinY = CGRectGetMinY(v67);
  v68.origin.x = v60;
  v68.origin.y = v23;
  v68.size.width = v25;
  v68.size.height = v54;
  v45 = MinY - CGRectGetMinY(v68);
  v46 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v47 = [v46 preferencesActions];
  [v47 rivenSizeFactor:1.0];
  v49 = v48;

  v50 = v37 & 0xC;
  if (v45 <= v49)
  {
    v50 = v37;
  }

  if (v4)
  {
    v51 = 0;
  }

  else
  {
    v51 = v34;
  }

  v11 = v50 | v51;
LABEL_40:

  return v11;
}

- (id)containingViewForKey:(id)a3 withState:(int)a4 wantsActiveOut:(BOOL *)a5
{
  v8 = a3;
  if ([v8 displayType])
  {
    v9 = 0;
  }

  else
  {
    v10 = [v8 parentKey];
    v9 = v10 != 0;
  }

  if ([v8 displayType] == 57)
  {
    v11 = [v8 parentKey];
    v48 = v11 != 0;
  }

  else
  {
    v48 = 0;
  }

  v12 = [(UIKBKeyplaneView *)self defaultKeyplane];
  v13 = [v8 renderKeyInKeyplane:v12] | v9;

  v14 = [v8 displayString];
  v47 = [UIKBRenderFactory couldUseGlyphSelectorForDisplayString:v14];

  v15 = [v8 displayType];
  v16 = v15 == 20 && (a4 & 0x10) == 0;
  v49 = v16;
  v17 = [v8 interactionType];
  v18 = [(UIKBKeyplaneView *)self cornerMaskForKey:v8 recursive:0];
  v19 = 0;
  candidateGapView = self->_candidateGapView;
  v21 = (a4 == 8) & v13;
  v22 = v21 | ((a4 & 0x10) >> 4);
  if (v21 == 1)
  {
    v46 = self;
    v23 = self->_candidateGapView;
    v24 = v13;
    v25 = v17;
    v26 = v18;
    v19 = [v8 rendering] == 1 || objc_msgSend(v8, "rendering") == 33 || objc_msgSend(v8, "rendering") == 34 || objc_msgSend(v8, "rendering") == 11;
    v18 = v26;
    v17 = v25;
    v13 = v24;
    candidateGapView = v23;
    self = v46;
  }

  if (a5)
  {
    *a5 = (a4 == 4) | v22;
  }

  if (a4 == 4)
  {
    v27 = 0;
    if (v15 <= 0x29 && ((1 << v15) & 0x38000000010) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v27 = a4 == 16;
    if (a4 == 16 && v15 == 37)
    {
      overrideScreenTraits = self->_overrideScreenTraits;
      if (overrideScreenTraits && overrideScreenTraits->_isFirstPartyStickers)
      {
        goto LABEL_29;
      }

      v27 = 1;
    }
  }

  if (!v49 && ((a4 == 4) | v22 & 1) != 0 && v17 != 10 && !v19 && candidateGapView == 0)
  {
    v30 = [(UIView *)self window];
    v31 = [v30 rootViewController];
    v32 = [v31 view];

    v33 = self->_overrideScreenTraits;
    if (v33 && v33->_isFirstPartyStickers)
    {
      v34 = [(UIView *)self window];
LABEL_47:
      v29 = v34;
LABEL_48:

      goto LABEL_49;
    }

    if ([v30 _isTextEffectsWindow])
    {
      if (![v32 containsView:self])
      {
        v35 = [(UIKBKeyplaneView *)self delegate];
        if (v35)
        {
          v36 = v35;
          v37 = [(UIKBKeyplaneView *)self delegate];
          v38 = objc_opt_respondsToSelector();

          if (v38)
          {
            v39 = [(UIKBKeyplaneView *)self delegate];
            v29 = [v39 keyplaneView:self containingViewForActiveKey:v8];

            if (v29)
            {
              goto LABEL_48;
            }
          }
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (!v27 || (-[UIKBKeyplaneView factory](self, "factory"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 popupKeyUsesCustomKeyContentView:v8], v40, !v41))
      {
LABEL_46:
        v34 = self;
        goto LABEL_47;
      }

      v42 = [v30 rootViewController];
      v43 = [v42 presentedViewController];

      if (v43)
      {
        v44 = [v32 window];

        v32 = v44;
      }
    }

    v34 = v32;
    v32 = v34;
    goto LABEL_47;
  }

  if (v18 != 0 || ((v13 | v48) & 1) == 0 || v47 || v19 || candidateGapView != 0)
  {
LABEL_29:
    v29 = self;
    goto LABEL_49;
  }

  v29 = 0;
LABEL_49:

  return v29;
}

- (BOOL)_shouldAllowKey:(id)a3
{
  v4 = a3;
  if (![v4 visible])
  {
    goto LABEL_6;
  }

  v5 = [(UIKBTree *)self->_keyplane keys];
  if (![v5 containsObject:v4])
  {
    v6 = [v4 parentKey];

    if (v6)
    {
      goto LABEL_5;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

LABEL_5:
  v7 = 1;
LABEL_7:

  return v7;
}

- (void)setState:(int)a3 forKey:(id)a4 withReason:(id)a5 force:(BOOL)a6
{
  v192[2] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  if (![(UIKBKeyplaneView *)self _shouldAllowKey:v10])
  {
    goto LABEL_119;
  }

  if (a3 <= 0x14 && ((1 << a3) & 0x110010) != 0)
  {
    if (a6)
    {
LABEL_5:
      v12 = 1;
      LODWORD(v13) = a3;
      goto LABEL_12;
    }
  }

  else
  {
    [(UIKBKeyplaneView *)self removeKeyFromDelayedDeactivationSet:v10];
    if (a6)
    {
      goto LABEL_5;
    }
  }

  if ([v10 state] == 16)
  {
    v14 = [v10 displayType];
    v12 = v14 != 37;
    if (v14 == 37)
    {
      a3 = 16;
    }
  }

  else
  {
    v12 = 1;
  }

  LODWORD(v13) = 4;
LABEL_12:
  overrideScreenTraits = self->_overrideScreenTraits;
  if (overrideScreenTraits)
  {
    if (overrideScreenTraits->_isStickerPickerServiceCollectionView)
    {
      v16 = [v10 displayType];
      if (a3 == 2 && v16 == 36 && [(UIKBKeyplaneView *)self stateForKey:v10]== 2)
      {
        goto LABEL_119;
      }
    }
  }

  v17 = +[UIKeyboard isRemoteEmojiCollectionViewEnabled];
  v18 = +[UIKeyboardImpl activeInstance];
  v19 = [v18 isEmojiPopoverPresented];

  v13 = (v17 & v19 & ([v10 displayType] == 36)) != 0 ? v13 : a3;
  v20 = [v10 state];
  [v10 setState:v13];
  if ([v10 ghost])
  {
    goto LABEL_119;
  }

  v21 = self->_overrideScreenTraits;
  if (!v21 || v13 != 4 || !v21->_isFirstPartyStickers)
  {
    v22 = 0;
    v23 = v13 == 16;
    if (v20 == 16 && v13 == 16)
    {
      v24 = [(UIKBKeyplaneView *)self factory];
      v25 = [v24 popupKeyUsesCustomKeyContentView:v10];

      v22 = [(UIKBKeyplaneView *)self existingVariantsKeyViewForKey:v10];
      if (v25)
      {
        if ([v10 variantType] != 12 && objc_msgSend(v10, "variantType") != 13)
        {
          goto LABEL_34;
        }

        v26 = [v10 selectedVariantIndices];
        if (![v26 count])
        {

          goto LABEL_41;
        }

        v20 = [v10 selectedVariantIndices];
        v27 = [v20 firstObject];
        v28 = [v27 integerValue];

        LODWORD(v20) = 16;
        if (v28 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_34:
          [v22 updateForKeyplane:self->_keyplane key:v10];
        }

LABEL_41:
        v22 = v22;

        v23 = 1;
        goto LABEL_42;
      }

      if ([v10 displayType] != 37)
      {
        v23 = 1;
        if ([v10 selectedVariantIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_42:
          v190 = 0;
          v29 = [(UIKBKeyplaneView *)self containingViewForKey:v10 withState:v13 wantsActiveOut:&v190];
          if (!v29)
          {
            self->_shouldDrawRect = 1;
LABEL_118:

            goto LABEL_119;
          }

          v187 = v20;
          v30 = [(UIKBKeyplaneView *)self cacheIdentifierForKey:v10 withState:v13];
          v188 = v30;
          v189 = v22;
          if (v22)
          {
            v31 = v22;
          }

          else
          {
            v31 = [(NSMutableDictionary *)self->_renderedKeyViews objectForKey:v30];

            if (!v31)
            {
              v82 = self->_overrideScreenTraits;
              if (v82 && v82->_isFirstPartyStickers && ([v10 variantType] == 12 || objc_msgSend(v10, "variantType") == 13))
              {
                [v10 setPopupDirection:3];
              }

              v83 = [(UIKBKeyplaneView *)self factory];
              v84 = [v83 traitsForKey:v10 onKeyplane:self->_keyplane];

              v186 = v84;
              v85 = [(NSMutableDictionary *)v84 geometry];
              [v85 displayFrame];
              v87 = v86;
              v89 = v88;
              v91 = v90;
              v93 = v92;

              if (v29 == self)
              {
                v101 = v93;
                v99 = v91;
                v97 = v89;
                v95 = v87;
              }

              else
              {
                [(UIView *)self convertRect:v29 toView:v87, v89, v91, v93];
                v95 = v94;
                v97 = v96;
                v99 = v98;
                v101 = v100;
                if ([v10 popupDirection] == 1)
                {
                  v102 = [(UIView *)v29 window];
                  v103 = [v102 screen];

                  if (v103)
                  {
                    v183 = v87;
                    v104 = [(UIView *)v29 coordinateSpace];
                    v105 = [(UIView *)v29 window];
                    v106 = [v105 screen];
                    v107 = [v106 coordinateSpace];
                    [v104 convertRect:v107 toCoordinateSpace:{v95, v97, v99, v101}];
                    v109 = v108;

                    if (v109 >= 0.0)
                    {
                      v87 = v183;
                    }

                    else
                    {
                      v110 = self->_overrideScreenTraits;
                      v87 = v183;
                      if (!v110 || !v110->_isFirstPartyStickers)
                      {
                        [v10 setPopupDirection:2];
                        v111 = [(UIKBKeyplaneView *)self factory];
                        v112 = [v111 traitsForKey:v10 onKeyplane:self->_keyplane];

                        v113 = [(NSMutableDictionary *)v112 geometry];
                        [v113 displayFrame];
                        v87 = v114;
                        v89 = v115;
                        v91 = v116;
                        v93 = v117;

                        [(UIView *)self convertRect:v29 toView:v87, v89, v91, v93];
                        v95 = v118;
                        v97 = v119;
                        v99 = v120;
                        v101 = v121;
                        v186 = v112;
                      }
                    }
                  }
                }
              }

              v32 = 0;
              if ((*&v95 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v97 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v99 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v101 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
              {
                v48 = 0;
LABEL_115:
                v50 = v186;
LABEL_116:

                goto LABEL_117;
              }

              if (v23 && (-[UIKBKeyplaneView factory](self, "factory"), v131 = objc_claimAutoreleasedReturnValue(), v132 = [v131 popupKeyUsesCustomKeyContentView:v10], v131, v132))
              {
                v133 = [(UIKBKeyplaneView *)self factory];
                v181 = [v133 contentViewClassNameForPopupKey:v10];

                v184 = [objc_alloc(NSClassFromString(v181)) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
                v134 = [UIKBViewBackedKeyView alloc];
                keyplane = self->_keyplane;
                v135 = [(UIKBKeyplaneView *)self overrideScreenTraits];
                v177 = [(UIKBKeyView *)v134 initWithFrame:keyplane keyplane:v10 key:v135 screenTraits:v95, v97, v99, v101];

                v136 = [(UIView *)self superview];
                [v184 setTouchForwardingView:v136];

                [(UIKBViewBackedKeyView *)v177 setContentView:v184];
                v48 = v177;
              }

              else
              {
                v137 = [(UIKBKeyplaneView *)self keyViewAnimator];
                v138 = [(UIKBKeyplaneView *)self overrideScreenTraits];
                v139 = [v137 keyViewClassForKey:v10 renderTraits:v186 screenTraits:v138];

                v140 = [(UIKBKeyplaneView *)self overrideScreenTraits];
                if (v140 && (v141 = v140, v142 = [(objc_class *)v139 wantsScreenTraits], v141, v142))
                {
                  v143 = [v139 alloc];
                  v185 = self->_keyplane;
                  v144 = [(UIKBKeyplaneView *)self overrideScreenTraits];
                  v48 = [v143 initWithFrame:v185 keyplane:v10 key:v144 screenTraits:{v95, v97, v99, v101}];
                }

                else
                {
                  v48 = [[v139 alloc] initWithFrame:self->_keyplane keyplane:v10 key:{v95, v97, v99, v101}];
                }
              }

              [(UIKBViewBackedKeyView *)v48 setDrawFrame:v87, v89, v91, v93];
              [v10 setClipCorners:{-[UIKBKeyplaneView cornerMaskForKey:recursive:](self, "cornerMaskForKey:recursive:", v10, 1)}];
              [(UIKBViewBackedKeyView *)v48 updateForKeyplane:self->_keyplane key:v10];
              if (!v23)
              {
                v145 = [v10 parentKey];

                if (!v145)
                {
                  [(NSMutableDictionary *)self->_renderedKeyViews setObject:v48 forKey:v188];
                }
              }

              v32 = 0;
LABEL_54:
              v49 = 3;
              if (v29 == self)
              {
                v49 = 2;
              }

              v50 = *(&self->super.super.super.super.isa + OBJC_IVAR___UIKBKeyplaneView__shouldDrawRect[v49]);
              if (v29 == self)
              {
                [(UIView *)self bounds];
                v52 = v51;
                v54 = v53;
                v56 = v55;
                v58 = v57;
                [(UIView *)v48 frame];
                v194.origin.x = v59;
                v194.origin.y = v60;
                v194.size.width = v61;
                v194.size.height = v62;
                v193.origin.x = v52;
                v193.origin.y = v54;
                v193.size.width = v56;
                v193.size.height = v58;
                if (!CGRectContainsRect(v193, v194))
                {
                  v63 = [(UIKBKeyplaneView *)self emojiKeyManager];

                  if (v63)
                  {
                    v64 = self->_activeViewIndex;

                    v50 = v64;
                  }
                }
              }

              if (!v48)
              {
                goto LABEL_116;
              }

              v65 = v29;
              if ([(UIKBKeyplaneView *)self shouldAnimateInKeyView:v48])
              {
                v182 = [(UIKBKeyplaneView *)self keyViewAnimator];
              }

              else
              {
                v182 = 0;
              }

              v66 = v32;
              v67 = [(UIKBKeyplaneView *)self emojiKeyManager];

              if (v67)
              {
                v68 = [(UIKBKeyplaneView *)self emojiKeyManager];
                [v68 updateEmojiKeyManagerWithKey:v10 withKeyView:v48];
              }

              v69 = [v182 shouldTransitionKeyView:v48 fromState:v187 toState:{objc_msgSend(v10, "state")}];
              v70 = [v10 name];
              v186 = v50;
              v71 = [(NSMutableDictionary *)v50 objectForKey:v70];

              v180 = v71;
              v72 = v71 == v48;
              v73 = v69;
              v32 = v66;
              v29 = v65;
              if (!v72)
              {
                if ((v73 & 1) == 0)
                {
                  [(UIKBKeyView *)v180 removeFromSuperview];
                }

                v74 = [v10 name];
                [(NSMutableDictionary *)v186 setObject:v48 forKey:v74];
              }

              [(UIView *)v48 setAlpha:1.0];
              if (os_variant_has_internal_diagnostics())
              {
                v146 = [v10 name];
                v147 = [v146 isEqualToString:@"EmojiPopupKey"];

                if (v147)
                {
                  v148 = [v10 displayString];
                  v149 = [UIKeyboardEmojiCollectionInputView shouldHighlightEmoji:v148];

                  if (v149)
                  {
                    v173 = v73;
                    v174 = v32;
                    v178 = v29;
                    v150 = [UILabel alloc];
                    [v10 paddedFrame];
                    v152 = v151;
                    [v10 paddedFrame];
                    v153 = [(UILabel *)v150 initWithFrame:0.0, 0.0, v152];
                    [(UILabel *)v153 setText:@"PRERELEASE"];
                    v154 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
                    [(UILabel *)v153 setTextColor:v154];

                    v155 = [(UIKBTree *)self->_keyplane isSplit];
                    v156 = 8.0;
                    if (v155)
                    {
                      if ([v10 variantType] == 10)
                      {
                        v157 = 8;
                      }

                      else
                      {
                        v157 = 5;
                      }

                      v156 = v157;
                    }

                    v158 = [off_1E70ECC18 systemFontOfSize:v156 weight:*off_1E70ECD08];
                    [(UILabel *)v153 setFont:v158];

                    [(UILabel *)v153 setAdjustsFontSizeToFitWidth:1];
                    [(UILabel *)v153 setMinimumScaleFactor:0.5];
                    [(UIView *)v48 addSubview:v153];
                    [(UIView *)v153 setTranslatesAutoresizingMaskIntoConstraints:0];
                    if ([v10 variantType] == 10)
                    {
                      v159 = -15.0;
                      if (![(UIKBTree *)self->_keyplane isSplit])
                      {
                        v159 = -2.0;
                        if ([(UIKBScreenTraits *)self->_overrideScreenTraits idiom]!= 1 && [(UIKBScreenTraits *)self->_overrideScreenTraits idiom]!= 24 && [(UIKBScreenTraits *)self->_overrideScreenTraits idiom]!= 25 && [(UIKBScreenTraits *)self->_overrideScreenTraits idiom]!= 26)
                        {
                          if ([(UIKBScreenTraits *)self->_overrideScreenTraits idiom]== 23)
                          {
                            v159 = -2.0;
                          }

                          else
                          {
                            v159 = 8.0;
                          }
                        }
                      }

                      v179 = MEMORY[0x1E69977A0];
                      v160 = [(UIView *)v48 centerXAnchor];
                      v170 = [(UIView *)v153 centerXAnchor];
                      v171 = v160;
                      v172 = [v160 constraintEqualToAnchor:v170];
                      v192[0] = v172;
                      v161 = [(UIView *)v48 centerYAnchor];
                      [(UIView *)v153 centerYAnchor];
                      v163 = v162 = v161;
                      v164 = [v161 constraintEqualToAnchor:v159 constant:?];
                      v192[1] = v164;
                      v165 = v192;
                    }

                    else
                    {
                      if ([v10 variantType] == 10)
                      {
                        v166 = -3.0;
                      }

                      else
                      {
                        v166 = -5.0;
                      }

                      v179 = MEMORY[0x1E69977A0];
                      v167 = [(UIView *)v48 centerXAnchor];
                      v170 = [(UIView *)v153 centerXAnchor];
                      v171 = v167;
                      v172 = [v167 constraintEqualToAnchor:v170];
                      v191[0] = v172;
                      v168 = [(UIView *)v48 topAnchor];
                      [(UIView *)v153 topAnchor];
                      v163 = v162 = v168;
                      v164 = [v168 constraintEqualToAnchor:v166 constant:?];
                      v191[1] = v164;
                      v165 = v191;
                    }

                    v169 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:2];
                    [v179 activateConstraints:v169];

                    v32 = v174;
                    v29 = v178;
                    v73 = v173;
                  }
                }
              }

              if (v190 == 1)
              {
                v75 = +[UIKeyboardImpl activeInstance];
                [v75 textInputTraits];
                v175 = v29;
                v77 = v76 = v73;
                if ([v77 isSecureTextEntry])
                {
                  v78 = 18;
                }

                else
                {
                  v78 = 0;
                }

                v79 = [(UIView *)v48 layer];
                [v79 setDisableUpdateMask:v78];

                v73 = v76;
                v29 = v175;
              }

              v80 = [(UIKBKeyplaneView *)self _shouldUseUnifiedKeyView:v10 forState:v13];
              v81 = v48 == v32 || [(UIView *)v29 containsView:v48];
              if (v80 & v81)
              {
                goto LABEL_105;
              }

              if (v29 == self && (candidateGapView = self->_candidateGapView) != 0)
              {
                v124 = v29;
                v125 = v48;
              }

              else
              {
                if (v180)
                {
                  v122 = v73;
                }

                else
                {
                  v122 = 0;
                }

                if (v122 != 1 || ([v182 shouldAssertCurrentKeyState:v10] & 1) != 0)
                {
                  [(UIView *)v29 addSubview:v48];
LABEL_105:
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v126 = v48;
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0 || ([(UIKBKeyplaneView *)v29 _isTextEffectsWindow]& 1) != 0 || (v127 = self->_overrideScreenTraits) != 0 && v127->_isFirstPartyStickers)
                    {
                      [(UIKBViewBackedKeyView *)v126 setTouchForwardingView:0];
                    }

                    else
                    {
                      v130 = [(UIView *)self superview];
                      [(UIKBViewBackedKeyView *)v126 setTouchForwardingView:v130];
                    }
                  }

                  v128 = [(UIKBKeyplaneView *)self factory];
                  [(UIKBKeyView *)v48 setFactory:v128];

                  v129 = [(UIKBKeyplaneView *)self renderConfig];
                  [(UIKBViewBackedKeyView *)v48 setRenderConfig:v129];

                  [(UIView *)v48 setNeedsDisplay];
                  [(UIKBKeyView *)v48 prepareForDisplay];
                  [(UIKBKeyView *)v48 updateKeycapLayerOrientation];
                  if (v73)
                  {
                    [v182 transitionKeyView:v48 fromState:v187 toState:objc_msgSend(v10 completion:{"state"), 0}];
                  }

                  goto LABEL_115;
                }

                v124 = v29;
                v125 = v48;
                candidateGapView = v180;
              }

              [(UIView *)v124 insertSubview:v125 belowSubview:candidateGapView];
              goto LABEL_105;
            }
          }

          v32 = v31;
          v33 = [(UIKBKeyplaneView *)self factory];
          v34 = [v33 traitsForKey:v10 onKeyplane:self->_keyplane];

          v35 = [v34 geometry];
          [v35 displayFrame];
          v37 = v36;
          v39 = v38;
          v41 = v40;
          v43 = v42;

          v44 = v43;
          v45 = v41;
          v46 = v39;
          v47 = v37;
          if (v29 != self)
          {
            [(UIView *)self convertRect:v29 toView:v37, v39, v41, v43];
          }

          if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v46 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v45 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v44 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v48 = v32;
LABEL_117:

            v22 = v189;
            goto LABEL_118;
          }

          [(UIView *)v32 setFrame:?];
          [(UIKBViewBackedKeyView *)v32 setDrawFrame:v37, v39, v41, v43];
          v48 = v32;
          goto LABEL_54;
        }

LABEL_37:
        [(UIKBKeyplaneView *)self deactivateKey:v10 previousState:v20];
        goto LABEL_42;
      }
    }

    if (!v12)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if ([v10 variantType])
  {
    v22 = 0;
    v23 = 0;
    if (!v12)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

LABEL_119:
}

- (CGRect)_safeFrameForKeyViewFrame:(CGRect)a3 inContainer:(id)a4 forKey:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v11 = a5;
  v12 = [v10 coordinateSpace];
  v13 = [v10 window];
  v14 = [v13 screen];
  v15 = [v14 coordinateSpace];
  [v12 convertRect:v15 toCoordinateSpace:{x, y, width, height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if ([v10 _shouldReverseLayoutDirection])
  {
    v50.origin.x = v17;
    rect = v19;
    v50.origin.y = v19;
    v50.size.width = v21;
    v50.size.height = v23;
    v49 = x;
    MaxX = CGRectGetMaxX(v50);
    v25 = [v10 window];
    v26 = [v25 safeAreaLayoutGuide];
    [v26 layoutFrame];
    v27 = y;
    v28 = width;
    v29 = height;
    v30 = CGRectGetMaxX(v51);

    v31 = MaxX <= v30;
    x = v49;
    height = v29;
    width = v28;
    y = v27;
    if (!v31)
    {
      v52.origin.x = v17;
      v52.origin.y = rect;
      v52.size.width = v21;
      v52.size.height = v23;
      v32 = CGRectGetMaxX(v52);
      v33 = [v10 window];
      v34 = [v33 safeAreaLayoutGuide];
      [v34 layoutFrame];
      v35 = v32 - CGRectGetMaxX(v53);

      [v11 frame];
      x = v49 - (v35 - fmod(v35, v36));
    }
  }

  else
  {
    v37 = [v10 window];
    [v37 safeAreaInsets];
    v39 = v38;

    if (v17 < v39)
    {
      v40 = [v10 window];
      [v40 safeAreaInsets];
      v42 = v41 - v17;

      [v11 frame];
      x = x + v42 - fmod(v42, v43);
    }
  }

  v44 = x;
  v45 = y;
  v46 = width;
  v47 = height;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

- (void)updateFrameForKey:(id)a3
{
  v24 = a3;
  v4 = [(UIKBKeyplaneView *)self viewForKey:?];
  if (v4)
  {
    v5 = -[UIKBKeyplaneView containingViewForKey:withState:wantsActiveOut:](self, "containingViewForKey:withState:wantsActiveOut:", v24, [v24 state], 0);
    if (v5)
    {
      v6 = [(UIKBKeyplaneView *)self factory];
      v7 = [v6 traitsForKey:v24 onKeyplane:self->_keyplane];

      v8 = [v7 geometry];
      [v8 displayFrame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = v16;
      v18 = v14;
      v19 = v12;
      v20 = v10;
      if (v5 != self)
      {
        [(UIView *)self convertRect:v5 toView:v10, v12, v14, v16];
      }

      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v19 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        [v4 setFrame:?];
        [v4 setDrawFrame:{v10, v12, v14, v16}];
      }
    }
  }
}

- (id)viewForKey:(id)a3
{
  v4 = a3;
  activeViewIndex = self->_activeViewIndex;
  v6 = [v4 name];
  v7 = [(NSMutableDictionary *)activeViewIndex objectForKey:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    subviewIndex = self->_subviewIndex;
    v10 = [v4 name];
    v8 = [(NSMutableDictionary *)subviewIndex objectForKey:v10];
  }

  return v8;
}

- (id)viewForKey:(id)a3 state:(int)a4
{
  renderedKeyViews = self->_renderedKeyViews;
  v5 = [(UIKBKeyplaneView *)self cacheIdentifierForKey:a3 withState:*&a4];
  v6 = [(NSMutableDictionary *)renderedKeyViews objectForKey:v5];

  return v6;
}

- (BOOL)shouldAnimateInKeyView:(id)a3
{
  v4 = [a3 key];
  v5 = ([v4 state] != 2 || objc_msgSend(v4, "interactionType") != 9) && a3 != 0;

  return v5;
}

- (BOOL)shouldAnimateOutKeyView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UIView *)self window];
    if (v5)
    {
      if ([UIApp applicationState] == 2)
      {
        v6 = [v4 window];
        v7 = [v6 _isHostedInAnotherProcess];
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)deactivateAdaptiveKey:(id)a3
{
  v4 = a3;
  [v4 setState:2];
  [(UIKBKeyplaneView *)self removeKeyFromDelayedDeactivationSet:v4];
  -[UIKBKeyplaneView deactivateKey:previousState:](self, "deactivateKey:previousState:", v4, [v4 state]);
}

- (void)dimKeys:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __28__UIKBKeyplaneView_dimKeys___block_invoke;
  v14[3] = &unk_1E7100338;
  v14[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v14];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(NSMutableDictionary *)self->_renderedKeyViews allValues];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) dimKeys:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

void __28__UIKBKeyplaneView_dimKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 integerValue];
  v6 = v5;
  if (v5)
  {
    [v7 doubleValue];
    [*(*(a1 + 32) + 600) setAlpha:?];
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v7 doubleValue];
  [*(*(a1 + 32) + 608) setAlpha:?];
  if ((v6 & 2) != 0)
  {
LABEL_4:
    [v7 doubleValue];
    [*(*(a1 + 32) + 592) setAlpha:?];
  }

LABEL_5:
}

- (void)hideKeyCaps:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  [(UIView *)self->_keyCaps setHidden:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(NSMutableDictionary *)self->_renderedKeyViews allValues];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) hideKeyCap:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)hideKeyCaps:(BOOL)a3 andControlKeysWithInteractionTypes:(id)a4
{
  v4 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(UIView *)self->_keyCaps setHidden:v4];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSMutableDictionary *)self->_renderedKeyViews allValues];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = MEMORY[0x1E696AD98];
        v14 = [v12 key];
        v15 = [v13 numberWithUnsignedInt:{objc_msgSend(v14, "interactionType")}];

        if ([v6 containsObject:v15])
        {
          [v12 hideKeyCap:v4];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)orientKeyCapForKey:(id)a3 orientation:(int64_t)a4
{
  activeViewIndex = self->_activeViewIndex;
  v7 = a3;
  v8 = [v7 name];
  v9 = [(NSMutableDictionary *)activeViewIndex objectForKey:v8];
  [v9 orientKeyCap:a4];

  subviewIndex = self->_subviewIndex;
  v11 = [v7 name];
  v12 = [(NSMutableDictionary *)subviewIndex objectForKey:v11];
  [v12 orientKeyCap:a4];

  v13 = [(UIKBKeyplaneView *)self cacheIdentifierForKey:v7 withState:2];
  v14 = [(NSMutableDictionary *)self->_renderedKeyViews objectForKey:v13];
  [v14 orientKeyCap:a4];
  v15 = [(UIKBKeyplaneView *)self cacheIdentifierForKey:v7 withState:4];

  v16 = [(NSMutableDictionary *)self->_renderedKeyViews objectForKey:v15];

  [v16 orientKeyCap:a4];
  v18 = [(UIKBKeyplaneView *)self cacheIdentifierForKey:v7 withState:8];

  v17 = [(NSMutableDictionary *)self->_renderedKeyViews objectForKey:v18];

  [v17 orientKeyCap:a4];
}

- (id)existingVariantsKeyViewForKey:(id)a3
{
  v4 = a3;
  activeViewIndex = self->_activeViewIndex;
  v6 = [v4 name];
  v7 = [(NSMutableDictionary *)activeViewIndex objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    subviewIndex = self->_subviewIndex;
    v11 = [v4 name];
    v9 = [(NSMutableDictionary *)subviewIndex objectForKey:v11];
  }

  return v9;
}

- (BOOL)retestSelectedVariantIndexForKey:(id)a3 atPoint:(CGPoint)a4 phase:(int64_t)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  if ([(UIKBRenderFactory *)self->_factory popupKeyUsesCustomKeyContentView:v9])
  {
    v10 = [(UIKBKeyplaneView *)self existingVariantsKeyViewForKey:v9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self convertPoint:v10 toView:x, y];
      v11 = [v10 retestSelectedVariantIndexForKey:v9 atPoint:a5 phase:?];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)deactivateKey:(id)a3 previousState:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(UIKBKeyplaneView *)self viewForKey:v6];
  [(UIKBKeyplaneView *)self deactivateKey:v6 previousState:v4 keyView:v7];
}

- (void)deactivateKey:(id)a3 previousState:(int)a4 keyView:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  if (![(UIKBKeyplaneView *)self shouldAnimateOutKeyView:v9])
  {
    v11 = 0;
LABEL_7:
    [v9 removeFromSuperview];
    activeViewIndex = self->_activeViewIndex;
    v14 = [v8 name];
    [(NSMutableDictionary *)activeViewIndex removeObjectForKey:v14];

    subviewIndex = self->_subviewIndex;
    v16 = [v8 name];
    [(NSMutableDictionary *)subviewIndex removeObjectForKey:v16];

    goto LABEL_8;
  }

  v10 = [(UIKBKeyplaneView *)self keyViewAnimator];
  v11 = v10;
  if (!v10 || ([v10 disabled] & 1) != 0)
  {
    goto LABEL_7;
  }

  if ([v11 shouldTransitionKeyView:v9 fromState:v6 toState:{objc_msgSend(v8, "state")}])
  {
    v12 = [v8 state];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__UIKBKeyplaneView_deactivateKey_previousState_keyView___block_invoke;
    v17[3] = &unk_1E70F4660;
    v18 = v9;
    v19 = self;
    v20 = v8;
    v11 = v11;
    v21 = v11;
    [v11 transitionOutKeyView:v18 fromState:v6 toState:v12 completion:v17];
  }

LABEL_8:
}

uint64_t __56__UIKBKeyplaneView_deactivateKey_previousState_keyView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(*(a1 + 40) + 536);
  v3 = [*(a1 + 48) name];
  v4 = [v2 objectForKey:v3];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    v6 = *(*(a1 + 40) + 536);
    v7 = [*(a1 + 48) name];
    [v6 removeObjectForKey:v7];
  }

  v8 = *(*(a1 + 40) + 528);
  v9 = [*(a1 + 48) name];
  v10 = [v8 objectForKey:v9];
  v11 = *(a1 + 32);

  if (v10 == v11)
  {
    v12 = *(*(a1 + 40) + 528);
    v13 = [*(a1 + 48) name];
    [v12 removeObjectForKey:v13];
  }

  result = [*(a1 + 56) disabled];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 56) shouldAssertCurrentKeyState:*(a1 + 48)];
    if (result)
    {
      v15 = *(a1 + 40);
      v16 = [*(a1 + 48) state];
      v17 = *(a1 + 48);

      return [v15 setState:v16 forKey:v17];
    }
  }

  return result;
}

- (void)deactivateKeysWithReason:(id)a3 force:(BOOL)a4
{
  v5 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = +[UIKeyboardImpl activeInstance];
  [v8 clearLongPressTimer];

  [(UIKBKeyplaneView *)self cancelDelayedDeactivation];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [(NSMutableDictionary *)self->_delayedDeactivationKeys allValues];
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v4 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v4)
        {
          objc_enumerationMutation(v9);
        }

        [(UIKBKeyplaneView *)self setState:2 forKey:*(*(&v38 + 1) + 8 * i) withReason:v7 force:v5];
      }

      v11 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v11);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = [(NSMutableDictionary *)self->_activeViewIndex allValues];
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v4 = [*(*(&v34 + 1) + 8 * j) key];
        [(UIKBKeyplaneView *)self setState:2 forKey:v4 withReason:v7 force:v5];
      }

      v15 = [v13 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v15);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(UIView *)self subviews];
  v18 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v30 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [v22 key];
          v24 = [v23 state];

          if (v24 == 16 || v24 == 4)
          {
            v4 = [v22 key];
            v26 = [v4 avoidAutoDeactivation] ^ 1;
          }

          else
          {
            v26 = 0;
          }

          if (v24 == 16 || v24 == 4)
          {
          }

          if (v26)
          {
            v28 = [v22 key];
            [(UIKBKeyplaneView *)self setState:2 forKey:v28 withReason:v7 force:v5];
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v19);
  }
}

- (void)activateKeys
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NSMutableDictionary *)self->_activeViewIndex allValues];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [(UIView *)self window];
        v10 = [v9 rootViewController];
        v11 = [v10 view];

        [v11 addSubview:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)purgeActiveKeyViews
{
  v3 = [MEMORY[0x1E695DF70] array];
  renderedKeyViews = self->_renderedKeyViews;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__UIKBKeyplaneView_purgeActiveKeyViews__block_invoke;
  v6[3] = &unk_1E7114210;
  v7 = v3;
  v5 = v3;
  [(NSMutableDictionary *)renderedKeyViews enumerateKeysAndObjectsUsingBlock:v6];
  [(NSMutableDictionary *)self->_renderedKeyViews removeObjectsForKeys:v5];
}

void __39__UIKBKeyplaneView_purgeActiveKeyViews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_%d", 4];
  v7 = [v8 hasSuffix:v6];

  if (v7)
  {
    [v5 removeFromSuperview];
    [*(a1 + 32) addObject:v8];
  }
}

- (void)purgeKeyViews
{
  v57 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v3 = [(NSMutableDictionary *)self->_activeViewIndex allValues];
  v4 = [v3 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v50;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v50 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v49 + 1) + 8 * i);
        v9 = [v8 key];
        if ([v9 interactionType] == 2)
        {
        }

        else
        {
          v10 = [v8 key];
          v11 = [v10 interactionType];

          if (v11 != 15)
          {
            continue;
          }
        }

        [v8 removeFromSuperview];
      }

      v5 = [v3 countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v5);
  }

  [(UIKBKeyplaneView *)self deactivateKeysWithReason:@"purgeKeyViews" force:1];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = self;
  v13 = [(NSMutableDictionary *)self->_subviewIndex allValues];
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = v14;
  v16 = *v46;
  do
  {
    for (j = 0; j != v15; ++j)
    {
      if (*v46 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v45 + 1) + 8 * j);
      v19 = [v18 key];
      if ([v19 isHashed])
      {
      }

      else
      {
        v20 = [(UIKBTree *)v12->_keyplane keys];
        v21 = [v18 key];
        v22 = [v20 containsObject:v21];

        if (v22)
        {
          continue;
        }
      }

      [v18 removeFromSuperview];
    }

    v15 = [v13 countByEnumeratingWithState:&v45 objects:v55 count:16];
  }

  while (v15);
LABEL_23:

  v23 = [(UIKBKeyplaneView *)v12 keyViewAnimator];
  v24 = [v23 shouldPurgeKeyViews];

  if (v24)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v25 = [(UIView *)v12 subviews];
    v26 = [v25 countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v42;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v42 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v41 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v30 removeFromSuperview];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v27);
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v31 = [(NSMutableDictionary *)v12->_renderedKeyViews allValues];
  v32 = [v31 countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v38;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v38 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v37 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v36 removeFromSuperview];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v37 objects:v53 count:16];
    }

    while (v33);
  }

  [(NSMutableDictionary *)v12->_renderedKeyViews removeAllObjects];
}

- (void)purgeSubviews
{
  v3 = [(NSMutableDictionary *)self->_subviewIndex allValues];
  [v3 makeObjectsPerformSelector:sel_removeFromSuperview];

  subviewIndex = self->_subviewIndex;

  [(NSMutableDictionary *)subviewIndex removeAllObjects];
}

- (void)purgeLayerContents
{
  [(UIKBSplitImageView *)self->_keyCaps clearImages];
  [(UIKBSplitImageView *)self->_keyBackgrounds clearImages];
  keyBorders = self->_keyBorders;

  [(UIKBSplitImageView *)keyBorders clearImages];
}

- (void)purgeFactory
{
  factory = self->_factory;
  self->_factory = 0;
}

- (void)_updateKeyplaneMaskView
{
  v3 = +[UIKeyboardCache sharedInstance];
  v4 = [(UIKBTree *)self->_keyplane layoutName];
  v7 = [v3 displayImagesForView:self fromLayout:v4 imageFlags:&unk_1EFE2C580];

  v5 = [v7 objectForKey:&unk_1EFE31138];
  v6 = [[UIImageView alloc] initWithImage:v5];
  [(UIView *)self->_keyplaneMaskView setMaskView:v6];
}

- (UIView)keyplaneMaskView
{
  keyplaneMaskView = self->_keyplaneMaskView;
  if (!keyplaneMaskView)
  {
    v4 = [UIImageView alloc];
    [(UIView *)self bounds];
    v5 = [(UIImageView *)v4 initWithFrame:?];
    v6 = self->_keyplaneMaskView;
    self->_keyplaneMaskView = v5;

    [(UIView *)self->_keyplaneMaskView setUserInteractionEnabled:0];
    [(UIView *)self->_keyplaneMaskView setClipsToBounds:1];
    [(UIView *)self insertSubview:self->_keyplaneMaskView aboveSubview:self->_keyBackgrounds];
    [(UIKBKeyplaneView *)self _updateKeyplaneMaskView];
    keyplaneMaskView = self->_keyplaneMaskView;
  }

  return keyplaneMaskView;
}

- (UIKBKeyplaneViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end