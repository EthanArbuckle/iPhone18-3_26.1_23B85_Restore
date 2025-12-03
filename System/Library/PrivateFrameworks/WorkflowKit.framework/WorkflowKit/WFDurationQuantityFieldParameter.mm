@interface WFDurationQuantityFieldParameter
+ (BOOL)unitStringIsDurationUnit:(id)unit;
+ (id)stateForDuration:(double)duration possibleUnits:(id)units;
+ (unint64_t)calendarUnitFromUnitString:(id)string;
+ (unint64_t)possibleCalendarUnitsForUnits:(id)units;
- (BOOL)isTimePickerParameter;
- (BOOL)parameterStateIsValid:(id)valid;
- (WFDurationQuantityFieldParameter)initWithDefinition:(id)definition;
- (id)defaultSerializedRepresentation;
- (id)localizedLabelForPossibleUnit:(id)unit magnitude:(id)magnitude style:(unint64_t)style;
- (id)stateForDuration:(double)duration;
- (unint64_t)possibleCalendarUnits;
- (void)setPossibleCalendarUnits:(unint64_t)units;
@end

@implementation WFDurationQuantityFieldParameter

- (BOOL)isTimePickerParameter
{
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"hr", @"min", @"sec", 0}];
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  possibleUnits = [(WFQuantityFieldParameter *)self possibleUnits];
  v6 = [v4 initWithArray:possibleUnits];

  LOBYTE(possibleUnits) = [v6 isEqualToSet:v3];
  return possibleUnits;
}

