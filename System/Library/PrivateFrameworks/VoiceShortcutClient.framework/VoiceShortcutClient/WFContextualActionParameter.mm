@interface WFContextualActionParameter
- (BOOL)isEqual:(id)equal;
- (WFContextualActionParameter)initWithCoder:(id)coder;
- (WFContextualActionParameter)initWithType:(id)type displayString:(id)string wfParameterKey:(id)key wfSerializedRepresentation:(id)representation askEachTime:(BOOL)time askEachTimeCollectionFilter:(id)filter actionInput:(BOOL)input;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContextualActionParameter

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeObject:type forKey:@"type"];
  [coderCopy encodeObject:self->_displayString forKey:@"displayString"];
  [coderCopy encodeObject:self->_wfParameterKey forKey:@"wfParameterKey"];
  [coderCopy encodeObject:self->_wfSerializedRepresentation forKey:@"wfSerializedRepresentation"];
  [coderCopy encodeBool:self->_askEachTime forKey:@"askEachTime"];
  [coderCopy encodeObject:self->_askEachTimeCollectionFilter forKey:@"askEachTimeCollectionFilter"];
  [coderCopy encodeBool:self->_actionInput forKey:@"actionInput"];
}

- (WFContextualActionParameter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wfParameterKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayString"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"askEachTimeCollectionFilter"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"wfSerializedRepresentation"];

  v15 = [coderCopy decodeBoolForKey:@"askEachTime"];
  v16 = [coderCopy decodeBoolForKey:@"actionInput"];

  if (v5)
  {
    LOBYTE(v20) = v16;
    v17 = v21;
    self = [(WFContextualActionParameter *)self initWithType:v5 displayString:v6 wfParameterKey:v21 wfSerializedRepresentation:v14 askEachTime:v15 askEachTimeCollectionFilter:v7 actionInput:v20];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
    v17 = v21;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_48:

      goto LABEL_49;
    }

    type = [(WFContextualActionParameter *)v6 type];
    type2 = [(WFContextualActionParameter *)self type];
    v9 = type;
    v10 = type2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_46;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_47:

        goto LABEL_48;
      }
    }

    wfParameterKey = [(WFContextualActionParameter *)v6 wfParameterKey];
    wfParameterKey2 = [(WFContextualActionParameter *)self wfParameterKey];
    v14 = wfParameterKey;
    v18 = wfParameterKey2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_45;
      }

      v21 = [v14 isEqualToString:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_46:

        goto LABEL_47;
      }
    }

    displayString = [(WFContextualActionParameter *)v6 displayString];
    displayString2 = [(WFContextualActionParameter *)self displayString];
    v20 = displayString;
    v24 = displayString2;
    v51 = v24;
    if (v20 == v24)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      if (!v20)
      {
        v25 = v24;
        v26 = 0;
        goto LABEL_43;
      }

      v25 = v24;
      v26 = v20;
      if (!v24)
      {
LABEL_43:

LABEL_44:
        v19 = v51;
LABEL_45:

        goto LABEL_46;
      }

      v12 = [v20 isEqualToString:v24];

      if (!v12)
      {
        goto LABEL_44;
      }
    }

    v50 = v20;
    wfSerializedRepresentation = [(WFContextualActionParameter *)v6 wfSerializedRepresentation];
    wfSerializedRepresentation2 = [(WFContextualActionParameter *)self wfSerializedRepresentation];
    v26 = wfSerializedRepresentation;
    v29 = wfSerializedRepresentation2;
    v30 = v26;
    v31 = v29;
    if (v26 == v29)
    {
      v49 = v29;
    }

    else
    {
      LOBYTE(v12) = 0;
      v32 = v29;
      if (!v26 || !v29)
      {
        goto LABEL_42;
      }

      v33 = v29;
      v34 = v30;
      v35 = [v30 isEqual:v29];
      v49 = v33;

      v26 = v34;
      if (!v35)
      {
        goto LABEL_31;
      }
    }

    isAskEachTime = [(WFContextualActionParameter *)v6 isAskEachTime];
    if (isAskEachTime != [(WFContextualActionParameter *)self isAskEachTime])
    {
LABEL_31:
      LOBYTE(v12) = 0;
      v25 = v49;
      v20 = v50;
      goto LABEL_43;
    }

    askEachTimeCollectionFilter = [(WFContextualActionParameter *)v6 askEachTimeCollectionFilter];
    askEachTimeCollectionFilter2 = [(WFContextualActionParameter *)self askEachTimeCollectionFilter];
    v39 = askEachTimeCollectionFilter;
    v40 = askEachTimeCollectionFilter2;
    v48 = v39;
    if (v39 == v40)
    {
      v47 = v40;
    }

    else
    {
      if (!v39 || !v40)
      {
        v43 = v40;

        v32 = v43;
        LOBYTE(v12) = 0;
        v30 = v26;
        v26 = v48;
        v31 = v49;
        goto LABEL_42;
      }

      v41 = v40;
      v46 = [v48 isEqual:v40];
      v47 = v41;

      if (!v46)
      {
        LOBYTE(v12) = 0;
LABEL_40:
        v30 = v26;
        v26 = v48;
        v31 = v49;
        v32 = v47;
LABEL_42:
        v44 = v31;

        v25 = v44;
        v26 = v30;
        v20 = v50;
        goto LABEL_43;
      }
    }

    isActionInput = [(WFContextualActionParameter *)v6 isActionInput];
    v12 = isActionInput ^ [(WFContextualActionParameter *)self isActionInput]^ 1;
    goto LABEL_40;
  }

  LOBYTE(v12) = 1;
