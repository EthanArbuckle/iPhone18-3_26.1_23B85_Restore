@interface _UIImageSymbolPulseEffect
+ (id)effect;
- (BOOL)isEqual:(id)equal;
- (_UIImageSymbolPulseEffect)initWithCoder:(id)coder;
- (id)_nsSymbolEffectRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIImageSymbolPulseEffect

+ (id)effect
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS____UIImageSymbolPulseEffect;
  v2 = objc_msgSendSuper2(&v6, sel_effect);
  *(v2 + 16) = 1;
  v3 = +[_UIImageSymbolEffectRepeatBehavior defaultRepeatBehavior];
  v4 = *(v2 + 24);
  *(v2 + 24) = v3;

  return v2;
}

- (id)_nsSymbolEffectRepresentation
{
  effect = [MEMORY[0x1E6982280] effect];
  if ([(_UIImageSymbolPulseEffect *)self byLayer])
  {
    [effect effectWithByLayer];
  }

  else
  {
    [effect effectWithWholeSymbol];
  }
  v4 = ;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIImageSymbolPulseEffect;
  v5 = [(_UIImageSymbolEffect *)&v7 isEqual:equalCopy]&& self->_byLayer == *(equalCopy + 16) && [(_UIImageSymbolEffectRepeatBehavior *)self->_repeatBehavior isEqual:equalCopy[3]];

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UIImageSymbolPulseEffect;
  v3 = [(_UIImageSymbolEffect *)&v5 hash];
  return [(_UIImageSymbolEffectRepeatBehavior *)self->_repeatBehavior hash]^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIImageSymbolPulseEffect;
  v4 = [(_UIImageSymbolEffect *)&v6 copyWithZone:zone];
  *(v4 + 16) = self->_byLayer;
  objc_storeStrong(v4 + 3, self->_repeatBehavior);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  byLayer = self->_byLayer;
  coderCopy = coder;
  [coderCopy encodeBool:byLayer forKey:@"byLayer"];
  [coderCopy encodeObject:self->_repeatBehavior forKey:@"repeatBehavior"];
}

- (_UIImageSymbolPulseEffect)initWithCoder:(id)coder
{
  coderCopy = coder;
  effect = [objc_opt_class() effect];

  if (effect)
  {
    effect->_byLayer = [coderCopy decodeBoolForKey:@"byLayer"];
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"repeatBehavior"];
    repeatBehavior = effect->_repeatBehavior;
    effect->_repeatBehavior = v7;
  }

  return effect;
}

@end