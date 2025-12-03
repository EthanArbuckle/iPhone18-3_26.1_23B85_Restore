@interface UIKBKeyplaneView
- (BOOL)_shouldAllowKey:(id)key;
- (BOOL)retestSelectedVariantIndexForKey:(id)key atPoint:(CGPoint)point phase:(int64_t)phase;
- (BOOL)shouldAnimateInKeyView:(id)view;
- (BOOL)shouldAnimateOutKeyView:(id)view;
- (BOOL)useDefaultKeyplaneCacheTokenForRenderFlags:(int64_t)flags;
- (BOOL)validForKeyplane:(id)keyplane withVisualStyle:(int)style;
- (CGRect)_safeFrameForKeyViewFrame:(CGRect)frame inContainer:(id)container forKey:(id)key;
- (NSString)cacheKey;
- (UIKBKeyplaneView)initWithFrame:(CGRect)frame keyplane:(id)keyplane;
- (UIKBKeyplaneViewDelegate)delegate;
- (UIKBRenderFactory)factory;
- (UIView)keyplaneMaskView;
- (double)cachedWidth;
- (id)cacheIdentifierForKey:(id)key;
- (id)cacheIdentifierForKey:(id)key withState:(int)state;
- (id)cacheKeysForRenderFlags:(id)flags;
- (id)containingViewForKey:(id)key withState:(int)state wantsActiveOut:(BOOL *)out;
- (id)existingVariantsKeyViewForKey:(id)key;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)viewForKey:(id)key;
- (id)viewForKey:(id)key state:(int)state;
- (int64_t)assetIdiom;
- (int64_t)cacheDeferPriority;
- (unint64_t)cornerMaskForKey:(id)key recursive:(BOOL)recursive;
- (void)_generateFactoryIfNeeded;
- (void)_generateRenderingContextIfNeeded;
- (void)_updateKeyplaneMaskView;
- (void)activateKeys;
- (void)addKeyToDelayedDeactivationSet:(id)set;
- (void)deactivateAdaptiveKey:(id)key;
- (void)deactivateKey:(id)key previousState:(int)state;
- (void)deactivateKey:(id)key previousState:(int)state keyView:(id)view;
- (void)deactivateKeysWithReason:(id)reason force:(BOOL)force;
- (void)dealloc;
- (void)dimKeys:(id)keys;
- (void)displayLayer:(id)layer;
- (void)drawContentsOfRenderers:(id)renderers;
- (void)hideKeyCaps:(BOOL)caps;
- (void)hideKeyCaps:(BOOL)caps andControlKeysWithInteractionTypes:(id)types;
- (void)layoutSubviews;
- (void)orientKeyCapForKey:(id)key orientation:(int64_t)orientation;
- (void)prepareForDisplay;
- (void)purgeActiveKeyViews;
- (void)purgeFactory;
- (void)purgeKeyViews;
- (void)purgeLayerContents;
- (void)purgeSubviews;
- (void)removeFromSuperview;
- (void)removeKeyFromDelayedDeactivationSet:(id)set;
- (void)setContentScaleFactor:(double)factor;
- (void)setRenderConfig:(id)config;
- (void)setRenderingContext:(id)context;
- (void)setState:(int)state forKey:(id)key withReason:(id)reason force:(BOOL)force;
- (void)updateFrameForKey:(id)key;
- (void)willMoveToWindow:(id)window;
@end

@implementation UIKBKeyplaneView

- (UIKBKeyplaneView)initWithFrame:(CGRect)frame keyplane:(id)keyplane
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  keyplaneCopy = keyplane;
  v22.receiver = self;
  v22.super_class = UIKBKeyplaneView;
  height = [(UIKBSplitImageView *)&v22 initWithFrame:0 canStretchAsFullWidth:x, y, width, height];
  if (height)
  {
    UIKeyboardGetSafeDeviceIdiom();
    height->_shouldDrawRect = 1;
    objc_storeStrong(&height->_keyplane, keyplane);
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    subviewIndex = height->_subviewIndex;
    height->_subviewIndex = v12;

    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    activeViewIndex = height->_activeViewIndex;
    height->_activeViewIndex = v14;

    v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    renderedKeyViews = height->_renderedKeyViews;
    height->_renderedKeyViews = v16;

    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    delayedDeactivationKeys = height->_delayedDeactivationKeys;
    height->_delayedDeactivationKeys = v18;

    [(UIView *)height setOpaque:0];
    [(UIView *)height setUserInteractionEnabled:1];
    v20 = height;
  }

  return height;
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

- (BOOL)validForKeyplane:(id)keyplane withVisualStyle:(int)style
{
  v6 = [(UIKBTree *)self->_keyplane looksLike:keyplane];
  if (v6)
  {
    LOBYTE(v6) = [(UIKBTree *)self->_keyplane visualStyle]== style;
  }

  return v6;
}

