@interface WFConfiguredSystemContextualAction
- (BOOL)isEqual:(id)a3;
- (WFConfiguredSystemContextualAction)initWithCoder:(id)a3;
- (WFConfiguredSystemContextualAction)initWithContextualAction:(id)a3 appShortcutIdentifier:(id)a4 shortcutsMetadata:(id)a5 colorScheme:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFConfiguredSystemContextualAction

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v11.receiver = self;
  v11.super_class = WFConfiguredSystemContextualAction;
  v4 = [v3 combineInteger:{-[WFConfiguredStaccatoAction hash](&v11, sel_hash)}];
  v5 = [(WFConfiguredSystemContextualAction *)self contextualAction];
  v6 = [v3 combine:v5];

  v7 = [(WFConfiguredSystemContextualAction *)self appShortcutIdentifier];
  v8 = [v3 combine:v7];

  v9 = [v3 finalize];
  return v9;
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
        v19.receiver = self;
        v19.super_class = WFConfiguredSystemContextualAction;
        if ([(WFConfiguredStaccatoAction *)&v19 isEqual:v5])
        {
          v6 = v5;
          v7 = [(WFConfiguredSystemContextualAction *)self contextualAction];
          v8 = [(WFConfiguredSystemContextualAction *)v6 contextualAction];
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
LABEL_19:

LABEL_20:
              goto LABEL_21;
            }

            v12 = [v9 isEqual:v10];

            if (!v12)
            {
              goto LABEL_20;
            }
          }

          v15 = [(WFConfiguredSystemContextualAction *)self appShortcutIdentifier];
          v16 = [(WFConfiguredSystemContextualAction *)v6 appShortcutIdentifier];
          v14 = v15;
          v17 = v16;
          v13 = v17;
          if (v14 == v17)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            LOBYTE(v12) = 0;
            if (v14 && v17)
            {
              LOBYTE(v12) = [v14 isEqual:v17];
            }
          }

          goto LABEL_19;
        }
      }
    }

    LOBYTE(v12) = 0;
  }

LABEL_21:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(WFConfiguredStaccatoAction *)self identifier];
  v6 = [(WFConfiguredStaccatoAction *)self name];
  v7 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  v8 = [(WFConfiguredSystemContextualAction *)self contextualAction];
  v9 = [(WFConfiguredSystemContextualAction *)self appShortcutIdentifier];
  v10 = [v3 stringWithFormat:@"<%@ (%p): id: %@ name: %@, bundle: %@, action: %@, app shortcut identifier: %@>", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFConfiguredSystemContextualAction;
  v4 = a3;
  [(WFConfiguredStaccatoAction *)&v7 encodeWithCoder:v4];
  v5 = [(WFConfiguredSystemContextualAction *)self contextualAction:v7.receiver];
  [v4 encodeObject:v5 forKey:@"contextualAction"];

  v6 = [(WFConfiguredSystemContextualAction *)self appShortcutIdentifier];
  [v4 encodeObject:v6 forKey:@"appShortcutIdentifier"];
}

- (WFConfiguredSystemContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextualAction"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appShortcutIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcutsMetadata"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorScheme"];

  if (v5)
  {
    self = [(WFConfiguredSystemContextualAction *)self initWithContextualAction:v5 appShortcutIdentifier:v6 shortcutsMetadata:v7 colorScheme:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WFConfiguredSystemContextualAction)initWithContextualAction:(id)a3 appShortcutIdentifier:(id)a4 shortcutsMetadata:(id)a5 colorScheme:(id)a6
{
  v12 = a3;
  obj = a4;
  v28 = a4;
  v13 = a5;
  v14 = a6;
  if (!v12)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemContextualAction.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v15 = [v12 associatedAppBundleIdentifier];
  v16 = v15;
  v17 = @"com.apple.shortcuts";
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = [v12 uniqueIdentifier];
  v20 = [v12 displayString];
  v21 = [v12 icon];
  v22 = [v21 wfIcon];
  v29.receiver = self;
  v29.super_class = WFConfiguredSystemContextualAction;
  v23 = [(WFConfiguredStaccatoAction *)&v29 initWithIdentifier:v19 associatedBundleIdentifier:v18 name:v20 previewIcon:v22 shortcutsMetadata:v13 colorScheme:v14];

  if (v23)
  {
    objc_storeStrong(&v23->_contextualAction, a3);
    objc_storeStrong(&v23->_appShortcutIdentifier, obj);
    v24 = v23;
  }

  return v23;
}

@end