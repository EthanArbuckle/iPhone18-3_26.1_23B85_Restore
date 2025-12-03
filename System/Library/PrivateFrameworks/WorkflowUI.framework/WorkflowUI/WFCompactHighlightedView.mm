@interface WFCompactHighlightedView
- (UIView)backgroundView;
- (UIView)contentDimmingView;
- (WFCompactHighlightedView)initWithFrame:(CGRect)frame;
- (void)didAddSubview:(id)subview;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
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

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = WFCompactHighlightedView;
  [(WFCompactHighlightedView *)&v6 touchesEnded:ended withEvent:event];
  backgroundView = [(WFCompactHighlightedView *)self backgroundView];
  [backgroundView setHidden:1];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = WFCompactHighlightedView;
  [(WFCompactHighlightedView *)&v6 touchesCancelled:cancelled withEvent:event];
  backgroundView = [(WFCompactHighlightedView *)self backgroundView];
  [backgroundView setHidden:1];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v20.receiver = self;
  v20.super_class = WFCompactHighlightedView;
  movedCopy = moved;
  [(WFCompactHighlightedView *)&v20 touchesMoved:movedCopy withEvent:event];
  [(WFCompactHighlightedView *)self bounds:v20.receiver];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  anyObject = [movedCopy anyObject];

  [anyObject locationInView:self];
  v21.x = v16;
  v21.y = v17;
  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = v12;
  v22.size.height = v14;
  v18 = CGRectContainsPoint(v22, v21);
  backgroundView = [(WFCompactHighlightedView *)self backgroundView];
  [backgroundView setHidden:!v18];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = WFCompactHighlightedView;
  [(WFCompactHighlightedView *)&v6 touchesBegan:began withEvent:event];
  backgroundView = [(WFCompactHighlightedView *)self backgroundView];
  [backgroundView setHidden:0];
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  if (category == 2)
  {
    providerCopy = provider;
    backgroundView = [(WFCompactHighlightedView *)self backgroundView];
    [providerCopy automaticallyUpdateView:backgroundView withStyle:4];
  }
}

- (void)didAddSubview:(id)subview
{
  v5.receiver = self;
  v5.super_class = WFCompactHighlightedView;
  [(WFCompactHighlightedView *)&v5 didAddSubview:subview];
  backgroundView = [(WFCompactHighlightedView *)self backgroundView];
  [(WFCompactHighlightedView *)self bringSubviewToFront:backgroundView];
}

- (WFCompactHighlightedView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = WFCompactHighlightedView;
  v3 = [(WFCompactHighlightedView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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