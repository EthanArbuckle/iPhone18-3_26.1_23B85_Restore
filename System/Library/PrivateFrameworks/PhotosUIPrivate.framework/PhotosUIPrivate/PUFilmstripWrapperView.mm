@interface PUFilmstripWrapperView
- (CGRect)visibleRect;
- (CGSize)expandedSize;
- (PUFilmstripWrapperView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAnimating:(BOOL)a3;
- (void)setBackgroundView:(id)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setExpandedSize:(CGSize)a3;
- (void)setFilmstripView:(id)a3 leavingPreviousViewInPlace:(BOOL)a4;
- (void)setVisibleRect:(CGRect)a3;
@end

@implementation PUFilmstripWrapperView

- (CGSize)expandedSize
{
  width = self->_expandedSize.width;
  height = self->_expandedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  backgroundView = self->_backgroundView;
  if (backgroundView != v5)
  {
    v8 = v5;
    [(UIView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, a3);
    v7 = [(PUFilmstripWrapperView *)self clippingView];
    [v7 addSubview:v8];

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](backgroundView, v5);
}

- (void)setFilmstripView:(id)a3 leavingPreviousViewInPlace:(BOOL)a4
{
  v7 = a3;
  filmstripView = self->_filmstripView;
  if (filmstripView != v7)
  {
    v23 = v7;
    if (!a4)
    {
      [(PUFilmstripView *)filmstripView removeFromSuperview];
    }

    objc_storeStrong(&self->_filmstripView, a3);
    v9 = [(PUFilmstripWrapperView *)self clippingView];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(PUFilmstripView *)v23 desiredClippingOutset];
    v19 = v18 + v18;
    [(PUFilmstripView *)v23 desiredClippingOutset];
    v21 = v20 + v20;
    v25.origin.x = v11;
    v25.origin.y = v13;
    v25.size.width = v15;
    v25.size.height = v17;
    v26 = CGRectInset(v25, v19, v21);
    [(PUFilmstripView *)v23 setFrame:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];

    v22 = [(PUFilmstripWrapperView *)self clippingView];
    [v22 addSubview:v23];

    [(PUFilmstripWrapperView *)self setNeedsLayout];
    filmstripView = [(PUFilmstripWrapperView *)self layoutIfNeeded];
    v7 = v23;
  }

  MEMORY[0x1EEE66BB8](filmstripView, v7);
}

- (void)layoutSubviews
{
  v57.receiver = self;
  v57.super_class = PUFilmstripWrapperView;
  [(PUFilmstripWrapperView *)&v57 layoutSubviews];
  [(PUFilmstripWrapperView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PUFilmstripWrapperView *)self filmstripView];
  v12 = [(PUFilmstripWrapperView *)self clippingView];
  [v11 desiredClippingOutset];
  v14 = v13;
  v15 = [(PUFilmstripWrapperView *)self isExpanded];
  anchoredLeft = self->_anchoredLeft;
  if (v15)
  {
    self->_anchoredLeft = 0;

    [(PUFilmstripWrapperView *)self expandedSize];
    if (v17 >= v8)
    {
      v18 = v17;
    }

    else
    {
      v18 = v8;
    }

    v60.origin.x = v4;
    v60.origin.y = v6;
    v60.size.width = v8;
    v60.size.height = v10;
    v61 = CGRectInset(v60, v14 * -2.0, v14 * -2.0);
    [v12 setFrame:{v61.origin.x, v61.origin.y, v61.size.width, v61.size.height}];
    v19 = 0.0;
    v20 = v10;
    v21 = 0.0;
  }

  else
  {
    if (!anchoredLeft)
    {
      [v11 visibleRect];
      v58.x = 0.0;
      v58.y = 0.0;
      v22 = CGRectContainsPoint(v62, v58);
      [v11 visibleRect];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      recta = v29;
      [v11 bounds];
      v59.x = CGRectGetMaxX(v63) + -1.0;
      v59.y = 0.0;
      v64.origin.x = v24;
      v64.origin.y = v26;
      v64.size.width = v28;
      v64.size.height = recta;
      v30 = CGRectContainsPoint(v64, v59);
      v31 = self->_anchoredLeft;
      if (v22 || !v30)
      {
        v32 = MEMORY[0x1E695E118];
      }

      else
      {
        v32 = MEMORY[0x1E695E110];
      }

      self->_anchoredLeft = v32;
    }

    v65.origin.x = v4;
    v65.origin.y = v6;
    v65.size.width = v8;
    v65.size.height = v10;
    v66 = CGRectInset(v65, 0.0, v14 * -2.0);
    [v12 setFrame:{v66.origin.x, v66.origin.y, v66.size.width, v66.size.height}];
    v33 = [(NSNumber *)self->_anchoredLeft BOOLValue];
    [v11 frame];
    [(PUFilmstripWrapperView *)self convertRect:v12 fromView:?];
    v18 = v34;
    v21 = v8 - v34;
    if (v33)
    {
      v21 = 0.0;
    }
  }

  [v12 convertRect:self fromView:{v21, v19, v18, v20}];
  [v11 setFrame:?];
  [v12 convertRect:self fromView:{v4, v6, v8, v10}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = [(PUFilmstripWrapperView *)self backgroundView];
  [v43 setFrame:{v36, v38, v40, v42}];

  [(PUFilmstripWrapperView *)self visibleRect];
  [v11 convertRect:self fromView:?];
  x = v44;
  y = v46;
  width = v48;
  height = v50;
  if ([(PUFilmstripWrapperView *)self isAnimating])
  {
    [v11 visibleRect];
    v69.origin.x = v52;
    v69.origin.y = v53;
    v69.size.width = v54;
    v69.size.height = v55;
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    v68 = CGRectUnion(v67, v69);
    x = v68.origin.x;
    y = v68.origin.y;
    width = v68.size.width;
    height = v68.size.height;
  }

  [v11 setVisibleRect:{x, y, width, height}];
}

- (void)setExpandedSize:(CGSize)a3
{
  if (self->_expandedSize.width != a3.width || self->_expandedSize.height != a3.height)
  {
    self->_expandedSize = a3;
    [(PUFilmstripWrapperView *)self setNeedsLayout];
  }
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_isExpanded != a3)
  {
    self->_isExpanded = a3;
    [(PUFilmstripWrapperView *)self setNeedsLayout];
  }
}

- (void)setVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_visibleRect = &self->_visibleRect;
  if (!CGRectEqualToRect(self->_visibleRect, a3))
  {
    p_visibleRect->origin.x = x;
    p_visibleRect->origin.y = y;
    p_visibleRect->size.width = width;
    p_visibleRect->size.height = height;

    [(PUFilmstripWrapperView *)self setNeedsLayout];
  }
}

- (void)setAnimating:(BOOL)a3
{
  if (self->_isAnimating != a3)
  {
    self->_isAnimating = a3;
    [(PUFilmstripWrapperView *)self setNeedsLayout];
  }
}

- (PUFilmstripWrapperView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = PUFilmstripWrapperView;
  v3 = [(PUFilmstripWrapperView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(PUFilmstripWrapperView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    clippingView = v3->_clippingView;
    v3->_clippingView = v5;

    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v3->_clippingView setBackgroundColor:v7];

    [(UIView *)v3->_clippingView setClipsToBounds:1];
    [(UIView *)v3->_clippingView setAutoresizingMask:18];
    [(PUFilmstripWrapperView *)v3 addSubview:v3->_clippingView];
  }

  return v3;
}

@end