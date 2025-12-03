@interface NSSymbolEffect(UIKitAdditions)
- (id)ui_animationConfigurationWithOptions:()UIKitAdditions configuration:forAddingEffect:completion:;
- (uint64_t)ui_isSupportedByBarButtonItem;
- (uint64_t)ui_rbAnimationForAddingEffect:()UIKitAdditions;
- (uint64_t)ui_rbSymbolScaleLevelForAddingEffect;
@end

@implementation NSSymbolEffect(UIKitAdditions)

- (uint64_t)ui_isSupportedByBarButtonItem
{
  if ([self ui_affectsSymbolHiddenness])
  {
    return 0;
  }

  return [self ui_isSupportedByImageView];
}

- (uint64_t)ui_rbSymbolScaleLevelForAddingEffect
{
  v2 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  if ([self _level] == 2)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

- (uint64_t)ui_rbAnimationForAddingEffect:()UIKitAdditions
{
  result = [self _effectType];
  if (result <= 5)
  {
    if (result > 2 || result == 1 || result == 2)
    {
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (result > 11)
  {
    if (result == 12 || result == 13)
    {
      return result;
    }

    if (result == 14)
    {
      if (a3)
      {
        return 14;
      }

      else
      {
        return 13;
      }
    }

    return 0xFFFFFFFFLL;
  }

  switch(result)
  {
    case 6:
      if (a3)
      {
        return 9;
      }

      else
      {
        return 5;
      }

    case 9:
      return 10;
    case 10:
      return 11;
    default:
      return 0xFFFFFFFFLL;
  }
}

- (id)ui_animationConfigurationWithOptions:()UIKitAdditions configuration:forAddingEffect:completion:
{
  v11 = a3;
  v12 = a6;
  v13 = a4;
  v74 = [self ui_rbAnimationForAddingEffect:a5];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  traitCollection = [v13 traitCollection];

  layoutDirection = [traitCollection layoutDirection];
  _repeatBehavior = [v11 _repeatBehavior];
  if (_repeatBehavior == 1 || !_repeatBehavior && [self ui_effectPrefersIndefiniteBehaviorOverDiscreteBehavior])
  {
    _prefersContinuous = [v11 _prefersContinuous];
    v19 = 1;
  }

  else
  {
    v19 = 0;
    _prefersContinuous = 0;
  }

  _effectType = [self _effectType];
  if (_effectType > 5)
  {
    if (_effectType <= 11)
    {
      if (_effectType != 6)
      {
        if (_effectType != 9)
        {
          if (_effectType == 10)
          {
            selfCopy = self;
            _layerBehavior = [selfCopy _layerBehavior];
            _isClockwise = [selfCopy _isClockwise];

            v24 = 2 * (_isClockwise == 2);
            if (_isClockwise == 1)
            {
              v24 = 1;
            }

            if (_prefersContinuous)
            {
              v25 = v24 | 0x10;
            }

            else
            {
              v25 = v24;
            }

            v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v25];
            v27 = MEMORY[0x1E69C7258];
            goto LABEL_61;
          }

          goto LABEL_78;
        }

        selfCopy2 = self;
        _layerBehavior = [selfCopy2 _layerBehavior];
        _style = [selfCopy2 _style];
        if (_style <= 2)
        {
          if (_style == 2)
          {
            v68 = 35;
          }

          else
          {
            v68 = 0;
          }

          if (_style == 1)
          {
            v69 = 19;
          }

          else
          {
            v69 = v68;
          }
        }

        else
        {
          switch(_style)
          {
            case 3:
              [selfCopy2 _angle];
              [MEMORY[0x1E69822A0] _normalizeAngle:?];
              v71 = [MEMORY[0x1E696AD98] numberWithDouble:v70 * 0.0174532925];
              [dictionary setObject:v71 forKeyedSubscript:*MEMORY[0x1E69C7278]];

              break;
            case 4:
              v44 = layoutDirection == 1;
              v45 = 16;
              v46 = 32;
              goto LABEL_88;
            case 5:
              v44 = layoutDirection == 1;
              v45 = 32;
              v46 = 16;
LABEL_88:
              if (v44)
              {
                v45 = v46;
              }

              v69 = v45 | 1;
              goto LABEL_91;
          }

          v69 = 0;
        }

LABEL_91:
        if (_prefersContinuous)
        {
          v72 = v69 | 0x100;
        }

        else
        {
          v72 = v69;
        }

        v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v72];
        [dictionary setObject:v73 forKeyedSubscript:*MEMORY[0x1E69C7280]];

LABEL_62:
        if (_layerBehavior != 1)
        {
          if (_layerBehavior != 2)
          {
            goto LABEL_67;
          }

          goto LABEL_64;
        }

        goto LABEL_65;
      }

      selfCopy3 = self;
      _layerBehavior = [selfCopy3 _layerBehavior];
      _style2 = [selfCopy3 _style];

      v30 = 2 * (_style2 == 2);
      v31 = _style2 == 1;
      v32 = 3;
      goto LABEL_56;
    }

    if (_effectType == 12)
    {
      selfCopy4 = self;
      _layerBehavior = [selfCopy4 _layerBehavior];
      _style3 = [selfCopy4 _style];

      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:_style3 == 2];
      v27 = MEMORY[0x1E69C7210];
LABEL_61:
      [dictionary setObject:v26 forKeyedSubscript:*v27];

      goto LABEL_62;
    }

    if (_effectType == 13 || _effectType == 14)
    {
      _layerBehavior2 = [self _layerBehavior];
      if (_layerBehavior2 != 1)
      {
        if (_layerBehavior2 == 2)
        {
LABEL_64:
          v56 = *MEMORY[0x1E69C7218];
          v57 = MEMORY[0x1E695E110];
LABEL_66:
          [dictionary setObject:v57 forKeyedSubscript:v56];
          goto LABEL_67;
        }

        if (_layerBehavior2 != 3)
        {
          goto LABEL_67;
        }

        [dictionary setObject:&unk_1EFE33C88 forKeyedSubscript:*MEMORY[0x1E69C7220]];
      }

LABEL_65:
      v56 = *MEMORY[0x1E69C7218];
      v57 = MEMORY[0x1E695E118];
      goto LABEL_66;
    }

LABEL_78:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSSymbolEffect+UIKitAdditions.m" lineNumber:440 description:@"Unsupported effect type added to image view"];

    goto LABEL_67;
  }

  if (_effectType > 2)
  {
    if (_effectType == 3)
    {
      selfCopy5 = self;
      _layerBehavior = [selfCopy5 _layerBehavior];
      _direction = [selfCopy5 _direction];

      v49 = 2 * (_direction == 2);
      if (_direction == 1)
      {
        v49 = 1;
      }

      if (_prefersContinuous)
      {
        v50 = v49 | 0x10;
      }

      else
      {
        v50 = v49;
      }

      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v50];
      v27 = MEMORY[0x1E69C7208];
      goto LABEL_61;
    }

    if (_effectType != 4)
    {
      selfCopy6 = self;
      _layerBehavior = [selfCopy6 _layerBehavior];
      _style4 = [selfCopy6 _style];

      if (_style4 == 2)
      {
        v30 = 3;
      }

      else
      {
        v30 = 0;
      }

      v31 = _style4 == 1;
      v32 = 2;
LABEL_56:
      if (v31)
      {
        v53 = v32;
      }

      else
      {
        v53 = v30;
      }

      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v53];
      v27 = MEMORY[0x1E69C7200];
      goto LABEL_61;
    }

    goto LABEL_33;
  }

  if (_effectType != 1)
  {
    if (_effectType != 2)
    {
      goto LABEL_78;
    }

LABEL_33:
    _layerBehavior = [self _layerBehavior];
    goto LABEL_62;
  }

  selfCopy7 = self;
  _fillStyle = [selfCopy7 _fillStyle];
  _inactiveStyle = [selfCopy7 _inactiveStyle];
  if (_fillStyle == 1)
  {
    v37 = 3;
  }

  else
  {
    v37 = 2;
  }

  if (_inactiveStyle == 1)
  {
    v38 = v37;
  }

  else
  {
    v38 = _fillStyle == 1;
  }

  _playbackStyle = [selfCopy7 _playbackStyle];

  if (_playbackStyle == 1)
  {
    v40 = v38 | 8u;
  }

  else
  {
    v40 = v38;
  }

  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v40];
  [dictionary setObject:v41 forKeyedSubscript:*MEMORY[0x1E69C7270]];

LABEL_67:
  if ([self ui_effectSupportsRepeat])
  {
    if (v19)
    {
      LODWORD(v58) = 2139095040;
    }

    else
    {
      _repeatBehavior2 = [v11 _repeatBehavior];
      LODWORD(v58) = 1.0;
      if (_repeatBehavior2 == 2)
      {
        *&v58 = [v11 _repeatCount];
      }
    }

    v60 = [MEMORY[0x1E696AD98] numberWithFloat:v58];
    [dictionary setObject:v60 forKeyedSubscript:*MEMORY[0x1E69C7240]];

    _repeatDelay = [v11 _repeatDelay];
    [dictionary setObject:_repeatDelay forKeyedSubscript:*MEMORY[0x1E69C7248]];
  }

  [v11 _speed];
  v63 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(fmin(v62, 2.0), 0.5)}];
  [dictionary setObject:v63 forKeyedSubscript:*MEMORY[0x1E69C7260]];

  if (v12)
  {
    v64 = _Block_copy(v12);
    [dictionary setObject:v64 forKeyedSubscript:*MEMORY[0x1E69C7230]];
  }

  v65 = objc_opt_new();
  [v65 setAnimation:v74];
  [v65 setOptions:dictionary];

  return v65;
}

@end