@interface SBUISFloatingDockFileStackActionContext
- (NSArray)fromURLs;
- (SBUISFloatingDockFileStackActionContext)initWithActionContext:(id)a3;
- (SBUISFloatingDockFileStackActionContext)initWithBSXPCCoder:(id)a3;
- (SBUISFloatingDockFileStackActionContext)initWithUUID:(id)a3 iconIdentifier:(id)a4 actionType:(unint64_t)a5 toIconURL:(id)a6 fromSecurityURLWrappers:(id)a7 thumbnail:(id)a8;
- (SBUISFloatingDockFileStackActionContext)initWithUUID:(id)a3 iconIdentifier:(id)a4 actionType:(unint64_t)a5 toIconURL:(id)a6 fromURLs:(id)a7;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SBUISFloatingDockFileStackActionContext

- (SBUISFloatingDockFileStackActionContext)initWithUUID:(id)a3 iconIdentifier:(id)a4 actionType:(unint64_t)a5 toIconURL:(id)a6 fromSecurityURLWrappers:(id)a7 thumbnail:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v31.receiver = self;
  v31.super_class = SBUISFloatingDockFileStackActionContext;
  v19 = [(SBUISFloatingDockFileStackActionContext *)&v31 init];
  if (v19)
  {
    v20 = [v14 copy];
    uuid = v19->_uuid;
    v19->_uuid = v20;

    v22 = [v15 copy];
    iconIdentifier = v19->_iconIdentifier;
    v19->_iconIdentifier = v22;

    v19->_actionType = a5;
    if (v16)
    {
      v24 = [v16 copy];
      iconURL = v19->_iconURL;
      v19->_iconURL = v24;
    }

    if (v17)
    {
      v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
      fromSecurityURLWrappers = v19->_fromSecurityURLWrappers;
      v19->_fromSecurityURLWrappers = v26;
    }

    if (v18)
    {
      v28 = [MEMORY[0x1E695DEF0] dataWithData:v18];
      iconThumbnail = v19->_iconThumbnail;
      v19->_iconThumbnail = v28;
    }
  }

  return v19;
}

- (SBUISFloatingDockFileStackActionContext)initWithActionContext:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v4 iconIdentifier];
  v7 = [v4 actionType];
  v8 = [v4 iconURL];
  v9 = [v4 fromSecurityURLWrappers];

  v10 = [(SBUISFloatingDockFileStackActionContext *)self initWithUUID:v5 iconIdentifier:v6 actionType:v7 toIconURL:v8 fromSecurityURLWrappers:v9];
  return v10;
}

- (id)succinctDescription
{
  v2 = [(SBUISFloatingDockFileStackActionContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(SBUISFloatingDockFileStackActionContext *)self uuid];
  [v3 appendString:v4 withName:@"uuid"];

  v5 = [(SBUISFloatingDockFileStackActionContext *)self iconIdentifier];
  [v3 appendString:v5 withName:@"iconIdentifier"];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lul", -[SBUISFloatingDockFileStackActionContext actionType](self, "actionType")];
  [v3 appendString:v6 withName:@"actionType"];

  v7 = [(SBUISFloatingDockFileStackActionContext *)self iconURL];

  if (v7)
  {
    v8 = [(SBUISFloatingDockFileStackActionContext *)self iconURL];
    v9 = [v8 absoluteString];
    [v3 appendString:v9 withName:@"iconURL"];
  }

  v10 = [(SBUISFloatingDockFileStackActionContext *)self fromSecurityURLWrappers];

  if (v10)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [(SBUISFloatingDockFileStackActionContext *)self fromSecurityURLWrappers];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v22 + 1) + 8 * i) url];
          v17 = [v16 absoluteString];
          [v3 appendString:v17 withName:@"fromSecurityURLWrapper"];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  v18 = [(SBUISFloatingDockFileStackActionContext *)self iconThumbnail];

  if (v18)
  {
    v19 = [(SBUISFloatingDockFileStackActionContext *)self iconThumbnail];
    v20 = [v19 description];
    [v3 appendString:v20 withName:@"iconThumbnail"];
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBUISFloatingDockFileStackActionContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v11 = a3;
  v4 = [(NSString *)self->_uuid copy];
  [v11 encodeObject:v4 forKey:@"kFloatingDockFileStackActionContextUUIDKey"];

  v5 = [(NSString *)self->_iconIdentifier copy];
  [v11 encodeObject:v5 forKey:@"kFloatingDockFileStackActionContextIconIdentifierKey"];

  [v11 encodeUInt64:self->_actionType forKey:@"kFloatingDockFileStackActionContextActionTypeKey"];
  iconURL = self->_iconURL;
  if (iconURL)
  {
    v7 = [(NSURL *)iconURL copy];
    [v11 encodeObject:v7 forKey:@"kFloatingDockFileStackActionContextIconURLKey"];
  }

  fromSecurityURLWrappers = self->_fromSecurityURLWrappers;
  if (fromSecurityURLWrappers)
  {
    [v11 encodeCollection:fromSecurityURLWrappers forKey:@"kFloatingDockFileStackActionContextFromSecurityURLWrappersKey"];
  }

  iconThumbnail = self->_iconThumbnail;
  v10 = v11;
  if (iconThumbnail)
  {
    [v11 encodeObject:iconThumbnail forKey:@"kFloatingDockFileStackActionContextIconThumbnailKey"];
    v10 = v11;
  }
}

- (SBUISFloatingDockFileStackActionContext)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeStringForKey:@"kFloatingDockFileStackActionContextUUIDKey"];
  v6 = [v4 decodeStringForKey:@"kFloatingDockFileStackActionContextIconIdentifierKey"];
  v7 = [v4 decodeUInt64ForKey:@"kFloatingDockFileStackActionContextActionTypeKey"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kFloatingDockFileStackActionContextIconURLKey"];
  v9 = objc_opt_class();
  v10 = [v4 decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"kFloatingDockFileStackActionContextFromSecurityURLWrappersKey"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kFloatingDockFileStackActionContextIconThumbnailKey"];

  v12 = [(SBUISFloatingDockFileStackActionContext *)self initWithUUID:v5 iconIdentifier:v6 actionType:v7 toIconURL:v8 fromSecurityURLWrappers:v10 thumbnail:v11];
  return v12;
}

- (SBUISFloatingDockFileStackActionContext)initWithUUID:(id)a3 iconIdentifier:(id)a4 actionType:(unint64_t)a5 toIconURL:(id)a6 fromURLs:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    v25 = a5;
    v26 = v12;
    v16 = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:*(*(&v27 + 1) + 8 * i)];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v19);
    }

    a5 = v25;
    v12 = v26;
  }

  else
  {
    v16 = 0;
  }

  v23 = [(SBUISFloatingDockFileStackActionContext *)self initWithUUID:v12 iconIdentifier:v13 actionType:a5 toIconURL:v14 fromSecurityURLWrappers:v16];

  return v23;
}

- (NSArray)fromURLs
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(SBUISFloatingDockFileStackActionContext *)self fromSecurityURLWrappers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) url];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end