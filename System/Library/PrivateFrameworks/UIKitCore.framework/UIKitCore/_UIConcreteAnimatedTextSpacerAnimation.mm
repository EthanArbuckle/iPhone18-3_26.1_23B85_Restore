@interface _UIConcreteAnimatedTextSpacerAnimation
- (_UIConcreteAnimatedTextSpacerAnimation)initWithAnimationInfo:(id)info updateBlock:(id)block finalizeBlock:(id)finalizeBlock;
- (void)finalize;
- (void)setProgress:(float)progress;
@end

@implementation _UIConcreteAnimatedTextSpacerAnimation

- (_UIConcreteAnimatedTextSpacerAnimation)initWithAnimationInfo:(id)info updateBlock:(id)block finalizeBlock:(id)finalizeBlock
{
  infoCopy = info;
  blockCopy = block;
  finalizeBlockCopy = finalizeBlock;
  v19.receiver = self;
  v19.super_class = _UIConcreteAnimatedTextSpacerAnimation;
  v12 = [(_UIConcreteAnimatedTextSpacerAnimation *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_animationInfo, info);
    v14 = [blockCopy copy];
    updateBlock = v13->_updateBlock;
    v13->_updateBlock = v14;

    v16 = [finalizeBlockCopy copy];
    finalizeBlock = v13->_finalizeBlock;
    v13->_finalizeBlock = v16;
  }

  return v13;
}

- (void)setProgress:(float)progress
{
  if (!self->_isFinalized)
  {
    self->_progress = progress;
    [(_UIAnimatedTextSpacerAnimationInfo *)self->_animationInfo startHeight];
    v7 = v6;
    [(_UIAnimatedTextSpacerAnimationInfo *)self->_animationInfo endHeight];
    v8.n128_f64[0] = v7 + (v8.n128_f64[0] - v7) * progress;
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