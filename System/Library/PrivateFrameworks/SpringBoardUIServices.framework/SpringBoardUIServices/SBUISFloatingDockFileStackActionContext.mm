@interface SBUISFloatingDockFileStackActionContext
- (NSArray)fromURLs;
- (SBUISFloatingDockFileStackActionContext)initWithActionContext:(id)context;
- (SBUISFloatingDockFileStackActionContext)initWithBSXPCCoder:(id)coder;
- (SBUISFloatingDockFileStackActionContext)initWithUUID:(id)d iconIdentifier:(id)identifier actionType:(unint64_t)type toIconURL:(id)l fromSecurityURLWrappers:(id)wrappers thumbnail:(id)thumbnail;
- (SBUISFloatingDockFileStackActionContext)initWithUUID:(id)d iconIdentifier:(id)identifier actionType:(unint64_t)type toIconURL:(id)l fromURLs:(id)ls;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SBUISFloatingDockFileStackActionContext

- (SBUISFloatingDockFileStackActionContext)initWithUUID:(id)d iconIdentifier:(id)identifier actionType:(unint64_t)type toIconURL:(id)l fromSecurityURLWrappers:(id)wrappers thumbnail:(id)thumbnail
{
  dCopy = d;
  identifierCopy = identifier;
  lCopy = l;
  wrappersCopy = wrappers;
  thumbnailCopy = thumbnail;
  v31.receiver = self;
  v31.super_class = SBUISFloatingDockFileStackActionContext;
  v19 = [(SBUISFloatingDockFileStackActionContext *)&v31 init];
  if (v19)
  {
    v20 = [dCopy copy];
    uuid = v19->_uuid;
    v19->_uuid = v20;

    v22 = [identifierCopy copy];
    iconIdentifier = v19->_iconIdentifier;
    v19->_iconIdentifier = v22;

    v19->_actionType = type;
    if (lCopy)
    {
      v24 = [lCopy copy];
      iconURL = v19->_iconURL;
      v19->_iconURL = v24;
    }

    if (wrappersCopy)
    {
      v26 = [MEMORY[0x1E695DEC8] arrayWithArray:wrappersCopy];
      fromSecurityURLWrappers = v19->_fromSecurityURLWrappers;
      v19->_fromSecurityURLWrappers = v26;
    }

    if (thumbnailCopy)
    {
      v28 = [MEMORY[0x1E695DEF0] dataWithData:thumbnailCopy];
      iconThumbnail = v19->_iconThumbnail;
      v19->_iconThumbnail = v28;
    }
  }

  return v19;
}

