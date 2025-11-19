@interface WFUnitQuantityFieldParameter
- (BOOL)parameterStateIsValid:(id)a3;
- (NSString)defaultUnitString;
- (WFUnitQuantityFieldParameter)initWithDefinition:(id)a3;
- (id)availableUnitForStringValue:(id)a3;
- (id)defaultSerializedRepresentation;
- (id)localizedLabelForPossibleUnit:(id)a3 magnitude:(id)a4 style:(unint64_t)a5;
- (void)setDefaultUnit:(id)a3;
- (void)setFallbackToAllSupportedUnits:(BOOL)a3;
- (void)setUnitType:(id)a3;
- (void)updatePossibleUnits;
@end

@implementation WFUnitQuantityFieldParameter

- (id)defaultSerializedRepresentation
{
  v3 = [(WFUnitQuantityFieldParameter *)self unitType];

  if (v3)
  {
    v4 = [(WFParameter *)self definition];
    v5 = [v4 objectForKey:@"DefaultValue"];
    v6 = objc_opt_class();
    v7 = WFEnforceClass_1501(v5, v6);

    if (v7)
    {
      v8 = [WFNumberStringSubstitutableState alloc];
      v9 = [v7 stringValue];
      v10 = [(WFNumberStringSubstitutableState *)v8 initWithValue:v9];
    }

    else
    {
      v10 = 0;
    }

    v12 = [(WFUnitQuantityFieldParameter *)self defaultUnitString];
    if (v12)
    {
      v13 = [[WFQuantityParameterState alloc] initWithMagnitudeState:v10 unitString:v12];
      v11 = [(WFQuantityParameterState *)v13 serializedRepresentation];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)defaultUnitString
{
  v3 = [(WFUnitQuantityFieldParameter *)self defaultUnit];
  v4 = [v3 symbol];

  if (!v4)
  {
    v5 = [(WFParameter *)self definition];
    v6 = [v5 objectForKey:@"DefaultUnit"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);

    v9 = [MEMORY[0x1E69E0BE8] unitFromString:v8];
    if (v9)
    {
      v4 = v8;
    }

    else
    {
      v10 = MEMORY[0x1E69E0BE8];
      v11 = [(WFUnitQuantityFieldParameter *)self unitType];
      v12 = [v10 defaultUnitForUnitType:v11];
      v4 = [v12 symbol];

      v13 = [(WFUnitQuantityFieldParameter *)self possibleUnits];
      LOBYTE(v12) = [v13 containsObject:v4];

      if ((v12 & 1) == 0)
      {
        v14 = [(WFUnitQuantityFieldParameter *)self possibleUnits];
        v15 = [v14 firstObject];

        v4 = v15;
      }
    }
  }

  return v4;
}

- (BOOL)parameterStateIsValid:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    if (isKindOfClass)
    {
      v8 = [v4 unitString];
      v9 = [(WFUnitQuantityFieldParameter *)self availableUnitForStringValue:v8];
      v10 = v9 != 0;
    }

    else
    {
      v11 = v4;
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

      v8 = v13;

      if (v12)
      {
        v17 = 0;
        v18 = &v17;
        v19 = 0x2020000000;
        v20 = 1;
        v14 = [v11 parameterStates];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __54__WFUnitQuantityFieldParameter_parameterStateIsValid___block_invoke;
        v16[3] = &unk_1E837FEC8;
        v16[4] = self;
        v16[5] = &v17;
        [v14 enumerateObjectsUsingBlock:v16];

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

- (id)localizedLabelForPossibleUnit:(id)a3 magnitude:(id)a4 style:(unint64_t)a5
{
  v6 = [(WFUnitQuantityFieldParameter *)self availableUnitForStringValue:a3, a4];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E696B050] bytes];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = @"bytes";
LABEL_22:
      v10 = WFLocalizedString(v9);
      goto LABEL_29;
    }

    v11 = [MEMORY[0x1E696B050] kilobytes];
    v12 = [v6 isEqual:v11];

    if (v12)
    {
      v9 = @"KB";
      goto LABEL_22;
    }

    v13 = [MEMORY[0x1E696B050] megabytes];
    v14 = [v6 isEqual:v13];

    if (v14)
    {
      v9 = @"MB";
      goto LABEL_22;
    }

    v15 = [MEMORY[0x1E696B050] gigabytes];
    v16 = [v6 isEqual:v15];

    if (v16)
    {
      v9 = @"GB";
      goto LABEL_22;
    }

    v17 = [MEMORY[0x1E696B050] terabytes];
    v18 = [v6 isEqual:v17];

    if (v18)
    {
      v9 = @"TB";
      goto LABEL_22;
    }

    v19 = [MEMORY[0x1E696B050] petabytes];
    v20 = [v6 isEqual:v19];

    if (v20)
    {
      v9 = @"PB";
      goto LABEL_22;
    }

    v21 = [MEMORY[0x1E696B050] exabytes];
    v22 = [v6 isEqual:v21];

    if (v22)
    {
      v9 = @"EB";
      goto LABEL_22;
    }

    v23 = [MEMORY[0x1E696B050] zettabytes];
    v24 = [v6 isEqual:v23];

    if (v24)
    {
      v9 = @"ZB";
      goto LABEL_22;
    }

    v25 = [MEMORY[0x1E696B050] yottabytes];
    v26 = [v6 isEqual:v25];

    if (v26)
    {
      v9 = @"YB";
      goto LABEL_22;
    }
  }

  v27 = objc_alloc_init(MEMORY[0x1E696AD30]);
  v28 = v27;
  if (!a5)
  {
    v29 = 1;
    goto LABEL_27;
  }

  if (a5 == 1)
  {
    v29 = 3;
LABEL_27:
    [v27 setUnitStyle:v29];
  }

  v10 = [v28 stringFromUnit:v6];

LABEL_29:

  return v10;
}

