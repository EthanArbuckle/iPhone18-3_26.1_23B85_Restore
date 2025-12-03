@interface _PRAmbientPosterSnapshotDefinition
- (BOOL)isEqualToDefinition:(id)definition;
- (_PRAmbientPosterSnapshotDefinition)initWithUniqueIdentifier:(id)identifier ambientPresented:(BOOL)presented ambientDisplayStyle:(int64_t)style renderingContent:(int64_t)content renderingMode:(int64_t)mode previewContent:(unint64_t)previewContent idealizedTime:(BOOL)time isIdle:(BOOL)self0;
- (void)applySceneSettings:(id)settings;
@end

@implementation _PRAmbientPosterSnapshotDefinition

- (_PRAmbientPosterSnapshotDefinition)initWithUniqueIdentifier:(id)identifier ambientPresented:(BOOL)presented ambientDisplayStyle:(int64_t)style renderingContent:(int64_t)content renderingMode:(int64_t)mode previewContent:(unint64_t)previewContent idealizedTime:(BOOL)time isIdle:(BOOL)self0
{
  identifierCopy = identifier;
  v17 = PRPosterLevelSetsForPRSPosterSnapshotDefinitionLayerSet();
  v21.receiver = self;
  v21.super_class = _PRAmbientPosterSnapshotDefinition;
  HIBYTE(v20) = idle;
  LOBYTE(v20) = time;
  v18 = [(PRPosterSnapshotDefinition *)&v21 initWithUniqueIdentifier:identifierCopy includeHeaderElements:0 includesComplications:0 levelSets:v17 isUnlocked:1 renderingContent:content renderingMode:mode previewContent:previewContent boundingShape:-1 showingIdealizedTime:v20 isIdle:?];

  if (v18)
  {
    v18->_ambientPresented = presented;
    v18->_ambientDisplayStyle = style;
  }

  return v18;
}

- (void)applySceneSettings:(id)settings
{
  settingsCopy = settings;
  v5.receiver = self;
  v5.super_class = _PRAmbientPosterSnapshotDefinition;
  [(PRPosterSnapshotDefinition *)&v5 applySceneSettings:settingsCopy];
  if (objc_opt_respondsToSelector())
  {
    [settingsCopy setAmbientDisplayStyle:self->_ambientDisplayStyle == 2];
  }

  if (objc_opt_respondsToSelector())
  {
    [settingsCopy setAmbientPresented:self->_ambientPresented];
  }
}

- (BOOL)isEqualToDefinition:(id)definition
{
  definitionCopy = definition;
  if (definitionCopy == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _PRAmbientPosterSnapshotDefinition;
    if ([(PRPosterSnapshotDefinition *)&v11 isEqualToDefinition:definitionCopy]&& (objc_opt_self(), v5 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0) && (v7 = [(_PRAmbientPosterSnapshotDefinition *)self ambientDisplayStyle], v7 == [(_PRAmbientPosterSnapshotDefinition *)definitionCopy ambientDisplayStyle]))
    {
      isAmbientPresented = [(_PRAmbientPosterSnapshotDefinition *)self isAmbientPresented];
      v9 = isAmbientPresented ^ [(_PRAmbientPosterSnapshotDefinition *)definitionCopy isAmbientPresented]^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

@end