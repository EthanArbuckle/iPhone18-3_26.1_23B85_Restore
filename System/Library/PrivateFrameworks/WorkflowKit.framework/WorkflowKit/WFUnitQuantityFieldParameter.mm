@interface WFUnitQuantityFieldParameter
- (BOOL)parameterStateIsValid:(id)valid;
- (NSString)defaultUnitString;
- (WFUnitQuantityFieldParameter)initWithDefinition:(id)definition;
- (id)availableUnitForStringValue:(id)value;
- (id)defaultSerializedRepresentation;
- (id)localizedLabelForPossibleUnit:(id)unit magnitude:(id)magnitude style:(unint64_t)style;
- (void)setDefaultUnit:(id)unit;
- (void)setFallbackToAllSupportedUnits:(BOOL)units;
- (void)setUnitType:(id)type;
- (void)updatePossibleUnits;
@end

@implementation WFUnitQuantityFieldParameter

- (id)defaultSerializedRepresentation
{
  unitType = [(WFUnitQuantityFieldParameter *)self unitType];

  if (unitType)
  {
    definition = [(WFParameter *)self definition];
    v5 = [definition objectForKey:@"DefaultValue"];
    v6 = objc_opt_class();
    v7 = WFEnforceClass_1501(v5, v6);

    if (v7)
    {
      v8 = [WFNumberStringSubstitutableState alloc];
      stringValue = [v7 stringValue];
      v10 = [(WFNumberStringSubstitutableState *)v8 initWithValue:stringValue];
    }

    else
    {
      v10 = 0;
    }

    defaultUnitString = [(WFUnitQuantityFieldParameter *)self defaultUnitString];
    if (defaultUnitString)
    {
      v13 = [[WFQuantityParameterState alloc] initWithMagnitudeState:v10 unitString:defaultUnitString];
      serializedRepresentation = [(WFQuantityParameterState *)v13 serializedRepresentation];
    }

    else
    {
      serializedRepresentation = 0;
    }
  }

  else
  {
    serializedRepresentation = 0;
  }

  return serializedRepresentation;
}

- (NSString)defaultUnitString
{
  defaultUnit = [(WFUnitQuantityFieldParameter *)self defaultUnit];
  symbol = [defaultUnit symbol];

  if (!symbol)
  {
    definition = [(WFParameter *)self definition];
    v6 = [definition objectForKey:@"DefaultUnit"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);

    v9 = [MEMORY[0x1E69E0BE8] unitFromString:v8];
    if (v9)
    {
      symbol = v8;
    }

    else
    {
      v10 = MEMORY[0x1E69E0BE8];
      unitType = [(WFUnitQuantityFieldParameter *)self unitType];
      v12 = [v10 defaultUnitForUnitType:unitType];
      symbol = [v12 symbol];

      possibleUnits = [(WFUnitQuantityFieldParameter *)self possibleUnits];
      LOBYTE(v12) = [possibleUnits containsObject:symbol];

      if ((v12 & 1) == 0)
      {
        possibleUnits2 = [(WFUnitQuantityFieldParameter *)self possibleUnits];
        firstObject = [possibleUnits2 firstObject];

        symbol = firstObject;
      }
    }
  }

  return symbol;
}

