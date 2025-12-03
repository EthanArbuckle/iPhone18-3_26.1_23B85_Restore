@interface _UIStaticScrollBar
- (CGRect)centeringBounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIScrollView)scrollView;
- (_UIStaticScrollBar)initWithFrame:(CGRect)frame;
- (id)_constraintsForEdge:(int64_t)edge;
- (int64_t)desiredAccessoryEdge;
- (unint64_t)_axis;
- (void)_setupSubviewsIfNeeded;
- (void)_updateScrollPocketIfNecessary;
- (void)buttonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setEdge:(int64_t)edge;
- (void)setShouldInsetButtonsForIndex:(BOOL)index;
- (void)updateConstraints;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIStaticScrollBar

- (unint64_t)_axis
{
  if ((([(_UIStaticScrollBar *)self edge]- 2) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)desiredAccessoryEdge
{
  v2 = +[UIScreen _carScreen];
  if ([v2 _isRightHandDrive])
  {
    v3 = 3;
  }

  else
  {
    v3 = 5;
  }

  return v3;
}

- (void)updateConstraints
{
  v5.receiver = self;
  v5.super_class = _UIStaticScrollBar;
  [(UIView *)&v5 updateConstraints];
  [(_UIStaticScrollBar *)self _setupSubviewsIfNeeded];
  if (self->_constraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
  }

  v3 = [(_UIStaticScrollBar *)self _constraintsForEdge:[(_UIStaticScrollBar *)self edge]];
  constraints = self->_constraints;
  self->_constraints = v3;

  [MEMORY[0x1E69977A0] activateConstraints:self->_constraints];
}

- (void)_setupSubviewsIfNeeded
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44___UIStaticScrollBar__setupSubviewsIfNeeded__block_invoke;
  aBlock[3] = &unk_1E712AB38;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = v3;
  if (!self->_upButton)
  {
    v5 = (*(v3 + 2))(v3, @"chevron.up");
    upButton = self->_upButton;
    self->_upButton = v5;

    [(UIView *)self addSubview:self->_upButton];
  }

  if (!self->_downButton)
  {
    v7 = (v4)[2](v4, @"chevron.down");
    downButton = self->_downButton;
    self->_downButton = v7;

    [(UIView *)self addSubview:self->_downButton];
  }

  if (!self->_dividerLine)
  {
    v9 = objc_alloc_init(UIView);
    dividerLine = self->_dividerLine;
    self->_dividerLine = v9;

    [(UIView *)self->_dividerLine setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = +[UIColor clearColor];
    [(UIView *)self->_dividerLine setBackgroundColor:v11];

    [(UIView *)self addSubview:self->_dividerLine];
  }

  [(_UIStaticScrollBar *)self _updateScrollPocketIfNecessary];
}

- (void)layoutSubviews
{
  [(_UIStaticScrollBar *)self _setupSubviewsIfNeeded];
  v3.receiver = self;
  v3.super_class = _UIStaticScrollBar;
  [(UIView *)&v3 layoutSubviews];
}

- (_UIStaticScrollBar)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UIStaticScrollBar;
  v3 = [(UIView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UIView *)v3 _setHostsLayoutEngine:1];
  return v3;
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = _UIStaticScrollBar;
  [(UIView *)&v5 willMoveToWindow:?];
  if (window)
  {
    [(UIView *)self setNeedsUpdateConstraints];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  _axis = [(_UIStaticScrollBar *)self _axis];
  _screen = [(UIView *)self _screen];
  UIRoundToScreenScale(_screen);
  if (_axis == 2)
  {
    width = v8;
  }

  else
  {
    height = v8;
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)_constraintsForEdge:(int64_t)edge
{
  v39[4] = *MEMORY[0x1E69E9840];
  if (!self->_upButton || !self->_downButton || !self->_dividerLine)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStaticScrollBar.m" lineNumber:144 description:@"you should not request constraints before setting up the required views"];
  }

  _axis = [(_UIStaticScrollBar *)self _axis];
  if ([(_UIStaticScrollBar *)self shouldInsetButtonsForIndex])
  {
    v6 = 100.0;
  }

  else
  {
    v6 = 0.0;
  }

  _screen = [(UIView *)self _screen];
  UIRoundToScreenScale(_screen);
  v9 = v8;

  v10 = [(UIButton *)self->_upButton imageForState:0];
  [v10 size];
  v12 = v11;
  v14 = v13;

  if (_axis == 2)
  {
    v12 = v14;
  }

  v38[0] = @"margin";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v39[0] = v15;
  v38[1] = @"spacing";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v39[1] = v16;
  v38[2] = @"hairline";
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
  v39[2] = v17;
  v38[3] = @"minLength";
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v39[3] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:4];

  v20 = _NSDictionaryOfVariableBindings(&cfstr_DividerlineUpb.isa, self->_dividerLine, self->_upButton, self->_downButton, 0);
  array = [MEMORY[0x1E695DF70] array];
  if (_axis)
  {
    if (_axis != 1)
    {
      if (_axis != 2)
      {
        goto LABEL_25;
      }

      if ([(_UIStaticScrollBar *)self edge]== 3)
      {
        v22 = 0x10000;
      }

      else
      {
        v22 = ([(_UIStaticScrollBar *)self edge]== 5) << 17;
      }

      v32 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"|[_upButton][_dividerLine(hairline)]|" options:v22 metrics:v19 views:v20];
      [array addObjectsFromArray:v32];

      v33 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"|[_downButton][_dividerLine]|" options:v22 metrics:v19 views:v20];
      [array addObjectsFromArray:v33];

      v34 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[_dividerLine]|" options:0 metrics:v19 views:v20];
      [array addObjectsFromArray:v34];

      v30 = MEMORY[0x1E69977A0];
      v31 = @"V:|-margin-[_upButton(==_downButton)]-spacing@750-[_downButton(>=minLength)]-margin-|";
      goto LABEL_23;
    }

    if ([(_UIStaticScrollBar *)self edge]== 2)
    {
      v23 = @"V:|[_downButton][_dividerLine]|";
      v24 = @"V:|[_upButton][_dividerLine(hairline)]|";
    }

    else
    {
      if ([(_UIStaticScrollBar *)self edge]!= 4)
      {
LABEL_20:
        v29 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"|[_dividerLine]|" options:0 metrics:v19 views:v20];
        [array addObjectsFromArray:v29];

        v30 = MEMORY[0x1E69977A0];
        v31 = @"|-margin-[_upButton(==_downButton)]-spacing@750-[_downButton(>=minLength)]-margin-|";
LABEL_23:
        currentHandler2 = [v30 constraintsWithVisualFormat:v31 options:0 metrics:v19 views:v20];
        [array addObjectsFromArray:currentHandler2];
        goto LABEL_24;
      }

      v23 = @"V:|[_dividerLine][_downButton]|";
      v24 = @"V:|[_dividerLine(hairline)][_upButton]|";
    }

    v27 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:v24 options:0 metrics:v19 views:v20];
    [array addObjectsFromArray:v27];

    v28 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:v23 options:0 metrics:v19 views:v20];
    [array addObjectsFromArray:v28];

    goto LABEL_20;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UIStaticScrollBar edge](self, "edge")}];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIStaticScrollBar.m" lineNumber:192 description:{@"scroll bar edge is outside expected values (edge:%@)", v26}];

