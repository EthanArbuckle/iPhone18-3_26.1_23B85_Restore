@interface TUIKBKeyView
- (BOOL)isTransitioning;
- (TUIKBKeyView)initWithKey:(id)key;
- (TUIKeyViewLayoutDelegate)layoutDelegate;
- (UIEdgeInsets)backgroundInsetsForStyle:(int64_t)style;
- (UIKBRenderFactory)floatingFactory;
- (UIKBRenderFactory)splitFactory;
- (UIKBRenderFactory)unsplitFactory;
- (double)multiplierForDisplayType:(int)type;
- (id)description;
- (id)factoryForKeyStyle:(int64_t)style;
- (id)shapeWhenMergedWithKey:(id)key insets:(UIEdgeInsets)insets;
- (void)_startStateTransitionAnimationsFrom:(int)from to:(int)to;
- (void)addActiveKeyCapView;
- (void)addContentView;
- (void)dimKeyUsingOpacities:(id)opacities;
- (void)finishTransitionAnimated:(BOOL)animated;
- (void)prepareForTransition;
- (void)prepareUpdatesForStyle:(int64_t)style toStyle:(int64_t)toStyle;
- (void)resetPanAnimations;
- (void)setBounds:(CGRect)bounds;
- (void)setDrawFrame:(CGRect)frame;
- (void)updateConstraints;
- (void)updateForTransitionProgress:(double)progress;
- (void)updateLabelWeight:(unint64_t)weight;
- (void)updateStateFrom:(int)from to:(int)to;
- (void)updateStyle:(int64_t)style;
@end

@implementation TUIKBKeyView

