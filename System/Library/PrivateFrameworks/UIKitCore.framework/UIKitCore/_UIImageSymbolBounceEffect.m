@interface _UIImageSymbolBounceEffect
+ (id)effect;
- (BOOL)isEqual:(id)a3;
- (_UIImageSymbolBounceEffect)initWithCoder:(id)a3;
- (id)_nsSymbolEffectRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIImageSymbolBounceEffect

+ (id)effect
{
  v6.receiver = a1;
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
    v4 = [MEMORY[0x1E6982248] bounceDownEffect];
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
    v4 = ;
  }

  v5 = v4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIImageSymbolBounceEffect;
  v5 = [(_UIImageSymbolEffect *)&v7 isEqual:v4]&& self->_bounceDirection == v4[3] && self->_byLayer == *(v4 + 16) && [(_UIImageSymbolEffectRepeatBehavior *)self->_repeatBehavior isEqual:v4[4]];

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UIImageSymbolBounceEffect;
  v3 = self->_bounceDirection ^ [(_UIImageSymbolEffect *)&v5 hash];
  return v3 ^ [(_UIImageSymbolEffectRepeatBehavior *)self->_repeatBehavior hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIImageSymbolBounceEffect;
  v4 = [(_UIImageSymbolEffect *)&v6 copyWithZone:a3];
  *(v4 + 3) = self->_bounceDirection;
  *(v4 + 16) = self->_byLayer;
  objc_storeStrong(v4 + 4, self->_repeatBehavior);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  bounceDirection = self->_bounceDirection;
  v5 = a3;
  [v5 encodeInteger:bounceDirection forKey:@"bounceDirection"];
  [v5 encodeBool:self->_byLayer forKey:@"byLayer"];
  [v5 encodeObject:self->_repeatBehavior forKey:@"repeatBehavior"];
}

- (_UIImageSymbolBounceEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() effect];

  if (v5)
  {
    v5->_bounceDirection = [v4 decodeIntegerForKey:@"bounceDirection"];
    v5->_byLayer = [v4 decodeBoolForKey:@"byLayer"];
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"repeatBehavior"];
    repeatBehavior = v5->_repeatBehavior;
    v5->_repeatBehavior = v7;
  }

  return v5;
}

@end