@interface WFConfiguredSystemControlAction
- (BOOL)isEqual:(id)equal;
- (WFConfiguredSystemControlAction)initWithCoder:(id)coder;
- (WFConfiguredSystemControlAction)initWithIntent:(id)intent named:(id)named extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind controlType:(id)type;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFConfiguredSystemControlAction

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v17.receiver = self;
  v17.super_class = WFConfiguredSystemControlAction;
  v4 = [v3 combineInteger:{-[WFConfiguredStaccatoAction hash](&v17, sel_hash)}];
  intent = [(WFConfiguredSystemControlAction *)self intent];
  v6 = [v3 combine:intent];

  extensionBundleIdentifier = [(WFConfiguredSystemControlAction *)self extensionBundleIdentifier];
  v8 = [v3 combine:extensionBundleIdentifier];

  containerBundleIdentifier = [(WFConfiguredSystemControlAction *)self containerBundleIdentifier];
  v10 = [v3 combine:containerBundleIdentifier];

  kind = [(WFConfiguredSystemControlAction *)self kind];
  v12 = [v3 combine:kind];

  controlType = [(WFConfiguredSystemControlAction *)self controlType];
  v14 = [v3 combine:controlType];

  v15 = [v3 finalize];
  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42.receiver = self;
        v42.super_class = WFConfiguredSystemControlAction;
        if ([(WFConfiguredStaccatoAction *)&v42 isEqual:v5])
        {
          v6 = v5;
          intent = [(WFConfiguredSystemControlAction *)self intent];
          intent2 = [(WFConfiguredSystemControlAction *)v6 intent];
          v9 = intent;
          v10 = intent2;
          v11 = v10;
          if (v9 == v10)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
            v13 = v10;
            v14 = v9;
            if (!v9 || !v10)
            {
              goto LABEL_45;
            }

            v15 = [v9 isEqual:v10];

            if (!v15)
            {
              LOBYTE(v12) = 0;
LABEL_46:

              goto LABEL_47;
            }
          }

          extensionBundleIdentifier = [(WFConfiguredSystemControlAction *)self extensionBundleIdentifier];
          extensionBundleIdentifier2 = [(WFConfiguredSystemControlAction *)v6 extensionBundleIdentifier];
          v14 = extensionBundleIdentifier;
          v18 = extensionBundleIdentifier2;
          v13 = v18;
          if (v14 == v18)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
            v19 = v18;
            v20 = v14;
            if (!v14 || !v18)
            {
              goto LABEL_44;
            }

            v21 = [v14 isEqualToString:v18];

            if (!v21)
            {
              LOBYTE(v12) = 0;
LABEL_45:

              goto LABEL_46;
            }
          }

          containerBundleIdentifier = [(WFConfiguredSystemControlAction *)self containerBundleIdentifier];
          containerBundleIdentifier2 = [(WFConfiguredSystemControlAction *)v6 containerBundleIdentifier];
          v20 = containerBundleIdentifier;
          v24 = containerBundleIdentifier2;
          v41 = v24;
          if (v20 != v24)
          {
            LOBYTE(v12) = 0;
            if (v20)
            {
              v25 = v24;
              v26 = v20;
              if (v24)
              {
                v12 = [v20 isEqualToString:v24];

                if (!v12)
                {
                  goto LABEL_43;
                }

LABEL_25:
                v40 = v20;
                kind = [(WFConfiguredSystemControlAction *)self kind];
                kind2 = [(WFConfiguredSystemControlAction *)v6 kind];
                v29 = kind;
                v30 = kind2;
                v38 = v30;
                v39 = v29;
                if (v29 == v30)
                {
                }

                else
                {
                  LOBYTE(v12) = 0;
                  if (!v29)
                  {
                    v31 = v30;
                    v20 = v40;
                    goto LABEL_40;
                  }

                  v31 = v30;
                  v20 = v40;
                  if (!v30)
                  {
LABEL_40:

                    goto LABEL_41;
                  }

                  v32 = [v29 isEqualToString:v30];

                  if (!v32)
                  {
                    LOBYTE(v12) = 0;
                    v20 = v40;
LABEL_41:
                    v25 = v38;
                    v26 = v39;
                    goto LABEL_42;
                  }
                }

                v33 = [(WFConfiguredSystemControlAction *)self controlType:v38];
                controlType = [(WFConfiguredSystemControlAction *)v6 controlType];
                v29 = v33;
                v35 = controlType;
                v36 = v35;
                if (v29 == v35)
                {
                  LOBYTE(v12) = 1;
                }

                else
                {
                  LOBYTE(v12) = 0;
                  if (v29)
                  {
                    v20 = v40;
                    if (v35)
                    {
                      LOBYTE(v12) = [v29 isEqual:v35];
                    }

                    goto LABEL_38;
                  }
                }

                v20 = v40;
LABEL_38:

                v31 = v36;
                goto LABEL_40;
              }
            }

            else
            {
              v25 = v24;
              v26 = 0;
            }

LABEL_42:

LABEL_43:
            v19 = v41;
LABEL_44:

            goto LABEL_45;
          }

          goto LABEL_25;
        }
      }
    }

    LOBYTE(v12) = 0;
  }

