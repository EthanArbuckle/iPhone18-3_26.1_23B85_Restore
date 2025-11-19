@interface _UIWindowSafeAreaAspectFitLayoutGuide
- (_UIWindowSafeAreaAspectFitLayoutGuide)init;
- (_UIWindowSafeAreaAspectFitLayoutGuide)initWithCoder:(id)a3;
- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4;
- (void)_createOrUpdateHeightConstraintWithConstant:(double)a3 owningView:(id)a4 constraintsToActivate:(id)a5;
- (void)_createOrUpdateLeftConstraintWithConstant:(double)a3 owningView:(id)a4 constraintsToActivate:(id)a5;
- (void)_createOrUpdateTopConstraintWithConstant:(double)a3 owningView:(id)a4 constraintsToActivate:(id)a5;
- (void)_createOrUpdateWidthConstraintWithConstant:(double)a3 owningView:(id)a4 constraintsToActivate:(id)a5;
- (void)_setOwningView:(id)a3;
- (void)_updateLayoutFrameConstraintsIfNeededWithOwningView:(id)a3;
- (void)_updateLayoutFrameInOwningView:(id)a3 fromEngine:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAspectRatio:(double)a3;
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

- (_UIWindowSafeAreaAspectFitLayoutGuide)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIWindowSafeAreaAspectFitLayoutGuide;
  v5 = [(UILayoutGuide *)&v7 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_UIWindowSafeAreaAspectFitLayoutGuideAspectRatio"];
    [(_UIWindowSafeAreaAspectFitLayoutGuide *)v5 setAspectRatio:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIWindowSafeAreaAspectFitLayoutGuide;
  v4 = a3;
  [(UILayoutGuide *)&v5 encodeWithCoder:v4];
  [(_UIWindowSafeAreaAspectFitLayoutGuide *)self aspectRatio:v5.receiver];
  [v4 encodeDouble:@"_UIWindowSafeAreaAspectFitLayoutGuideAspectRatio" forKey:?];
}

- (void)_setOwningView:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIWindowSafeAreaAspectFitLayoutGuide;
  v4 = a3;
  [(UILayoutGuide *)&v5 _setOwningView:v4];
  self->_layoutFrameDirty = 1;
  [v4 _addBoundingPathChangeObserver:{self, v5.receiver, v5.super_class}];
}

- (void)dealloc
{
  v3 = [(UILayoutGuide *)self owningView];
  [v3 _removeBoundingPathChangeObserver:self];

  v4.receiver = self;
  v4.super_class = _UIWindowSafeAreaAspectFitLayoutGuide;
  [(UILayoutGuide *)&v4 dealloc];
}

- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4
{
  if (!a4)
  {
    self->_layoutFrameDirty = 1;
    v5 = [(UILayoutGuide *)self owningView];
    [v5 setNeedsLayout];
  }
}

- (void)setAspectRatio:(double)a3
{
  if (a3 <= 0.0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UIWindowSafeAreaAspectFitLayoutGuide.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"aspectRatio > 0.0"}];
  }

  v5 = fmax(fmin(a3, 100.0), 0.01);
  if (self->_aspectRatio != v5)
  {
    self->_aspectRatio = v5;
    self->_layoutFrameDirty = 1;
    v8 = [(UILayoutGuide *)self owningView];
    [v8 setNeedsLayout];
  }
}

- (void)_updateLayoutFrameInOwningView:(id)a3 fromEngine:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_layoutFrameDirty)
  {
    [(_UIWindowSafeAreaAspectFitLayoutGuide *)self _updateLayoutFrameConstraintsIfNeededWithOwningView:v6];
  }

  v8.receiver = self;
  v8.super_class = _UIWindowSafeAreaAspectFitLayoutGuide;
  [(UILayoutGuide *)&v8 _updateLayoutFrameInOwningView:v6 fromEngine:v7];
  self->_layoutFrameDirty = 0;
}

- (void)_createOrUpdateLeftConstraintWithConstant:(double)a3 owningView:(id)a4 constraintsToActivate:(id)a5
{
  v14 = a4;
  v8 = a5;
  leftConstraint = self->_leftConstraint;
  if (leftConstraint && [(NSLayoutConstraint *)leftConstraint isActive])
  {
    [(NSLayoutConstraint *)self->_leftConstraint setConstant:a3];
  }

  else
  {
    v10 = [(UILayoutGuide *)self leftAnchor];
    v11 = [v14 leftAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:a3];
    v13 = self->_leftConstraint;
    self->_leftConstraint = v12;

    [v8 addObject:self->_leftConstraint];
  }
}

