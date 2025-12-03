@interface _UIImageSymbolVariableColorEffect
+ (id)effect;
- (BOOL)isEqual:(id)equal;
- (_UIImageSymbolVariableColorEffect)initWithCoder:(id)coder;
- (id)_nsSymbolEffectRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIImageSymbolVariableColorEffect

+ (id)effect
{
  v6.receiver = self;
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
  effect = [MEMORY[0x1E6982298] effect];
  v4 = effect;
  styleOptions = self->_styleOptions;
  if (styleOptions)
  {
    effectWithIterative = [effect effectWithIterative];

    styleOptions = self->_styleOptions;
    v4 = effectWithIterative;
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

  effectWithHideInactiveLayers = [v4 effectWithHideInactiveLayers];

  v4 = effectWithHideInactiveLayers;
  if ((self->_styleOptions & 4) != 0)
  {
LABEL_4:
    effectWithReversing = [v4 effectWithReversing];

    v4 = effectWithReversing;
  }

LABEL_5:

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIImageSymbolVariableColorEffect;
  v5 = [(_UIImageSymbolEffect *)&v7 isEqual:equalCopy]&& self->_styleOptions == equalCopy[2] && [(_UIImageSymbolEffectRepeatBehavior *)self->_repeatBehavior isEqual:equalCopy[3]];

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UIImageSymbolVariableColorEffect;
  v3 = self->_styleOptions ^ [(_UIImageSymbolEffect *)&v5 hash];
  return v3 ^ [(_UIImageSymbolEffectRepeatBehavior *)self->_repeatBehavior hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIImageSymbolVariableColorEffect;
  v4 = [(_UIImageSymbolEffect *)&v6 copyWithZone:zone];
  *(v4 + 2) = self->_styleOptions;
  objc_storeStrong(v4 + 3, self->_repeatBehavior);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  styleOptions = self->_styleOptions;
  coderCopy = coder;
  [coderCopy encodeInteger:styleOptions forKey:@"styleOptions"];
  [coderCopy encodeObject:self->_repeatBehavior forKey:@"repeatBehavior"];
}

- (_UIImageSymbolVariableColorEffect)initWithCoder:(id)coder
{
  coderCopy = coder;
  effect = [objc_opt_class() effect];

  if (effect)
  {
    effect->_styleOptions = [coderCopy decodeIntegerForKey:@"styleOptions"];
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"repeatBehavior"];
    repeatBehavior = effect->_repeatBehavior;
    effect->_repeatBehavior = v7;
  }

  return effect;
}

@end