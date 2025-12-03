@interface SiriSharedUIContentPlatterScrollView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (SiriSharedUIContentPlatterScrollView)initWithCoder:(id)coder;
- (SiriSharedUIContentPlatterScrollView)initWithFrame:(CGRect)frame;
- (SiriSharedUIContentPlatterScrollViewDelegate)platterDelegate;
- (id)_parentScrollView;
- (void)_sharedInit;
- (void)layoutSubviews;
- (void)scrollRectToVisible:(CGRect)visible animated:(BOOL)animated;
- (void)setFrame:(CGRect)frame;
@end

@implementation SiriSharedUIContentPlatterScrollView

- (SiriSharedUIContentPlatterScrollView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SiriSharedUIContentPlatterScrollView;
  v3 = [(SiriSharedUIContentPlatterScrollView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SiriSharedUIContentPlatterScrollView *)v3 _sharedInit];
    [(SiriSharedUIContentPlatterScrollView *)v4 setAdjustContentSizeOnNextLayout:1];
  }

  return v4;
}

- (SiriSharedUIContentPlatterScrollView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SiriSharedUIContentPlatterScrollView;
  v3 = [(SiriSharedUIContentPlatterScrollView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(SiriSharedUIContentPlatterScrollView *)v3 _sharedInit];
  }

  return v4;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SiriSharedUIContentPlatterScrollView *)self setAdjustContentSizeOnNextLayout:1];
  v8.receiver = self;
  v8.super_class = SiriSharedUIContentPlatterScrollView;
  [(SiriSharedUIContentPlatterScrollView *)&v8 setFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  v33 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = SiriSharedUIContentPlatterScrollView;
  [(SiriSharedUIContentPlatterScrollView *)&v31 layoutSubviews];
  if ([(SiriSharedUIContentPlatterScrollView *)self adjustContentSizeOnNextLayout])
  {
    [(SiriSharedUIContentPlatterScrollView *)self setAdjustContentSizeOnNextLayout:0];
    [(SiriSharedUIContentPlatterScrollView *)self bounds];
    v4 = v3;
    v6 = v5;
    [(SiriSharedUIStandardScrollView *)self safeAreaInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    isSemanticContentAttributeRightToLeft = [(SiriSharedUIStandardScrollView *)self isSemanticContentAttributeRightToLeft];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    contentViews = [(SiriSharedUIStandardScrollView *)self contentViews];
    v15 = [contentViews countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      if (isSemanticContentAttributeRightToLeft)
      {
        v10 = v12;
      }

      v17 = *v28;
      do
      {
        v18 = 0;
        do
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(contentViews);
          }

          v19 = *(*(&v27 + 1) + 8 * v18);
          objc_opt_class();
          if (objc_opt_respondsToSelector())
          {
            [objc_opt_class() defaultHeight];
            v21 = v20;
          }

          else
          {
            [v19 sizeThatFits:{v4, 1.79769313e308}];
            v21 = v22;
          }

          [v19 setFrame:{v10, 0.0, v4, v21}];
          v8 = v8 + v21;
          ++v18;
        }

        while (v16 != v18);
        v16 = [contentViews countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v16);
    }

    [(SiriSharedUIContentPlatterScrollView *)self contentInset];
    v24 = v6 - v23;
    [(SiriSharedUIContentPlatterScrollView *)self contentInset];
    if (v8 > v24 - v25 && [(SiriSharedUIContentPlatterScrollView *)self isAutomaticScrollingEnabled])
    {
      v26 = 1;
    }

    else
    {
      v26 = 0;
      v8 = v6;
    }

    [(SiriSharedUIContentPlatterScrollView *)self setScrollEnabled:v26];
    [(SiriSharedUIContentPlatterScrollView *)self setContentSize:v4, v8];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  selfCopy = self;
  v5 = [(SiriSharedUIContentPlatterScrollView *)self platterDelegate:recognizer];
  LOBYTE(selfCopy) = [v5 shouldAllowSimultaneousGestureRecognizersForScrollView:selfCopy];

  return selfCopy;
}

- (void)scrollRectToVisible:(CGRect)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  traitCollection = [(SiriSharedUIContentPlatterScrollView *)self traitCollection];
  isAmbientPresented = [traitCollection isAmbientPresented];

  if (([(SiriSharedUIContentPlatterScrollView *)self isScrollEnabled]& 1) == 0 && isAmbientPresented)
  {
    _parentScrollView = [(SiriSharedUIContentPlatterScrollView *)self _parentScrollView];
    [(SiriSharedUIContentPlatterScrollView *)self convertRect:_parentScrollView toView:x, y, width, height];
    v12 = _parentScrollView;
    if (_parentScrollView)
    {
      [_parentScrollView scrollRectToVisible:animatedCopy animated:?];
      v12 = _parentScrollView;
    }
  }
}

- (id)_parentScrollView
{
  selfCopy = self;
  while (selfCopy)
  {
    superview = [(SiriSharedUIContentPlatterScrollView *)selfCopy superview];

    objc_opt_class();
    selfCopy = superview;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }
  }

  superview = 0;
LABEL_6:

  return superview;
}

- (void)_sharedInit
{
  [(SiriSharedUIContentPlatterScrollView *)self setAutomaticScrollingEnabled:1];
  [(SiriSharedUIContentPlatterScrollView *)self setShowsVerticalScrollIndicator:0];
  [(SiriSharedUIContentPlatterScrollView *)self setShowsHorizontalScrollIndicator:0];

  [(SiriSharedUIContentPlatterScrollView *)self _setHiddenPocketEdges:1];
}

- (SiriSharedUIContentPlatterScrollViewDelegate)platterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_platterDelegate);

  return WeakRetained;
}

@end