- (void)_createOrUpdateTopConstraintWithConstant:(double)a3 owningView:(id)a4 constraintsToActivate:(id)a5
{
  v14 = a4;
  v8 = a5;
  topConstraint = self->_topConstraint;
  if (topConstraint && [(NSLayoutConstraint *)topConstraint isActive])
  {
    [(NSLayoutConstraint *)self->_topConstraint setConstant:a3];
  }

  else
  {
    v10 = [(UILayoutGuide *)self topAnchor];
    v11 = [v14 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:a3];
    v13 = self->_topConstraint;
    self->_topConstraint = v12;

    [v8 addObject:self->_topConstraint];
  }
}

- (void)_createOrUpdateWidthConstraintWithConstant:(double)a3 owningView:(id)a4 constraintsToActivate:(id)a5
{
  v13 = a4;
  v8 = a5;
  widthConstraint = self->_widthConstraint;
  if (widthConstraint && [(NSLayoutConstraint *)widthConstraint isActive])
  {
    [(NSLayoutConstraint *)self->_widthConstraint setConstant:a3];
  }

  else
  {
    v10 = [(UILayoutGuide *)self widthAnchor];
    v11 = [v10 constraintEqualToConstant:a3];
    v12 = self->_widthConstraint;
    self->_widthConstraint = v11;

    [v8 addObject:self->_widthConstraint];
  }
}

- (void)_createOrUpdateHeightConstraintWithConstant:(double)a3 owningView:(id)a4 constraintsToActivate:(id)a5
{
  v13 = a4;
  v8 = a5;
  heightConstraint = self->_heightConstraint;
  if (heightConstraint && [(NSLayoutConstraint *)heightConstraint isActive])
  {
    [(NSLayoutConstraint *)self->_heightConstraint setConstant:a3];
  }

  else
  {
    v10 = [(UILayoutGuide *)self heightAnchor];
    v11 = [v10 constraintEqualToConstant:a3];
    v12 = self->_heightConstraint;
    self->_heightConstraint = v11;

    [v8 addObject:self->_heightConstraint];
  }
}

- (void)_updateLayoutFrameConstraintsIfNeededWithOwningView:(id)a3
{
  v56 = a3;
  [v56 bounds];
  MidX = CGRectGetMidX(v58);
  [v56 bounds];
  MidY = CGRectGetMidY(v59);
  aspectRatio = self->_aspectRatio;
  [v56 _largestInscribedRectInBoundingPathWithCenter:MidX aspectRatio:{MidY, aspectRatio}];
  x = v7;
  y = v9;
  width = v11;
  height = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v56;
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
    [v56 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    [v56 safeAreaInsets];
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
      v46 = [v56 safeAreaLayoutGuide];
      [v46 layoutFrame];
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
  [(_UIWindowSafeAreaAspectFitLayoutGuide *)self _createOrUpdateLeftConstraintWithConstant:v56 owningView:v55 constraintsToActivate:CGRectGetMinX(v66)];
  v67.origin.x = v51;
  v67.origin.y = v52;
  v67.size.width = v53;
  v67.size.height = v54;
  [(_UIWindowSafeAreaAspectFitLayoutGuide *)self _createOrUpdateTopConstraintWithConstant:v56 owningView:v55 constraintsToActivate:CGRectGetMinY(v67)];
  v68.origin.x = v51;
  v68.origin.y = v52;
  v68.size.width = v53;
  v68.size.height = v54;
  [(_UIWindowSafeAreaAspectFitLayoutGuide *)self _createOrUpdateWidthConstraintWithConstant:v56 owningView:v55 constraintsToActivate:CGRectGetWidth(v68)];
  v69.origin.x = v51;
  v69.origin.y = v52;
  v69.size.width = v53;
  v69.size.height = v54;
  [(_UIWindowSafeAreaAspectFitLayoutGuide *)self _createOrUpdateHeightConstraintWithConstant:v56 owningView:v55 constraintsToActivate:CGRectGetHeight(v69)];
  if ([v55 count])
  {
    [MEMORY[0x1E69977A0] activateConstraints:v55];
  }
}

@end