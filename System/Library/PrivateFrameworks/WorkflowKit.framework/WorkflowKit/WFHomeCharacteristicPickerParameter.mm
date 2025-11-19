@interface WFHomeCharacteristicPickerParameter
- (BOOL)isHidden;
- (NSArray)possibleStates;
- (id)defaultSerializedRepresentation;
- (id)localizedLabelForPossibleState:(id)a3;
- (void)setService:(id)a3 homeIdentifier:(id)a4;
- (void)updatePossibleStates;
@end

@implementation WFHomeCharacteristicPickerParameter

- (void)updatePossibleStates
{
  possibleStates = self->_possibleStates;
  self->_possibleStates = 0;

  v4.receiver = self;
  v4.super_class = WFHomeCharacteristicPickerParameter;
  [(WFEnumerationParameter *)&v4 possibleStatesDidChange];
  [(WFParameter *)self defaultSerializedRepresentationDidChange];
}

- (BOOL)isHidden
{
  v2 = [(WFHomeCharacteristicPickerParameter *)self service];
  v3 = v2 == 0;

  return v3;
}

- (id)defaultSerializedRepresentation
{
  v3 = [(WFHomeCharacteristicPickerParameter *)self service];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 defaultCharacteristic];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v9 = WFSupportedCharacteristicsForHMService(v4);
      v7 = [v9 firstObject];
    }

    v10 = [WFHMCharacteristicSubstitutableState alloc];
    v11 = [(WFHomeCharacteristicPickerParameter *)self homeIdentifier];
    v12 = [(WFHMCharacteristicSubstitutableState *)v10 initWithCharacteristic:v7 homeIdentifier:v11];

    v8 = [(WFHMCharacteristicSubstitutableState *)v12 serializedRepresentation];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)possibleStates
{
  possibleStates = self->_possibleStates;
  if (!possibleStates)
  {
    v4 = [(WFHomeCharacteristicPickerParameter *)self service];
    v5 = WFSupportedCharacteristicsForHMService(v4);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__WFHomeCharacteristicPickerParameter_possibleStates__block_invoke;
    v9[3] = &unk_1E8376FD8;
    v9[4] = self;
    v6 = [v5 if_compactMap:v9];
    v7 = self->_possibleStates;
    self->_possibleStates = v6;

    possibleStates = self->_possibleStates;
  }

  return possibleStates;
}

WFHMCharacteristicSubstitutableState *__53__WFHomeCharacteristicPickerParameter_possibleStates__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFHMCharacteristicSubstitutableState alloc];
  v5 = [*(a1 + 32) homeIdentifier];
  v6 = [(WFHMCharacteristicSubstitutableState *)v4 initWithCharacteristic:v3 homeIdentifier:v5];

  return v6;
}

- (id)localizedLabelForPossibleState:(id)a3
{
  if (a3)
  {
    v3 = [a3 characteristic];
    v4 = [v3 localizedDescription];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setService:(id)a3 homeIdentifier:(id)a4
{
  objc_storeStrong(&self->_service, a3);
  v7 = a3;
  v8 = a4;
  v9 = [v8 copy];

  homeIdentifier = self->_homeIdentifier;
  self->_homeIdentifier = v9;

  [(WFHomeCharacteristicPickerParameter *)self updatePossibleStates];
}

@end