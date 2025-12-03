@interface WFAppIntentBasedTopHitContextualAction
- (BOOL)isEqual:(id)equal;
- (WFAppIntentBasedTopHitContextualAction)initWithAction:(id)action appBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier authenticationPolicy:(int64_t)policy associatedAppBundleIdentifier:(id)appBundleIdentifier parameterValue:(id)value displayString:(id)string title:(id)self0 subtitle:(id)self1 primaryColor:(unint64_t)self2 icon:(id)self3 accessoryIcon:(id)self4 namedQueryInfo:(id)self5;
- (WFAppIntentBasedTopHitContextualAction)initWithCoder:(id)coder;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAppIntentBasedTopHitContextualAction

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFAppIntentBasedTopHitContextualAction;
  coderCopy = coder;
  [(WFContextualAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_linkAction forKey:{@"linkAction", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_parameterValue forKey:@"parameterValue"];
  [coderCopy encodeObject:self->_appBundleIdentifier forKey:@"appBundleIdentifier"];
  [coderCopy encodeObject:self->_extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  [coderCopy encodeInteger:self->_authenticationPolicy forKey:@"authenticationPolicy"];
}

- (WFAppIntentBasedTopHitContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFAppIntentBasedTopHitContextualAction;
  v5 = [(WFContextualAction *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkAction"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterValue"];
    v10 = [coderCopy decodeIntegerForKey:@"authenticationPolicy"];
    v11 = 0;
    if (v6 && v8)
    {
      v12 = v10;
      objc_storeStrong(&v5->_linkAction, v8);
      objc_storeStrong(&v5->_parameterValue, v9);
      objc_storeStrong(&v5->_appBundleIdentifier, v6);
      objc_storeStrong(&v5->_extensionBundleIdentifier, v7);
      v5->_authenticationPolicy = v12;
      v11 = v5;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v35.receiver = self;
  v35.super_class = WFAppIntentBasedTopHitContextualAction;
  if ([(WFTopHitItemContextualAction *)&v35 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(authenticationPolicy) = 0;
LABEL_37:

      goto LABEL_38;
    }

    appBundleIdentifier = [v5 appBundleIdentifier];
    appBundleIdentifier2 = [(WFAppIntentBasedTopHitContextualAction *)self appBundleIdentifier];
    v8 = appBundleIdentifier;
    v9 = appBundleIdentifier2;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      LOBYTE(authenticationPolicy) = 0;
      v12 = v9;
      v13 = v8;
      if (!v8 || !v9)
      {
        goto LABEL_35;
      }

      v14 = [v8 isEqualToString:v9];

      if (!v14)
      {
        LOBYTE(authenticationPolicy) = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    extensionBundleIdentifier = [v5 extensionBundleIdentifier];
    extensionBundleIdentifier2 = [(WFAppIntentBasedTopHitContextualAction *)self extensionBundleIdentifier];
    v13 = extensionBundleIdentifier;
    v17 = extensionBundleIdentifier2;
    v12 = v17;
    if (v13 == v17)
    {
    }

    else
    {
      LOBYTE(authenticationPolicy) = 0;
      v18 = v17;
      v19 = v13;
      if (!v13 || !v17)
      {
        goto LABEL_34;
      }

      v20 = [v13 isEqualToString:v17];

      if (!v20)
      {
        LOBYTE(authenticationPolicy) = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    linkAction = [v5 linkAction];
    linkAction2 = [(WFAppIntentBasedTopHitContextualAction *)self linkAction];
    v19 = linkAction;
    v23 = linkAction2;
    v18 = v23;
    v34 = v19;
    if (v19 == v23)
    {
    }

    else
    {
      LOBYTE(authenticationPolicy) = 0;
      v24 = v23;
      if (!v19 || !v23)
      {
        goto LABEL_33;
      }

      LODWORD(authenticationPolicy) = [v19 isEqual:v23];

      if (!authenticationPolicy)
      {
        goto LABEL_34;
      }
    }

    parameterValue = [v5 parameterValue];
    parameterValue2 = [(WFAppIntentBasedTopHitContextualAction *)self parameterValue];
    authenticationPolicy = parameterValue;
    v26 = parameterValue2;
    if (authenticationPolicy == v26)
    {
      v31 = v26;

      v33 = authenticationPolicy;
    }

    else
    {
      if (!authenticationPolicy || !v26)
      {
        v28 = v26;

        v24 = v28;
        v19 = authenticationPolicy;
        LOBYTE(authenticationPolicy) = 0;
        goto LABEL_33;
      }

      v27 = v26;
      v30 = [authenticationPolicy isEqual:v26];
      v31 = v27;

      v33 = authenticationPolicy;
      if (!v30)
      {
        LOBYTE(authenticationPolicy) = 0;
LABEL_31:
        v24 = v31;
        v19 = v33;
LABEL_33:

        v19 = v34;
LABEL_34:

        goto LABEL_35;
      }
    }

    authenticationPolicy = [v5 authenticationPolicy];
    LOBYTE(authenticationPolicy) = authenticationPolicy == [(WFAppIntentBasedTopHitContextualAction *)self authenticationPolicy];
    goto LABEL_31;
  }

  LOBYTE(authenticationPolicy) = 0;
LABEL_38:

  return authenticationPolicy;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v18.receiver = self;
  v18.super_class = WFAppIntentBasedTopHitContextualAction;
  v4 = [v3 combineInteger:{-[WFTopHitItemContextualAction hash](&v18, sel_hash)}];
  linkAction = [(WFAppIntentBasedTopHitContextualAction *)self linkAction];
  v6 = [v3 combine:linkAction];

  appBundleIdentifier = [(WFAppIntentBasedTopHitContextualAction *)self appBundleIdentifier];
  v8 = [v3 combineContentsOfPropertyListObject:appBundleIdentifier];

  extensionBundleIdentifier = [(WFAppIntentBasedTopHitContextualAction *)self extensionBundleIdentifier];

  if (extensionBundleIdentifier)
  {
    extensionBundleIdentifier2 = [(WFAppIntentBasedTopHitContextualAction *)self extensionBundleIdentifier];
    v11 = [v3 combineContentsOfPropertyListObject:extensionBundleIdentifier2];
  }

  v12 = [v3 combineInteger:{-[WFAppIntentBasedTopHitContextualAction authenticationPolicy](self, "authenticationPolicy")}];
  parameterValue = [(WFAppIntentBasedTopHitContextualAction *)self parameterValue];

  if (parameterValue)
  {
    parameterValue2 = [(WFAppIntentBasedTopHitContextualAction *)self parameterValue];
    v15 = [v3 combine:parameterValue2];
  }

  v16 = [v3 finalize];

  return v16;
}

- (WFAppIntentBasedTopHitContextualAction)initWithAction:(id)action appBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier authenticationPolicy:(int64_t)policy associatedAppBundleIdentifier:(id)appBundleIdentifier parameterValue:(id)value displayString:(id)string title:(id)self0 subtitle:(id)self1 primaryColor:(unint64_t)self2 icon:(id)self3 accessoryIcon:(id)self4 namedQueryInfo:(id)self5
{
  v57[2] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  appBundleIdentifierCopy = appBundleIdentifier;
  valueCopy = value;
  valueCopy2 = value;
  v22 = actionCopy;
  v23 = valueCopy2;
  stringCopy = string;
  titleCopy = title;
  subtitleCopy = subtitle;
  iconCopy = icon;
  accessoryIconCopy = accessoryIcon;
  infoCopy = info;
  if (!actionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAppIntentBasedTopHitContextualAction.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v57[0] = identifierCopy;
  identifier = [actionCopy identifier];
  v57[1] = identifier;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  v26 = [v25 componentsJoinedByString:@"."];

  if (v23)
  {
    v56[0] = v26;
    identifier2 = [v23 identifier];
    v56[1] = identifier2;
    value = [v23 value];
    [value value];
    v30 = v29 = identifierCopy;
    v56[2] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
    v32 = [v31 componentsJoinedByString:@":"];

    identifierCopy = v29;
  }

  else
  {
    v32 = v26;
  }

  v33 = [(WFTopHitItemContextualAction *)self initWithItem:v22 identifier:v26 wfActionIdentifier:&stru_1F28FBBB8 associatedAppBundleIdentifier:appBundleIdentifierCopy parameters:MEMORY[0x1E695E0F0] displayString:stringCopy title:titleCopy subtitle:subtitleCopy primaryColor:color icon:iconCopy accessoryIcon:accessoryIconCopy namedQueryInfo:infoCopy];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_linkAction, action);
    v35 = [identifierCopy copy];
    appBundleIdentifier = v34->_appBundleIdentifier;
    v34->_appBundleIdentifier = v35;

    v37 = [bundleIdentifierCopy copy];
    extensionBundleIdentifier = v34->_extensionBundleIdentifier;
    v34->_extensionBundleIdentifier = v37;

    v34->_authenticationPolicy = policy;
    objc_storeStrong(&v34->_parameterValue, valueCopy);
    v39 = v34;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)uniqueIdentifier
{
  v15[3] = *MEMORY[0x1E69E9840];
  parameterValue = [(WFAppIntentBasedTopHitContextualAction *)self parameterValue];

  identifier = [(WFContextualAction *)self identifier];
  v5 = identifier;
  if (parameterValue)
  {
    parameterValue2 = [(WFAppIntentBasedTopHitContextualAction *)self parameterValue];
    identifier2 = [parameterValue2 identifier];
    v15[1] = identifier2;
    parameterValue3 = [(WFAppIntentBasedTopHitContextualAction *)self parameterValue];
    value = [parameterValue3 value];
    v9Value = [value value];
    v15[2] = v9Value;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v12 = [v11 componentsJoinedByString:@":"];

    v5 = v12;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

@end