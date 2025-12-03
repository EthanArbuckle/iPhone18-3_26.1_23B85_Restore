@interface SXFullscreenCaptionView
+ (id)_overridePropertiesWithComponentStyle:(id)style storage:(id)storage;
+ (void)_applyStyle:(id)style toStorage:(id)storage;
- (BOOL)forceFullExpandsionMode;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)positionForTextLayout:(id)layout;
- (CGRect)determineFrameInSuperview:(id)superview;
- (CGRect)frameWithSuperview:(id)superview size:(CGSize)size forExpansionMode:(int)mode;
- (CGRect)temporaryLayoutRect;
- (CGSize)fullSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SXFullscreenCaptionView)initWithTextSourceFactory:(id)factory actionHandler:(id)handler;
- (SXFullscreenCaptionViewDelegate)delegate;
- (UIEdgeInsets)fullInsets;
- (double)widthForTextLayout:(id)layout;
- (void)createBackgroundView;
- (void)createScrollView;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)handleSwipeGestureRecognizer:(id)recognizer;
- (void)handleTapGestureRecognizer:(id)recognizer;
- (void)initializeTangier;
- (void)layoutSubviews;
- (void)renderCaptionInTangier;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setExpansionMode:(int)mode animated:(BOOL)animated;
- (void)setFrame:(CGRect)frame;
- (void)setNeedsLayout;
- (void)setupGestureRecognizers;
- (void)updateFrameAnimated:(BOOL)animated;
- (void)updateWithCaption:(id)caption forViewIndex:(unint64_t)index animated:(BOOL)animated;
@end

@implementation SXFullscreenCaptionView

- (SXFullscreenCaptionView)initWithTextSourceFactory:(id)factory actionHandler:(id)handler
{
  factoryCopy = factory;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = SXFullscreenCaptionView;
  v9 = [(SXFullscreenCaptionView *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textSourceFactory, factory);
    objc_storeStrong(&v10->_actionHandler, handler);
    if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
    {
      [(SXFullscreenCaptionView *)v10 createBackgroundView];
    }

    [(SXFullscreenCaptionView *)v10 createScrollView];
    [(SXFullscreenCaptionView *)v10 setupGestureRecognizers];
    [(SXFullscreenCaptionView *)v10 initializeTangier];
  }

  return v10;
}

- (void)dealloc
{
  [(SXStandaloneTextLayout *)self->_captionLayout setDelegate:0];
  [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController setDelegate:0];
  [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController teardown];
  v3.receiver = self;
  v3.super_class = SXFullscreenCaptionView;
  [(SXFullscreenCaptionView *)&v3 dealloc];
}

- (void)updateWithCaption:(id)caption forViewIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  captionCopy = caption;
  objc_storeStrong(&self->_caption, caption);
  self->_viewIndex = index;
  if ([(SXFullscreenCaptionView *)self expansionMode]== 2)
  {
    scrollView = [(SXFullscreenCaptionView *)self scrollView];
    [scrollView setScrollEnabled:0];
  }

  self->_expansionMode = 1;
  [(SXFullscreenCaptionView *)self renderCaptionInTangier];
  [(SXFullscreenCaptionView *)self updateFrameAnimated:animatedCopy];
  [(SXFullscreenCaptionView *)self frame];
  v11 = v10;
  autoSizeCanvasController = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  [autoSizeCanvasController lineHeight];
  v14 = v13 * 4.5 + 15.5;

  if (v11 > v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  [(SXFullscreenCaptionView *)self setExpansionMode:v15 animated:0];
  text = [(SXFullscreenCaption *)captionCopy text];
  if ([text length])
  {
    [(SXFullscreenCaptionView *)self setIsAccessibilityElement:1];
    [(SXFullscreenCaptionView *)self setAccessibilityLabel:text];
  }

  else
  {
    [(SXFullscreenCaptionView *)self setIsAccessibilityElement:0];
  }
}

- (void)createBackgroundView
{
  v6 = [MEMORY[0x1E69DC730] effectWithStyle:2];
  v3 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v6];
  [(SXFullscreenCaptionView *)self setBackgroundView:v3];

  backgroundView = [(SXFullscreenCaptionView *)self backgroundView];
  [backgroundView _setGroupName:@"captionBars"];

  backgroundView2 = [(SXFullscreenCaptionView *)self backgroundView];
  [(SXFullscreenCaptionView *)self addSubview:backgroundView2];
}

