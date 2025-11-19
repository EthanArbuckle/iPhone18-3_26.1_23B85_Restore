@interface SXFullscreenCaptionView
+ (id)_overridePropertiesWithComponentStyle:(id)a3 storage:(id)a4;
+ (void)_applyStyle:(id)a3 toStorage:(id)a4;
- (BOOL)forceFullExpandsionMode;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)positionForTextLayout:(id)a3;
- (CGRect)determineFrameInSuperview:(id)a3;
- (CGRect)frameWithSuperview:(id)a3 size:(CGSize)a4 forExpansionMode:(int)a5;
- (CGRect)temporaryLayoutRect;
- (CGSize)fullSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SXFullscreenCaptionView)initWithTextSourceFactory:(id)a3 actionHandler:(id)a4;
- (SXFullscreenCaptionViewDelegate)delegate;
- (UIEdgeInsets)fullInsets;
- (double)widthForTextLayout:(id)a3;
- (void)createBackgroundView;
- (void)createScrollView;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)handleSwipeGestureRecognizer:(id)a3;
- (void)handleTapGestureRecognizer:(id)a3;
- (void)initializeTangier;
- (void)layoutSubviews;
- (void)renderCaptionInTangier;
- (void)scrollViewDidScroll:(id)a3;
- (void)setExpansionMode:(int)a3 animated:(BOOL)a4;
- (void)setFrame:(CGRect)a3;
- (void)setNeedsLayout;
- (void)setupGestureRecognizers;
- (void)updateFrameAnimated:(BOOL)a3;
- (void)updateWithCaption:(id)a3 forViewIndex:(unint64_t)a4 animated:(BOOL)a5;
@end

@implementation SXFullscreenCaptionView

- (SXFullscreenCaptionView)initWithTextSourceFactory:(id)a3 actionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXFullscreenCaptionView;
  v9 = [(SXFullscreenCaptionView *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textSourceFactory, a3);
    objc_storeStrong(&v10->_actionHandler, a4);
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

- (void)updateWithCaption:(id)a3 forViewIndex:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v17 = a3;
  objc_storeStrong(&self->_caption, a3);
  self->_viewIndex = a4;
  if ([(SXFullscreenCaptionView *)self expansionMode]== 2)
  {
    v9 = [(SXFullscreenCaptionView *)self scrollView];
    [v9 setScrollEnabled:0];
  }

  self->_expansionMode = 1;
  [(SXFullscreenCaptionView *)self renderCaptionInTangier];
  [(SXFullscreenCaptionView *)self updateFrameAnimated:v5];
  [(SXFullscreenCaptionView *)self frame];
  v11 = v10;
  v12 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  [v12 lineHeight];
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
  v16 = [(SXFullscreenCaption *)v17 text];
  if ([v16 length])
  {
    [(SXFullscreenCaptionView *)self setIsAccessibilityElement:1];
    [(SXFullscreenCaptionView *)self setAccessibilityLabel:v16];
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

  v4 = [(SXFullscreenCaptionView *)self backgroundView];
  [v4 _setGroupName:@"captionBars"];

  v5 = [(SXFullscreenCaptionView *)self backgroundView];
  [(SXFullscreenCaptionView *)self addSubview:v5];
}

- (CGRect)determineFrameInSuperview:(id)a3
{
  v4 = a3;
  [v4 safeAreaInsets];
  v6 = v5;
  v8 = v7;
  v9 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v9 _peripheryInsets];
  v11 = v10;
  v13 = v12;

  [v4 bounds];
  v14 = CGRectGetWidth(v28) - v6 - v8;
  [(SXFullscreenCaptionView *)self sizeThatFits:v14, 1.79769313e308];
  self->_fullSize.width = v14;
  self->_fullSize.height = v15;
  self->_fullInsets.top = v11;
  self->_fullInsets.left = v6;
  self->_fullInsets.bottom = v13;
  self->_fullInsets.right = v8;
  [(SXFullscreenCaptionView *)self frameWithSuperview:v4 size:[(SXFullscreenCaptionView *)self expansionMode] forExpansionMode:v14, v15];
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

- (CGRect)frameWithSuperview:(id)a3 size:(CGSize)a4 forExpansionMode:(int)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  [(SXFullscreenCaptionView *)self fullInsets];
  v11 = v10;
  v13 = v12;
  [v9 bounds];
  v14 = CGRectGetHeight(v35);
  v15 = height + v13 + 16.0;
  if (a5 == 2)
  {
    v21 = [(SXFullscreenCaptionView *)self superview];
    [v21 bounds];
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
    if (a5 == 1)
    {
      v17 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
      [v17 lineHeight];
      v19 = v18;

      v20 = v19 * 4.5 + 15.5;
      if (v20 >= v15)
      {
        v20 = v15;
      }

      v16 = v14 - v20;
    }
  }

  v24 = [(SXFullscreenCaptionView *)self caption];
  if (v24 && (v25 = v24, -[SXFullscreenCaptionView caption](self, "caption"), v26 = objc_claimAutoreleasedReturnValue(), -[SXFullscreenCaption text](v26), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 length], v27, v26, v25, v28))
  {
    v29 = v14 - v16;
    v14 = v16;
  }

  else
  {
    v29 = 0.0;
  }

  [v9 bounds];
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

