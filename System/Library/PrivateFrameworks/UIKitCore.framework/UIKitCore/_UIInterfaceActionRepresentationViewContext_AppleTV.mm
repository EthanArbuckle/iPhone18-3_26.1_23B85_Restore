@interface _UIInterfaceActionRepresentationViewContext_AppleTV
- (CATransform3D)_enlargedTransformForSize:(SEL)size pressed:(CGSize)pressed;
- (UIView)highlightTransformTargetView;
- (_UIInterfaceActionRepresentationViewContext_AppleTV)initWithHighlightTransformTargetView:(id)view;
- (id)_newMotionEffectsGroupForHighlightedAction;
- (id)motionEffectsOnAxis:(int64_t)axis;
- (void)_applyHighlightTransform;
- (void)_insertMotionEffects;
- (void)_removeMotionEffects;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPressed:(BOOL)pressed;
@end

@implementation _UIInterfaceActionRepresentationViewContext_AppleTV

- (_UIInterfaceActionRepresentationViewContext_AppleTV)initWithHighlightTransformTargetView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = _UIInterfaceActionRepresentationViewContext_AppleTV;
  v5 = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_highlightTransformTargetView, viewCopy);
    v6->_actionLayoutAxis = -1;
    v6->_focusedSizeIncrease = 30.0;
  }

  return v6;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self _applyHighlightTransform];
  }
}

- (void)setPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    self->_pressed = pressed;
    [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self _applyHighlightTransform];
  }
}

- (void)_applyHighlightTransform
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79___UIInterfaceActionRepresentationViewContext_AppleTV__applyHighlightTransform__block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if (+[UIView _isInAnimationBlock])
  {
    v3[2](v3);
  }

  else
  {
    v4 = 0.2;
    if (self->_highlighted)
    {
      v4 = 0.1;
    }

    [UIView animateWithDuration:6 delay:v3 options:0 animations:v4 completion:0.0];
  }
}

- (CATransform3D)_enlargedTransformForSize:(SEL)size pressed:(CGSize)pressed
{
  height = pressed.height;
  width = pressed.width;
  if (pressed.width == *MEMORY[0x1E695F060] && pressed.height == *(MEMORY[0x1E695F060] + 8))
  {
    v17 = MEMORY[0x1E69792E8];
    v18 = *(MEMORY[0x1E69792E8] + 80);
    *&retstr->m31 = *(MEMORY[0x1E69792E8] + 64);
    *&retstr->m33 = v18;
    v19 = v17[7];
    *&retstr->m41 = v17[6];
    *&retstr->m43 = v19;
    v20 = v17[1];
    *&retstr->m11 = *v17;
    *&retstr->m13 = v20;
    v21 = v17[3];
    *&retstr->m21 = v17[2];
    *&retstr->m23 = v21;
  }

  else
  {
    v9 = a5;
    selfCopy = self;
    [(CATransform3D *)self focusedSizeIncrease];
    v12 = width - v11;
    v13 = height + -14.0;
    [(CATransform3D *)selfCopy focusedSizeIncrease];
    if (v9)
    {
      v14 = v14 * 0.5;
    }

    if (v12 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v12;
    }

    v16 = (v15 + v14) / v15;
    if (v16 < 1.0)
    {
      v16 = 1.0;
    }

    return CATransform3DMakeScale(retstr, v16, v16, v16);
  }

  return self;
}

- (void)_insertMotionEffects
{
  if (!self->_installedHighlightedActionMotionEffectsGroup)
  {
    v8[7] = v2;
    v8[8] = v3;
    _newMotionEffectsGroupForHighlightedAction = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self _newMotionEffectsGroupForHighlightedAction];
    installedHighlightedActionMotionEffectsGroup = self->_installedHighlightedActionMotionEffectsGroup;
    self->_installedHighlightedActionMotionEffectsGroup = _newMotionEffectsGroupForHighlightedAction;

    motionEffects = [(UIMotionEffectGroup *)self->_installedHighlightedActionMotionEffectsGroup motionEffects];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75___UIInterfaceActionRepresentationViewContext_AppleTV__insertMotionEffects__block_invoke;
    v8[3] = &unk_1E70F38E8;
    v8[4] = self;
    [motionEffects enumerateObjectsUsingBlock:v8];
  }
}