- (void)updatePossibleUnits
{
  v2 = self;
  v70 = *MEMORY[0x1E69E9840];
  v3 = [(WFUnitQuantityFieldParameter *)self unitType];
  if (v3)
  {
    v4 = [(WFParameter *)v2 definition];
    v5 = [v4 objectForKey:@"PossibleUnits"];

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

            v12 = [MEMORY[0x1E69E0BE8] unitFromString:*(*(&v62 + 1) + 8 * i) unitType:v3 caseSensitive:0];
            v13 = [v12 symbol];
            [v6 setObject:v12 forKey:v13];
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
      v16 = [MEMORY[0x1E69E0BE8] availableUnitsForUnitType:v3];
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
            v22 = [v21 symbol];
            [v6 setObject:v21 forKey:v22];

            v23 = [v21 symbol];
            [v15 addObject:v23];
          }

          v18 = [v16 countByEnumeratingWithState:&v58 objects:v68 count:16];
        }

        while (v18);
      }

      v14 = [v15 copy];
      v7 = v6;
    }

    possibleUnits = v2->_possibleUnits;
    v2->_possibleUnits = v14;

    v25 = [v6 copy];
    unitSymbolMap = v2->_unitSymbolMap;
    v2->_unitSymbolMap = v25;
  }

  else if ([(WFUnitQuantityFieldParameter *)v2 fallbackToAllSupportedUnits])
  {
    v48 = v2;
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
                v39 = [v38 symbol];
                [v27 setObject:v38 forKey:v39];
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

    v40 = [v27 allKeys];
    v41 = [v40 sortedArrayUsingSelector:sel_localizedStandardCompare_];
    v2 = v48;
    v42 = v48->_possibleUnits;
    v48->_possibleUnits = v41;

    v43 = [v27 copy];
    v44 = v48->_unitSymbolMap;
    v48->_unitSymbolMap = v43;

    v3 = 0;
  }

  else
  {
    v45 = v2->_possibleUnits;
    v2->_possibleUnits = MEMORY[0x1E695E0F0];

    v46 = v2->_unitSymbolMap;
    v2->_unitSymbolMap = MEMORY[0x1E695E0F8];
  }

  [(WFParameter *)v2 attributesDidChange];

  v47 = *MEMORY[0x1E69E9840];
}

- (id)availableUnitForStringValue:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"sec"])
  {
    v5 = [MEMORY[0x1E696B008] seconds];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"min"])
  {
    v5 = [MEMORY[0x1E696B008] minutes];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"hr"])
  {
    v5 = [MEMORY[0x1E696B008] hours];
    goto LABEL_7;
  }

  v8 = [(WFUnitQuantityFieldParameter *)self unitSymbolMap];
  v6 = [v8 objectForKey:v4];

LABEL_8:

  return v6;
}

- (void)setFallbackToAllSupportedUnits:(BOOL)a3
{
  if (self->_fallbackToAllSupportedUnits != a3)
  {
    self->_fallbackToAllSupportedUnits = a3;
    v4 = [(WFUnitQuantityFieldParameter *)self unitType];

    if (!v4)
    {
      [(WFUnitQuantityFieldParameter *)self updatePossibleUnits];

      [(WFParameter *)self defaultSerializedRepresentationDidChange];
    }
  }
}

- (void)setDefaultUnit:(id)a3
{
  v8 = a3;
  v5 = [(WFUnitQuantityFieldParameter *)self unitType];

  if (v5)
  {
    if (!v8 || (v6 = MEMORY[0x1E69E0BE8], -[WFUnitQuantityFieldParameter unitType](self, "unitType"), v7 = objc_claimAutoreleasedReturnValue(), [v6 unitClassForUnitType:v7], v7, (objc_opt_isKindOfClass() & 1) != 0))
    {
      objc_storeStrong(&self->_defaultUnit, a3);
      [(WFParameter *)self defaultSerializedRepresentationDidChange];
    }
  }
}

- (void)setUnitType:(id)a3
{
  v4 = a3;
  unitType = self->_unitType;
  if (unitType != v4)
  {
    v12 = v4;
    v6 = [(NSString *)unitType isEqualToString:v4];
    v4 = v12;
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
      v4 = v12;
    }
  }
}

- (WFUnitQuantityFieldParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = WFUnitQuantityFieldParameter;
  v5 = [(WFQuantityFieldParameter *)&v22 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"WFUnitType"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    unitType = v5->_unitType;
    v5->_unitType = v8;

    v10 = [v4 objectForKey:@"WFParameterUnit"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);
    unit = v5->_unit;
    v5->_unit = v12;

    v14 = [v4 objectForKey:@"WFParameterUnitAdjustForLocale"];
    v15 = objc_opt_class();
    v16 = WFEnforceClass_1501(v14, v15);
    v5->_unitAdjustForLocale = [v16 BOOLValue];

    v17 = [v4 objectForKey:@"FallbackToAllSupportedUnits"];
    v18 = objc_opt_class();
    v19 = WFEnforceClass_1501(v17, v18);
    v5->_fallbackToAllSupportedUnits = [v19 BOOLValue];

    [(WFUnitQuantityFieldParameter *)v5 updatePossibleUnits];
    v20 = v5;
  }

  return v5;
}

@end