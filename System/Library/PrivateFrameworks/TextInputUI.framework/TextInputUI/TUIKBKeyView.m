@interface TUIKBKeyView
- (BOOL)isTransitioning;
- (TUIKBKeyView)initWithKey:(id)a3;
- (TUIKeyViewLayoutDelegate)layoutDelegate;
- (UIEdgeInsets)backgroundInsetsForStyle:(int64_t)a3;
- (UIKBRenderFactory)floatingFactory;
- (UIKBRenderFactory)splitFactory;
- (UIKBRenderFactory)unsplitFactory;
- (double)multiplierForDisplayType:(int)a3;
- (id)description;
- (id)factoryForKeyStyle:(int64_t)a3;
- (id)shapeWhenMergedWithKey:(id)a3 insets:(UIEdgeInsets)a4;
- (void)_startStateTransitionAnimationsFrom:(int)a3 to:(int)a4;
- (void)addActiveKeyCapView;
- (void)addContentView;
- (void)dimKeyUsingOpacities:(id)a3;
- (void)finishTransitionAnimated:(BOOL)a3;
- (void)prepareForTransition;
- (void)prepareUpdatesForStyle:(int64_t)a3 toStyle:(int64_t)a4;
- (void)resetPanAnimations;
- (void)setBounds:(CGRect)a3;
- (void)setDrawFrame:(CGRect)a3;
- (void)updateConstraints;
- (void)updateForTransitionProgress:(double)a3;
- (void)updateLabelWeight:(unint64_t)a3;
- (void)updateStateFrom:(int)a3 to:(int)a4;
- (void)updateStyle:(int64_t)a3;
@end

@implementation TUIKBKeyView

