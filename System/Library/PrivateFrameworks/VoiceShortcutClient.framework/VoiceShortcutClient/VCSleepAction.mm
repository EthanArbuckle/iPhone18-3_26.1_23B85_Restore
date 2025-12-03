@interface VCSleepAction
+ (id)homeAccessoryActionWithTriggerActionSetsBuilder:(id)builder;
+ (id)identifierForWorkflowActionIdentifier:(id)identifier serializedParameters:(id)parameters;
+ (id)openAppActionWithBundleIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (VCSleepAction)initWithCoder:(id)coder;
- (VCSleepAction)initWithIdentifier:(id)identifier workflowActionIdentifier:(id)actionIdentifier sourceAppBundleIdentifier:(id)bundleIdentifier bundleIdentifierForDisplay:(id)display title:(id)title subtitle:(id)subtitle serializedParameters:(id)parameters shortcutAvailability:(unint64_t)self0;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VCSleepAction

- (VCSleepAction)initWithCoder:(id)coder
{
  v19[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workflowActionIdentifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppBundleIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifierForDisplay"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v9 = MEMORY[0x1E695DFD8];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v19[2] = objc_opt_class();
  v19[3] = objc_opt_class();
  v19[4] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
  v11 = [v9 setWithArray:v10];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"serializedParameters"];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcutAvailability"];

  v14 = -[VCSleepAction initWithIdentifier:workflowActionIdentifier:sourceAppBundleIdentifier:bundleIdentifierForDisplay:title:subtitle:serializedParameters:shortcutAvailability:](self, "initWithIdentifier:workflowActionIdentifier:sourceAppBundleIdentifier:bundleIdentifierForDisplay:title:subtitle:serializedParameters:shortcutAvailability:", v17, v4, v5, v6, v7, v8, v12, [v13 unsignedIntegerValue]);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(VCSleepAction *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  sourceAppBundleIdentifier = [(VCSleepAction *)self sourceAppBundleIdentifier];
  [coderCopy encodeObject:sourceAppBundleIdentifier forKey:@"sourceAppBundleIdentifier"];

  serializedParameters = [(VCSleepAction *)self serializedParameters];
  [coderCopy encodeObject:serializedParameters forKey:@"serializedParameters"];

  bundleIdentifierForDisplay = [(VCSleepAction *)self bundleIdentifierForDisplay];
  [coderCopy encodeObject:bundleIdentifierForDisplay forKey:@"bundleIdentifierForDisplay"];

  title = [(VCSleepAction *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(VCSleepAction *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  workflowActionIdentifier = [(VCSleepAction *)self workflowActionIdentifier];
  [coderCopy encodeObject:workflowActionIdentifier forKey:@"workflowActionIdentifier"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VCSleepAction shortcutAvailability](self, "shortcutAvailability")}];
  [coderCopy encodeObject:v12 forKey:@"shortcutAvailability"];
}

- (unint64_t)hash
{
  identifier = [(VCSleepAction *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      identifier = [(VCSleepAction *)self identifier];
      identifier2 = [(VCSleepAction *)v6 identifier];
      v9 = [identifier isEqualToString:identifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (VCSleepAction)initWithIdentifier:(id)identifier workflowActionIdentifier:(id)actionIdentifier sourceAppBundleIdentifier:(id)bundleIdentifier bundleIdentifierForDisplay:(id)display title:(id)title subtitle:(id)subtitle serializedParameters:(id)parameters shortcutAvailability:(unint64_t)self0
{
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  displayCopy = display;
  titleCopy = title;
  subtitleCopy = subtitle;
  parametersCopy = parameters;
  if (identifierCopy)
  {
    if (actionIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCSleepAction.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (actionIdentifierCopy)
    {
LABEL_3:
      if (bundleIdentifierCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCSleepAction.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"sourceAppBundleIdentifier"}];

      if (titleCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCSleepAction.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"workflowActionIdentifier"}];

  if (!bundleIdentifierCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (titleCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"VCSleepAction.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"title"}];

LABEL_5:
  v45.receiver = self;
  v45.super_class = VCSleepAction;
  v24 = [(VCSleepAction *)&v45 init];
  if (v24)
  {
    v25 = [identifierCopy copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v27 = [actionIdentifierCopy copy];
    workflowActionIdentifier = v24->_workflowActionIdentifier;
    v24->_workflowActionIdentifier = v27;

    v29 = [bundleIdentifierCopy copy];
    sourceAppBundleIdentifier = v24->_sourceAppBundleIdentifier;
    v24->_sourceAppBundleIdentifier = v29;

    v31 = [displayCopy copy];
    bundleIdentifierForDisplay = v24->_bundleIdentifierForDisplay;
    v24->_bundleIdentifierForDisplay = v31;

    v33 = [titleCopy copy];
    title = v24->_title;
    v24->_title = v33;

    v35 = [subtitleCopy copy];
    subtitle = v24->_subtitle;
    v24->_subtitle = v35;

    v37 = [parametersCopy copy];
    serializedParameters = v24->_serializedParameters;
    v24->_serializedParameters = v37;

    v24->_shortcutAvailability = availability;
    v24->_goodForSleep = availability != 0;
    v39 = v24;
  }

  return v24;
}

+ (id)homeAccessoryActionWithTriggerActionSetsBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [[VCSleepHomeAccessoryAction alloc] initWithTriggerActionSetsBuilder:builderCopy];

  return v4;
}

+ (id)identifierForWorkflowActionIdentifier:(id)identifier serializedParameters:(id)parameters
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  v7 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
  v8 = [v7 combine:identifierCopy];
  v9 = [v7 combineContentsOfPropertyListObject:parametersCopy];
  v10 = [v7 finalize];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%2llX", v10];

  return v11;
}

+ (id)openAppActionWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[VCSleepOpenAppAction alloc] initWithBundleIdentifier:identifierCopy];

  return v4;
}

@end