- (void)_removeMotionEffects
{
  installedHighlightedActionMotionEffectsGroup = self->_installedHighlightedActionMotionEffectsGroup;
  if (installedHighlightedActionMotionEffectsGroup)
  {
    motionEffects = [(UIMotionEffectGroup *)installedHighlightedActionMotionEffectsGroup motionEffects];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75___UIInterfaceActionRepresentationViewContext_AppleTV__removeMotionEffects__block_invoke;
    v6[3] = &unk_1E70F38E8;
    v6[4] = self;
    [motionEffects enumerateObjectsUsingBlock:v6];

    v5 = self->_installedHighlightedActionMotionEffectsGroup;
    self->_installedHighlightedActionMotionEffectsGroup = 0;
  }
}

- (id)_newMotionEffectsGroupForHighlightedAction
{
  v3 = objc_alloc_init(UIMotionEffectGroup);
  v4 = [(_UIInterfaceActionRepresentationViewContext_AppleTV *)self motionEffectsOnAxis:[(_UIInterfaceActionRepresentationViewContext_AppleTV *)self actionLayoutAxis]];
  [(UIMotionEffectGroup *)v3 setMotionEffects:v4];

  return v3;
}

- (id)motionEffectsOnAxis:(int64_t)axis
{
  array = [MEMORY[0x1E695DF70] array];
  if (axis != 1 && axis != -1 || (v5 = -[UIInterpolatingMotionEffect initWithKeyPath:type:]([UIInterpolatingMotionEffect alloc], "initWithKeyPath:type:", @"transform.rotation.x", 1), [MEMORY[0x1E696AD98] numberWithDouble:-0.0698131701], v6 = objc_claimAutoreleasedReturnValue(), -[UIInterpolatingMotionEffect setMinimumRelativeValue:](v5, "setMinimumRelativeValue:", v6), v6, objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 0.0698131701), v7 = objc_claimAutoreleasedReturnValue(), -[UIInterpolatingMotionEffect setMaximumRelativeValue:](v5, "setMaximumRelativeValue:", v7), v7, objc_msgSend(array, "addObject:", v5), v8 = -[UIInterpolatingMotionEffect initWithKeyPath:type:]([UIInterpolatingMotionEffect alloc], "initWithKeyPath:type:", @"center.y", 1), objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", -4.0), v9 = objc_claimAutoreleasedReturnValue(), -[UIInterpolatingMotionEffect setMinimumRelativeValue:](v8, "setMinimumRelativeValue:", v9), v9, objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", 4.0), v10 = objc_claimAutoreleasedReturnValue(), -[UIInterpolatingMotionEffect setMaximumRelativeValue:](v8, "setMaximumRelativeValue:", v10), v10, objc_msgSend(array, "addObject:", v8), v8, v5, axis != 1))
  {
    v11 = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"transform.rotation.y" type:0];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:-0.0698131701];
    [(UIInterpolatingMotionEffect *)v11 setMinimumRelativeValue:v12];

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:0.0698131701];
    [(UIInterpolatingMotionEffect *)v11 setMaximumRelativeValue:v13];

    [array addObject:v11];
    v14 = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:0];
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:-4.0];
    [(UIInterpolatingMotionEffect *)v14 setMinimumRelativeValue:v15];

    v16 = [MEMORY[0x1E696AD98] numberWithDouble:4.0];
    [(UIInterpolatingMotionEffect *)v14 setMaximumRelativeValue:v16];

    [array addObject:v14];
  }

  return array;
}

- (UIView)highlightTransformTargetView
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightTransformTargetView);

  return WeakRetained;
}

@end