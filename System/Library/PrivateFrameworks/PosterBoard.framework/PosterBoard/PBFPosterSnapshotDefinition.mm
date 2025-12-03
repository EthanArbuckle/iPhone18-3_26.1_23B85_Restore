@interface PBFPosterSnapshotDefinition
+ (id)defaultConfigurationDefinitions;
+ (id)defaultPreviewDefinitionForPreview:(id)preview;
+ (id)defaultPreviewDefinitions;
+ (id)editingConfirmationDefinition;
+ (id)gallerySnapshotDefinition;
+ (id)gallerySnapshotKeyFrameDefinition;
+ (id)gallerySnapshotWithComplicationsDefinition;
+ (id)osMigrationDefinition;
+ (id)switcherFloatingLayerSnapshotDefinition;
+ (id)switcherSnapshotDefinition;
+ (id)switcherUnlockedSnapshotDefinition;
- (PBFPosterSnapshotDefinition)initWithUniqueIdentifier:(id)identifier;
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

+ (id)defaultPreviewDefinitionForPreview:(id)preview
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

- (PBFPosterSnapshotDefinition)initWithUniqueIdentifier:(id)identifier
{
  v31[5] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v26 = 0;
  v25 = 0.0;
  v23 = 0u;
  v24 = 0u;
  _PBFPosterSnapshotDefinitionAttributesForIdentifier(identifierCopy, &v26, &v23);
  compositeLevelSet = [MEMORY[0x277D3EDC0] compositeLevelSet];
  v31[0] = compositeLevelSet;
  allLevelsExceptFloating = [MEMORY[0x277D3EDC0] allLevelsExceptFloating];
  v31[1] = allLevelsExceptFloating;
  foregroundLevelSet = [MEMORY[0x277D3EDC0] foregroundLevelSet];
  v31[2] = foregroundLevelSet;
  backgroundLevelSet = [MEMORY[0x277D3EDC0] backgroundLevelSet];
  v31[3] = backgroundLevelSet;
  floatingLevelSet = [MEMORY[0x277D3EDC0] floatingLevelSet];
  v31[4] = floatingLevelSet;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:5];

  if ([identifierCopy isEqualToString:PRPosterSnapshotDefinitionIdentifierSwitcherFloatingLayer])
  {
    floatingLevelSet2 = [MEMORY[0x277D3EDC0] floatingLevelSet];
    v30 = floatingLevelSet2;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];

    v10 = v12;
  }

  if ([identifierCopy isEqualToString:PRPosterSnapshotDefinitionIdentifierSwitcher])
  {
    floatingLevelSet3 = [MEMORY[0x277D3EDC0] floatingLevelSet];
    v29[0] = floatingLevelSet3;
    allLevelsExceptFloating2 = [MEMORY[0x277D3EDC0] allLevelsExceptFloating];
    v29[1] = allLevelsExceptFloating2;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];

    v10 = v15;
  }

  if (([identifierCopy isEqualToString:PRPosterSnapshotDefinitionIdentifierGallery] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", PRPosterSnapshotDefinitionIdentifierGalleryWithComplications) & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", PRPosterSnapshotDefinitionIdentifierGalleryKeyFrame))
  {
    compositeLevelSet2 = [MEMORY[0x277D3EDC0] compositeLevelSet];
    v28 = compositeLevelSet2;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];

    v10 = v17;
  }

  if ([identifierCopy isEqualToString:PRPosterSnapshotDefinitionIdentifierOSMigration])
  {
    compositeLevelSet3 = [MEMORY[0x277D3EDC0] compositeLevelSet];
    v27 = compositeLevelSet3;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];

    v10 = v19;
  }

  if (v26 == 1)
  {
    v20 = [(PRPosterSnapshotDefinition *)self initWithUniqueIdentifier:identifierCopy includeHeaderElements:v23 includesComplications:BYTE1(v23) levelSets:v10 isUnlocked:BYTE2(v23) renderingContent:*(&v23 + 1) renderingMode:v24 previewContent:?];
    if (v20)
    {
      v20->_persistenceScale = v25;
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  appendSuper = [v3 appendSuper];
  [(PBFPosterSnapshotDefinition *)self persistenceScale];
  if ((BSFloatIsOne() & 1) == 0)
  {
    [(PBFPosterSnapshotDefinition *)self persistenceScale];
    v5 = [v3 appendFloat:@"persistenceScale" withName:?];
  }

  build = [v3 build];

  return build;
}

@end