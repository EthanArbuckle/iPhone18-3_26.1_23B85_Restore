@interface WFContextualActionParameter
- (BOOL)isEqual:(id)a3;
- (WFContextualActionParameter)initWithCoder:(id)a3;
- (WFContextualActionParameter)initWithType:(id)a3 displayString:(id)a4 wfParameterKey:(id)a5 wfSerializedRepresentation:(id)a6 askEachTime:(BOOL)a7 askEachTimeCollectionFilter:(id)a8 actionInput:(BOOL)a9;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFContextualActionParameter

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeObject:type forKey:@"type"];
  [v5 encodeObject:self->_displayString forKey:@"displayString"];
  [v5 encodeObject:self->_wfParameterKey forKey:@"wfParameterKey"];
  [v5 encodeObject:self->_wfSerializedRepresentation forKey:@"wfSerializedRepresentation"];
  [v5 encodeBool:self->_askEachTime forKey:@"askEachTime"];
  [v5 encodeObject:self->_askEachTimeCollectionFilter forKey:@"askEachTimeCollectionFilter"];
  [v5 encodeBool:self->_actionInput forKey:@"actionInput"];
}

- (WFContextualActionParameter)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wfParameterKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayString"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"askEachTimeCollectionFilter"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"wfSerializedRepresentation"];

  v15 = [v4 decodeBoolForKey:@"askEachTime"];
  v16 = [v4 decodeBoolForKey:@"actionInput"];

  if (v5)
  {
    LOBYTE(v20) = v16;
    v17 = v21;
    self = [(WFContextualActionParameter *)self initWithType:v5 displayString:v6 wfParameterKey:v21 wfSerializedRepresentation:v14 askEachTime:v15 askEachTimeCollectionFilter:v7 actionInput:v20];
    v18 = self;
  }

  else
  {
    v18 = 0;
    v17 = v21;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_48:

      goto LABEL_49;
    }

    v7 = [(WFContextualActionParameter *)v6 type];
    v8 = [(WFContextualActionParameter *)self type];
    v9 = v7;
    v10 = v8;
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

    v16 = [(WFContextualActionParameter *)v6 wfParameterKey];
    v17 = [(WFContextualActionParameter *)self wfParameterKey];
    v14 = v16;
    v18 = v17;
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

    v22 = [(WFContextualActionParameter *)v6 displayString];
    v23 = [(WFContextualActionParameter *)self displayString];
    v20 = v22;
    v24 = v23;
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
    v27 = [(WFContextualActionParameter *)v6 wfSerializedRepresentation];
    v28 = [(WFContextualActionParameter *)self wfSerializedRepresentation];
    v26 = v27;
    v29 = v28;
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

    v36 = [(WFContextualActionParameter *)v6 isAskEachTime];
    if (v36 != [(WFContextualActionParameter *)self isAskEachTime])
    {
LABEL_31:
      LOBYTE(v12) = 0;
      v25 = v49;
      v20 = v50;
      goto LABEL_43;
    }

    v37 = [(WFContextualActionParameter *)v6 askEachTimeCollectionFilter];
    v38 = [(WFContextualActionParameter *)self askEachTimeCollectionFilter];
    v39 = v37;
    v40 = v38;
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

    v42 = [(WFContextualActionParameter *)v6 isActionInput];
    v12 = v42 ^ [(WFContextualActionParameter *)self isActionInput]^ 1;
    goto LABEL_40;
  }

  LOBYTE(v12) = 1;
LABEL_49:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [(WFContextualActionParameter *)self type];

  if (v4)
  {
    v5 = [(WFContextualActionParameter *)self type];
    v6 = [v3 combineContentsOfPropertyListObject:v5];
  }

  v7 = [(WFContextualActionParameter *)self wfParameterKey];

  if (v7)
  {
    v8 = [(WFContextualActionParameter *)self wfParameterKey];
    v9 = [v3 combineContentsOfPropertyListObject:v8];
  }

  v10 = [(WFContextualActionParameter *)self displayString];

  if (v10)
  {
    v11 = [(WFContextualActionParameter *)self displayString];
    v12 = [v3 combineContentsOfPropertyListObject:v11];
  }

  v13 = [(WFContextualActionParameter *)self wfSerializedRepresentation];

  if (v13)
  {
    v14 = [(WFContextualActionParameter *)self wfSerializedRepresentation];
    v15 = [v3 combineContentsOfPropertyListObject:v14];
  }

  v16 = [v3 combineBool:{-[WFContextualActionParameter isAskEachTime](self, "isAskEachTime")}];
  v17 = [(WFContextualActionParameter *)self askEachTimeCollectionFilter];

  if (v17)
  {
    v18 = [(WFContextualActionParameter *)self askEachTimeCollectionFilter];
    v19 = [v3 combineContentsOfPropertyListObject:v18];
  }

  v20 = [v3 combineBool:{-[WFContextualActionParameter isActionInput](self, "isActionInput")}];
  v21 = [v3 finalize];

  return v21;
}

- (WFContextualActionParameter)initWithType:(id)a3 displayString:(id)a4 wfParameterKey:(id)a5 wfSerializedRepresentation:(id)a6 askEachTime:(BOOL)a7 askEachTimeCollectionFilter:(id)a8 actionInput:(BOOL)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  if (!v16)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"WFContextualActionParameter.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"type"}];
  }

  v31.receiver = self;
  v31.super_class = WFContextualActionParameter;
  v21 = [(WFContextualActionParameter *)&v31 init];
  if (v21)
  {
    v22 = [v16 copy];
    type = v21->_type;
    v21->_type = v22;

    v24 = [v17 copy];
    displayString = v21->_displayString;
    v21->_displayString = v24;

    v26 = [v18 copy];
    wfParameterKey = v21->_wfParameterKey;
    v21->_wfParameterKey = v26;

    objc_storeStrong(&v21->_wfSerializedRepresentation, a6);
    v21->_askEachTime = a7;
    objc_storeStrong(&v21->_askEachTimeCollectionFilter, a8);
    v21->_actionInput = a9;
    v28 = v21;
  }

  return v21;
}

@end