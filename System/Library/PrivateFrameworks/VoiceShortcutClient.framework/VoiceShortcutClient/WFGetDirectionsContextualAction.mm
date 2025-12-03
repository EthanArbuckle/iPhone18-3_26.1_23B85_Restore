@interface WFGetDirectionsContextualAction
- (BOOL)isEqual:(id)equal;
- (WFGetDirectionsContextualAction)initWithCoder:(id)coder;
- (WFGetDirectionsContextualAction)initWithDestination:(id)destination name:(id)name type:(unint64_t)type;
- (id)_staticDisplayStringForDecoding;
- (id)readableTypeFromType:(unint64_t)type;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFGetDirectionsContextualAction

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFGetDirectionsContextualAction;
  coderCopy = coder;
  [(WFContextualAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_destination forKey:{@"destination", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_destinationName forKey:@"destinationName"];
  [coderCopy encodeInteger:self->_navigationType forKey:@"navigationType"];
}

- (WFGetDirectionsContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFGetDirectionsContextualAction;
  v5 = [(WFContextualAction *)&v14 initWithCoder:coderCopy];
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
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:@"destination"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationName"];
    v10 = [coderCopy decodeIntegerForKey:@"navigationType"];
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
  destinationName = [(WFGetDirectionsContextualAction *)self destinationName];
  v7 = [v4 stringWithFormat:v5, v3, destinationName];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v19.receiver = self;
  v19.super_class = WFGetDirectionsContextualAction;
  if ([(WFContextualAction *)&v19 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(navigationType) = 0;
LABEL_22:

      goto LABEL_23;
    }

    destination = [v5 destination];
    destination2 = [(WFGetDirectionsContextualAction *)self destination];
    v8 = destination;
    v9 = destination2;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      LOBYTE(navigationType) = 0;
      v12 = v9;
      v13 = v8;
      if (!v8 || !v9)
      {
        goto LABEL_20;
      }

      v14 = [v8 isEqual:v9];

      if (!v14)
      {
        LOBYTE(navigationType) = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    destinationName = [v5 destinationName];
    destinationName2 = [(WFGetDirectionsContextualAction *)self destinationName];
    v13 = destinationName;
    v17 = destinationName2;
    v12 = v17;
    if (v13 == v17)
    {
    }

    else
    {
      if (!v13 || !v17)
      {

        LOBYTE(navigationType) = 0;
        goto LABEL_20;
      }

      LODWORD(navigationType) = [v13 isEqualToString:v17];

      if (!navigationType)
      {
        goto LABEL_20;
      }
    }

    navigationType = [v5 navigationType];
    LOBYTE(navigationType) = navigationType == [(WFGetDirectionsContextualAction *)self navigationType];
LABEL_20:

    goto LABEL_21;
  }

  LOBYTE(navigationType) = 0;
LABEL_23:

  return navigationType;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v12.receiver = self;
  v12.super_class = WFGetDirectionsContextualAction;
  v4 = [v3 combineInteger:{-[WFContextualAction hash](&v12, sel_hash)}];
  destination = [(WFGetDirectionsContextualAction *)self destination];
  v6 = [v3 combine:destination];

  destinationName = [(WFGetDirectionsContextualAction *)self destinationName];
  v8 = [v3 combineContentsOfPropertyListObject:destinationName];

  v9 = [v3 combineInteger:{-[WFGetDirectionsContextualAction navigationType](self, "navigationType")}];
  v10 = [v3 finalize];

  return v10;
}

- (id)uniqueIdentifier
{
  v9[2] = *MEMORY[0x1E69E9840];
  identifier = [(WFContextualAction *)self identifier];
  v9[0] = identifier;
  destinationName = [(WFGetDirectionsContextualAction *)self destinationName];
  v9[1] = destinationName;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

  v6 = [v5 componentsJoinedByString:@"."];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)readableTypeFromType:(unint64_t)type
{
  if (type > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = WFLocalizedString(off_1E7B00F40[type]);
  }

  return v4;
}

- (WFGetDirectionsContextualAction)initWithDestination:(id)destination name:(id)name type:(unint64_t)type
{
  v39[2] = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  nameCopy = name;
  v11 = nameCopy;
  v38 = destinationCopy;
  if (destinationCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFGetDirectionsContextualAction.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"destination"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFGetDirectionsContextualAction.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"destinationName"}];

LABEL_3:
  v12 = [(WFGetDirectionsContextualAction *)self readableTypeFromType:type];
  typeCopy = type;
  selfCopy = self;
  if (type > 3)
  {
    v13 = 0;
  }

  else
  {
    v13 = off_1E7B00F40[type];
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
  v27 = [(WFContextualAction *)selfCopy initWithIdentifier:@"is.workflow.actions.getdirections" wfActionIdentifier:@"is.workflow.actions.getdirections" associatedAppBundleIdentifier:@"com.apple.Maps" parameters:v25 displayString:v16 title:v19 subtitle:v22 icon:v26];

  if (v27)
  {
    objc_storeStrong(&v27->_destination, destination);
    v28 = [v11 copy];
    destinationName = v27->_destinationName;
    v27->_destinationName = v28;

    v27->_navigationType = typeCopy;
    v30 = v27;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v27;
}

@end