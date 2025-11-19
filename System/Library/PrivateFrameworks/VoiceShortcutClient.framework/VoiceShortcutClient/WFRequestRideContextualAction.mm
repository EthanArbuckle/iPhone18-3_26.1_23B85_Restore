@interface WFRequestRideContextualAction
- (BOOL)isEqual:(id)a3;
- (WFRequestRideContextualAction)initWithApplicationBundleIdentifier:(id)a3 destination:(id)a4 name:(id)a5;
- (WFRequestRideContextualAction)initWithCoder:(id)a3;
- (id)_staticDisplayStringForDecoding;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFRequestRideContextualAction

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFRequestRideContextualAction;
  v4 = a3;
  [(WFContextualAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_applicationBundleIdentifier forKey:{@"applicationBundleIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_destination forKey:@"destination"];
  [v4 encodeObject:self->_destinationName forKey:@"destinationName"];
}

- (WFRequestRideContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFRequestRideContextualAction;
  v5 = [(WFContextualAction *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v7 = getCLLocationClass_softClass_9045;
    v19 = getCLLocationClass_softClass_9045;
    if (!getCLLocationClass_softClass_9045)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getCLLocationClass_block_invoke_9046;
      v15[3] = &unk_1E7B02C60;
      v15[4] = &v16;
      __getCLLocationClass_block_invoke_9046(v15);
      v7 = v17[3];
    }

    v8 = v7;
    _Block_object_dispose(&v16, 8);
    v9 = [v4 decodeObjectOfClass:v7 forKey:@"destination"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationName"];
    v11 = v10;
    v12 = 0;
    if (v6 && v9 && v10)
    {
      objc_storeStrong(&v5->_applicationBundleIdentifier, v6);
      objc_storeStrong(&v5->_destination, v9);
      objc_storeStrong(&v5->_destinationName, v11);
      v12 = v5;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_staticDisplayStringForDecoding
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"Request ride to %@");
  v5 = [(WFRequestRideContextualAction *)self destinationName];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = WFRequestRideContextualAction;
  if ([(WFContextualAction *)&v24 isEqual:v4])
  {
    v5 = v4;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v11) = 0;
LABEL_27:

      goto LABEL_28;
    }

    v6 = [v5 applicationBundleIdentifier];
    v7 = [(WFRequestRideContextualAction *)self applicationBundleIdentifier];
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
        goto LABEL_25;
      }

      v14 = [v8 isEqualToString:v9];

      if (!v14)
      {
        LOBYTE(v11) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v15 = [v5 destination];
    v16 = [(WFRequestRideContextualAction *)self destination];
    v13 = v15;
    v17 = v16;
    v12 = v17;
    if (v13 == v17)
    {
    }

    else
    {
      LOBYTE(v11) = 0;
      v18 = v17;
      v19 = v13;
      if (!v13 || !v17)
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v11 = [v13 isEqual:v17];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    v20 = [v5 destinationName];
    v21 = [(WFRequestRideContextualAction *)self destinationName];
    v19 = v20;
    v22 = v21;
    v18 = v22;
    if (v19 == v22)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      LOBYTE(v11) = 0;
      if (v19 && v22)
      {
        LOBYTE(v11) = [v19 isEqualToString:v22];
      }
    }

    goto LABEL_24;
  }

  LOBYTE(v11) = 0;
LABEL_28:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v13.receiver = self;
  v13.super_class = WFRequestRideContextualAction;
  v4 = [v3 combineInteger:{-[WFContextualAction hash](&v13, sel_hash)}];
  v5 = [(WFRequestRideContextualAction *)self applicationBundleIdentifier];
  v6 = [v3 combineContentsOfPropertyListObject:v5];

  v7 = [(WFRequestRideContextualAction *)self destination];
  v8 = [v3 combine:v7];

  v9 = [(WFRequestRideContextualAction *)self destinationName];
  v10 = [v3 combineContentsOfPropertyListObject:v9];

  v11 = [v3 finalize];
  return v11;
}

- (id)uniqueIdentifier
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [(WFContextualAction *)self identifier];
  v4 = [(WFRequestRideContextualAction *)self applicationBundleIdentifier];
  v13[1] = v4;
  v5 = MEMORY[0x1E696AD98];
  v6 = [(WFRequestRideContextualAction *)self destinationName];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "hash")}];
  v8 = [v7 stringValue];
  v13[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];

  v10 = [v9 componentsJoinedByString:@"."];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (WFRequestRideContextualAction)initWithApplicationBundleIdentifier:(id)a3 destination:(id)a4 name:(id)a5
{
  v42[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  obj = a4;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"WFRequestRideContextualAction.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"applicationBundleIdentifier"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v35 = [MEMORY[0x1E696AAA8] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"WFRequestRideContextualAction.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"destination"}];

LABEL_3:
  v38 = v10;
  if (!v11)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"WFRequestRideContextualAction.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"destinationName"}];
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = WFLocalizedString(@"Request ride to %@");
  v14 = [v12 stringWithFormat:v13, v11];

  v15 = MEMORY[0x1E696AEC0];
  v16 = WFLocalizedString(@"Request Ride");
  v17 = [v15 stringWithFormat:v16, v11];

  v18 = MEMORY[0x1E696AEC0];
  v19 = WFLocalizedString(@"To %@");
  v20 = [v18 stringWithFormat:v19, v11];

  v21 = [WFContextualActionParameter alloc];
  v40 = @"BundleIdentifier";
  v41 = v9;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v23 = [(WFContextualActionParameter *)v21 initWithType:@"INAppDescriptor" displayString:0 wfParameterKey:@"IntentAppDefinition" wfSerializedRepresentation:v22];
  v42[0] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  v25 = [WFContextualActionIcon iconWithApplicationBundleIdentifier:v9];
  v39.receiver = self;
  v39.super_class = WFRequestRideContextualAction;
  v26 = [(WFContextualAction *)&v39 initWithIdentifier:@"is.workflow.actions.ride.requestride" wfActionIdentifier:@"is.workflow.actions.ride.requestride" associatedAppBundleIdentifier:v9 parameters:v24 displayString:v14 title:v17 subtitle:v20 icon:v25];

  if (v26)
  {
    v27 = [v9 copy];
    applicationBundleIdentifier = v26->_applicationBundleIdentifier;
    v26->_applicationBundleIdentifier = v27;

    objc_storeStrong(&v26->_destination, obj);
    v29 = [v11 copy];
    destinationName = v26->_destinationName;
    v26->_destinationName = v29;

    v31 = v26;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v26;
}

@end