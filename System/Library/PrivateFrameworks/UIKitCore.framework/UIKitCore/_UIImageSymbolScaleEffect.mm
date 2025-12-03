@interface _UIImageSymbolScaleEffect
+ (id)effect;
+ (id)effectWithScale:(int64_t)scale;
- (BOOL)_isValidAnimationPreset;
- (BOOL)isEqual:(id)equal;
- (_UIImageSymbolScaleEffect)initWithCoder:(id)coder;
- (id)_nsSymbolEffectRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_desiredScale;
- (int64_t)_stateUpdateType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIImageSymbolScaleEffect

+ (id)effect
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS____UIImageSymbolScaleEffect;
  v2 = objc_msgSendSuper2(&v4, sel_effect);
  *(v2 + 24) = 0;
  *(v2 + 16) = 1;

  return v2;
}

+ (id)effectWithScale:(int64_t)scale
{
  result = [self effect];
  *(result + 3) = scale;
  return result;
}

- (BOOL)_isValidAnimationPreset
{
  if ((self->_scale - 1) < 3)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = _UIImageSymbolScaleEffect;
  return [(_UIImageSymbolEffect *)&v5 _isValidAnimationPreset];
}

- (int64_t)_stateUpdateType
{
  if ([(_UIImageSymbolScaleEffect *)self _isValidAnimationPreset])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _UIImageSymbolScaleEffect;
  return [(_UIImageSymbolEffect *)&v4 _stateUpdateType];
}

- (int64_t)_desiredScale
{
  if ([(_UIImageSymbolScaleEffect *)self _isValidAnimationPreset])
  {
    return self->_scale;
  }

  v4.receiver = self;
  v4.super_class = _UIImageSymbolScaleEffect;
  return [(_UIImageSymbolEffect *)&v4 _desiredScale];
}

- (id)_nsSymbolEffectRepresentation
{
  if (self->_scale == 3)
  {
    [MEMORY[0x1E6982290] scaleDownEffect];
  }

  else
  {
    [MEMORY[0x1E6982290] scaleUpEffect];
  }
  v3 = ;
  if ([(_UIImageSymbolScaleEffect *)self byLayer])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIImageSymbolScaleEffect;
  v5 = [(_UIImageSymbolEffect *)&v7 isEqual:equalCopy]&& self->_scale == equalCopy[3] && self->_byLayer == *(equalCopy + 16);

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIImageSymbolScaleEffect;
  return self->_scale ^ [(_UIImageSymbolEffect *)&v3 hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = _UIImageSymbolScaleEffect;
  result = [(_UIImageSymbolEffect *)&v5 copyWithZone:zone];
  *(result + 3) = self->_scale;
  *(result + 16) = self->_byLayer;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  scale = self->_scale;
  coderCopy = coder;
  [coderCopy encodeInteger:scale forKey:@"scale"];
  [coderCopy encodeBool:self->_byLayer forKey:@"byLayer"];
}

- (_UIImageSymbolScaleEffect)initWithCoder:(id)coder
{
  coderCopy = coder;
  effect = [objc_opt_class() effect];

  if (effect)
  {
    effect->_scale = [coderCopy decodeIntegerForKey:@"scale"];
    effect->_byLayer = [coderCopy decodeBoolForKey:@"byLayer"];
  }

  return effect;
}

@end