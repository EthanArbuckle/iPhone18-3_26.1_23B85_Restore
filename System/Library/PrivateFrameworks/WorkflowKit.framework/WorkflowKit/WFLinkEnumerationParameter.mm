@interface WFLinkEnumerationParameter
- (WFLinkEnumerationParameter)initWithDefinition:(id)definition;
- (id)accessoryImageForPossibleState:(id)state;
@end

@implementation WFLinkEnumerationParameter

- (id)accessoryImageForPossibleState:(id)state
{
  stateCopy = state;
  possibleStates = [(WFEnumerationParameter *)self possibleStates];
  if (possibleStates)
  {
    v6 = possibleStates;
    displayImages = [(WFLinkEnumerationParameter *)self displayImages];
    v8 = [displayImages count];
    possibleStates2 = [(WFEnumerationParameter *)self possibleStates];
    v10 = [possibleStates2 count];

    if (v8 == v10)
    {
      possibleStates3 = [(WFEnumerationParameter *)self possibleStates];
      v12 = [possibleStates3 indexOfObject:stateCopy];

      displayImages2 = [(WFLinkEnumerationParameter *)self displayImages];
      v14 = [displayImages2 count];

      if (v12 < v14)
      {
        displayImages3 = [(WFLinkEnumerationParameter *)self displayImages];
        v16 = [displayImages3 objectAtIndexedSubscript:v12];

        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;

            goto LABEL_9;
          }
        }
      }
    }
  }

  v19.receiver = self;
  v19.super_class = WFLinkEnumerationParameter;
  v17 = [(WFEnumerationParameter *)&v19 accessoryImageForPossibleState:stateCopy];
LABEL_9:

  return v17;
}

- (WFLinkEnumerationParameter)initWithDefinition:(id)definition
{
  v26 = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  v17.receiver = self;
  v17.super_class = WFLinkEnumerationParameter;
  v5 = [(WFEnumerationParameter *)&v17 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"ItemImages"];
    v7 = objc_opt_class();
    v8 = v6;
    if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = getWFGeneralLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = objc_opt_class();
        *buf = 136315906;
        v19 = "WFEnforceClass";
        v20 = 2114;
        v21 = v8;
        v22 = 2114;
        v23 = v11;
        v24 = 2114;
        v25 = v7;
        v12 = v11;
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    displayImages = v5->_displayImages;
    v5->_displayImages = v9;

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end