- (SBUISFloatingDockFileStackActionContext)initWithActionContext:(id)context
{
  contextCopy = context;
  uuid = [contextCopy uuid];
  iconIdentifier = [contextCopy iconIdentifier];
  actionType = [contextCopy actionType];
  iconURL = [contextCopy iconURL];
  fromSecurityURLWrappers = [contextCopy fromSecurityURLWrappers];

  v10 = [(SBUISFloatingDockFileStackActionContext *)self initWithUUID:uuid iconIdentifier:iconIdentifier actionType:actionType toIconURL:iconURL fromSecurityURLWrappers:fromSecurityURLWrappers];
  return v10;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBUISFloatingDockFileStackActionContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  uuid = [(SBUISFloatingDockFileStackActionContext *)self uuid];
  [v3 appendString:uuid withName:@"uuid"];

  iconIdentifier = [(SBUISFloatingDockFileStackActionContext *)self iconIdentifier];
  [v3 appendString:iconIdentifier withName:@"iconIdentifier"];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lul", -[SBUISFloatingDockFileStackActionContext actionType](self, "actionType")];
  [v3 appendString:v6 withName:@"actionType"];

  iconURL = [(SBUISFloatingDockFileStackActionContext *)self iconURL];

  if (iconURL)
  {
    iconURL2 = [(SBUISFloatingDockFileStackActionContext *)self iconURL];
    absoluteString = [iconURL2 absoluteString];
    [v3 appendString:absoluteString withName:@"iconURL"];
  }

  fromSecurityURLWrappers = [(SBUISFloatingDockFileStackActionContext *)self fromSecurityURLWrappers];

  if (fromSecurityURLWrappers)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    fromSecurityURLWrappers2 = [(SBUISFloatingDockFileStackActionContext *)self fromSecurityURLWrappers];
    v12 = [fromSecurityURLWrappers2 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(fromSecurityURLWrappers2);
          }

          v16 = [*(*(&v22 + 1) + 8 * i) url];
          absoluteString2 = [v16 absoluteString];
          [v3 appendString:absoluteString2 withName:@"fromSecurityURLWrapper"];
        }

        v13 = [fromSecurityURLWrappers2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  iconThumbnail = [(SBUISFloatingDockFileStackActionContext *)self iconThumbnail];

  if (iconThumbnail)
  {
    iconThumbnail2 = [(SBUISFloatingDockFileStackActionContext *)self iconThumbnail];
    v20 = [iconThumbnail2 description];
    [v3 appendString:v20 withName:@"iconThumbnail"];
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBUISFloatingDockFileStackActionContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(NSString *)self->_uuid copy];
  [coderCopy encodeObject:v4 forKey:@"kFloatingDockFileStackActionContextUUIDKey"];

  v5 = [(NSString *)self->_iconIdentifier copy];
  [coderCopy encodeObject:v5 forKey:@"kFloatingDockFileStackActionContextIconIdentifierKey"];

  [coderCopy encodeUInt64:self->_actionType forKey:@"kFloatingDockFileStackActionContextActionTypeKey"];
  iconURL = self->_iconURL;
  if (iconURL)
  {
    v7 = [(NSURL *)iconURL copy];
    [coderCopy encodeObject:v7 forKey:@"kFloatingDockFileStackActionContextIconURLKey"];
  }

  fromSecurityURLWrappers = self->_fromSecurityURLWrappers;
  if (fromSecurityURLWrappers)
  {
    [coderCopy encodeCollection:fromSecurityURLWrappers forKey:@"kFloatingDockFileStackActionContextFromSecurityURLWrappersKey"];
  }

  iconThumbnail = self->_iconThumbnail;
  v10 = coderCopy;
  if (iconThumbnail)
  {
    [coderCopy encodeObject:iconThumbnail forKey:@"kFloatingDockFileStackActionContextIconThumbnailKey"];
    v10 = coderCopy;
  }
}

- (SBUISFloatingDockFileStackActionContext)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeStringForKey:@"kFloatingDockFileStackActionContextUUIDKey"];
  v6 = [coderCopy decodeStringForKey:@"kFloatingDockFileStackActionContextIconIdentifierKey"];
  v7 = [coderCopy decodeUInt64ForKey:@"kFloatingDockFileStackActionContextActionTypeKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kFloatingDockFileStackActionContextIconURLKey"];
  v9 = objc_opt_class();
  v10 = [coderCopy decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"kFloatingDockFileStackActionContextFromSecurityURLWrappersKey"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kFloatingDockFileStackActionContextIconThumbnailKey"];

  v12 = [(SBUISFloatingDockFileStackActionContext *)self initWithUUID:v5 iconIdentifier:v6 actionType:v7 toIconURL:v8 fromSecurityURLWrappers:v10 thumbnail:v11];
  return v12;
}

- (SBUISFloatingDockFileStackActionContext)initWithUUID:(id)d iconIdentifier:(id)identifier actionType:(unint64_t)type toIconURL:(id)l fromURLs:(id)ls
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  lCopy = l;
  lsCopy = ls;
  if (lsCopy)
  {
    typeCopy = type;
    v26 = dCopy;
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = lsCopy;
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
          [array addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v19);
    }

    type = typeCopy;
    dCopy = v26;
  }

  else
  {
    array = 0;
  }

  v23 = [(SBUISFloatingDockFileStackActionContext *)self initWithUUID:dCopy iconIdentifier:identifierCopy actionType:type toIconURL:lCopy fromSecurityURLWrappers:array];

  return v23;
}

- (NSArray)fromURLs
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  fromSecurityURLWrappers = [(SBUISFloatingDockFileStackActionContext *)self fromSecurityURLWrappers];
  v5 = [fromSecurityURLWrappers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(fromSecurityURLWrappers);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) url];
        [array addObject:v9];
      }

      v6 = [fromSecurityURLWrappers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

@end