- (CGRect)determineFrameInSuperview:(id)superview
{
  superviewCopy = superview;
  [superviewCopy safeAreaInsets];
  v6 = v5;
  v8 = v7;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _peripheryInsets];
  v11 = v10;
  v13 = v12;

  [superviewCopy bounds];
  v14 = CGRectGetWidth(v28) - v6 - v8;
  [(SXFullscreenCaptionView *)self sizeThatFits:v14, 1.79769313e308];
  self->_fullSize.width = v14;
  self->_fullSize.height = v15;
  self->_fullInsets.top = v11;
  self->_fullInsets.left = v6;
  self->_fullInsets.bottom = v13;
  self->_fullInsets.right = v8;
  [(SXFullscreenCaptionView *)self frameWithSuperview:superviewCopy size:[(SXFullscreenCaptionView *)self expansionMode] forExpansionMode:v14, v15];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)frameWithSuperview:(id)superview size:(CGSize)size forExpansionMode:(int)mode
{
  height = size.height;
  width = size.width;
  superviewCopy = superview;
  [(SXFullscreenCaptionView *)self fullInsets];
  v11 = v10;
  v13 = v12;
  [superviewCopy bounds];
  v14 = CGRectGetHeight(v35);
  v15 = height + v13 + 16.0;
  if (mode == 2)
  {
    superview = [(SXFullscreenCaptionView *)self superview];
    [superview bounds];
    v23 = v22 * 0.5;

    if (v23 >= v14 - v15)
    {
      v16 = v23;
    }

    else
    {
      v16 = v14 - v15;
    }
  }

  else
  {
    v16 = v14;
    if (mode == 1)
    {
      autoSizeCanvasController = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
      [autoSizeCanvasController lineHeight];
      v19 = v18;

      v20 = v19 * 4.5 + 15.5;
      if (v20 >= v15)
      {
        v20 = v15;
      }

      v16 = v14 - v20;
    }
  }

  caption = [(SXFullscreenCaptionView *)self caption];
  if (caption && (v25 = caption, -[SXFullscreenCaptionView caption](self, "caption"), v26 = objc_claimAutoreleasedReturnValue(), -[SXFullscreenCaption text](v26), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 length], v27, v26, v25, v28))
  {
    v29 = v14 - v16;
    v14 = v16;
  }

  else
  {
    v29 = 0.0;
  }

  [superviewCopy bounds];
  v30 = v11 + CGRectGetMinX(v36);

  v31 = v30;
  v32 = v14;
  v33 = width;
  v34 = v29;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  v33.receiver = self;
  v33.super_class = SXFullscreenCaptionView;
  [(SXFullscreenCaptionView *)&v33 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SXFullscreenCaptionView *)self fullInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = -v4;
  [(SXFullscreenCaptionView *)self fullSize];
  v12 = v9 + v5 + v11;
  [(SXFullscreenCaptionView *)self fullSize];
  v14 = v7 + v13 + 16.0;
  backgroundView = [(SXFullscreenCaptionView *)self backgroundView];
  [backgroundView setFrame:{v10, 0.0, v12, v14}];

  scrollView = [(SXFullscreenCaptionView *)self scrollView];
  [(SXFullscreenCaptionView *)self fullInsets];
  v18 = v17;
  [(SXFullscreenCaptionView *)self bounds];
  Width = CGRectGetWidth(v34);
  [(SXFullscreenCaptionView *)self bounds];
  [scrollView setFrame:{v18, 15.5, Width, CGRectGetHeight(v35) + -15.5}];

  scrollView2 = [(SXFullscreenCaptionView *)self scrollView];
  [(SXFullscreenCaptionView *)self fullSize];
  [scrollView2 setContentSize:?];

  autoSizeCanvasController = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  canvasView = [autoSizeCanvasController canvasView];
  [(SXFullscreenCaptionView *)self fullSize];
  v24 = v23;
  [(SXFullscreenCaptionView *)self fullSize];
  [canvasView setFrame:{0.0, 0.0, v24, v25}];

  [(SXFullscreenCaptionView *)self fullSize];
  v27 = v26;
  v29 = v28;
  v30 = [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController cvc];
  canvasLayer = [v30 canvasLayer];
  [canvasLayer setUnscaledSize:{v27, v29}];

  autoSizeCanvasController2 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  [autoSizeCanvasController2 invalidateLayoutsAndFrames];
}

