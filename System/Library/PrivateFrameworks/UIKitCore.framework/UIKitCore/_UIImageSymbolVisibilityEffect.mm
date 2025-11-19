@interface _UIImageSymbolVisibilityEffect
+ (id)effect;
+ (id)effectWithVisibility:(int64_t)a3;
- (BOOL)_isValidAnimationPreset;
- (BOOL)isEqual:(id)a3;
- (_UIImageSymbolVisibilityEffect)initWithCoder:(id)a3;
- (id)_nsSymbolEffectRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_desiredVisibility;
- (int64_t)_stateUpdateType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIImageSymbolVisibilityEffect

+ (id)effect
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS____UIImageSymbolVisibilityEffect;
  v2 = objc_msgSendSuper2(&v4, sel_effect);
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 1;

  return v2;
}

+ (id)effectWithVisibility:(int64_t)a3
{
  result = [a1 effect];
  *(result + 3) = a3;
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
    v3 = [MEMORY[0x1E6982238] effect];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIImageSymbolVisibilityEffect;
  v5 = [(_UIImageSymbolEffect *)&v7 isEqual:v4]&& self->_visibility == v4[3] && self->_style == v4[4] && self->_byLayer == *(v4 + 16);

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIImageSymbolVisibilityEffect;
  return self->_visibility ^ [(_UIImageSymbolEffect *)&v3 hash]^ self->_style;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = _UIImageSymbolVisibilityEffect;
  result = [(_UIImageSymbolEffect *)&v5 copyWithZone:a3];
  *(result + 3) = self->_visibility;
  *(result + 4) = self->_style;
  *(result + 16) = self->_byLayer;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  visibility = self->_visibility;
  v5 = a3;
  [v5 encodeInteger:visibility forKey:@"visibility"];
  [v5 encodeInteger:self->_style forKey:@"style"];
  [v5 encodeBool:self->_byLayer forKey:@"byLayer"];
}

- (_UIImageSymbolVisibilityEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() effect];

  if (v5)
  {
    v5->_visibility = [v4 decodeIntegerForKey:@"visibility"];
    v5->_style = [v4 decodeIntegerForKey:@"style"];
    v5->_byLayer = [v4 decodeBoolForKey:@"byLayer"];
  }

  return v5;
}

@end