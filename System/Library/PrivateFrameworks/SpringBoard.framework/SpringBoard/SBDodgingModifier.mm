@interface SBDodgingModifier
- (id)_handleEvent:(id)a3;
@end

@implementation SBDodgingModifier

- (id)_handleEvent:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBDodgingModifier;
  v6 = [(SBChainableModifier *)&v10 _handleEvent:v5];
  v7 = [v5 type];
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v8 = [(SBDodgingModifier *)self handleAnimationCompletionEvent:v5];
        break;
      case 4:
        v8 = [(SBDodgingModifier *)self handleRotationEvent:v5];
        break;
      case 5:
        v8 = [(SBDodgingModifier *)self handlePreferenceChangeEvent:v5];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      v8 = [(SBDodgingModifier *)self handleRemovalEvent:v5];
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_15;
      }

      v8 = [(SBDodgingModifier *)self handleCustomEvent:v5];
    }
  }

  else
  {
    v8 = [(SBDodgingModifier *)self handleInsertionEvent:v5];
  }

  v3 = v8;
LABEL_15:

  return v3;
}

@end