- (void)setNeedsLayout
{
  v4.receiver = self;
  v4.super_class = SXFullscreenCaptionView;
  [(SXFullscreenCaptionView *)&v4 setNeedsLayout];
  autoSizeCanvasController = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  [autoSizeCanvasController invalidateLayoutsAndFrames];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SXFullscreenCaptionView;
  [(SXFullscreenCaptionView *)&v5 layoutSubviews];
  autoSizeCanvasController = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  v4 = [autoSizeCanvasController icc];
  [v4 layoutIfNeeded];
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = SXFullscreenCaptionView;
  [(SXFullscreenCaptionView *)&v4 didMoveToSuperview];
  superview = [(SXFullscreenCaptionView *)self superview];

  if (superview)
  {
    [(SXFullscreenCaptionView *)self updateFrameAnimated:0];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  autoSizeCanvasController = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  [autoSizeCanvasController invalidateLayoutsAndFrames];

  [(SXFullscreenCaptionView *)self setTemporaryLayoutRect:0.0, 0.0, width, height];
  autoSizeCanvasController2 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  [autoSizeCanvasController2 sizeThatFits];
  v9 = v8;
  v11 = v10;

  [(SXFullscreenCaptionView *)self setTemporaryLayoutRect:*MEMORY[0x1E695F040], *(MEMORY[0x1E695F040] + 8), *(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)];
  v12 = v11 + 16.0;
  v13 = v9;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)updateFrameAnimated:(BOOL)animated
{
  animatedCopy = animated;
  superview = [(SXFullscreenCaptionView *)self superview];

  if (superview)
  {
    superview2 = [(SXFullscreenCaptionView *)self superview];
    [(SXFullscreenCaptionView *)self determineFrameInSuperview:superview2];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [(SXFullscreenCaptionView *)self frame];
    MinY = CGRectGetMinY(v24);
    v25.origin.x = v8;
    v25.origin.y = v10;
    v25.size.width = v12;
    v25.size.height = v14;
    v16 = CGRectGetMinY(v25);
    [(SXFullscreenCaptionView *)self frame];
    Height = CGRectGetHeight(v26);
    v27.origin.x = v8;
    v27.origin.y = v10;
    v27.size.width = v12;
    v27.size.height = v14;
    v18 = CGRectGetHeight(v27);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __47__SXFullscreenCaptionView_updateFrameAnimated___block_invoke;
    v23[3] = &unk_1E84FF858;
    v23[4] = self;
    *&v23[5] = v8;
    *&v23[6] = v10;
    *&v23[7] = v12;
    *&v23[8] = v14;
    v19 = MEMORY[0x1DA716BE0](v23);
    v20 = v19;
    if (animatedCopy)
    {
      v21 = MinY - v16;
      if (MinY - v16 < 0.0)
      {
        v21 = -(MinY - v16);
      }

      v22 = Height - v18;
      if (Height - v18 < 0.0)
      {
        v22 = -(Height - v18);
      }

      [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v19 options:0 animations:(v21 + v22) * 0.00017 + 0.16 completion:0.0];
    }

    else
    {
      (*(v19 + 16))(v19);
    }
  }
}

uint64_t __47__SXFullscreenCaptionView_updateFrameAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = CGRectIntegral(*(a1 + 40));

  return [v1 setFrame:{v4.origin.x, v4.origin.y, v4.size.width, v4.size.height}];
}

- (void)createScrollView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  scrollView = [(SXFullscreenCaptionView *)self scrollView];
  [scrollView setScrollsToTop:0];

  scrollView2 = [(SXFullscreenCaptionView *)self scrollView];
  [scrollView2 setDelegate:self];

  scrollView3 = [(SXFullscreenCaptionView *)self scrollView];
  [scrollView3 setAlwaysBounceVertical:1];

  scrollView4 = [(SXFullscreenCaptionView *)self scrollView];
  [scrollView4 setDelegate:self];

  if (_UISolariumFeatureFlagEnabled())
  {
    scrollView5 = [(SXFullscreenCaptionView *)self scrollView];
    [(SXFullscreenCaptionView *)self addSubview:?];
  }

  else
  {
    scrollView5 = [(SXFullscreenCaptionView *)self backgroundView];
    contentView = [scrollView5 contentView];
    scrollView6 = [(SXFullscreenCaptionView *)self scrollView];
    [contentView addSubview:scrollView6];
  }
}

