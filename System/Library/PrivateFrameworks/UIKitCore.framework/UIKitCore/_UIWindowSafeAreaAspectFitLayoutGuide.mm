@interface _UIWindowSafeAreaAspectFitLayoutGuide
- (_UIWindowSafeAreaAspectFitLayoutGuide)init;
- (_UIWindowSafeAreaAspectFitLayoutGuide)initWithCoder:(id)coder;
- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only;
- (void)_createOrUpdateHeightConstraintWithConstant:(double)constant owningView:(id)view constraintsToActivate:(id)activate;
- (void)_createOrUpdateLeftConstraintWithConstant:(double)constant owningView:(id)view constraintsToActivate:(id)activate;
- (void)_createOrUpdateTopConstraintWithConstant:(double)constant owningView:(id)view constraintsToActivate:(id)activate;
- (void)_createOrUpdateWidthConstraintWithConstant:(double)constant owningView:(id)view constraintsToActivate:(id)activate;
- (void)_setOwningView:(id)view;
- (void)_updateLayoutFrameConstraintsIfNeededWithOwningView:(id)view;
- (void)_updateLayoutFrameInOwningView:(id)view fromEngine:(id)engine;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAspectRatio:(double)ratio;
@end

@implementation _UIWindowSafeAreaAspectFitLayoutGuide

- (_UIWindowSafeAreaAspectFitLayoutGuide)init
{
  v3.receiver = self;
  v3.super_class = _UIWindowSafeAreaAspectFitLayoutGuide;
  result = [(UILayoutGuide *)&v3 init];
  if (result)
  {
    result->_aspectRatio = 1.0;
  }

  return result;
}

- (_UIWindowSafeAreaAspectFitLayoutGuide)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _UIWindowSafeAreaAspectFitLayoutGuide;
  v5 = [(UILayoutGuide *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_UIWindowSafeAreaAspectFitLayoutGuideAspectRatio"];
    [(_UIWindowSafeAreaAspectFitLayoutGuide *)v5 setAspectRatio:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIWindowSafeAreaAspectFitLayoutGuide;
  coderCopy = coder;
  [(UILayoutGuide *)&v5 encodeWithCoder:coderCopy];
  [(_UIWindowSafeAreaAspectFitLayoutGuide *)self aspectRatio:v5.receiver];
  [coderCopy encodeDouble:@"_UIWindowSafeAreaAspectFitLayoutGuideAspectRatio" forKey:?];
}

- (void)_setOwningView:(id)view
{
  v5.receiver = self;
  v5.super_class = _UIWindowSafeAreaAspectFitLayoutGuide;
  viewCopy = view;
  [(UILayoutGuide *)&v5 _setOwningView:viewCopy];
  self->_layoutFrameDirty = 1;
  [viewCopy _addBoundingPathChangeObserver:{self, v5.receiver, v5.super_class}];
}

- (void)dealloc
{
  owningView = [(UILayoutGuide *)self owningView];
  [owningView _removeBoundingPathChangeObserver:self];

  v4.receiver = self;
  v4.super_class = _UIWindowSafeAreaAspectFitLayoutGuide;
  [(UILayoutGuide *)&v4 dealloc];
}

- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only
{
  if (!only)
  {
    self->_layoutFrameDirty = 1;
    owningView = [(UILayoutGuide *)self owningView];
    [owningView setNeedsLayout];
  }
}

- (void)setAspectRatio:(double)ratio
{
  if (ratio <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIWindowSafeAreaAspectFitLayoutGuide.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"aspectRatio > 0.0"}];
  }

  v5 = fmax(fmin(ratio, 100.0), 0.01);
  if (self->_aspectRatio != v5)
  {
    self->_aspectRatio = v5;
    self->_layoutFrameDirty = 1;
    owningView = [(UILayoutGuide *)self owningView];
    [owningView setNeedsLayout];
  }
}

- (void)_updateLayoutFrameInOwningView:(id)view fromEngine:(id)engine
{
  viewCopy = view;
  engineCopy = engine;
  if (self->_layoutFrameDirty)
  {
    [(_UIWindowSafeAreaAspectFitLayoutGuide *)self _updateLayoutFrameConstraintsIfNeededWithOwningView:viewCopy];
  }

  v8.receiver = self;
  v8.super_class = _UIWindowSafeAreaAspectFitLayoutGuide;
  [(UILayoutGuide *)&v8 _updateLayoutFrameInOwningView:viewCopy fromEngine:engineCopy];
  self->_layoutFrameDirty = 0;
}

- (void)_createOrUpdateLeftConstraintWithConstant:(double)constant owningView:(id)view constraintsToActivate:(id)activate
{
  viewCopy = view;
  activateCopy = activate;
  leftConstraint = self->_leftConstraint;
  if (leftConstraint && [(NSLayoutConstraint *)leftConstraint isActive])
  {
    [(NSLayoutConstraint *)self->_leftConstraint setConstant:constant];
  }

  else
  {
    leftAnchor = [(UILayoutGuide *)self leftAnchor];
    leftAnchor2 = [viewCopy leftAnchor];
    v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:constant];
    v13 = self->_leftConstraint;
    self->_leftConstraint = v12;

    [activateCopy addObject:self->_leftConstraint];
  }
}

- (void)_createOrUpdateTopConstraintWithConstant:(double)constant owningView:(id)view constraintsToActivate:(id)activate
{
  viewCopy = view;
  activateCopy = activate;
  topConstraint = self->_topConstraint;
  if (topConstraint && [(NSLayoutConstraint *)topConstraint isActive])
  {
    [(NSLayoutConstraint *)self->_topConstraint setConstant:constant];
  }

  else
  {
    topAnchor = [(UILayoutGuide *)self topAnchor];
    topAnchor2 = [viewCopy topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:constant];
    v13 = self->_topConstraint;
    self->_topConstraint = v12;

    [activateCopy addObject:self->_topConstraint];
  }
}

