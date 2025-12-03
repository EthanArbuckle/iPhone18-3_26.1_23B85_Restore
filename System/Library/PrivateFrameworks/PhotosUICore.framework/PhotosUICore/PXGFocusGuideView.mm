@interface PXGFocusGuideView
- (CGRect)clippingRect;
- (PXGFocusGuideView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setUserData:(id)data;
- (void)willMoveToSuperview:(id)superview;
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

- (void)setUserData:(id)data
{
  dataCopy = data;
  v5 = self->_userData;
  v6 = v5;
  if (v5 == dataCopy)
  {
  }

  else
  {
    v7 = [(PXGFocusGuideViewConfiguration *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_userData, data);
      [(PXGFocusGuideView *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PXGFocusGuideView;
  [(PXGFocusGuideView *)&v5 layoutSubviews];
  userData = [(PXGFocusGuideView *)self userData];
  preferredFocusEnvironments = [userData preferredFocusEnvironments];
  [(UIFocusGuide *)self->_focusGuide setPreferredFocusEnvironments:preferredFocusEnvironments];
}

- (void)didMoveToSuperview
{
  superview = [(PXGFocusGuideView *)self superview];

  if (superview)
  {
    superview2 = [(PXGFocusGuideView *)self superview];
    [superview2 addLayoutGuide:self->_focusGuide];

    [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  }

  v5.receiver = self;
  v5.super_class = PXGFocusGuideView;
  [(PXGFocusGuideView *)&v5 didMoveToSuperview];
}

- (void)willMoveToSuperview:(id)superview
{
  v5.receiver = self;
  v5.super_class = PXGFocusGuideView;
  [(PXGFocusGuideView *)&v5 willMoveToSuperview:superview];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  superview = [(PXGFocusGuideView *)self superview];
  [superview removeLayoutGuide:self->_focusGuide];
}

- (PXGFocusGuideView)initWithFrame:(CGRect)frame
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PXGFocusGuideView;
  v3 = [(PXGFocusGuideView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCA20]);
    focusGuide = v3->_focusGuide;
    v3->_focusGuide = v4;

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(UIFocusGuide *)v3->_focusGuide setIdentifier:v7];

    leadingAnchor = [(UIFocusGuide *)v3->_focusGuide leadingAnchor];
    leadingAnchor2 = [(PXGFocusGuideView *)v3 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v24[0] = v20;
    widthAnchor = [(UIFocusGuide *)v3->_focusGuide widthAnchor];
    widthAnchor2 = [(PXGFocusGuideView *)v3 widthAnchor];
    v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v24[1] = v10;
    topAnchor = [(UIFocusGuide *)v3->_focusGuide topAnchor];
    topAnchor2 = [(PXGFocusGuideView *)v3 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[2] = v13;
    heightAnchor = [(UIFocusGuide *)v3->_focusGuide heightAnchor];
    heightAnchor2 = [(PXGFocusGuideView *)v3 heightAnchor];
    v16 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v24[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    constraints = v3->_constraints;
    v3->_constraints = v17;
  }

  return v3;
}

@end