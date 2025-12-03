@interface WFConfiguredSystemContextualAction
- (BOOL)isEqual:(id)equal;
- (WFConfiguredSystemContextualAction)initWithCoder:(id)coder;
- (WFConfiguredSystemContextualAction)initWithContextualAction:(id)action appShortcutIdentifier:(id)identifier shortcutsMetadata:(id)metadata colorScheme:(id)scheme;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFConfiguredSystemContextualAction

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v11.receiver = self;
  v11.super_class = WFConfiguredSystemContextualAction;
  v4 = [v3 combineInteger:{-[WFConfiguredStaccatoAction hash](&v11, sel_hash)}];
  contextualAction = [(WFConfiguredSystemContextualAction *)self contextualAction];
  v6 = [v3 combine:contextualAction];

  appShortcutIdentifier = [(WFConfiguredSystemContextualAction *)self appShortcutIdentifier];
  v8 = [v3 combine:appShortcutIdentifier];

  v9 = [v3 finalize];
  return v9;
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
        v19.receiver = self;
        v19.super_class = WFConfiguredSystemContextualAction;
        if ([(WFConfiguredStaccatoAction *)&v19 isEqual:v5])
        {
          v6 = v5;
          contextualAction = [(WFConfiguredSystemContextualAction *)self contextualAction];
          contextualAction2 = [(WFConfiguredSystemContextualAction *)v6 contextualAction];
          v9 = contextualAction;
          v10 = contextualAction2;
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

          appShortcutIdentifier = [(WFConfiguredSystemContextualAction *)self appShortcutIdentifier];
          appShortcutIdentifier2 = [(WFConfiguredSystemContextualAction *)v6 appShortcutIdentifier];
          v14 = appShortcutIdentifier;
          v17 = appShortcutIdentifier2;
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
  identifier = [(WFConfiguredStaccatoAction *)self identifier];
  name = [(WFConfiguredStaccatoAction *)self name];
  associatedBundleIdentifier = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  contextualAction = [(WFConfiguredSystemContextualAction *)self contextualAction];
  appShortcutIdentifier = [(WFConfiguredSystemContextualAction *)self appShortcutIdentifier];
  v10 = [v3 stringWithFormat:@"<%@ (%p): id: %@ name: %@, bundle: %@, action: %@, app shortcut identifier: %@>", v4, self, identifier, name, associatedBundleIdentifier, contextualAction, appShortcutIdentifier];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFConfiguredSystemContextualAction;
  coderCopy = coder;
  [(WFConfiguredStaccatoAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFConfiguredSystemContextualAction *)self contextualAction:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"contextualAction"];

  appShortcutIdentifier = [(WFConfiguredSystemContextualAction *)self appShortcutIdentifier];
  [coderCopy encodeObject:appShortcutIdentifier forKey:@"appShortcutIdentifier"];
}

- (WFConfiguredSystemContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextualAction"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appShortcutIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcutsMetadata"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorScheme"];

  if (v5)
  {
    self = [(WFConfiguredSystemContextualAction *)self initWithContextualAction:v5 appShortcutIdentifier:v6 shortcutsMetadata:v7 colorScheme:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFConfiguredSystemContextualAction)initWithContextualAction:(id)action appShortcutIdentifier:(id)identifier shortcutsMetadata:(id)metadata colorScheme:(id)scheme
{
  actionCopy = action;
  obj = identifier;
  identifierCopy = identifier;
  metadataCopy = metadata;
  schemeCopy = scheme;
  if (!actionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemContextualAction.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  associatedAppBundleIdentifier = [actionCopy associatedAppBundleIdentifier];
  v16 = associatedAppBundleIdentifier;
  v17 = @"com.apple.shortcuts";
  if (associatedAppBundleIdentifier)
  {
    v17 = associatedAppBundleIdentifier;
  }

  v18 = v17;

  uniqueIdentifier = [actionCopy uniqueIdentifier];
  displayString = [actionCopy displayString];
  icon = [actionCopy icon];
  wfIcon = [icon wfIcon];
  v29.receiver = self;
  v29.super_class = WFConfiguredSystemContextualAction;
  v23 = [(WFConfiguredStaccatoAction *)&v29 initWithIdentifier:uniqueIdentifier associatedBundleIdentifier:v18 name:displayString previewIcon:wfIcon shortcutsMetadata:metadataCopy colorScheme:schemeCopy];

  if (v23)
  {
    objc_storeStrong(&v23->_contextualAction, action);
    objc_storeStrong(&v23->_appShortcutIdentifier, obj);
    v24 = v23;
  }

  return v23;
}

@end