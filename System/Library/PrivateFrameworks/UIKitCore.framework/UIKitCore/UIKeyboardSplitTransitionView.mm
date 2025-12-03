@interface UIKeyboardSplitTransitionView
- (BOOL)canDisplayTransition;
- (BOOL)showDictationKey;
- (BOOL)showIntlKey;
- (CGImage)keyImageWithToken:(id)token;
- (CGRect)rectEnclosingKeyplane:(id)keyplane;
- (CGSize)sizeForShadowLayer:(int)layer;
- (NSArray)backgroundLayers;
- (UIKeyboardKeyplaneTransitionDelegate)splitTransitionDelegate;
- (UIKeyboardSplitTransitionDataSource)splitTransitionDataSource;
- (id)bottomDropShadow;
- (id)centerDropShadow;
- (id)colorsForBackgroundLayer:(int)layer;
- (id)outerCenterDropShadow;
- (id)topDropShadow;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)finalizeTransition;
- (void)finishWithProgress:(double)progress completionBlock:(id)block;
- (void)initializeLayers;
- (void)setFrame:(CGRect)frame;
- (void)transformForProgress:(double)progress;
- (void)transitionToFinalState:(id)state;
- (void)updateWithProgress:(double)progress;
@end

@implementation UIKeyboardSplitTransitionView

- (void)dealloc
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }

  [(UIKeyboardSplitTransitionView *)self setCompletionBlock:0];
  sliceSet = self->_sliceSet;
  self->_sliceSet = 0;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIKeyboardRivenVisualStyleDidChange" object:0];

  v7.receiver = self;
  v7.super_class = UIKeyboardSplitTransitionView;
  [(UIView *)&v7 dealloc];
}

- (void)didMoveToWindow
{
  window = [(UIView *)self window];

  if (window)
  {
    window2 = [(UIView *)self window];
    screen = [window2 screen];
    [screen scale];
    v7 = v6;
    layer = [(UIView *)self layer];
    [layer setRasterizationScale:v7];

    window3 = [(UIView *)self window];
    screen2 = [window3 screen];
    v11 = [(UIKeyboardMotionSupport *)UISplitKeyboardSupport supportForScreen:screen2];
    [(UIKeyboardSplitTransitionView *)self setSplitTransitionDelegate:v11];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_rebuildTransitionForSplitStyleChange_ name:@"UIKeyboardRivenVisualStyleDidChange" object:0];
  }

  else
  {
    [(UIKeyboardSplitTransitionView *)self setSplitTransitionDelegate:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];
  }
}

- (void)setFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIKeyboardSplitTransitionView;
  [(UIView *)&v6 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  backgroundLayers = [(UIKeyboardSplitTransitionView *)self backgroundLayers];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__UIKeyboardSplitTransitionView_setFrame___block_invoke;
  v5[3] = &unk_1E70F5BE0;
  v5[4] = self;
  [backgroundLayers enumerateObjectsUsingBlock:v5];
}

void __42__UIKeyboardSplitTransitionView_setFrame___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  [*(a1 + 32) bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v14 = [v13 preferencesActions];
  [v14 rivenSizeFactor:9.0];
  v16 = v15 * -2.0;
  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = v10;
  v26.size.height = v12;
  v27 = CGRectInset(v26, v16, 0.0);
  [v24 setBounds:{v27.origin.x, v27.origin.y, v27.size.width, v27.size.height}];

  if (a3 == 2)
  {
    [*(a1 + 32) bounds];
    v18 = v17;
    v19 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v20 = [v19 preferencesActions];
    [v20 rivenSizeFactor:9.0];
    v22 = v18 + v21;
  }

  else
  {
    v19 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v20 = [v19 preferencesActions];
    [v20 rivenSizeFactor:9.0];
    v22 = -v23;
  }

  [v24 setPosition:{v22, 0.0}];
}

- (NSArray)backgroundLayers
{
  v2 = backgroundLayers_backgroundLayers;
  if (!backgroundLayers_backgroundLayers)
  {
    v3 = 3;
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    v5 = backgroundLayers_backgroundLayers;
    backgroundLayers_backgroundLayers = v4;

    do
    {
      v6 = backgroundLayers_backgroundLayers;
      layer = [MEMORY[0x1E6979380] layer];
      [v6 addObject:layer];

      --v3;
    }

    while (v3);
    v2 = backgroundLayers_backgroundLayers;
  }

  return v2;
}

- (id)topDropShadow
{
  v2 = topDropShadow_top;
  if (!topDropShadow_top)
  {
    v3 = [UIImage kitImageNamed:@"kb-drop-shadow-top.png"];
    v4 = topDropShadow_top;
    topDropShadow_top = v3;

    v2 = topDropShadow_top;
  }

  return v2;
}

