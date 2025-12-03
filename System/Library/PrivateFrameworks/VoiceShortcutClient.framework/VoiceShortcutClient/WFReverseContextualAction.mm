@interface WFReverseContextualAction
- (BOOL)isEqual:(id)equal;
- (WFReverseContextualAction)initWithActionToReverse:(id)reverse reversalState:(id)state;
- (WFReverseContextualAction)initWithCoder:(id)coder;
- (id)_staticDisplayStringForDecoding;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFReverseContextualAction

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFReverseContextualAction;
  coderCopy = coder;
  [(WFContextualAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFReverseContextualAction *)self actionToReverse:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"actionToReverse"];

  reversalState = [(WFReverseContextualAction *)self reversalState];
  [coderCopy encodeObject:reversalState forKey:@"reversalState"];
}

- (WFReverseContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFReverseContextualAction;
  v5 = [(WFContextualAction *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionToReverse"];
    actionToReverse = v5->_actionToReverse;
    v5->_actionToReverse = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reversalState"];
    reversalState = v5->_reversalState;
    v5->_reversalState = v8;

    v10 = v5;
  }

  return v5;
}

- (id)_staticDisplayStringForDecoding
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"Reverse '%@'");
  actionToReverse = [(WFReverseContextualAction *)self actionToReverse];
  displayString = [actionToReverse displayString];
  v7 = [v3 stringWithFormat:v4, displayString];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = WFReverseContextualAction;
  if ([(WFContextualAction *)&v18 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v11) = 0;
LABEL_20:

      goto LABEL_21;
    }

    actionToReverse = [v5 actionToReverse];
    actionToReverse2 = [(WFReverseContextualAction *)self actionToReverse];
    v8 = actionToReverse;
    v9 = actionToReverse2;
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
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v11 = [v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_19;
      }
    }

    reversalState = [v5 reversalState];
    reversalState2 = [(WFReverseContextualAction *)self reversalState];
    v13 = reversalState;
    v16 = reversalState2;
    v12 = v16;
    if (v13 == v16)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      LOBYTE(v11) = 0;
      if (v13 && v16)
      {
        LOBYTE(v11) = [v13 isEqual:v16];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v11) = 0;
LABEL_21:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v11.receiver = self;
  v11.super_class = WFReverseContextualAction;
  v4 = [v3 combineInteger:{-[WFContextualAction hash](&v11, sel_hash)}];
  actionToReverse = [(WFReverseContextualAction *)self actionToReverse];
  v6 = [v3 combine:actionToReverse];

  reversalState = [(WFReverseContextualAction *)self reversalState];
  v8 = [v3 combineContentsOfPropertyListObject:reversalState];

  v9 = [v3 finalize];
  return v9;
}

- (WFReverseContextualAction)initWithActionToReverse:(id)reverse reversalState:(id)state
{
  v31[2] = *MEMORY[0x1E69E9840];
  reverseCopy = reverse;
  stateCopy = state;
  v10 = stateCopy;
  if (reverseCopy)
  {
    if (stateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFReverseContextualAction.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"actionToReverse"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFReverseContextualAction.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"reversalState"}];

LABEL_3:
  if ([reverseCopy isReversible])
  {
    identifier = [reverseCopy identifier];
    v31[0] = identifier;
    v31[1] = @"reverse";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v13 = [v12 componentsJoinedByString:@"."];

    v14 = MEMORY[0x1E696AEC0];
    v15 = WFLocalizedString(@"Reverse '%@'");
    displayString = [reverseCopy displayString];
    v17 = [v14 stringWithFormat:v15, displayString];

    wfActionIdentifier = [reverseCopy wfActionIdentifier];
    associatedAppBundleIdentifier = [reverseCopy associatedAppBundleIdentifier];
    parameters = [reverseCopy parameters];
    icon = [reverseCopy icon];
    v30.receiver = self;
    v30.super_class = WFReverseContextualAction;
    self = [(WFContextualAction *)&v30 initWithIdentifier:v13 wfActionIdentifier:wfActionIdentifier associatedAppBundleIdentifier:associatedAppBundleIdentifier parameters:parameters displayString:v17 title:v17 subtitle:0 icon:icon];

    if (self)
    {
      objc_storeStrong(&self->_actionToReverse, reverse);
      v22 = [v10 copy];
      reversalState = self->_reversalState;
      self->_reversalState = v22;

      selfCopy = self;
    }

    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

@end