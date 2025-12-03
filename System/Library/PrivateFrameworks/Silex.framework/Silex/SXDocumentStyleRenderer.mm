@interface SXDocumentStyleRenderer
- (SXDocumentStyleRenderer)initWithViewport:(id)viewport gradientFactory:(id)factory;
- (void)applyStyle:(id)style onView:(id)view;
- (void)applyTopBackgroundForStyle:(id)style onView:(id)view;
- (void)layoutTopBackgroundView;
@end

@implementation SXDocumentStyleRenderer

- (SXDocumentStyleRenderer)initWithViewport:(id)viewport gradientFactory:(id)factory
{
  viewportCopy = viewport;
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = SXDocumentStyleRenderer;
  v9 = [(SXDocumentStyleRenderer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewport, viewport);
    objc_storeStrong(&v10->_gradientFactory, factory);
  }

  return v10;
}

- (void)applyStyle:(id)style onView:(id)view
{
  styleCopy = style;
  viewCopy = view;
  backgroundColor = [styleCopy backgroundColor];
  v8 = backgroundColor;
  if (backgroundColor)
  {
    whiteColor = backgroundColor;
  }

  else
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  v10 = whiteColor;

  if (_UISolariumFeatureFlagEnabled())
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    superview = [viewCopy superview];
    [(SXDocumentStyleRenderer *)self applyBackgroundColor:clearColor onView:superview];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(SXDocumentStyleRenderer *)self applyBackgroundColor:clearColor2 onView:viewCopy];

    [viewCopy _setPocketColor:v10 forEdge:15];
  }

  else
  {
    superview2 = [viewCopy superview];
    [(SXDocumentStyleRenderer *)self applyBackgroundColor:v10 onView:superview2];

    superview3 = [viewCopy superview];
    [(SXDocumentStyleRenderer *)self applyTopBackgroundForStyle:styleCopy onView:superview3];
  }

  if (styleCopy && ([styleCopy backgroundColor], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "brightness"), v18 = v17, v16, v18 <= 0.5))
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  [viewCopy setIndicatorStyle:v19];
}

- (void)applyTopBackgroundForStyle:(id)style onView:(id)view
{
  styleCopy = style;
  viewCopy = view;
  topBackgroundGradient = [styleCopy topBackgroundGradient];

  if (topBackgroundGradient)
  {
    topBackgroundView = [(SXDocumentStyleRenderer *)self topBackgroundView];

    if (topBackgroundView)
    {
      goto LABEL_10;
    }

    gradientFactory = [(SXDocumentStyleRenderer *)self gradientFactory];
    topBackgroundGradient2 = [styleCopy topBackgroundGradient];
    colorStops = [topBackgroundGradient2 colorStops];
    nSArray = [colorStops NSArray];
    topBackgroundGradient3 = [styleCopy topBackgroundGradient];
    [topBackgroundGradient3 angle];
    topBackgroundView3 = [gradientFactory gradientForColorStops:nSArray angle:?];

    topBackgroundColor2 = [[SXGradientView alloc] initWithGradient:topBackgroundView3];
    [(SXDocumentStyleRenderer *)self setTopBackgroundView:topBackgroundColor2];
    goto LABEL_8;
  }

  topBackgroundColor = [styleCopy topBackgroundColor];

  topBackgroundView2 = [(SXDocumentStyleRenderer *)self topBackgroundView];

  if (topBackgroundColor)
  {
    if (!topBackgroundView2)
    {
      v18 = objc_alloc(MEMORY[0x1E69DD250]);
      v19 = [v18 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(SXDocumentStyleRenderer *)self setTopBackgroundView:v19];
    }

    topBackgroundView3 = [(SXDocumentStyleRenderer *)self topBackgroundView];
    topBackgroundColor2 = [styleCopy topBackgroundColor];
    [topBackgroundView3 setBackgroundColor:topBackgroundColor2];
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  if (topBackgroundView2)
  {
    topBackgroundView4 = [(SXDocumentStyleRenderer *)self topBackgroundView];
    [topBackgroundView4 removeFromSuperview];

    [(SXDocumentStyleRenderer *)self setTopBackgroundView:0];
    topBackgroundView3 = [(SXDocumentStyleRenderer *)self viewport];
    [topBackgroundView3 removeViewportChangeListener:self forOptions:4];
    goto LABEL_9;
  }

LABEL_10:
  topBackgroundView5 = [(SXDocumentStyleRenderer *)self topBackgroundView];

  if (topBackgroundView5)
  {
    topBackgroundView6 = [(SXDocumentStyleRenderer *)self topBackgroundView];
    [viewCopy addSubview:topBackgroundView6];

    topBackgroundView7 = [(SXDocumentStyleRenderer *)self topBackgroundView];
    [viewCopy sendSubviewToBack:topBackgroundView7];

    [(SXDocumentStyleRenderer *)self layoutTopBackgroundView];
    viewport = [(SXDocumentStyleRenderer *)self viewport];
    [viewport addViewportChangeListener:self forOptions:4];
  }
}

- (void)layoutTopBackgroundView
{
  topBackgroundView = [(SXDocumentStyleRenderer *)self topBackgroundView];
  viewport = [(SXDocumentStyleRenderer *)self viewport];
  [viewport bounds];
  v5 = -v4;
  viewport2 = [(SXDocumentStyleRenderer *)self viewport];
  [viewport2 bounds];
  v8 = v5 - v7;
  viewport3 = [(SXDocumentStyleRenderer *)self viewport];
  [viewport3 bounds];
  v11 = v10;
  viewport4 = [(SXDocumentStyleRenderer *)self viewport];
  [viewport4 bounds];
  [topBackgroundView setFrame:{0.0, v8, v11}];
}

@end