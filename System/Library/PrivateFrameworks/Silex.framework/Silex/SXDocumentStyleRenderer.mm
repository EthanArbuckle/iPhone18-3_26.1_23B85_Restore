@interface SXDocumentStyleRenderer
- (SXDocumentStyleRenderer)initWithViewport:(id)a3 gradientFactory:(id)a4;
- (void)applyStyle:(id)a3 onView:(id)a4;
- (void)applyTopBackgroundForStyle:(id)a3 onView:(id)a4;
- (void)layoutTopBackgroundView;
@end

@implementation SXDocumentStyleRenderer

- (SXDocumentStyleRenderer)initWithViewport:(id)a3 gradientFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXDocumentStyleRenderer;
  v9 = [(SXDocumentStyleRenderer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewport, a3);
    objc_storeStrong(&v10->_gradientFactory, a4);
  }

  return v10;
}

- (void)applyStyle:(id)a3 onView:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [v20 backgroundColor];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v10 = v9;

  if (_UISolariumFeatureFlagEnabled())
  {
    v11 = [MEMORY[0x1E69DC888] clearColor];
    v12 = [v6 superview];
    [(SXDocumentStyleRenderer *)self applyBackgroundColor:v11 onView:v12];

    v13 = [MEMORY[0x1E69DC888] clearColor];
    [(SXDocumentStyleRenderer *)self applyBackgroundColor:v13 onView:v6];

    [v6 _setPocketColor:v10 forEdge:15];
  }

  else
  {
    v14 = [v6 superview];
    [(SXDocumentStyleRenderer *)self applyBackgroundColor:v10 onView:v14];

    v15 = [v6 superview];
    [(SXDocumentStyleRenderer *)self applyTopBackgroundForStyle:v20 onView:v15];
  }

  if (v20 && ([v20 backgroundColor], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "brightness"), v18 = v17, v16, v18 <= 0.5))
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  [v6 setIndicatorStyle:v19];
}

- (void)applyTopBackgroundForStyle:(id)a3 onView:(id)a4
{
  v25 = a3;
  v6 = a4;
  v7 = [v25 topBackgroundGradient];

  if (v7)
  {
    v8 = [(SXDocumentStyleRenderer *)self topBackgroundView];

    if (v8)
    {
      goto LABEL_10;
    }

    v9 = [(SXDocumentStyleRenderer *)self gradientFactory];
    v10 = [v25 topBackgroundGradient];
    v11 = [v10 colorStops];
    v12 = [v11 NSArray];
    v13 = [v25 topBackgroundGradient];
    [v13 angle];
    v14 = [v9 gradientForColorStops:v12 angle:?];

    v15 = [[SXGradientView alloc] initWithGradient:v14];
    [(SXDocumentStyleRenderer *)self setTopBackgroundView:v15];
    goto LABEL_8;
  }

  v16 = [v25 topBackgroundColor];

  v17 = [(SXDocumentStyleRenderer *)self topBackgroundView];

  if (v16)
  {
    if (!v17)
    {
      v18 = objc_alloc(MEMORY[0x1E69DD250]);
      v19 = [v18 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(SXDocumentStyleRenderer *)self setTopBackgroundView:v19];
    }

    v14 = [(SXDocumentStyleRenderer *)self topBackgroundView];
    v15 = [v25 topBackgroundColor];
    [v14 setBackgroundColor:v15];
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  if (v17)
  {
    v24 = [(SXDocumentStyleRenderer *)self topBackgroundView];
    [v24 removeFromSuperview];

    [(SXDocumentStyleRenderer *)self setTopBackgroundView:0];
    v14 = [(SXDocumentStyleRenderer *)self viewport];
    [v14 removeViewportChangeListener:self forOptions:4];
    goto LABEL_9;
  }

LABEL_10:
  v20 = [(SXDocumentStyleRenderer *)self topBackgroundView];

  if (v20)
  {
    v21 = [(SXDocumentStyleRenderer *)self topBackgroundView];
    [v6 addSubview:v21];

    v22 = [(SXDocumentStyleRenderer *)self topBackgroundView];
    [v6 sendSubviewToBack:v22];

    [(SXDocumentStyleRenderer *)self layoutTopBackgroundView];
    v23 = [(SXDocumentStyleRenderer *)self viewport];
    [v23 addViewportChangeListener:self forOptions:4];
  }
}

- (void)layoutTopBackgroundView
{
  v13 = [(SXDocumentStyleRenderer *)self topBackgroundView];
  v3 = [(SXDocumentStyleRenderer *)self viewport];
  [v3 bounds];
  v5 = -v4;
  v6 = [(SXDocumentStyleRenderer *)self viewport];
  [v6 bounds];
  v8 = v5 - v7;
  v9 = [(SXDocumentStyleRenderer *)self viewport];
  [v9 bounds];
  v11 = v10;
  v12 = [(SXDocumentStyleRenderer *)self viewport];
  [v12 bounds];
  [v13 setFrame:{0.0, v8, v11}];
}

@end