@interface _UIInteractionEffect_deprecated
- (CGAffineTransform)preferredContentTransform;
- (CGRect)bounds;
- (_UIInteractionEffect_deprecated)init;
- (void)_prepareAnimatorIfNeeded;
- (void)_stopAnimations;
- (void)_updateAnimatorIfNeeded;
- (void)_updateFromTransformer:(id)transformer;
- (void)setForceFactor:(double)factor;
@end

@implementation _UIInteractionEffect_deprecated

- (_UIInteractionEffect_deprecated)init
{
  v8.receiver = self;
  v8.super_class = _UIInteractionEffect_deprecated;
  v2 = [(_UIInteractionEffect_deprecated *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_damping = xmmword_18A680D90;
    *&v2->_density = xmmword_18A680DA0;
    v2->_forceFactor = 0.0;
    v4 = MEMORY[0x1E695EFD0];
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&v2->_preferredContentTransform.a = *MEMORY[0x1E695EFD0];
    *&v2->_preferredContentTransform.c = v5;
    *&v2->_preferredContentTransform.tx = *(v4 + 32);
    [(_UIInteractionEffect_deprecated *)v2 _prepareAnimatorIfNeeded];
    v6 = v3;
  }

  return v3;
}

- (void)setForceFactor:(double)factor
{
  if (self->_forceFactor != factor)
  {
    self->_forceFactor = factor;
    [(_UIInteractionEffect_deprecated *)self _updateAnimatorIfNeeded];
  }
}

- (CGAffineTransform)preferredContentTransform
{
  v3 = *&self[2].a;
  *&retstr->a = *&self[1].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].c;
  return self;
}

- (CGRect)bounds
{
  v2 = 320.0;
  v3 = 480.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_prepareAnimatorIfNeeded
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = [[UIDynamicAnimator alloc] initWithReferenceSystem:self];
  [(_UIInteractionEffect_deprecated *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  objc_initWeak(&location, self);
  v12 = [_UIDynamicTransformer alloc];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __59___UIInteractionEffect_deprecated__prepareAnimatorIfNeeded__block_invoke;
  v29[3] = &unk_1E711B388;
  objc_copyWeak(&v30, &location);
  v13 = [(_UIDynamicTransformer *)v12 initWithActionBlock:v29];
  v14 = v5 + v9 * 0.5;
  v15 = v7 + v11 * 0.5;
  [(_UIDynamicTransformer *)v13 setCenter:v14, v15];
  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
  transformer = self->_transformer;
  self->_transformer = v13;

  v17 = v13;
  v18 = [[_UISpringBehavior alloc] initWithItem:v17 anchorPoint:v14, v15];
  [(_UISpringBehavior *)v18 setDamping:self->_damping];
  [(_UISpringBehavior *)v18 setFrequency:self->_frequency];
  [(UIDynamicAnimator *)v3 addBehavior:v18];
  springBehavior = self->_springBehavior;
  self->_springBehavior = v18;

  v20 = [UIPushBehavior alloc];
  v33[0] = v17;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v22 = [(UIPushBehavior *)v20 initWithItems:v21 mode:0];

  [(UIPushBehavior *)v22 setMagnitude:0.0];
  [(UIPushBehavior *)v22 setPushDirection:0.0, 1.0];
  [(UIDynamicAnimator *)v3 addBehavior:v22];
  forceBehavior = self->_forceBehavior;
  self->_forceBehavior = v22;

  v24 = [UIDynamicItemBehavior alloc];
  v32 = v17;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v26 = [(UIDynamicItemBehavior *)v24 initWithItems:v25];

  [(UIDynamicItemBehavior *)v26 setDensity:self->_density];
  [(UIDynamicItemBehavior *)v26 setResistance:self->_resistance];
  [(UIDynamicAnimator *)v3 addBehavior:v26];
  itemProperties = self->_itemProperties;
  self->_itemProperties = v26;

  animator = self->_animator;
  self->_animator = v3;

  [(_UIInteractionEffect_deprecated *)self _updateAnimatorIfNeeded];
}

- (void)_updateAnimatorIfNeeded
{
  [(UIPushBehavior *)self->_forceBehavior setMagnitude:fmin(self->_forceFactor * 100.0, 120.0)];
  [(_UIInteractionEffect_deprecated *)self bounds];
  v5 = v4 + v3 * 0.5;
  v8 = v7 + v6 * 0.5;
  springBehavior = self->_springBehavior;

  [(_UISpringBehavior *)springBehavior setAnchorPoint:v5, v8];
}

- (void)_updateFromTransformer:(id)transformer
{
  [transformer center];
  v5 = v4;
  [(_UIInteractionEffect_deprecated *)self bounds];
  v8 = v5 - (v7 + v6 * 0.5);
  v9 = floor((1.0 - v8 + v8 * 1.03) * 1000.0) / 1000.0;
  CGAffineTransformMakeScale(&v12, v9, v9);
  v10 = *&v12.c;
  *&self->_preferredContentTransform.a = *&v12.a;
  *&self->_preferredContentTransform.c = v10;
  *&self->_preferredContentTransform.tx = *&v12.tx;
  self->_progress = v8;
  updateBlock = self->_updateBlock;
  if (updateBlock)
  {
    updateBlock[2](updateBlock, self);
  }
}

- (void)_stopAnimations
{
  [(UIDynamicAnimator *)self->_animator removeBehavior:self->_springBehavior];
  [(UIDynamicAnimator *)self->_animator removeBehavior:self->_forceBehavior];
  animator = self->_animator;
  itemProperties = self->_itemProperties;

  [(UIDynamicAnimator *)animator removeBehavior:itemProperties];
}

@end