- (id)centerDropShadow
{
  v2 = centerDropShadow_center;
  if (!centerDropShadow_center)
  {
    v3 = [UIImage kitImageNamed:@"kb-drop-shadow-center.png"];
    v4 = centerDropShadow_center;
    centerDropShadow_center = v3;

    v2 = centerDropShadow_center;
  }

  return v2;
}

- (id)outerCenterDropShadow
{
  v2 = outerCenterDropShadow_outerCenter;
  if (!outerCenterDropShadow_outerCenter)
  {
    v3 = [UIImage kitImageNamed:@"kb-drop-shadow-outer-center.png"];
    v4 = outerCenterDropShadow_outerCenter;
    outerCenterDropShadow_outerCenter = v3;

    v2 = outerCenterDropShadow_outerCenter;
  }

  return v2;
}

- (id)bottomDropShadow
{
  v2 = bottomDropShadow_bottom;
  if (!bottomDropShadow_bottom)
  {
    v3 = [UIImage kitImageNamed:@"kb-drop-shadow-bottom.png"];
    v4 = bottomDropShadow_bottom;
    bottomDropShadow_bottom = v3;

    v2 = bottomDropShadow_bottom;
  }

  return v2;
}

- (void)initializeLayers
{
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  v5 = v4;

  shadowLayers = [(UIKeyboardSplitTransitionView *)self shadowLayers];
  v7 = [shadowLayers objectAtIndex:0];

  contents = [v7 contents];

  if (!contents)
  {
    topDropShadow = [(UIKeyboardSplitTransitionView *)self topDropShadow];
    centerDropShadow = [(UIKeyboardSplitTransitionView *)self centerDropShadow];
    bottomDropShadow = [(UIKeyboardSplitTransitionView *)self bottomDropShadow];
    outerCenterDropShadow = [(UIKeyboardSplitTransitionView *)self outerCenterDropShadow];
    shadowLayers2 = [(UIKeyboardSplitTransitionView *)self shadowLayers];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __49__UIKeyboardSplitTransitionView_initializeLayers__block_invoke;
    v23[3] = &unk_1E7118E20;
    v24 = centerDropShadow;
    v25 = topDropShadow;
    v26 = bottomDropShadow;
    v27 = outerCenterDropShadow;
    v28 = v5;
    v14 = outerCenterDropShadow;
    v15 = bottomDropShadow;
    v16 = topDropShadow;
    v17 = centerDropShadow;
    [shadowLayers2 enumerateObjectsUsingBlock:v23];
  }

  backgroundLayers = [(UIKeyboardSplitTransitionView *)self backgroundLayers];
  v19 = [backgroundLayers objectAtIndex:0];

  contents2 = [v19 contents];

  if (!contents2)
  {
    backgroundLayers2 = [(UIKeyboardSplitTransitionView *)self backgroundLayers];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __49__UIKeyboardSplitTransitionView_initializeLayers__block_invoke_2;
    v22[3] = &unk_1E71028D0;
    v22[4] = self;
    v22[5] = v5;
    [backgroundLayers2 enumerateObjectsUsingBlock:v22];
  }
}

void __49__UIKeyboardSplitTransitionView_initializeLayers__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  [v5 setAnchorPoint:{0.0, 0.0}];
  if (a3 == 4 || a3 == 1)
  {
    v7 = *(a1 + 40);

    v6 = v7;
  }

  if (a3 <= 6 && ((1 << a3) & 0x49) != 0)
  {
    v8 = 48;
  }

  else
  {
    if (a3 - 7 > 1)
    {
      goto LABEL_8;
    }

    v8 = 56;
  }

  v9 = *(a1 + v8);

  v6 = v9;
LABEL_8:
  [v5 setContents:{objc_msgSend(v6, "CGImage")}];
  [v5 setContentsScale:*(a1 + 64)];
  if (a3 <= 8 && ((1 << a3) & 0x1A4) != 0)
  {
    [v5 setContentsCenter:{0.0, 0.5, 0.0, 0.0}];
    if ((a3 | 2) == 7)
    {
      CGAffineTransformMakeScale(&v10, -1.0, 1.0);
      CATransform3DMakeAffineTransform(&v16, &v10);
      v12 = *&v16.m31;
      v13 = *&v16.m33;
      v14 = *&v16.m41;
      v15 = *&v16.m43;
      *&v10.a = *&v16.m11;
      *&v10.c = *&v16.m13;
      *&v10.tx = *&v16.m21;
      v11 = *&v16.m23;
      [v5 setTransform:&v10];
    }
  }
}

