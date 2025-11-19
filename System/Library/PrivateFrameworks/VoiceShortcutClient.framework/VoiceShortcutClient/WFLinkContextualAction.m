@interface WFLinkContextualAction
- (BOOL)isEqual:(id)a3;
- (WFLinkContextualAction)initWithAction:(id)a3 appBundleIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 contextualParameters:(id)a6 authenticationPolicy:(int64_t)a7 icon:(id)a8;
- (WFLinkContextualAction)initWithCoder:(id)a3;
- (id)copyWithParameters:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)wf_launchAppIfNeededUsingSurface:(unint64_t)a3;
@end

@implementation WFLinkContextualAction

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFLinkContextualAction;
  v4 = a3;
  [(WFContextualAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_linkAction forKey:{@"linkAction", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_appBundleIdentifier forKey:@"appBundleIdentifier"];
  [v4 encodeObject:self->_extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  [v4 encodeInteger:self->_authenticationPolicy forKey:@"authenticationPolicy"];
}

- (WFLinkContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WFLinkContextualAction;
  v5 = [(WFContextualAction *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkAction"];
    v9 = [v4 decodeIntegerForKey:@"authenticationPolicy"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = WFLinkContextualAction;
  if ([(WFContextualAction *)&v25 isEqual:v4])
  {
    v5 = v4;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v11) = 0;
LABEL_29:

      goto LABEL_30;
    }

    v6 = [v5 appBundleIdentifier];
    v7 = [(WFLinkContextualAction *)self appBundleIdentifier];
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
        goto LABEL_27;
      }

      v14 = [v8 isEqualToString:v9];

      if (!v14)
      {
        LOBYTE(v11) = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    v15 = [v5 extensionBundleIdentifier];
    v16 = [(WFLinkContextualAction *)self extensionBundleIdentifier];
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
        goto LABEL_26;
      }

      v20 = [v13 isEqualToString:v17];

      if (!v20)
      {
        LOBYTE(v11) = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    v21 = [v5 linkAction];
    v22 = [(WFLinkContextualAction *)self linkAction];
    v19 = v21;
    v23 = v22;
    v18 = v23;
    if (v19 == v23)
    {
    }

    else
    {
      if (!v19 || !v23)
      {

        LOBYTE(v11) = 0;
        goto LABEL_26;
      }

      LODWORD(v11) = [v19 isEqual:v23];

      if (!v11)
      {
        goto LABEL_26;
      }
    }

    v11 = [v5 authenticationPolicy];
    LOBYTE(v11) = v11 == [(WFLinkContextualAction *)self authenticationPolicy];
LABEL_26:

    goto LABEL_27;
  }

  LOBYTE(v11) = 0;
LABEL_30:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v14.receiver = self;
  v14.super_class = WFLinkContextualAction;
  v4 = [v3 combineInteger:{-[WFContextualAction hash](&v14, sel_hash)}];
  v5 = [(WFLinkContextualAction *)self appBundleIdentifier];
  v6 = [v3 combineContentsOfPropertyListObject:v5];

  v7 = [(WFLinkContextualAction *)self extensionBundleIdentifier];
  v8 = [v3 combineContentsOfPropertyListObject:v7];

  v9 = [(WFLinkContextualAction *)self linkAction];
  v10 = [v3 combine:v9];

  v11 = [v3 combineInteger:{-[WFLinkContextualAction authenticationPolicy](self, "authenticationPolicy")}];
  v12 = [v3 finalize];

  return v12;
}

- (id)copyWithParameters:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(WFLinkContextualAction *)self linkAction];
  v7 = [(WFLinkContextualAction *)self appBundleIdentifier];
  v8 = [(WFLinkContextualAction *)self extensionBundleIdentifier];
  v9 = [(WFLinkContextualAction *)self authenticationPolicy];
  v10 = [(WFContextualAction *)self icon];
  v11 = [v5 initWithAction:v6 appBundleIdentifier:v7 extensionBundleIdentifier:v8 contextualParameters:v4 authenticationPolicy:v9 icon:v10];

  return v11;
}

- (WFLinkContextualAction)initWithAction:(id)a3 appBundleIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 contextualParameters:(id)a6 authenticationPolicy:(int64_t)a7 icon:(id)a8
{
  v38[2] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"WFLinkContextualAction.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v36 = [MEMORY[0x1E696AAA8] currentHandler];
  [v36 handleFailureInMethod:a2 object:self file:@"WFLinkContextualAction.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"appBundleIdentifier"}];

LABEL_3:
  v38[0] = v16;
  v20 = [v15 identifier];
  v38[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v22 = [v21 componentsJoinedByString:@"."];

  v23 = [v18 copy];
  v24 = v23;
  v25 = MEMORY[0x1E695E0F0];
  if (v23)
  {
    v25 = v23;
  }

  v26 = v25;

  v27 = [(WFContextualAction *)self initWithIdentifier:v22 wfActionIdentifier:&stru_1F28FBBB8 associatedAppBundleIdentifier:v16 parameters:v26 displayString:@"Run Link Action" title:@"Run Link Action" subtitle:0 icon:v19];
  if (v27)
  {
    objc_storeStrong(&v27->_linkAction, a3);
    v28 = [v16 copy];
    appBundleIdentifier = v27->_appBundleIdentifier;
    v27->_appBundleIdentifier = v28;

    v30 = [v17 copy];
    extensionBundleIdentifier = v27->_extensionBundleIdentifier;
    v27->_extensionBundleIdentifier = v30;

    v27->_authenticationPolicy = a7;
    v32 = v27;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v27;
}

- (void)wf_launchAppIfNeededUsingSurface:(unint64_t)a3
{
  v8 = [(WFLinkContextualAction *)self linkAction];
  v5 = [(WFLinkContextualAction *)self appBundleIdentifier];
  v6 = [(WFLinkContextualAction *)self linkAction];
  v7 = [v6 identifier];
  [(WFContextualAction *)self wf_launchAppIfNeededUsingSurface:a3 linkAction:v8 appBundleIdentifier:v5 actionIdentifier:v7];
}

@end