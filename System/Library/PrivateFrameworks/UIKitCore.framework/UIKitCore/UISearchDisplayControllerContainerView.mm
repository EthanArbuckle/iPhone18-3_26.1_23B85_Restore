@interface UISearchDisplayControllerContainerView
- (UISearchDisplayControllerContainerView)initWithFrame:(CGRect)frame topViewHeight:(double)height;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)adjustTopAttributeConstantByDelta:(double)delta;
- (void)configureInteractionForContainment:(BOOL)containment;
- (void)updateTopAttributeConstant:(double)constant;
- (void)updateTopViewHeight:(double)height animateUpdate:(BOOL)update;
@end

@implementation UISearchDisplayControllerContainerView

- (UISearchDisplayControllerContainerView)initWithFrame:(CGRect)frame topViewHeight:(double)height
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v44.receiver = self;
  v44.super_class = UISearchDisplayControllerContainerView;
  v9 = [(UIView *)&v44 initWithFrame:?];
  v10 = v9;
  if (v9)
  {
    [(UIView *)v9 setAutoresizingMask:18];
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    CGRectDivide(v45, &slice, &remainder, height, CGRectMinYEdge);
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 alloc];
    v15 = [v14 initWithFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];
    topView = v10->_topView;
    v10->_topView = v15;

    v17 = [v12 alloc];
    v18 = [v17 initWithFrame:{remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height}];
    bottomView = v10->_bottomView;
    v10->_bottomView = v18;

    v20 = [[v13 alloc] initWithFrame:{x, y, width, height}];
    behindView = v10->_behindView;
    v10->_behindView = v20;

    [(UIView *)v10->_topView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v10->_bottomView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v10->_behindView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v10 addSubview:v10->_topView];
    [(UIView *)v10 addSubview:v10->_bottomView];
    [(UIView *)v10 insertSubview:v10->_behindView belowSubview:v10->_topView];
    v22 = MEMORY[0x1E69977A0];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"V:[_topView(==%f)][_bottomView]", *&height];
    v24 = _NSDictionaryOfVariableBindings(&cfstr_TopviewBottomv.isa, v10->_topView, v10->_bottomView, 0);
    v25 = [v22 constraintsWithVisualFormat:v23 options:0 metrics:0 views:v24];

    v26 = [v25 objectAtIndex:0];
    [(UISearchDisplayControllerContainerView *)v10 setTopViewHeightConstraint:v26];

    [(UIView *)v10 addConstraints:v25];
    v27 = MEMORY[0x1E69977A0];
    v28 = _NSDictionaryOfVariableBindings(&cfstr_Topview.isa, v10->_topView, 0);
    v29 = [v27 constraintsWithVisualFormat:@"H:|[_topView]|" options:0 metrics:0 views:v28];

    [(UIView *)v10 addConstraints:v29];
    v30 = MEMORY[0x1E69977A0];
    v31 = _NSDictionaryOfVariableBindings(&cfstr_Bottomview.isa, v10->_bottomView, 0);
    v32 = [v30 constraintsWithVisualFormat:@"H:|[_bottomView]|" options:0 metrics:0 views:v31];

    [(UIView *)v10 addConstraints:v32];
    v33 = [MEMORY[0x1E69977A0] constraintWithItem:v10->_topView attribute:3 relatedBy:0 toItem:v10 attribute:3 multiplier:1.0 constant:0.0];
    [(UIView *)v10 addConstraint:v33];
    [(UISearchDisplayControllerContainerView *)v10 setTopViewAttributeTopConstraint:v33];
    v34 = [MEMORY[0x1E69977A0] constraintWithItem:v10->_bottomView attribute:4 relatedBy:0 toItem:v10 attribute:4 multiplier:1.0 constant:0.0];

    [(UIView *)v10 addConstraint:v34];
    v35 = MEMORY[0x1E69977A0];
    v36 = _NSDictionaryOfVariableBindings(&cfstr_Behindview.isa, v10->_behindView, 0);
    v37 = [v35 constraintsWithVisualFormat:@"H:|[_behindView]|" options:0 metrics:0 views:v36];

    [(UIView *)v10 addConstraints:v37];
    v38 = MEMORY[0x1E69977A0];
    v39 = _NSDictionaryOfVariableBindings(&cfstr_Behindview.isa, v10->_behindView, 0);
    v40 = [v38 constraintsWithVisualFormat:@"V:|[_behindView]|" options:0 metrics:0 views:v39];

    [(UIView *)v10 addConstraints:v40];
  }

  return v10;
}

- (void)updateTopViewHeight:(double)height animateUpdate:(BOOL)update
{
  updateCopy = update;
  topViewHeightConstraint = [(UISearchDisplayControllerContainerView *)self topViewHeightConstraint];
  [topViewHeightConstraint constant];
  if (v7 == height)
  {
  }

  else
  {
    collapsedTopView = self->_collapsedTopView;

    if (!collapsedTopView)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __76__UISearchDisplayControllerContainerView_updateTopViewHeight_animateUpdate___block_invoke;
      aBlock[3] = &unk_1E70F32F0;
      aBlock[4] = self;
      *&aBlock[5] = height;
      v9 = _Block_copy(aBlock);
      v10 = v9;
      if (updateCopy)
      {
        (*(v9 + 2))(v9);
      }

      else
      {
        [UIView performWithoutAnimation:v9];
      }
    }
  }
}

uint64_t __76__UISearchDisplayControllerContainerView_updateTopViewHeight_animateUpdate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) topViewHeightConstraint];
  [v3 setConstant:v2];

  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

- (void)updateTopAttributeConstant:(double)constant
{
  topViewAttributeTopConstraint = [(UISearchDisplayControllerContainerView *)self topViewAttributeTopConstraint];
  [topViewAttributeTopConstraint constant];
  v7 = v6;

  if (v7 != constant)
  {
    topViewAttributeTopConstraint2 = [(UISearchDisplayControllerContainerView *)self topViewAttributeTopConstraint];
    [topViewAttributeTopConstraint2 setConstant:constant];

    [(UIView *)self layoutIfNeeded];
  }
}

- (void)adjustTopAttributeConstantByDelta:(double)delta
{
  topViewAttributeTopConstraint = [(UISearchDisplayControllerContainerView *)self topViewAttributeTopConstraint];
  [topViewAttributeTopConstraint constant];
  [(UISearchDisplayControllerContainerView *)self updateTopAttributeConstant:v5 + delta];
}

- (void)configureInteractionForContainment:(BOOL)containment
{
  if (!containment)
  {
    [(UIView *)self->_topView setUserInteractionEnabled:0];
    behindView = self->_behindView;

    [(UIView *)behindView setUserInteractionEnabled:0];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = UISearchDisplayControllerContainerView;
  v5 = [(UIView *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  toWindowCopy = toWindow;
  v7.receiver = self;
  v7.super_class = UISearchDisplayControllerContainerView;
  [(UIView *)&v7 _didMoveFromWindow:window toWindow:toWindowCopy];
  if (toWindowCopy)
  {
    [toWindowCopy updateConstraintsIfNeeded];
  }
}

@end