- (BOOL)parameterStateIsValid:(id)valid
{
  validCopy = valid;
  if (validCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = validCopy;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    if (isKindOfClass)
    {
      unitString = [validCopy unitString];
      v9 = [(WFUnitQuantityFieldParameter *)self availableUnitForStringValue:unitString];
      v10 = v9 != 0;
    }

    else
    {
      v11 = validCopy;
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();
      if (v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      unitString = v13;

      if (v12)
      {
        v17 = 0;
        v18 = &v17;
        v19 = 0x2020000000;
        v20 = 1;
        parameterStates = [v11 parameterStates];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __54__WFUnitQuantityFieldParameter_parameterStateIsValid___block_invoke;
        v16[3] = &unk_1E837FEC8;
        v16[4] = self;
        v16[5] = &v17;
        [parameterStates enumerateObjectsUsingBlock:v16];

        v10 = *(v18 + 24);
        _Block_object_dispose(&v17, 8);
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void __54__WFUnitQuantityFieldParameter_parameterStateIsValid___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  v10 = WFEnforceClass_1501(v6, v7);

  v8 = *(*(a1 + 40) + 8);
  if (*(v8 + 24) == 1)
  {
    v9 = [*(a1 + 32) parameterStateIsValid:v10];
    v8 = *(*(a1 + 40) + 8);
  }

  else
  {
    v9 = 0;
  }

  *(v8 + 24) = v9;
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (id)localizedLabelForPossibleUnit:(id)unit magnitude:(id)magnitude style:(unint64_t)style
{
  magnitude = [(WFUnitQuantityFieldParameter *)self availableUnitForStringValue:unit, magnitude];
  if (!magnitude)
  {
    v10 = 0;
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bytes = [MEMORY[0x1E696B050] bytes];
    v8 = [magnitude isEqual:bytes];

    if (v8)
    {
      v9 = @"bytes";
LABEL_22:
      v10 = WFLocalizedString(v9);
      goto LABEL_29;
    }

    kilobytes = [MEMORY[0x1E696B050] kilobytes];
    v12 = [magnitude isEqual:kilobytes];

    if (v12)
    {
      v9 = @"KB";
      goto LABEL_22;
    }

    megabytes = [MEMORY[0x1E696B050] megabytes];
    v14 = [magnitude isEqual:megabytes];

    if (v14)
    {
      v9 = @"MB";
      goto LABEL_22;
    }

    gigabytes = [MEMORY[0x1E696B050] gigabytes];
    v16 = [magnitude isEqual:gigabytes];

    if (v16)
    {
      v9 = @"GB";
      goto LABEL_22;
    }

    terabytes = [MEMORY[0x1E696B050] terabytes];
    v18 = [magnitude isEqual:terabytes];

    if (v18)
    {
      v9 = @"TB";
      goto LABEL_22;
    }

    petabytes = [MEMORY[0x1E696B050] petabytes];
    v20 = [magnitude isEqual:petabytes];

    if (v20)
    {
      v9 = @"PB";
      goto LABEL_22;
    }

    exabytes = [MEMORY[0x1E696B050] exabytes];
    v22 = [magnitude isEqual:exabytes];

    if (v22)
    {
      v9 = @"EB";
      goto LABEL_22;
    }

    zettabytes = [MEMORY[0x1E696B050] zettabytes];
    v24 = [magnitude isEqual:zettabytes];

    if (v24)
    {
      v9 = @"ZB";
      goto LABEL_22;
    }

    yottabytes = [MEMORY[0x1E696B050] yottabytes];
    v26 = [magnitude isEqual:yottabytes];

    if (v26)
    {
      v9 = @"YB";
      goto LABEL_22;
    }
  }

  v27 = objc_alloc_init(MEMORY[0x1E696AD30]);
  v28 = v27;
  if (!style)
  {
    v29 = 1;
    goto LABEL_27;
  }

  if (style == 1)
  {
    v29 = 3;
LABEL_27:
    [v27 setUnitStyle:v29];
  }

  v10 = [v28 stringFromUnit:magnitude];

LABEL_29:

  return v10;
}

- (void)updatePossibleUnits
{
  selfCopy = self;
  v70 = *MEMORY[0x1E69E9840];
  unitType = [(WFUnitQuantityFieldParameter *)self unitType];
  if (unitType)
  {
    definition = [(WFParameter *)selfCopy definition];
    v5 = [definition objectForKey:@"PossibleUnits"];

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = objc_opt_new();
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v62 objects:v69 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v63;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v63 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [MEMORY[0x1E69E0BE8] unitFromString:*(*(&v62 + 1) + 8 * i) unitType:unitType caseSensitive:0];
            symbol = [v12 symbol];
            [v6 setObject:v12 forKey:symbol];
          }

          v9 = [v7 countByEnumeratingWithState:&v62 objects:v69 count:16];
        }

        while (v9);
      }

      v14 = [v7 copy];
      v15 = v6;
    }

    else
    {

      v6 = objc_opt_new();
      v15 = objc_opt_new();
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v16 = [MEMORY[0x1E69E0BE8] availableUnitsForUnitType:unitType];
      v17 = [v16 countByEnumeratingWithState:&v58 objects:v68 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v59;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v59 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v58 + 1) + 8 * j);
            symbol2 = [v21 symbol];
            [v6 setObject:v21 forKey:symbol2];

            symbol3 = [v21 symbol];
            [v15 addObject:symbol3];
          }

          v18 = [v16 countByEnumeratingWithState:&v58 objects:v68 count:16];
        }

        while (v18);
      }

      v14 = [v15 copy];
      v7 = v6;
    }

    possibleUnits = selfCopy->_possibleUnits;
    selfCopy->_possibleUnits = v14;

    v25 = [v6 copy];
    unitSymbolMap = selfCopy->_unitSymbolMap;
    selfCopy->_unitSymbolMap = v25;
  }

  else if ([(WFUnitQuantityFieldParameter *)selfCopy fallbackToAllSupportedUnits])
  {
    v48 = selfCopy;
    v27 = objc_opt_new();
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [MEMORY[0x1E69E0BE8] availableUnitTypes];
    v28 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v55;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v55 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v54 + 1) + 8 * k);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v33 = [MEMORY[0x1E69E0BE8] availableUnitsForUnitType:v32];
          v34 = [v33 countByEnumeratingWithState:&v50 objects:v66 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v51;
            do
            {
              for (m = 0; m != v35; ++m)
              {
                if (*v51 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v50 + 1) + 8 * m);
                symbol4 = [v38 symbol];
                [v27 setObject:v38 forKey:symbol4];
              }

              v35 = [v33 countByEnumeratingWithState:&v50 objects:v66 count:16];
            }

            while (v35);
          }
        }

        v29 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v29);
    }

    allKeys = [v27 allKeys];
    v41 = [allKeys sortedArrayUsingSelector:sel_localizedStandardCompare_];
    selfCopy = v48;
    v42 = v48->_possibleUnits;
    v48->_possibleUnits = v41;

    v43 = [v27 copy];
    v44 = v48->_unitSymbolMap;
    v48->_unitSymbolMap = v43;

    unitType = 0;
  }

  else
  {
    v45 = selfCopy->_possibleUnits;
    selfCopy->_possibleUnits = MEMORY[0x1E695E0F0];

    v46 = selfCopy->_unitSymbolMap;
    selfCopy->_unitSymbolMap = MEMORY[0x1E695E0F8];
  }

  [(WFParameter *)selfCopy attributesDidChange];

  v47 = *MEMORY[0x1E69E9840];
}

