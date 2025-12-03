@interface WFHomeCharacteristicPickerParameter
- (BOOL)isHidden;
- (NSArray)possibleStates;
- (id)defaultSerializedRepresentation;
- (id)localizedLabelForPossibleState:(id)state;
- (void)setService:(id)service homeIdentifier:(id)identifier;
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
  service = [(WFHomeCharacteristicPickerParameter *)self service];
  v3 = service == 0;

  return v3;
}

- (id)defaultSerializedRepresentation
{
  service = [(WFHomeCharacteristicPickerParameter *)self service];
  v4 = service;
  if (service)
  {
    defaultCharacteristic = [service defaultCharacteristic];
    v6 = defaultCharacteristic;
    if (defaultCharacteristic)
    {
      firstObject = defaultCharacteristic;
    }

    else
    {
      v9 = WFSupportedCharacteristicsForHMService(v4);
      firstObject = [v9 firstObject];
    }

    v10 = [WFHMCharacteristicSubstitutableState alloc];
    homeIdentifier = [(WFHomeCharacteristicPickerParameter *)self homeIdentifier];
    v12 = [(WFHMCharacteristicSubstitutableState *)v10 initWithCharacteristic:firstObject homeIdentifier:homeIdentifier];

    serializedRepresentation = [(WFHMCharacteristicSubstitutableState *)v12 serializedRepresentation];
  }

  else
  {
    serializedRepresentation = 0;
  }

  return serializedRepresentation;
}

- (NSArray)possibleStates
{
  possibleStates = self->_possibleStates;
  if (!possibleStates)
  {
    service = [(WFHomeCharacteristicPickerParameter *)self service];
    v5 = WFSupportedCharacteristicsForHMService(service);
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

- (id)localizedLabelForPossibleState:(id)state
{
  if (state)
  {
    characteristic = [state characteristic];
    localizedDescription = [characteristic localizedDescription];
  }

  else
  {
    localizedDescription = 0;
  }

  return localizedDescription;
}

- (void)setService:(id)service homeIdentifier:(id)identifier
{
  objc_storeStrong(&self->_service, service);
  serviceCopy = service;
  identifierCopy = identifier;
  v9 = [identifierCopy copy];

  homeIdentifier = self->_homeIdentifier;
  self->_homeIdentifier = v9;

  [(WFHomeCharacteristicPickerParameter *)self updatePossibleStates];
}

@end