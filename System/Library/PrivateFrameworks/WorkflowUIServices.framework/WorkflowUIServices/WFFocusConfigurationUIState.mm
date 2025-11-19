@interface WFFocusConfigurationUIState
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (WFFocusConfigurationUIState)initWithCoder:(id)a3;
- (WFFocusConfigurationUIState)initWithEnabled:(BOOL)a3 uiValidity:(BOOL)a4 action:(id)a5 displayRepresentation:(id)a6;
- (WFFocusConfigurationUIState)initWithEnabled:(BOOL)a3 uiValidity:(BOOL)a4 contextualAction:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFocusConfigurationUIState

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[WFFocusConfigurationUIState isEnabled](self forKey:{"isEnabled"), @"isEnabled"}];
  [v4 encodeBool:-[WFFocusConfigurationUIState isUIValid](self forKey:{"isUIValid"), @"isUIValid"}];
  v5 = [(WFFocusConfigurationUIState *)self action];
  [v4 encodeObject:v5 forKey:@"action"];

  v6 = [(WFFocusConfigurationUIState *)self displayRepresentation];
  [v4 encodeObject:v6 forKey:@"displayRepresentation"];

  v7 = [(WFFocusConfigurationUIState *)self contextualAction];
  [v4 encodeObject:v7 forKey:@"contextualAction"];
}

- (WFFocusConfigurationUIState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"isEnabled"];
  v6 = [v4 decodeBoolForKey:@"isUIValid"];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v7 = getLNActionClass_softClass_3183;
  v24 = getLNActionClass_softClass_3183;
  if (!getLNActionClass_softClass_3183)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getLNActionClass_block_invoke_3184;
    v19 = &unk_1E8308088;
    v20 = &v21;
    __getLNActionClass_block_invoke_3184(&v16);
    v7 = v22[3];
  }

  v8 = v7;
  _Block_object_dispose(&v21, 8);
  v9 = [v4 decodeObjectOfClass:v7 forKey:@"action"];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v10 = getLNDisplayRepresentationClass_softClass;
  v24 = getLNDisplayRepresentationClass_softClass;
  if (!getLNDisplayRepresentationClass_softClass)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getLNDisplayRepresentationClass_block_invoke;
    v19 = &unk_1E8308088;
    v20 = &v21;
    __getLNDisplayRepresentationClass_block_invoke(&v16);
    v10 = v22[3];
  }

  v11 = v10;
  _Block_object_dispose(&v21, 8);
  v12 = [v4 decodeObjectOfClass:v10 forKey:@"displayRepresentation"];
  if (v9 | v12)
  {
    v13 = [(WFFocusConfigurationUIState *)self initWithEnabled:v5 uiValidity:v6 action:v9 displayRepresentation:v12];
  }

  else
  {
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextualAction"];
    v13 = [(WFFocusConfigurationUIState *)self initWithEnabled:v5 uiValidity:v6 contextualAction:v14];
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(WFFocusConfigurationUIState *)self isEnabled];
        if (v7 != [(WFFocusConfigurationUIState *)v6 isEnabled]|| (v8 = [(WFFocusConfigurationUIState *)self isUIValid], v8 != [(WFFocusConfigurationUIState *)v6 isUIValid]))
        {
          LOBYTE(v9) = 0;
LABEL_11:

          goto LABEL_12;
        }

        v12 = [(WFFocusConfigurationUIState *)self action];
        v13 = [(WFFocusConfigurationUIState *)v6 action];
        v10 = v12;
        v14 = v13;
        v15 = v14;
        if (v10 == v14)
        {
        }

        else
        {
          LOBYTE(v9) = 0;
          v16 = v14;
          v17 = v10;
          if (!v10 || !v14)
          {
            goto LABEL_32;
          }

          v18 = [(WFFocusConfigurationUIState *)v10 isEqual:v14];

          if (!v18)
          {
            LOBYTE(v9) = 0;
LABEL_33:

            goto LABEL_10;
          }
        }

        v19 = [(WFFocusConfigurationUIState *)self displayRepresentation];
        v20 = [(WFFocusConfigurationUIState *)v6 displayRepresentation];
        v17 = v19;
        v21 = v20;
        v16 = v21;
        if (v17 == v21)
        {
        }

        else
        {
          LOBYTE(v9) = 0;
          v22 = v21;
          v23 = v17;
          if (!v17 || !v21)
          {
LABEL_31:

LABEL_32:
            goto LABEL_33;
          }

          v9 = [(WFFocusConfigurationUIState *)v17 isEqual:v21];

          if (!v9)
          {
            goto LABEL_32;
          }
        }

        v24 = [(WFFocusConfigurationUIState *)self contextualAction];
        v25 = [(WFFocusConfigurationUIState *)v6 contextualAction];
        v23 = v24;
        v26 = v25;
        v22 = v26;
        if (v23 == v26)
        {
          LOBYTE(v9) = 1;
        }

        else
        {
          LOBYTE(v9) = 0;
          if (v23 && v26)
          {
            LOBYTE(v9) = [(WFFocusConfigurationUIState *)v23 isEqual:v26];
          }
        }

        goto LABEL_31;
      }

      LOBYTE(v9) = 0;
      v10 = v6;
      v6 = 0;
    }

    else
    {
      v10 = 0;
      LOBYTE(v9) = 0;
    }

