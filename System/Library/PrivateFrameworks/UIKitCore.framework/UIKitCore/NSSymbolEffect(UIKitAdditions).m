@interface NSSymbolEffect(UIKitAdditions)
- (id)ui_animationConfigurationWithOptions:()UIKitAdditions configuration:forAddingEffect:completion:;
- (uint64_t)ui_isSupportedByBarButtonItem;
- (uint64_t)ui_rbAnimationForAddingEffect:()UIKitAdditions;
- (uint64_t)ui_rbSymbolScaleLevelForAddingEffect;
@end

@implementation NSSymbolEffect(UIKitAdditions)

- (uint64_t)ui_isSupportedByBarButtonItem
{
  if ([a1 ui_affectsSymbolHiddenness])
  {
    return 0;
  }

  return [a1 ui_isSupportedByImageView];
}

- (uint64_t)ui_rbSymbolScaleLevelForAddingEffect
{
  v2 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  if ([a1 _level] == 2)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

- (uint64_t)ui_rbAnimationForAddingEffect:()UIKitAdditions
{
  result = [a1 _effectType];
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
  v74 = [a1 ui_rbAnimationForAddingEffect:a5];
  v14 = [MEMORY[0x1E695DF90] dictionary];
  v15 = [v13 traitCollection];

  v16 = [v15 layoutDirection];
  v17 = [v11 _repeatBehavior];
  if (v17 == 1 || !v17 && [a1 ui_effectPrefersIndefiniteBehaviorOverDiscreteBehavior])
  {
    v18 = [v11 _prefersContinuous];
    v19 = 1;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v20 = [a1 _effectType];
  if (v20 > 5)
  {
    if (v20 <= 11)
    {
      if (v20 != 6)
      {
        if (v20 != 9)
        {
          if (v20 == 10)
          {
            v21 = a1;
            v22 = [v21 _layerBehavior];
            v23 = [v21 _isClockwise];

            v24 = 2 * (v23 == 2);
            if (v23 == 1)
            {
              v24 = 1;
            }

            if (v18)
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

        v42 = a1;
        v22 = [v42 _layerBehavior];
        v43 = [v42 _style];
        if (v43 <= 2)
        {
          if (v43 == 2)
          {
            v68 = 35;
          }

          else
          {
            v68 = 0;
          }

          if (v43 == 1)
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
          switch(v43)
          {
            case 3:
              [v42 _angle];
              [MEMORY[0x1E69822A0] _normalizeAngle:?];
              v71 = [MEMORY[0x1E696AD98] numberWithDouble:v70 * 0.0174532925];
              [v14 setObject:v71 forKeyedSubscript:*MEMORY[0x1E69C7278]];

              break;
            case 4:
              v44 = v16 == 1;
              v45 = 16;
              v46 = 32;
              goto LABEL_88;
            case 5:
              v44 = v16 == 1;
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
        if (v18)
        {
          v72 = v69 | 0x100;
        }

        else
        {
          v72 = v69;
        }

        v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v72];
        [v14 setObject:v73 forKeyedSubscript:*MEMORY[0x1E69C7280]];

LABEL_62:
        if (v22 != 1)
        {
          if (v22 != 2)
          {
            goto LABEL_67;
          }

          goto LABEL_64;
        }

        goto LABEL_65;
      }

      v51 = a1;
      v22 = [v51 _layerBehavior];
      v52 = [v51 _style];

      v30 = 2 * (v52 == 2);
      v31 = v52 == 1;
      v32 = 3;
      goto LABEL_56;
    }

    if (v20 == 12)
    {
      v54 = a1;
      v22 = [v54 _layerBehavior];
      v55 = [v54 _style];

      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v55 == 2];
      v27 = MEMORY[0x1E69C7210];
LABEL_61:
      [v14 setObject:v26 forKeyedSubscript:*v27];

      goto LABEL_62;
    }

    if (v20 == 13 || v20 == 14)
    {
      v33 = [a1 _layerBehavior];
      if (v33 != 1)
      {
        if (v33 == 2)
        {
LABEL_64:
          v56 = *MEMORY[0x1E69C7218];
          v57 = MEMORY[0x1E695E110];
LABEL_66:
          [v14 setObject:v57 forKeyedSubscript:v56];
          goto LABEL_67;
        }

        if (v33 != 3)
        {
          goto LABEL_67;
        }

        [v14 setObject:&unk_1EFE33C88 forKeyedSubscript:*MEMORY[0x1E69C7220]];
      }

LABEL_65:
      v56 = *MEMORY[0x1E69C7218];
      v57 = MEMORY[0x1E695E118];
      goto LABEL_66;
    }

LABEL_78:
    v67 = [MEMORY[0x1E696AAA8] currentHandler];
    [v67 handleFailureInMethod:a2 object:a1 file:@"NSSymbolEffect+UIKitAdditions.m" lineNumber:440 description:@"Unsupported effect type added to image view"];

    goto LABEL_67;
  }

  if (v20 > 2)
  {
    if (v20 == 3)
    {
      v47 = a1;
      v22 = [v47 _layerBehavior];
      v48 = [v47 _direction];

      v49 = 2 * (v48 == 2);
      if (v48 == 1)
      {
        v49 = 1;
      }

      if (v18)
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

    if (v20 != 4)
    {
      v28 = a1;
      v22 = [v28 _layerBehavior];
      v29 = [v28 _style];

      if (v29 == 2)
      {
        v30 = 3;
      }

      else
      {
        v30 = 0;
      }

      v31 = v29 == 1;
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

  if (v20 != 1)
  {
    if (v20 != 2)
    {
      goto LABEL_78;
    }

LABEL_33:
    v22 = [a1 _layerBehavior];
    goto LABEL_62;
  }

  v34 = a1;
  v35 = [v34 _fillStyle];
  v36 = [v34 _inactiveStyle];
  if (v35 == 1)
  {
    v37 = 3;
  }

  else
  {
    v37 = 2;
  }

  if (v36 == 1)
  {
    v38 = v37;
  }

  else
  {
    v38 = v35 == 1;
  }

  v39 = [v34 _playbackStyle];

  if (v39 == 1)
  {
    v40 = v38 | 8u;
  }

  else
  {
    v40 = v38;
  }

  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v40];
  [v14 setObject:v41 forKeyedSubscript:*MEMORY[0x1E69C7270]];

LABEL_67:
  if ([a1 ui_effectSupportsRepeat])
  {
    if (v19)
    {
      LODWORD(v58) = 2139095040;
    }

    else
    {
      v59 = [v11 _repeatBehavior];
      LODWORD(v58) = 1.0;
      if (v59 == 2)
      {
        *&v58 = [v11 _repeatCount];
      }
    }

    v60 = [MEMORY[0x1E696AD98] numberWithFloat:v58];
    [v14 setObject:v60 forKeyedSubscript:*MEMORY[0x1E69C7240]];

    v61 = [v11 _repeatDelay];
    [v14 setObject:v61 forKeyedSubscript:*MEMORY[0x1E69C7248]];
  }

  [v11 _speed];
  v63 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(fmin(v62, 2.0), 0.5)}];
  [v14 setObject:v63 forKeyedSubscript:*MEMORY[0x1E69C7260]];

  if (v12)
  {
    v64 = _Block_copy(v12);
    [v14 setObject:v64 forKeyedSubscript:*MEMORY[0x1E69C7230]];
  }

  v65 = objc_opt_new();
  [v65 setAnimation:v74];
  [v65 setOptions:v14];

  return v65;
}

@end