@interface PBFPosterSnapshotDefinition
+ (id)defaultConfigurationDefinitions;
+ (id)defaultPreviewDefinitionForPreview:(id)a3;
+ (id)defaultPreviewDefinitions;
+ (id)editingConfirmationDefinition;
+ (id)gallerySnapshotDefinition;
+ (id)gallerySnapshotKeyFrameDefinition;
+ (id)gallerySnapshotWithComplicationsDefinition;
+ (id)osMigrationDefinition;
+ (id)switcherFloatingLayerSnapshotDefinition;
+ (id)switcherSnapshotDefinition;
+ (id)switcherUnlockedSnapshotDefinition;
- (PBFPosterSnapshotDefinition)initWithUniqueIdentifier:(id)a3;
- (id)description;
@end

@implementation PBFPosterSnapshotDefinition

+ (id)gallerySnapshotDefinition
{
  if (gallerySnapshotDefinition_onceToken != -1)
  {
    +[PBFPosterSnapshotDefinition gallerySnapshotDefinition];
  }

  v3 = gallerySnapshotDefinition_gallerySnapshotDefinition;

  return v3;
}

void __56__PBFPosterSnapshotDefinition_gallerySnapshotDefinition__block_invoke()
{
  v0 = [PBFPosterSnapshotDefinition alloc];
  v1 = [(PBFPosterSnapshotDefinition *)v0 initWithUniqueIdentifier:PRPosterSnapshotDefinitionIdentifierGallery];
  v2 = gallerySnapshotDefinition_gallerySnapshotDefinition;
  gallerySnapshotDefinition_gallerySnapshotDefinition = v1;
}

+ (id)gallerySnapshotKeyFrameDefinition
{
  if (gallerySnapshotKeyFrameDefinition_onceToken != -1)
  {
    +[PBFPosterSnapshotDefinition gallerySnapshotKeyFrameDefinition];
  }

  v3 = gallerySnapshotKeyFrameDefinition_gallerySnapshotKeyFrameDefinition;

  return v3;
}

void __64__PBFPosterSnapshotDefinition_gallerySnapshotKeyFrameDefinition__block_invoke()
{
  v0 = [PBFPosterSnapshotDefinition alloc];
  v1 = [(PBFPosterSnapshotDefinition *)v0 initWithUniqueIdentifier:PRPosterSnapshotDefinitionIdentifierGalleryKeyFrame];
  v2 = gallerySnapshotKeyFrameDefinition_gallerySnapshotKeyFrameDefinition;
  gallerySnapshotKeyFrameDefinition_gallerySnapshotKeyFrameDefinition = v1;
}

+ (id)gallerySnapshotWithComplicationsDefinition
{
  if (gallerySnapshotWithComplicationsDefinition_onceToken != -1)
  {
    +[PBFPosterSnapshotDefinition gallerySnapshotWithComplicationsDefinition];
  }

  v3 = gallerySnapshotWithComplicationsDefinition_gallerySnapshotDefinition;

  return v3;
}

void __73__PBFPosterSnapshotDefinition_gallerySnapshotWithComplicationsDefinition__block_invoke()
{
  v0 = [PBFPosterSnapshotDefinition alloc];
  v1 = [(PBFPosterSnapshotDefinition *)v0 initWithUniqueIdentifier:PRPosterSnapshotDefinitionIdentifierGalleryWithComplications];
  v2 = gallerySnapshotWithComplicationsDefinition_gallerySnapshotDefinition;
  gallerySnapshotWithComplicationsDefinition_gallerySnapshotDefinition = v1;
}

+ (id)switcherSnapshotDefinition
{
  if (switcherSnapshotDefinition_onceToken != -1)
  {
    +[PBFPosterSnapshotDefinition switcherSnapshotDefinition];
  }

  v3 = switcherSnapshotDefinition_switcherSnapshotDefinition;

  return v3;
}

