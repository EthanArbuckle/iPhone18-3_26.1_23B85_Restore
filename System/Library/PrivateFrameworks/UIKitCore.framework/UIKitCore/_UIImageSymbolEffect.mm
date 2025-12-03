@interface _UIImageSymbolEffect
+ (id)effect;
- (BOOL)isEqual:(id)equal;
- (_UIImageSymbolEffect)init;
- (_UIImageSymbolEffect)initWithCoder:(id)coder;
- (id)_nsSymbolEffectRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIImageSymbolEffect.m" lineNumber:166 description:@"Should never be called in abstract superclass"];

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
  p_isa = &equalCopy->super.isa;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_completionHandler == p_isa[1];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  effect = [objc_opt_class() effect];
  v5 = _Block_copy(self->_completionHandler);
  v6 = effect[1];
  effect[1] = v5;

  return effect;
}

- (_UIImageSymbolEffect)initWithCoder:(id)coder
{
  effect = [objc_opt_class() effect];

  return effect;
}

@end