@interface _UIMorphPlatterViewBase
- (_UIMorphPlatterViewBase)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)setCollapsedPreview:(id)preview;
- (void)setExpanded:(BOOL)expanded;
@end

@implementation _UIMorphPlatterViewBase

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = _UIMorphPlatterViewBase;
  [(UIView *)&v7 didMoveToWindow];
  if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
  {
    window = [(UIView *)self window];

    if (!window)
    {
      collapsedPreview = [(_UIMorphPlatterViewBase *)self collapsedPreview];
      view = [collapsedPreview view];

      _internalTraitOverrides = [(UIView *)view _internalTraitOverrides];
      [(_UITraitOverrides *)_internalTraitOverrides _removeTraitToken:?];
    }
  }
}

- (_UIMorphPlatterViewBase)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UIMorphPlatterViewBase;
  result = [(UIView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_hidesCollapsedSourceView = 1;
    result->_shouldMorphContents = 1;
    result->_collapsedShadowIntensity = 1.0;
    result->_expandedShadowIntensity = 1.0;
  }

  return result;
}

- (void)setExpanded:(BOOL)expanded
{
  if (self->_expanded != expanded)
  {
    self->_expanded = expanded;
    if (expanded)
    {
      userInterfaceLevel = 1;
    }

    else
    {
      collapsedPreview = [(_UIMorphPlatterViewBase *)self collapsedPreview];
      target = [collapsedPreview target];
      container = [target container];
      traitCollection = [container traitCollection];
      userInterfaceLevel = [traitCollection userInterfaceLevel];
    }

    if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
    {
      collapsedPreview2 = [(_UIMorphPlatterViewBase *)self collapsedPreview];
      view = [collapsedPreview2 view];

      _internalTraitOverrides = [(UIView *)view _internalTraitOverrides];
      [_internalTraitOverrides setUserInterfaceLevel:userInterfaceLevel];
    }

    _internalTraitOverrides2 = [(UIView *)self _internalTraitOverrides];
    [_internalTraitOverrides2 setUserInterfaceLevel:userInterfaceLevel];
  }
}

- (void)setCollapsedPreview:(id)preview
{
  previewCopy = preview;
  collapsedPreview = self->_collapsedPreview;
  if (collapsedPreview != previewCopy)
  {
    v11 = previewCopy;
    if (collapsedPreview)
    {
      if ([(_UIMorphPlatterViewBase *)self alwaysCompact])
      {
        view = [(UITargetedPreview *)self->_collapsedPreview view];
        view2 = [(UITargetedPreview *)v11 view];

        if (view != view2)
        {
          view3 = [(UITargetedPreview *)self->_collapsedPreview view];
          _internalTraitOverrides = [(UIView *)view3 _internalTraitOverrides];
          [(_UITraitOverrides *)_internalTraitOverrides _removeTraitToken:?];
        }
      }
    }

    objc_storeStrong(&self->_collapsedPreview, preview);
    previewCopy = v11;
  }
}

@end