@interface PFStoryConcreteMutableRecipe
- (id)copyWithZone:(_NSZone *)zone;
- (void)addAsset:(id)asset;
- (void)addLibrary:(id)library;
- (void)addPresentation:(id)presentation;
- (void)removeAssetWithIdentifier:(id)identifier;
- (void)removeLibraryWithKind:(int64_t)kind;
- (void)removePresentationWithIdentifier:(id)identifier;
- (void)setAssets:(id)assets;
- (void)setContentIdentifier:(id)identifier;
- (void)setLibraries:(id)libraries;
- (void)setOverallDurationInfo:(id *)info;
- (void)setPresentations:(id)presentations;
@end

@implementation PFStoryConcreteMutableRecipe

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PFStoryConcreteRecipe alloc];
  contentIdentifier = [(PFStoryConcreteRecipe *)self contentIdentifier];
  majorVersion = [(PFStoryConcreteRecipe *)self majorVersion];
  minorVersion = [(PFStoryConcreteRecipe *)self minorVersion];
  libraries = [(PFStoryConcreteRecipe *)self libraries];
  assets = [(PFStoryConcreteRecipe *)self assets];
  [(PFStoryConcreteRecipe *)self overallDurationInfo];
  currentStyle = [(PFStoryConcreteRecipe *)self currentStyle];
  seedSongIdentifiersByCatalog = [(PFStoryConcreteRecipe *)self seedSongIdentifiersByCatalog];
  autoEditDecisionLists = [(PFStoryConcreteRecipe *)self autoEditDecisionLists];
  presentations = [(PFStoryConcreteRecipe *)self presentations];
  v14 = [(PFStoryConcreteRecipe *)v4 initWithContentIdentifier:contentIdentifier majorVersion:majorVersion minorVersion:minorVersion libraries:libraries assets:assets overallDurationInfo:v16 currentStyle:currentStyle seedSongIdentifiersByCatalog:seedSongIdentifiersByCatalog autoDecisionLists:autoEditDecisionLists presentations:presentations];

  return v14;
}

- (void)setOverallDurationInfo:(id *)info
{
  *&self->super._overallDurationInfo.kind = *&info->var0;
  v3 = *&info->var1.var0.var1;
  v4 = *&info->var1.var1.var0;
  v5 = *&info->var1.var1.var3;
  *&self->super._overallDurationInfo.specificDurationInfo.maximumDuration.timescale = *&info->var1.var2.var1;
  *&self->super._overallDurationInfo.specificDurationInfo.preferredDuration.epoch = v5;
  *&self->super._overallDurationInfo.specificDurationInfo.preferredDuration.value = v4;
  *&self->super._overallDurationInfo.specificDurationInfo.minimumDuration.timescale = v3;
}

- (void)removeLibraryWithKind:(int64_t)kind
{
  libraries = [(PFStoryConcreteRecipe *)self libraries];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__PFStoryConcreteMutableRecipe_removeLibraryWithKind___block_invoke;
  v10[3] = &__block_descriptor_40_e39_B32__0___PFStoryRecipeLibrary__8Q16_B24l;
  v10[4] = kind;
  v6 = [libraries indexesOfObjectsPassingTest:v10];

  libraries2 = [(PFStoryConcreteRecipe *)self libraries];
  v8 = [libraries2 mutableCopy];

  [v8 removeObjectsAtIndexes:v6];
  v9 = [v8 copy];
  [(PFStoryConcreteMutableRecipe *)self setLibraries:v9];
}

- (void)addLibrary:(id)library
{
  libraryCopy = library;
  if (!self->super._libraries)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    libraries = self->super._libraries;
    self->super._libraries = v4;
  }

  libraries = [(PFStoryConcreteRecipe *)self libraries];
  v7 = [libraries arrayByAddingObject:libraryCopy];
  [(PFStoryConcreteMutableRecipe *)self setLibraries:v7];
}

- (void)removePresentationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  presentations = [(PFStoryConcreteRecipe *)self presentations];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__PFStoryConcreteMutableRecipe_removePresentationWithIdentifier___block_invoke;
  v11[3] = &unk_1E7B664F0;
  v12 = identifierCopy;
  v6 = identifierCopy;
  v7 = [presentations indexesOfObjectsPassingTest:v11];

  presentations2 = [(PFStoryConcreteRecipe *)self presentations];
  v9 = [presentations2 mutableCopy];

  [v9 removeObjectsAtIndexes:v7];
  v10 = [v9 copy];
  [(PFStoryConcreteMutableRecipe *)self setPresentations:v10];
}

uint64_t __65__PFStoryConcreteMutableRecipe_removePresentationWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)addPresentation:(id)presentation
{
  presentationCopy = presentation;
  if (!self->super._presentations)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    presentations = self->super._presentations;
    self->super._presentations = v4;
  }

  presentations = [(PFStoryConcreteRecipe *)self presentations];
  v7 = [presentations arrayByAddingObject:presentationCopy];
  [(PFStoryConcreteMutableRecipe *)self setPresentations:v7];
}

- (void)setPresentations:(id)presentations
{
  v4 = [presentations copy];
  presentations = self->super._presentations;
  self->super._presentations = v4;

  MEMORY[0x1EEE66BB8](v4, presentations);
}

- (void)removeAssetWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  assets = [(PFStoryConcreteRecipe *)self assets];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__PFStoryConcreteMutableRecipe_removeAssetWithIdentifier___block_invoke;
  v11[3] = &unk_1E7B664C8;
  v12 = identifierCopy;
  v6 = identifierCopy;
  v7 = [assets indexesOfObjectsPassingTest:v11];

  assets2 = [(PFStoryConcreteRecipe *)self assets];
  v9 = [assets2 mutableCopy];

  [v9 removeObjectsAtIndexes:v7];
  v10 = [v9 copy];
  [(PFStoryConcreteMutableRecipe *)self setAssets:v10];
}

uint64_t __58__PFStoryConcreteMutableRecipe_removeAssetWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)addAsset:(id)asset
{
  assetCopy = asset;
  if (!self->super._assets)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    assets = self->super._assets;
    self->super._assets = v4;
  }

  assets = [(PFStoryConcreteRecipe *)self assets];
  v7 = [assets arrayByAddingObject:assetCopy];
  [(PFStoryConcreteMutableRecipe *)self setAssets:v7];
}

- (void)setAssets:(id)assets
{
  v4 = [assets copy];
  assets = self->super._assets;
  self->super._assets = v4;

  MEMORY[0x1EEE66BB8](v4, assets);
}

- (void)setLibraries:(id)libraries
{
  v4 = [libraries copy];
  libraries = self->super._libraries;
  self->super._libraries = v4;

  MEMORY[0x1EEE66BB8](v4, libraries);
}

- (void)setContentIdentifier:(id)identifier
{
  v4 = [identifier copy];
  contentIdentifier = self->super._contentIdentifier;
  self->super._contentIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, contentIdentifier);
}

@end