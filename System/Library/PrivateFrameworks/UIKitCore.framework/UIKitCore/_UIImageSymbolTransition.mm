@interface _UIImageSymbolTransition
+ (id)transition;
- (BOOL)isEqual:(id)a3;
- (_UIImageSymbolTransition)init;
- (_UIImageSymbolTransition)initWithCoder:(id)a3;
- (id)_nsSymbolContentTransitionRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIImageSymbolEffect.m" lineNumber:792 description:@"Should never be called in abstract superclass"];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(_UIImageSymbolTransition *)self completionHandler];
    v7 = [(_UIImageSymbolTransition *)v5 completionHandler];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() transition];
  v5 = _Block_copy(self->_completionHandler);
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (_UIImageSymbolTransition)initWithCoder:(id)a3
{
  v4 = [objc_opt_class() effect];

  return v4;
}

@end