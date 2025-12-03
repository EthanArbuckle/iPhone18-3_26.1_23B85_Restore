@interface _UIImageSymbolTransition
+ (id)transition;
- (BOOL)isEqual:(id)equal;
- (_UIImageSymbolTransition)init;
- (_UIImageSymbolTransition)initWithCoder:(id)coder;
- (id)_nsSymbolContentTransitionRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_performCompletionHandler;
@end

@implementation _UIImageSymbolTransition

+ (id)transition
{
  v2 = objc_opt_new();

  return v2;
}

- (_UIImageSymbolTransition)init
{
  v3.receiver = self;
  v3.super_class = _UIImageSymbolTransition;
  return [(_UIImageSymbolTransition *)&v3 init];
}

- (id)_nsSymbolContentTransitionRepresentation
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIImageSymbolEffect.m" lineNumber:792 description:@"Should never be called in abstract superclass"];

  return 0;
}

- (void)_performCompletionHandler
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, self);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    completionHandler = [(_UIImageSymbolTransition *)self completionHandler];
    completionHandler2 = [(_UIImageSymbolTransition *)v5 completionHandler];
    v8 = completionHandler == completionHandler2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  transition = [objc_opt_class() transition];
  v5 = _Block_copy(self->_completionHandler);
  v6 = transition[1];
  transition[1] = v5;

  return transition;
}

- (_UIImageSymbolTransition)initWithCoder:(id)coder
{
  effect = [objc_opt_class() effect];

  return effect;
}

@end