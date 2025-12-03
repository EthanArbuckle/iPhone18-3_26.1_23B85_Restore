@interface _UIConstraintBasedLayoutHostingView
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size;
- (CGSize)_layoutSizeThatFits:(CGSize)fits fixedAxes:(unint64_t)axes;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)alignmentRectInsets;
- (_UIConstraintBasedLayoutHostingView)initWithHostedView:(id)view;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)_scheduleUpdateConstraintsPassAsEngineHostNeedingLayout:(BOOL)layout;
- (void)_setFrameWithAlignmentRect:(CGRect)rect;
- (void)constraintsDidChangeInEngine:(id)engine;
- (void)setHostedView:(id)view;
- (void)updateConstraints;
- (void)willRemoveSubview:(id)subview;
@end

@implementation _UIConstraintBasedLayoutHostingView

- (void)updateConstraints
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _UIConstraintBasedLayoutHostingView;
  [(UIView *)&v4 updateConstraints];
  if (!self->_hasAddedConstraints)
  {
    if ([(UIView *)self->_hostedView _wantsConstraintBasedLayout])
    {
      self->_hasAddedConstraints = 1;
      v3 = MEMORY[0x1E69977A0];
      v5[0] = [(NSLayoutYAxisAnchor *)[(UIView *)self topAnchor] constraintEqualToAnchor:[(UIView *)self->_hostedView topAnchor]];
      v5[1] = [(NSLayoutYAxisAnchor *)[(UIView *)self bottomAnchor] constraintEqualToAnchor:[(UIView *)self->_hostedView bottomAnchor]];
      v5[2] = [(NSLayoutXAxisAnchor *)[(UIView *)self leadingAnchor] constraintEqualToAnchor:[(UIView *)self->_hostedView leadingAnchor]];
      v5[3] = [(NSLayoutXAxisAnchor *)[(UIView *)self trailingAnchor] constraintEqualToAnchor:[(UIView *)self->_hostedView trailingAnchor]];
      [v3 activateConstraints:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v5, 4)}];
    }
  }
}

- (_UIConstraintBasedLayoutHostingView)initWithHostedView:(id)view
{
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  [view frame];
  v10.receiver = self;
  v10.super_class = _UIConstraintBasedLayoutHostingView;
  v7 = [(UIView *)&v10 initWithFrame:v5, v6];
  v8 = v7;
  if (v7)
  {
    [(UIView *)v7 _setHostsLayoutEngine:1];
    [(_UIConstraintBasedLayoutHostingView *)v8 setHostedView:view];
  }

  return v8;
}

- (void)setHostedView:(id)view
{
  hostedView = self->_hostedView;
  if (hostedView != view)
  {
    if (hostedView)
    {
      [(UIView *)hostedView removeFromSuperview];
    }

    self->_hostedView = view;
    self->_hasAddedConstraints = 0;
    if (view)
    {
      [(UIView *)self bounds];
      [view setFrame:?];
      [view setAutoresizingMask:18];

      [(UIView *)self addSubview:view];
    }
  }
}

- (void)willRemoveSubview:(id)subview
{
  v5.receiver = self;
  v5.super_class = _UIConstraintBasedLayoutHostingView;
  [(UIView *)&v5 willRemoveSubview:?];
  if (self->_hostedView == subview)
  {
    self->_hostedView = 0;
  }
}

