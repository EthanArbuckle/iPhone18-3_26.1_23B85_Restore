@interface _UIDocumentUnavailablePortalContainerView
- (void)initWithSourceView:(void *)view;
- (void)layoutSubviews;
@end

@implementation _UIDocumentUnavailablePortalContainerView

- (void)initWithSourceView:(void *)view
{
  viewCopy = view;
  if (view)
  {
    [a2 bounds];
    v22.receiver = viewCopy;
    v22.super_class = _UIDocumentUnavailablePortalContainerView;
    v4 = objc_msgSendSuper2(&v22, sel_initWithFrame_);
    viewCopy = v4;
    if (v4)
    {
      v5 = *MEMORY[0x1E69796E8];
      layer = [v4 layer];
      [layer setCornerCurve:v5];

      layer2 = [viewCopy layer];
      LODWORD(v8) = 1036831949;
      [layer2 setShadowOpacity:v8];

      layer3 = [viewCopy layer];
      [layer3 setShadowRadius:40.0];

      layer4 = [viewCopy layer];
      [layer4 setShadowOffset:{0.0, 8.0}];

      v11 = +[UIColor blackColor];
      cGColor = [v11 CGColor];
      layer5 = [viewCopy layer];
      [layer5 setShadowColor:cGColor];

      LODWORD(v11) = _UISolariumEnabled();
      layer6 = [viewCopy layer];
      v15 = layer6;
      v16 = 32.0;
      if (!v11)
      {
        v16 = 13.0;
      }

      [layer6 setCornerRadius:v16];

      v17 = [_UIPortalView alloc];
      [viewCopy bounds];
      v18 = [(_UIPortalView *)v17 initWithFrame:?];
      [(UIView *)v18 setAutoresizingMask:18];
      [(_UIPortalView *)v18 setSourceView:a2];
      [(_UIPortalView *)v18 setAllowsBackdropGroups:1];
      [(_UIPortalView *)v18 _setPrefersClientLayer:1];
      v19 = viewCopy[51];
      viewCopy[51] = v18;
      v20 = v18;

      [viewCopy addSubview:v20];
    }
  }

  return viewCopy;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _UIDocumentUnavailablePortalContainerView;
  [(UIView *)&v5 layoutSubviews];
  [(UIView *)self _intersectedSceneCornerRadii];
  layer = [(UIView *)self layer];
  v4[0] = v4[4];
  v4[1] = v4[5];
  v4[2] = v4[6];
  v4[3] = v4[7];
  [layer setCornerRadii:v4];
}

@end