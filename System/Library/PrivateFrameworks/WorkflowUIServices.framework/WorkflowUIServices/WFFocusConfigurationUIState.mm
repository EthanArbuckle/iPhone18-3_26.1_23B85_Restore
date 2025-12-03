@interface WFFocusConfigurationUIState
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (WFFocusConfigurationUIState)initWithCoder:(id)coder;
- (WFFocusConfigurationUIState)initWithEnabled:(BOOL)enabled uiValidity:(BOOL)validity action:(id)action displayRepresentation:(id)representation;
- (WFFocusConfigurationUIState)initWithEnabled:(BOOL)enabled uiValidity:(BOOL)validity contextualAction:(id)action;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFocusConfigurationUIState

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[WFFocusConfigurationUIState isEnabled](self forKey:{"isEnabled"), @"isEnabled"}];
  [coderCopy encodeBool:-[WFFocusConfigurationUIState isUIValid](self forKey:{"isUIValid"), @"isUIValid"}];
  action = [(WFFocusConfigurationUIState *)self action];
  [coderCopy encodeObject:action forKey:@"action"];

  displayRepresentation = [(WFFocusConfigurationUIState *)self displayRepresentation];
  [coderCopy encodeObject:displayRepresentation forKey:@"displayRepresentation"];

  contextualAction = [(WFFocusConfigurationUIState *)self contextualAction];
  [coderCopy encodeObject:contextualAction forKey:@"contextualAction"];
}

- (WFFocusConfigurationUIState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"isEnabled"];
  v6 = [coderCopy decodeBoolForKey:@"isUIValid"];
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
  v9 = [coderCopy decodeObjectOfClass:v7 forKey:@"action"];
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
  v12 = [coderCopy decodeObjectOfClass:v10 forKey:@"displayRepresentation"];
  if (v9 | v12)
  {
    v13 = [(WFFocusConfigurationUIState *)self initWithEnabled:v5 uiValidity:v6 action:v9 displayRepresentation:v12];
  }

  else
  {
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextualAction"];
    v13 = [(WFFocusConfigurationUIState *)self initWithEnabled:v5 uiValidity:v6 contextualAction:v14];
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isEnabled = [(WFFocusConfigurationUIState *)self isEnabled];
        if (isEnabled != [(WFFocusConfigurationUIState *)v6 isEnabled]|| (v8 = [(WFFocusConfigurationUIState *)self isUIValid], v8 != [(WFFocusConfigurationUIState *)v6 isUIValid]))
        {
          LOBYTE(v9) = 0;
LABEL_11:

          goto LABEL_12;
        }

        action = [(WFFocusConfigurationUIState *)self action];
        action2 = [(WFFocusConfigurationUIState *)v6 action];
        v10 = action;
        v14 = action2;
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

        displayRepresentation = [(WFFocusConfigurationUIState *)self displayRepresentation];
        displayRepresentation2 = [(WFFocusConfigurationUIState *)v6 displayRepresentation];
        v17 = displayRepresentation;
        v21 = displayRepresentation2;
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

        contextualAction = [(WFFocusConfigurationUIState *)self contextualAction];
        contextualAction2 = [(WFFocusConfigurationUIState *)v6 contextualAction];
        v23 = contextualAction;
        v26 = contextualAction2;
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
  action = [(WFFocusConfigurationUIState *)self action];
  v7 = [action hash];
  displayRepresentation = [(WFFocusConfigurationUIState *)self displayRepresentation];
  v9 = v7 ^ [displayRepresentation hash];
  contextualAction = [(WFFocusConfigurationUIState *)self contextualAction];
  v11 = v9 ^ [contextualAction hash];

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

  action = [(WFFocusConfigurationUIState *)self action];
  identifier = [action identifier];
  displayRepresentation = [(WFFocusConfigurationUIState *)self displayRepresentation];
  contextualAction = [(WFFocusConfigurationUIState *)self contextualAction];
  v13 = [v3 stringWithFormat:@"<%@: %p, isValid: %@, Enabled: %@, isUIValid: %@, link action: %@, link displayRepresentation: %@, contextual action: %@>", v5, self, v6, v7, v8, identifier, displayRepresentation, contextualAction];

  return v13;
}

- (WFFocusConfigurationUIState)initWithEnabled:(BOOL)enabled uiValidity:(BOOL)validity contextualAction:(id)action
{
  actionCopy = action;
  v14.receiver = self;
  v14.super_class = WFFocusConfigurationUIState;
  v10 = [(WFFocusConfigurationUIState *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_enabled = enabled;
    v10->_isUIValid = validity;
    objc_storeStrong(&v10->_contextualAction, action);
    v12 = v11;
  }

  return v11;
}

- (WFFocusConfigurationUIState)initWithEnabled:(BOOL)enabled uiValidity:(BOOL)validity action:(id)action displayRepresentation:(id)representation
{
  actionCopy = action;
  representationCopy = representation;
  v20.receiver = self;
  v20.super_class = WFFocusConfigurationUIState;
  v12 = [(WFFocusConfigurationUIState *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_enabled = enabled;
    v12->_isUIValid = validity;
    v14 = [actionCopy copy];
    action = v13->_action;
    v13->_action = v14;

    v16 = [representationCopy copy];
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

  action = [(WFFocusConfigurationUIState *)self action];
  if (action)
  {
    v4 = 1;
  }

  else
  {
    contextualAction = [(WFFocusConfigurationUIState *)self contextualAction];
    v4 = contextualAction != 0;
  }

  return v4;
}

@end