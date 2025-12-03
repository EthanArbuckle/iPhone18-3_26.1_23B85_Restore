@interface WFHMCharacteristicSubstitutableState
- (BOOL)isEqual:(id)equal;
- (HMCharacteristic)characteristic;
- (WFHMCharacteristicSubstitutableState)initWithCharacteristic:(id)characteristic homeIdentifier:(id)identifier;
- (WFHMCharacteristicSubstitutableState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (id)serializedRepresentation;
- (unint64_t)hash;
@end

@implementation WFHMCharacteristicSubstitutableState

- (unint64_t)hash
{
  v3 = objc_opt_new();
  serializedCharacteristic = [(WFHMCharacteristicSubstitutableState *)self serializedCharacteristic];
  v5 = [v3 combine:serializedCharacteristic];

  homeIdentifier = [(WFHMCharacteristicSubstitutableState *)self homeIdentifier];
  v7 = [v3 combine:homeIdentifier];

  v8 = [v3 finalize];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      serializedCharacteristic = [(WFHMCharacteristicSubstitutableState *)equalCopy serializedCharacteristic];
      serializedCharacteristic2 = [(WFHMCharacteristicSubstitutableState *)self serializedCharacteristic];
      if (serializedCharacteristic == serializedCharacteristic2 || (-[WFHMCharacteristicSubstitutableState serializedCharacteristic](equalCopy, "serializedCharacteristic"), v3 = objc_claimAutoreleasedReturnValue(), -[WFHMCharacteristicSubstitutableState serializedCharacteristic](self, "serializedCharacteristic"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        homeIdentifier = [(WFHMCharacteristicSubstitutableState *)equalCopy homeIdentifier];
        homeIdentifier2 = [(WFHMCharacteristicSubstitutableState *)self homeIdentifier];
        v9 = [homeIdentifier isEqualToString:homeIdentifier2];

        if (serializedCharacteristic == serializedCharacteristic2)
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_10;
    }

    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (HMCharacteristic)characteristic
{
  characteristic = self->_characteristic;
  if (characteristic)
  {
    goto LABEL_4;
  }

  v4 = +[WFHomeManager sharedManager];
  homeIdentifier = [(WFHMCharacteristicSubstitutableState *)self homeIdentifier];
  v6 = [v4 homeWithIdentifier:homeIdentifier];

  if (v6)
  {
    HMCharacteristicClass = getHMCharacteristicClass();
    serializedCharacteristic = [(WFHMCharacteristicSubstitutableState *)self serializedCharacteristic];
    v9 = [(objc_class *)HMCharacteristicClass characteristicWithSerializedDictionaryRepresentation:serializedCharacteristic home:v6];
    v10 = self->_characteristic;
    self->_characteristic = v9;

    characteristic = self->_characteristic;
LABEL_4:
    v11 = characteristic;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_5:

  return v11;
}

- (id)serializedRepresentation
{
  v3 = objc_opt_new();
  homeIdentifier = [(WFHMCharacteristicSubstitutableState *)self homeIdentifier];
  [v3 setObject:homeIdentifier forKeyedSubscript:@"HomeIdentifier"];

  serializedCharacteristic = [(WFHMCharacteristicSubstitutableState *)self serializedCharacteristic];

  if (serializedCharacteristic)
  {
    serializedCharacteristic2 = [(WFHMCharacteristicSubstitutableState *)self serializedCharacteristic];
    [v3 setObject:serializedCharacteristic2 forKeyedSubscript:@"HomeCharacteristic"];
  }

  return v3;
}

- (WFHMCharacteristicSubstitutableState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  v14.receiver = self;
  v14.super_class = WFHMCharacteristicSubstitutableState;
  v7 = [(WFHMCharacteristicSubstitutableState *)&v14 init];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = representationCopy;
    v9 = [v8 objectForKeyedSubscript:@"HomeIdentifier"];
    if (v9)
    {
      objc_storeStrong(&v7->_homeIdentifier, v9);
      v10 = [v8 objectForKeyedSubscript:@"HomeCharacteristic"];
      serializedCharacteristic = v7->_serializedCharacteristic;
      v7->_serializedCharacteristic = v10;

      v12 = v7;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (WFHMCharacteristicSubstitutableState)initWithCharacteristic:(id)characteristic homeIdentifier:(id)identifier
{
  characteristicCopy = characteristic;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHMCharacteristicSubstitutableState.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"homeIdentifier"}];
  }

  v17.receiver = self;
  v17.super_class = WFHMCharacteristicSubstitutableState;
  v10 = [(WFHMCharacteristicSubstitutableState *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_homeIdentifier, identifier);
    objc_storeStrong(&v11->_characteristic, characteristic);
    serializedDictionaryRepresentation = [characteristicCopy serializedDictionaryRepresentation];
    serializedCharacteristic = v11->_serializedCharacteristic;
    v11->_serializedCharacteristic = serializedDictionaryRepresentation;

    v14 = v11;
  }

  return v11;
}

@end