void __49__UIKeyboardSplitTransitionView_initializeLayers__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 == 2)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v9 = a2;
  [v9 setAnchorPoint:{v5, 0.0}];
  v6 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v7 = [v6 preferencesActions];
  [v7 rivenSizeFactor:9.0];
  [v9 setCornerRadius:?];

  v8 = [*(a1 + 32) colorsForBackgroundLayer:a3];
  [v9 setColors:v8];

  [v9 setContentsScale:*(a1 + 40)];
}

- (id)colorsForBackgroundLayer:(int)layer
{
  if (!colorsForBackgroundLayer__modernColors)
  {
    v3 = MEMORY[0x1E695DEC8];
    v4 = UIKBGetNamedColor(@"UIKBColorLightBackdropTint");
    v5 = [v3 arrayWithObjects:{v4, UIKBGetNamedColor(@"UIKBColorLightBackdropTint"), 0}];
    v6 = colorsForBackgroundLayer__modernColors;
    colorsForBackgroundLayer__modernColors = v5;
  }

  v7 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v7 textInputTraits];
  keyboardAppearance = [textInputTraits keyboardAppearance];

  if ((keyboardAppearance & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = colorsForBackgroundLayer__modernColors;
  }

  return v10;
}

- (CGSize)sizeForShadowLayer:(int)layer
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  if (layer > 4)
  {
    if ((layer - 7) < 2)
    {
      outerCenterDropShadow = [(UIKeyboardSplitTransitionView *)self outerCenterDropShadow];
      goto LABEL_15;
    }

    if (layer == 5)
    {
      goto LABEL_13;
    }

    if (layer != 6)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (layer <= 2)
  {
    if (layer != 1)
    {
      if (layer != 2)
      {
        goto LABEL_16;
      }

LABEL_13:
      outerCenterDropShadow = [(UIKeyboardSplitTransitionView *)self centerDropShadow];
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (layer == 3)
  {
LABEL_12:
    outerCenterDropShadow = [(UIKeyboardSplitTransitionView *)self bottomDropShadow];
    goto LABEL_15;
  }

LABEL_11:
  outerCenterDropShadow = [(UIKeyboardSplitTransitionView *)self topDropShadow];
LABEL_15:
  v6 = outerCenterDropShadow;
  [outerCenterDropShadow size];
  v3 = v7;
  v4 = v8;

LABEL_16:
  v9 = v3;
  v10 = v4;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)rectEnclosingKeyplane:(id)keyplane
{
  v25 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  subtrees = [keyplane subtrees];
  v8 = [subtrees countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(subtrees);
        }

        [*(*(&v20 + 1) + 8 * v11) frame];
        v29.origin.x = v12;
        v29.origin.y = v13;
        v29.size.width = v14;
        v29.size.height = v15;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v27 = CGRectUnion(v26, v29);
        x = v27.origin.x;
        y = v27.origin.y;
        width = v27.size.width;
        height = v27.size.height;
        ++v11;
      }

      while (v9 != v11);
      v9 = [subtrees countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)transformForProgress:(double)progress
{
  shouldAllowRubberiness = [(UIKeyboardSplitTransitionView *)self shouldAllowRubberiness];
  layer = [(UIView *)self layer];
  v7 = layer;
  if (!shouldAllowRubberiness)
  {
    v12 = *(MEMORY[0x1E69792E8] + 80);
    *&v20.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v20.m33 = v12;
    v13 = *(MEMORY[0x1E69792E8] + 112);
    *&v20.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v20.m43 = v13;
    v14 = *(MEMORY[0x1E69792E8] + 16);
    *&v20.m11 = *MEMORY[0x1E69792E8];
    *&v20.m13 = v14;
    v15 = *(MEMORY[0x1E69792E8] + 48);
    *&v20.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v20.m23 = v15;
    [layer setTransform:&v20];

    return;
  }

  v8 = [layer valueForKeyPath:@"transform.translation.y"];
  [v8 floatValue];
  v10 = v9;

  memset(&v20, 0, sizeof(v20));
  CATransform3DMakeTranslation(&v20, 0.0, v10, 0.0);
  if (progress > 1.0)
  {
    v11 = (progress + -1.0) * 0.025 + 1.0;
LABEL_7:
    v18 = v20;
    CATransform3DScale(&v19, &v18, v11, 1.0, 1.0);
    v20 = v19;
    goto LABEL_8;
  }

  if (progress < 0.0)
  {
    v11 = progress * 0.025 + 1.0;
    goto LABEL_7;
  }

LABEL_8:
  v16 = [(UIView *)self layer:*&v20.m11];
  v19 = v17;
  [v16 setTransform:&v19];
}

- (void)finalizeTransition
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }

  [(UIKeyboardSplitTransitionView *)self updateWithProgress:self->_finishProgress];
  completionBlock = [(UIKeyboardSplitTransitionView *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(UIKeyboardSplitTransitionView *)self completionBlock];
    completionBlock2[2]();

    [(UIKeyboardSplitTransitionView *)self setCompletionBlock:0];
  }

  splitTransitionDelegate = [(UIKeyboardSplitTransitionView *)self splitTransitionDelegate];
  [splitTransitionDelegate transitionDidFinish:{-[UIKeyboardSplitTransitionView transitionIsVisible](self, "transitionIsVisible")}];
}