- (id)availableUnitForStringValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"sec"])
  {
    seconds = [MEMORY[0x1E696B008] seconds];
LABEL_7:
    v6 = seconds;
    goto LABEL_8;
  }

  if ([valueCopy isEqualToString:@"min"])
  {
    seconds = [MEMORY[0x1E696B008] minutes];
    goto LABEL_7;
  }

  if ([valueCopy isEqualToString:@"hr"])
  {
    seconds = [MEMORY[0x1E696B008] hours];
    goto LABEL_7;
  }

  unitSymbolMap = [(WFUnitQuantityFieldParameter *)self unitSymbolMap];
  v6 = [unitSymbolMap objectForKey:valueCopy];

LABEL_8:

  return v6;
}

- (void)setFallbackToAllSupportedUnits:(BOOL)units
{
  if (self->_fallbackToAllSupportedUnits != units)
  {
    self->_fallbackToAllSupportedUnits = units;
    unitType = [(WFUnitQuantityFieldParameter *)self unitType];

    if (!unitType)
    {
      [(WFUnitQuantityFieldParameter *)self updatePossibleUnits];

      [(WFParameter *)self defaultSerializedRepresentationDidChange];
    }
  }
}

- (void)setDefaultUnit:(id)unit
{
  unitCopy = unit;
  unitType = [(WFUnitQuantityFieldParameter *)self unitType];

  if (unitType)
  {
    if (!unitCopy || (v6 = MEMORY[0x1E69E0BE8], -[WFUnitQuantityFieldParameter unitType](self, "unitType"), v7 = objc_claimAutoreleasedReturnValue(), [v6 unitClassForUnitType:v7], v7, (objc_opt_isKindOfClass() & 1) != 0))
    {
      objc_storeStrong(&self->_defaultUnit, unit);
      [(WFParameter *)self defaultSerializedRepresentationDidChange];
    }
  }
}

- (void)setUnitType:(id)type
{
  typeCopy = type;
  unitType = self->_unitType;
  if (unitType != typeCopy)
  {
    v12 = typeCopy;
    v6 = [(NSString *)unitType isEqualToString:typeCopy];
    typeCopy = v12;
    if (!v6)
    {
      v7 = [(NSString *)v12 copy];
      v8 = self->_unitType;
      self->_unitType = v7;

      if (v12)
      {
        [MEMORY[0x1E69E0BE8] unitClassForUnitType:?];
        p_defaultUnit = &self->_defaultUnit;
        defaultUnit = self->_defaultUnit;
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_8;
        }
      }

      else
      {
        p_defaultUnit = &self->_defaultUnit;
      }

      v11 = *p_defaultUnit;
      *p_defaultUnit = 0;

LABEL_8:
      [(WFUnitQuantityFieldParameter *)self updatePossibleUnits];
      [(WFParameter *)self defaultSerializedRepresentationDidChange];
      typeCopy = v12;
    }
  }
}

- (WFUnitQuantityFieldParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v22.receiver = self;
  v22.super_class = WFUnitQuantityFieldParameter;
  v5 = [(WFQuantityFieldParameter *)&v22 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"WFUnitType"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    unitType = v5->_unitType;
    v5->_unitType = v8;

    v10 = [definitionCopy objectForKey:@"WFParameterUnit"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);
    unit = v5->_unit;
    v5->_unit = v12;

    v14 = [definitionCopy objectForKey:@"WFParameterUnitAdjustForLocale"];
    v15 = objc_opt_class();
    v16 = WFEnforceClass_1501(v14, v15);
    v5->_unitAdjustForLocale = [v16 BOOLValue];

    v17 = [definitionCopy objectForKey:@"FallbackToAllSupportedUnits"];
    v18 = objc_opt_class();
    v19 = WFEnforceClass_1501(v17, v18);
    v5->_fallbackToAllSupportedUnits = [v19 BOOLValue];

    [(WFUnitQuantityFieldParameter *)v5 updatePossibleUnits];
    v20 = v5;
  }

  return v5;
}

@end