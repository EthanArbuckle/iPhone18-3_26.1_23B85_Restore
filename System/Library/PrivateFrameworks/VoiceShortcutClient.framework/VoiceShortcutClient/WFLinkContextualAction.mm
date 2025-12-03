@interface WFLinkContextualAction
- (BOOL)isEqual:(id)equal;
- (WFLinkContextualAction)initWithAction:(id)action appBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier contextualParameters:(id)parameters authenticationPolicy:(int64_t)policy icon:(id)icon;
- (WFLinkContextualAction)initWithCoder:(id)coder;
- (id)copyWithParameters:(id)parameters;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)wf_launchAppIfNeededUsingSurface:(unint64_t)surface;
@end

@implementation WFLinkContextualAction

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFLinkContextualAction;
  coderCopy = coder;
  [(WFContextualAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_linkAction forKey:{@"linkAction", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_appBundleIdentifier forKey:@"appBundleIdentifier"];
  [coderCopy encodeObject:self->_extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  [coderCopy encodeInteger:self->_authenticationPolicy forKey:@"authenticationPolicy"];
}

- (WFLinkContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = WFLinkContextualAction;
  v5 = [(WFContextualAction *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkAction"];
    v9 = [coderCopy decodeIntegerForKey:@"authenticationPolicy"];
    v10 = 0;
    if (v6 && v8)
    {
      v11 = v9;
      objc_storeStrong(&v5->_linkAction, v8);
      objc_storeStrong(&v5->_appBundleIdentifier, v6);
      objc_storeStrong(&v5->_extensionBundleIdentifier, v7);
      v5->_authenticationPolicy = v11;
      v10 = v5;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v25.receiver = self;
  v25.super_class = WFLinkContextualAction;
  if ([(WFContextualAction *)&v25 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(authenticationPolicy) = 0;
LABEL_29:

      goto LABEL_30;
    }

    appBundleIdentifier = [v5 appBundleIdentifier];
    appBundleIdentifier2 = [(WFLinkContextualAction *)self appBundleIdentifier];
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
        goto LABEL_27;
      }

      v14 = [v8 isEqualToString:v9];

      if (!v14)
      {
        LOBYTE(authenticationPolicy) = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    extensionBundleIdentifier = [v5 extensionBundleIdentifier];
    extensionBundleIdentifier2 = [(WFLinkContextualAction *)self extensionBundleIdentifier];
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
        goto LABEL_26;
      }

      v20 = [v13 isEqualToString:v17];

      if (!v20)
      {
        LOBYTE(authenticationPolicy) = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    linkAction = [v5 linkAction];
    linkAction2 = [(WFLinkContextualAction *)self linkAction];
    v19 = linkAction;
    v23 = linkAction2;
    v18 = v23;
    if (v19 == v23)
    {
    }

    else
    {
      if (!v19 || !v23)
      {

        LOBYTE(authenticationPolicy) = 0;
        goto LABEL_26;
      }

      LODWORD(authenticationPolicy) = [v19 isEqual:v23];

      if (!authenticationPolicy)
      {
        goto LABEL_26;
      }
    }

    authenticationPolicy = [v5 authenticationPolicy];
    LOBYTE(authenticationPolicy) = authenticationPolicy == [(WFLinkContextualAction *)self authenticationPolicy];
LABEL_26:

    goto LABEL_27;
  }

  LOBYTE(authenticationPolicy) = 0;
LABEL_30:

  return authenticationPolicy;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v14.receiver = self;
  v14.super_class = WFLinkContextualAction;
  v4 = [v3 combineInteger:{-[WFContextualAction hash](&v14, sel_hash)}];
  appBundleIdentifier = [(WFLinkContextualAction *)self appBundleIdentifier];
  v6 = [v3 combineContentsOfPropertyListObject:appBundleIdentifier];

  extensionBundleIdentifier = [(WFLinkContextualAction *)self extensionBundleIdentifier];
  v8 = [v3 combineContentsOfPropertyListObject:extensionBundleIdentifier];

  linkAction = [(WFLinkContextualAction *)self linkAction];
  v10 = [v3 combine:linkAction];

  v11 = [v3 combineInteger:{-[WFLinkContextualAction authenticationPolicy](self, "authenticationPolicy")}];
  v12 = [v3 finalize];

  return v12;
}

- (id)copyWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = objc_alloc(objc_opt_class());
  linkAction = [(WFLinkContextualAction *)self linkAction];
  appBundleIdentifier = [(WFLinkContextualAction *)self appBundleIdentifier];
  extensionBundleIdentifier = [(WFLinkContextualAction *)self extensionBundleIdentifier];
  authenticationPolicy = [(WFLinkContextualAction *)self authenticationPolicy];
  icon = [(WFContextualAction *)self icon];
  v11 = [v5 initWithAction:linkAction appBundleIdentifier:appBundleIdentifier extensionBundleIdentifier:extensionBundleIdentifier contextualParameters:parametersCopy authenticationPolicy:authenticationPolicy icon:icon];

  return v11;
}

- (WFLinkContextualAction)initWithAction:(id)action appBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier contextualParameters:(id)parameters authenticationPolicy:(int64_t)policy icon:(id)icon
{
  v38[2] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  parametersCopy = parameters;
  iconCopy = icon;
  if (actionCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFLinkContextualAction.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFLinkContextualAction.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"appBundleIdentifier"}];

LABEL_3:
  v38[0] = identifierCopy;
  identifier = [actionCopy identifier];
  v38[1] = identifier;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v22 = [v21 componentsJoinedByString:@"."];

  v23 = [parametersCopy copy];
  v24 = v23;
  v25 = MEMORY[0x1E695E0F0];
  if (v23)
  {
    v25 = v23;
  }

  v26 = v25;

  v27 = [(WFContextualAction *)self initWithIdentifier:v22 wfActionIdentifier:&stru_1F28FBBB8 associatedAppBundleIdentifier:identifierCopy parameters:v26 displayString:@"Run Link Action" title:@"Run Link Action" subtitle:0 icon:iconCopy];
  if (v27)
  {
    objc_storeStrong(&v27->_linkAction, action);
    v28 = [identifierCopy copy];
    appBundleIdentifier = v27->_appBundleIdentifier;
    v27->_appBundleIdentifier = v28;

    v30 = [bundleIdentifierCopy copy];
    extensionBundleIdentifier = v27->_extensionBundleIdentifier;
    v27->_extensionBundleIdentifier = v30;

    v27->_authenticationPolicy = policy;
    v32 = v27;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v27;
}

- (void)wf_launchAppIfNeededUsingSurface:(unint64_t)surface
{
  linkAction = [(WFLinkContextualAction *)self linkAction];
  appBundleIdentifier = [(WFLinkContextualAction *)self appBundleIdentifier];
  linkAction2 = [(WFLinkContextualAction *)self linkAction];
  identifier = [linkAction2 identifier];
  [(WFContextualAction *)self wf_launchAppIfNeededUsingSurface:surface linkAction:linkAction appBundleIdentifier:appBundleIdentifier actionIdentifier:identifier];
}

@end