@interface PXGFocusContainerGuideView
- (CGRect)clippingRect;
- (PXGFocusContainerGuideView)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation PXGFocusContainerGuideView

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

- (void)didMoveToSuperview
{
  v3 = [(PXGFocusContainerGuideView *)self superview];

  if (v3)
  {
    v4 = [(PXGFocusContainerGuideView *)self superview];
    [v4 addLayoutGuide:self->_focusGuide];

    [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  }

  v5.receiver = self;
  v5.super_class = PXGFocusContainerGuideView;
  [(PXGFocusContainerGuideView *)&v5 didMoveToSuperview];
}

- (void)willMoveToSuperview:(id)a3
{
  v5.receiver = self;
  v5.super_class = PXGFocusContainerGuideView;
  [(PXGFocusContainerGuideView *)&v5 willMoveToSuperview:a3];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  v4 = [(PXGFocusContainerGuideView *)self superview];
  [v4 removeLayoutGuide:self->_focusGuide];
}

- (PXGFocusContainerGuideView)initWithFrame:(CGRect)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PXGFocusContainerGuideView;
  v3 = [(PXGFocusContainerGuideView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCA10]);
    focusGuide = v3->_focusGuide;
    v3->_focusGuide = v4;

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(UIFocusContainerGuide *)v3->_focusGuide setIdentifier:v7];

    v22 = [(UIFocusContainerGuide *)v3->_focusGuide leadingAnchor];
    v21 = [(PXGFocusContainerGuideView *)v3 leadingAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v24[0] = v20;
    v8 = [(UIFocusContainerGuide *)v3->_focusGuide widthAnchor];
    v9 = [(PXGFocusContainerGuideView *)v3 widthAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v24[1] = v10;
    v11 = [(UIFocusContainerGuide *)v3->_focusGuide topAnchor];
    v12 = [(PXGFocusContainerGuideView *)v3 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v24[2] = v13;
    v14 = [(UIFocusContainerGuide *)v3->_focusGuide heightAnchor];
    v15 = [(PXGFocusContainerGuideView *)v3 heightAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v24[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    constraints = v3->_constraints;
    v3->_constraints = v17;
  }

  return v3;
}

@end