- (void)setRenderConfig:(id)config
{
  v31 = *MEMORY[0x1E69E9840];
  configCopy = config;
  renderConfig = [(UIKBKeyplaneView *)self renderConfig];
  if (renderConfig && (v7 = renderConfig, -[UIKBKeyplaneView renderConfig](self, "renderConfig"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 lightKeyboard], v10 = objc_msgSend(configCopy, "lightKeyboard"), v8, v7, v9 == v10))
  {
    if ([(UIKBKeyplaneView *)self isPasscodeStyle])
    {
      renderConfig2 = [(UIKBKeyplaneView *)self renderConfig];
      [renderConfig2 keycapOpacity];
      v24 = v23;
      [configCopy keycapOpacity];
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

  objc_storeStrong(&self->_renderConfig, config);
  renderingContext = [(UIKBRenderFactory *)self->_factory renderingContext];

  [(UIKBKeyplaneView *)self renderConfig];
  if (renderingContext)
    v13 = {;
    renderingContext2 = [(UIKBRenderFactory *)self->_factory renderingContext];
    [renderingContext2 setRenderConfig:v13];
  }

  else
    v15 = {;
    v13 = [UIKBRenderingContext renderingContextForRenderConfig:v15];

    [v13 setIsFloating:{-[UIKBTree isFloating](self->_keyplane, "isFloating")}];
    [(UIKBRenderFactory *)self->_factory setRenderingContext:v13];
  }

  if (configCopy != 0 && !v11)
  {
    [(UIView *)self setNeedsDisplay];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  subviews = [(UIView *)self subviews];
  v17 = [subviews countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v21 setRenderConfig:self->_renderConfig];
        }
      }

      v18 = [subviews countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }
}

- (void)setRenderingContext:(id)context
{
  contextCopy = context;
  handBias = [contextCopy handBias];
  handBias2 = [(UIKBRenderingContext *)self->_renderingContext handBias];
  objc_storeStrong(&self->_renderingContext, context);
  if (handBias == handBias2)
  {
    [(UIKBRenderFactory *)self->_factory setRenderingContext:contextCopy];
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
  layoutName = [(UIKBTree *)self->_keyplane layoutName];
  v15 = +[UIKeyboard activeKeyboard];
  traitCollection = [v15 traitCollection];

  v17 = dispatch_get_global_queue(25, 0);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __37__UIKBKeyplaneView_prepareForDisplay__block_invoke;
  v21[3] = &unk_1E70F6B40;
  v22 = &unk_1EFE2C520;
  v23 = v13;
  v24 = layoutName;
  v25 = traitCollection;
  v18 = traitCollection;
  v19 = layoutName;
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
    renderConfig = [(UIKBKeyplaneView *)self renderConfig];
    v4 = [UIKBRenderingContext renderingContextForRenderConfig:renderConfig];
    renderingContext = self->_renderingContext;
    self->_renderingContext = v4;

    v6 = +[UIKeyboardImpl activeInstance];
    textInputTraits = [v6 textInputTraits];
    -[UIKBRenderingContext setKeyboardType:](self->_renderingContext, "setKeyboardType:", [textInputTraits keyboardType]);

    isFloating = [(UIKBTree *)self->_keyplane isFloating];
    v9 = self->_renderingContext;

    [(UIKBRenderingContext *)v9 setIsFloating:isFloating];
  }
}

- (void)_generateFactoryIfNeeded
{
  if (!self->_factory)
  {
    [(UIKBKeyplaneView *)self _generateRenderingContextIfNeeded];
    visualStyling = [(UIKBTree *)self->_keyplane visualStyling];
    renderingContext = [(UIKBKeyplaneView *)self renderingContext];
    v5 = [UIKBRenderFactory factoryForVisualStyle:visualStyling renderingContext:renderingContext];
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

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  v6.receiver = self;
  v6.super_class = UIKBKeyplaneView;
  [(UIView *)&v6 willMoveToWindow:windowCopy];
  if (windowCopy)
  {
    screen = [windowCopy screen];
    [screen scale];
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
  cacheToken = [(UIKBKeyplaneView *)self cacheToken];
  isSplit = [(UIKBTree *)self->_keyplane isSplit];
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [cacheToken stringForSplitState:isSplit handBias:{objc_msgSend(v5, "currentHandBias")}];

  return v6;
}

- (BOOL)useDefaultKeyplaneCacheTokenForRenderFlags:(int64_t)flags
{
  defaultKeyplaneCacheToken = [(UIKBKeyplaneView *)self defaultKeyplaneCacheToken];
  cacheToken = [(UIKBKeyplaneView *)self cacheToken];
  LOBYTE(flags) = [defaultKeyplaneCacheToken isUsableForCacheToken:cacheToken withRenderFlags:flags];

  return flags;
}

- (id)cacheKeysForRenderFlags:(id)flags
{
  v30 = *MEMORY[0x1E69E9840];
  flagsCopy = flags;
  cacheKey = [(UIKBKeyplaneView *)self cacheKey];
  if (cacheKey)
  {
    v23 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(flagsCopy, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = flagsCopy;
    obj = flagsCopy;
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
          integerValue = [v10 integerValue];
          v12 = cacheKey;
          if ([(UIKBKeyplaneView *)self useDefaultKeyplaneCacheTokenForRenderFlags:integerValue])
          {
            if (v7 || (-[UIKBKeyplaneView defaultKeyplaneCacheToken](self, "defaultKeyplaneCacheToken"), v13 = objc_claimAutoreleasedReturnValue(), v14 = -[UIKBTree isSplit](self->_keyplane, "isSplit"), +[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v15 = objc_claimAutoreleasedReturnValue(), [v13 stringForSplitState:v14 handBias:{objc_msgSend(v15, "currentHandBias")}], v7 = objc_claimAutoreleasedReturnValue(), v15, v13, v7))
            {
              v7 = v7;

              v12 = v7;
            }
          }

          renderConfig = [(UIKBKeyplaneView *)self renderConfig];
          v17 = [UIKBRenderFactory cacheKeyForString:v12 withRenderFlags:integerValue renderConfig:renderConfig];

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

    flagsCopy = v21;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)displayLayer:(id)layer
{
  layerCopy = layer;
  if (self->_shouldDrawRect)
  {
    superview = [(UIView *)self superview];
    if (superview)
    {
      if (self->_keyCaps || self->_keyBackgrounds)
      {

LABEL_6:
        layer = [(UIView *)self layer];
        [layer setContents:0];

        factory = [(UIKBKeyplaneView *)self factory];
        v7 = [factory backgroundTraitsForKeyplane:self->_keyplane];

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
        layoutName = [(UIKBTree *)self->_keyplane layoutName];
        v11 = [v9 displayImagesForView:self fromLayout:layoutName imageFlags:v8];

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
        isTrackpadMode = [v20 isTrackpadMode];

        if ((isTrackpadMode & 1) == 0)
        {
          [(UIView *)self->_keyCaps setAlpha:1.0];
          [(UIView *)self->_keyBackgrounds setAlpha:1.0];
          [(UIView *)self->_keyBorders setAlpha:1.0];
        }

        [(UIView *)self->_keyBackgrounds setHidden:v18 == 0];
        [(UIView *)self->_keyBorders setHidden:v19 == 0];
        renderConfig = [(UIKBKeyplaneView *)self renderConfig];
        lightKeyboard = [renderConfig lightKeyboard];

        blendForm = [v7 blendForm];
        if (lightKeyboard)
        {
          if (blendForm == 1 || [v7 blendForm] == 2 || objc_msgSend(v7, "blendForm") == 7)
          {
            renderConfig2 = [(UIKBKeyplaneView *)self renderConfig];
            [renderConfig2 lightKeycapOpacity];
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
                    renderConfig3 = [(UIKBKeyplaneView *)self renderConfig];
                    [v7 setUsesDarkAppearance:{objc_msgSend(renderConfig3, "lightKeyboard") ^ 1}];

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
                renderConfig4 = [(UIKBKeyplaneView *)self renderConfig];
                [v7 setUsesDarkAppearance:{objc_msgSend(renderConfig4, "lightKeyboard") ^ 1}];

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

        else if (blendForm != 8)
        {
          goto LABEL_24;
        }

        renderConfig2 = [(UIKBKeyplaneView *)self renderConfig];
        [renderConfig2 keycapOpacity];
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
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  return userInterfaceIdiom;
}

- (void)drawContentsOfRenderers:(id)renderers
{
  v51 = *MEMORY[0x1E69E9840];
  renderersCopy = renderers;
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
  keys = [(UIKBTree *)self->_keyplane keys];
  v10 = [keys countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    v13 = 0x1E70E9000uLL;
    v36 = *v46;
    v37 = keys;
    do
    {
      v14 = 0;
      do
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(keys);
        }

        v15 = *(*(&v45 + 1) + 8 * v14);
        if ([v15 visible])
        {
          defaultKeyplane = [(UIKBKeyplaneView *)self defaultKeyplane];
          if (![v15 renderKeyInKeyplane:defaultKeyplane] || -[UIKBKeyplaneView cornerMaskForKey:recursive:](self, "cornerMaskForKey:recursive:", v15, 0))
          {
            goto LABEL_12;
          }

          [v15 frame];
          IsEmpty = CGRectIsEmpty(v52);

          if (!IsEmpty)
          {
            v18 = *(v13 + 3232);
            displayString = [v15 displayString];
            LOBYTE(v18) = [v18 couldUseGlyphSelectorForDisplayString:displayString];

            if ((v18 & 1) == 0)
            {
              v39 = v14;
              v40 = v11;
              state = [v15 state];
              [v15 setState:2];
              factory = [(UIKBKeyplaneView *)self factory];
              v22 = v4;
              defaultKeyplane = [factory traitsForKey:v15 onKeyplane:*(&self->super.super.super.super.isa + v4)];

              selfCopy = self;
              factory2 = [(UIKBKeyplaneView *)self factory];
              v25 = [factory2 displayContentsForKey:v15];

              [v15 setState:state];
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v26 = renderersCopy;
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
                        [*(&selfCopy->super.super.super.super.isa + v22) frame];
                        if (v33 > v34 * 0.5)
                        {
                          CGContextTranslateCTM([v31 context], -v5, 0.0);
                        }
                      }
                    }

                    [v31 renderKeyContents:v25 withTraits:defaultKeyplane];
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
              self = selfCopy;
              v12 = v36;
              keys = v37;
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
      v35 = [keys countByEnumeratingWithState:&v45 objects:v50 count:16];
      v11 = v35;
    }

    while (v35);
  }
}

- (void)setContentScaleFactor:(double)factor
{
  v7.receiver = self;
  v7.super_class = UIKBKeyplaneView;
  [(UIView *)&v7 setContentScaleFactor:?];
  factory = self->_factory;
  if (factory)
  {
    [(UIKBRenderFactory *)factory scale];
    if (v6 != factor)
    {
      [(UIKBRenderFactory *)self->_factory setScale:factor];
      [(UIView *)self setNeedsDisplay];
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = UIKBKeyplaneView;
  v5 = [(UIView *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (void)addKeyToDelayedDeactivationSet:(id)set
{
  setCopy = set;
  if (setCopy)
  {
    keyViewAnimator = [(UIKBKeyplaneView *)self keyViewAnimator];
    if (keyViewAnimator)
    {
      keyViewAnimator2 = [(UIKBKeyplaneView *)self keyViewAnimator];
      v7 = [(UIKBKeyplaneView *)self viewForKey:setCopy];
      [keyViewAnimator2 delayedDeactivationTimeForKeyView:v7];
      v9 = (v8 * 1000000000.0);
    }

    else
    {
      v9 = 59000000;
    }

    delayedDeactivationKeys = self->_delayedDeactivationKeys;
    name = [setCopy name];
    [(NSMutableDictionary *)delayedDeactivationKeys setObject:setCopy forKey:name];

    v12 = dispatch_time(0, v9);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__UIKBKeyplaneView_addKeyToDelayedDeactivationSet___block_invoke;
    v13[3] = &unk_1E70F35B8;
    v13[4] = self;
    v14 = setCopy;
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

- (void)removeKeyFromDelayedDeactivationSet:(id)set
{
  setCopy = set;
  if (setCopy)
  {
    v8 = setCopy;
    v5 = [(NSMutableDictionary *)self->_delayedDeactivationKeys count];
    setCopy = v8;
    if (v5)
    {
      delayedDeactivationKeys = self->_delayedDeactivationKeys;
      name = [v8 name];
      [(NSMutableDictionary *)delayedDeactivationKeys removeObjectForKey:name];

      setCopy = v8;
    }
  }
}

- (id)cacheIdentifierForKey:(id)key
{
  keyCopy = key;
  variantDisplayString = [keyCopy variantDisplayString];
  [keyCopy paddedFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = MEMORY[0x1E696AEC0];
  name = [keyCopy name];
  displayType = [keyCopy displayType];
  displayTypeHint = [keyCopy displayTypeHint];
  overrideDisplayString = [keyCopy overrideDisplayString];

  v18 = [v13 stringWithFormat:@"%@%@%d%d%@%.0f%.0f%.0f%.0f", name, variantDisplayString, displayType, displayTypeHint, overrideDisplayString, v6, v8, v10, v12];

  return v18;
}

- (id)cacheIdentifierForKey:(id)key withState:(int)state
{
  v4 = *&state;
  keyCopy = key;
  overrideDisplayString = [keyCopy overrideDisplayString];

  if (overrideDisplayString)
  {
    name = [keyCopy name];
    overrideDisplayString2 = [keyCopy overrideDisplayString];
    v10 = [name stringByAppendingFormat:@"_%@_%d", overrideDisplayString2, v4];

LABEL_5:
    name = v10;
    goto LABEL_6;
  }

  v11 = [(UIKBKeyplaneView *)self _shouldUseUnifiedKeyView:keyCopy forState:v4];
  name2 = [keyCopy name];
  name = name2;
  if ((v11 & 1) == 0)
  {
    v10 = [name2 stringByAppendingFormat:@"_%d", v4];
    goto LABEL_5;
  }

LABEL_6:
  if ([keyCopy displayType] == 7)
  {
    v13 = +[UIKeyboardImpl activeInstance];
    isShiftLocked = [v13 isShiftLocked];

    if (isShiftLocked)
    {
      v15 = [name stringByAppendingString:@"_caps"];

      name = v15;
    }
  }

  return name;
}

- (unint64_t)cornerMaskForKey:(id)key recursive:(BOOL)recursive
{
  recursiveCopy = recursive;
  keyCopy = key;
  if (-[UIKBTree isSplit](self->_keyplane, "isSplit") && ([keyCopy displayType] == 36 || objc_msgSend(keyCopy, "displayType") == 37))
  {
    if (recursiveCopy)
    {
      v7 = [(UIView *)self _clipCornersOfView:self];
    }

    else
    {
      v7 = -1;
    }

    v11 = [keyCopy clipCorners] & v7;
    goto LABEL_40;
  }

  if ([keyCopy interactionType] != 16 && objc_msgSend(keyCopy, "displayType") != 35 && objc_msgSend(keyCopy, "displayType") != 31 && objc_msgSend(keyCopy, "displayType") != 32 && objc_msgSend(keyCopy, "displayType") != 1 && objc_msgSend(keyCopy, "displayType") != 25 && (objc_msgSend(keyCopy, "name"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"Chinese-Facemark"), v8, !v9) || -[UIKBScreenTraits idiom](self->_overrideScreenTraits, "idiom") != 1 && -[UIKBScreenTraits idiom](self->_overrideScreenTraits, "idiom") != 24 && -[UIKBScreenTraits idiom](self->_overrideScreenTraits, "idiom") != 25 && -[UIKBScreenTraits idiom](self->_overrideScreenTraits, "idiom") != 26 && -[UIKBScreenTraits idiom](self->_overrideScreenTraits, "idiom") != 23 || !-[UIKBTree isSplit](self->_keyplane, "isSplit"))
  {
LABEL_21:
    v11 = 0;
    goto LABEL_40;
  }

  if (recursiveCopy)
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

  [keyCopy paddedFrame];
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
  preferencesActions = [v40 preferencesActions];
  [preferencesActions rivenSizeFactor:1.0];
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
  preferencesActions2 = [v46 preferencesActions];
  [preferencesActions2 rivenSizeFactor:1.0];
  v49 = v48;

  v50 = v37 & 0xC;
  if (v45 <= v49)
  {
    v50 = v37;
  }

  if (recursiveCopy)
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

- (id)containingViewForKey:(id)key withState:(int)state wantsActiveOut:(BOOL *)out
{
  keyCopy = key;
  if ([keyCopy displayType])
  {
    v9 = 0;
  }

  else
  {
    parentKey = [keyCopy parentKey];
    v9 = parentKey != 0;
  }

  if ([keyCopy displayType] == 57)
  {
    parentKey2 = [keyCopy parentKey];
    v48 = parentKey2 != 0;
  }

  else
  {
    v48 = 0;
  }

  defaultKeyplane = [(UIKBKeyplaneView *)self defaultKeyplane];
  v13 = [keyCopy renderKeyInKeyplane:defaultKeyplane] | v9;

  displayString = [keyCopy displayString];
  v47 = [UIKBRenderFactory couldUseGlyphSelectorForDisplayString:displayString];

  displayType = [keyCopy displayType];
  v16 = displayType == 20 && (state & 0x10) == 0;
  v49 = v16;
  interactionType = [keyCopy interactionType];
  v18 = [(UIKBKeyplaneView *)self cornerMaskForKey:keyCopy recursive:0];
  v19 = 0;
  candidateGapView = self->_candidateGapView;
  v21 = (state == 8) & v13;
  v22 = v21 | ((state & 0x10) >> 4);
  if (v21 == 1)
  {
    selfCopy = self;
    v23 = self->_candidateGapView;
    v24 = v13;
    v25 = interactionType;
    v26 = v18;
    v19 = [keyCopy rendering] == 1 || objc_msgSend(keyCopy, "rendering") == 33 || objc_msgSend(keyCopy, "rendering") == 34 || objc_msgSend(keyCopy, "rendering") == 11;
    v18 = v26;
    interactionType = v25;
    v13 = v24;
    candidateGapView = v23;
    self = selfCopy;
  }

  if (out)
  {
    *out = (state == 4) | v22;
  }

  if (state == 4)
  {
    v27 = 0;
    if (displayType <= 0x29 && ((1 << displayType) & 0x38000000010) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v27 = state == 16;
    if (state == 16 && displayType == 37)
    {
      overrideScreenTraits = self->_overrideScreenTraits;
      if (overrideScreenTraits && overrideScreenTraits->_isFirstPartyStickers)
      {
        goto LABEL_29;
      }

      v27 = 1;
    }
  }

  if (!v49 && ((state == 4) | v22 & 1) != 0 && interactionType != 10 && !v19 && candidateGapView == 0)
  {
    window = [(UIView *)self window];
    rootViewController = [window rootViewController];
    view = [rootViewController view];

    v33 = self->_overrideScreenTraits;
    if (v33 && v33->_isFirstPartyStickers)
    {
      selfCopy2 = [(UIView *)self window];
LABEL_47:
      selfCopy3 = selfCopy2;
LABEL_48:

      goto LABEL_49;
    }

    if ([window _isTextEffectsWindow])
    {
      if (![view containsView:self])
      {
        delegate = [(UIKBKeyplaneView *)self delegate];
        if (delegate)
        {
          v36 = delegate;
          delegate2 = [(UIKBKeyplaneView *)self delegate];
          v38 = objc_opt_respondsToSelector();

          if (v38)
          {
            delegate3 = [(UIKBKeyplaneView *)self delegate];
            selfCopy3 = [delegate3 keyplaneView:self containingViewForActiveKey:keyCopy];

            if (selfCopy3)
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
      if (!v27 || (-[UIKBKeyplaneView factory](self, "factory"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 popupKeyUsesCustomKeyContentView:keyCopy], v40, !v41))
      {
LABEL_46:
        selfCopy2 = self;
        goto LABEL_47;
      }

      rootViewController2 = [window rootViewController];
      presentedViewController = [rootViewController2 presentedViewController];

      if (presentedViewController)
      {
        window2 = [view window];

        view = window2;
      }
    }

    selfCopy2 = view;
    view = selfCopy2;
    goto LABEL_47;
  }

  if (v18 != 0 || ((v13 | v48) & 1) == 0 || v47 || v19 || candidateGapView != 0)
  {
LABEL_29:
    selfCopy3 = self;
    goto LABEL_49;
  }

  selfCopy3 = 0;
LABEL_49:

  return selfCopy3;
}

- (BOOL)_shouldAllowKey:(id)key
{
  keyCopy = key;
  if (![keyCopy visible])
  {
    goto LABEL_6;
  }

  keys = [(UIKBTree *)self->_keyplane keys];
  if (![keys containsObject:keyCopy])
  {
    parentKey = [keyCopy parentKey];

    if (parentKey)
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

- (void)setState:(int)state forKey:(id)key withReason:(id)reason force:(BOOL)force
{
  v192[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  reasonCopy = reason;
  if (![(UIKBKeyplaneView *)self _shouldAllowKey:keyCopy])
  {
    goto LABEL_119;
  }

  if (state <= 0x14 && ((1 << state) & 0x110010) != 0)
  {
    if (force)
    {
LABEL_5:
      v12 = 1;
      LODWORD(v13) = state;
      goto LABEL_12;
    }
  }

  else
  {
    [(UIKBKeyplaneView *)self removeKeyFromDelayedDeactivationSet:keyCopy];
    if (force)
    {
      goto LABEL_5;
    }
  }

  if ([keyCopy state] == 16)
  {
    displayType = [keyCopy displayType];
    v12 = displayType != 37;
    if (displayType == 37)
    {
      state = 16;
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
      displayType2 = [keyCopy displayType];
      if (state == 2 && displayType2 == 36 && [(UIKBKeyplaneView *)self stateForKey:keyCopy]== 2)
      {
        goto LABEL_119;
      }
    }
  }

  v17 = +[UIKeyboard isRemoteEmojiCollectionViewEnabled];
  v18 = +[UIKeyboardImpl activeInstance];
  isEmojiPopoverPresented = [v18 isEmojiPopoverPresented];

  v13 = (v17 & isEmojiPopoverPresented & ([keyCopy displayType] == 36)) != 0 ? v13 : state;
  state = [keyCopy state];
  [keyCopy setState:v13];
  if ([keyCopy ghost])
  {
    goto LABEL_119;
  }

  v21 = self->_overrideScreenTraits;
  if (!v21 || v13 != 4 || !v21->_isFirstPartyStickers)
  {
    v22 = 0;
    v23 = v13 == 16;
    if (state == 16 && v13 == 16)
    {
      factory = [(UIKBKeyplaneView *)self factory];
      v25 = [factory popupKeyUsesCustomKeyContentView:keyCopy];

      v22 = [(UIKBKeyplaneView *)self existingVariantsKeyViewForKey:keyCopy];
      if (v25)
      {
        if ([keyCopy variantType] != 12 && objc_msgSend(keyCopy, "variantType") != 13)
        {
          goto LABEL_34;
        }

        selectedVariantIndices = [keyCopy selectedVariantIndices];
        if (![selectedVariantIndices count])
        {

          goto LABEL_41;
        }

        state = [keyCopy selectedVariantIndices];
        firstObject = [state firstObject];
        integerValue = [firstObject integerValue];

        LODWORD(state) = 16;
        if (integerValue != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_34:
          [v22 updateForKeyplane:self->_keyplane key:keyCopy];
        }

LABEL_41:
        v22 = v22;

        v23 = 1;
        goto LABEL_42;
      }

      if ([keyCopy displayType] != 37)
      {
        v23 = 1;
        if ([keyCopy selectedVariantIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_42:
          v190 = 0;
          v29 = [(UIKBKeyplaneView *)self containingViewForKey:keyCopy withState:v13 wantsActiveOut:&v190];
          if (!v29)
          {
            self->_shouldDrawRect = 1;
LABEL_118:

            goto LABEL_119;
          }

          v187 = state;
          v30 = [(UIKBKeyplaneView *)self cacheIdentifierForKey:keyCopy withState:v13];
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
              if (v82 && v82->_isFirstPartyStickers && ([keyCopy variantType] == 12 || objc_msgSend(keyCopy, "variantType") == 13))
              {
                [keyCopy setPopupDirection:3];
              }

              factory2 = [(UIKBKeyplaneView *)self factory];
              v84 = [factory2 traitsForKey:keyCopy onKeyplane:self->_keyplane];

              v186 = v84;
              geometry = [(NSMutableDictionary *)v84 geometry];
              [geometry displayFrame];
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
                if ([keyCopy popupDirection] == 1)
                {
                  window = [(UIView *)v29 window];
                  screen = [window screen];

                  if (screen)
                  {
                    v183 = v87;
                    coordinateSpace = [(UIView *)v29 coordinateSpace];
                    window2 = [(UIView *)v29 window];
                    screen2 = [window2 screen];
                    coordinateSpace2 = [screen2 coordinateSpace];
                    [coordinateSpace convertRect:coordinateSpace2 toCoordinateSpace:{v95, v97, v99, v101}];
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
                        [keyCopy setPopupDirection:2];
                        factory3 = [(UIKBKeyplaneView *)self factory];
                        v112 = [factory3 traitsForKey:keyCopy onKeyplane:self->_keyplane];

                        geometry2 = [(NSMutableDictionary *)v112 geometry];
                        [geometry2 displayFrame];
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

              if (v23 && (-[UIKBKeyplaneView factory](self, "factory"), v131 = objc_claimAutoreleasedReturnValue(), v132 = [v131 popupKeyUsesCustomKeyContentView:keyCopy], v131, v132))
              {
                factory4 = [(UIKBKeyplaneView *)self factory];
                v181 = [factory4 contentViewClassNameForPopupKey:keyCopy];

                v184 = [objc_alloc(NSClassFromString(v181)) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
                v134 = [UIKBViewBackedKeyView alloc];
                keyplane = self->_keyplane;
                overrideScreenTraits = [(UIKBKeyplaneView *)self overrideScreenTraits];
                v101 = [(UIKBKeyView *)v134 initWithFrame:keyplane keyplane:keyCopy key:overrideScreenTraits screenTraits:v95, v97, v99, v101];

                superview = [(UIView *)self superview];
                [v184 setTouchForwardingView:superview];

                [(UIKBViewBackedKeyView *)v101 setContentView:v184];
                v48 = v101;
              }

              else
              {
                keyViewAnimator = [(UIKBKeyplaneView *)self keyViewAnimator];
                overrideScreenTraits2 = [(UIKBKeyplaneView *)self overrideScreenTraits];
                v139 = [keyViewAnimator keyViewClassForKey:keyCopy renderTraits:v186 screenTraits:overrideScreenTraits2];

                overrideScreenTraits3 = [(UIKBKeyplaneView *)self overrideScreenTraits];
                if (overrideScreenTraits3 && (v141 = overrideScreenTraits3, v142 = [(objc_class *)v139 wantsScreenTraits], v141, v142))
                {
                  v143 = [v139 alloc];
                  v185 = self->_keyplane;
                  overrideScreenTraits4 = [(UIKBKeyplaneView *)self overrideScreenTraits];
                  v48 = [v143 initWithFrame:v185 keyplane:keyCopy key:overrideScreenTraits4 screenTraits:{v95, v97, v99, v101}];
                }

                else
                {
                  v48 = [[v139 alloc] initWithFrame:self->_keyplane keyplane:keyCopy key:{v95, v97, v99, v101}];
                }
              }

              [(UIKBViewBackedKeyView *)v48 setDrawFrame:v87, v89, v91, v93];
              [keyCopy setClipCorners:{-[UIKBKeyplaneView cornerMaskForKey:recursive:](self, "cornerMaskForKey:recursive:", keyCopy, 1)}];
              [(UIKBViewBackedKeyView *)v48 updateForKeyplane:self->_keyplane key:keyCopy];
              if (!v23)
              {
                parentKey = [keyCopy parentKey];

                if (!parentKey)
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
                  emojiKeyManager = [(UIKBKeyplaneView *)self emojiKeyManager];

                  if (emojiKeyManager)
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
                keyViewAnimator2 = [(UIKBKeyplaneView *)self keyViewAnimator];
              }

              else
              {
                keyViewAnimator2 = 0;
              }

              v66 = v32;
              emojiKeyManager2 = [(UIKBKeyplaneView *)self emojiKeyManager];

              if (emojiKeyManager2)
              {
                emojiKeyManager3 = [(UIKBKeyplaneView *)self emojiKeyManager];
                [emojiKeyManager3 updateEmojiKeyManagerWithKey:keyCopy withKeyView:v48];
              }

              v69 = [keyViewAnimator2 shouldTransitionKeyView:v48 fromState:v187 toState:{objc_msgSend(keyCopy, "state")}];
              name = [keyCopy name];
              v186 = v50;
              v71 = [(NSMutableDictionary *)v50 objectForKey:name];

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

                name2 = [keyCopy name];
                [(NSMutableDictionary *)v186 setObject:v48 forKey:name2];
              }

              [(UIView *)v48 setAlpha:1.0];
              if (os_variant_has_internal_diagnostics())
              {
                name3 = [keyCopy name];
                v147 = [name3 isEqualToString:@"EmojiPopupKey"];

                if (v147)
                {
                  displayString = [keyCopy displayString];
                  v149 = [UIKeyboardEmojiCollectionInputView shouldHighlightEmoji:displayString];

                  if (v149)
                  {
                    v173 = v73;
                    v174 = v32;
                    v178 = v29;
                    v150 = [UILabel alloc];
                    [keyCopy paddedFrame];
                    v152 = v151;
                    [keyCopy paddedFrame];
                    v152 = [(UILabel *)v150 initWithFrame:0.0, 0.0, v152];
                    [(UILabel *)v152 setText:@"PRERELEASE"];
                    v154 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
                    [(UILabel *)v152 setTextColor:v154];

                    isSplit = [(UIKBTree *)self->_keyplane isSplit];
                    v156 = 8.0;
                    if (isSplit)
                    {
                      if ([keyCopy variantType] == 10)
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
                    [(UILabel *)v152 setFont:v158];

                    [(UILabel *)v152 setAdjustsFontSizeToFitWidth:1];
                    [(UILabel *)v152 setMinimumScaleFactor:0.5];
                    [(UIView *)v48 addSubview:v152];
                    [(UIView *)v152 setTranslatesAutoresizingMaskIntoConstraints:0];
                    if ([keyCopy variantType] == 10)
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
                      centerXAnchor = [(UIView *)v48 centerXAnchor];
                      centerXAnchor2 = [(UIView *)v152 centerXAnchor];
                      v171 = centerXAnchor;
                      v172 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
                      v192[0] = v172;
                      centerYAnchor = [(UIView *)v48 centerYAnchor];
                      [(UIView *)v152 centerYAnchor];
                      v163 = v162 = centerYAnchor;
                      v164 = [centerYAnchor constraintEqualToAnchor:v159 constant:?];
                      v192[1] = v164;
                      v165 = v192;
                    }

                    else
                    {
                      if ([keyCopy variantType] == 10)
                      {
                        v166 = -3.0;
                      }

                      else
                      {
                        v166 = -5.0;
                      }

                      v179 = MEMORY[0x1E69977A0];
                      centerXAnchor3 = [(UIView *)v48 centerXAnchor];
                      centerXAnchor2 = [(UIView *)v152 centerXAnchor];
                      v171 = centerXAnchor3;
                      v172 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor2];
                      v191[0] = v172;
                      topAnchor = [(UIView *)v48 topAnchor];
                      [(UIView *)v152 topAnchor];
                      v163 = v162 = topAnchor;
                      v164 = [topAnchor constraintEqualToAnchor:v166 constant:?];
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

                layer = [(UIView *)v48 layer];
                [layer setDisableUpdateMask:v78];

                v73 = v76;
                v29 = v175;
              }

              v80 = [(UIKBKeyplaneView *)self _shouldUseUnifiedKeyView:keyCopy forState:v13];
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

                if (v122 != 1 || ([keyViewAnimator2 shouldAssertCurrentKeyState:keyCopy] & 1) != 0)
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
                      superview2 = [(UIView *)self superview];
                      [(UIKBViewBackedKeyView *)v126 setTouchForwardingView:superview2];
                    }
                  }

                  factory5 = [(UIKBKeyplaneView *)self factory];
                  [(UIKBKeyView *)v48 setFactory:factory5];

                  renderConfig = [(UIKBKeyplaneView *)self renderConfig];
                  [(UIKBViewBackedKeyView *)v48 setRenderConfig:renderConfig];

                  [(UIView *)v48 setNeedsDisplay];
                  [(UIKBKeyView *)v48 prepareForDisplay];
                  [(UIKBKeyView *)v48 updateKeycapLayerOrientation];
                  if (v73)
                  {
                    [keyViewAnimator2 transitionKeyView:v48 fromState:v187 toState:objc_msgSend(keyCopy completion:{"state"), 0}];
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
          factory6 = [(UIKBKeyplaneView *)self factory];
          v34 = [factory6 traitsForKey:keyCopy onKeyplane:self->_keyplane];

          geometry3 = [v34 geometry];
          [geometry3 displayFrame];
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
        [(UIKBKeyplaneView *)self deactivateKey:keyCopy previousState:state];
        goto LABEL_42;
      }
    }

    if (!v12)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if ([keyCopy variantType])
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

- (CGRect)_safeFrameForKeyViewFrame:(CGRect)frame inContainer:(id)container forKey:(id)key
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  keyCopy = key;
  coordinateSpace = [containerCopy coordinateSpace];
  window = [containerCopy window];
  screen = [window screen];
  coordinateSpace2 = [screen coordinateSpace];
  [coordinateSpace convertRect:coordinateSpace2 toCoordinateSpace:{x, y, width, height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if ([containerCopy _shouldReverseLayoutDirection])
  {
    v50.origin.x = v17;
    rect = v19;
    v50.origin.y = v19;
    v50.size.width = v21;
    v50.size.height = v23;
    v49 = x;
    MaxX = CGRectGetMaxX(v50);
    window2 = [containerCopy window];
    safeAreaLayoutGuide = [window2 safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
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
      window3 = [containerCopy window];
      safeAreaLayoutGuide2 = [window3 safeAreaLayoutGuide];
      [safeAreaLayoutGuide2 layoutFrame];
      v35 = v32 - CGRectGetMaxX(v53);

      [keyCopy frame];
      x = v49 - (v35 - fmod(v35, v36));
    }
  }

  else
  {
    window4 = [containerCopy window];
    [window4 safeAreaInsets];
    v39 = v38;

    if (v17 < v39)
    {
      window5 = [containerCopy window];
      [window5 safeAreaInsets];
      v42 = v41 - v17;

      [keyCopy frame];
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

- (void)updateFrameForKey:(id)key
{
  keyCopy = key;
  v4 = [(UIKBKeyplaneView *)self viewForKey:?];
  if (v4)
  {
    v5 = -[UIKBKeyplaneView containingViewForKey:withState:wantsActiveOut:](self, "containingViewForKey:withState:wantsActiveOut:", keyCopy, [keyCopy state], 0);
    if (v5)
    {
      factory = [(UIKBKeyplaneView *)self factory];
      v7 = [factory traitsForKey:keyCopy onKeyplane:self->_keyplane];

      geometry = [v7 geometry];
      [geometry displayFrame];
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

- (id)viewForKey:(id)key
{
  keyCopy = key;
  activeViewIndex = self->_activeViewIndex;
  name = [keyCopy name];
  v7 = [(NSMutableDictionary *)activeViewIndex objectForKey:name];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    subviewIndex = self->_subviewIndex;
    name2 = [keyCopy name];
    v8 = [(NSMutableDictionary *)subviewIndex objectForKey:name2];
  }

  return v8;
}

- (id)viewForKey:(id)key state:(int)state
{
  renderedKeyViews = self->_renderedKeyViews;
  v5 = [(UIKBKeyplaneView *)self cacheIdentifierForKey:key withState:*&state];
  v6 = [(NSMutableDictionary *)renderedKeyViews objectForKey:v5];

  return v6;
}

- (BOOL)shouldAnimateInKeyView:(id)view
{
  v4 = [view key];
  v5 = ([v4 state] != 2 || objc_msgSend(v4, "interactionType") != 9) && view != 0;

  return v5;
}

- (BOOL)shouldAnimateOutKeyView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    window = [(UIView *)self window];
    if (window)
    {
      if ([UIApp applicationState] == 2)
      {
        window2 = [viewCopy window];
        _isHostedInAnotherProcess = [window2 _isHostedInAnotherProcess];
      }

      else
      {
        _isHostedInAnotherProcess = 1;
      }
    }

    else
    {
      _isHostedInAnotherProcess = 0;
    }
  }

  else
  {
    _isHostedInAnotherProcess = 0;
  }

  return _isHostedInAnotherProcess;
}

- (void)deactivateAdaptiveKey:(id)key
{
  keyCopy = key;
  [keyCopy setState:2];
  [(UIKBKeyplaneView *)self removeKeyFromDelayedDeactivationSet:keyCopy];
  -[UIKBKeyplaneView deactivateKey:previousState:](self, "deactivateKey:previousState:", keyCopy, [keyCopy state]);
}

- (void)dimKeys:(id)keys
{
  v16 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __28__UIKBKeyplaneView_dimKeys___block_invoke;
  v14[3] = &unk_1E7100338;
  v14[4] = self;
  [keysCopy enumerateKeysAndObjectsUsingBlock:v14];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_renderedKeyViews allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9++) dimKeys:keysCopy];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v15 count:16];
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

- (void)hideKeyCaps:(BOOL)caps
{
  capsCopy = caps;
  v15 = *MEMORY[0x1E69E9840];
  [(UIView *)self->_keyCaps setHidden:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_renderedKeyViews allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9++) hideKeyCap:capsCopy];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)hideKeyCaps:(BOOL)caps andControlKeysWithInteractionTypes:(id)types
{
  capsCopy = caps;
  v21 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  [(UIView *)self->_keyCaps setHidden:capsCopy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_renderedKeyViews allValues];
  v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = MEMORY[0x1E696AD98];
        v14 = [v12 key];
        v15 = [v13 numberWithUnsignedInt:{objc_msgSend(v14, "interactionType")}];

        if ([typesCopy containsObject:v15])
        {
          [v12 hideKeyCap:capsCopy];
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)orientKeyCapForKey:(id)key orientation:(int64_t)orientation
{
  activeViewIndex = self->_activeViewIndex;
  keyCopy = key;
  name = [keyCopy name];
  v9 = [(NSMutableDictionary *)activeViewIndex objectForKey:name];
  [v9 orientKeyCap:orientation];

  subviewIndex = self->_subviewIndex;
  name2 = [keyCopy name];
  v12 = [(NSMutableDictionary *)subviewIndex objectForKey:name2];
  [v12 orientKeyCap:orientation];

  v13 = [(UIKBKeyplaneView *)self cacheIdentifierForKey:keyCopy withState:2];
  v14 = [(NSMutableDictionary *)self->_renderedKeyViews objectForKey:v13];
  [v14 orientKeyCap:orientation];
  v15 = [(UIKBKeyplaneView *)self cacheIdentifierForKey:keyCopy withState:4];

  v16 = [(NSMutableDictionary *)self->_renderedKeyViews objectForKey:v15];

  [v16 orientKeyCap:orientation];
  v18 = [(UIKBKeyplaneView *)self cacheIdentifierForKey:keyCopy withState:8];

  v17 = [(NSMutableDictionary *)self->_renderedKeyViews objectForKey:v18];

  [v17 orientKeyCap:orientation];
}

- (id)existingVariantsKeyViewForKey:(id)key
{
  keyCopy = key;
  activeViewIndex = self->_activeViewIndex;
  name = [keyCopy name];
  v7 = [(NSMutableDictionary *)activeViewIndex objectForKey:name];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    subviewIndex = self->_subviewIndex;
    name2 = [keyCopy name];
    v9 = [(NSMutableDictionary *)subviewIndex objectForKey:name2];
  }

  return v9;
}

- (BOOL)retestSelectedVariantIndexForKey:(id)key atPoint:(CGPoint)point phase:(int64_t)phase
{
  y = point.y;
  x = point.x;
  keyCopy = key;
  if ([(UIKBRenderFactory *)self->_factory popupKeyUsesCustomKeyContentView:keyCopy])
  {
    v10 = [(UIKBKeyplaneView *)self existingVariantsKeyViewForKey:keyCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self convertPoint:v10 toView:x, y];
      v11 = [v10 retestSelectedVariantIndexForKey:keyCopy atPoint:phase phase:?];
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

- (void)deactivateKey:(id)key previousState:(int)state
{
  v4 = *&state;
  keyCopy = key;
  v7 = [(UIKBKeyplaneView *)self viewForKey:keyCopy];
  [(UIKBKeyplaneView *)self deactivateKey:keyCopy previousState:v4 keyView:v7];
}

- (void)deactivateKey:(id)key previousState:(int)state keyView:(id)view
{
  v6 = *&state;
  keyCopy = key;
  viewCopy = view;
  if (![(UIKBKeyplaneView *)self shouldAnimateOutKeyView:viewCopy])
  {
    v11 = 0;
LABEL_7:
    [viewCopy removeFromSuperview];
    activeViewIndex = self->_activeViewIndex;
    name = [keyCopy name];
    [(NSMutableDictionary *)activeViewIndex removeObjectForKey:name];

    subviewIndex = self->_subviewIndex;
    name2 = [keyCopy name];
    [(NSMutableDictionary *)subviewIndex removeObjectForKey:name2];

    goto LABEL_8;
  }

  keyViewAnimator = [(UIKBKeyplaneView *)self keyViewAnimator];
  v11 = keyViewAnimator;
  if (!keyViewAnimator || ([keyViewAnimator disabled] & 1) != 0)
  {
    goto LABEL_7;
  }

  if ([v11 shouldTransitionKeyView:viewCopy fromState:v6 toState:{objc_msgSend(keyCopy, "state")}])
  {
    state = [keyCopy state];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__UIKBKeyplaneView_deactivateKey_previousState_keyView___block_invoke;
    v17[3] = &unk_1E70F4660;
    v18 = viewCopy;
    selfCopy = self;
    v20 = keyCopy;
    v11 = v11;
    v21 = v11;
    [v11 transitionOutKeyView:v18 fromState:v6 toState:state completion:v17];
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

- (void)deactivateKeysWithReason:(id)reason force:(BOOL)force
{
  forceCopy = force;
  v45 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v8 = +[UIKeyboardImpl activeInstance];
  [v8 clearLongPressTimer];

  [(UIKBKeyplaneView *)self cancelDelayedDeactivation];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  allValues = [(NSMutableDictionary *)self->_delayedDeactivationKeys allValues];
  v10 = [allValues countByEnumeratingWithState:&v38 objects:v44 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [(UIKBKeyplaneView *)self setState:2 forKey:*(*(&v38 + 1) + 8 * i) withReason:reasonCopy force:forceCopy];
      }

      v11 = [allValues countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v11);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_activeViewIndex allValues];
  v14 = [allValues2 countByEnumeratingWithState:&v34 objects:v43 count:16];
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
          objc_enumerationMutation(allValues2);
        }

        v4 = [*(*(&v34 + 1) + 8 * j) key];
        [(UIKBKeyplaneView *)self setState:2 forKey:v4 withReason:reasonCopy force:forceCopy];
      }

      v15 = [allValues2 countByEnumeratingWithState:&v34 objects:v43 count:16];
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
          state = [v23 state];

          if (state == 16 || state == 4)
          {
            v4 = [v22 key];
            v26 = [v4 avoidAutoDeactivation] ^ 1;
          }

          else
          {
            v26 = 0;
          }

          if (state == 16 || state == 4)
          {
          }

          if (v26)
          {
            v28 = [v22 key];
            [(UIKBKeyplaneView *)self setState:2 forKey:v28 withReason:reasonCopy force:forceCopy];
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
  allValues = [(NSMutableDictionary *)self->_activeViewIndex allValues];
  v4 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        window = [(UIView *)self window];
        rootViewController = [window rootViewController];
        view = [rootViewController view];

        [view addSubview:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)purgeActiveKeyViews
{
  array = [MEMORY[0x1E695DF70] array];
  renderedKeyViews = self->_renderedKeyViews;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__UIKBKeyplaneView_purgeActiveKeyViews__block_invoke;
  v6[3] = &unk_1E7114210;
  v7 = array;
  v5 = array;
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
  allValues = [(NSMutableDictionary *)self->_activeViewIndex allValues];
  v4 = [allValues countByEnumeratingWithState:&v49 objects:v56 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v49 + 1) + 8 * i);
        v9 = [v8 key];
        if ([v9 interactionType] == 2)
        {
        }

        else
        {
          v10 = [v8 key];
          interactionType = [v10 interactionType];

          if (interactionType != 15)
          {
            continue;
          }
        }

        [v8 removeFromSuperview];
      }

      v5 = [allValues countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v5);
  }

  [(UIKBKeyplaneView *)self deactivateKeysWithReason:@"purgeKeyViews" force:1];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  selfCopy = self;
  allValues2 = [(NSMutableDictionary *)self->_subviewIndex allValues];
  v14 = [allValues2 countByEnumeratingWithState:&v45 objects:v55 count:16];
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
        objc_enumerationMutation(allValues2);
      }

      v18 = *(*(&v45 + 1) + 8 * j);
      v19 = [v18 key];
      if ([v19 isHashed])
      {
      }

      else
      {
        keys = [(UIKBTree *)selfCopy->_keyplane keys];
        v21 = [v18 key];
        v22 = [keys containsObject:v21];

        if (v22)
        {
          continue;
        }
      }

      [v18 removeFromSuperview];
    }

    v15 = [allValues2 countByEnumeratingWithState:&v45 objects:v55 count:16];
  }

  while (v15);
LABEL_23:

  keyViewAnimator = [(UIKBKeyplaneView *)selfCopy keyViewAnimator];
  shouldPurgeKeyViews = [keyViewAnimator shouldPurgeKeyViews];

  if (shouldPurgeKeyViews)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    subviews = [(UIView *)selfCopy subviews];
    v26 = [subviews countByEnumeratingWithState:&v41 objects:v54 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v30 = *(*(&v41 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v30 removeFromSuperview];
          }
        }

        v27 = [subviews countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v27);
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  allValues3 = [(NSMutableDictionary *)selfCopy->_renderedKeyViews allValues];
  v32 = [allValues3 countByEnumeratingWithState:&v37 objects:v53 count:16];
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
          objc_enumerationMutation(allValues3);
        }

        v36 = *(*(&v37 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v36 removeFromSuperview];
        }
      }

      v33 = [allValues3 countByEnumeratingWithState:&v37 objects:v53 count:16];
    }

    while (v33);
  }

  [(NSMutableDictionary *)selfCopy->_renderedKeyViews removeAllObjects];
}

- (void)purgeSubviews
{
  allValues = [(NSMutableDictionary *)self->_subviewIndex allValues];
  [allValues makeObjectsPerformSelector:sel_removeFromSuperview];

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
  layoutName = [(UIKBTree *)self->_keyplane layoutName];
  v7 = [v3 displayImagesForView:self fromLayout:layoutName imageFlags:&unk_1EFE2C580];

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