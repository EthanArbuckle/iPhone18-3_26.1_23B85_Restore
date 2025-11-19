@interface WFActionParameterSummaryValue
+ (id)parenthesisRegularExpression;
- (NSString)localizedString;
- (WFActionParameterSummaryValue)initWithKey:(id)a3 localizedSummaryString:(id)a4;
- (WFActionParameterSummaryValue)initWithKey:(id)a3 summaryString:(id)a4;
- (id)matchVisibleParameterKeys:(id)a3 checkingRequiredValuesInAction:(id)a4;
@end

@implementation WFActionParameterSummaryValue

- (id)matchVisibleParameterKeys:(id)a3 checkingRequiredValuesInAction:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695DFD8]);
  v9 = [(WFActionParameterSummaryValue *)self requiredVisibleParameterKeys];
  v10 = [v8 initWithArray:v9];

  if ([v10 isSubsetOfSet:v6])
  {
    v32 = v10;
    v33 = v6;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [(WFActionParameterSummaryValue *)self requiredValues];
    v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v38;
      v34 = v7;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          v16 = [(WFActionParameterSummaryValue *)self requiredValues];
          v17 = [v16 objectForKey:v15];

          v18 = [v7 parameterStateForKey:v15];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
            v36 = v17;
            v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v17, "BOOLValue")}];
            v21 = [v19 number];
            v22 = [v21 isEqualToNumber:v20];

            if (!v22)
            {
              v29 = [WFActionParameterSummaryValueMatchResult noMatchWithValue:self];

              v6 = v33;
              v7 = v34;
              v10 = v32;
              v17 = v36;
              goto LABEL_23;
            }

            v7 = v34;
            v23 = v36;
          }

          else
          {
            if (!v18)
            {
              goto LABEL_22;
            }

            v24 = [v18 serializedRepresentation];
            v23 = v17;
            v25 = [v24 isEqual:v17];

            if ((v25 & 1) == 0)
            {
              v17 = v23;
LABEL_22:
              v29 = [WFActionParameterSummaryValueMatchResult noMatchWithValue:self];
              v19 = v18;
              v10 = v32;
              v6 = v33;
LABEL_23:

              goto LABEL_24;
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v10 = v32;
    v26 = [v32 count];
    v6 = v33;
    if (v26 == [v33 count])
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    v28 = -[WFActionParameterSummaryValueMatchResult initWithValue:matchType:numberOfMatchingParameters:]([WFActionParameterSummaryValueMatchResult alloc], "initWithValue:matchType:numberOfMatchingParameters:", self, v27, [v32 count]);
  }

  else
  {
    v28 = [WFActionParameterSummaryValueMatchResult noMatchWithValue:self];
  }

  v29 = v28;
LABEL_24:

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (NSString)localizedString
{
  v3 = [(WFActionParameterSummaryValue *)self summaryString];
  if (v3)
  {
    v4 = v3;
    v5 = [(WFActionParameterSummaryValue *)self localizedSummaryString];

    if (!v5)
    {
      v6 = [(WFActionParameterSummaryValue *)self summaryString];
      v7 = [v6 localize];
      [(WFActionParameterSummaryValue *)self setLocalizedSummaryString:v7];
    }
  }

  v8 = [(WFActionParameterSummaryValue *)self localizedSummaryString];

  if (v8)
  {
    v9 = [(WFActionParameterSummaryValue *)self localizedSummaryString];
  }

  else
  {
    v9 = &stru_1F4A1C408;
  }

  return v9;
}

- (WFActionParameterSummaryValue)initWithKey:(id)a3 localizedSummaryString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = WFActionParameterSummaryValue;
  v8 = [(WFActionParameterSummaryValue *)&v14 init];
  v9 = v8;
  if (v8)
  {
    WFActionParameterSummaryValueCommonInit(v8, v6);
    v10 = [v7 copy];
    localizedSummaryString = v9->_localizedSummaryString;
    v9->_localizedSummaryString = v10;

    v12 = v9;
  }

  return v9;
}

- (WFActionParameterSummaryValue)initWithKey:(id)a3 summaryString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = WFActionParameterSummaryValue;
  v8 = [(WFActionParameterSummaryValue *)&v14 init];
  v9 = v8;
  if (v8)
  {
    WFActionParameterSummaryValueCommonInit(v8, v6);
    v10 = [v7 copy];
    summaryString = v9->_summaryString;
    v9->_summaryString = v10;

    v12 = v9;
  }

  return v9;
}

+ (id)parenthesisRegularExpression
{
  if (parenthesisRegularExpression_onceToken != -1)
  {
    dispatch_once(&parenthesisRegularExpression_onceToken, &__block_literal_global_52418);
  }

  v3 = parenthesisRegularExpression_regularExpression;

  return v3;
}

void __61__WFActionParameterSummaryValue_parenthesisRegularExpression__block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\((.*)\\)" options:0 error:0];
  v1 = parenthesisRegularExpression_regularExpression;
  parenthesisRegularExpression_regularExpression = v0;
}

@end