@interface _UIImageSymbolVisibilityEffect
+ (id)effect;
+ (id)effectWithVisibility:(int64_t)visibility;
- (BOOL)_isValidAnimationPreset;
- (BOOL)isEqual:(id)equal;
- (_UIImageSymbolVisibilityEffect)initWithCoder:(id)coder;
- (id)_nsSymbolEffectRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_desiredVisibility;
- (int64_t)_stateUpdateType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIImageSymbolVisibilityEffect

+ (id)effect
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS____UIImageSymbolVisibilityEffect;
  v2 = objc_msgSendSuper2(&v4, sel_effect);
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 1;

  return v2;
}

+ (id)effectWithVisibility:(int64_t)visibility
{
  result = [self effect];
  *(result + 3) = visibility;
  return result;
}

- (BOOL)_isValidAnimationPreset
{
  if ((self->_visibility - 1) < 2)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = _UIImageSymbolVisibilityEffect;
  return [(_UIImageSymbolEffect *)&v5 _isValidAnimationPreset];
}

- (int64_t)_stateUpdateType
{
  if ([(_UIImageSymbolVisibilityEffect *)self _isValidAnimationPreset])
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = _UIImageSymbolVisibilityEffect;
  return [(_UIImageSymbolEffect *)&v4 _stateUpdateType];
}

- (int64_t)_desiredVisibility
{
  if ([(_UIImageSymbolVisibilityEffect *)self _isValidAnimationPreset])
  {
    return self->_visibility;
  }

  v4.receiver = self;
  v4.super_class = _UIImageSymbolVisibilityEffect;
  return [(_UIImageSymbolEffect *)&v4 _desiredVisibility];
}

- (id)_nsSymbolEffectRepresentation
{
  if (self->_visibility == 2)
  {
    if (self->_style == 2)
    {
      [MEMORY[0x1E6982258] disappearUpEffect];
    }

    else
    {
      [MEMORY[0x1E6982258] disappearDownEffect];
    }
    v4 = ;
  }

  else
  {
    effect = [MEMORY[0x1E6982238] effect];
    if (self->_style == 2)
    {
      [MEMORY[0x1E6982238] appearDownEffect];
    }

    else
    {
      [MEMORY[0x1E6982238] appearUpEffect];
    }
    v4 = ;
  }

  if ([(_UIImageSymbolVisibilityEffect *)self byLayer])
  {
    [v4 effectWithByLayer];
  }

  else
  {
    [v4 effectWithWholeSymbol];
  }
  v5 = ;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIImageSymbolVisibilityEffect;
  v5 = [(_UIImageSymbolEffect *)&v7 isEqual:equalCopy]&& self->_visibility == equalCopy[3] && self->_style == equalCopy[4] && self->_byLayer == *(equalCopy + 16);

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIImageSymbolVisibilityEffect;
  return self->_visibility ^ [(_UIImageSymbolEffect *)&v3 hash]^ self->_style;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = _UIImageSymbolVisibilityEffect;
  result = [(_UIImageSymbolEffect *)&v5 copyWithZone:zone];
  *(result + 3) = self->_visibility;
  *(result + 4) = self->_style;
  *(result + 16) = self->_byLayer;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  visibility = self->_visibility;
  coderCopy = coder;
  [coderCopy encodeInteger:visibility forKey:@"visibility"];
  [coderCopy encodeInteger:self->_style forKey:@"style"];
  [coderCopy encodeBool:self->_byLayer forKey:@"byLayer"];
}

- (_UIImageSymbolVisibilityEffect)initWithCoder:(id)coder
{
  coderCopy = coder;
  effect = [objc_opt_class() effect];

  if (effect)
  {
    effect->_visibility = [coderCopy decodeIntegerForKey:@"visibility"];
    effect->_style = [coderCopy decodeIntegerForKey:@"style"];
    effect->_byLayer = [coderCopy decodeBoolForKey:@"byLayer"];
  }

  return effect;
}

@end