- (void)transitionToFinalState:(id)state
{
  [state timestamp];
  v5 = v4;
  finishProgress = self->_finishProgress;
  if (vabdd_f64(self->_currentProgress, finishProgress) < 0.01 || (v7 = v5 - self->_finalTransitionStartTime, finishDuration = self->_finishDuration, v7 >= finishDuration))
  {
    [(UIKeyboardSplitTransitionView *)self updateWithProgress:?];
    [(CADisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;

    [(UIKeyboardSplitTransitionView *)self finalizeTransition];
  }

  else
  {
    v9 = self->_liftOffProgress + v7 / finishDuration * (finishProgress - self->_liftOffProgress);

    [(UIKeyboardSplitTransitionView *)self updateWithProgress:v9];
  }
}

- (void)finishWithProgress:(double)progress completionBlock:(id)block
{
  [(UIKeyboardSplitTransitionView *)self setCompletionBlock:block];
  self->_finishProgress = progress;
  self->_liftOffProgress = self->_currentProgress;
  if (+[UIView areAnimationsEnabled])
  {
    currentProgress = self->_currentProgress;
    v7 = currentProgress >= 0.0 && currentProgress <= 1.0;
    v8 = 3.0;
    if (!v7)
    {
      v8 = 9.0;
    }

    self->_finishDuration = vabdd_f64(currentProgress, self->_finishProgress) / v8;
    self->_finalTransitionStartTime = CACurrentMediaTime();
    window = [(UIView *)self window];
    screen = [window screen];
    v11 = [screen displayLinkWithTarget:self selector:sel_transitionToFinalState_];
    displayLink = self->_displayLink;
    self->_displayLink = v11;

    v13 = self->_displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v13 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
  }

  else
  {
    self->_currentProgress = self->_finishProgress;

    [(UIKeyboardSplitTransitionView *)self finalizeTransition];
  }
}

- (void)updateWithProgress:(double)progress
{
  if (!self->_isRebuilding)
  {
    if (progress > 1.0 || progress < 0.0)
    {
      [(UIKeyboardSplitTransitionView *)self transformForProgress:progress];
    }

    self->_currentProgress = progress;
    progressCopy = 1.0;
    if (progress <= 1.0)
    {
      progressCopy = progress;
    }

    if (progress >= 0.0)
    {
      v6 = progressCopy;
    }

    else
    {
      v6 = 0.0;
    }

    layer = [(UIView *)self layer];
    [layer setTimeOffset:v6];

    v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v8 preferencesActions];
    currentInputModeSupportsCrescendo = [preferencesActions currentInputModeSupportsCrescendo];

    if ((currentInputModeSupportsCrescendo & 1) == 0)
    {
      splitTransitionDelegate = [(UIKeyboardSplitTransitionView *)self splitTransitionDelegate];
      [splitTransitionDelegate updateProgress:v6 startHeight:self->_startFrame.size.height endHeight:self->_endFrame.size.height];
    }
  }
}

- (BOOL)canDisplayTransition
{
  if (self->_isRebuilding)
  {
    return 0;
  }

  if ([(UIKeyboardSplitTransitionView *)self defaultKeyboardImage])
  {
    return 1;
  }

  return [(UIKeyboardSplitTransitionView *)self splitKeyboardImage]!= 0;
}

- (CGImage)keyImageWithToken:(id)token
{
  tokenCopy = token;
  WeakRetained = objc_loadWeakRetained(&self->_transitionDataSource);
  v6 = [WeakRetained renderedImageWithToken:tokenCopy];

  return v6;
}

- (BOOL)showIntlKey
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionDataSource);
  showsInternationalKey = [WeakRetained showsInternationalKey];

  return showsInternationalKey;
}

- (BOOL)showDictationKey
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionDataSource);
  showsDictationKey = [WeakRetained showsDictationKey];

  return showsDictationKey;
}

- (UIKeyboardKeyplaneTransitionDelegate)splitTransitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionDelegate);

  return WeakRetained;
}

- (UIKeyboardSplitTransitionDataSource)splitTransitionDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionDataSource);

  return WeakRetained;
}

@end