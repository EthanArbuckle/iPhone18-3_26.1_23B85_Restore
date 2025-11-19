@interface PXGFocusGuideView
- (CGRect)clippingRect;
- (PXGFocusGuideView)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setUserData:(id)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation PXGFocusGuideView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)a3
{
  v8 = a3;
  v5 = self->_userData;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXGFocusGuideViewConfiguration *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_userData, a3);
      [(PXGFocusGuideView *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PXGFocusGuideView;
  [(PXGFocusGuideView *)&v5 layoutSubviews];
  v3 = [(PXGFocusGuideView *)self userData];
  v4 = [v3 preferredFocusEnvironments];
  [(UIFocusGuide *)self->_focusGuide setPreferredFocusEnvironments:v4];
}

- (void)didMoveToSuperview
{
  v3 = [(PXGFocusGuideView *)self superview];

  if (v3)
  {
    v4 = [(PXGFocusGuideView *)self superview];
    [v4 addLayoutGuide:self->_focusGuide];

    [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  }

  v5.receiver = self;
  v5.super_class = PXGFocusGuideView;
  [(PXGFocusGuideView *)&v5 didMoveToSuperview];
}

- (void)willMoveToSuperview:(id)a3
{
  v5.receiver = self;
  v5.super_class = PXGFocusGuideView;
  [(PXGFocusGuideView *)&v5 willMoveToSuperview:a3];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  v4 = [(PXGFocusGuideView *)self superview];
  [v4 removeLayoutGuide:self->_focusGuide];
}

- (PXGFocusGuideView)initWithFrame:(CGRect)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PXGFocusGuideView;
  v3 = [(PXGFocusGuideView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCA20]);
    focusGuide = v3->_focusGuide;
    v3->_focusGuide = v4;

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(UIFocusGuide *)v3->_focusGuide setIdentifier:v7];

    v22 = [(UIFocusGuide *)v3->_focusGuide leadingAnchor];
    v21 = [(PXGFocusGuideView *)v3 leadingAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v24[0] = v20;
    v8 = [(UIFocusGuide *)v3->_focusGuide widthAnchor];
    v9 = [(PXGFocusGuideView *)v3 widthAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v24[1] = v10;
    v11 = [(UIFocusGuide *)v3->_focusGuide topAnchor];
    v12 = [(PXGFocusGuideView *)v3 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v24[2] = v13;
    v14 = [(UIFocusGuide *)v3->_focusGuide heightAnchor];
    v15 = [(PXGFocusGuideView *)v3 heightAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v24[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    constraints = v3->_constraints;
    v3->_constraints = v17;
  }

  return v3;
}

@end