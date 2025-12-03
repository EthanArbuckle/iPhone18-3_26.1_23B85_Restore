@interface WFRequestRideContextualAction
- (BOOL)isEqual:(id)equal;
- (WFRequestRideContextualAction)initWithApplicationBundleIdentifier:(id)identifier destination:(id)destination name:(id)name;
- (WFRequestRideContextualAction)initWithCoder:(id)coder;
- (id)_staticDisplayStringForDecoding;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFRequestRideContextualAction

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFRequestRideContextualAction;
  coderCopy = coder;
  [(WFContextualAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_applicationBundleIdentifier forKey:{@"applicationBundleIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_destination forKey:@"destination"];
  [coderCopy encodeObject:self->_destinationName forKey:@"destinationName"];
}

- (WFRequestRideContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFRequestRideContextualAction;
  v5 = [(WFContextualAction *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
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
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:@"destination"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationName"];
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
  destinationName = [(WFRequestRideContextualAction *)self destinationName];
  v6 = [v3 stringWithFormat:v4, destinationName];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v24.receiver = self;
  v24.super_class = WFRequestRideContextualAction;
  if ([(WFContextualAction *)&v24 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v11) = 0;
LABEL_27:

      goto LABEL_28;
    }

    applicationBundleIdentifier = [v5 applicationBundleIdentifier];
    applicationBundleIdentifier2 = [(WFRequestRideContextualAction *)self applicationBundleIdentifier];
    v8 = applicationBundleIdentifier;
    v9 = applicationBundleIdentifier2;
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

    destination = [v5 destination];
    destination2 = [(WFRequestRideContextualAction *)self destination];
    v13 = destination;
    v17 = destination2;
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

    destinationName = [v5 destinationName];
    destinationName2 = [(WFRequestRideContextualAction *)self destinationName];
    v19 = destinationName;
    v22 = destinationName2;
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
  applicationBundleIdentifier = [(WFRequestRideContextualAction *)self applicationBundleIdentifier];
  v6 = [v3 combineContentsOfPropertyListObject:applicationBundleIdentifier];

  destination = [(WFRequestRideContextualAction *)self destination];
  v8 = [v3 combine:destination];

  destinationName = [(WFRequestRideContextualAction *)self destinationName];
  v10 = [v3 combineContentsOfPropertyListObject:destinationName];

  v11 = [v3 finalize];
  return v11;
}

- (id)uniqueIdentifier
{
  v13[3] = *MEMORY[0x1E69E9840];
  identifier = [(WFContextualAction *)self identifier];
  applicationBundleIdentifier = [(WFRequestRideContextualAction *)self applicationBundleIdentifier];
  v13[1] = applicationBundleIdentifier;
  v5 = MEMORY[0x1E696AD98];
  destinationName = [(WFRequestRideContextualAction *)self destinationName];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(destinationName, "hash")}];
  stringValue = [v7 stringValue];
  v13[2] = stringValue;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];

  v10 = [v9 componentsJoinedByString:@"."];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (WFRequestRideContextualAction)initWithApplicationBundleIdentifier:(id)identifier destination:(id)destination name:(id)name
{
  v42[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  obj = destination;
  destinationCopy = destination;
  nameCopy = name;
  if (identifierCopy)
  {
    if (destinationCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRequestRideContextualAction.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"applicationBundleIdentifier"}];

    if (destinationCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRequestRideContextualAction.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"destination"}];

LABEL_3:
  v38 = destinationCopy;
  if (!nameCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFRequestRideContextualAction.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"destinationName"}];
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = WFLocalizedString(@"Request ride to %@");
  nameCopy = [v12 stringWithFormat:v13, nameCopy];

  v15 = MEMORY[0x1E696AEC0];
  v16 = WFLocalizedString(@"Request Ride");
  nameCopy2 = [v15 stringWithFormat:v16, nameCopy];

  v18 = MEMORY[0x1E696AEC0];
  v19 = WFLocalizedString(@"To %@");
  nameCopy3 = [v18 stringWithFormat:v19, nameCopy];

  v21 = [WFContextualActionParameter alloc];
  v40 = @"BundleIdentifier";
  v41 = identifierCopy;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v23 = [(WFContextualActionParameter *)v21 initWithType:@"INAppDescriptor" displayString:0 wfParameterKey:@"IntentAppDefinition" wfSerializedRepresentation:v22];
  v42[0] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  v25 = [WFContextualActionIcon iconWithApplicationBundleIdentifier:identifierCopy];
  v39.receiver = self;
  v39.super_class = WFRequestRideContextualAction;
  v26 = [(WFContextualAction *)&v39 initWithIdentifier:@"is.workflow.actions.ride.requestride" wfActionIdentifier:@"is.workflow.actions.ride.requestride" associatedAppBundleIdentifier:identifierCopy parameters:v24 displayString:nameCopy title:nameCopy2 subtitle:nameCopy3 icon:v25];

  if (v26)
  {
    v27 = [identifierCopy copy];
    applicationBundleIdentifier = v26->_applicationBundleIdentifier;
    v26->_applicationBundleIdentifier = v27;

    objc_storeStrong(&v26->_destination, obj);
    v29 = [nameCopy copy];
    destinationName = v26->_destinationName;
    v26->_destinationName = v29;

    v31 = v26;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v26;
}

@end