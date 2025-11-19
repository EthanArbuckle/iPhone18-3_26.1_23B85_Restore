@interface WFHMCharacteristicSubstitutableState
- (BOOL)isEqual:(id)a3;
- (HMCharacteristic)characteristic;
- (WFHMCharacteristicSubstitutableState)initWithCharacteristic:(id)a3 homeIdentifier:(id)a4;
- (WFHMCharacteristicSubstitutableState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (id)serializedRepresentation;
- (unint64_t)hash;
@end

@implementation WFHMCharacteristicSubstitutableState

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [(WFHMCharacteristicSubstitutableState *)self serializedCharacteristic];
  v5 = [v3 combine:v4];

  v6 = [(WFHMCharacteristicSubstitutableState *)self homeIdentifier];
  v7 = [v3 combine:v6];

  v8 = [v3 finalize];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(WFHMCharacteristicSubstitutableState *)v6 serializedCharacteristic];
      v8 = [(WFHMCharacteristicSubstitutableState *)self serializedCharacteristic];
      if (v7 == v8 || (-[WFHMCharacteristicSubstitutableState serializedCharacteristic](v6, "serializedCharacteristic"), v3 = objc_claimAutoreleasedReturnValue(), -[WFHMCharacteristicSubstitutableState serializedCharacteristic](self, "serializedCharacteristic"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v10 = [(WFHMCharacteristicSubstitutableState *)v6 homeIdentifier];
        v11 = [(WFHMCharacteristicSubstitutableState *)self homeIdentifier];
        v9 = [v10 isEqualToString:v11];

        if (v7 == v8)
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
  v5 = [(WFHMCharacteristicSubstitutableState *)self homeIdentifier];
  v6 = [v4 homeWithIdentifier:v5];

  if (v6)
  {
    HMCharacteristicClass = getHMCharacteristicClass();
    v8 = [(WFHMCharacteristicSubstitutableState *)self serializedCharacteristic];
    v9 = [(objc_class *)HMCharacteristicClass characteristicWithSerializedDictionaryRepresentation:v8 home:v6];
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
  v4 = [(WFHMCharacteristicSubstitutableState *)self homeIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"HomeIdentifier"];

  v5 = [(WFHMCharacteristicSubstitutableState *)self serializedCharacteristic];

  if (v5)
  {
    v6 = [(WFHMCharacteristicSubstitutableState *)self serializedCharacteristic];
    [v3 setObject:v6 forKeyedSubscript:@"HomeCharacteristic"];
  }

  return v3;
}

- (WFHMCharacteristicSubstitutableState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = WFHMCharacteristicSubstitutableState;
  v7 = [(WFHMCharacteristicSubstitutableState *)&v14 init];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v6;
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

- (WFHMCharacteristicSubstitutableState)initWithCharacteristic:(id)a3 homeIdentifier:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFHMCharacteristicSubstitutableState.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"homeIdentifier"}];
  }

  v17.receiver = self;
  v17.super_class = WFHMCharacteristicSubstitutableState;
  v10 = [(WFHMCharacteristicSubstitutableState *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_homeIdentifier, a4);
    objc_storeStrong(&v11->_characteristic, a3);
    v12 = [v8 serializedDictionaryRepresentation];
    serializedCharacteristic = v11->_serializedCharacteristic;
    v11->_serializedCharacteristic = v12;

    v14 = v11;
  }

  return v11;
}

@end