@interface _UIIndexBarStaticScrollAccessory
- (UIScrollView)scrollView;
- (void)_installScrollPocketInteractionIfNecessary;
- (void)layoutSubviews;
- (void)setShowIndexBar:(BOOL)bar;
- (void)update;
@end

@implementation _UIIndexBarStaticScrollAccessory

- (void)setShowIndexBar:(BOOL)bar
{
  if (self->_showIndexBar != bar)
  {
    barCopy = bar;
    self->_showIndexBar = bar;
    [(_UIStaticScrollBar *)self setShouldInsetButtonsForIndex:?];
    if (barCopy)
    {
      v14 = 0;
      v15 = 0;
      traitCollection = [(UIView *)self traitCollection];
      [(UIIndexBarView *)UIIndexBarAccessoryView makeIndexBarView:&v15 containerView:&v14 forTraits:traitCollection];
      v6 = v15;
      v7 = v14;

      indexBarView = self->_indexBarView;
      self->_indexBarView = v6;
      v9 = v6;

      containerView = self->_containerView;
      self->_containerView = v7;
      v11 = v7;

      [(UIView *)self addSubview:self->_containerView];
    }

    else
    {
      [(UIView *)self->_containerView removeFromSuperview];
      v12 = self->_indexBarView;
      self->_indexBarView = 0;

      v13 = self->_containerView;
      self->_containerView = 0;
    }
  }
}

- (void)update
{
  v3.receiver = self;
  v3.super_class = _UIIndexBarStaticScrollAccessory;
  [(_UIStaticScrollBar *)&v3 update];
  [(UIIndexBarAccessoryView *)self->_indexBarView update];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = _UIIndexBarStaticScrollAccessory;
  [(_UIStaticScrollBar *)&v11 layoutSubviews];
  downButton = [(_UIStaticScrollBar *)self downButton];
  [downButton frame];
  MinY = CGRectGetMinY(v12);
  upButton = [(_UIStaticScrollBar *)self upButton];
  [upButton frame];
  v6 = MinY - CGRectGetMaxY(v13);

  if (v6 <= 0.0)
  {
    v6 = 64.0;
  }

  [(_UIStaticScrollBar *)self centeringBounds];
  [(UIView *)self->_containerView setFrame:round(v8 + (v7 - v7) * 0.5), round(v10 + (v9 - v6) * 0.5)];
  [(_UIIndexBarStaticScrollAccessory *)self _installScrollPocketInteractionIfNecessary];
}

- (void)_installScrollPocketInteractionIfNecessary
{
  edge = self->_edge;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  v5 = _UIRectEdgeFromUIScrollAccessoryEdge(edge, WeakRetained);

  v6 = objc_loadWeakRetained(&self->_scrollView);
  v7 = [v6 _canScrollFromEdge:v5];

  scrollPocketInteraction = self->_scrollPocketInteraction;
  if (v7)
  {
    if (scrollPocketInteraction)
    {
      if (v5 != [(_UIScrollPocketInteraction *)self->_scrollPocketInteraction _edge])
      {
        [(_UIScrollPocketInteraction *)self->_scrollPocketInteraction _setEdge:v5];
      }
    }

    else
    {
      v10 = [_UIScrollPocketInteraction alloc];
      v11 = objc_loadWeakRetained(&self->_scrollView);
      v12 = [(_UIScrollPocketInteraction *)v10 initWithScrollView:v11 edge:v5 style:2];
      v13 = self->_scrollPocketInteraction;
      self->_scrollPocketInteraction = v12;

      [(UIView *)self addInteraction:self->_scrollPocketInteraction];
    }

    v14 = objc_loadWeakRetained(&self->_scrollView);
    v16 = [v14 _edgeEffectForEdge:v5];

    v15 = +[UIScrollEdgeEffectStyle hardStyle];
    [(_UIScrollPocketInteraction *)v16 setStyle:v15];

    v9 = v16;
  }

  else
  {
    if (!scrollPocketInteraction)
    {
      return;
    }

    [(UIView *)self removeInteraction:?];
    v9 = self->_scrollPocketInteraction;
    self->_scrollPocketInteraction = 0;
  }
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

@end