- (id)defaultSerializedRepresentation
{
  definition = [(WFParameter *)self definition];
  v4 = [definition objectForKey:@"DefaultUnit"];
  v5 = objc_opt_class();
  v6 = WFEnforceClass_1501(v4, v5);
  v7 = v6;
  v8 = @"min";
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  definition2 = [(WFParameter *)self definition];
  v11 = [definition2 objectForKey:@"DefaultValue"];
  v12 = objc_opt_class();
  v13 = WFEnforceClass_1501(v11, v12);

  if (v13)
  {
    v14 = [[WFNumberStringSubstitutableState alloc] initWithValue:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [[WFQuantityParameterState alloc] initWithMagnitudeState:v14 unitString:v9];
  serializedRepresentation = [(WFQuantityParameterState *)v15 serializedRepresentation];

  return serializedRepresentation;
}

- (id)stateForDuration:(double)duration
{
  v5 = objc_opt_class();
  possibleUnits = [(WFQuantityFieldParameter *)self possibleUnits];
  v7 = [v5 stateForDuration:possibleUnits possibleUnits:duration];

  return v7;
}

- (id)localizedLabelForPossibleUnit:(id)unit magnitude:(id)magnitude style:(unint64_t)style
{
  unitCopy = unit;
  magnitudeCopy = magnitude;
  if ([unitCopy isEqualToString:@"sec"])
  {
    v8 = @"seconds";
LABEL_11:
    v9 = MEMORY[0x1E696AEC0];
    v10 = WFLocalizedPluralString(v8);
    v11 = [v9 localizedStringWithFormat:v10, objc_msgSend(magnitudeCopy, "intValue")];

    goto LABEL_12;
  }

  if ([unitCopy isEqualToString:@"min"])
  {
    v8 = @"minutes";
    goto LABEL_11;
  }

  if ([unitCopy isEqualToString:@"hr"])
  {
    v8 = @"hours";
    goto LABEL_11;
  }

  v8 = @"days";
  if ([unitCopy isEqualToString:@"days"])
  {
    goto LABEL_11;
  }

  v8 = @"weeks";
  if ([unitCopy isEqualToString:@"weeks"])
  {
    goto LABEL_11;
  }

  v8 = @"months";
  if ([unitCopy isEqualToString:@"months"])
  {
    goto LABEL_11;
  }

  v8 = @"years";
  if ([unitCopy isEqualToString:@"years"])
  {
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (BOOL)parameterStateIsValid:(id)valid
{
  validCopy = valid;
  unitString = [validCopy unitString];
  if (unitString)
  {
    v5 = WFDurationQuantityPossibleUnits();
    unitString2 = [validCopy unitString];
    v7 = [v5 containsObject:unitString2];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setPossibleCalendarUnits:(unint64_t)units
{
  unitsCopy = units;
  v5 = objc_opt_new();
  if ((unitsCopy & 0x80) != 0)
  {
    [v5 addObject:@"sec"];
    if ((unitsCopy & 0x40) == 0)
    {
LABEL_3:
      if ((unitsCopy & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((unitsCopy & 0x40) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"min"];
  if ((unitsCopy & 0x20) == 0)
  {
LABEL_4:
    if ((unitsCopy & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v5 addObject:@"hr"];
  if ((unitsCopy & 0x10) == 0)
  {
LABEL_5:
    if ((unitsCopy & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v5 addObject:@"days"];
  if ((unitsCopy & 0x2000) == 0)
  {
LABEL_6:
    if ((unitsCopy & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v5 addObject:@"weeks"];
  if ((unitsCopy & 8) == 0)
  {
LABEL_7:
    if ((unitsCopy & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  [v5 addObject:@"months"];
  if ((unitsCopy & 4) != 0)
  {
LABEL_8:
    [v5 addObject:@"years"];
  }

LABEL_9:
  [(WFQuantityFieldParameter *)self setPossibleUnits:v5];
}

- (unint64_t)possibleCalendarUnits
{
  v3 = objc_opt_class();
  possibleUnits = [(WFQuantityFieldParameter *)self possibleUnits];
  v5 = [v3 possibleCalendarUnitsForUnits:possibleUnits];

  return v5;
}

- (WFDurationQuantityFieldParameter)initWithDefinition:(id)definition
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = WFDurationQuantityFieldParameter;
  v3 = [(WFQuantityFieldParameter *)&v11 initWithDefinition:definition];
  v4 = v3;
  if (v3)
  {
    possibleUnits = [(WFQuantityFieldParameter *)v3 possibleUnits];
    v6 = [possibleUnits count];

    if (!v6)
    {
      v12[0] = @"sec";
      v12[1] = @"min";
      v12[2] = @"hr";
      v12[3] = @"days";
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
      [(WFQuantityFieldParameter *)v4 setPossibleUnits:v7];
    }

    v8 = v4;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)stateForDuration:(double)duration possibleUnits:(id)units
{
  v36 = *MEMORY[0x1E69E9840];
  unitsCopy = units;
  date = [MEMORY[0x1E695DF00] date];
  v8 = [date dateByAddingTimeInterval:duration];
  v9 = [self possibleCalendarUnitsForUnits:unitsCopy];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [currentCalendar components:v9 fromDate:date toDate:v8 options:0];

  firstObject = [unitsCopy firstObject];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = unitsCopy;
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v30 = v8;
    v16 = *v32;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v19 = [objc_opt_class() calendarUnitFromUnitString:v18];
        if ([v11 valueForComponent:v19])
        {
          currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
          v8 = v30;
          v22 = [currentCalendar2 components:v19 fromDate:date toDate:v30 options:0];

          v20 = [v22 valueForComponent:v19];
          v23 = v18;

          firstObject = v23;
          goto LABEL_12;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    v20 = 0;
    v8 = v30;
  }

  else
  {
    v20 = 0;
  }

LABEL_12:

  v24 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
  stringValue = [v24 stringValue];

  v26 = [[WFNumberStringSubstitutableState alloc] initWithValue:stringValue];
  v27 = [[WFQuantityParameterState alloc] initWithMagnitudeState:v26 unitString:firstObject];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (unint64_t)calendarUnitFromUnitString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"sec"])
  {
    v4 = 128;
  }

  else if ([stringCopy isEqualToString:@"min"])
  {
    v4 = 64;
  }

  else if ([stringCopy isEqualToString:@"hr"])
  {
    v4 = 32;
  }

  else if ([stringCopy isEqualToString:@"days"])
  {
    v4 = 16;
  }

  else if ([stringCopy isEqualToString:@"weeks"])
  {
    v4 = 0x2000;
  }

  else if ([stringCopy isEqualToString:@"months"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"years"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 128;
  }

  return v4;
}

+ (BOOL)unitStringIsDurationUnit:(id)unit
{
  unitCopy = unit;
  v4 = WFDurationQuantityPossibleUnits();
  v5 = [v4 containsObject:unitCopy];

  return v5;
}

+ (unint64_t)possibleCalendarUnitsForUnits:(id)units
{
  v17 = *MEMORY[0x1E69E9840];
  unitsCopy = units;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [unitsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(unitsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isEqualToString:@"sec"])
        {
          v6 |= 0x80uLL;
        }

        else if ([v9 isEqualToString:@"min"])
        {
          v6 |= 0x40uLL;
        }

        else if ([v9 isEqualToString:@"hr"])
        {
          v6 |= 0x20uLL;
        }

        else if ([v9 isEqualToString:@"days"])
        {
          v6 |= 0x10uLL;
        }

        else if ([v9 isEqualToString:@"weeks"])
        {
          v6 |= 0x2000uLL;
        }

        else if ([v9 isEqualToString:@"months"])
        {
          v6 |= 8uLL;
        }

        else if ([v9 isEqualToString:@"years"])
        {
          v6 |= 4uLL;
        }
      }

      v5 = [unitsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

@end