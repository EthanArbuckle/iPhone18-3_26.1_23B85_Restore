@interface SBSFocusModesHomeScreenSettingsRequest
- (SBSFocusModesHomeScreenSettingsRequest)initWithBSXPCCoder:(id)a3;
- (SBSFocusModesHomeScreenSettingsRequest)initWithFocusModeIdentifier:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SBSFocusModesHomeScreenSettingsRequest

- (SBSFocusModesHomeScreenSettingsRequest)initWithFocusModeIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSFocusModesHomeScreenSettingsRequest;
  v5 = [(SBSFocusModesHomeScreenSettingsRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    focusModeIdentifier = v5->_focusModeIdentifier;
    v5->_focusModeIdentifier = v6;

    v5->_snapshotScale = 0.5;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  focusModeIdentifier = self->_focusModeIdentifier;
  v5 = a3;
  [v5 encodeObject:focusModeIdentifier forKey:@"focusModeIdentifier"];
  [v5 encodeCollection:self->_listsToAdd forKey:@"listsToAdd"];
  [v5 encodeCollection:self->_listsToRemove forKey:@"listsToRemove"];
  [v5 encodeObject:self->_proactivePages forKey:@"proactivePages"];
  [v5 encodeDouble:@"snapshotDelay" forKey:self->_snapshotDelay];
  [v5 encodeBool:self->_appendExistingPages forKey:@"appendExistingPages"];
  [v5 encodeBool:self->_excludeWallpaper forKey:@"excludeWallpaper"];
  [v5 encodeDouble:@"snapshotScale" forKey:self->_snapshotScale];
}

- (SBSFocusModesHomeScreenSettingsRequest)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeStringForKey:@"focusModeIdentifier"];
  if (v5)
  {
    v6 = [(SBSFocusModesHomeScreenSettingsRequest *)self initWithFocusModeIdentifier:v5];
    v7 = objc_opt_class();
    v8 = [v4 decodeCollectionOfClass:v7 containingClass:objc_opt_class() forKey:@"listsToAdd"];
    [(SBSFocusModesHomeScreenSettingsRequest *)v6 setListsToAdd:v8];
    v9 = objc_opt_class();
    v10 = [v4 decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"listsToRemove"];
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
      v13 = [v4 decodeCollectionOfClass:objc_opt_class() containingClass:v11 forKey:@"proactivePages"];
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

    [v4 decodeDoubleForKey:@"snapshotDelay"];
    [(SBSFocusModesHomeScreenSettingsRequest *)v6 setSnapshotDelay:?];
    -[SBSFocusModesHomeScreenSettingsRequest setAppendExistingPages:](v6, "setAppendExistingPages:", [v4 decodeBoolForKey:@"appendExistingPages"]);
    -[SBSFocusModesHomeScreenSettingsRequest setExcludeWallpaper:](v6, "setExcludeWallpaper:", [v4 decodeBoolForKey:@"excludeWallpaper"]);
    [v4 decodeDoubleForKey:@"snapshotScale"];
    [(SBSFocusModesHomeScreenSettingsRequest *)v6 setSnapshotScale:?];
    self = v6;

    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)succinctDescription
{
  v2 = [(SBSFocusModesHomeScreenSettingsRequest *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSFocusModesHomeScreenSettingsRequest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBSFocusModesHomeScreenSettingsRequest *)self succinctDescriptionBuilder];
  v5 = [(SBSFocusModesHomeScreenSettingsRequest *)self focusModeIdentifier];
  [v4 appendString:v5 withName:@"focusModeIdentifier"];

  v6 = [(SBSFocusModesHomeScreenSettingsRequest *)self listsToAdd];
  [v4 appendArraySection:v6 withName:@"listsToAdd" skipIfEmpty:0];

  v7 = [(SBSFocusModesHomeScreenSettingsRequest *)self listsToRemove];
  [v4 appendArraySection:v7 withName:@"listsToRemove" skipIfEmpty:0];

  return v4;
}

@end