- (void)addContentView
{
  v25[4] = *MEMORY[0x1E69E9840];
  contentsKeyView = [(UIKBContainerKeyView *)self contentsKeyView];
  [contentsKeyView setTranslatesAutoresizingMaskIntoConstraints:0];
  subviews = [(TUIKBKeyView *)self subviews];
  v5 = [subviews containsObject:contentsKeyView];

  if ((v5 & 1) == 0)
  {
    [(TUIKBKeyView *)self addSubview:contentsKeyView];
  }

  contentViewConstraints = [(TUIKBKeyView *)self contentViewConstraints];

  if (!contentViewConstraints)
  {
    topAnchor = [contentsKeyView topAnchor];
    topAnchor2 = [(TUIKBKeyView *)self topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[0] = v22;
    leadingAnchor = [contentsKeyView leadingAnchor];
    leadingAnchor2 = [(TUIKBKeyView *)self leadingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v25[1] = v7;
    bottomAnchor = [(TUIKBKeyView *)self bottomAnchor];
    bottomAnchor2 = [contentsKeyView bottomAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v25[2] = v10;
    trailingAnchor = [(TUIKBKeyView *)self trailingAnchor];
    trailingAnchor2 = [contentsKeyView trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v25[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [(TUIKBKeyView *)self setContentViewConstraints:v14];
  }

  contentViewConstraints2 = [(TUIKBKeyView *)self contentViewConstraints];
  firstObject = [contentViewConstraints2 firstObject];
  isActive = [firstObject isActive];

  if ((isActive & 1) == 0)
  {
    v18 = MEMORY[0x1E696ACD8];
    contentViewConstraints3 = [(TUIKBKeyView *)self contentViewConstraints];
    [v18 activateConstraints:contentViewConstraints3];
  }
}

- (void)updateConstraints
{
  contentViewConstraints = [(TUIKBKeyView *)self contentViewConstraints];

  if (!contentViewConstraints)
  {
    [(TUIKBKeyView *)self addContentView];
  }

  v4.receiver = self;
  v4.super_class = TUIKBKeyView;
  [(TUIKBKeyView *)&v4 updateConstraints];
}

- (TUIKeyViewLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TUIKBKeyView *)self key];
  name = [v5 name];
  [(TUIKBKeyView *)self frame];
  v8 = v7;
  [(TUIKBKeyView *)self frame];
  v10 = v9;
  [(TUIKBKeyView *)self frame];
  v12 = v11;
  [(TUIKBKeyView *)self frame];
  v14 = v13;
  keyStyle = [(TUIKBKeyView *)self keyStyle];
  v16 = @"NO";
  if (keyStyle == 1)
  {
    v16 = @"YES";
  }

  v17 = [v3 stringWithFormat:@"<%@: %p name = %@; frame = (%0.f %0.f; %0.f %0.f); usesSmallKeys = %@>", v4, self, name, v8, v10, v12, v14, v16];;

  return v17;
}

- (double)multiplierForDisplayType:(int)type
{
  if (type <= 20)
  {
    if (type > 4)
    {
      if ((type - 13) >= 2)
      {
        result = 1.25;
        if (type == 5)
        {
          return result;
        }

        if (type != 18)
        {
          return 1.0;
        }
      }

      v4 = [(TUIKBKeyView *)self keyStyle]== 1;
      result = 1.2;
      goto LABEL_20;
    }

    if (!type)
    {
      return 1.5;
    }

    if (type != 3)
    {
      if (type != 4)
      {
        return 1.0;
      }

      goto LABEL_19;
    }

    return dbl_1900C0F70[[(TUIKBKeyView *)self keyStyle]== 1];
  }

  if (type > 50)
  {
    if (type != 51)
    {
      if (type == 52)
      {
LABEL_19:
        v4 = [(TUIKBKeyView *)self keyStyle]== 1;
        result = 1.1;
LABEL_20:
        if (!v4)
        {
          return 1.0;
        }

        return result;
      }

      return 1.0;
    }

    v5 = [(TUIKBKeyView *)self keyStyle]== 1;
    result = 1.7;
    v6 = 1.0;
  }

  else
  {
    switch(type)
    {
      case 21:
        v5 = [(TUIKBKeyView *)self keyStyle]== 1;
        result = 1.75;
        v6 = 2.0;
        break;
      case 23:
        v5 = [(TUIKBKeyView *)self keyStyle]== 1;
        result = 1.25;
        v6 = 1.5;
        break;
      case 26:
        return dbl_1900C0F70[[(TUIKBKeyView *)self keyStyle]== 1];
      default:
        return 1.0;
    }
  }

  if (v5)
  {
    return v6;
  }

  return result;
}

- (UIEdgeInsets)backgroundInsetsForStyle:(int64_t)style
{
  v3 = 2.0;
  v4 = 4.0;
  v5 = 6.0;
  v6 = 11.0;
  if (style == 2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 3.0;
  }

  if (style == 2)
  {
    v3 = 6.0;
  }

  else
  {
    v6 = 14.0;
    v5 = 3.0;
  }

  if (style == 3)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v7;
  }

  if (style == 3)
  {
    v9 = 4.0;
  }

  else
  {
    v9 = v3;
  }

  if (style == 3)
  {
    v10 = 7.0;
  }

  else
  {
    v10 = v6;
  }

  if (style != 3)
  {
    v4 = v5;
  }

  result.right = v4;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)finishTransitionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__TUIKBKeyView_finishTransitionAnimated___block_invoke;
  aBlock[3] = &unk_1E72D83A0;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __41__TUIKBKeyView_finishTransitionAnimated___block_invoke_2;
  v16[3] = &unk_1E72D8488;
  v16[4] = self;
  v6 = _Block_copy(v16);
  isTransitioning = [(TUIKBKeyView *)self isTransitioning];
  v8 = !animatedCopy;
  v9 = isTransitioning || !animatedCopy;
  if (v8)
  {
    v6[2](v6, v9);
  }

  else
  {
    v10 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__TUIKBKeyView_finishTransitionAnimated___block_invoke_3;
    v14[3] = &unk_1E72D8500;
    v15 = v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__TUIKBKeyView_finishTransitionAnimated___block_invoke_4;
    v11[3] = &unk_1E72D7978;
    v12 = v6;
    v13 = v9;
    [v10 animateWithDuration:v14 animations:v11 completion:0.1];
  }
}

void __41__TUIKBKeyView_finishTransitionAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentsKeyView];
  [v2 setHidden:0];

  v3 = [*(a1 + 32) contentsKeyView];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) liveContentView];
  [v4 setAlpha:0.0];
}

void __41__TUIKBKeyView_finishTransitionAnimated___block_invoke_2(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) liveContentView];
  [v4 removeFromSuperview];

  [*(a1 + 32) setLiveContentView:0];
  v5 = [*(a1 + 32) contentsKeyView];
  [v5 setHidden:0];

  v6 = [*(a1 + 32) contentsKeyView];
  [v6 setAlpha:1.0];

  v7 = [*(a1 + 32) contentsKeyView];
  v8 = [*(a1 + 32) factory];
  [v7 setFactory:v8];

  if (a2)
  {
    [*(a1 + 32) resetRenderedKeyState];
    v10 = [*(a1 + 32) layoutDelegate];
    v9 = [*(a1 + 32) representedKey];
    [v10 boundsChangedForKey:v9];
  }
}

