@interface _UIPointerContentEffectAnimationBuilder
- (_UIPointerContentEffectAnimationBuilder)initWithCreationHandler:(id)handler;
- (id)createAnimation;
@end

@implementation _UIPointerContentEffectAnimationBuilder

- (_UIPointerContentEffectAnimationBuilder)initWithCreationHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = _UIPointerContentEffectAnimationBuilder;
  v5 = [(_UIPointerContentEffectAnimationBuilder *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    creationHandler = v5->_creationHandler;
    v5->_creationHandler = v6;
  }

  return v5;
}

- (id)createAnimation
{
  creationHandler = self->_creationHandler;
  if (creationHandler || ([MEMORY[0x1E696AAA8] currentHandler], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"_UIPointerArbiter.m", 102, @"creationHandler must be non-nil"), v6, (creationHandler = self->_creationHandler) != 0))
  {
    creationHandler = (creationHandler)[2](creationHandler, a2);
  }

  return creationHandler;
}

@end