LABEL_47:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(WFConfiguredStaccatoAction *)self identifier];
  name = [(WFConfiguredStaccatoAction *)self name];
  extensionBundleIdentifier = [(WFConfiguredSystemControlAction *)self extensionBundleIdentifier];
  containerBundleIdentifier = [(WFConfiguredSystemControlAction *)self containerBundleIdentifier];
  kind = [(WFConfiguredSystemControlAction *)self kind];
  intent = [(WFConfiguredSystemControlAction *)self intent];
  controlType = [(WFConfiguredSystemControlAction *)self controlType];
  v12 = [v3 stringWithFormat:@"<%@ (%p): id: %@ name: %@, extensionBundleIdentifier: %@, containerBundleIdentifier: %@, kind: %@, intent: %@, controlType: %@>", v4, self, identifier, name, extensionBundleIdentifier, containerBundleIdentifier, kind, intent, controlType];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = WFConfiguredSystemControlAction;
  coderCopy = coder;
  [(WFConfiguredStaccatoAction *)&v10 encodeWithCoder:coderCopy];
  v5 = [(WFConfiguredSystemControlAction *)self intent:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"intent"];

  extensionBundleIdentifier = [(WFConfiguredSystemControlAction *)self extensionBundleIdentifier];
  [coderCopy encodeObject:extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];

  containerBundleIdentifier = [(WFConfiguredSystemControlAction *)self containerBundleIdentifier];
  [coderCopy encodeObject:containerBundleIdentifier forKey:@"containerBundleIdentifier"];

  kind = [(WFConfiguredSystemControlAction *)self kind];
  [coderCopy encodeObject:kind forKey:@"kind"];

  controlType = [(WFConfiguredSystemControlAction *)self controlType];
  [coderCopy encodeObject:controlType forKey:@"controlType"];
}

- (WFConfiguredSystemControlAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"controlType"];

  selfCopy = 0;
  if (v6 && v7 && v9 && v10)
  {
    self = [(WFConfiguredSystemControlAction *)self initWithIntent:v5 named:v6 extensionBundleIdentifier:v7 containerBundleIdentifier:v8 kind:v9 controlType:v10];
    selfCopy = self;
  }

  return selfCopy;
}

- (WFConfiguredSystemControlAction)initWithIntent:(id)intent named:(id)named extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind controlType:(id)type
{
  intentCopy = intent;
  namedCopy = named;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  typeCopy = type;
  if (namedCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemControlAction.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (identifierCopy)
    {
LABEL_3:
      if (kindCopy)
      {
        goto LABEL_4;
      }

LABEL_11:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemControlAction.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"kind"}];

      if (typeCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemControlAction.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"extensionBundleIdentifier"}];

  if (!kindCopy)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (typeCopy)
  {
    goto LABEL_5;
  }

LABEL_12:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemControlAction.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"controlType"}];

LABEL_5:
  kindCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", identifierCopy, kindCopy];
  if (bundleIdentifierCopy)
  {
    v22 = bundleIdentifierCopy;
  }

  else
  {
    v22 = identifierCopy;
  }

  v38.receiver = self;
  v38.super_class = WFConfiguredSystemControlAction;
  v23 = [(WFConfiguredStaccatoAction *)&v38 initWithIdentifier:kindCopy associatedBundleIdentifier:v22 name:namedCopy previewIcon:0 shortcutsMetadata:0 colorScheme:0];
  intent = v23->_intent;
  v23->_intent = intentCopy;
  v25 = intentCopy;

  v26 = [identifierCopy copy];
  extensionBundleIdentifier = v23->_extensionBundleIdentifier;
  v23->_extensionBundleIdentifier = v26;

  v28 = [bundleIdentifierCopy copy];
  containerBundleIdentifier = v23->_containerBundleIdentifier;
  v23->_containerBundleIdentifier = v28;

  v30 = [kindCopy copy];
  kind = v23->_kind;
  v23->_kind = v30;

  controlType = v23->_controlType;
  v23->_controlType = typeCopy;

  return v23;
}

@end