- (void)updateForTransitionProgress:(double)progress
{
  liveContentView = [(TUIKBKeyView *)self liveContentView];
  [liveContentView updateForTransitionProgress:progress];
}

- (void)prepareForTransition
{
  v41[4] = *MEMORY[0x1E69E9840];
  contentsKeyView = [(UIKBContainerKeyView *)self contentsKeyView];
  [contentsKeyView setHidden:1];

  unsplitFactory = self->_unsplitFactory;
  self->_unsplitFactory = 0;

  v5 = [(TUIKBKeyView *)self factoryForKeyStyle:[(TUIKBKeyView *)self keyStyle]];
  representedKey = [(TUIKBKeyView *)self representedKey];
  backingKey = [(TUIKBKeyView *)self backingKey];
  keyplane = [backingKey keyplane];
  v9 = [v5 traitsForKey:representedKey onKeyplane:keyplane];

  representedKey2 = [(TUIKBKeyView *)self representedKey];
  v11 = [v5 displayContentsForKey:representedKey2];

  liveContentView = [(TUIKBKeyView *)self liveContentView];

  if (liveContentView)
  {
    liveContentView2 = [(TUIKBKeyView *)self liveContentView];
    [liveContentView2 updateRenderTraits:v9 displayContents:v11];
  }

  else
  {
    v14 = [TUILiveKeyView alloc];
    backingKey2 = [(TUIKBKeyView *)self backingKey];
    factory = [(UIKBContainerKeyView *)self factory];
    v17 = [(TUILiveKeyView *)v14 initWithKey:backingKey2 renderTraits:v9 displayContents:v11 inheritedFactory:factory];
    [(TUIKBKeyView *)self setLiveContentView:v17];

    liveContentView3 = [(TUIKBKeyView *)self liveContentView];
    [liveContentView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    liveContentView4 = [(TUIKBKeyView *)self liveContentView];
    [(TUIKBKeyView *)self addSubview:liveContentView4];

    v32 = MEMORY[0x1E696ACD8];
    liveContentView5 = [(TUIKBKeyView *)self liveContentView];
    topAnchor = [liveContentView5 topAnchor];
    topAnchor2 = [(TUIKBKeyView *)self topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v41[0] = v36;
    liveContentView6 = [(TUIKBKeyView *)self liveContentView];
    leadingAnchor = [liveContentView6 leadingAnchor];
    leadingAnchor2 = [(TUIKBKeyView *)self leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v41[1] = v31;
    bottomAnchor = [(TUIKBKeyView *)self bottomAnchor];
    [(TUIKBKeyView *)self liveContentView];
    v30 = v40 = v9;
    bottomAnchor2 = [v30 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v41[2] = v21;
    trailingAnchor = [(TUIKBKeyView *)self trailingAnchor];
    liveContentView7 = [(TUIKBKeyView *)self liveContentView];
    trailingAnchor2 = [liveContentView7 trailingAnchor];
    [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26 = v25 = v11;
    v41[3] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
    [v32 activateConstraints:v27];

    v11 = v25;
    v9 = v40;
  }

  liveContentView8 = [(TUIKBKeyView *)self liveContentView];
  [liveContentView8 setHidden:0];
}

- (BOOL)isTransitioning
{
  liveContentView = [(TUIKBKeyView *)self liveContentView];
  if (liveContentView)
  {
    liveContentView2 = [(TUIKBKeyView *)self liveContentView];
    [liveContentView2 alpha];
    v6 = v5 > 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)factoryForKeyStyle:(int64_t)style
{
  if (style == 1)
  {
    floatingFactory = [(TUIKBKeyView *)self floatingFactory];
  }

  else
  {
    if (style == 4)
    {
      [(TUIKBKeyView *)self splitFactory];
    }

    else
    {
      [(TUIKBKeyView *)self unsplitFactory];
    }
    floatingFactory = ;
  }

  return floatingFactory;
}

- (UIKBRenderFactory)floatingFactory
{
  floatingFactory = self->_floatingFactory;
  if (!floatingFactory)
  {
    keyplane = [(UIKBContainerKeyView *)self keyplane];
    visualStyling = [keyplane visualStyling];

    v6 = MEMORY[0x1E69DCB60];
    renderConfig = [(UIKBContainerKeyView *)self renderConfig];
    v8 = [v6 renderingContextForRenderConfig:renderConfig];

    [v8 setIsFloating:1];
    v9 = [MEMORY[0x1E69DCB50] factoryForVisualStyle:visualStyling & 0xFFFFFFFFFFFFFF00 | 0x40 renderingContext:v8 skipLayoutSegments:1];
    v10 = self->_floatingFactory;
    self->_floatingFactory = v9;

    factory = [(UIKBContainerKeyView *)self factory];
    [factory scale];
    [(UIKBRenderFactory *)self->_floatingFactory setScale:?];

    factory2 = [(UIKBContainerKeyView *)self factory];
    [factory2 stretchFactor];
    [(UIKBRenderFactory *)self->_floatingFactory setStretchFactor:?];

    floatingFactory = self->_floatingFactory;
  }

  return floatingFactory;
}

- (UIKBRenderFactory)unsplitFactory
{
  unsplitFactory = self->_unsplitFactory;
  if (!unsplitFactory)
  {
    keyplane = [(UIKBContainerKeyView *)self keyplane];
    visualStyling = [keyplane visualStyling];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v8 = MEMORY[0x1E69DCB60];
    renderConfig = [(UIKBContainerKeyView *)self renderConfig];
    v10 = [v8 renderingContextForRenderConfig:renderConfig];

    [v10 setIsFloating:0];
    v11 = [MEMORY[0x1E69DCB50] factoryForVisualStyle:visualStyling & 0xFFFFFFFFFFFFFF00 | userInterfaceIdiom & 0x3F | 0x40 renderingContext:v10 skipLayoutSegments:1];
    v12 = self->_unsplitFactory;
    self->_unsplitFactory = v11;

    factory = [(UIKBContainerKeyView *)self factory];
    [factory scale];
    [(UIKBRenderFactory *)self->_unsplitFactory setScale:?];

    factory2 = [(UIKBContainerKeyView *)self factory];
    [factory2 stretchFactor];
    [(UIKBRenderFactory *)self->_unsplitFactory setStretchFactor:?];

    factory3 = [(UIKBContainerKeyView *)self factory];
    -[UIKBRenderFactory setDynamicFactory:](self->_unsplitFactory, "setDynamicFactory:", [factory3 dynamicFactory]);

    factory4 = [(UIKBContainerKeyView *)self factory];
    -[UIKBRenderFactory setPreferStringKeycapOverImage:](self->_unsplitFactory, "setPreferStringKeycapOverImage:", [factory4 preferStringKeycapOverImage]);

    unsplitFactory = self->_unsplitFactory;
  }

  return unsplitFactory;
}

- (UIKBRenderFactory)splitFactory
{
  splitFactory = self->_splitFactory;
  if (!splitFactory)
  {
    keyplane = [(UIKBContainerKeyView *)self keyplane];
    visualStyling = [keyplane visualStyling];

    v6 = MEMORY[0x1E69DCB50];
    factory = [(UIKBContainerKeyView *)self factory];
    renderingContext = [factory renderingContext];
    v9 = [v6 factoryForVisualStyle:visualStyling | 0x80 renderingContext:renderingContext skipLayoutSegments:1];
    v10 = self->_splitFactory;
    self->_splitFactory = v9;

    factory2 = [(UIKBContainerKeyView *)self factory];
    [factory2 scale];
    [(UIKBRenderFactory *)self->_splitFactory setScale:?];

    factory3 = [(UIKBContainerKeyView *)self factory];
    [factory3 stretchFactor];
    [(UIKBRenderFactory *)self->_splitFactory setStretchFactor:?];

    factory4 = [(UIKBContainerKeyView *)self factory];
    -[UIKBRenderFactory setPreferStringKeycapOverImage:](self->_unsplitFactory, "setPreferStringKeycapOverImage:", [factory4 preferStringKeycapOverImage]);

    splitFactory = self->_splitFactory;
  }

  return splitFactory;
}

- (void)addActiveKeyCapView
{
  activeKeyCap = [(TUIKBKeyView *)self activeKeyCap];

  if (!activeKeyCap)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCB30]);
    [(TUIKBKeyView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    keyplane = [(UIKBContainerKeyView *)self keyplane];
    v14 = [(TUIKBKeyView *)self key];
    v15 = [v4 initWithFrame:keyplane keyplane:v14 key:{v6, v8, v10, v12}];
    [(TUIKBKeyView *)self setActiveKeyCap:v15];

    activeKeyCap2 = [(TUIKBKeyView *)self activeKeyCap];
    [(TUIKBKeyView *)self addSubview:activeKeyCap2];

    activeKeyCap3 = [(TUIKBKeyView *)self activeKeyCap];
    factory = [(UIKBContainerKeyView *)self factory];
    [activeKeyCap3 setFactory:factory];

    activeKeyCap4 = [(TUIKBKeyView *)self activeKeyCap];
    renderConfig = [(UIKBContainerKeyView *)self renderConfig];
    [activeKeyCap4 setRenderConfig:renderConfig];

    activeKeyCap5 = [(TUIKBKeyView *)self activeKeyCap];
    [(UIKBContainerKeyView *)self drawFrame];
    [activeKeyCap5 setDrawFrame:?];

    activeKeyCap6 = [(TUIKBKeyView *)self activeKeyCap];
    [activeKeyCap6 changeBackgroundToActiveIfNecessary];

    activeKeyCap7 = [(TUIKBKeyView *)self activeKeyCap];
    [activeKeyCap7 setNeedsDisplay];

    activeKeyCap8 = [(TUIKBKeyView *)self activeKeyCap];
    [activeKeyCap8 prepareForDisplay];
  }
}

- (void)resetPanAnimations
{
  representedKey = [(TUIKBKeyView *)self representedKey];
  displayTypeHint = [representedKey displayTypeHint];

  if (displayTypeHint == 10)
  {
    v12 = [(UIKBContainerKeyView *)self layerForRenderFlags:4];
    animationKeys = [v12 animationKeys];
    v6 = [animationKeys count];

    v7 = v12;
    if (v6)
    {
      [v12 removeAllAnimations];
      v8 = [(UIKBContainerKeyView *)self layerForRenderFlags:16];
      v9 = v8;
      if (v8)
      {
        [v8 removeAllAnimations];
      }

      v10 = [(UIKBContainerKeyView *)self layerForRenderFlags:32];
      v11 = v10;
      if (v10)
      {
        [v10 removeAllAnimations];
      }

      [(UIKBContainerKeyView *)self changeBackgroundToEnabled];

      v7 = v12;
    }
  }
}

- (void)_startStateTransitionAnimationsFrom:(int)from to:(int)to
{
  renderConfig = [(UIKBContainerKeyView *)self renderConfig];
  if (![renderConfig animatedBackground])
  {
    goto LABEL_4;
  }

  representedKey = [(TUIKBKeyView *)self representedKey];
  if ([representedKey displayTypeHint] == 10)
  {

LABEL_4:
LABEL_5:
    activeKeyCap = [(TUIKBKeyView *)self activeKeyCap];

    if (!activeKeyCap)
    {
      goto LABEL_8;
    }

    activeKeyCap2 = [(TUIKBKeyView *)self activeKeyCap];
LABEL_7:
    [activeKeyCap2 removeFromSuperview];

    [(TUIKBKeyView *)self setActiveKeyCap:0];
LABEL_8:
    if (to == 2)
    {

      [(TUIKBKeyView *)self resetPanAnimations];
    }

    return;
  }

  representedKey2 = [(TUIKBKeyView *)self representedKey];
  displayType = [representedKey2 displayType];

  if (displayType == 7)
  {
    goto LABEL_5;
  }

  activeKeyCap3 = [(TUIKBKeyView *)self activeKeyCap];
  activeKeyCap2 = activeKeyCap3;
  if ((to & 4) == 0)
  {
    goto LABEL_7;
  }

  if (!activeKeyCap2)
  {

    [(TUIKBKeyView *)self addActiveKeyCapView];
  }
}

- (void)updateLabelWeight:(unint64_t)weight
{
  liveContentView = [(TUIKBKeyView *)self liveContentView];

  if (liveContentView)
  {
    liveContentView2 = [(TUIKBKeyView *)self liveContentView];
    [liveContentView2 updateLabelWeight:weight];
  }
}

- (void)updateStateFrom:(int)from to:(int)to
{
  [(TUIKBKeyView *)self _startStateTransitionAnimationsFrom:*&from to:*&to];
  backingKey = [(TUIKBKeyView *)self backingKey];
  if ([backingKey layoutType])
  {
    [(TUIKBKeyView *)self center];
    v6 = v5;

    if (v6 > 0.0)
    {
      [(UIKBContainerKeyView *)self setNeedsDisplay];

      [(UIKBContainerKeyView *)self prepareForDisplay];
    }
  }

  else
  {
  }
}

- (void)dimKeyUsingOpacities:(id)opacities
{
  opacitiesCopy = opacities;
  if (objc_opt_respondsToSelector())
  {
    v5.receiver = self;
    v5.super_class = TUIKBKeyView;
    [(UIKBContainerKeyView *)&v5 dimContentKeyView:opacitiesCopy];
  }
}

- (void)updateStyle:(int64_t)style
{
  if (self->_keyStyle != style)
  {
    self->_keyStyle = style;
    liveContentView = [(TUIKBKeyView *)self liveContentView];

    if (liveContentView)
    {
      v6 = [(TUIKBKeyView *)self factoryForKeyStyle:style];
      representedKey = [(TUIKBKeyView *)self representedKey];
      backingKey = [(TUIKBKeyView *)self backingKey];
      keyplane = [backingKey keyplane];
      v18 = [v6 traitsForKey:representedKey onKeyplane:keyplane];

      v10 = [(TUIKBKeyView *)self factoryForKeyStyle:style];
      representedKey2 = [(TUIKBKeyView *)self representedKey];
      v12 = [v10 displayContentsForKey:representedKey2];

      liveContentView2 = [(TUIKBKeyView *)self liveContentView];
      [liveContentView2 updateKeyStyle:style];

      liveContentView3 = [(TUIKBKeyView *)self liveContentView];
      [liveContentView3 updateRenderTraits:v18 displayContents:v12];

      backingKey2 = [(TUIKBKeyView *)self backingKey];
      layoutType = [backingKey2 layoutType];

      if (layoutType == 3)
      {
        representedKey3 = [(TUIKBKeyView *)self representedKey];
        -[TUIKBKeyView updateLabelWeight:](self, "updateLabelWeight:", [representedKey3 dynamicDisplayCorner]);
      }
    }

    else
    {

      [(UIKBContainerKeyView *)self setNeedsDisplay];
    }
  }
}

- (void)prepareUpdatesForStyle:(int64_t)style toStyle:(int64_t)toStyle
{
  liveContentView = [(TUIKBKeyView *)self liveContentView];

  if (liveContentView)
  {
    v39 = [(TUIKBKeyView *)self factoryForKeyStyle:style];
    representedKey = [(TUIKBKeyView *)self representedKey];
    backingKey = [(TUIKBKeyView *)self backingKey];
    keyplane = [backingKey keyplane];
    v11 = [v39 traitsForKey:representedKey onKeyplane:keyplane];

    representedKey2 = [(TUIKBKeyView *)self representedKey];
    v38 = [v39 displayContentsForKey:representedKey2];

    liveContentView2 = [(TUIKBKeyView *)self liveContentView];
    [liveContentView2 updateKeyStyle:style];

    liveContentView3 = [(TUIKBKeyView *)self liveContentView];
    [liveContentView3 updateRenderTraits:v11 displayContents:v38];

    v15 = [(TUIKBKeyView *)self factoryForKeyStyle:toStyle];
    representedKey3 = [(TUIKBKeyView *)self representedKey];
    backingKey2 = [(TUIKBKeyView *)self backingKey];
    keyplane2 = [backingKey2 keyplane];
    v19 = [v15 traitsForKey:representedKey3 onKeyplane:keyplane2];

    v20 = style == 1;
    v21 = toStyle != 1;
    v22 = !v20 || !v21;
    if (v20 && v21)
    {
      v23 = v11;
    }

    else
    {
      v23 = v19;
    }

    if (v20 && v21)
    {
      v24 = v19;
    }

    else
    {
      v24 = v11;
    }

    if (v22)
    {
      styleCopy = toStyle;
    }

    else
    {
      styleCopy = style;
    }

    if (!v22)
    {
      style = toStyle;
    }

    v26 = v24;
    v27 = v23;
    v28 = objc_alloc_init(TUIKeyAnimationProperties);
    geometry = [v27 geometry];
    [geometry roundRectRadius];
    [(TUIKeyAnimationProperties *)v28 setStartingCornerRadius:?];

    geometry2 = [v26 geometry];
    [geometry2 roundRectRadius];
    [(TUIKeyAnimationProperties *)v28 setEndingCornerRadius:?];

    symbolStyle = [v27 symbolStyle];
    [symbolStyle fontSize];
    [(TUIKeyAnimationProperties *)v28 setStartingFontSize:?];

    symbolStyle2 = [v26 symbolStyle];
    [symbolStyle2 fontSize];
    [(TUIKeyAnimationProperties *)v28 setEndingFontSize:?];

    secondarySymbolStyles = [v27 secondarySymbolStyles];

    firstObject = [secondarySymbolStyles firstObject];
    [firstObject fontSize];
    [(TUIKeyAnimationProperties *)v28 setStartingSecondaryFontSize:?];

    secondarySymbolStyles2 = [v26 secondarySymbolStyles];

    firstObject2 = [secondarySymbolStyles2 firstObject];
    [firstObject2 fontSize];
    [(TUIKeyAnimationProperties *)v28 setEndingSecondaryFontSize:?];

    [(TUIKBKeyView *)self backgroundInsetsForStyle:styleCopy];
    [(TUIKeyAnimationProperties *)v28 setStartingBackgroundInsets:?];
    [(TUIKBKeyView *)self backgroundInsetsForStyle:style];
    [(TUIKeyAnimationProperties *)v28 setEndingBackgroundInsets:?];
    liveContentView4 = [(TUIKBKeyView *)self liveContentView];
    [liveContentView4 setAnimationProperties:v28];
  }

  else
  {

    [(UIKBContainerKeyView *)self setNeedsDisplay];
  }
}

- (void)setDrawFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = TUIKBKeyView;
  [(UIKBContainerKeyView *)&v10 setDrawFrame:?];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (!CGRectIsEmpty(v11) && ![(TUIKBKeyView *)self isTransitioning])
  {
    renderConfig = [(UIKBContainerKeyView *)self renderConfig];
    colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

    if ((colorAdaptiveBackground & 1) == 0)
    {
      [(UIKBContainerKeyView *)self setNeedsDisplay];
      [(UIKBContainerKeyView *)self prepareForDisplay];
    }
  }
}

- (void)setBounds:(CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = TUIKBKeyView;
  [(TUIKBKeyView *)&v6 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (![(TUIKBKeyView *)self isTransitioning])
  {
    layoutDelegate = [(TUIKBKeyView *)self layoutDelegate];
    representedKey = [(TUIKBKeyView *)self representedKey];
    [layoutDelegate boundsChangedForKey:representedKey];
  }
}

- (id)shapeWhenMergedWithKey:(id)key insets:(UIEdgeInsets)insets
{
  top = insets.top;
  keyCopy = key;
  [keyCopy frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(TUIKBKeyView *)self frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v48.origin.x = v7;
  v48.origin.y = v9;
  v48.size.width = v11;
  v48.size.height = v13;
  if (CGRectIsEmpty(v48) || (v49.origin.x = v15, v49.origin.y = v17, v49.size.width = v19, v49.size.height = v21, CGRectIsEmpty(v49)) || (v50.origin.x = v7, v50.origin.y = v9, v50.size.width = v11, v50.size.height = v13, v58.origin.x = v15, v58.origin.y = v17, v58.size.width = v19, v58.size.height = v21, v51 = CGRectUnion(v50, v58), y = v51.origin.y, x = v51.origin.x, height = v51.size.height, width = v51.size.width, UIRectInset(), v44 = v52.origin.x, v45 = v52.origin.y, v43 = v52.size.width, v38 = v52.size.height, v59.origin.x = v15, v59.origin.y = v17, v59.size.width = v19, v59.size.height = v21, CGRectEqualToRect(v52, v59)))
  {
    shape = [MEMORY[0x1E69DCB70] shape];
    goto LABEL_5;
  }

  v53.origin.x = v7;
  v53.origin.y = v9;
  v53.size.width = v11;
  v53.size.height = v13;
  MinX = CGRectGetMinX(v53);
  v54.origin.x = v7;
  v54.origin.y = v9;
  v54.size.width = v11;
  v54.size.height = v13;
  MaxX = CGRectGetMaxX(v54);
  v55.origin.x = v15;
  v55.origin.y = v17;
  v55.size.width = v19;
  v55.size.height = v21;
  v36 = CGRectGetMinX(v55);
  v56.origin.x = v15;
  rect2 = v17;
  v56.origin.y = v17;
  v56.size.width = v19;
  v56.size.height = v21;
  v34 = CGRectGetMaxX(v56);
  shape2 = [MEMORY[0x1E69DCB70] shape];
  [shape2 setFrame:{x, y, width, height}];
  [shape2 setPaddedFrame:{v44, v45, v43, v38}];
  if (vabdd_f64(v36, MinX) >= 5.0 || vabdd_f64(v34, MaxX) >= 5.0)
  {
    rowNumber = [keyCopy rowNumber];
    if (rowNumber < [(TUIKBKeyView *)self rowNumber])
    {
      v26 = v36 - MinX;
      if (v36 - MinX <= 5.0)
      {
        v29 = 8;
        v30 = 0.0;
        v31 = 2;
        if (v34 - MaxX < -5.0)
        {
          v30 = -(v34 - MaxX);
        }

        else
        {
          v31 = 0;
        }

        if (v34 - MaxX > 5.0)
        {
          v32 = v34 - MaxX;
        }

        else
        {
          v29 = v31;
          v32 = v30;
        }

        if (v26 < -5.0)
        {
          v27 = 1;
        }

        else
        {
          v27 = v29;
        }

        if (v26 < -5.0)
        {
          v26 = -v26;
        }

        else
        {
          v26 = v32;
        }
      }

      else
      {
        v27 = 4;
      }

      [shape2 setConcaveCorner:v27];
      [shape2 setConcaveCornerOffset:{v26, top + rect2 - v45}];
      goto LABEL_29;
    }
  }

  else
  {
    v57.origin.x = v7;
    v57.origin.y = v9;
    v57.size.width = v11;
    v57.size.height = v13;
    v60.origin.x = v15;
    v60.origin.y = v17;
    v60.size.width = v19;
    v60.size.height = v21;
    if (!CGRectEqualToRect(v57, v60))
    {
LABEL_29:
      shape3 = shape2;
      goto LABEL_30;
    }
  }

  shape3 = [MEMORY[0x1E69DCB70] shape];
LABEL_30:
  shape = shape3;

LABEL_5:

  return shape;
}

- (TUIKBKeyView)initWithKey:(id)key
{
  keyCopy = key;
  keyplane = [keyCopy keyplane];
  backingTree = [keyCopy backingTree];
  v31.receiver = self;
  v31.super_class = TUIKBKeyView;
  v8 = [(UIKBContainerKeyView *)&v31 initWithFrame:keyplane keyplane:backingTree key:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  if (!v8)
  {
    goto LABEL_27;
  }

  v8->_keyStyle = [keyCopy style];
  objc_storeStrong(&v8->_backingKey, key);
  if ([keyCopy style] == -1)
  {
    v8->_keyStyle = 2;
  }

  backingTree2 = [keyCopy backingTree];
  representedKey = v8->_representedKey;
  v8->_representedKey = backingTree2;

  v11 = MEMORY[0x1E696AEC0];
  backingTree3 = [keyCopy backingTree];
  displayString = [backingTree3 displayString];
  v14 = [v11 stringWithFormat:@"%@_key", displayString];
  [(TUIKBKeyView *)v8 setAccessibilityIdentifier:v14];

  if ([keyCopy layoutType] == 3)
  {
    v8->_layoutType = 3;
    if ([keyCopy layoutShape] == 2)
    {
      layoutShape = [keyCopy layoutShape];
    }

    else
    {
      layoutShape = 0;
    }

    v8->_layoutShape = layoutShape;
    [keyCopy multiplier];
    if (v21 > 0.0)
    {
LABEL_23:
      [keyCopy multiplier];
      v8->_multiplier = v25;
      goto LABEL_24;
    }
  }

  else
  {
    if ([keyCopy layoutType] == 4)
    {
      v8->_layoutType = 4;
      [keyCopy multiplier];
      v17 = v16;
      v18 = 1.0;
      if (v17 > 0.0)
      {
        [keyCopy multiplier];
      }

      v8->_multiplier = v18;
      v8->_layoutShape = 0;
      backingTree4 = [keyCopy backingTree];
      name = [backingTree4 name];
      [(TUIKBKeyView *)v8 setAccessibilityIdentifier:name];

      goto LABEL_24;
    }

    if ([keyCopy layoutShape] == -1)
    {
      layoutShape2 = 0;
    }

    else
    {
      layoutShape2 = [keyCopy layoutShape];
    }

    v8->_layoutShape = layoutShape2;
    if ([keyCopy layoutType] == -1)
    {
      layoutType = 2;
    }

    else
    {
      layoutType = [keyCopy layoutType];
    }

    v8->_layoutType = layoutType;
    [keyCopy multiplier];
    if (v24 > 0.0 || ![keyCopy layoutType])
    {
      goto LABEL_23;
    }
  }

  v8->_multiplier = 1.0;
LABEL_24:
  backingTree5 = [keyCopy backingTree];
  displayType = [backingTree5 displayType];

  if (displayType == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    backingTree6 = [keyCopy backingTree];
    keyplane2 = [keyCopy keyplane];
    [(TUIKBKeyView *)v8 performSelector:sel_updateSpecialtyKeyViewForKey_inKeyplane_ withObject:backingTree6 withObject:keyplane2];
  }

LABEL_27:

  return v8;
}

@end