void __57__PBFPosterSnapshotDefinition_switcherSnapshotDefinition__block_invoke()
{
  v0 = [PBFPosterSnapshotDefinition alloc];
  v1 = [(PBFPosterSnapshotDefinition *)v0 initWithUniqueIdentifier:PRPosterSnapshotDefinitionIdentifierSwitcher];
  v2 = switcherSnapshotDefinition_switcherSnapshotDefinition;
  switcherSnapshotDefinition_switcherSnapshotDefinition = v1;
}

+ (id)switcherUnlockedSnapshotDefinition
{
  if (switcherUnlockedSnapshotDefinition_onceToken != -1)
  {
    +[PBFPosterSnapshotDefinition switcherUnlockedSnapshotDefinition];
  }

  v3 = switcherUnlockedSnapshotDefinition_switcherUnlockedSnapshotDefinition;

  return v3;
}

void __65__PBFPosterSnapshotDefinition_switcherUnlockedSnapshotDefinition__block_invoke()
{
  v0 = [PBFPosterSnapshotDefinition alloc];
  v1 = [(PBFPosterSnapshotDefinition *)v0 initWithUniqueIdentifier:PRPosterSnapshotDefinitionIdentifierSwitcherUnlocked];
  v2 = switcherUnlockedSnapshotDefinition_switcherUnlockedSnapshotDefinition;
  switcherUnlockedSnapshotDefinition_switcherUnlockedSnapshotDefinition = v1;
}

+ (id)switcherFloatingLayerSnapshotDefinition
{
  if (switcherFloatingLayerSnapshotDefinition_onceToken != -1)
  {
    +[PBFPosterSnapshotDefinition switcherFloatingLayerSnapshotDefinition];
  }

  v3 = switcherFloatingLayerSnapshotDefinition_switcherFloatingLayerSnapshotDefinition;

  return v3;
}

void __70__PBFPosterSnapshotDefinition_switcherFloatingLayerSnapshotDefinition__block_invoke()
{
  v0 = [PBFPosterSnapshotDefinition alloc];
  v1 = [(PBFPosterSnapshotDefinition *)v0 initWithUniqueIdentifier:PRPosterSnapshotDefinitionIdentifierSwitcherFloatingLayer];
  v2 = switcherFloatingLayerSnapshotDefinition_switcherFloatingLayerSnapshotDefinition;
  switcherFloatingLayerSnapshotDefinition_switcherFloatingLayerSnapshotDefinition = v1;
}

+ (id)editingConfirmationDefinition
{
  if (editingConfirmationDefinition_onceToken != -1)
  {
    +[PBFPosterSnapshotDefinition editingConfirmationDefinition];
  }

  v3 = editingConfirmationDefinition_editingConfirmationDefinition;

  return v3;
}

void __60__PBFPosterSnapshotDefinition_editingConfirmationDefinition__block_invoke()
{
  v0 = [PBFPosterSnapshotDefinition alloc];
  v1 = [(PBFPosterSnapshotDefinition *)v0 initWithUniqueIdentifier:PRPosterSnapshotDefinitionIdentifierEditingConfirmation];
  v2 = editingConfirmationDefinition_editingConfirmationDefinition;
  editingConfirmationDefinition_editingConfirmationDefinition = v1;
}

+ (id)osMigrationDefinition
{
  if (osMigrationDefinition_onceToken != -1)
  {
    +[PBFPosterSnapshotDefinition osMigrationDefinition];
  }

  v3 = osMigrationDefinition_osMigrationDefinition;

  return v3;
}

void __52__PBFPosterSnapshotDefinition_osMigrationDefinition__block_invoke()
{
  v0 = [PBFPosterSnapshotDefinition alloc];
  v1 = [(PBFPosterSnapshotDefinition *)v0 initWithUniqueIdentifier:PRPosterSnapshotDefinitionIdentifierOSMigration];
  v2 = osMigrationDefinition_osMigrationDefinition;
  osMigrationDefinition_osMigrationDefinition = v1;
}

