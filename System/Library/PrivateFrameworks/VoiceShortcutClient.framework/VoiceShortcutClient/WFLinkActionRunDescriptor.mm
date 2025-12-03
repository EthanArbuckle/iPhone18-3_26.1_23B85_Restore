@interface WFLinkActionRunDescriptor
- (WFLinkActionRunDescriptor)initWithCoder:(id)coder;
- (WFLinkActionRunDescriptor)initWithIdentifier:(id)identifier name:(id)name action:(id)action metadata:(id)metadata isAutoShortcut:(BOOL)shortcut;
- (id)kind;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLinkActionRunDescriptor

- (id)kind
{
  if ([(WFLinkActionRunDescriptor *)self isAutoShortcut])
  {
    v2 = @"AppShortcut";
  }

  else
  {
    v2 = @"AppIntent";
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFLinkActionRunDescriptor *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  action = [(WFLinkActionRunDescriptor *)self action];
  [coderCopy encodeObject:action forKey:@"action"];

  metadata = [(WFLinkActionRunDescriptor *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];

  name = [(WFLinkActionRunDescriptor *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeBool:-[WFLinkActionRunDescriptor isAutoShortcut](self forKey:{"isAutoShortcut"), @"isAutoShortcut"}];
}

- (WFLinkActionRunDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v5 = getLNFullyQualifiedActionIdentifierClass_softClass;
  v26 = getLNFullyQualifiedActionIdentifierClass_softClass;
  if (!getLNFullyQualifiedActionIdentifierClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getLNFullyQualifiedActionIdentifierClass_block_invoke;
    v21 = &unk_1E7B02C60;
    v22 = &v23;
    __getLNFullyQualifiedActionIdentifierClass_block_invoke(&v18);
    v5 = v24[3];
  }

  v6 = v5;
  _Block_object_dispose(&v23, 8);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:@"identifier"];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v8 = getLNActionClass_softClass;
  v26 = getLNActionClass_softClass;
  if (!getLNActionClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getLNActionClass_block_invoke;
    v21 = &unk_1E7B02C60;
    v22 = &v23;
    __getLNActionClass_block_invoke(&v18);
    v8 = v24[3];
  }

  v9 = v8;
  _Block_object_dispose(&v23, 8);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:@"action"];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v11 = getLNActionMetadataClass_softClass;
  v26 = getLNActionMetadataClass_softClass;
  if (!getLNActionMetadataClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getLNActionMetadataClass_block_invoke;
    v21 = &unk_1E7B02C60;
    v22 = &v23;
    __getLNActionMetadataClass_block_invoke(&v18);
    v11 = v24[3];
  }

  v12 = v11;
  _Block_object_dispose(&v23, 8);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:@"metadata"];
  v14 = v13;
  selfCopy = 0;
  if (v10 && v13)
  {
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    self = -[WFLinkActionRunDescriptor initWithIdentifier:name:action:metadata:isAutoShortcut:](self, "initWithIdentifier:name:action:metadata:isAutoShortcut:", v7, v16, v10, v14, [coderCopy decodeBoolForKey:@"isAutoShortcut"]);

    selfCopy = self;
  }

  return selfCopy;
}

- (WFLinkActionRunDescriptor)initWithIdentifier:(id)identifier name:(id)name action:(id)action metadata:(id)metadata isAutoShortcut:(BOOL)shortcut
{
  identifierCopy = identifier;
  nameCopy = name;
  actionCopy = action;
  metadataCopy = metadata;
  if (identifierCopy)
  {
    if (actionCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (metadataCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!actionCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (metadataCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"metadata"}];

LABEL_4:
  v25.receiver = self;
  v25.super_class = WFLinkActionRunDescriptor;
  v17 = [(WFLinkActionRunDescriptor *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(&v18->_action, action);
    objc_storeStrong(&v18->_metadata, metadata);
    objc_storeStrong(&v18->_name, name);
    v18->_isAutoShortcut = shortcut;
    v19 = v18;
  }

  return v18;
}

@end