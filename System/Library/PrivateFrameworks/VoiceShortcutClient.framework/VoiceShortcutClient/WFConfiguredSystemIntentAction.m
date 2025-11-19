@interface WFConfiguredSystemIntentAction
- (BOOL)isEqual:(id)a3;
- (WFConfiguredSystemIntentAction)initWithCoder:(id)a3;
- (WFConfiguredSystemIntentAction)initWithIntent:(id)a3 named:(id)a4 previewIcon:(id)a5 appShortcutIdentifier:(id)a6 contextualParameters:(id)a7 shortcutsMetadata:(id)a8 colorScheme:(id)a9;
- (id)associatedBundleIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFConfiguredSystemIntentAction

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v13.receiver = self;
  v13.super_class = WFConfiguredSystemIntentAction;
  v4 = [v3 combineInteger:{-[WFConfiguredStaccatoAction hash](&v13, sel_hash)}];
  v5 = [(WFConfiguredSystemIntentAction *)self intent];
  v6 = [v3 combine:v5];

  v7 = [(WFConfiguredSystemIntentAction *)self appShortcutIdentifier];
  v8 = [v3 combine:v7];

  v9 = [(WFConfiguredSystemIntentAction *)self contextualParameters];
  v10 = [v3 combine:v9];

  v11 = [v3 finalize];
  return v11;
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
        v25.receiver = self;
        v25.super_class = WFConfiguredSystemIntentAction;
        if ([(WFConfiguredStaccatoAction *)&v25 isEqual:v5])
        {
          v6 = v5;
          v7 = [(WFConfiguredSystemIntentAction *)self intent];
          v8 = [(WFConfiguredSystemIntentAction *)v6 intent];
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
              goto LABEL_26;
            }

            v15 = [v9 isEqual:v10];

            if (!v15)
            {
              LOBYTE(v12) = 0;
LABEL_27:

              goto LABEL_28;
            }
          }

          v16 = [(WFConfiguredSystemIntentAction *)self appShortcutIdentifier];
          v17 = [(WFConfiguredSystemIntentAction *)v6 appShortcutIdentifier];
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
LABEL_25:

LABEL_26:
              goto LABEL_27;
            }

            v12 = [v14 isEqual:v18];

            if (!v12)
            {
              goto LABEL_26;
            }
          }

          v21 = [(WFConfiguredSystemIntentAction *)self contextualParameters];
          v22 = [(WFConfiguredSystemIntentAction *)v6 contextualParameters];
          v20 = v21;
          v23 = v22;
          v19 = v23;
          if (v20 == v23)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            LOBYTE(v12) = 0;
            if (v20 && v23)
            {
              LOBYTE(v12) = [v20 isEqualToArray:v23];
            }
          }

          goto LABEL_25;
        }
      }
    }

    LOBYTE(v12) = 0;
  }

LABEL_28:

  return v12;
}

- (id)associatedBundleIdentifier
{
  v3 = [(WFConfiguredStaccatoAction *)self identifier];
  v4 = [v3 isEqualToString:@"com.apple.springboard.OpenCamera"];

  if (v4)
  {
    v5 = @"com.apple.camera";
LABEL_5:
    v8 = v5;
    goto LABEL_7;
  }

  v6 = [(WFConfiguredStaccatoAction *)self identifier];
  v7 = [v6 isEqualToString:@"com.apple.siri.VisualIntelligenceCameraLaunch"];

  if (v7)
  {
    v5 = @"com.apple.VisualIntelligenceCamera";
    goto LABEL_5;
  }

  v10.receiver = self;
  v10.super_class = WFConfiguredSystemIntentAction;
  v5 = [(WFConfiguredStaccatoAction *)&v10 associatedBundleIdentifier];
LABEL_7:

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(WFConfiguredStaccatoAction *)self identifier];
  v6 = [(WFConfiguredStaccatoAction *)self name];
  v7 = [(WFConfiguredSystemIntentAction *)self associatedBundleIdentifier];
  v8 = [(WFConfiguredSystemIntentAction *)self appShortcutIdentifier];
  v9 = [(WFConfiguredSystemIntentAction *)self contextualParameters];
  v10 = [(WFConfiguredSystemIntentAction *)self intent];
  v11 = [v3 stringWithFormat:@"<%@ (%p): id: %@ name: %@, bundle: %@, asi: %@, contextual parameters: %@ intent: %@>", v4, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFConfiguredSystemIntentAction;
  v4 = a3;
  [(WFConfiguredStaccatoAction *)&v8 encodeWithCoder:v4];
  v5 = [(WFConfiguredSystemIntentAction *)self intent:v8.receiver];
  [v4 encodeObject:v5 forKey:@"intent"];

  v6 = [(WFConfiguredSystemIntentAction *)self appShortcutIdentifier];
  [v4 encodeObject:v6 forKey:@"appShortcutIdentifier"];

  v7 = [(WFConfiguredSystemIntentAction *)self contextualParameters];
  [v4 encodeObject:v7 forKey:@"contextualParameters"];
}

- (WFConfiguredSystemIntentAction)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appShortcutIdentifier"];
  v8 = MEMORY[0x1E695DFD8];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"contextualParameters"];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previewIcon"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcutsMetadata"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorScheme"];

  v15 = 0;
  if (v6 && v5)
  {
    self = [(WFConfiguredSystemIntentAction *)self initWithIntent:v6 named:v5 previewIcon:v12 appShortcutIdentifier:v7 contextualParameters:v11 shortcutsMetadata:v13 colorScheme:v14, v18[0]];
    v15 = self;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (WFConfiguredSystemIntentAction)initWithIntent:(id)a3 named:(id)a4 previewIcon:(id)a5 appShortcutIdentifier:(id)a6 contextualParameters:(id)a7 shortcutsMetadata:(id)a8 colorScheme:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v35 = a6;
  v37 = a6;
  v19 = a7;
  v36 = a8;
  v20 = a9;
  if (v17)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemIntentAction.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v33 = [MEMORY[0x1E696AAA8] currentHandler];
  [v33 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemIntentAction.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"intent"}];

LABEL_3:
  v21 = MEMORY[0x1E696AEC0];
  [v16 launchId];
  v23 = v22 = self;
  v24 = [v16 appIntentIdentifier];
  v25 = [v21 stringWithFormat:@"%@.%@", v23, v24];

  v26 = [v16 launchId];
  v38.receiver = v22;
  v38.super_class = WFConfiguredSystemIntentAction;
  v27 = [(WFConfiguredStaccatoAction *)&v38 initWithIdentifier:v25 associatedBundleIdentifier:v26 name:v17 previewIcon:v18 shortcutsMetadata:v36 colorScheme:v20];

  if (v27)
  {
    objc_storeStrong(&v27->_intent, a3);
    objc_storeStrong(&v27->_appShortcutIdentifier, v35);
    v28 = [v19 copy];
    contextualParameters = v27->_contextualParameters;
    v27->_contextualParameters = v28;

    v30 = v27;
  }

  return v27;
}

@end