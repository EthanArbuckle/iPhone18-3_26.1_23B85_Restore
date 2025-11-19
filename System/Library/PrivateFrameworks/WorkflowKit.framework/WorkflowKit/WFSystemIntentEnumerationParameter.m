@interface WFSystemIntentEnumerationParameter
- (WFSystemIntentEnumerationParameter)initWithDefinition:(id)a3;
- (id)localizedLabelForPossibleState:(id)a3;
- (id)possibleStates;
@end

@implementation WFSystemIntentEnumerationParameter

- (id)localizedLabelForPossibleState:(id)a3
{
  v4 = [a3 value];
  v5 = [v4 number];

  if (v5)
  {
    v6 = [(INIntentSlotDescription *)self->_slotDescription localizeValue:v5 forLanguage:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)possibleStates
{
  possibleStates = self->_possibleStates;
  if (!possibleStates)
  {
    v4 = objc_opt_new();
    v5 = 0x7FFFFFFFFFFFFFFELL;
    v6 = 1;
    while (1)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      v8 = [(INIntentSlotDescription *)self->_slotDescription localizeValue:v7 forLanguage:0];
      if (![v8 length])
      {
        break;
      }

      v9 = [[WFNumberSubstitutableState alloc] initWithNumber:v7];
      [v4 addObject:v9];

      ++v6;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

LABEL_7:
    v10 = [v4 copy];
    v11 = self->_possibleStates;
    self->_possibleStates = v10;

    possibleStates = self->_possibleStates;
  }

  return possibleStates;
}

- (WFSystemIntentEnumerationParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WFSystemIntentEnumerationParameter;
  v5 = [(WFEnumerationParameter *)&v17 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"IntentType"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);

    v9 = [v4 objectForKey:@"SlotName"];
    v10 = objc_opt_class();
    v11 = WFEnforceClass_1501(v9, v10);

    v12 = INIntentSchemaGetIntentDescriptionWithType();
    v13 = [v12 slotByName:v11];
    slotDescription = v5->_slotDescription;
    v5->_slotDescription = v13;

    v15 = v5;
  }

  return v5;
}

@end