@interface _UIImageSymbolVariableColorEffect
+ (id)effect;
- (BOOL)isEqual:(id)a3;
- (_UIImageSymbolVariableColorEffect)initWithCoder:(id)a3;
- (id)_nsSymbolEffectRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIImageSymbolVariableColorEffect

+ (id)effect
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS____UIImageSymbolVariableColorEffect;
  v2 = objc_msgSendSuper2(&v6, sel_effect);
  v2[2] = 0;
  v3 = +[_UIImageSymbolEffectRepeatBehavior defaultRepeatBehavior];
  v4 = v2[3];
  v2[3] = v3;

  return v2;
}

- (id)_nsSymbolEffectRepresentation
{
  v3 = [MEMORY[0x1E6982298] effect];
  v4 = v3;
  styleOptions = self->_styleOptions;
  if (styleOptions)
  {
    v8 = [v3 effectWithIterative];

    styleOptions = self->_styleOptions;
    v4 = v8;
    if ((styleOptions & 2) == 0)
    {
LABEL_3:
      if ((styleOptions & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((styleOptions & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [v4 effectWithHideInactiveLayers];

  v4 = v9;
  if ((self->_styleOptions & 4) != 0)
  {
LABEL_4:
    v6 = [v4 effectWithReversing];

    v4 = v6;
  }

LABEL_5:

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIImageSymbolVariableColorEffect;
  v5 = [(_UIImageSymbolEffect *)&v7 isEqual:v4]&& self->_styleOptions == v4[2] && [(_UIImageSymbolEffectRepeatBehavior *)self->_repeatBehavior isEqual:v4[3]];

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UIImageSymbolVariableColorEffect;
  v3 = self->_styleOptions ^ [(_UIImageSymbolEffect *)&v5 hash];
  return v3 ^ [(_UIImageSymbolEffectRepeatBehavior *)self->_repeatBehavior hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIImageSymbolVariableColorEffect;
  v4 = [(_UIImageSymbolEffect *)&v6 copyWithZone:a3];
  *(v4 + 2) = self->_styleOptions;
  objc_storeStrong(v4 + 3, self->_repeatBehavior);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  styleOptions = self->_styleOptions;
  v5 = a3;
  [v5 encodeInteger:styleOptions forKey:@"styleOptions"];
  [v5 encodeObject:self->_repeatBehavior forKey:@"repeatBehavior"];
}

- (_UIImageSymbolVariableColorEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() effect];

  if (v5)
  {
    v5->_styleOptions = [v4 decodeIntegerForKey:@"styleOptions"];
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"repeatBehavior"];
    repeatBehavior = v5->_repeatBehavior;
    v5->_repeatBehavior = v7;
  }

  return v5;
}

@end