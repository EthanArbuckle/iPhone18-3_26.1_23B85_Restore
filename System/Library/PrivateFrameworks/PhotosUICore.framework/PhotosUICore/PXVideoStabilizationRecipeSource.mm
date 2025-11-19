@interface PXVideoStabilizationRecipeSource
- (PXVideoStabilizationRecipeSource)init;
- (id)_loadStabilizationRecipe:(id *)a3 analysisType:(unint64_t *)a4;
- (id)loadStabilizationRecipe:(id *)a3 analysisType:(unint64_t *)a4;
@end

@implementation PXVideoStabilizationRecipeSource

- (id)_loadStabilizationRecipe:(id *)a3 analysisType:(unint64_t *)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXVideoStabilizationRecipeSource.m" lineNumber:121 description:{@"Method %s is a responsibility of subclass %@", "-[PXVideoStabilizationRecipeSource _loadStabilizationRecipe:analysisType:]", v8}];

  abort();
}

- (id)loadStabilizationRecipe:(id *)a3 analysisType:(unint64_t *)a4
{
  self->_recipeLoadSignpost = [MEMORY[0x1E6991F28] startSignpost];
  v15 = 0;
  v7 = [(PXVideoStabilizationRecipeSource *)self _loadStabilizationRecipe:a3 analysisType:&v15];
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = [(PXVideoStabilizationRecipeSource *)self analyticsPayload];
  v10 = [v8 initWithDictionary:v9];

  [v10 setObject:@"com.apple.photos.CPAnalytics.inlineStabilizationRecipeLoading" forKeyedSubscript:*MEMORY[0x1E6991E40]];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6991E20]];

  v13 = PXVideoStabilizeAnalysisTypeDescription(v15);
  [v10 setObject:v13 forKeyedSubscript:@"com.apple.photos.PXVideoStabilizationRecipeSource.analysisType"];

  [MEMORY[0x1E6991F28] endSignpost:self->_recipeLoadSignpost forEventName:*MEMORY[0x1E6991C98] withPayload:v10];
  *a4 = v15;

  return v7;
}

- (PXVideoStabilizationRecipeSource)init
{
  v6.receiver = self;
  v6.super_class = PXVideoStabilizationRecipeSource;
  v2 = [(PXVideoStabilizationRecipeSource *)&v6 init];
  if (v2)
  {
    v3 = +[PXInlineVideoStabilizationSettings sharedInstance];
    v2->_allowedAnalysisTypes = [v3 allowedAnalysisTypes];

    debugInfo = v2->_debugInfo;
    v2->_debugInfo = MEMORY[0x1E695E0F8];

    v2->_allowsOnDemandPixelAnalysis = 0;
  }

  return v2;
}

@end