@interface WFConfiguredSystemIntentAction
- (BOOL)isEqual:(id)equal;
- (WFConfiguredSystemIntentAction)initWithCoder:(id)coder;
- (WFConfiguredSystemIntentAction)initWithIntent:(id)intent named:(id)named previewIcon:(id)icon appShortcutIdentifier:(id)identifier contextualParameters:(id)parameters shortcutsMetadata:(id)metadata colorScheme:(id)scheme;
- (id)associatedBundleIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFConfiguredSystemIntentAction

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v13.receiver = self;
  v13.super_class = WFConfiguredSystemIntentAction;
  v4 = [v3 combineInteger:{-[WFConfiguredStaccatoAction hash](&v13, sel_hash)}];
  intent = [(WFConfiguredSystemIntentAction *)self intent];
  v6 = [v3 combine:intent];

  appShortcutIdentifier = [(WFConfiguredSystemIntentAction *)self appShortcutIdentifier];
  v8 = [v3 combine:appShortcutIdentifier];

  contextualParameters = [(WFConfiguredSystemIntentAction *)self contextualParameters];
  v10 = [v3 combine:contextualParameters];

  v11 = [v3 finalize];
  return v11;
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
        v25.receiver = self;
        v25.super_class = WFConfiguredSystemIntentAction;
        if ([(WFConfiguredStaccatoAction *)&v25 isEqual:v5])
        {
          v6 = v5;
          intent = [(WFConfiguredSystemIntentAction *)self intent];
          intent2 = [(WFConfiguredSystemIntentAction *)v6 intent];
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

          appShortcutIdentifier = [(WFConfiguredSystemIntentAction *)self appShortcutIdentifier];
          appShortcutIdentifier2 = [(WFConfiguredSystemIntentAction *)v6 appShortcutIdentifier];
          v14 = appShortcutIdentifier;
          v18 = appShortcutIdentifier2;
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

          contextualParameters = [(WFConfiguredSystemIntentAction *)self contextualParameters];
          contextualParameters2 = [(WFConfiguredSystemIntentAction *)v6 contextualParameters];
          v20 = contextualParameters;
          v23 = contextualParameters2;
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
  identifier = [(WFConfiguredStaccatoAction *)self identifier];
  v4 = [identifier isEqualToString:@"com.apple.springboard.OpenCamera"];

  if (v4)
  {
    associatedBundleIdentifier = @"com.apple.camera";
LABEL_5:
    v8 = associatedBundleIdentifier;
    goto LABEL_7;
  }

  identifier2 = [(WFConfiguredStaccatoAction *)self identifier];
  v7 = [identifier2 isEqualToString:@"com.apple.siri.VisualIntelligenceCameraLaunch"];

  if (v7)
  {
    associatedBundleIdentifier = @"com.apple.VisualIntelligenceCamera";
    goto LABEL_5;
  }

  v10.receiver = self;
  v10.super_class = WFConfiguredSystemIntentAction;
  associatedBundleIdentifier = [(WFConfiguredStaccatoAction *)&v10 associatedBundleIdentifier];
LABEL_7:

  return associatedBundleIdentifier;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(WFConfiguredStaccatoAction *)self identifier];
  name = [(WFConfiguredStaccatoAction *)self name];
  associatedBundleIdentifier = [(WFConfiguredSystemIntentAction *)self associatedBundleIdentifier];
  appShortcutIdentifier = [(WFConfiguredSystemIntentAction *)self appShortcutIdentifier];
  contextualParameters = [(WFConfiguredSystemIntentAction *)self contextualParameters];
  intent = [(WFConfiguredSystemIntentAction *)self intent];
  v11 = [v3 stringWithFormat:@"<%@ (%p): id: %@ name: %@, bundle: %@, asi: %@, contextual parameters: %@ intent: %@>", v4, self, identifier, name, associatedBundleIdentifier, appShortcutIdentifier, contextualParameters, intent];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = WFConfiguredSystemIntentAction;
  coderCopy = coder;
  [(WFConfiguredStaccatoAction *)&v8 encodeWithCoder:coderCopy];
  v5 = [(WFConfiguredSystemIntentAction *)self intent:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"intent"];

  appShortcutIdentifier = [(WFConfiguredSystemIntentAction *)self appShortcutIdentifier];
  [coderCopy encodeObject:appShortcutIdentifier forKey:@"appShortcutIdentifier"];

  contextualParameters = [(WFConfiguredSystemIntentAction *)self contextualParameters];
  [coderCopy encodeObject:contextualParameters forKey:@"contextualParameters"];
}

- (WFConfiguredSystemIntentAction)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appShortcutIdentifier"];
  v8 = MEMORY[0x1E695DFD8];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"contextualParameters"];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previewIcon"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcutsMetadata"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorScheme"];

  selfCopy = 0;
  if (v6 && v5)
  {
    self = [(WFConfiguredSystemIntentAction *)self initWithIntent:v6 named:v5 previewIcon:v12 appShortcutIdentifier:v7 contextualParameters:v11 shortcutsMetadata:v13 colorScheme:v14, v18[0]];
    selfCopy = self;
  }

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (WFConfiguredSystemIntentAction)initWithIntent:(id)intent named:(id)named previewIcon:(id)icon appShortcutIdentifier:(id)identifier contextualParameters:(id)parameters shortcutsMetadata:(id)metadata colorScheme:(id)scheme
{
  intentCopy = intent;
  namedCopy = named;
  iconCopy = icon;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  parametersCopy = parameters;
  metadataCopy = metadata;
  schemeCopy = scheme;
  if (namedCopy)
  {
    if (intentCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemIntentAction.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (intentCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemIntentAction.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"intent"}];

LABEL_3:
  v21 = MEMORY[0x1E696AEC0];
  [intentCopy launchId];
  v23 = v22 = self;
  appIntentIdentifier = [intentCopy appIntentIdentifier];
  v25 = [v21 stringWithFormat:@"%@.%@", v23, appIntentIdentifier];

  launchId = [intentCopy launchId];
  v38.receiver = v22;
  v38.super_class = WFConfiguredSystemIntentAction;
  v27 = [(WFConfiguredStaccatoAction *)&v38 initWithIdentifier:v25 associatedBundleIdentifier:launchId name:namedCopy previewIcon:iconCopy shortcutsMetadata:metadataCopy colorScheme:schemeCopy];

  if (v27)
  {
    objc_storeStrong(&v27->_intent, intent);
    objc_storeStrong(&v27->_appShortcutIdentifier, identifierCopy);
    v28 = [parametersCopy copy];
    contextualParameters = v27->_contextualParameters;
    v27->_contextualParameters = v28;

    v30 = v27;
  }

  return v27;
}

@end