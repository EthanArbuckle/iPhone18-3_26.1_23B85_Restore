@interface WFGetDirectionsContextualAction
- (BOOL)isEqual:(id)a3;
- (WFGetDirectionsContextualAction)initWithCoder:(id)a3;
- (WFGetDirectionsContextualAction)initWithDestination:(id)a3 name:(id)a4 type:(unint64_t)a5;
- (id)_staticDisplayStringForDecoding;
- (id)readableTypeFromType:(unint64_t)a3;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFGetDirectionsContextualAction

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFGetDirectionsContextualAction;
  v4 = a3;
  [(WFContextualAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_destination forKey:{@"destination", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_destinationName forKey:@"destinationName"];
  [v4 encodeInteger:self->_navigationType forKey:@"navigationType"];
}

- (WFGetDirectionsContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFGetDirectionsContextualAction;
  v5 = [(WFContextualAction *)&v14 initWithCoder:v4];
  if (v5)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v6 = getCLLocationClass_softClass;
    v19 = getCLLocationClass_softClass;
    if (!getCLLocationClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getCLLocationClass_block_invoke;
      v15[3] = &unk_1E7B02C60;
      v15[4] = &v16;
      __getCLLocationClass_block_invoke(v15);
      v6 = v17[3];
    }

    v7 = v6;
    _Block_object_dispose(&v16, 8);
    v8 = [v4 decodeObjectOfClass:v6 forKey:@"destination"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationName"];
    v10 = [v4 decodeIntegerForKey:@"navigationType"];
    v11 = 0;
    if (v8 && v9)
    {
      v12 = v10;
      objc_storeStrong(&v5->_destination, v8);
      objc_storeStrong(&v5->_destinationName, v9);
      v5->_navigationType = v12;
      v11 = v5;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_staticDisplayStringForDecoding
{
  v3 = [(WFGetDirectionsContextualAction *)self readableTypeFromType:[(WFGetDirectionsContextualAction *)self navigationType]];
  v4 = MEMORY[0x1E696AEC0];
  v5 = WFLocalizedString(@"Get %@ directions to %@");
  v6 = [(WFGetDirectionsContextualAction *)self destinationName];
  v7 = [v4 stringWithFormat:v5, v3, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = WFGetDirectionsContextualAction;
  if ([(WFContextualAction *)&v19 isEqual:v4])
  {
    v5 = v4;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v11) = 0;
LABEL_22:

      goto LABEL_23;
    }

    v6 = [v5 destination];
    v7 = [(WFGetDirectionsContextualAction *)self destination];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      LOBYTE(v11) = 0;
      v12 = v9;
      v13 = v8;
      if (!v8 || !v9)
      {
        goto LABEL_20;
      }

      v14 = [v8 isEqual:v9];

      if (!v14)
      {
        LOBYTE(v11) = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    v15 = [v5 destinationName];
    v16 = [(WFGetDirectionsContextualAction *)self destinationName];
    v13 = v15;
    v17 = v16;
    v12 = v17;
    if (v13 == v17)
    {
    }

    else
    {
      if (!v13 || !v17)
      {

        LOBYTE(v11) = 0;
        goto LABEL_20;
      }

      LODWORD(v11) = [v13 isEqualToString:v17];

      if (!v11)
      {
        goto LABEL_20;
      }
    }

    v11 = [v5 navigationType];
    LOBYTE(v11) = v11 == [(WFGetDirectionsContextualAction *)self navigationType];
LABEL_20:

    goto LABEL_21;
  }

  LOBYTE(v11) = 0;
LABEL_23:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v12.receiver = self;
  v12.super_class = WFGetDirectionsContextualAction;
  v4 = [v3 combineInteger:{-[WFContextualAction hash](&v12, sel_hash)}];
  v5 = [(WFGetDirectionsContextualAction *)self destination];
  v6 = [v3 combine:v5];

  v7 = [(WFGetDirectionsContextualAction *)self destinationName];
  v8 = [v3 combineContentsOfPropertyListObject:v7];

  v9 = [v3 combineInteger:{-[WFGetDirectionsContextualAction navigationType](self, "navigationType")}];
  v10 = [v3 finalize];

  return v10;
}

- (id)uniqueIdentifier
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = [(WFContextualAction *)self identifier];
  v9[0] = v3;
  v4 = [(WFGetDirectionsContextualAction *)self destinationName];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

  v6 = [v5 componentsJoinedByString:@"."];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)readableTypeFromType:(unint64_t)a3
{
  if (a3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = WFLocalizedString(off_1E7B00F40[a3]);
  }

  return v4;
}

- (WFGetDirectionsContextualAction)initWithDestination:(id)a3 name:(id)a4 type:(unint64_t)a5
{
  v39[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v38 = v9;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"WFGetDirectionsContextualAction.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"destination"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v34 = [MEMORY[0x1E696AAA8] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"WFGetDirectionsContextualAction.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"destinationName"}];

LABEL_3:
  v12 = [(WFGetDirectionsContextualAction *)self readableTypeFromType:a5];
  v36 = a5;
  v37 = self;
  if (a5 > 3)
  {
    v13 = 0;
  }

  else
  {
    v13 = off_1E7B00F40[a5];
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = WFLocalizedString(@"Get %@ directions to %@");
  v16 = [v14 stringWithFormat:v15, v12, v11];

  v17 = MEMORY[0x1E696AEC0];
  v18 = WFLocalizedString(@"Get %@ Directions");
  v19 = [v17 stringWithFormat:v18, v12];

  v20 = MEMORY[0x1E696AEC0];
  v21 = WFLocalizedStringWithKey(@"To %@ (Get Directions)", @"To %@");
  v22 = [v20 stringWithFormat:v21, v11];

  v23 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:0 wfParameterKey:@"WFGetDirectionsActionMode" wfSerializedRepresentation:v13];
  v39[0] = v23;
  v24 = [[WFContextualActionParameter alloc] initWithType:@"WFLocationContentItem" displayString:0 wfParameterKey:@"WFDestination" isActionInput:1];
  v39[1] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v26 = [WFContextualActionIcon iconWithApplicationBundleIdentifier:@"com.apple.Maps"];
  v27 = [(WFContextualAction *)v37 initWithIdentifier:@"is.workflow.actions.getdirections" wfActionIdentifier:@"is.workflow.actions.getdirections" associatedAppBundleIdentifier:@"com.apple.Maps" parameters:v25 displayString:v16 title:v19 subtitle:v22 icon:v26];

  if (v27)
  {
    objc_storeStrong(&v27->_destination, a3);
    v28 = [v11 copy];
    destinationName = v27->_destinationName;
    v27->_destinationName = v28;

    v27->_navigationType = v36;
    v30 = v27;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v27;
}

@end