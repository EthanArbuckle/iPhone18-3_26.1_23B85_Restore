@interface PXVideoStabilizationRecipeSource
- (PXVideoStabilizationRecipeSource)init;
- (id)_loadStabilizationRecipe:(id *)recipe analysisType:(unint64_t *)type;
- (id)loadStabilizationRecipe:(id *)recipe analysisType:(unint64_t *)type;
@end

@implementation PXVideoStabilizationRecipeSource

- (id)_loadStabilizationRecipe:(id *)recipe analysisType:(unint64_t *)type
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoStabilizationRecipeSource.m" lineNumber:121 description:{@"Method %s is a responsibility of subclass %@", "-[PXVideoStabilizationRecipeSource _loadStabilizationRecipe:analysisType:]", v8}];

  abort();
}

- (id)loadStabilizationRecipe:(id *)recipe analysisType:(unint64_t *)type
{
  self->_recipeLoadSignpost = [MEMORY[0x1E6991F28] startSignpost];
  v15 = 0;
  v7 = [(PXVideoStabilizationRecipeSource *)self _loadStabilizationRecipe:recipe analysisType:&v15];
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  analyticsPayload = [(PXVideoStabilizationRecipeSource *)self analyticsPayload];
  v10 = [v8 initWithDictionary:analyticsPayload];

  [v10 setObject:@"com.apple.photos.CPAnalytics.inlineStabilizationRecipeLoading" forKeyedSubscript:*MEMORY[0x1E6991E40]];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6991E20]];

  v13 = PXVideoStabilizeAnalysisTypeDescription(v15);
  [v10 setObject:v13 forKeyedSubscript:@"com.apple.photos.PXVideoStabilizationRecipeSource.analysisType"];

  [MEMORY[0x1E6991F28] endSignpost:self->_recipeLoadSignpost forEventName:*MEMORY[0x1E6991C98] withPayload:v10];
  *type = v15;

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