- (void)setFrame:(CGRect)a3
{
  v33.receiver = self;
  v33.super_class = SXFullscreenCaptionView;
  [(SXFullscreenCaptionView *)&v33 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SXFullscreenCaptionView *)self fullInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = -v4;
  [(SXFullscreenCaptionView *)self fullSize];
  v12 = v9 + v5 + v11;
  [(SXFullscreenCaptionView *)self fullSize];
  v14 = v7 + v13 + 16.0;
  v15 = [(SXFullscreenCaptionView *)self backgroundView];
  [v15 setFrame:{v10, 0.0, v12, v14}];

  v16 = [(SXFullscreenCaptionView *)self scrollView];
  [(SXFullscreenCaptionView *)self fullInsets];
  v18 = v17;
  [(SXFullscreenCaptionView *)self bounds];
  Width = CGRectGetWidth(v34);
  [(SXFullscreenCaptionView *)self bounds];
  [v16 setFrame:{v18, 15.5, Width, CGRectGetHeight(v35) + -15.5}];

  v20 = [(SXFullscreenCaptionView *)self scrollView];
  [(SXFullscreenCaptionView *)self fullSize];
  [v20 setContentSize:?];

  v21 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  v22 = [v21 canvasView];
  [(SXFullscreenCaptionView *)self fullSize];
  v24 = v23;
  [(SXFullscreenCaptionView *)self fullSize];
  [v22 setFrame:{0.0, 0.0, v24, v25}];

  [(SXFullscreenCaptionView *)self fullSize];
  v27 = v26;
  v29 = v28;
  v30 = [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController cvc];
  v31 = [v30 canvasLayer];
  [v31 setUnscaledSize:{v27, v29}];

  v32 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  [v32 invalidateLayoutsAndFrames];
}