- (void)initializeTangier
{
  v3 = objc_alloc_init(SXTextTangierDocumentRoot);
  documentRoot = self->_documentRoot;
  self->_documentRoot = v3;

  v25 = objc_alloc_init(SXTangierDragItemProvider);
  v5 = [SXAutoSizedCanvasController alloc];
  v6 = self->_documentRoot;
  actionHandler = [(SXFullscreenCaptionView *)self actionHandler];
  v8 = [(SXAutoSizedCanvasController *)v5 initWithDocumentRoot:v6 actionHandler:actionHandler dragItemProvider:v25];
  autoSizeCanvasController = self->_autoSizeCanvasController;
  self->_autoSizeCanvasController = v8;

  [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController setDelegate:self];
  canvasView = [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController canvasView];
  [canvasView setClipsToBounds:0];

  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  canvasView2 = [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController canvasView];
  [canvasView2 setFrame:{v11, v12, v13, v14}];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  canvasView3 = [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController canvasView];
  [canvasView3 setBackgroundColor:clearColor];

  canvasView4 = [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController canvasView];
  [canvasView4 setOpaque:0];

  v19 = *MEMORY[0x1E695F060];
  v20 = *(MEMORY[0x1E695F060] + 8);
  v21 = [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController cvc];
  canvasLayer = [v21 canvasLayer];
  [canvasLayer setUnscaledSize:{v19, v20}];

  scrollView = [(SXFullscreenCaptionView *)self scrollView];
  canvasView5 = [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController canvasView];
  [scrollView addSubview:canvasView5];
}

- (void)renderCaptionInTangier
{
  v55[1] = *MEMORY[0x1E69E9840];
  captionLayout = [(SXFullscreenCaptionView *)self captionLayout];

  if (captionLayout)
  {
    captionLayout2 = [(SXFullscreenCaptionView *)self captionLayout];
    [captionLayout2 setDelegate:0];

    autoSizeCanvasController = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
    v6 = [autoSizeCanvasController icc];
    layoutController = [v6 layoutController];
    captionLayout3 = [(SXFullscreenCaptionView *)self captionLayout];
    [layoutController unregisterLayout:captionLayout3];
  }

  caption = [(SXFullscreenCaptionView *)self caption];
  text = [(SXFullscreenCaption *)caption text];

  if (text)
  {
    v11 = objc_alloc(MEMORY[0x1E69D5730]);
    context = [(TSPObject *)self->_documentRoot context];
    caption2 = [(SXFullscreenCaptionView *)self caption];
    text2 = [(SXFullscreenCaption *)caption2 text];
    stylesheet = [(SXTextTangierDocumentRoot *)self->_documentRoot stylesheet];
    v54 = [v11 initWithContext:context string:text2 stylesheet:stylesheet kind:3];

    v16 = objc_opt_class();
    caption3 = [(SXFullscreenCaptionView *)self caption];
    textSource = [(SXFullscreenCaptionView *)self textSource];
    v19 = [caption3 componentTextStyleForTextSource:textSource inheritingFromDefaultStyles:1];
    [v16 _applyStyle:v19 toStorage:v54];

    textSourceFactory = [(SXFullscreenCaptionView *)self textSourceFactory];
    caption4 = [(SXFullscreenCaptionView *)self caption];
    text3 = [(SXFullscreenCaption *)caption4 text];
    caption5 = [(SXFullscreenCaptionView *)self caption];
    v24 = [textSourceFactory createTextSourceWithString:text3 dataSource:caption5];
    [(SXFullscreenCaptionView *)self setTextSource:v24];

    v25 = [SXTextTangierStorage alloc];
    documentRoot = [(SXFullscreenCaptionView *)self documentRoot];
    context2 = [documentRoot context];
    documentRoot2 = [(SXFullscreenCaptionView *)self documentRoot];
    stylesheet2 = [documentRoot2 stylesheet];
    textSource2 = [(SXFullscreenCaptionView *)self textSource];
    string = [textSource2 string];
    textSource3 = [(SXFullscreenCaptionView *)self textSource];
    locale = [textSource3 locale];
    v34 = [(SXTextTangierStorage *)v25 initWithContext:context2 stylesheet:stylesheet2 storageKind:3 string:string locale:locale];
    [(SXFullscreenCaptionView *)self setTextStorage:v34];

    textSource4 = [(SXFullscreenCaptionView *)self textSource];
    textStorage = [(SXFullscreenCaptionView *)self textStorage];
    [textSource4 applyStylingOnTextTangierStorage:textStorage];

    textSource5 = [(SXFullscreenCaptionView *)self textSource];
    textStorage2 = [(SXFullscreenCaptionView *)self textStorage];
    [textSource5 applyAdditionsOnTextTangierStorage:textStorage2];

    v39 = [SXStandaloneTextInfo alloc];
    textStorage3 = [(SXFullscreenCaptionView *)self textStorage];
    v41 = [(SXStandaloneTextInfo *)v39 initWithStorage:textStorage3];
    [(SXFullscreenCaptionView *)self setCaptionInfo:v41];

    v42 = [SXStandaloneTextLayout alloc];
    captionInfo = [(SXFullscreenCaptionView *)self captionInfo];
    v44 = [(TSDContainerLayout *)v42 initWithInfo:captionInfo];
    [(SXFullscreenCaptionView *)self setCaptionLayout:v44];

    captionLayout4 = [(SXFullscreenCaptionView *)self captionLayout];
    [captionLayout4 setDelegate:self];

    autoSizeCanvasController2 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
    v47 = [autoSizeCanvasController2 icc];
    layoutController2 = [v47 layoutController];
    captionLayout5 = [(SXFullscreenCaptionView *)self captionLayout];
    [layoutController2 preregisterLayout:captionLayout5];

    captionInfo2 = [(SXFullscreenCaptionView *)self captionInfo];
    v55[0] = captionInfo2;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
    autoSizeCanvasController3 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
    v53 = [autoSizeCanvasController3 icc];
    [v53 setInfosToDisplay:v51];
  }
}

