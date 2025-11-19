@interface _PRAmbientPosterSnapshotDefinition
- (BOOL)isEqualToDefinition:(id)a3;
- (_PRAmbientPosterSnapshotDefinition)initWithUniqueIdentifier:(id)a3 ambientPresented:(BOOL)a4 ambientDisplayStyle:(int64_t)a5 renderingContent:(int64_t)a6 renderingMode:(int64_t)a7 previewContent:(unint64_t)a8 idealizedTime:(BOOL)a9 isIdle:(BOOL)a10;
- (void)applySceneSettings:(id)a3;
@end

@implementation _PRAmbientPosterSnapshotDefinition

- (_PRAmbientPosterSnapshotDefinition)initWithUniqueIdentifier:(id)a3 ambientPresented:(BOOL)a4 ambientDisplayStyle:(int64_t)a5 renderingContent:(int64_t)a6 renderingMode:(int64_t)a7 previewContent:(unint64_t)a8 idealizedTime:(BOOL)a9 isIdle:(BOOL)a10
{
  v16 = a3;
  v17 = PRPosterLevelSetsForPRSPosterSnapshotDefinitionLayerSet();
  v21.receiver = self;
  v21.super_class = _PRAmbientPosterSnapshotDefinition;
  HIBYTE(v20) = a10;
  LOBYTE(v20) = a9;
  v18 = [(PRPosterSnapshotDefinition *)&v21 initWithUniqueIdentifier:v16 includeHeaderElements:0 includesComplications:0 levelSets:v17 isUnlocked:1 renderingContent:a6 renderingMode:a7 previewContent:a8 boundingShape:-1 showingIdealizedTime:v20 isIdle:?];

  if (v18)
  {
    v18->_ambientPresented = a4;
    v18->_ambientDisplayStyle = a5;
  }

  return v18;
}

- (void)applySceneSettings:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _PRAmbientPosterSnapshotDefinition;
  [(PRPosterSnapshotDefinition *)&v5 applySceneSettings:v4];
  if (objc_opt_respondsToSelector())
  {
    [v4 setAmbientDisplayStyle:self->_ambientDisplayStyle == 2];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setAmbientPresented:self->_ambientPresented];
  }
}

- (BOOL)isEqualToDefinition:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _PRAmbientPosterSnapshotDefinition;
    if ([(PRPosterSnapshotDefinition *)&v11 isEqualToDefinition:v4]&& (objc_opt_self(), v5 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0) && (v7 = [(_PRAmbientPosterSnapshotDefinition *)self ambientDisplayStyle], v7 == [(_PRAmbientPosterSnapshotDefinition *)v4 ambientDisplayStyle]))
    {
      v8 = [(_PRAmbientPosterSnapshotDefinition *)self isAmbientPresented];
      v9 = v8 ^ [(_PRAmbientPosterSnapshotDefinition *)v4 isAmbientPresented]^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

@end