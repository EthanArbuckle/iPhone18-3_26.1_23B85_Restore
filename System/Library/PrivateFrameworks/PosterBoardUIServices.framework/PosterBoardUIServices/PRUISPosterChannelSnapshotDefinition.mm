@interface PRUISPosterChannelSnapshotDefinition
+ (id)_commonDefinitionWithIdentifier:(id)a3;
+ (id)galleryDefinitionForChannelIdentifier:(id)a3;
- (void)applySceneSettings:(id)a3;
@end

@implementation PRUISPosterChannelSnapshotDefinition

+ (id)galleryDefinitionForChannelIdentifier:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = PRPosterSnapshotDefinitionIdentifierChannelGallery;
  v6 = [a3 UUIDString];
  v7 = [v4 stringWithFormat:@"%@_%@", v5, v6];

  v8 = [a1 _commonDefinitionWithIdentifier:v7];

  return v8;
}

+ (id)_commonDefinitionWithIdentifier:(id)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___PRUISPosterChannelSnapshotDefinition;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v11, sel_alloc);
  v5 = [MEMORY[0x1E69C5318] floatingLevelSet];
  v12[0] = v5;
  v6 = [MEMORY[0x1E69C5318] allLevelsExceptFloating];
  v12[1] = v6;
  v7 = [MEMORY[0x1E69C5318] defaultLevelSet];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v9 = [v4 initWithUniqueIdentifier:v3 includeHeaderElements:0 includesComplications:0 levelSets:v8 isUnlocked:1 renderingContent:0 renderingMode:1 previewContent:1 boundingShape:-1];

  return v9;
}

- (void)applySceneSettings:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterSnapshotDefinition *)self uniqueIdentifier];
  [v4 pui_setPreviewIdentifier:v5];
}

@end