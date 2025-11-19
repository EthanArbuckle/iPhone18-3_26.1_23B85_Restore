@interface WFLinkActionRunDescriptor
- (WFLinkActionRunDescriptor)initWithCoder:(id)a3;
- (WFLinkActionRunDescriptor)initWithIdentifier:(id)a3 name:(id)a4 action:(id)a5 metadata:(id)a6 isAutoShortcut:(BOOL)a7;
- (id)kind;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(WFLinkActionRunDescriptor *)self identifier];
  [v8 encodeObject:v4 forKey:@"identifier"];

  v5 = [(WFLinkActionRunDescriptor *)self action];
  [v8 encodeObject:v5 forKey:@"action"];

  v6 = [(WFLinkActionRunDescriptor *)self metadata];
  [v8 encodeObject:v6 forKey:@"metadata"];

  v7 = [(WFLinkActionRunDescriptor *)self name];
  [v8 encodeObject:v7 forKey:@"name"];

  [v8 encodeBool:-[WFLinkActionRunDescriptor isAutoShortcut](self forKey:{"isAutoShortcut"), @"isAutoShortcut"}];
}

- (WFLinkActionRunDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
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
  v7 = [v4 decodeObjectOfClass:v5 forKey:@"identifier"];
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
  v10 = [v4 decodeObjectOfClass:v8 forKey:@"action"];
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
  v13 = [v4 decodeObjectOfClass:v11 forKey:@"metadata"];
  v14 = v13;
  v15 = 0;
  if (v10 && v13)
  {
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    self = -[WFLinkActionRunDescriptor initWithIdentifier:name:action:metadata:isAutoShortcut:](self, "initWithIdentifier:name:action:metadata:isAutoShortcut:", v7, v16, v10, v14, [v4 decodeBoolForKey:@"isAutoShortcut"]);

    v15 = self;
  }

  return v15;
}

- (WFLinkActionRunDescriptor)initWithIdentifier:(id)a3 name:(id)a4 action:(id)a5 metadata:(id)a6 isAutoShortcut:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v13)
  {
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_8:
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_9:
  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"WFWorkflowRunDescriptors.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"metadata"}];

LABEL_4:
  v25.receiver = self;
  v25.super_class = WFLinkActionRunDescriptor;
  v17 = [(WFLinkActionRunDescriptor *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, a3);
    objc_storeStrong(&v18->_action, a5);
    objc_storeStrong(&v18->_metadata, a6);
    objc_storeStrong(&v18->_name, a4);
    v18->_isAutoShortcut = a7;
    v19 = v18;
  }

  return v18;
}

@end