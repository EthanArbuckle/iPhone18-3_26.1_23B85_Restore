@interface _UITextLayoutFragmentViewBase
- (CGPoint)_activeContainerOrigin;
- (CGPoint)containerOrigin;
- (CGRect)_activeClipRect;
- (CGRect)_activeLayoutFragmentFrame;
- (CGRect)clipFrame;
- (CGRect)clipRect;
- (CGSize)containerSize;
- (_UITextLayoutFragmentViewBase)initWithLayoutFragment:(id)a3 containerOrigin:(CGPoint)a4 containerSize:(CGSize)a5 clipRect:(CGRect)a6;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_updateGeometry;
- (void)_updateTextAttachmentGeometry;
- (void)didMoveToSuperview;
- (void)enumerateTextAttachmentViewsUsingBlock:(id)a3;
- (void)layoutSubviews;
- (void)performChanges:(id)a3;
@end

@implementation _UITextLayoutFragmentViewBase

- (void)_updateGeometry
{
  [(_UITextLayoutFragmentViewBase *)self _activeLayoutFragmentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self _currentScreenScale];
  v12 = UIRectIntegralWithScale(v4, v6, v8, v10, v11);
  v14 = v13;
  v15 = +[_UITextKit2LayoutController coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled];
  [(NSTextLayoutFragment *)self->_layoutFragment renderingSurfaceBounds];
  v47 = CGRectIntegral(v46);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  v19 = v12 + v47.origin.x;
  [(_UITextLayoutFragmentViewBase *)self _activeContainerOrigin];
  if (!v15)
  {
    v19 = x;
    v20 = v12 + v20;
  }

  v22 = v19 + v20;
  v44 = y;
  v23 = y + v14 + v21;
  [(_UITextLayoutFragmentViewBase *)self _activeClipRect];
  v24 = v48.origin.x;
  v25 = v48.origin.y;
  v26 = v48.size.width;
  v27 = v48.size.height;
  if (CGRectIsNull(v48))
  {
    v28 = width;
  }

  else
  {
    v42 = v19;
    v49.origin.x = v24;
    v49.origin.y = v25;
    v49.size.width = v26;
    v49.size.height = v27;
    MinX = CGRectGetMinX(v49);
    v50.origin.x = v22;
    v50.origin.y = v23;
    v50.size.width = width;
    v50.size.height = height;
    v30 = CGRectGetMinX(v50);
    if (MinX < v30)
    {
      MinX = v30;
    }

    v51.origin.x = v24;
    v31 = v23;
    v51.origin.y = v25;
    v51.size.width = v26;
    v51.size.height = v27;
    MaxX = CGRectGetMaxX(v51);
    v52.origin.x = v22;
    v52.origin.y = v23;
    v52.size.width = width;
    v52.size.height = height;
    v33 = CGRectGetMaxX(v52);
    if (MaxX < v33)
    {
      v33 = MaxX;
    }

    v34 = v33 - MinX;
    v28 = width;
    if (v33 - MinX <= 0.0)
    {
      v19 = v42;
    }

    else
    {
      v53.origin.x = MinX;
      v53.origin.y = v23;
      v53.size.width = v34;
      v53.size.height = height;
      v35 = MinX;
      v36 = CGRectGetMinX(v53);
      v54.origin.x = v22;
      v54.origin.y = v31;
      v54.size.width = width;
      v54.size.height = height;
      v19 = v42 + v36 - CGRectGetMinX(v54);
      v22 = v35;
      v28 = v34;
    }

    v23 = v31;
  }

  [(UIView *)self _currentScreenScale];
  v38 = UIRectIntegralWithScale(v22, v23, v28, height, v37);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __48___UITextLayoutFragmentViewBase__updateGeometry__block_invoke;
  v45[3] = &unk_1E70F6C80;
  v45[4] = self;
  *&v45[5] = v38;
  v45[6] = v39;
  v45[7] = v40;
  v45[8] = v41;
  *&v45[9] = v19;
  *&v45[10] = v44;
  v45[11] = v40;
  v45[12] = v41;
  [(UIView *)self _performChangesDeferringAutoresizingMaskConstraintsUpdate:v45];
}