+ (id)_overridePropertiesWithComponentStyle:(id)style storage:(id)storage
{
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:style weight:{storage, 15.0, *MEMORY[0x1E69DB978]}];
  v5 = objc_alloc(MEMORY[0x1E69D56A8]);
  fontName = [v4 fontName];
  [v4 pointSize];
  v8 = v7;
  clearColor = [MEMORY[0x1E69D5770] clearColor];
  clearColor2 = [MEMORY[0x1E69D5770] clearColor];
  v11 = [v5 initWithPropertiesAndValues:{16, fontName, 17, v8, 37, clearColor, 98, clearColor2, 35, 0xBF978D4FDF3B645ALL, 0}];

  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    whiteColor = [MEMORY[0x1E69D5770] whiteColor];
    [v11 setObject:whiteColor forProperty:18];
  }

  return v11;
}

+ (void)_applyStyle:(id)style toStorage:(id)storage
{
  storageCopy = storage;
  styleCopy = style;
  stylesheet = [storageCopy stylesheet];
  v14 = [stylesheet styleWithIdentifier:@"paragraph-style-default"];

  v9 = [self _overridePropertiesWithComponentStyle:styleCopy storage:storageCopy];

  stylesheet2 = [storageCopy stylesheet];
  v11 = [stylesheet2 variationOfStyle:v14 propertyMap:v9];

  range = [storageCopy range];
  [storageCopy setParagraphStyle:v11 forCharRange:range undoTransaction:{v13, 0}];
}

- (double)widthForTextLayout:(id)layout
{
  [(SXFullscreenCaptionView *)self temporaryLayoutRect];
  if (CGRectIsInfinite(v6))
  {
    [(SXFullscreenCaptionView *)self frame];
  }

  else
  {
    [(SXFullscreenCaptionView *)self temporaryLayoutRect];
  }

  return v4;
}

