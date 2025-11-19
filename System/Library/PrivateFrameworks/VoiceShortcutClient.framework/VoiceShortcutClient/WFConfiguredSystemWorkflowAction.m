@interface WFConfiguredSystemWorkflowAction
- (BOOL)isEqual:(id)a3;
- (WFConfiguredSystemWorkflowAction)initWithCoder:(id)a3;
- (WFConfiguredSystemWorkflowAction)initWithName:(id)a3 workflowIdentifier:(id)a4 workflowIcon:(id)a5 associatedBundleIdentifier:(id)a6 shortcutsMetadata:(id)a7 colorScheme:(id)a8;
- (WFConfiguredSystemWorkflowAction)initWithWorkflow:(id)a3 shortcutsMetadata:(id)a4;
- (WFConfiguredSystemWorkflowAction)initWithWorkflow:(id)a3 shortcutsMetadata:(id)a4 colorScheme:(id)a5;
- (id)description;
- (id)previewIcon;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFConfiguredSystemWorkflowAction

- (id)previewIcon
{
  v3 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.shortcuts"];

  if (v4)
  {
    v5 = [(WFConfiguredSystemWorkflowAction *)self workflowIcon];
    v6 = [v5 icon];

    if (v6)
    {
      v7 = [(WFConfiguredSystemWorkflowAction *)self workflowIcon];
      v8 = [v7 icon];
    }

    else
    {
      v12.receiver = self;
      v12.super_class = WFConfiguredSystemWorkflowAction;
      v8 = [(WFConfiguredStaccatoAction *)&v12 previewIcon];
    }
  }

  else
  {
    v9 = [WFAppIcon alloc];
    v10 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
    v8 = [(WFAppIcon *)v9 initWithBundleIdentifier:v10];
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v9.receiver = self;
  v9.super_class = WFConfiguredSystemWorkflowAction;
  v4 = [v3 combineInteger:{-[WFConfiguredStaccatoAction hash](&v9, sel_hash)}];
  v5 = [(WFConfiguredSystemWorkflowAction *)self workflowIdentifier];
  v6 = [v3 combine:v5];

  v7 = [v3 finalize];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v14.receiver = self, v14.super_class = WFConfiguredSystemWorkflowAction, [(WFConfiguredStaccatoAction *)&v14 isEqual:v5]))
  {
    v6 = v5;
    v7 = [(WFConfiguredSystemWorkflowAction *)self workflowIdentifier];
    v8 = [(WFConfiguredSystemWorkflowAction *)v6 workflowIdentifier];
    v9 = v7;
    v10 = v8;
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
  v5 = [(WFConfiguredStaccatoAction *)self identifier];
  v6 = [(WFConfiguredStaccatoAction *)self name];
  v7 = [(WFConfiguredStaccatoAction *)self associatedBundleIdentifier];
  v8 = [(WFConfiguredSystemWorkflowAction *)self workflowIdentifier];
  v9 = [v3 stringWithFormat:@"<%@ (%p): id: %@ name: %@, bundle: %@, workflow: %@>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFConfiguredSystemWorkflowAction;
  v4 = a3;
  [(WFConfiguredStaccatoAction *)&v7 encodeWithCoder:v4];
  v5 = [(WFConfiguredSystemWorkflowAction *)self workflowIcon:v7.receiver];
  [v4 encodeObject:v5 forKey:@"workflowIcon"];

  v6 = [(WFConfiguredSystemWorkflowAction *)self workflowIdentifier];
  [v4 encodeObject:v6 forKey:@"workflowIdentifier"];
}

- (WFConfiguredSystemWorkflowAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workflowIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedBundleIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcutsMetadata"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorScheme"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workflowIcon"];

  v11 = 0;
  if (v5 && v6)
  {
    self = [(WFConfiguredSystemWorkflowAction *)self initWithName:v5 workflowIdentifier:v6 workflowIcon:v10 associatedBundleIdentifier:v7 shortcutsMetadata:v8 colorScheme:v9];
    v11 = self;
  }

  return v11;
}

- (WFConfiguredSystemWorkflowAction)initWithName:(id)a3 workflowIdentifier:(id)a4 workflowIcon:(id)a5 associatedBundleIdentifier:(id)a6 shortcutsMetadata:(id)a7 colorScheme:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemWorkflowAction.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v16)
    {
LABEL_3:
      if (v18)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemWorkflowAction.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"workflowIdentifier"}];

  if (!v18)
  {
LABEL_4:
    v18 = @"com.apple.shortcuts";
    v21 = @"com.apple.shortcuts";
  }

LABEL_5:
  v22 = [v17 icon];
  v30.receiver = self;
  v30.super_class = WFConfiguredSystemWorkflowAction;
  v23 = [(WFConfiguredStaccatoAction *)&v30 initWithIdentifier:v16 associatedBundleIdentifier:v18 name:v15 previewIcon:v22 shortcutsMetadata:v19 colorScheme:v20];

  if (v23)
  {
    v24 = [v16 copy];
    workflowIdentifier = v23->_workflowIdentifier;
    v23->_workflowIdentifier = v24;

    objc_storeStrong(&v23->_workflowIcon, a5);
    v26 = v23;
  }

  return v23;
}

- (WFConfiguredSystemWorkflowAction)initWithWorkflow:(id)a3 shortcutsMetadata:(id)a4 colorScheme:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemWorkflowAction.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"workflowDescriptor"}];
  }

  v12 = [v9 name];
  v13 = [v9 identifier];
  v14 = -[WFWorkflowIcon initWithBackgroundColorValue:glyphCharacter:customImageData:]([WFWorkflowIcon alloc], "initWithBackgroundColorValue:glyphCharacter:customImageData:", [v9 color], objc_msgSend(v9, "glyphCharacter"), 0);
  v15 = [v9 associatedAppBundleIdentifier];
  v16 = [(WFConfiguredSystemWorkflowAction *)self initWithName:v12 workflowIdentifier:v13 workflowIcon:v14 associatedBundleIdentifier:v15 shortcutsMetadata:v10 colorScheme:v11];

  return v16;
}

- (WFConfiguredSystemWorkflowAction)initWithWorkflow:(id)a3 shortcutsMetadata:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFConfiguredSystemWorkflowAction.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"workflowDescriptor"}];
  }

  v9 = [(WFConfiguredSystemWorkflowAction *)self initWithWorkflow:v7 shortcutsMetadata:v8 colorScheme:0];
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