- (CGRect)_activeLayoutFragmentFrame
{
  [(NSTextLayoutFragment *)self->_layoutFragment layoutFragmentFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)_activeContainerOrigin
{
  x = self->_containerOrigin.x;
  y = self->_containerOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)_activeClipRect
{
  x = self->_clipRect.origin.x;
  y = self->_clipRect.origin.y;
  width = self->_clipRect.size.width;
  height = self->_clipRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = _UITextLayoutFragmentViewBase;
  [(UIView *)&v4 didMoveToSuperview];
  if (self->_textAttachmentGeometryNeedsUpdate)
  {
    v3 = [(UIView *)self superview];

    if (v3)
    {
      [(_UITextLayoutFragmentViewBase *)self _updateTextAttachmentGeometry];
    }
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _UITextLayoutFragmentViewBase;
  [(UIView *)&v4 layoutSubviews];
  v3 = [(UIView *)self superview];

  if (v3)
  {
    [(_UITextLayoutFragmentViewBase *)self _updateTextAttachmentGeometry];
  }

  else
  {
    self->_textAttachmentGeometryNeedsUpdate = 1;
  }
}

- (void)_updateTextAttachmentGeometry
{
  self->_textAttachmentGeometryNeedsUpdate = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62___UITextLayoutFragmentViewBase__updateTextAttachmentGeometry__block_invoke;
  v2[3] = &unk_1E70F6CA8;
  v2[4] = self;
  [(_UITextLayoutFragmentViewBase *)self enumerateTextAttachmentViewsUsingBlock:v2];
}

- (CGRect)clipRect
{
  x = self->_clipRect.origin.x;
  y = self->_clipRect.origin.y;
  width = self->_clipRect.size.width;
  height = self->_clipRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)containerOrigin
{
  x = self->_containerOrigin.x;
  y = self->_containerOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_UITextLayoutFragmentViewBase)initWithLayoutFragment:(id)a3 containerOrigin:(CGPoint)a4 containerSize:(CGSize)a5 clipRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5.height;
  v11 = a5.width;
  v12 = a4.y;
  v13 = a4.x;
  v16 = a3;
  v27.receiver = self;
  v27.super_class = _UITextLayoutFragmentViewBase;
  v17 = [(UIView *)&v27 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v18 = v17;
  if (v17)
  {
    [(UIView *)v17 setOpaque:0];
    [(UIView *)v18 setContentMode:3];
    objc_storeStrong(&v18->_layoutFragment, a3);
    v18->_containerOrigin.x = v13;
    v18->_containerOrigin.y = v12;
    v18->_containerSize.width = v11;
    v18->_containerSize.height = v10;
    v18->_clipRect.origin.x = x;
    v18->_clipRect.origin.y = y;
    v18->_clipRect.size.width = width;
    v18->_clipRect.size.height = height;
    [(_UITextLayoutFragmentViewBase *)v18 _updateGeometry];
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v19 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar >= 1)
    {
      v21 = _UIInternalPreference_TextLayoutFragmentShowFrames;
      if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_TextLayoutFragmentShowFrames)
      {
        while (v19 >= v21)
        {
          _UIInternalPreferenceSync(v19, &_UIInternalPreference_TextLayoutFragmentShowFrames, @"TextLayoutFragmentShowFrames", _UIInternalPreferenceUpdateBool);
          v21 = _UIInternalPreference_TextLayoutFragmentShowFrames;
          if (v19 == _UIInternalPreference_TextLayoutFragmentShowFrames)
          {
            goto LABEL_5;
          }
        }

        if (byte_1ED48A8FC)
        {
          v22 = +[UIColor systemTealColor];
          v23 = [v22 colorWithAlphaComponent:0.5];
          v24 = [v23 CGColor];
          v25 = [(UIView *)v18 layer];
          [v25 setBorderColor:v24];

          v26 = [(UIView *)v18 layer];
          [v26 setBorderWidth:1.0];
        }
      }
    }
  }

LABEL_5:

  return v18;
}

- (void)performChanges:(id)a3
{
  (*(a3 + 2))(a3, self);

  [(_UITextLayoutFragmentViewBase *)self _updateGeometry];
}

- (void)enumerateTextAttachmentViewsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSTextLayoutFragment *)self->_layoutFragment textElement];

  if (v5)
  {
    v6 = [(NSTextLayoutFragment *)self->_layoutFragment textAttachmentViewProviders];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72___UITextLayoutFragmentViewBase_enumerateTextAttachmentViewsUsingBlock___block_invoke;
    v7[3] = &unk_1E70F6CD0;
    v7[4] = self;
    v8 = v4;
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = _UITextLayoutFragmentViewBase;
  v5 = [(UIView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (CGSize)containerSize
{
  width = self->_containerSize.width;
  height = self->_containerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)clipFrame
{
  x = self->_clipFrame.origin.x;
  y = self->_clipFrame.origin.y;
  width = self->_clipFrame.size.width;
  height = self->_clipFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end