- (CGPoint)positionForTextLayout:(id)layout
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setExpansionMode:(int)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  scrollView = *&mode;
  self->_expansionMode = mode;
  [(SXFullscreenCaptionView *)self updateFrameAnimated:animated];
  if (scrollView == 2)
  {
    scrollView = [(SXFullscreenCaptionView *)self scrollView];
    [scrollView contentSize];
    v10 = v9;
    [(SXFullscreenCaptionView *)self frame];
    v8 = v10 > v11;
    v7 = 1;
  }

  else
  {
    if (scrollView == 1)
    {
      scrollView = [(SXFullscreenCaptionView *)self scrollView];
      [scrollView setContentOffset:animatedCopy animated:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    }

    v7 = 0;
    v8 = 0;
  }

  scrollView2 = [(SXFullscreenCaptionView *)self scrollView];
  [scrollView2 setScrollEnabled:v8];

  if (v7)
  {
  }

  autoSizeCanvasController = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  v13 = [autoSizeCanvasController cvc];
  view = [v13 view];
  [view setUserInteractionEnabled:v7];
}

- (void)setupGestureRecognizers
{
  v3 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:self action:sel_handleSwipeGestureRecognizer_];
  swipeGestureRecognizer = self->_swipeGestureRecognizer;
  self->_swipeGestureRecognizer = v3;

  swipeGestureRecognizer = [(SXFullscreenCaptionView *)self swipeGestureRecognizer];
  [swipeGestureRecognizer setDelegate:self];

  swipeGestureRecognizer2 = [(SXFullscreenCaptionView *)self swipeGestureRecognizer];
  [swipeGestureRecognizer2 setDirection:4];

  swipeGestureRecognizer3 = [(SXFullscreenCaptionView *)self swipeGestureRecognizer];
  [(SXFullscreenCaptionView *)self addGestureRecognizer:swipeGestureRecognizer3];

  v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTapGestureRecognizer_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v8;

  tapGestureRecognizer = [(SXFullscreenCaptionView *)self tapGestureRecognizer];
  [tapGestureRecognizer setDelegate:self];

  tapGestureRecognizer2 = [(SXFullscreenCaptionView *)self tapGestureRecognizer];
  [(SXFullscreenCaptionView *)self addGestureRecognizer:tapGestureRecognizer2];
}

- (void)handleTapGestureRecognizer:(id)recognizer
{
  expansionMode = [(SXFullscreenCaptionView *)self expansionMode];
  if (![(SXFullscreenCaptionView *)self forceFullExpandsionMode])
  {
    if (expansionMode == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    [(SXFullscreenCaptionView *)self setExpansionMode:v5 animated:1];
  }
}

- (void)handleSwipeGestureRecognizer:(id)recognizer
{
  if (![(SXFullscreenCaptionView *)self forceFullExpandsionMode])
  {

    [(SXFullscreenCaptionView *)self setExpansionMode:2 animated:1];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  tapGestureRecognizer = [(SXFullscreenCaptionView *)self tapGestureRecognizer];

  if (tapGestureRecognizer == beginCopy && ([(SXFullscreenCaptionView *)self delegate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, (v7 & 1) != 0))
  {
    delegate = [(SXFullscreenCaptionView *)self delegate];
    tapGestureRecognizer2 = [(SXFullscreenCaptionView *)self tapGestureRecognizer];
    v10 = [delegate captionView:self tapGestureRecognizerShouldBegin:tapGestureRecognizer2];
  }

  else
  {
    v10 = 1;
  }

  swipeGestureRecognizer = [(SXFullscreenCaptionView *)self swipeGestureRecognizer];

  if (swipeGestureRecognizer == beginCopy)
  {
    v10 = [(SXFullscreenCaptionView *)self expansionMode]== 1;
  }

  return v10;
}

- (BOOL)forceFullExpandsionMode
{
  [(SXFullscreenCaptionView *)self frame];
  v4 = v3;
  autoSizeCanvasController = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  [autoSizeCanvasController lineHeight];
  v7 = v4 <= v6 * 4.5 + 15.5;

  return v7;
}

- (void)scrollViewDidScroll:(id)scroll
{
  [scroll contentOffset];
  if (v4 < -40.0)
  {

    [(SXFullscreenCaptionView *)self setExpansionMode:1 animated:1];
  }
}

- (SXFullscreenCaptionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)temporaryLayoutRect
{
  x = self->_temporaryLayoutRect.origin.x;
  y = self->_temporaryLayoutRect.origin.y;
  width = self->_temporaryLayoutRect.size.width;
  height = self->_temporaryLayoutRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)fullSize
{
  width = self->_fullSize.width;
  height = self->_fullSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)fullInsets
{
  top = self->_fullInsets.top;
  left = self->_fullInsets.left;
  bottom = self->_fullInsets.bottom;
  right = self->_fullInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end