LABEL_49:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  type = [(WFContextualActionParameter *)self type];

  if (type)
  {
    type2 = [(WFContextualActionParameter *)self type];
    v6 = [v3 combineContentsOfPropertyListObject:type2];
  }

  wfParameterKey = [(WFContextualActionParameter *)self wfParameterKey];

  if (wfParameterKey)
  {
    wfParameterKey2 = [(WFContextualActionParameter *)self wfParameterKey];
    v9 = [v3 combineContentsOfPropertyListObject:wfParameterKey2];
  }

  displayString = [(WFContextualActionParameter *)self displayString];

  if (displayString)
  {
    displayString2 = [(WFContextualActionParameter *)self displayString];
    v12 = [v3 combineContentsOfPropertyListObject:displayString2];
  }

  wfSerializedRepresentation = [(WFContextualActionParameter *)self wfSerializedRepresentation];

  if (wfSerializedRepresentation)
  {
    wfSerializedRepresentation2 = [(WFContextualActionParameter *)self wfSerializedRepresentation];
    v15 = [v3 combineContentsOfPropertyListObject:wfSerializedRepresentation2];
  }

  v16 = [v3 combineBool:{-[WFContextualActionParameter isAskEachTime](self, "isAskEachTime")}];
  askEachTimeCollectionFilter = [(WFContextualActionParameter *)self askEachTimeCollectionFilter];

  if (askEachTimeCollectionFilter)
  {
    askEachTimeCollectionFilter2 = [(WFContextualActionParameter *)self askEachTimeCollectionFilter];
    v19 = [v3 combineContentsOfPropertyListObject:askEachTimeCollectionFilter2];
  }

  v20 = [v3 combineBool:{-[WFContextualActionParameter isActionInput](self, "isActionInput")}];
  v21 = [v3 finalize];

  return v21;
}

- (WFContextualActionParameter)initWithType:(id)type displayString:(id)string wfParameterKey:(id)key wfSerializedRepresentation:(id)representation askEachTime:(BOOL)time askEachTimeCollectionFilter:(id)filter actionInput:(BOOL)input
{
  typeCopy = type;
  stringCopy = string;
  keyCopy = key;
  representationCopy = representation;
  filterCopy = filter;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualActionParameter.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"type"}];
  }

  v31.receiver = self;
  v31.super_class = WFContextualActionParameter;
  v21 = [(WFContextualActionParameter *)&v31 init];
  if (v21)
  {
    v22 = [typeCopy copy];
    type = v21->_type;
    v21->_type = v22;

    v24 = [stringCopy copy];
    displayString = v21->_displayString;
    v21->_displayString = v24;

    v26 = [keyCopy copy];
    wfParameterKey = v21->_wfParameterKey;
    v21->_wfParameterKey = v26;

    objc_storeStrong(&v21->_wfSerializedRepresentation, representation);
    v21->_askEachTime = time;
    objc_storeStrong(&v21->_askEachTimeCollectionFilter, filter);
    v21->_actionInput = input;
    v28 = v21;
  }

  return v21;
}

@end