LABEL_24:
LABEL_25:
  v35 = [array copy];

  return v35;
}

- (void)buttonTapped:(id)tapped
{
  if (self->_upButton == tapped)
  {
    v4 = -1.0;
  }

  else
  {
    v4 = 1.0;
  }

  scrollView = [(_UIStaticScrollBar *)self scrollView];
  [scrollView _staticScrollBar:self didScrollInDirection:{0.0, v4}];
}

- (void)setShouldInsetButtonsForIndex:(BOOL)index
{
  if (self->_shouldInsetButtonsForIndex != index)
  {
    self->_shouldInsetButtonsForIndex = index;
    [(UIView *)self setNeedsUpdateConstraints];
  }
}

- (void)setEdge:(int64_t)edge
{
  if (self->_edge != edge)
  {
    self->_edge = edge;
    [(_UIStaticScrollBar *)self _updateScrollPocketIfNecessary];

    [(UIView *)self setNeedsUpdateConstraints];
  }
}

- (CGRect)centeringBounds
{
  UIRoundToViewScale(self);
  v4 = v3;
  if ([(_UIStaticScrollBar *)self _axis]== 2)
  {
    v5 = 10;
  }

  else
  {
    v5 = 5;
  }

  [(UIView *)self bounds];

  v10 = UIRectInsetEdges(v5, v6, v7, v8, v9, v4);
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)_updateScrollPocketIfNecessary
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