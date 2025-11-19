@interface WFContentProperty(WFParameter)
- (id)parameterDefinition;
@end

@implementation WFContentProperty(WFParameter)

- (id)parameterDefinition
{
  v2 = objc_opt_new();
  v3 = WFLocalizedStringResourceWithKey(@"Value (ContentPropertyParameter)", @"Value");
  [v2 setObject:v3 forKeyedSubscript:@"Label"];

  v4 = MEMORY[0x1E696AD98];
  if ([a1 multipleValues])
  {
    v5 = [a1 isLabeledValue] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 numberWithInt:v5];
  [v2 setObject:v6 forKeyedSubscript:@"AllowsMultipleValues"];

  if (([a1 hasPropertyClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(a1, "hasPropertyClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(a1, "hasPropertyClass:", objc_opt_class()))
  {
    if ([a1 hasPossibleValues])
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [v2 setObject:v8 forKeyedSubscript:@"Class"];

      [v2 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"ProvidesLocalizedValues"];
      v9 = [a1 possibleValues];
      v10 = WFContentPropertyGetPossibleValuesSynchronouslyWithSemaphore();
      [v2 setObject:v10 forKeyedSubscript:@"Items"];

LABEL_11:
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (![a1 hasPropertyClass:objc_opt_class()])
  {
    if (![a1 hasPropertyClass:objc_opt_class()] && !objc_msgSend(a1, "hasPropertyClass:", objc_opt_class()) && !objc_msgSend(a1, "hasPropertyClass:", objc_opt_class()) && !objc_msgSend(a1, "hasPropertyClass:", objc_opt_class()) && !objc_msgSend(a1, "hasPropertyClass:", objc_opt_class()))
    {
      v20 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v21 = [a1 hasPropertyClass:objc_opt_class()];

      if (v21)
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        [v2 setObject:v23 forKeyedSubscript:@"Class"];

        v24 = WFLocalizedStringResourceWithKey(@"Yes (ContentPropertyParameter)", @"Yes");
        [v2 setObject:v24 forKeyedSubscript:@"OnDisplayName"];

        v9 = WFLocalizedStringResourceWithKey(@"No (ContentPropertyParameter)", @"No");
        v12 = @"OffDisplayName";
        goto LABEL_10;
      }

      [a1 hasPropertyClass:objc_opt_class()];
    }

LABEL_9:
    v11 = objc_opt_class();
    v9 = NSStringFromClass(v11);
    v12 = @"Class";
LABEL_10:
    [v2 setObject:v9 forKeyedSubscript:v12];
    goto LABEL_11;
  }

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v2 setObject:v15 forKeyedSubscript:@"Class"];

  if (([a1 timeUnits] & 0x40) != 0)
  {
    LODWORD(v16) = 1;
  }

  else
  {
    v16 = ([a1 timeUnits] >> 5) & 1;
  }

  if (([a1 timeUnits] & 4) != 0 || (objc_msgSend(a1, "timeUnits") & 8) != 0 || (objc_msgSend(a1, "timeUnits") & 0x10) != 0)
  {
    LOBYTE(v18) = 1;
LABEL_28:
    if (v16 & 1 | ((v18 & 1) == 0))
    {
      v19 = @"DateAndTime";
    }

    else
    {
      v19 = @"Date";
    }

    goto LABEL_31;
  }

  v17 = [a1 timeUnits];
  v18 = (v17 >> 13) & 1;
  if (!v16 || (v17 & 0x2000) != 0)
  {
    goto LABEL_28;
  }

  v19 = @"Time";
LABEL_31:
  [v2 setObject:v19 forKeyedSubscript:@"HintDateMode"];
  [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"DetectsAllDayDates"];
  [v2 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"DisplaysAllDayString"];
  [v2 setObject:@"String" forKeyedSubscript:@"ResultType"];
LABEL_12:

  return v2;
}

@end