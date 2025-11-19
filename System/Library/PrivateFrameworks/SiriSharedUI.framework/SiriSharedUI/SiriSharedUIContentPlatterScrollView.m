@interface SiriSharedUIContentPlatterScrollView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (SiriSharedUIContentPlatterScrollView)initWithCoder:(id)a3;
- (SiriSharedUIContentPlatterScrollView)initWithFrame:(CGRect)a3;
- (SiriSharedUIContentPlatterScrollViewDelegate)platterDelegate;
- (id)_parentScrollView;
- (void)_sharedInit;
- (void)layoutSubviews;
- (void)scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4;
- (void)setFrame:(CGRect)a3;
@end

@implementation SiriSharedUIContentPlatterScrollView

- (SiriSharedUIContentPlatterScrollView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SiriSharedUIContentPlatterScrollView;
  v3 = [(SiriSharedUIContentPlatterScrollView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SiriSharedUIContentPlatterScrollView *)v3 _sharedInit];
    [(SiriSharedUIContentPlatterScrollView *)v4 setAdjustContentSizeOnNextLayout:1];
  }

  return v4;
}

- (SiriSharedUIContentPlatterScrollView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SiriSharedUIContentPlatterScrollView;
  v3 = [(SiriSharedUIContentPlatterScrollView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(SiriSharedUIContentPlatterScrollView *)v3 _sharedInit];
  }

  return v4;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v13 = [(SiriSharedUIStandardScrollView *)self isSemanticContentAttributeRightToLeft];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [(SiriSharedUIStandardScrollView *)self contentViews];
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      if (v13)
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
            objc_enumerationMutation(v14);
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
        v16 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
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

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v4 = self;
  v5 = [(SiriSharedUIContentPlatterScrollView *)self platterDelegate:a3];
  LOBYTE(v4) = [v5 shouldAllowSimultaneousGestureRecognizersForScrollView:v4];

  return v4;
}

- (void)scrollRectToVisible:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(SiriSharedUIContentPlatterScrollView *)self traitCollection];
  v11 = [v10 isAmbientPresented];

  if (([(SiriSharedUIContentPlatterScrollView *)self isScrollEnabled]& 1) == 0 && v11)
  {
    v13 = [(SiriSharedUIContentPlatterScrollView *)self _parentScrollView];
    [(SiriSharedUIContentPlatterScrollView *)self convertRect:v13 toView:x, y, width, height];
    v12 = v13;
    if (v13)
    {
      [v13 scrollRectToVisible:v4 animated:?];
      v12 = v13;
    }
  }
}

- (id)_parentScrollView
{
  v2 = self;
  while (v2)
  {
    v3 = [(SiriSharedUIContentPlatterScrollView *)v2 superview];

    objc_opt_class();
    v2 = v3;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:

  return v3;
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