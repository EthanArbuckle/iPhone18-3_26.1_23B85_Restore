@interface WFActionParameterSummary
- (WFActionParameterSummary)initWithLocalizedString:(id)string;
- (WFActionParameterSummary)initWithString:(id)string title:(id)title;
- (WFActionParameterSummary)initWithValues:(id)values title:(id)title;
- (id)localizedFormatStringWithAction:(id)action;
- (id)localizedTitle;
@end

@implementation WFActionParameterSummary

- (id)localizedTitle
{
  title = [(WFActionParameterSummary *)self title];
  localize = [title localize];

  return localize;
}

- (id)localizedFormatStringWithAction:(id)action
{
  actionCopy = action;
  singleFormatString = [(WFActionParameterSummary *)self singleFormatString];
  if (singleFormatString)
  {
    v6 = singleFormatString;
    singleFormatLocalizedString = [(WFActionParameterSummary *)self singleFormatLocalizedString];

    if (!singleFormatLocalizedString)
    {
      singleFormatString2 = [(WFActionParameterSummary *)self singleFormatString];
      localize = [singleFormatString2 localize];
      [(WFActionParameterSummary *)self setSingleFormatLocalizedString:localize];
    }
  }

  singleFormatLocalizedString2 = [(WFActionParameterSummary *)self singleFormatLocalizedString];

  if (singleFormatLocalizedString2)
  {
    singleFormatLocalizedString3 = [(WFActionParameterSummary *)self singleFormatLocalizedString];
  }

  else
  {
    visibleParametersForParameterSummary = [actionCopy visibleParametersForParameterSummary];
    parameterKeysIgnoredForParameterSummary = [actionCopy parameterKeysIgnoredForParameterSummary];
    v14 = objc_alloc(MEMORY[0x1E695DFD8]);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __60__WFActionParameterSummary_localizedFormatStringWithAction___block_invoke;
    v29[3] = &unk_1E837A408;
    v30 = parameterKeysIgnoredForParameterSummary;
    v15 = parameterKeysIgnoredForParameterSummary;
    v16 = [visibleParametersForParameterSummary if_compactMap:v29];
    v17 = [v14 initWithArray:v16];

    possibleValues = [(WFActionParameterSummary *)self possibleValues];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60__WFActionParameterSummary_localizedFormatStringWithAction___block_invoke_2;
    v26[3] = &unk_1E837A430;
    v27 = v17;
    v28 = actionCopy;
    v19 = v17;
    v20 = [possibleValues if_map:v26];

    v21 = [v20 sortedArrayUsingComparator:&__block_literal_global_44562];

    lastObject = [v21 lastObject];
    v23 = lastObject;
    if (lastObject)
    {
      value = [lastObject value];
      singleFormatLocalizedString3 = [value localizedString];
    }

    else
    {
      singleFormatLocalizedString3 = 0;
    }
  }

  return singleFormatLocalizedString3;
}

id __60__WFActionParameterSummary_localizedFormatStringWithAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 key];
  if ([v4 containsObject:v5] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 key];
  }

  return v6;
}

uint64_t __60__WFActionParameterSummary_localizedFormatStringWithAction___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (![v4 matchType])
  {
    goto LABEL_4;
  }

  if (![v5 matchType])
  {
    goto LABEL_6;
  }

  v6 = [v4 numberOfMatchingParameters];
  if (v6 < [v5 numberOfMatchingParameters])
  {
LABEL_4:
    v7 = -1;
    goto LABEL_11;
  }

  v8 = [v4 numberOfMatchingParameters];
  if (v8 > [v5 numberOfMatchingParameters])
  {
LABEL_6:
    v7 = 1;
    goto LABEL_11;
  }

  v9 = [v4 value];
  v10 = [v9 requiredValues];
  v11 = [v10 count];
  v12 = [v5 value];
  v13 = [v12 requiredValues];
  if (v11 < [v13 count])
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

LABEL_11:
  return v7;
}

- (WFActionParameterSummary)initWithValues:(id)values title:(id)title
{
  valuesCopy = values;
  titleCopy = title;
  if (!valuesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionParameterSummary.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"values"}];
  }

  v15.receiver = self;
  v15.super_class = WFActionParameterSummary;
  v10 = [(WFActionParameterSummary *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_possibleValues, values);
    objc_storeStrong(&v11->_title, title);
    v12 = v11;
  }

  return v11;
}

- (WFActionParameterSummary)initWithString:(id)string title:(id)title
{
  stringCopy = string;
  titleCopy = title;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionParameterSummary.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"string"}];
  }

  v15.receiver = self;
  v15.super_class = WFActionParameterSummary;
  v10 = [(WFActionParameterSummary *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_singleFormatString, string);
    objc_storeStrong(&v11->_title, title);
    v12 = v11;
  }

  return v11;
}

- (WFActionParameterSummary)initWithLocalizedString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionParameterSummary.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"string"}];
  }

  v12.receiver = self;
  v12.super_class = WFActionParameterSummary;
  v7 = [(WFActionParameterSummary *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_singleFormatLocalizedString, string);
    v9 = v8;
  }

  return v8;
}

@end