@interface WFDurationQuantityFieldParameter
+ (BOOL)unitStringIsDurationUnit:(id)a3;
+ (id)stateForDuration:(double)a3 possibleUnits:(id)a4;
+ (unint64_t)calendarUnitFromUnitString:(id)a3;
+ (unint64_t)possibleCalendarUnitsForUnits:(id)a3;
- (BOOL)isTimePickerParameter;
- (BOOL)parameterStateIsValid:(id)a3;
- (WFDurationQuantityFieldParameter)initWithDefinition:(id)a3;
- (id)defaultSerializedRepresentation;
- (id)localizedLabelForPossibleUnit:(id)a3 magnitude:(id)a4 style:(unint64_t)a5;
- (id)stateForDuration:(double)a3;
- (unint64_t)possibleCalendarUnits;
- (void)setPossibleCalendarUnits:(unint64_t)a3;
@end

@implementation WFDurationQuantityFieldParameter

- (BOOL)isTimePickerParameter
{
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"hr", @"min", @"sec", 0}];
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = [(WFQuantityFieldParameter *)self possibleUnits];
  v6 = [v4 initWithArray:v5];

  LOBYTE(v5) = [v6 isEqualToSet:v3];
  return v5;
}

- (id)defaultSerializedRepresentation
{
  v3 = [(WFParameter *)self definition];
  v4 = [v3 objectForKey:@"DefaultUnit"];
  v5 = objc_opt_class();
  v6 = WFEnforceClass_1501(v4, v5);
  v7 = v6;
  v8 = @"min";
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [(WFParameter *)self definition];
  v11 = [v10 objectForKey:@"DefaultValue"];
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
  v16 = [(WFQuantityParameterState *)v15 serializedRepresentation];

  return v16;
}

- (id)stateForDuration:(double)a3
{
  v5 = objc_opt_class();
  v6 = [(WFQuantityFieldParameter *)self possibleUnits];
  v7 = [v5 stateForDuration:v6 possibleUnits:a3];

  return v7;
}

- (id)localizedLabelForPossibleUnit:(id)a3 magnitude:(id)a4 style:(unint64_t)a5
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"sec"])
  {
    v8 = @"seconds";
LABEL_11:
    v9 = MEMORY[0x1E696AEC0];
    v10 = WFLocalizedPluralString(v8);
    v11 = [v9 localizedStringWithFormat:v10, objc_msgSend(v7, "intValue")];

    goto LABEL_12;
  }

  if ([v6 isEqualToString:@"min"])
  {
    v8 = @"minutes";
    goto LABEL_11;
  }

  if ([v6 isEqualToString:@"hr"])
  {
    v8 = @"hours";
    goto LABEL_11;
  }

  v8 = @"days";
  if ([v6 isEqualToString:@"days"])
  {
    goto LABEL_11;
  }

  v8 = @"weeks";
  if ([v6 isEqualToString:@"weeks"])
  {
    goto LABEL_11;
  }

  v8 = @"months";
  if ([v6 isEqualToString:@"months"])
  {
    goto LABEL_11;
  }

  v8 = @"years";
  if ([v6 isEqualToString:@"years"])
  {
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (BOOL)parameterStateIsValid:(id)a3
{
  v3 = a3;
  v4 = [v3 unitString];
  if (v4)
  {
    v5 = WFDurationQuantityPossibleUnits();
    v6 = [v3 unitString];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setPossibleCalendarUnits:(unint64_t)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  if ((v3 & 0x80) != 0)
  {
    [v5 addObject:@"sec"];
    if ((v3 & 0x40) == 0)
    {
LABEL_3:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"min"];
  if ((v3 & 0x20) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v5 addObject:@"hr"];
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v5 addObject:@"days"];
  if ((v3 & 0x2000) == 0)
  {
LABEL_6:
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v5 addObject:@"weeks"];
  if ((v3 & 8) == 0)
  {
LABEL_7:
    if ((v3 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  [v5 addObject:@"months"];
  if ((v3 & 4) != 0)
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
  v4 = [(WFQuantityFieldParameter *)self possibleUnits];
  v5 = [v3 possibleCalendarUnitsForUnits:v4];

  return v5;
}

- (WFDurationQuantityFieldParameter)initWithDefinition:(id)a3
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = WFDurationQuantityFieldParameter;
  v3 = [(WFQuantityFieldParameter *)&v11 initWithDefinition:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(WFQuantityFieldParameter *)v3 possibleUnits];
    v6 = [v5 count];

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

+ (id)stateForDuration:(double)a3 possibleUnits:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [v7 dateByAddingTimeInterval:a3];
  v9 = [a1 possibleCalendarUnitsForUnits:v6];
  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [v10 components:v9 fromDate:v7 toDate:v8 options:0];

  v12 = [v6 firstObject];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = v6;
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
          v21 = [MEMORY[0x1E695DEE8] currentCalendar];
          v8 = v30;
          v22 = [v21 components:v19 fromDate:v7 toDate:v30 options:0];

          v20 = [v22 valueForComponent:v19];
          v23 = v18;

          v12 = v23;
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
  v25 = [v24 stringValue];

  v26 = [[WFNumberStringSubstitutableState alloc] initWithValue:v25];
  v27 = [[WFQuantityParameterState alloc] initWithMagnitudeState:v26 unitString:v12];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (unint64_t)calendarUnitFromUnitString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"sec"])
  {
    v4 = 128;
  }

  else if ([v3 isEqualToString:@"min"])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:@"hr"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"days"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"weeks"])
  {
    v4 = 0x2000;
  }

  else if ([v3 isEqualToString:@"months"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"years"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 128;
  }

  return v4;
}

+ (BOOL)unitStringIsDurationUnit:(id)a3
{
  v3 = a3;
  v4 = WFDurationQuantityPossibleUnits();
  v5 = [v4 containsObject:v3];

  return v5;
}

+ (unint64_t)possibleCalendarUnitsForUnits:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
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

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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