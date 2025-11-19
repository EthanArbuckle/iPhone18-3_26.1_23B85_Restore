@interface VCSleepAction
+ (id)homeAccessoryActionWithTriggerActionSetsBuilder:(id)a3;
+ (id)identifierForWorkflowActionIdentifier:(id)a3 serializedParameters:(id)a4;
+ (id)openAppActionWithBundleIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (VCSleepAction)initWithCoder:(id)a3;
- (VCSleepAction)initWithIdentifier:(id)a3 workflowActionIdentifier:(id)a4 sourceAppBundleIdentifier:(id)a5 bundleIdentifierForDisplay:(id)a6 title:(id)a7 subtitle:(id)a8 serializedParameters:(id)a9 shortcutAvailability:(unint64_t)a10;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VCSleepAction

- (VCSleepAction)initWithCoder:(id)a3
{
  v19[5] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"workflowActionIdentifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppBundleIdentifier"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifierForDisplay"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v9 = MEMORY[0x1E695DFD8];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v19[2] = objc_opt_class();
  v19[3] = objc_opt_class();
  v19[4] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
  v11 = [v9 setWithArray:v10];
  v12 = [v3 decodeObjectOfClasses:v11 forKey:@"serializedParameters"];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"shortcutAvailability"];

  v14 = -[VCSleepAction initWithIdentifier:workflowActionIdentifier:sourceAppBundleIdentifier:bundleIdentifierForDisplay:title:subtitle:serializedParameters:shortcutAvailability:](self, "initWithIdentifier:workflowActionIdentifier:sourceAppBundleIdentifier:bundleIdentifierForDisplay:title:subtitle:serializedParameters:shortcutAvailability:", v17, v4, v5, v6, v7, v8, v12, [v13 unsignedIntegerValue]);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VCSleepAction *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(VCSleepAction *)self sourceAppBundleIdentifier];
  [v4 encodeObject:v6 forKey:@"sourceAppBundleIdentifier"];

  v7 = [(VCSleepAction *)self serializedParameters];
  [v4 encodeObject:v7 forKey:@"serializedParameters"];

  v8 = [(VCSleepAction *)self bundleIdentifierForDisplay];
  [v4 encodeObject:v8 forKey:@"bundleIdentifierForDisplay"];

  v9 = [(VCSleepAction *)self title];
  [v4 encodeObject:v9 forKey:@"title"];

  v10 = [(VCSleepAction *)self subtitle];
  [v4 encodeObject:v10 forKey:@"subtitle"];

  v11 = [(VCSleepAction *)self workflowActionIdentifier];
  [v4 encodeObject:v11 forKey:@"workflowActionIdentifier"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VCSleepAction shortcutAvailability](self, "shortcutAvailability")}];
  [v4 encodeObject:v12 forKey:@"shortcutAvailability"];
}

- (unint64_t)hash
{
  v2 = [(VCSleepAction *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(VCSleepAction *)self identifier];
      v8 = [(VCSleepAction *)v6 identifier];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (VCSleepAction)initWithIdentifier:(id)a3 workflowActionIdentifier:(id)a4 sourceAppBundleIdentifier:(id)a5 bundleIdentifierForDisplay:(id)a6 title:(id)a7 subtitle:(id)a8 serializedParameters:(id)a9 shortcutAvailability:(unint64_t)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"VCSleepAction.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v18)
    {
LABEL_3:
      if (v19)
      {
        goto LABEL_4;
      }

LABEL_10:
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      [v43 handleFailureInMethod:a2 object:self file:@"VCSleepAction.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"sourceAppBundleIdentifier"}];

      if (v21)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v42 = [MEMORY[0x1E696AAA8] currentHandler];
  [v42 handleFailureInMethod:a2 object:self file:@"VCSleepAction.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"workflowActionIdentifier"}];

  if (!v19)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v21)
  {
    goto LABEL_5;
  }

LABEL_11:
  v44 = [MEMORY[0x1E696AAA8] currentHandler];
  [v44 handleFailureInMethod:a2 object:self file:@"VCSleepAction.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"title"}];

LABEL_5:
  v45.receiver = self;
  v45.super_class = VCSleepAction;
  v24 = [(VCSleepAction *)&v45 init];
  if (v24)
  {
    v25 = [v17 copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [v18 copy];
    workflowActionIdentifier = v24->_workflowActionIdentifier;
    v24->_workflowActionIdentifier = v27;

    v29 = [v19 copy];
    sourceAppBundleIdentifier = v24->_sourceAppBundleIdentifier;
    v24->_sourceAppBundleIdentifier = v29;

    v31 = [v20 copy];
    bundleIdentifierForDisplay = v24->_bundleIdentifierForDisplay;
    v24->_bundleIdentifierForDisplay = v31;

    v33 = [v21 copy];
    title = v24->_title;
    v24->_title = v33;

    v35 = [v22 copy];
    subtitle = v24->_subtitle;
    v24->_subtitle = v35;

    v37 = [v23 copy];
    serializedParameters = v24->_serializedParameters;
    v24->_serializedParameters = v37;

    v24->_shortcutAvailability = a10;
    v24->_goodForSleep = a10 != 0;
    v39 = v24;
  }

  return v24;
}

+ (id)homeAccessoryActionWithTriggerActionSetsBuilder:(id)a3
{
  v3 = a3;
  v4 = [[VCSleepHomeAccessoryAction alloc] initWithTriggerActionSetsBuilder:v3];

  return v4;
}

+ (id)identifierForWorkflowActionIdentifier:(id)a3 serializedParameters:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
  v8 = [v7 combine:v5];
  v9 = [v7 combineContentsOfPropertyListObject:v6];
  v10 = [v7 finalize];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%2llX", v10];

  return v11;
}

+ (id)openAppActionWithBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[VCSleepOpenAppAction alloc] initWithBundleIdentifier:v3];

  return v4;
}

@end