- (void)addContentView
{
  v25[4] = *MEMORY[0x1E69E9840];
  v3 = [(UIKBContainerKeyView *)self contentsKeyView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(TUIKBKeyView *)self subviews];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    [(TUIKBKeyView *)self addSubview:v3];
  }

  v6 = [(TUIKBKeyView *)self contentViewConstraints];

  if (!v6)
  {
    v24 = [v3 topAnchor];
    v23 = [(TUIKBKeyView *)self topAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v25[0] = v22;
    v21 = [v3 leadingAnchor];
    v20 = [(TUIKBKeyView *)self leadingAnchor];
    v7 = [v21 constraintEqualToAnchor:v20];
    v25[1] = v7;
    v8 = [(TUIKBKeyView *)self bottomAnchor];
    v9 = [v3 bottomAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v25[2] = v10;
    v11 = [(TUIKBKeyView *)self trailingAnchor];
    v12 = [v3 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v25[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [(TUIKBKeyView *)self setContentViewConstraints:v14];
  }

  v15 = [(TUIKBKeyView *)self contentViewConstraints];
  v16 = [v15 firstObject];
  v17 = [v16 isActive];

  if ((v17 & 1) == 0)
  {
    v18 = MEMORY[0x1E696ACD8];
    v19 = [(TUIKBKeyView *)self contentViewConstraints];
    [v18 activateConstraints:v19];
  }
}

- (void)updateConstraints
{
  v3 = [(TUIKBKeyView *)self contentViewConstraints];

  if (!v3)
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
  v6 = [v5 name];
  [(TUIKBKeyView *)self frame];
  v8 = v7;
  [(TUIKBKeyView *)self frame];
  v10 = v9;
  [(TUIKBKeyView *)self frame];
  v12 = v11;
  [(TUIKBKeyView *)self frame];
  v14 = v13;
  v15 = [(TUIKBKeyView *)self keyStyle];
  v16 = @"NO";
  if (v15 == 1)
  {
    v16 = @"YES";
  }

  v17 = [v3 stringWithFormat:@"<%@: %p name = %@; frame = (%0.f %0.f; %0.f %0.f); usesSmallKeys = %@>", v4, self, v6, v8, v10, v12, v14, v16];;

  return v17;
}

- (double)multiplierForDisplayType:(int)a3
{
  if (a3 <= 20)
  {
    if (a3 > 4)
    {
      if ((a3 - 13) >= 2)
      {
        result = 1.25;
        if (a3 == 5)
        {
          return result;
        }

        if (a3 != 18)
        {
          return 1.0;
        }
      }

      v4 = [(TUIKBKeyView *)self keyStyle]== 1;
      result = 1.2;
      goto LABEL_20;
    }

    if (!a3)
    {
      return 1.5;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
        return 1.0;
      }

      goto LABEL_19;
    }

    return dbl_1900C0F70[[(TUIKBKeyView *)self keyStyle]== 1];
  }

  if (a3 > 50)
  {
    if (a3 != 51)
    {
      if (a3 == 52)
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
    switch(a3)
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

- (UIEdgeInsets)backgroundInsetsForStyle:(int64_t)a3
{
  v3 = 2.0;
  v4 = 4.0;
  v5 = 6.0;
  v6 = 11.0;
  if (a3 == 2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 3.0;
  }

  if (a3 == 2)
  {
    v3 = 6.0;
  }

  else
  {
    v6 = 14.0;
    v5 = 3.0;
  }

  if (a3 == 3)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v7;
  }

  if (a3 == 3)
  {
    v9 = 4.0;
  }

  else
  {
    v9 = v3;
  }

  if (a3 == 3)
  {
    v10 = 7.0;
  }

  else
  {
    v10 = v6;
  }

  if (a3 != 3)
  {
    v4 = v5;
  }

  result.right = v4;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)finishTransitionAnimated:(BOOL)a3
{
  v3 = a3;
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
  v7 = [(TUIKBKeyView *)self isTransitioning];
  v8 = !v3;
  v9 = v7 || !v3;
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

- (void)updateForTransitionProgress:(double)a3
{
  v4 = [(TUIKBKeyView *)self liveContentView];
  [v4 updateForTransitionProgress:a3];
}

- (void)prepareForTransition
{
  v41[4] = *MEMORY[0x1E69E9840];
  v3 = [(UIKBContainerKeyView *)self contentsKeyView];
  [v3 setHidden:1];

  unsplitFactory = self->_unsplitFactory;
  self->_unsplitFactory = 0;

  v5 = [(TUIKBKeyView *)self factoryForKeyStyle:[(TUIKBKeyView *)self keyStyle]];
  v6 = [(TUIKBKeyView *)self representedKey];
  v7 = [(TUIKBKeyView *)self backingKey];
  v8 = [v7 keyplane];
  v9 = [v5 traitsForKey:v6 onKeyplane:v8];

  v10 = [(TUIKBKeyView *)self representedKey];
  v11 = [v5 displayContentsForKey:v10];

  v12 = [(TUIKBKeyView *)self liveContentView];

  if (v12)
  {
    v13 = [(TUIKBKeyView *)self liveContentView];
    [v13 updateRenderTraits:v9 displayContents:v11];
  }

  else
  {
    v14 = [TUILiveKeyView alloc];
    v15 = [(TUIKBKeyView *)self backingKey];
    v16 = [(UIKBContainerKeyView *)self factory];
    v17 = [(TUILiveKeyView *)v14 initWithKey:v15 renderTraits:v9 displayContents:v11 inheritedFactory:v16];
    [(TUIKBKeyView *)self setLiveContentView:v17];

    v18 = [(TUIKBKeyView *)self liveContentView];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [(TUIKBKeyView *)self liveContentView];
    [(TUIKBKeyView *)self addSubview:v19];

    v32 = MEMORY[0x1E696ACD8];
    v39 = [(TUIKBKeyView *)self liveContentView];
    v38 = [v39 topAnchor];
    v37 = [(TUIKBKeyView *)self topAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v41[0] = v36;
    v35 = [(TUIKBKeyView *)self liveContentView];
    v34 = [v35 leadingAnchor];
    v33 = [(TUIKBKeyView *)self leadingAnchor];
    v31 = [v34 constraintEqualToAnchor:v33];
    v41[1] = v31;
    v29 = [(TUIKBKeyView *)self bottomAnchor];
    [(TUIKBKeyView *)self liveContentView];
    v30 = v40 = v9;
    v20 = [v30 bottomAnchor];
    v21 = [v29 constraintEqualToAnchor:v20];
    v41[2] = v21;
    v22 = [(TUIKBKeyView *)self trailingAnchor];
    v23 = [(TUIKBKeyView *)self liveContentView];
    v24 = [v23 trailingAnchor];
    [v22 constraintEqualToAnchor:v24];
    v26 = v25 = v11;
    v41[3] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
    [v32 activateConstraints:v27];

    v11 = v25;
    v9 = v40;
  }

  v28 = [(TUIKBKeyView *)self liveContentView];
  [v28 setHidden:0];
}

- (BOOL)isTransitioning
{
  v3 = [(TUIKBKeyView *)self liveContentView];
  if (v3)
  {
    v4 = [(TUIKBKeyView *)self liveContentView];
    [v4 alpha];
    v6 = v5 > 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)factoryForKeyStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(TUIKBKeyView *)self floatingFactory];
  }

  else
  {
    if (a3 == 4)
    {
      [(TUIKBKeyView *)self splitFactory];
    }

    else
    {
      [(TUIKBKeyView *)self unsplitFactory];
    }
    v3 = ;
  }

  return v3;
}

- (UIKBRenderFactory)floatingFactory
{
  floatingFactory = self->_floatingFactory;
  if (!floatingFactory)
  {
    v4 = [(UIKBContainerKeyView *)self keyplane];
    v5 = [v4 visualStyling];

    v6 = MEMORY[0x1E69DCB60];
    v7 = [(UIKBContainerKeyView *)self renderConfig];
    v8 = [v6 renderingContextForRenderConfig:v7];

    [v8 setIsFloating:1];
    v9 = [MEMORY[0x1E69DCB50] factoryForVisualStyle:v5 & 0xFFFFFFFFFFFFFF00 | 0x40 renderingContext:v8 skipLayoutSegments:1];
    v10 = self->_floatingFactory;
    self->_floatingFactory = v9;

    v11 = [(UIKBContainerKeyView *)self factory];
    [v11 scale];
    [(UIKBRenderFactory *)self->_floatingFactory setScale:?];

    v12 = [(UIKBContainerKeyView *)self factory];
    [v12 stretchFactor];
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
    v4 = [(UIKBContainerKeyView *)self keyplane];
    v5 = [v4 visualStyling];

    v6 = [MEMORY[0x1E69DC938] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    v8 = MEMORY[0x1E69DCB60];
    v9 = [(UIKBContainerKeyView *)self renderConfig];
    v10 = [v8 renderingContextForRenderConfig:v9];

    [v10 setIsFloating:0];
    v11 = [MEMORY[0x1E69DCB50] factoryForVisualStyle:v5 & 0xFFFFFFFFFFFFFF00 | v7 & 0x3F | 0x40 renderingContext:v10 skipLayoutSegments:1];
    v12 = self->_unsplitFactory;
    self->_unsplitFactory = v11;

    v13 = [(UIKBContainerKeyView *)self factory];
    [v13 scale];
    [(UIKBRenderFactory *)self->_unsplitFactory setScale:?];

    v14 = [(UIKBContainerKeyView *)self factory];
    [v14 stretchFactor];
    [(UIKBRenderFactory *)self->_unsplitFactory setStretchFactor:?];

    v15 = [(UIKBContainerKeyView *)self factory];
    -[UIKBRenderFactory setDynamicFactory:](self->_unsplitFactory, "setDynamicFactory:", [v15 dynamicFactory]);

    v16 = [(UIKBContainerKeyView *)self factory];
    -[UIKBRenderFactory setPreferStringKeycapOverImage:](self->_unsplitFactory, "setPreferStringKeycapOverImage:", [v16 preferStringKeycapOverImage]);

    unsplitFactory = self->_unsplitFactory;
  }

  return unsplitFactory;
}

- (UIKBRenderFactory)splitFactory
{
  splitFactory = self->_splitFactory;
  if (!splitFactory)
  {
    v4 = [(UIKBContainerKeyView *)self keyplane];
    v5 = [v4 visualStyling];

    v6 = MEMORY[0x1E69DCB50];
    v7 = [(UIKBContainerKeyView *)self factory];
    v8 = [v7 renderingContext];
    v9 = [v6 factoryForVisualStyle:v5 | 0x80 renderingContext:v8 skipLayoutSegments:1];
    v10 = self->_splitFactory;
    self->_splitFactory = v9;

    v11 = [(UIKBContainerKeyView *)self factory];
    [v11 scale];
    [(UIKBRenderFactory *)self->_splitFactory setScale:?];

    v12 = [(UIKBContainerKeyView *)self factory];
    [v12 stretchFactor];
    [(UIKBRenderFactory *)self->_splitFactory setStretchFactor:?];

    v13 = [(UIKBContainerKeyView *)self factory];
    -[UIKBRenderFactory setPreferStringKeycapOverImage:](self->_unsplitFactory, "setPreferStringKeycapOverImage:", [v13 preferStringKeycapOverImage]);

    splitFactory = self->_splitFactory;
  }

  return splitFactory;
}

- (void)addActiveKeyCapView
{
  v3 = [(TUIKBKeyView *)self activeKeyCap];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCB30]);
    [(TUIKBKeyView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(UIKBContainerKeyView *)self keyplane];
    v14 = [(TUIKBKeyView *)self key];
    v15 = [v4 initWithFrame:v13 keyplane:v14 key:{v6, v8, v10, v12}];
    [(TUIKBKeyView *)self setActiveKeyCap:v15];

    v16 = [(TUIKBKeyView *)self activeKeyCap];
    [(TUIKBKeyView *)self addSubview:v16];

    v17 = [(TUIKBKeyView *)self activeKeyCap];
    v18 = [(UIKBContainerKeyView *)self factory];
    [v17 setFactory:v18];

    v19 = [(TUIKBKeyView *)self activeKeyCap];
    v20 = [(UIKBContainerKeyView *)self renderConfig];
    [v19 setRenderConfig:v20];

    v21 = [(TUIKBKeyView *)self activeKeyCap];
    [(UIKBContainerKeyView *)self drawFrame];
    [v21 setDrawFrame:?];

    v22 = [(TUIKBKeyView *)self activeKeyCap];
    [v22 changeBackgroundToActiveIfNecessary];

    v23 = [(TUIKBKeyView *)self activeKeyCap];
    [v23 setNeedsDisplay];

    v24 = [(TUIKBKeyView *)self activeKeyCap];
    [v24 prepareForDisplay];
  }
}

- (void)resetPanAnimations
{
  v3 = [(TUIKBKeyView *)self representedKey];
  v4 = [v3 displayTypeHint];

  if (v4 == 10)
  {
    v12 = [(UIKBContainerKeyView *)self layerForRenderFlags:4];
    v5 = [v12 animationKeys];
    v6 = [v5 count];

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

- (void)_startStateTransitionAnimationsFrom:(int)a3 to:(int)a4
{
  v6 = [(UIKBContainerKeyView *)self renderConfig];
  if (![v6 animatedBackground])
  {
    goto LABEL_4;
  }

  v7 = [(TUIKBKeyView *)self representedKey];
  if ([v7 displayTypeHint] == 10)
  {

LABEL_4:
LABEL_5:
    v8 = [(TUIKBKeyView *)self activeKeyCap];

    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = [(TUIKBKeyView *)self activeKeyCap];
LABEL_7:
    [v9 removeFromSuperview];

    [(TUIKBKeyView *)self setActiveKeyCap:0];
LABEL_8:
    if (a4 == 2)
    {

      [(TUIKBKeyView *)self resetPanAnimations];
    }

    return;
  }

  v10 = [(TUIKBKeyView *)self representedKey];
  v11 = [v10 displayType];

  if (v11 == 7)
  {
    goto LABEL_5;
  }

  v12 = [(TUIKBKeyView *)self activeKeyCap];
  v9 = v12;
  if ((a4 & 4) == 0)
  {
    goto LABEL_7;
  }

  if (!v9)
  {

    [(TUIKBKeyView *)self addActiveKeyCapView];
  }
}

- (void)updateLabelWeight:(unint64_t)a3
{
  v5 = [(TUIKBKeyView *)self liveContentView];

  if (v5)
  {
    v6 = [(TUIKBKeyView *)self liveContentView];
    [v6 updateLabelWeight:a3];
  }
}

- (void)updateStateFrom:(int)a3 to:(int)a4
{
  [(TUIKBKeyView *)self _startStateTransitionAnimationsFrom:*&a3 to:*&a4];
  v7 = [(TUIKBKeyView *)self backingKey];
  if ([v7 layoutType])
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

- (void)dimKeyUsingOpacities:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5.receiver = self;
    v5.super_class = TUIKBKeyView;
    [(UIKBContainerKeyView *)&v5 dimContentKeyView:v4];
  }
}

- (void)updateStyle:(int64_t)a3
{
  if (self->_keyStyle != a3)
  {
    self->_keyStyle = a3;
    v5 = [(TUIKBKeyView *)self liveContentView];

    if (v5)
    {
      v6 = [(TUIKBKeyView *)self factoryForKeyStyle:a3];
      v7 = [(TUIKBKeyView *)self representedKey];
      v8 = [(TUIKBKeyView *)self backingKey];
      v9 = [v8 keyplane];
      v18 = [v6 traitsForKey:v7 onKeyplane:v9];

      v10 = [(TUIKBKeyView *)self factoryForKeyStyle:a3];
      v11 = [(TUIKBKeyView *)self representedKey];
      v12 = [v10 displayContentsForKey:v11];

      v13 = [(TUIKBKeyView *)self liveContentView];
      [v13 updateKeyStyle:a3];

      v14 = [(TUIKBKeyView *)self liveContentView];
      [v14 updateRenderTraits:v18 displayContents:v12];

      v15 = [(TUIKBKeyView *)self backingKey];
      v16 = [v15 layoutType];

      if (v16 == 3)
      {
        v17 = [(TUIKBKeyView *)self representedKey];
        -[TUIKBKeyView updateLabelWeight:](self, "updateLabelWeight:", [v17 dynamicDisplayCorner]);
      }
    }

    else
    {

      [(UIKBContainerKeyView *)self setNeedsDisplay];
    }
  }
}

- (void)prepareUpdatesForStyle:(int64_t)a3 toStyle:(int64_t)a4
{
  v7 = [(TUIKBKeyView *)self liveContentView];

  if (v7)
  {
    v39 = [(TUIKBKeyView *)self factoryForKeyStyle:a3];
    v8 = [(TUIKBKeyView *)self representedKey];
    v9 = [(TUIKBKeyView *)self backingKey];
    v10 = [v9 keyplane];
    v11 = [v39 traitsForKey:v8 onKeyplane:v10];

    v12 = [(TUIKBKeyView *)self representedKey];
    v38 = [v39 displayContentsForKey:v12];

    v13 = [(TUIKBKeyView *)self liveContentView];
    [v13 updateKeyStyle:a3];

    v14 = [(TUIKBKeyView *)self liveContentView];
    [v14 updateRenderTraits:v11 displayContents:v38];

    v15 = [(TUIKBKeyView *)self factoryForKeyStyle:a4];
    v16 = [(TUIKBKeyView *)self representedKey];
    v17 = [(TUIKBKeyView *)self backingKey];
    v18 = [v17 keyplane];
    v19 = [v15 traitsForKey:v16 onKeyplane:v18];

    v20 = a3 == 1;
    v21 = a4 != 1;
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
      v25 = a4;
    }

    else
    {
      v25 = a3;
    }

    if (!v22)
    {
      a3 = a4;
    }

    v26 = v24;
    v27 = v23;
    v28 = objc_alloc_init(TUIKeyAnimationProperties);
    v29 = [v27 geometry];
    [v29 roundRectRadius];
    [(TUIKeyAnimationProperties *)v28 setStartingCornerRadius:?];

    v30 = [v26 geometry];
    [v30 roundRectRadius];
    [(TUIKeyAnimationProperties *)v28 setEndingCornerRadius:?];

    v31 = [v27 symbolStyle];
    [v31 fontSize];
    [(TUIKeyAnimationProperties *)v28 setStartingFontSize:?];

    v32 = [v26 symbolStyle];
    [v32 fontSize];
    [(TUIKeyAnimationProperties *)v28 setEndingFontSize:?];

    v33 = [v27 secondarySymbolStyles];

    v34 = [v33 firstObject];
    [v34 fontSize];
    [(TUIKeyAnimationProperties *)v28 setStartingSecondaryFontSize:?];

    v35 = [v26 secondarySymbolStyles];

    v36 = [v35 firstObject];
    [v36 fontSize];
    [(TUIKeyAnimationProperties *)v28 setEndingSecondaryFontSize:?];

    [(TUIKBKeyView *)self backgroundInsetsForStyle:v25];
    [(TUIKeyAnimationProperties *)v28 setStartingBackgroundInsets:?];
    [(TUIKBKeyView *)self backgroundInsetsForStyle:a3];
    [(TUIKeyAnimationProperties *)v28 setEndingBackgroundInsets:?];
    v37 = [(TUIKBKeyView *)self liveContentView];
    [v37 setAnimationProperties:v28];
  }

  else
  {

    [(UIKBContainerKeyView *)self setNeedsDisplay];
  }
}

- (void)setDrawFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = TUIKBKeyView;
  [(UIKBContainerKeyView *)&v10 setDrawFrame:?];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (!CGRectIsEmpty(v11) && ![(TUIKBKeyView *)self isTransitioning])
  {
    v8 = [(UIKBContainerKeyView *)self renderConfig];
    v9 = [v8 colorAdaptiveBackground];

    if ((v9 & 1) == 0)
    {
      [(UIKBContainerKeyView *)self setNeedsDisplay];
      [(UIKBContainerKeyView *)self prepareForDisplay];
    }
  }
}

- (void)setBounds:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUIKBKeyView;
  [(TUIKBKeyView *)&v6 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (![(TUIKBKeyView *)self isTransitioning])
  {
    v4 = [(TUIKBKeyView *)self layoutDelegate];
    v5 = [(TUIKBKeyView *)self representedKey];
    [v4 boundsChangedForKey:v5];
  }
}

- (id)shapeWhenMergedWithKey:(id)a3 insets:(UIEdgeInsets)a4
{
  top = a4.top;
  v5 = a3;
  [v5 frame];
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
    v22 = [MEMORY[0x1E69DCB70] shape];
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
  v24 = [MEMORY[0x1E69DCB70] shape];
  [v24 setFrame:{x, y, width, height}];
  [v24 setPaddedFrame:{v44, v45, v43, v38}];
  if (vabdd_f64(v36, MinX) >= 5.0 || vabdd_f64(v34, MaxX) >= 5.0)
  {
    v25 = [v5 rowNumber];
    if (v25 < [(TUIKBKeyView *)self rowNumber])
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

      [v24 setConcaveCorner:v27];
      [v24 setConcaveCornerOffset:{v26, top + rect2 - v45}];
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
      v28 = v24;
      goto LABEL_30;
    }
  }

  v28 = [MEMORY[0x1E69DCB70] shape];
LABEL_30:
  v22 = v28;

LABEL_5:

  return v22;
}

- (TUIKBKeyView)initWithKey:(id)a3
{
  v5 = a3;
  v6 = [v5 keyplane];
  v7 = [v5 backingTree];
  v31.receiver = self;
  v31.super_class = TUIKBKeyView;
  v8 = [(UIKBContainerKeyView *)&v31 initWithFrame:v6 keyplane:v7 key:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  if (!v8)
  {
    goto LABEL_27;
  }

  v8->_keyStyle = [v5 style];
  objc_storeStrong(&v8->_backingKey, a3);
  if ([v5 style] == -1)
  {
    v8->_keyStyle = 2;
  }

  v9 = [v5 backingTree];
  representedKey = v8->_representedKey;
  v8->_representedKey = v9;

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v5 backingTree];
  v13 = [v12 displayString];
  v14 = [v11 stringWithFormat:@"%@_key", v13];
  [(TUIKBKeyView *)v8 setAccessibilityIdentifier:v14];

  if ([v5 layoutType] == 3)
  {
    v8->_layoutType = 3;
    if ([v5 layoutShape] == 2)
    {
      v15 = [v5 layoutShape];
    }

    else
    {
      v15 = 0;
    }

    v8->_layoutShape = v15;
    [v5 multiplier];
    if (v21 > 0.0)
    {
LABEL_23:
      [v5 multiplier];
      v8->_multiplier = v25;
      goto LABEL_24;
    }
  }

  else
  {
    if ([v5 layoutType] == 4)
    {
      v8->_layoutType = 4;
      [v5 multiplier];
      v17 = v16;
      v18 = 1.0;
      if (v17 > 0.0)
      {
        [v5 multiplier];
      }

      v8->_multiplier = v18;
      v8->_layoutShape = 0;
      v19 = [v5 backingTree];
      v20 = [v19 name];
      [(TUIKBKeyView *)v8 setAccessibilityIdentifier:v20];

      goto LABEL_24;
    }

    if ([v5 layoutShape] == -1)
    {
      v22 = 0;
    }

    else
    {
      v22 = [v5 layoutShape];
    }

    v8->_layoutShape = v22;
    if ([v5 layoutType] == -1)
    {
      v23 = 2;
    }

    else
    {
      v23 = [v5 layoutType];
    }

    v8->_layoutType = v23;
    [v5 multiplier];
    if (v24 > 0.0 || ![v5 layoutType])
    {
      goto LABEL_23;
    }
  }

  v8->_multiplier = 1.0;
LABEL_24:
  v26 = [v5 backingTree];
  v27 = [v26 displayType];

  if (v27 == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v28 = [v5 backingTree];
    v29 = [v5 keyplane];
    [(TUIKBKeyView *)v8 performSelector:sel_updateSpecialtyKeyViewForKey_inKeyplane_ withObject:v28 withObject:v29];
  }

LABEL_27:

  return v8;
}

@end