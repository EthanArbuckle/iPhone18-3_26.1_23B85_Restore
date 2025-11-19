@interface PFStoryConcreteMutableRecipe
- (id)copyWithZone:(_NSZone *)a3;
- (void)addAsset:(id)a3;
- (void)addLibrary:(id)a3;
- (void)addPresentation:(id)a3;
- (void)removeAssetWithIdentifier:(id)a3;
- (void)removeLibraryWithKind:(int64_t)a3;
- (void)removePresentationWithIdentifier:(id)a3;
- (void)setAssets:(id)a3;
- (void)setContentIdentifier:(id)a3;
- (void)setLibraries:(id)a3;
- (void)setOverallDurationInfo:(id *)a3;
- (void)setPresentations:(id)a3;
@end

@implementation PFStoryConcreteMutableRecipe

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PFStoryConcreteRecipe alloc];
  v5 = [(PFStoryConcreteRecipe *)self contentIdentifier];
  v6 = [(PFStoryConcreteRecipe *)self majorVersion];
  v7 = [(PFStoryConcreteRecipe *)self minorVersion];
  v8 = [(PFStoryConcreteRecipe *)self libraries];
  v9 = [(PFStoryConcreteRecipe *)self assets];
  [(PFStoryConcreteRecipe *)self overallDurationInfo];
  v10 = [(PFStoryConcreteRecipe *)self currentStyle];
  v11 = [(PFStoryConcreteRecipe *)self seedSongIdentifiersByCatalog];
  v12 = [(PFStoryConcreteRecipe *)self autoEditDecisionLists];
  v13 = [(PFStoryConcreteRecipe *)self presentations];
  v14 = [(PFStoryConcreteRecipe *)v4 initWithContentIdentifier:v5 majorVersion:v6 minorVersion:v7 libraries:v8 assets:v9 overallDurationInfo:v16 currentStyle:v10 seedSongIdentifiersByCatalog:v11 autoDecisionLists:v12 presentations:v13];

  return v14;
}

- (void)setOverallDurationInfo:(id *)a3
{
  *&self->super._overallDurationInfo.kind = *&a3->var0;
  v3 = *&a3->var1.var0.var1;
  v4 = *&a3->var1.var1.var0;
  v5 = *&a3->var1.var1.var3;
  *&self->super._overallDurationInfo.specificDurationInfo.maximumDuration.timescale = *&a3->var1.var2.var1;
  *&self->super._overallDurationInfo.specificDurationInfo.preferredDuration.epoch = v5;
  *&self->super._overallDurationInfo.specificDurationInfo.preferredDuration.value = v4;
  *&self->super._overallDurationInfo.specificDurationInfo.minimumDuration.timescale = v3;
}

- (void)removeLibraryWithKind:(int64_t)a3
{
  v5 = [(PFStoryConcreteRecipe *)self libraries];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__PFStoryConcreteMutableRecipe_removeLibraryWithKind___block_invoke;
  v10[3] = &__block_descriptor_40_e39_B32__0___PFStoryRecipeLibrary__8Q16_B24l;
  v10[4] = a3;
  v6 = [v5 indexesOfObjectsPassingTest:v10];

  v7 = [(PFStoryConcreteRecipe *)self libraries];
  v8 = [v7 mutableCopy];

  [v8 removeObjectsAtIndexes:v6];
  v9 = [v8 copy];
  [(PFStoryConcreteMutableRecipe *)self setLibraries:v9];
}

- (void)addLibrary:(id)a3
{
  v8 = a3;
  if (!self->super._libraries)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    libraries = self->super._libraries;
    self->super._libraries = v4;
  }

  v6 = [(PFStoryConcreteRecipe *)self libraries];
  v7 = [v6 arrayByAddingObject:v8];
  [(PFStoryConcreteMutableRecipe *)self setLibraries:v7];
}

- (void)removePresentationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PFStoryConcreteRecipe *)self presentations];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__PFStoryConcreteMutableRecipe_removePresentationWithIdentifier___block_invoke;
  v11[3] = &unk_1E7B664F0;
  v12 = v4;
  v6 = v4;
  v7 = [v5 indexesOfObjectsPassingTest:v11];

  v8 = [(PFStoryConcreteRecipe *)self presentations];
  v9 = [v8 mutableCopy];

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

- (void)addPresentation:(id)a3
{
  v8 = a3;
  if (!self->super._presentations)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    presentations = self->super._presentations;
    self->super._presentations = v4;
  }

  v6 = [(PFStoryConcreteRecipe *)self presentations];
  v7 = [v6 arrayByAddingObject:v8];
  [(PFStoryConcreteMutableRecipe *)self setPresentations:v7];
}

- (void)setPresentations:(id)a3
{
  v4 = [a3 copy];
  presentations = self->super._presentations;
  self->super._presentations = v4;

  MEMORY[0x1EEE66BB8](v4, presentations);
}

- (void)removeAssetWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PFStoryConcreteRecipe *)self assets];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__PFStoryConcreteMutableRecipe_removeAssetWithIdentifier___block_invoke;
  v11[3] = &unk_1E7B664C8;
  v12 = v4;
  v6 = v4;
  v7 = [v5 indexesOfObjectsPassingTest:v11];

  v8 = [(PFStoryConcreteRecipe *)self assets];
  v9 = [v8 mutableCopy];

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

- (void)addAsset:(id)a3
{
  v8 = a3;
  if (!self->super._assets)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    assets = self->super._assets;
    self->super._assets = v4;
  }

  v6 = [(PFStoryConcreteRecipe *)self assets];
  v7 = [v6 arrayByAddingObject:v8];
  [(PFStoryConcreteMutableRecipe *)self setAssets:v7];
}

- (void)setAssets:(id)a3
{
  v4 = [a3 copy];
  assets = self->super._assets;
  self->super._assets = v4;

  MEMORY[0x1EEE66BB8](v4, assets);
}

- (void)setLibraries:(id)a3
{
  v4 = [a3 copy];
  libraries = self->super._libraries;
  self->super._libraries = v4;

  MEMORY[0x1EEE66BB8](v4, libraries);
}

- (void)setContentIdentifier:(id)a3
{
  v4 = [a3 copy];
  contentIdentifier = self->super._contentIdentifier;
  self->super._contentIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, contentIdentifier);
}

@end