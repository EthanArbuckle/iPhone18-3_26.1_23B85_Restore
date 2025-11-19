@interface WFReverseContextualAction
- (BOOL)isEqual:(id)a3;
- (WFReverseContextualAction)initWithActionToReverse:(id)a3 reversalState:(id)a4;
- (WFReverseContextualAction)initWithCoder:(id)a3;
- (id)_staticDisplayStringForDecoding;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFReverseContextualAction

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFReverseContextualAction;
  v4 = a3;
  [(WFContextualAction *)&v7 encodeWithCoder:v4];
  v5 = [(WFReverseContextualAction *)self actionToReverse:v7.receiver];
  [v4 encodeObject:v5 forKey:@"actionToReverse"];

  v6 = [(WFReverseContextualAction *)self reversalState];
  [v4 encodeObject:v6 forKey:@"reversalState"];
}

- (WFReverseContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFReverseContextualAction;
  v5 = [(WFContextualAction *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionToReverse"];
    actionToReverse = v5->_actionToReverse;
    v5->_actionToReverse = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reversalState"];
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
  v5 = [(WFReverseContextualAction *)self actionToReverse];
  v6 = [v5 displayString];
  v7 = [v3 stringWithFormat:v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WFReverseContextualAction;
  if ([(WFContextualAction *)&v18 isEqual:v4])
  {
    v5 = v4;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v11) = 0;
LABEL_20:

      goto LABEL_21;
    }

    v6 = [v5 actionToReverse];
    v7 = [(WFReverseContextualAction *)self actionToReverse];
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

    v14 = [v5 reversalState];
    v15 = [(WFReverseContextualAction *)self reversalState];
    v13 = v14;
    v16 = v15;
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
  v5 = [(WFReverseContextualAction *)self actionToReverse];
  v6 = [v3 combine:v5];

  v7 = [(WFReverseContextualAction *)self reversalState];
  v8 = [v3 combineContentsOfPropertyListObject:v7];

  v9 = [v3 finalize];
  return v9;
}

- (WFReverseContextualAction)initWithActionToReverse:(id)a3 reversalState:(id)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"WFReverseContextualAction.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"actionToReverse"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"WFReverseContextualAction.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"reversalState"}];

LABEL_3:
  if ([v8 isReversible])
  {
    v11 = [v8 identifier];
    v31[0] = v11;
    v31[1] = @"reverse";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v13 = [v12 componentsJoinedByString:@"."];

    v14 = MEMORY[0x1E696AEC0];
    v15 = WFLocalizedString(@"Reverse '%@'");
    v16 = [v8 displayString];
    v17 = [v14 stringWithFormat:v15, v16];

    v18 = [v8 wfActionIdentifier];
    v19 = [v8 associatedAppBundleIdentifier];
    v20 = [v8 parameters];
    v21 = [v8 icon];
    v30.receiver = self;
    v30.super_class = WFReverseContextualAction;
    self = [(WFContextualAction *)&v30 initWithIdentifier:v13 wfActionIdentifier:v18 associatedAppBundleIdentifier:v19 parameters:v20 displayString:v17 title:v17 subtitle:0 icon:v21];

    if (self)
    {
      objc_storeStrong(&self->_actionToReverse, a3);
      v22 = [v10 copy];
      reversalState = self->_reversalState;
      self->_reversalState = v22;

      v24 = self;
    }

    v25 = self;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

@end