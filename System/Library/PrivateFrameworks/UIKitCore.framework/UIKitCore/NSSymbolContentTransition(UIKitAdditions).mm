@interface NSSymbolContentTransition(UIKitAdditions)
- (id)ui_animationConfigurationFromSymbolImage:()UIKitAdditions toSymbolImage:options:completion:;
@end

@implementation NSSymbolContentTransition(UIKitAdditions)

- (id)ui_animationConfigurationFromSymbolImage:()UIKitAdditions toSymbolImage:options:completion:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  _effectType = [self _effectType];
  if (_effectType == 7)
  {
    selfCopy = self;
    if ([selfCopy _style] || (dyld_program_sdk_at_least() & 1) == 0)
    {
      v19 = 224;
LABEL_11:
      _layerBehavior = [selfCopy _layerBehavior];
      _style = [selfCopy _style];
      v22 = v19 | 3;
      v23 = v19 | 2;
      if (_style != 1)
      {
        v23 = v19;
      }

      if (_style != 2)
      {
        v22 = v23;
      }

      if (_style == 3)
      {
        v24 = v19 | 4u;
      }

      else
      {
        v24 = v22;
      }

      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v24];
      [dictionary setObject:v25 forKeyedSubscript:*MEMORY[0x1E69C7250]];

      if (_layerBehavior == 2)
      {
        v26 = *MEMORY[0x1E69C7218];
        v27 = MEMORY[0x1E695E110];
      }

      else
      {
        if (_layerBehavior != 1)
        {
LABEL_24:
          v17 = 6;
          goto LABEL_25;
        }

        v26 = *MEMORY[0x1E69C7218];
        v27 = MEMORY[0x1E695E118];
      }

      [dictionary setObject:v27 forKeyedSubscript:v26];
      goto LABEL_24;
    }

LABEL_7:
    v19 = 0;
    goto LABEL_11;
  }

  if (_effectType == 11)
  {
    selfCopy = [self _fallback];
    goto LABEL_7;
  }

  if (_effectType != 8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSSymbolEffect+UIKitAdditions.m" lineNumber:650 description:@"Unsupported content transition type added to image view"];

    v17 = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  if ([v11 _isSameSymbolImageExceptVariableValue:v12])
  {
    v17 = 0;
LABEL_25:
    [v13 _speed];
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(fmin(v29, 2.0), 0.5)}];
    [dictionary setObject:v30 forKeyedSubscript:*MEMORY[0x1E69C7260]];

    if (v14)
    {
      v31 = _Block_copy(v14);
      [dictionary setObject:v31 forKeyedSubscript:*MEMORY[0x1E69C7230]];
    }

    v32 = objc_opt_new();
    [v32 setAnimation:v17];
    [v32 setOptions:dictionary];
    goto LABEL_28;
  }

  if (qword_1ED4A2950 != -1)
  {
    dispatch_once(&qword_1ED4A2950, &__block_literal_global_665);
  }

  v32 = [_MergedGlobals_1365 ui_animationConfigurationFromSymbolImage:v11 toSymbolImage:v12 options:v13 completion:v14];
LABEL_28:

  return v32;
}

@end