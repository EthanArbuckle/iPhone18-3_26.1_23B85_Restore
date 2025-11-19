@interface WFConfiguredSystemControlAction
- (BOOL)isEqual:(id)a3;
- (WFConfiguredSystemControlAction)initWithCoder:(id)a3;
- (WFConfiguredSystemControlAction)initWithIntent:(id)a3 named:(id)a4 extensionBundleIdentifier:(id)a5 containerBundleIdentifier:(id)a6 kind:(id)a7 controlType:(id)a8;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFConfiguredSystemControlAction

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v17.receiver = self;
  v17.super_class = WFConfiguredSystemControlAction;
  v4 = [v3 combineInteger:{-[WFConfiguredStaccatoAction hash](&v17, sel_hash)}];
  v5 = [(WFConfiguredSystemControlAction *)self intent];
  v6 = [v3 combine:v5];

  v7 = [(WFConfiguredSystemControlAction *)self extensionBundleIdentifier];
  v8 = [v3 combine:v7];

  v9 = [(WFConfiguredSystemControlAction *)self containerBundleIdentifier];
  v10 = [v3 combine:v9];

  v11 = [(WFConfiguredSystemControlAction *)self kind];
  v12 = [v3 combine:v11];

  v13 = [(WFConfiguredSystemControlAction *)self controlType];
  v14 = [v3 combine:v13];

  v15 = [v3 finalize];
  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42.receiver = self;
        v42.super_class = WFConfiguredSystemControlAction;
        if ([(WFConfiguredStaccatoAction *)&v42 isEqual:v5])
        {
          v6 = v5;
          v7 = [(WFConfiguredSystemControlAction *)self intent];
          v8 = [(WFConfiguredSystemControlAction *)v6 intent];
          v9 = v7;
          v10 = v8;
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

          v16 = [(WFConfiguredSystemControlAction *)self extensionBundleIdentifier];
          v17 = [(WFConfiguredSystemControlAction *)v6 extensionBundleIdentifier];
          v14 = v16;
          v18 = v17;
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

          v22 = [(WFConfiguredSystemControlAction *)self containerBundleIdentifier];
          v23 = [(WFConfiguredSystemControlAction *)v6 containerBundleIdentifier];
          v20 = v22;
          v24 = v23;
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
                v27 = [(WFConfiguredSystemControlAction *)self kind];
                v28 = [(WFConfiguredSystemControlAction *)v6 kind];
                v29 = v27;
                v30 = v28;
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
                v34 = [(WFConfiguredSystemControlAction *)v6 controlType];
                v29 = v33;
                v35 = v34;
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
  v5 = [(WFConfiguredStaccatoAction *)self identifier];
  v6 = [(WFConfiguredStaccatoAction *)self name];
  v7 = [(WFConfiguredSystemControlAction *)self extensionBundleIdentifier];
  v8 = [(WFConfiguredSystemControlAction *)self containerBundleIdentifier];
  v9 = [(WFConfiguredSystemControlAction *)self kind];
  v10 = [(WFConfiguredSystemControlAction *)self intent];
  v11 = [(WFConfiguredSystemControlAction *)self controlType];
  v12 = [v3 stringWithFormat:@"<%@ (%p): id: %@ name: %@, extensionBundleIdentifier: %@, containerBundleIdentifier: %@, kind: %@, intent: %@, controlType: %@>", v4, self, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = WFConfiguredSystemControlAction;
  v4 = a3;
  [(WFConfiguredStaccatoAction *)&v10 encodeWithCoder:v4];
  v5 = [(WFConfiguredSystemControlAction *)self intent:v10.receiver];
  [v4 encodeObject:v5 forKey:@"intent"];

  v6 = [(WFConfiguredSystemControlAction *)self extensionBundleIdentifier];
  [v4 encodeObject:v6 forKey:@"extensionBundleIdentifier"];

  v7 = [(WFConfiguredSystemControlAction *)self containerBundleIdentifier];
  [v4 encodeObject:v7 forKey:@"containerBundleIdentifier"];

  v8 = [(WFConfiguredSystemControlAction *)self kind];
  [v4 encodeObject:v8 forKey:@"kind"];

  v9 = [(WFConfiguredSystemControlAction *)self controlType];
  [v4 encodeObject:v9 forKey:@"controlType"];
}

- (WFConfiguredSystemControlAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"controlType"];

  v11 = 0;
  if (v6 && v7 && v9 && v10)
  {
    self = [(WFConfiguredSystemControlAction *)self initWithIntent:v5 named:v6 extensionBundleIdentifier:v7 containerBundleIdentifier:v8 kind:v9 controlType:v10];
    v11 = self;
  }

  return v11;
}

- (WFConfiguredSystemControlAction)initWithIntent:(id)a3 named:(id)a4 extensionBundleIdentifier:(id)a5 containerBundleIdentifier:(id)a6 kind:(id)a7 controlType:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemControlAction.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v17)
    {
LABEL_3:
      if (v19)
      {
        goto LABEL_4;
      }

LABEL_11:
      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      [v36 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemControlAction.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"kind"}];

      if (v20)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  v35 = [MEMORY[0x1E696AAA8] currentHandler];
  [v35 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemControlAction.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"extensionBundleIdentifier"}];

  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v20)
  {
    goto LABEL_5;
  }

LABEL_12:
  v37 = [MEMORY[0x1E696AAA8] currentHandler];
  [v37 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemControlAction.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"controlType"}];

LABEL_5:
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v17, v19];
  if (v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = v17;
  }

  v38.receiver = self;
  v38.super_class = WFConfiguredSystemControlAction;
  v23 = [(WFConfiguredStaccatoAction *)&v38 initWithIdentifier:v21 associatedBundleIdentifier:v22 name:v16 previewIcon:0 shortcutsMetadata:0 colorScheme:0];
  intent = v23->_intent;
  v23->_intent = v15;
  v25 = v15;

  v26 = [v17 copy];
  extensionBundleIdentifier = v23->_extensionBundleIdentifier;
  v23->_extensionBundleIdentifier = v26;

  v28 = [v18 copy];
  containerBundleIdentifier = v23->_containerBundleIdentifier;
  v23->_containerBundleIdentifier = v28;

  v30 = [v19 copy];
  kind = v23->_kind;
  v23->_kind = v30;

  controlType = v23->_controlType;
  v23->_controlType = v20;

  return v23;
}

@end