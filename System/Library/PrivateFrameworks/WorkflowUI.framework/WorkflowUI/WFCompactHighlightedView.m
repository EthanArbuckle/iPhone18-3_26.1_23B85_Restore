@interface WFCompactHighlightedView
- (UIView)backgroundView;
- (UIView)contentDimmingView;
- (WFCompactHighlightedView)initWithFrame:(CGRect)a3;
- (void)didAddSubview:(id)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation WFCompactHighlightedView

- (UIView)contentDimmingView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentDimmingView);

  return WeakRetained;
}

- (UIView)backgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  return WeakRetained;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = WFCompactHighlightedView;
  [(WFCompactHighlightedView *)&v6 touchesEnded:a3 withEvent:a4];
  v5 = [(WFCompactHighlightedView *)self backgroundView];
  [v5 setHidden:1];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = WFCompactHighlightedView;
  [(WFCompactHighlightedView *)&v6 touchesCancelled:a3 withEvent:a4];
  v5 = [(WFCompactHighlightedView *)self backgroundView];
  [v5 setHidden:1];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v20.receiver = self;
  v20.super_class = WFCompactHighlightedView;
  v6 = a3;
  [(WFCompactHighlightedView *)&v20 touchesMoved:v6 withEvent:a4];
  [(WFCompactHighlightedView *)self bounds:v20.receiver];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v6 anyObject];

  [v15 locationInView:self];
  v21.x = v16;
  v21.y = v17;
  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = v12;
  v22.size.height = v14;
  v18 = CGRectContainsPoint(v22, v21);
  v19 = [(WFCompactHighlightedView *)self backgroundView];
  [v19 setHidden:!v18];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = WFCompactHighlightedView;
  [(WFCompactHighlightedView *)&v6 touchesBegan:a3 withEvent:a4];
  v5 = [(WFCompactHighlightedView *)self backgroundView];
  [v5 setHidden:0];
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  if (a4 == 2)
  {
    v6 = a3;
    v7 = [(WFCompactHighlightedView *)self backgroundView];
    [v6 automaticallyUpdateView:v7 withStyle:4];
  }
}

- (void)didAddSubview:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFCompactHighlightedView;
  [(WFCompactHighlightedView *)&v5 didAddSubview:a3];
  v4 = [(WFCompactHighlightedView *)self backgroundView];
  [(WFCompactHighlightedView *)self bringSubviewToFront:v4];
}

- (WFCompactHighlightedView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = WFCompactHighlightedView;
  v3 = [(WFCompactHighlightedView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setHidden:1];
    [(WFCompactHighlightedView *)v3 bounds];
    [v4 setFrame:?];
    [v4 setAutoresizingMask:18];
    [(WFCompactHighlightedView *)v3 addSubview:v4];
    objc_storeWeak(&v3->_backgroundView, v4);
    v5 = v3;
  }

  return v3;
}

@end