+ (id)defaultPreviewDefinitions
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = +[PBFPosterSnapshotDefinition gallerySnapshotDefinition];
  v3 = +[PBFPosterSnapshotDefinition gallerySnapshotKeyFrameDefinition];
  v7[1] = v3;
  v4 = +[PBFPosterSnapshotDefinition gallerySnapshotWithComplicationsDefinition];
  v7[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];

  return v5;
}

+ (id)defaultPreviewDefinitionForPreview:(id)a3
{
  PFCurrentDeviceClass();

  return +[PBFPosterSnapshotDefinition gallerySnapshotDefinition];
}

+ (id)defaultConfigurationDefinitions
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = +[PBFPosterSnapshotDefinition switcherSnapshotDefinition];
  v6[0] = v2;
  v3 = +[PBFPosterSnapshotDefinition switcherUnlockedSnapshotDefinition];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (PBFPosterSnapshotDefinition)initWithUniqueIdentifier:(id)a3
{
  v31[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0;
  v25 = 0.0;
  v23 = 0u;
  v24 = 0u;
  _PBFPosterSnapshotDefinitionAttributesForIdentifier(v4, &v26, &v23);
  v5 = [MEMORY[0x277D3EDC0] compositeLevelSet];
  v31[0] = v5;
  v6 = [MEMORY[0x277D3EDC0] allLevelsExceptFloating];
  v31[1] = v6;
  v7 = [MEMORY[0x277D3EDC0] foregroundLevelSet];
  v31[2] = v7;
  v8 = [MEMORY[0x277D3EDC0] backgroundLevelSet];
  v31[3] = v8;
  v9 = [MEMORY[0x277D3EDC0] floatingLevelSet];
  v31[4] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:5];

  if ([v4 isEqualToString:PRPosterSnapshotDefinitionIdentifierSwitcherFloatingLayer])
  {
    v11 = [MEMORY[0x277D3EDC0] floatingLevelSet];
    v30 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];

    v10 = v12;
  }

  if ([v4 isEqualToString:PRPosterSnapshotDefinitionIdentifierSwitcher])
  {
    v13 = [MEMORY[0x277D3EDC0] floatingLevelSet];
    v29[0] = v13;
    v14 = [MEMORY[0x277D3EDC0] allLevelsExceptFloating];
    v29[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];

    v10 = v15;
  }

  if (([v4 isEqualToString:PRPosterSnapshotDefinitionIdentifierGallery] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", PRPosterSnapshotDefinitionIdentifierGalleryWithComplications) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", PRPosterSnapshotDefinitionIdentifierGalleryKeyFrame))
  {
    v16 = [MEMORY[0x277D3EDC0] compositeLevelSet];
    v28 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];

    v10 = v17;
  }

  if ([v4 isEqualToString:PRPosterSnapshotDefinitionIdentifierOSMigration])
  {
    v18 = [MEMORY[0x277D3EDC0] compositeLevelSet];
    v27 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];

    v10 = v19;
  }

  if (v26 == 1)
  {
    v20 = [(PRPosterSnapshotDefinition *)self initWithUniqueIdentifier:v4 includeHeaderElements:v23 includesComplications:BYTE1(v23) levelSets:v10 isUnlocked:BYTE2(v23) renderingContent:*(&v23 + 1) renderingMode:v24 previewContent:?];
    if (v20)
    {
      v20->_persistenceScale = v25;
    }

    self = v20;
    v21 = self;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendSuper];
  [(PBFPosterSnapshotDefinition *)self persistenceScale];
  if ((BSFloatIsOne() & 1) == 0)
  {
    [(PBFPosterSnapshotDefinition *)self persistenceScale];
    v5 = [v3 appendFloat:@"persistenceScale" withName:?];
  }

  v6 = [v3 build];

  return v6;
}

@end