- (void)_setFrameWithAlignmentRect:(CGRect)rect
{
  v3.receiver = self;
  v3.super_class = _UIConstraintBasedLayoutHostingView;
  [(UIView *)&v3 _setFrameWithAlignmentRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  v5.receiver = self;
  v5.super_class = _UIConstraintBasedLayoutHostingView;
  [(UIView *)&v5 _intrinsicContentSizeInvalidatedForChildView:?];
  if (self->_hostedView == view && (*(&self->super._viewFlags + 9) & 0x10) == 0)
  {
    [(_UIConstraintBasedLayoutHostingView *)self _layoutMetricsInvalidatedForHostedView];
  }
}

- (void)constraintsDidChangeInEngine:(id)engine
{
  v4.receiver = self;
  v4.super_class = _UIConstraintBasedLayoutHostingView;
  [(UIView *)&v4 constraintsDidChangeInEngine:engine];
  if ((*(&self->super._viewFlags + 8) & 4) == 0)
  {
    [(_UIConstraintBasedLayoutHostingView *)self _layoutMetricsInvalidatedForHostedView];
  }
}

- (void)_scheduleUpdateConstraintsPassAsEngineHostNeedingLayout:(BOOL)layout
{
  layoutCopy = layout;
  v5.receiver = self;
  v5.super_class = _UIConstraintBasedLayoutHostingView;
  [(UIView *)&v5 _scheduleUpdateConstraintsPassAsEngineHostNeedingLayout:?];
  if (layoutCopy && (*(&self->super._viewFlags + 9) & 0x10) == 0)
  {
    [(_UIConstraintBasedLayoutHostingView *)self _layoutMetricsInvalidatedForHostedView];
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  [(UIView *)self->_hostedView alignmentRectInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size
{
  [(UIView *)self->_hostedView _baselineOffsetsAtSize:size.width, size.height];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = 1.79769313e308;
  if (fits.width == 0.0)
  {
    width = 1.79769313e308;
  }

  else
  {
    width = fits.width;
  }

  if (fits.height != 0.0)
  {
    height = fits.height;
  }

  [(UIView *)self alignmentRectForFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
  v7 = v6;
  v9 = v8;
  [(_UIConstraintBasedLayoutHostingView *)self _layoutSizeThatFits:0 fixedAxes:v10, v11];
  [(UIView *)self frameForAlignmentRect:v7, v9, v12, v13];
  v15 = v14;
  v17 = v16;
  result.height = v17;
  result.width = v15;
  return result;
}

- (CGSize)_layoutSizeThatFits:(CGSize)fits fixedAxes:(unint64_t)axes
{
  height = fits.height;
  width = fits.width;
  p_viewFlags = &self->super._viewFlags;
  if ((*(&self->super._viewFlags + 8) & 4) == 0)
  {
    [(UIView *)self updateConstraintsIfNeeded];
  }

  if ([(UIView *)self->_hostedView _wantsConstraintBasedLayout])
  {
    v9 = fmax(fmin(width, 50000.0), 0.0);
    v10 = fmin(height, 50000.0);
    array = [MEMORY[0x1E695DF70] array];
    if (axes)
    {
      v14 = @"_UI-fixedSizeH";
      v15 = 1144586240;
      v16 = v9;
    }

    else
    {
      if (v9 > 0.0)
      {
        v12 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:7 relatedBy:-1 constant:v9];
        LODWORD(v13) = 1144586240;
        [v12 setPriority:v13];
        [v12 setIdentifier:@"_UI-fittingSizeHLimit"];
        [array addObject:v12];
      }

      v14 = @"_UI-fittingSizeHCompression";
      v15 = 1112014848;
      v16 = 0.0;
    }

    v21 = fmax(v10, 0.0);
    v22 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:7 relatedBy:0 constant:v16];
    LODWORD(v23) = v15;
    [v22 setPriority:v23];
    [v22 setIdentifier:v14];
    [array addObject:v22];
    if ((axes & 2) != 0)
    {
      v27 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:8 relatedBy:0 constant:v21];
      LODWORD(v30) = 1144586240;
      [v27 setPriority:v30];
      v29 = @"_UI-fixedSizeV";
    }

    else
    {
      if (v21 > 0.0)
      {
        v24 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:8 relatedBy:-1 constant:v21];
        LODWORD(v25) = 1144586240;
        [v24 setPriority:v25];
        [v24 setIdentifier:@"_UI-fittingSizeVLimit"];
        [array addObject:v24];
      }

      v26 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:8 relatedBy:0 constant:0.0];
      v27 = v26;
      LODWORD(v28) = 1112014848;
      if (v21 == 0.0)
      {
        *&v28 = 740.0;
      }

      [v26 setPriority:v28];
      v29 = @"_UI-fittingSizeVCompression";
    }

    [v27 setIdentifier:v29];
    [array addObject:v27];
    v34 = 0;
    v35 = &v34;
    v36 = 0x3010000000;
    v38 = 0;
    v39 = 0;
    v37 = "";
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __69___UIConstraintBasedLayoutHostingView__layoutSizeThatFits_fixedAxes___block_invoke;
    v33[3] = &unk_1E71156A0;
    v33[4] = self;
    v33[5] = &v34;
    [(UIView *)self _measureViewWithSize:array temporaryConstraints:1 suspendingSystemConstraints:v33 withOptimizedEngineBlock:v9, v21];
    v18 = v35[4];
    v20 = v35[5];
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    *(p_viewFlags + 1) &= ~0x1000uLL;
    [(UIView *)self->_hostedView _layoutSizeThatFits:axes fixedAxes:width, height];
    v18 = v17;
    v20 = v19;
  }

  v31 = v18;
  v32 = v20;
  result.height = v32;
  result.width = v31;
  return result;
}

@end