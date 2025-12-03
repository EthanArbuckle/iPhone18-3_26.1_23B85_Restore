@interface SBDodgingModifier
- (id)_handleEvent:(id)event;
@end

@implementation SBDodgingModifier

- (id)_handleEvent:(id)event
{
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = SBDodgingModifier;
  v6 = [(SBChainableModifier *)&v10 _handleEvent:eventCopy];
  type = [eventCopy type];
  if (type > 2)
  {
    switch(type)
    {
      case 3:
        v8 = [(SBDodgingModifier *)self handleAnimationCompletionEvent:eventCopy];
        break;
      case 4:
        v8 = [(SBDodgingModifier *)self handleRotationEvent:eventCopy];
        break;
      case 5:
        v8 = [(SBDodgingModifier *)self handlePreferenceChangeEvent:eventCopy];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      v8 = [(SBDodgingModifier *)self handleRemovalEvent:eventCopy];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_15;
      }

      v8 = [(SBDodgingModifier *)self handleCustomEvent:eventCopy];
    }
  }

  else
  {
    v8 = [(SBDodgingModifier *)self handleInsertionEvent:eventCopy];
  }

  v3 = v8;
LABEL_15:

  return v3;
}

@end