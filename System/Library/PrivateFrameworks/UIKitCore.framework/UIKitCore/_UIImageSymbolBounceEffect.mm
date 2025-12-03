@interface _UIImageSymbolBounceEffect
+ (id)effect;
- (BOOL)isEqual:(id)equal;
- (_UIImageSymbolBounceEffect)initWithCoder:(id)coder;
- (id)_nsSymbolEffectRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIImageSymbolBounceEffect

+ (id)effect
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS____UIImageSymbolBounceEffect;
  v2 = objc_msgSendSuper2(&v6, sel_effect);
  *(v2 + 24) = 0;
  *(v2 + 16) = 1;
  v3 = +[_UIImageSymbolEffectRepeatBehavior defaultRepeatBehavior];
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;

  return v2;
}

- (id)_nsSymbolEffectRepresentation
{
  bounceDirection = self->_bounceDirection;
  if (bounceDirection == 2)
  {
    bounceDownEffect = [MEMORY[0x1E6982248] bounceDownEffect];
  }

  else
  {
    if (bounceDirection == 1)
    {
      [MEMORY[0x1E6982248] bounceUpEffect];
    }

    else
    {
      [MEMORY[0x1E6982248] effect];
    }
    bounceDownEffect = ;
  }

  v5 = bounceDownEffect;
  if ([(_UIImageSymbolBounceEffect *)self byLayer])
  {
    [v5 effectWithByLayer];
  }

  else
  {
    [v5 effectWithWholeSymbol];
  }
  v6 = ;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIImageSymbolBounceEffect;
  v5 = [(_UIImageSymbolEffect *)&v7 isEqual:equalCopy]&& self->_bounceDirection == equalCopy[3] && self->_byLayer == *(equalCopy + 16) && [(_UIImageSymbolEffectRepeatBehavior *)self->_repeatBehavior isEqual:equalCopy[4]];

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UIImageSymbolBounceEffect;
  v3 = self->_bounceDirection ^ [(_UIImageSymbolEffect *)&v5 hash];
  return v3 ^ [(_UIImageSymbolEffectRepeatBehavior *)self->_repeatBehavior hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIImageSymbolBounceEffect;
  v4 = [(_UIImageSymbolEffect *)&v6 copyWithZone:zone];
  *(v4 + 3) = self->_bounceDirection;
  *(v4 + 16) = self->_byLayer;
  objc_storeStrong(v4 + 4, self->_repeatBehavior);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  bounceDirection = self->_bounceDirection;
  coderCopy = coder;
  [coderCopy encodeInteger:bounceDirection forKey:@"bounceDirection"];
  [coderCopy encodeBool:self->_byLayer forKey:@"byLayer"];
  [coderCopy encodeObject:self->_repeatBehavior forKey:@"repeatBehavior"];
}

- (_UIImageSymbolBounceEffect)initWithCoder:(id)coder
{
  coderCopy = coder;
  effect = [objc_opt_class() effect];

  if (effect)
  {
    effect->_bounceDirection = [coderCopy decodeIntegerForKey:@"bounceDirection"];
    effect->_byLayer = [coderCopy decodeBoolForKey:@"byLayer"];
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"repeatBehavior"];
    repeatBehavior = effect->_repeatBehavior;
    effect->_repeatBehavior = v7;
  }

  return effect;
}

@end