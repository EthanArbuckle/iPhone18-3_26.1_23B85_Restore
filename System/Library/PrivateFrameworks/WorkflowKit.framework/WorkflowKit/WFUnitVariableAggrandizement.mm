@interface WFUnitVariableAggrandizement
- (NSString)unitType;
- (NSUnit)unit;
- (WFUnitVariableAggrandizement)initWithUnit:(id)unit unitType:(id)type;
- (id)availableUnits;
- (id)processedContentClasses:(id)classes;
- (void)applyToContentCollection:(id)collection completionHandler:(id)handler;
@end

@implementation WFUnitVariableAggrandizement

- (void)applyToContentCollection:(id)collection completionHandler:(id)handler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__WFUnitVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke;
  v4[3] = &unk_1E837D860;
  v4[4] = self;
  [collection transformItemsUsingBlock:v4 completionHandler:handler];
}

void __75__WFUnitVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__WFUnitVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke_2;
  v8[3] = &unk_1E837C198;
  v8[4] = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  v7 = a2;
  [v7 getObjectRepresentation:v8 forClass:objc_opt_class()];
}

void __75__WFUnitVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = [*(a1 + 32) unit];
    v4 = [v5 measurementByConvertingToUnit:v3];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)processedContentClasses:(id)classes
{
  v3 = MEMORY[0x1E695DFB8];
  v4 = objc_opt_class();

  return [v3 orderedSetWithObject:v4];
}

- (id)availableUnits
{
  v2 = MEMORY[0x1E69E0BE8];
  unitType = [(WFUnitVariableAggrandizement *)self unitType];
  v4 = [v2 availableUnitsForUnitType:unitType];

  return v4;
}

- (NSUnit)unit
{
  unit = self->_unit;
  if (!unit)
  {
    unitType = [(WFUnitVariableAggrandizement *)self unitType];
    dictionary = [(WFVariableAggrandizement *)self dictionary];
    v6 = [dictionary objectForKey:@"WFUnitSymbol"];

    if (v6)
    {
      v7 = [MEMORY[0x1E69E0BE8] availableUnitsForUnitType:unitType];
      v8 = [v7 objectMatchingKey:@"symbol" value:v6];
      v9 = self->_unit;
      self->_unit = v8;
    }

    unit = self->_unit;
  }

  return unit;
}

- (NSString)unitType
{
  dictionary = [(WFVariableAggrandizement *)self dictionary];
  v3 = [dictionary objectForKey:@"WFMeasurementUnitType"];

  return v3;
}

- (WFUnitVariableAggrandizement)initWithUnit:(id)unit unitType:(id)type
{
  unitCopy = unit;
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFUnitVariableAggrandizement.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"unitType"}];
  }

  v9 = objc_opt_new();
  [v9 setObject:typeCopy forKey:@"WFMeasurementUnitType"];
  if (unitCopy)
  {
    symbol = [unitCopy symbol];
    [v9 setObject:symbol forKey:@"WFUnitSymbol"];
  }

  v11 = [(WFVariableAggrandizement *)self initWithDictionary:v9];

  return v11;
}

@end