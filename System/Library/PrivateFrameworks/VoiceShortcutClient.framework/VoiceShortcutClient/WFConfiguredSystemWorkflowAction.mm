@interface WFConfiguredSystemWorkflowAction
- (BOOL)isEqual:(id)equal;
- (WFConfiguredSystemWorkflowAction)initWithCoder:(id)coder;
- (WFConfiguredSystemWorkflowAction)initWithName:(id)name workflowIdentifier:(id)identifier workflowIcon:(id)icon associatedBundleIdentifier:(id)bundleIdentifier shortcutsMetadata:(id)metadata colorScheme:(id)scheme;
- (WFConfiguredSystemWorkflowAction)initWithWorkflow:(id)workflow shortcutsMetadata:(id)metadata;
- (WFConfiguredSystemWorkflowAction)initWithWorkflow:(id)workflow shortcutsMetadata:(id)metadata colorScheme:(id)scheme;
- (id)description;
- (id)previewIcon;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFConfiguredSystemWorkflowAction

- (id)previewIcon
{
  associatedBundleIdentifier = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  v4 = [associatedBundleIdentifier isEqualToString:@"com.apple.shortcuts"];

  if (v4)
  {
    workflowIcon = [(WFConfiguredSystemWorkflowAction *)self workflowIcon];
    icon = [workflowIcon icon];

    if (icon)
    {
      workflowIcon2 = [(WFConfiguredSystemWorkflowAction *)self workflowIcon];
      icon2 = [workflowIcon2 icon];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = WFConfiguredSystemWorkflowAction;
      icon2 = [(WFConfiguredStaccatoAction *)&v12 previewIcon];
    }
  }

  else
  {
    v9 = [WFAppIcon alloc];
    associatedBundleIdentifier2 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
    icon2 = [(WFAppIcon *)v9 initWithBundleIdentifier:associatedBundleIdentifier2];
  }

  return icon2;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v9.receiver = self;
  v9.super_class = WFConfiguredSystemWorkflowAction;
  v4 = [v3 combineInteger:{-[WFConfiguredStaccatoAction hash](&v9, sel_hash)}];
  workflowIdentifier = [(WFConfiguredSystemWorkflowAction *)self workflowIdentifier];
  v6 = [v3 combine:workflowIdentifier];

  v7 = [v3 finalize];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v14.receiver = self, v14.super_class = WFConfiguredSystemWorkflowAction, [(WFConfiguredStaccatoAction *)&v14 isEqual:v5]))
  {
    v6 = v5;
    workflowIdentifier = [(WFConfiguredSystemWorkflowAction *)self workflowIdentifier];
    workflowIdentifier2 = [(WFConfiguredSystemWorkflowAction *)v6 workflowIdentifier];
    v9 = workflowIdentifier;
    v10 = workflowIdentifier2;
    v11 = v10;
    if (v9 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0;
      if (v9 && v10)
      {
        v12 = [v9 isEqualToString:v10];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(WFConfiguredStaccatoAction *)self identifier];
  name = [(WFConfiguredStaccatoAction *)self name];
  associatedBundleIdentifier = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  workflowIdentifier = [(WFConfiguredSystemWorkflowAction *)self workflowIdentifier];
  v9 = [v3 stringWithFormat:@"<%@ (%p): id: %@ name: %@, bundle: %@, workflow: %@>", v4, self, identifier, name, associatedBundleIdentifier, workflowIdentifier];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFConfiguredSystemWorkflowAction;
  coderCopy = coder;
  [(WFConfiguredStaccatoAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFConfiguredSystemWorkflowAction *)self workflowIcon:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"workflowIcon"];

  workflowIdentifier = [(WFConfiguredSystemWorkflowAction *)self workflowIdentifier];
  [coderCopy encodeObject:workflowIdentifier forKey:@"workflowIdentifier"];
}

- (WFConfiguredSystemWorkflowAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workflowIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedBundleIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcutsMetadata"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorScheme"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workflowIcon"];

  selfCopy = 0;
  if (v5 && v6)
  {
    self = [(WFConfiguredSystemWorkflowAction *)self initWithName:v5 workflowIdentifier:v6 workflowIcon:v10 associatedBundleIdentifier:v7 shortcutsMetadata:v8 colorScheme:v9];
    selfCopy = self;
  }

  return selfCopy;
}

- (WFConfiguredSystemWorkflowAction)initWithName:(id)name workflowIdentifier:(id)identifier workflowIcon:(id)icon associatedBundleIdentifier:(id)bundleIdentifier shortcutsMetadata:(id)metadata colorScheme:(id)scheme
{
  nameCopy = name;
  identifierCopy = identifier;
  iconCopy = icon;
  bundleIdentifierCopy = bundleIdentifier;
  metadataCopy = metadata;
  schemeCopy = scheme;
  if (nameCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemWorkflowAction.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (identifierCopy)
    {
LABEL_3:
      if (bundleIdentifierCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemWorkflowAction.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"workflowIdentifier"}];

  if (!bundleIdentifierCopy)
  {
LABEL_4:
    bundleIdentifierCopy = @"com.apple.shortcuts";
    v21 = @"com.apple.shortcuts";
  }

LABEL_5:
  icon = [iconCopy icon];
  v30.receiver = self;
  v30.super_class = WFConfiguredSystemWorkflowAction;
  v23 = [(WFConfiguredStaccatoAction *)&v30 initWithIdentifier:identifierCopy associatedBundleIdentifier:bundleIdentifierCopy name:nameCopy previewIcon:icon shortcutsMetadata:metadataCopy colorScheme:schemeCopy];

  if (v23)
  {
    v24 = [identifierCopy copy];
    workflowIdentifier = v23->_workflowIdentifier;
    v23->_workflowIdentifier = v24;

    objc_storeStrong(&v23->_workflowIcon, icon);
    v26 = v23;
  }

  return v23;
}

- (WFConfiguredSystemWorkflowAction)initWithWorkflow:(id)workflow shortcutsMetadata:(id)metadata colorScheme:(id)scheme
{
  workflowCopy = workflow;
  metadataCopy = metadata;
  schemeCopy = scheme;
  if (!workflowCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemWorkflowAction.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"workflowDescriptor"}];
  }

  name = [workflowCopy name];
  identifier = [workflowCopy identifier];
  v14 = -[WFWorkflowIcon initWithBackgroundColorValue:glyphCharacter:customImageData:]([WFWorkflowIcon alloc], "initWithBackgroundColorValue:glyphCharacter:customImageData:", [workflowCopy color], objc_msgSend(workflowCopy, "glyphCharacter"), 0);
  associatedAppBundleIdentifier = [workflowCopy associatedAppBundleIdentifier];
  v16 = [(WFConfiguredSystemWorkflowAction *)self initWithName:name workflowIdentifier:identifier workflowIcon:v14 associatedBundleIdentifier:associatedAppBundleIdentifier shortcutsMetadata:metadataCopy colorScheme:schemeCopy];

  return v16;
}

- (WFConfiguredSystemWorkflowAction)initWithWorkflow:(id)workflow shortcutsMetadata:(id)metadata
{
  v19 = *MEMORY[0x1E69E9840];
  workflowCopy = workflow;
  metadataCopy = metadata;
  if (!workflowCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemWorkflowAction.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"workflowDescriptor"}];
  }

  v9 = [(WFConfiguredSystemWorkflowAction *)self initWithWorkflow:workflowCopy shortcutsMetadata:metadataCopy colorScheme:0];
  if (!v9)
  {
    v10 = getWFControlMigrationLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = _NSFullMethodName();
      *buf = 136315394;
      v16 = "[WFConfiguredSystemWorkflowAction initWithWorkflow:shortcutsMetadata:]";
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_ERROR, "%s %@ returned nil", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

@end