- (void)setNeedsLayout
{
  v4.receiver = self;
  v4.super_class = SXFullscreenCaptionView;
  [(SXFullscreenCaptionView *)&v4 setNeedsLayout];
  v3 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  [v3 invalidateLayoutsAndFrames];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SXFullscreenCaptionView;
  [(SXFullscreenCaptionView *)&v5 layoutSubviews];
  v3 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  v4 = [v3 icc];
  [v4 layoutIfNeeded];
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = SXFullscreenCaptionView;
  [(SXFullscreenCaptionView *)&v4 didMoveToSuperview];
  v3 = [(SXFullscreenCaptionView *)self superview];

  if (v3)
  {
    [(SXFullscreenCaptionView *)self updateFrameAnimated:0];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  [v6 invalidateLayoutsAndFrames];

  [(SXFullscreenCaptionView *)self setTemporaryLayoutRect:0.0, 0.0, width, height];
  v7 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  [v7 sizeThatFits];
  v9 = v8;
  v11 = v10;

  [(SXFullscreenCaptionView *)self setTemporaryLayoutRect:*MEMORY[0x1E695F040], *(MEMORY[0x1E695F040] + 8), *(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)];
  v12 = v11 + 16.0;
  v13 = v9;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)updateFrameAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SXFullscreenCaptionView *)self superview];

  if (v5)
  {
    v6 = [(SXFullscreenCaptionView *)self superview];
    [(SXFullscreenCaptionView *)self determineFrameInSuperview:v6];
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
    if (v3)
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

  v5 = [(SXFullscreenCaptionView *)self scrollView];
  [v5 setScrollsToTop:0];

  v6 = [(SXFullscreenCaptionView *)self scrollView];
  [v6 setDelegate:self];

  v7 = [(SXFullscreenCaptionView *)self scrollView];
  [v7 setAlwaysBounceVertical:1];

  v8 = [(SXFullscreenCaptionView *)self scrollView];
  [v8 setDelegate:self];

  if (_UISolariumFeatureFlagEnabled())
  {
    v11 = [(SXFullscreenCaptionView *)self scrollView];
    [(SXFullscreenCaptionView *)self addSubview:?];
  }

  else
  {
    v11 = [(SXFullscreenCaptionView *)self backgroundView];
    v9 = [v11 contentView];
    v10 = [(SXFullscreenCaptionView *)self scrollView];
    [v9 addSubview:v10];
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
  v7 = [(SXFullscreenCaptionView *)self actionHandler];
  v8 = [(SXAutoSizedCanvasController *)v5 initWithDocumentRoot:v6 actionHandler:v7 dragItemProvider:v25];
  autoSizeCanvasController = self->_autoSizeCanvasController;
  self->_autoSizeCanvasController = v8;

  [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController setDelegate:self];
  v10 = [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController canvasView];
  [v10 setClipsToBounds:0];

  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  v15 = [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController canvasView];
  [v15 setFrame:{v11, v12, v13, v14}];

  v16 = [MEMORY[0x1E69DC888] clearColor];
  v17 = [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController canvasView];
  [v17 setBackgroundColor:v16];

  v18 = [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController canvasView];
  [v18 setOpaque:0];

  v19 = *MEMORY[0x1E695F060];
  v20 = *(MEMORY[0x1E695F060] + 8);
  v21 = [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController cvc];
  v22 = [v21 canvasLayer];
  [v22 setUnscaledSize:{v19, v20}];

  v23 = [(SXFullscreenCaptionView *)self scrollView];
  v24 = [(SXAutoSizedCanvasController *)self->_autoSizeCanvasController canvasView];
  [v23 addSubview:v24];
}

- (void)renderCaptionInTangier
{
  v55[1] = *MEMORY[0x1E69E9840];
  v3 = [(SXFullscreenCaptionView *)self captionLayout];

  if (v3)
  {
    v4 = [(SXFullscreenCaptionView *)self captionLayout];
    [v4 setDelegate:0];

    v5 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
    v6 = [v5 icc];
    v7 = [v6 layoutController];
    v8 = [(SXFullscreenCaptionView *)self captionLayout];
    [v7 unregisterLayout:v8];
  }

  v9 = [(SXFullscreenCaptionView *)self caption];
  v10 = [(SXFullscreenCaption *)v9 text];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E69D5730]);
    v12 = [(TSPObject *)self->_documentRoot context];
    v13 = [(SXFullscreenCaptionView *)self caption];
    v14 = [(SXFullscreenCaption *)v13 text];
    v15 = [(SXTextTangierDocumentRoot *)self->_documentRoot stylesheet];
    v54 = [v11 initWithContext:v12 string:v14 stylesheet:v15 kind:3];

    v16 = objc_opt_class();
    v17 = [(SXFullscreenCaptionView *)self caption];
    v18 = [(SXFullscreenCaptionView *)self textSource];
    v19 = [v17 componentTextStyleForTextSource:v18 inheritingFromDefaultStyles:1];
    [v16 _applyStyle:v19 toStorage:v54];

    v20 = [(SXFullscreenCaptionView *)self textSourceFactory];
    v21 = [(SXFullscreenCaptionView *)self caption];
    v22 = [(SXFullscreenCaption *)v21 text];
    v23 = [(SXFullscreenCaptionView *)self caption];
    v24 = [v20 createTextSourceWithString:v22 dataSource:v23];
    [(SXFullscreenCaptionView *)self setTextSource:v24];

    v25 = [SXTextTangierStorage alloc];
    v26 = [(SXFullscreenCaptionView *)self documentRoot];
    v27 = [v26 context];
    v28 = [(SXFullscreenCaptionView *)self documentRoot];
    v29 = [v28 stylesheet];
    v30 = [(SXFullscreenCaptionView *)self textSource];
    v31 = [v30 string];
    v32 = [(SXFullscreenCaptionView *)self textSource];
    v33 = [v32 locale];
    v34 = [(SXTextTangierStorage *)v25 initWithContext:v27 stylesheet:v29 storageKind:3 string:v31 locale:v33];
    [(SXFullscreenCaptionView *)self setTextStorage:v34];

    v35 = [(SXFullscreenCaptionView *)self textSource];
    v36 = [(SXFullscreenCaptionView *)self textStorage];
    [v35 applyStylingOnTextTangierStorage:v36];

    v37 = [(SXFullscreenCaptionView *)self textSource];
    v38 = [(SXFullscreenCaptionView *)self textStorage];
    [v37 applyAdditionsOnTextTangierStorage:v38];

    v39 = [SXStandaloneTextInfo alloc];
    v40 = [(SXFullscreenCaptionView *)self textStorage];
    v41 = [(SXStandaloneTextInfo *)v39 initWithStorage:v40];
    [(SXFullscreenCaptionView *)self setCaptionInfo:v41];

    v42 = [SXStandaloneTextLayout alloc];
    v43 = [(SXFullscreenCaptionView *)self captionInfo];
    v44 = [(TSDContainerLayout *)v42 initWithInfo:v43];
    [(SXFullscreenCaptionView *)self setCaptionLayout:v44];

    v45 = [(SXFullscreenCaptionView *)self captionLayout];
    [v45 setDelegate:self];

    v46 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
    v47 = [v46 icc];
    v48 = [v47 layoutController];
    v49 = [(SXFullscreenCaptionView *)self captionLayout];
    [v48 preregisterLayout:v49];

    v50 = [(SXFullscreenCaptionView *)self captionInfo];
    v55[0] = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
    v52 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
    v53 = [v52 icc];
    [v53 setInfosToDisplay:v51];
  }
}

