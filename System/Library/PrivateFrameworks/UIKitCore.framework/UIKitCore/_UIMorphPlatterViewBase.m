@interface _UIMorphPlatterViewBase
- (_UIMorphPlatterViewBase)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)setCollapsedPreview:(id)a3;
- (void)setExpanded:(BOOL)a3;
@end

@implementation _UIMorphPlatterViewBase

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = _UIMorphPlatterViewBase;
  [(UIView *)&v7 didMoveToWindow];
  if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
  {
    v3 = [(UIView *)self window];

    if (!v3)
    {
      v4 = [(_UIMorphPlatterViewBase *)self collapsedPreview];
      v5 = [v4 view];

      v6 = [(UIView *)v5 _internalTraitOverrides];
      [(_UITraitOverrides *)v6 _removeTraitToken:?];
    }
  }
}

- (_UIMorphPlatterViewBase)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UIMorphPlatterViewBase;
  result = [(UIView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_hidesCollapsedSourceView = 1;
    result->_shouldMorphContents = 1;
    result->_collapsedShadowIntensity = 1.0;
    result->_expandedShadowIntensity = 1.0;
  }

  return result;
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    self->_expanded = a3;
    if (a3)
    {
      v5 = 1;
    }

    else
    {
      v6 = [(_UIMorphPlatterViewBase *)self collapsedPreview];
      v7 = [v6 target];
      v8 = [v7 container];
      v9 = [v8 traitCollection];
      v5 = [v9 userInterfaceLevel];
    }

    if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
    {
      v10 = [(_UIMorphPlatterViewBase *)self collapsedPreview];
      v11 = [v10 view];

      v12 = [(UIView *)v11 _internalTraitOverrides];
      [v12 setUserInterfaceLevel:v5];
    }

    v13 = [(UIView *)self _internalTraitOverrides];
    [v13 setUserInterfaceLevel:v5];
  }
}

- (void)setCollapsedPreview:(id)a3
{
  v5 = a3;
  collapsedPreview = self->_collapsedPreview;
  if (collapsedPreview != v5)
  {
    v11 = v5;
    if (collapsedPreview)
    {
      if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
      {
        v7 = [(UITargetedPreview *)self->_collapsedPreview view];
        v8 = [(UITargetedPreview *)v11 view];

        if (v7 != v8)
        {
          v9 = [(UITargetedPreview *)self->_collapsedPreview view];
          v10 = [(UIView *)v9 _internalTraitOverrides];
          [(_UITraitOverrides *)v10 _removeTraitToken:?];
        }
      }
    }

    objc_storeStrong(&self->_collapsedPreview, a3);
    v5 = v11;
  }
}

@end