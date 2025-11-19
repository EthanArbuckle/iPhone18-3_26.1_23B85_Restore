@interface _UIImageSymbolEffect
+ (id)effect;
- (BOOL)isEqual:(id)a3;
- (_UIImageSymbolEffect)init;
- (_UIImageSymbolEffect)initWithCoder:(id)a3;
- (id)_nsSymbolEffectRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_performCompletionHandler;
@end

@implementation _UIImageSymbolEffect

+ (id)effect
{
  v2 = objc_opt_new();

  return v2;
}

- (_UIImageSymbolEffect)init
{
  v3.receiver = self;
  v3.super_class = _UIImageSymbolEffect;
  return [(_UIImageSymbolEffect *)&v3 init];
}

- (id)_nsSymbolEffectRepresentation
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIImageSymbolEffect.m" lineNumber:166 description:@"Should never be called in abstract superclass"];

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
  p_isa = &v4->super.isa;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_completionHandler == p_isa[1];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() effect];
  v5 = _Block_copy(self->_completionHandler);
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (_UIImageSymbolEffect)initWithCoder:(id)a3
{
  v4 = [objc_opt_class() effect];

  return v4;
}

@end