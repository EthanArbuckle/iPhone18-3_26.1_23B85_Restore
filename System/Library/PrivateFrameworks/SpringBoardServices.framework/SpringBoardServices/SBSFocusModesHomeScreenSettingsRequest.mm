@interface SBSFocusModesHomeScreenSettingsRequest
- (SBSFocusModesHomeScreenSettingsRequest)initWithBSXPCCoder:(id)coder;
- (SBSFocusModesHomeScreenSettingsRequest)initWithFocusModeIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SBSFocusModesHomeScreenSettingsRequest

- (SBSFocusModesHomeScreenSettingsRequest)initWithFocusModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBSFocusModesHomeScreenSettingsRequest;
  v5 = [(SBSFocusModesHomeScreenSettingsRequest *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    focusModeIdentifier = v5->_focusModeIdentifier;
    v5->_focusModeIdentifier = v6;

    v5->_snapshotScale = 0.5;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  focusModeIdentifier = self->_focusModeIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:focusModeIdentifier forKey:@"focusModeIdentifier"];
  [coderCopy encodeCollection:self->_listsToAdd forKey:@"listsToAdd"];
  [coderCopy encodeCollection:self->_listsToRemove forKey:@"listsToRemove"];
  [coderCopy encodeObject:self->_proactivePages forKey:@"proactivePages"];
  [coderCopy encodeDouble:@"snapshotDelay" forKey:self->_snapshotDelay];
  [coderCopy encodeBool:self->_appendExistingPages forKey:@"appendExistingPages"];
  [coderCopy encodeBool:self->_excludeWallpaper forKey:@"excludeWallpaper"];
  [coderCopy encodeDouble:@"snapshotScale" forKey:self->_snapshotScale];
}

- (SBSFocusModesHomeScreenSettingsRequest)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeStringForKey:@"focusModeIdentifier"];
  if (v5)
  {
    v6 = [(SBSFocusModesHomeScreenSettingsRequest *)self initWithFocusModeIdentifier:v5];
    v7 = objc_opt_class();
    v8 = [coderCopy decodeCollectionOfClass:v7 containingClass:objc_opt_class() forKey:@"listsToAdd"];
    [(SBSFocusModesHomeScreenSettingsRequest *)v6 setListsToAdd:v8];
    v9 = objc_opt_class();
    v10 = [coderCopy decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"listsToRemove"];
    [(SBSFocusModesHomeScreenSettingsRequest *)v6 setListsToRemove:v10];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v11 = getATXHomeScreenPageClass_softClass;
    v20 = getATXHomeScreenPageClass_softClass;
    if (!getATXHomeScreenPageClass_softClass)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __getATXHomeScreenPageClass_block_invoke;
      v16[3] = &unk_1E735F9F8;
      v16[4] = &v17;
      __getATXHomeScreenPageClass_block_invoke(v16);
      v11 = v18[3];
    }

    v12 = v11;
    _Block_object_dispose(&v17, 8);
    if (v11)
    {
      v13 = [coderCopy decodeCollectionOfClass:objc_opt_class() containingClass:v11 forKey:@"proactivePages"];
      [(SBSFocusModesHomeScreenSettingsRequest *)v6 setProactivePages:v13];
    }

    else
    {
      v13 = SBLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [SBSFocusModesHomeScreenSettingsRequest initWithBSXPCCoder:v13];
      }
    }

    [coderCopy decodeDoubleForKey:@"snapshotDelay"];
    [(SBSFocusModesHomeScreenSettingsRequest *)v6 setSnapshotDelay:?];
    -[SBSFocusModesHomeScreenSettingsRequest setAppendExistingPages:](v6, "setAppendExistingPages:", [coderCopy decodeBoolForKey:@"appendExistingPages"]);
    -[SBSFocusModesHomeScreenSettingsRequest setExcludeWallpaper:](v6, "setExcludeWallpaper:", [coderCopy decodeBoolForKey:@"excludeWallpaper"]);
    [coderCopy decodeDoubleForKey:@"snapshotScale"];
    [(SBSFocusModesHomeScreenSettingsRequest *)v6 setSnapshotScale:?];
    self = v6;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSFocusModesHomeScreenSettingsRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSFocusModesHomeScreenSettingsRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBSFocusModesHomeScreenSettingsRequest *)self succinctDescriptionBuilder];
  focusModeIdentifier = [(SBSFocusModesHomeScreenSettingsRequest *)self focusModeIdentifier];
  [succinctDescriptionBuilder appendString:focusModeIdentifier withName:@"focusModeIdentifier"];

  listsToAdd = [(SBSFocusModesHomeScreenSettingsRequest *)self listsToAdd];
  [succinctDescriptionBuilder appendArraySection:listsToAdd withName:@"listsToAdd" skipIfEmpty:0];

  listsToRemove = [(SBSFocusModesHomeScreenSettingsRequest *)self listsToRemove];
  [succinctDescriptionBuilder appendArraySection:listsToRemove withName:@"listsToRemove" skipIfEmpty:0];

  return succinctDescriptionBuilder;
}

@end