+ (id)_overridePropertiesWithComponentStyle:(id)a3 storage:(id)a4
{
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:a3 weight:{a4, 15.0, *MEMORY[0x1E69DB978]}];
  v5 = objc_alloc(MEMORY[0x1E69D56A8]);
  v6 = [v4 fontName];
  [v4 pointSize];
  v8 = v7;
  v9 = [MEMORY[0x1E69D5770] clearColor];
  v10 = [MEMORY[0x1E69D5770] clearColor];
  v11 = [v5 initWithPropertiesAndValues:{16, v6, 17, v8, 37, v9, 98, v10, 35, 0xBF978D4FDF3B645ALL, 0}];

  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    v12 = [MEMORY[0x1E69D5770] whiteColor];
    [v11 setObject:v12 forProperty:18];
  }

  return v11;
}

+ (void)_applyStyle:(id)a3 toStorage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 stylesheet];
  v14 = [v8 styleWithIdentifier:@"paragraph-style-default"];

  v9 = [a1 _overridePropertiesWithComponentStyle:v7 storage:v6];

  v10 = [v6 stylesheet];
  v11 = [v10 variationOfStyle:v14 propertyMap:v9];

  v12 = [v6 range];
  [v6 setParagraphStyle:v11 forCharRange:v12 undoTransaction:{v13, 0}];
}

