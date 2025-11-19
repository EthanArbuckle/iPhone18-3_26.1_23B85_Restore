@interface WFAppIntentBasedTopHitContextualAction
- (BOOL)isEqual:(id)a3;
- (WFAppIntentBasedTopHitContextualAction)initWithAction:(id)a3 appBundleIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 authenticationPolicy:(int64_t)a6 associatedAppBundleIdentifier:(id)a7 parameterValue:(id)a8 displayString:(id)a9 title:(id)a10 subtitle:(id)a11 primaryColor:(unint64_t)a12 icon:(id)a13 accessoryIcon:(id)a14 namedQueryInfo:(id)a15;
- (WFAppIntentBasedTopHitContextualAction)initWithCoder:(id)a3;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAppIntentBasedTopHitContextualAction

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFAppIntentBasedTopHitContextualAction;
  v4 = a3;
  [(WFContextualAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_linkAction forKey:{@"linkAction", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_parameterValue forKey:@"parameterValue"];
  [v4 encodeObject:self->_appBundleIdentifier forKey:@"appBundleIdentifier"];
  [v4 encodeObject:self->_extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  [v4 encodeInteger:self->_authenticationPolicy forKey:@"authenticationPolicy"];
}

- (WFAppIntentBasedTopHitContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFAppIntentBasedTopHitContextualAction;
  v5 = [(WFContextualAction *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkAction"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterValue"];
    v10 = [v4 decodeIntegerForKey:@"authenticationPolicy"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = WFAppIntentBasedTopHitContextualAction;
  if ([(WFTopHitItemContextualAction *)&v35 isEqual:v4])
  {
    v5 = v4;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v11) = 0;
LABEL_37:

      goto LABEL_38;
    }

    v6 = [v5 appBundleIdentifier];
    v7 = [(WFAppIntentBasedTopHitContextualAction *)self appBundleIdentifier];
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
        goto LABEL_35;
      }

      v14 = [v8 isEqualToString:v9];

      if (!v14)
      {
        LOBYTE(v11) = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    v15 = [v5 extensionBundleIdentifier];
    v16 = [(WFAppIntentBasedTopHitContextualAction *)self extensionBundleIdentifier];
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
        goto LABEL_34;
      }

      v20 = [v13 isEqualToString:v17];

      if (!v20)
      {
        LOBYTE(v11) = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    v21 = [v5 linkAction];
    v22 = [(WFAppIntentBasedTopHitContextualAction *)self linkAction];
    v19 = v21;
    v23 = v22;
    v18 = v23;
    v34 = v19;
    if (v19 == v23)
    {
    }

    else
    {
      LOBYTE(v11) = 0;
      v24 = v23;
      if (!v19 || !v23)
      {
        goto LABEL_33;
      }

      LODWORD(v11) = [v19 isEqual:v23];

      if (!v11)
      {
        goto LABEL_34;
      }
    }

    v25 = [v5 parameterValue];
    v32 = [(WFAppIntentBasedTopHitContextualAction *)self parameterValue];
    v11 = v25;
    v26 = v32;
    if (v11 == v26)
    {
      v31 = v26;

      v33 = v11;
    }

    else
    {
      if (!v11 || !v26)
      {
        v28 = v26;

        v24 = v28;
        v19 = v11;
        LOBYTE(v11) = 0;
        goto LABEL_33;
      }

      v27 = v26;
      v30 = [v11 isEqual:v26];
      v31 = v27;

      v33 = v11;
      if (!v30)
      {
        LOBYTE(v11) = 0;
LABEL_31:
        v24 = v31;
        v19 = v33;
LABEL_33:

        v19 = v34;
LABEL_34:

        goto LABEL_35;
      }
    }

    v11 = [v5 authenticationPolicy];
    LOBYTE(v11) = v11 == [(WFAppIntentBasedTopHitContextualAction *)self authenticationPolicy];
    goto LABEL_31;
  }

  LOBYTE(v11) = 0;
LABEL_38:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v18.receiver = self;
  v18.super_class = WFAppIntentBasedTopHitContextualAction;
  v4 = [v3 combineInteger:{-[WFTopHitItemContextualAction hash](&v18, sel_hash)}];
  v5 = [(WFAppIntentBasedTopHitContextualAction *)self linkAction];
  v6 = [v3 combine:v5];

  v7 = [(WFAppIntentBasedTopHitContextualAction *)self appBundleIdentifier];
  v8 = [v3 combineContentsOfPropertyListObject:v7];

  v9 = [(WFAppIntentBasedTopHitContextualAction *)self extensionBundleIdentifier];

  if (v9)
  {
    v10 = [(WFAppIntentBasedTopHitContextualAction *)self extensionBundleIdentifier];
    v11 = [v3 combineContentsOfPropertyListObject:v10];
  }

  v12 = [v3 combineInteger:{-[WFAppIntentBasedTopHitContextualAction authenticationPolicy](self, "authenticationPolicy")}];
  v13 = [(WFAppIntentBasedTopHitContextualAction *)self parameterValue];

  if (v13)
  {
    v14 = [(WFAppIntentBasedTopHitContextualAction *)self parameterValue];
    v15 = [v3 combine:v14];
  }

  v16 = [v3 finalize];

  return v16;
}

- (WFAppIntentBasedTopHitContextualAction)initWithAction:(id)a3 appBundleIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 authenticationPolicy:(int64_t)a6 associatedAppBundleIdentifier:(id)a7 parameterValue:(id)a8 displayString:(id)a9 title:(id)a10 subtitle:(id)a11 primaryColor:(unint64_t)a12 icon:(id)a13 accessoryIcon:(id)a14 namedQueryInfo:(id)a15
{
  v57[2] = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a4;
  v50 = a5;
  v49 = a7;
  v46 = a8;
  v21 = a8;
  v22 = v19;
  v23 = v21;
  v48 = a9;
  v47 = a10;
  v55 = a11;
  v54 = a13;
  v53 = a14;
  v52 = a15;
  if (!v19)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"WFAppIntentBasedTopHitContextualAction.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v57[0] = v20;
  v24 = [v19 identifier];
  v57[1] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  v26 = [v25 componentsJoinedByString:@"."];

  if (v23)
  {
    v56[0] = v26;
    v27 = [v23 identifier];
    v56[1] = v27;
    v28 = [v23 value];
    [v28 value];
    v30 = v29 = v20;
    v56[2] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
    v32 = [v31 componentsJoinedByString:@":"];

    v20 = v29;
  }

  else
  {
    v32 = v26;
  }

  v33 = [(WFTopHitItemContextualAction *)self initWithItem:v22 identifier:v26 wfActionIdentifier:&stru_1F28FBBB8 associatedAppBundleIdentifier:v49 parameters:MEMORY[0x1E695E0F0] displayString:v48 title:v47 subtitle:v55 primaryColor:a12 icon:v54 accessoryIcon:v53 namedQueryInfo:v52];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_linkAction, a3);
    v35 = [v20 copy];
    appBundleIdentifier = v34->_appBundleIdentifier;
    v34->_appBundleIdentifier = v35;

    v37 = [v50 copy];
    extensionBundleIdentifier = v34->_extensionBundleIdentifier;
    v34->_extensionBundleIdentifier = v37;

    v34->_authenticationPolicy = a6;
    objc_storeStrong(&v34->_parameterValue, v46);
    v39 = v34;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)uniqueIdentifier
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = [(WFAppIntentBasedTopHitContextualAction *)self parameterValue];

  v4 = [(WFContextualAction *)self identifier];
  v5 = v4;
  if (v3)
  {
    v6 = [(WFAppIntentBasedTopHitContextualAction *)self parameterValue];
    v7 = [v6 identifier];
    v15[1] = v7;
    v8 = [(WFAppIntentBasedTopHitContextualAction *)self parameterValue];
    v9 = [v8 value];
    v10 = [v9 value];
    v15[2] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v12 = [v11 componentsJoinedByString:@":"];

    v5 = v12;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

@end