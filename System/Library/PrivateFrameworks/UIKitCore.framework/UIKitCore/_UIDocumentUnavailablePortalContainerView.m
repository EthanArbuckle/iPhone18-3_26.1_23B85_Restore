@interface _UIDocumentUnavailablePortalContainerView
- (void)initWithSourceView:(void *)a1;
- (void)layoutSubviews;
@end

@implementation _UIDocumentUnavailablePortalContainerView

- (void)initWithSourceView:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    [a2 bounds];
    v22.receiver = v2;
    v22.super_class = _UIDocumentUnavailablePortalContainerView;
    v4 = objc_msgSendSuper2(&v22, sel_initWithFrame_);
    v2 = v4;
    if (v4)
    {
      v5 = *MEMORY[0x1E69796E8];
      v6 = [v4 layer];
      [v6 setCornerCurve:v5];

      v7 = [v2 layer];
      LODWORD(v8) = 1036831949;
      [v7 setShadowOpacity:v8];

      v9 = [v2 layer];
      [v9 setShadowRadius:40.0];

      v10 = [v2 layer];
      [v10 setShadowOffset:{0.0, 8.0}];

      v11 = +[UIColor blackColor];
      v12 = [v11 CGColor];
      v13 = [v2 layer];
      [v13 setShadowColor:v12];

      LODWORD(v11) = _UISolariumEnabled();
      v14 = [v2 layer];
      v15 = v14;
      v16 = 32.0;
      if (!v11)
      {
        v16 = 13.0;
      }

      [v14 setCornerRadius:v16];

      v17 = [_UIPortalView alloc];
      [v2 bounds];
      v18 = [(_UIPortalView *)v17 initWithFrame:?];
      [(UIView *)v18 setAutoresizingMask:18];
      [(_UIPortalView *)v18 setSourceView:a2];
      [(_UIPortalView *)v18 setAllowsBackdropGroups:1];
      [(_UIPortalView *)v18 _setPrefersClientLayer:1];
      v19 = v2[51];
      v2[51] = v18;
      v20 = v18;

      [v2 addSubview:v20];
    }
  }

  return v2;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _UIDocumentUnavailablePortalContainerView;
  [(UIView *)&v5 layoutSubviews];
  [(UIView *)self _intersectedSceneCornerRadii];
  v3 = [(UIView *)self layer];
  v4[0] = v4[4];
  v4[1] = v4[5];
  v4[2] = v4[6];
  v4[3] = v4[7];
  [v3 setCornerRadii:v4];
}

@end