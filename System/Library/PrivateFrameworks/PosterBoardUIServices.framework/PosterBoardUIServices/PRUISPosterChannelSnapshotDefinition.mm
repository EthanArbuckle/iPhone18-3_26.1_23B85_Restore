@interface PRUISPosterChannelSnapshotDefinition
+ (id)_commonDefinitionWithIdentifier:(id)identifier;
+ (id)galleryDefinitionForChannelIdentifier:(id)identifier;
- (void)applySceneSettings:(id)settings;
@end

@implementation PRUISPosterChannelSnapshotDefinition

+ (id)galleryDefinitionForChannelIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = PRPosterSnapshotDefinitionIdentifierChannelGallery;
  uUIDString = [identifier UUIDString];
  v7 = [v4 stringWithFormat:@"%@_%@", v5, uUIDString];

  v8 = [self _commonDefinitionWithIdentifier:v7];

  return v8;
}

+ (id)_commonDefinitionWithIdentifier:(id)identifier
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___PRUISPosterChannelSnapshotDefinition;
  identifierCopy = identifier;
  v4 = objc_msgSendSuper2(&v11, sel_alloc);
  floatingLevelSet = [MEMORY[0x1E69C5318] floatingLevelSet];
  v12[0] = floatingLevelSet;
  allLevelsExceptFloating = [MEMORY[0x1E69C5318] allLevelsExceptFloating];
  v12[1] = allLevelsExceptFloating;
  defaultLevelSet = [MEMORY[0x1E69C5318] defaultLevelSet];
  v12[2] = defaultLevelSet;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v9 = [v4 initWithUniqueIdentifier:identifierCopy includeHeaderElements:0 includesComplications:0 levelSets:v8 isUnlocked:1 renderingContent:0 renderingMode:1 previewContent:1 boundingShape:-1];

  return v9;
}

- (void)applySceneSettings:(id)settings
{
  settingsCopy = settings;
  uniqueIdentifier = [(PRPosterSnapshotDefinition *)self uniqueIdentifier];
  [settingsCopy pui_setPreviewIdentifier:uniqueIdentifier];
}

@end