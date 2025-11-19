@interface _UIConcreteAnimatedTextSpacerAnimation
- (_UIConcreteAnimatedTextSpacerAnimation)initWithAnimationInfo:(id)a3 updateBlock:(id)a4 finalizeBlock:(id)a5;
- (void)finalize;
- (void)setProgress:(float)a3;
@end

@implementation _UIConcreteAnimatedTextSpacerAnimation

- (_UIConcreteAnimatedTextSpacerAnimation)initWithAnimationInfo:(id)a3 updateBlock:(id)a4 finalizeBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = _UIConcreteAnimatedTextSpacerAnimation;
  v12 = [(_UIConcreteAnimatedTextSpacerAnimation *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_animationInfo, a3);
    v14 = [v10 copy];
    updateBlock = v13->_updateBlock;
    v13->_updateBlock = v14;

    v16 = [v11 copy];
    finalizeBlock = v13->_finalizeBlock;
    v13->_finalizeBlock = v16;
  }

  return v13;
}

- (void)setProgress:(float)a3
{
  if (!self->_isFinalized)
  {
    self->_progress = a3;
    [(_UIAnimatedTextSpacerAnimationInfo *)self->_animationInfo startHeight];
    v7 = v6;
    [(_UIAnimatedTextSpacerAnimationInfo *)self->_animationInfo endHeight];
    v8.n128_f64[0] = v7 + (v8.n128_f64[0] - v7) * a3;
    v9 = *(self->_updateBlock + 2);

    v9(v8);
  }
}

- (void)finalize
{
  (*(self->_finalizeBlock + 2))();
  updateBlock = self->_updateBlock;
  self->_updateBlock = 0;

  finalizeBlock = self->_finalizeBlock;
  self->_finalizeBlock = 0;

  self->_isFinalized = 1;
}

@end