- (void)_createOrUpdateWidthConstraintWithConstant:(double)constant owningView:(id)view constraintsToActivate:(id)activate
{
  viewCopy = view;
  activateCopy = activate;
  widthConstraint = self->_widthConstraint;
  if (widthConstraint && [(NSLayoutConstraint *)widthConstraint isActive])
  {
    [(NSLayoutConstraint *)self->_widthConstraint setConstant:constant];
  }

  else
  {
    widthAnchor = [(UILayoutGuide *)self widthAnchor];
    v11 = [widthAnchor constraintEqualToConstant:constant];
    v12 = self->_widthConstraint;
    self->_widthConstraint = v11;

    [activateCopy addObject:self->_widthConstraint];
  }
}

- (void)_createOrUpdateHeightConstraintWithConstant:(double)constant owningView:(id)view constraintsToActivate:(id)activate
{
  viewCopy = view;
  activateCopy = activate;
  heightConstraint = self->_heightConstraint;
  if (heightConstraint && [(NSLayoutConstraint *)heightConstraint isActive])
  {
    [(NSLayoutConstraint *)self->_heightConstraint setConstant:constant];
  }

  else
  {
    heightAnchor = [(UILayoutGuide *)self heightAnchor];
    v11 = [heightAnchor constraintEqualToConstant:constant];
    v12 = self->_heightConstraint;
    self->_heightConstraint = v11;

    [activateCopy addObject:self->_heightConstraint];
  }
}

- (void)_updateLayoutFrameConstraintsIfNeededWithOwningView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  MidX = CGRectGetMidX(v58);
  [viewCopy bounds];
  MidY = CGRectGetMidY(v59);
  aspectRatio = self->_aspectRatio;
  [viewCopy _largestInscribedRectInBoundingPathWithCenter:MidX aspectRatio:{MidY, aspectRatio}];
  x = v7;
  y = v9;
  width = v11;
  height = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = viewCopy;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  if (!CGRectIsNull(v60))
  {
    if (v16)
    {
      v17 = __UIStatusBarManagerForWindow(v16);
      [v17 statusBarHeight];
      v19 = v18;

      if (v19 > y)
      {
        [v16 _sceneBounds];
        v21 = _UICGRectInsetZeroClamped(x, y, width, height, 0.0, v19 - v20);
        _UIBoundingPathLargestInscribedRectWithAspectRatioAndCenter(aspectRatio, v21, v22, v23, v24, MidX, MidY);
        x = v25;
        y = v26;
        width = v27;
        height = v28;
      }
    }
  }

  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  if (CGRectIsNull(v61))
  {
    [viewCopy bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    [viewCopy safeAreaInsets];
    v41 = v34 - v38 - v40;
    v42 = v41 * 0.5;
    v43 = fmax(v41, 0.0);
    if (v41 >= 0.0)
    {
      v42 = 0.0;
    }

    v44 = v36 - v37 - v39;
    if (v44 >= 0.0)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = v44 * 0.5;
    }

    _UIBoundingPathLargestInscribedRectWithAspectRatioAndCenter(aspectRatio, v30 + v38 + v42, v32 + v37 + v45, v43, fmax(v44, 0.0), MidX, MidY);
    x = v62.origin.x;
    y = v62.origin.y;
    width = v62.size.width;
    height = v62.size.height;
    if (CGRectIsNull(v62))
    {
      safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];
      [safeAreaLayoutGuide layoutFrame];
      x = v47;
      y = v48;
      width = v49;
      height = v50;
    }
  }

  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  v64 = CGRectInset(v63, ceil(x) - x, ceil(y) - y);
  v65 = CGRectIntegral(v64);
  v51 = v65.origin.x;
  v52 = v65.origin.y;
  v53 = v65.size.width;
  v54 = v65.size.height;
  v55 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  v66.origin.x = v51;
  v66.origin.y = v52;
  v66.size.width = v53;
  v66.size.height = v54;
  [(_UIWindowSafeAreaAspectFitLayoutGuide *)self _createOrUpdateLeftConstraintWithConstant:viewCopy owningView:v55 constraintsToActivate:CGRectGetMinX(v66)];
  v67.origin.x = v51;
  v67.origin.y = v52;
  v67.size.width = v53;
  v67.size.height = v54;
  [(_UIWindowSafeAreaAspectFitLayoutGuide *)self _createOrUpdateTopConstraintWithConstant:viewCopy owningView:v55 constraintsToActivate:CGRectGetMinY(v67)];
  v68.origin.x = v51;
  v68.origin.y = v52;
  v68.size.width = v53;
  v68.size.height = v54;
  [(_UIWindowSafeAreaAspectFitLayoutGuide *)self _createOrUpdateWidthConstraintWithConstant:viewCopy owningView:v55 constraintsToActivate:CGRectGetWidth(v68)];
  v69.origin.x = v51;
  v69.origin.y = v52;
  v69.size.width = v53;
  v69.size.height = v54;
  [(_UIWindowSafeAreaAspectFitLayoutGuide *)self _createOrUpdateHeightConstraintWithConstant:viewCopy owningView:v55 constraintsToActivate:CGRectGetHeight(v69)];
  if ([v55 count])
  {
    [MEMORY[0x1E69977A0] activateConstraints:v55];
  }
}

@end