- (double)widthForTextLayout:(id)a3
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

- (CGPoint)positionForTextLayout:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setExpansionMode:(int)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  self->_expansionMode = a3;
  [(SXFullscreenCaptionView *)self updateFrameAnimated:a4];
  if (v5 == 2)
  {
    v5 = [(SXFullscreenCaptionView *)self scrollView];
    [v5 contentSize];
    v10 = v9;
    [(SXFullscreenCaptionView *)self frame];
    v8 = v10 > v11;
    v7 = 1;
  }

  else
  {
    if (v5 == 1)
    {
      v5 = [(SXFullscreenCaptionView *)self scrollView];
      [v5 setContentOffset:v4 animated:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    }

    v7 = 0;
    v8 = 0;
  }

  v12 = [(SXFullscreenCaptionView *)self scrollView];
  [v12 setScrollEnabled:v8];

  if (v7)
  {
  }

  v15 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  v13 = [v15 cvc];
  v14 = [v13 view];
  [v14 setUserInteractionEnabled:v7];
}

- (void)setupGestureRecognizers
{
  v3 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:self action:sel_handleSwipeGestureRecognizer_];
  swipeGestureRecognizer = self->_swipeGestureRecognizer;
  self->_swipeGestureRecognizer = v3;

  v5 = [(SXFullscreenCaptionView *)self swipeGestureRecognizer];
  [v5 setDelegate:self];

  v6 = [(SXFullscreenCaptionView *)self swipeGestureRecognizer];
  [v6 setDirection:4];

  v7 = [(SXFullscreenCaptionView *)self swipeGestureRecognizer];
  [(SXFullscreenCaptionView *)self addGestureRecognizer:v7];

  v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTapGestureRecognizer_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v8;

  v10 = [(SXFullscreenCaptionView *)self tapGestureRecognizer];
  [v10 setDelegate:self];

  v11 = [(SXFullscreenCaptionView *)self tapGestureRecognizer];
  [(SXFullscreenCaptionView *)self addGestureRecognizer:v11];
}

- (void)handleTapGestureRecognizer:(id)a3
{
  v4 = [(SXFullscreenCaptionView *)self expansionMode];
  if (![(SXFullscreenCaptionView *)self forceFullExpandsionMode])
  {
    if (v4 == 1)
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

- (void)handleSwipeGestureRecognizer:(id)a3
{
  if (![(SXFullscreenCaptionView *)self forceFullExpandsionMode])
  {

    [(SXFullscreenCaptionView *)self setExpansionMode:2 animated:1];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SXFullscreenCaptionView *)self tapGestureRecognizer];

  if (v5 == v4 && ([(SXFullscreenCaptionView *)self delegate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, (v7 & 1) != 0))
  {
    v8 = [(SXFullscreenCaptionView *)self delegate];
    v9 = [(SXFullscreenCaptionView *)self tapGestureRecognizer];
    v10 = [v8 captionView:self tapGestureRecognizerShouldBegin:v9];
  }

  else
  {
    v10 = 1;
  }

  v11 = [(SXFullscreenCaptionView *)self swipeGestureRecognizer];

  if (v11 == v4)
  {
    v10 = [(SXFullscreenCaptionView *)self expansionMode]== 1;
  }

  return v10;
}

- (BOOL)forceFullExpandsionMode
{
  [(SXFullscreenCaptionView *)self frame];
  v4 = v3;
  v5 = [(SXFullscreenCaptionView *)self autoSizeCanvasController];
  [v5 lineHeight];
  v7 = v4 <= v6 * 4.5 + 15.5;

  return v7;
}

- (void)scrollViewDidScroll:(id)a3
{
  [a3 contentOffset];
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