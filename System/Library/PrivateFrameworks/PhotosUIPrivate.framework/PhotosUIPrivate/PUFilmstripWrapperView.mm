@interface PUFilmstripWrapperView
- (CGRect)visibleRect;
- (CGSize)expandedSize;
- (PUFilmstripWrapperView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setAnimating:(BOOL)animating;
- (void)setBackgroundView:(id)view;
- (void)setExpanded:(BOOL)expanded;
- (void)setExpandedSize:(CGSize)size;
- (void)setFilmstripView:(id)view leavingPreviousViewInPlace:(BOOL)place;
- (void)setVisibleRect:(CGRect)rect;
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

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  backgroundView = self->_backgroundView;
  if (backgroundView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, view);
    clippingView = [(PUFilmstripWrapperView *)self clippingView];
    [clippingView addSubview:v8];

    viewCopy = v8;
  }

  MEMORY[0x1EEE66BB8](backgroundView, viewCopy);
}

- (void)setFilmstripView:(id)view leavingPreviousViewInPlace:(BOOL)place
{
  viewCopy = view;
  filmstripView = self->_filmstripView;
  if (filmstripView != viewCopy)
  {
    v23 = viewCopy;
    if (!place)
    {
      [(PUFilmstripView *)filmstripView removeFromSuperview];
    }

    objc_storeStrong(&self->_filmstripView, view);
    clippingView = [(PUFilmstripWrapperView *)self clippingView];
    [clippingView bounds];
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

    clippingView2 = [(PUFilmstripWrapperView *)self clippingView];
    [clippingView2 addSubview:v23];

    [(PUFilmstripWrapperView *)self setNeedsLayout];
    filmstripView = [(PUFilmstripWrapperView *)self layoutIfNeeded];
    viewCopy = v23;
  }

  MEMORY[0x1EEE66BB8](filmstripView, viewCopy);
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
  filmstripView = [(PUFilmstripWrapperView *)self filmstripView];
  clippingView = [(PUFilmstripWrapperView *)self clippingView];
  [filmstripView desiredClippingOutset];
  v14 = v13;
  isExpanded = [(PUFilmstripWrapperView *)self isExpanded];
  anchoredLeft = self->_anchoredLeft;
  if (isExpanded)
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
    [clippingView setFrame:{v61.origin.x, v61.origin.y, v61.size.width, v61.size.height}];
    v19 = 0.0;
    v20 = v10;
    v21 = 0.0;
  }

  else
  {
    if (!anchoredLeft)
    {
      [filmstripView visibleRect];
      v58.x = 0.0;
      v58.y = 0.0;
      v22 = CGRectContainsPoint(v62, v58);
      [filmstripView visibleRect];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      recta = v29;
      [filmstripView bounds];
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
    [clippingView setFrame:{v66.origin.x, v66.origin.y, v66.size.width, v66.size.height}];
    bOOLValue = [(NSNumber *)self->_anchoredLeft BOOLValue];
    [filmstripView frame];
    [(PUFilmstripWrapperView *)self convertRect:clippingView fromView:?];
    v18 = v34;
    v21 = v8 - v34;
    if (bOOLValue)
    {
      v21 = 0.0;
    }
  }

  [clippingView convertRect:self fromView:{v21, v19, v18, v20}];
  [filmstripView setFrame:?];
  [clippingView convertRect:self fromView:{v4, v6, v8, v10}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  backgroundView = [(PUFilmstripWrapperView *)self backgroundView];
  [backgroundView setFrame:{v36, v38, v40, v42}];

  [(PUFilmstripWrapperView *)self visibleRect];
  [filmstripView convertRect:self fromView:?];
  x = v44;
  y = v46;
  width = v48;
  height = v50;
  if ([(PUFilmstripWrapperView *)self isAnimating])
  {
    [filmstripView visibleRect];
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

  [filmstripView setVisibleRect:{x, y, width, height}];
}

- (void)setExpandedSize:(CGSize)size
{
  if (self->_expandedSize.width != size.width || self->_expandedSize.height != size.height)
  {
    self->_expandedSize = size;
    [(PUFilmstripWrapperView *)self setNeedsLayout];
  }
}

- (void)setExpanded:(BOOL)expanded
{
  if (self->_isExpanded != expanded)
  {
    self->_isExpanded = expanded;
    [(PUFilmstripWrapperView *)self setNeedsLayout];
  }
}

- (void)setVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_visibleRect = &self->_visibleRect;
  if (!CGRectEqualToRect(self->_visibleRect, rect))
  {
    p_visibleRect->origin.x = x;
    p_visibleRect->origin.y = y;
    p_visibleRect->size.width = width;
    p_visibleRect->size.height = height;

    [(PUFilmstripWrapperView *)self setNeedsLayout];
  }
}

- (void)setAnimating:(BOOL)animating
{
  if (self->_isAnimating != animating)
  {
    self->_isAnimating = animating;
    [(PUFilmstripWrapperView *)self setNeedsLayout];
  }
}

- (PUFilmstripWrapperView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PUFilmstripWrapperView;
  v3 = [(PUFilmstripWrapperView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(PUFilmstripWrapperView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    clippingView = v3->_clippingView;
    v3->_clippingView = v5;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v3->_clippingView setBackgroundColor:clearColor];

    [(UIView *)v3->_clippingView setClipsToBounds:1];
    [(UIView *)v3->_clippingView setAutoresizingMask:18];
    [(PUFilmstripWrapperView *)v3 addSubview:v3->_clippingView];
  }

  return v3;
}

@end