LABEL_10:

    goto LABEL_11;
  }

  LOBYTE(v9) = 1;
LABEL_12:

  return v9;
}

- (unint64_t)hash
{
  if ([(WFFocusConfigurationUIState *)self isEnabled])
  {
    v3 = 3405691582;
  }

  else
  {
    v3 = 3133065982;
  }

  if ([(WFFocusConfigurationUIState *)self isUIValid])
  {
    v4 = 3405691582;
  }

  else
  {
    v4 = 3133065982;
  }

  v5 = v4 ^ v3;
  v6 = [(WFFocusConfigurationUIState *)self action];
  v7 = [v6 hash];
  v8 = [(WFFocusConfigurationUIState *)self displayRepresentation];
  v9 = v7 ^ [v8 hash];
  v10 = [(WFFocusConfigurationUIState *)self contextualAction];
  v11 = v9 ^ [v10 hash];

  return v5 ^ v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(WFFocusConfigurationUIState *)self isValid])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(WFFocusConfigurationUIState *)self isEnabled])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(WFFocusConfigurationUIState *)self isUIValid])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(WFFocusConfigurationUIState *)self action];
  v10 = [v9 identifier];
  v11 = [(WFFocusConfigurationUIState *)self displayRepresentation];
  v12 = [(WFFocusConfigurationUIState *)self contextualAction];
  v13 = [v3 stringWithFormat:@"<%@: %p, isValid: %@, Enabled: %@, isUIValid: %@, link action: %@, link displayRepresentation: %@, contextual action: %@>", v5, self, v6, v7, v8, v10, v11, v12];

  return v13;
}

- (WFFocusConfigurationUIState)initWithEnabled:(BOOL)a3 uiValidity:(BOOL)a4 contextualAction:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = WFFocusConfigurationUIState;
  v10 = [(WFFocusConfigurationUIState *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_enabled = a3;
    v10->_isUIValid = a4;
    objc_storeStrong(&v10->_contextualAction, a5);
    v12 = v11;
  }

  return v11;
}

- (WFFocusConfigurationUIState)initWithEnabled:(BOOL)a3 uiValidity:(BOOL)a4 action:(id)a5 displayRepresentation:(id)a6
{
  v10 = a5;
  v11 = a6;
  v20.receiver = self;
  v20.super_class = WFFocusConfigurationUIState;
  v12 = [(WFFocusConfigurationUIState *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_enabled = a3;
    v12->_isUIValid = a4;
    v14 = [v10 copy];
    action = v13->_action;
    v13->_action = v14;

    v16 = [v11 copy];
    displayRepresentation = v13->_displayRepresentation;
    v13->_displayRepresentation = v16;

    v18 = v13;
  }

  return v13;
}

- (BOOL)isValid
{
  if (![(WFFocusConfigurationUIState *)self isUIValid])
  {
    return 0;
  }

  v3 = [(WFFocusConfigurationUIState *)self action];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(WFFocusConfigurationUIState *)self contextualAction];
    v4 = v5 != 0;
  }

  return v4;
}

@end