@interface _UIImageSymbolPulseEffect
+ (id)effect;
- (BOOL)isEqual:(id)a3;
- (_UIImageSymbolPulseEffect)initWithCoder:(id)a3;
- (id)_nsSymbolEffectRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIImageSymbolPulseEffect

+ (id)effect
{
  v6.receiver = a1;
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
  v3 = [MEMORY[0x1E6982280] effect];
  if ([(_UIImageSymbolPulseEffect *)self byLayer])
  {
    [v3 effectWithByLayer];
  }

  else
  {
    [v3 effectWithWholeSymbol];
  }
  v4 = ;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIImageSymbolPulseEffect;
  v5 = [(_UIImageSymbolEffect *)&v7 isEqual:v4]&& self->_byLayer == *(v4 + 16) && [(_UIImageSymbolEffectRepeatBehavior *)self->_repeatBehavior isEqual:v4[3]];

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UIImageSymbolPulseEffect;
  v3 = [(_UIImageSymbolEffect *)&v5 hash];
  return [(_UIImageSymbolEffectRepeatBehavior *)self->_repeatBehavior hash]^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIImageSymbolPulseEffect;
  v4 = [(_UIImageSymbolEffect *)&v6 copyWithZone:a3];
  *(v4 + 16) = self->_byLayer;
  objc_storeStrong(v4 + 3, self->_repeatBehavior);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  byLayer = self->_byLayer;
  v5 = a3;
  [v5 encodeBool:byLayer forKey:@"byLayer"];
  [v5 encodeObject:self->_repeatBehavior forKey:@"repeatBehavior"];
}

- (_UIImageSymbolPulseEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() effect];

  if (v5)
  {
    v5->_byLayer = [v4 decodeBoolForKey:@"byLayer"];
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"repeatBehavior"];
    repeatBehavior = v5->_repeatBehavior;
    v5->_repeatBehavior = v7;
  }

  return v5;
}

@end