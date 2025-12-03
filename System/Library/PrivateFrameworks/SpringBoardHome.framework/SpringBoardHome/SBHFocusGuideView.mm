@interface SBHFocusGuideView
- (SBHFocusGuideView)initWithFrame:(CGRect)frame;
- (void)_updateTargetedView;
- (void)setTargetView:(id)view;
@end

@implementation SBHFocusGuideView

- (SBHFocusGuideView)initWithFrame:(CGRect)frame
{
  v22[4] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SBHFocusGuideView;
  v3 = [(SBHFocusGuideView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCA20]);
    focusGuide = v3->_focusGuide;
    v3->_focusGuide = v4;

    [(SBHFocusGuideView *)v3 addLayoutGuide:v3->_focusGuide];
    v16 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIFocusGuide *)v3->_focusGuide topAnchor];
    topAnchor2 = [(SBHFocusGuideView *)v3 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v22[0] = v18;
    bottomAnchor = [(UIFocusGuide *)v3->_focusGuide bottomAnchor];
    bottomAnchor2 = [(SBHFocusGuideView *)v3 bottomAnchor];
    v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v22[1] = v7;
    leadingAnchor = [(UIFocusGuide *)v3->_focusGuide leadingAnchor];
    leadingAnchor2 = [(SBHFocusGuideView *)v3 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v22[2] = v10;
    trailingAnchor = [(UIFocusGuide *)v3->_focusGuide trailingAnchor];
    trailingAnchor2 = [(SBHFocusGuideView *)v3 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v22[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    [v16 activateConstraints:v14];

    [(SBHFocusGuideView *)v3 _updateTargetedView];
  }

  return v3;
}

- (void)setTargetView:(id)view
{
  viewCopy = view;
  if (self->_targetView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_targetView, view);
    [(SBHFocusGuideView *)self _updateTargetedView];
    viewCopy = v6;
  }
}

- (void)_updateTargetedView
{
  v5[1] = *MEMORY[0x1E69E9840];
  focusGuide = self->_focusGuide;
  if (self->_targetView)
  {
    v5[0] = self->_targetView;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    [(UIFocusGuide *)focusGuide setPreferredFocusEnvironments:v3];
  }

  else
  {
    v4 = self->_focusGuide;

    [(UIFocusGuide *)v4 setPreferredFocusEnvironments:0];
  }
}

@end