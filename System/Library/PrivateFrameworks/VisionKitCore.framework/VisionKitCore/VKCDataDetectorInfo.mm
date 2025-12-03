@interface VKCDataDetectorInfo
+ (id)dataDetectorInfoFromAnalysis:(id)analysis dataDetectorTypes:(unint64_t)types unfiltered:(BOOL)unfiltered;
+ (void)preWarmIfNecessaryWithCompletion:(id)completion;
- (void)createQuickActionInfosWithCompletion:(id)completion;
- (void)populateDataDetectorElementsFromAnalysis:(id)analysis dataDetectorTypes:(unint64_t)types unfiltered:(BOOL)unfiltered;
@end

@implementation VKCDataDetectorInfo

+ (id)dataDetectorInfoFromAnalysis:(id)analysis dataDetectorTypes:(unint64_t)types unfiltered:(BOOL)unfiltered
{
  unfilteredCopy = unfiltered;
  analysisCopy = analysis;
  v8 = objc_alloc_init(VKCDataDetectorInfo);
  [(VKCDataDetectorInfo *)v8 setAnalysis:analysisCopy];
  [(VKCDataDetectorInfo *)v8 populateDataDetectorElementsFromAnalysis:analysisCopy dataDetectorTypes:types unfiltered:unfilteredCopy];

  [(VKCDataDetectorInfo *)v8 setDataDetectorTypes:types];

  return v8;
}

+ (void)preWarmIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = completionCopy;
  if (preWarmIfNecessaryWithCompletion__didPrewarm)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__VKCDataDetectorInfo_preWarmIfNecessaryWithCompletion___block_invoke;
    block[3] = &unk_1E7BE3FC8;
    v6 = completionCopy;
    if (preWarmIfNecessaryWithCompletion__onceToken != -1)
    {
      dispatch_once(&preWarmIfNecessaryWithCompletion__onceToken, block);
    }
  }
}

void __56__VKCDataDetectorInfo_preWarmIfNecessaryWithCompletion___block_invoke(uint64_t a1)
{
  preWarmIfNecessaryWithCompletion__didPrewarm = 1;
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __56__VKCDataDetectorInfo_preWarmIfNecessaryWithCompletion___block_invoke_2;
  v1[3] = &unk_1E7BE3FC8;
  v2 = *(a1 + 32);
  vk_performBlockOnMainThread(v1);
}

void __56__VKCDataDetectorInfo_preWarmIfNecessaryWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = dispatch_get_global_queue(2, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__VKCDataDetectorInfo_preWarmIfNecessaryWithCompletion___block_invoke_3;
  v5[3] = &unk_1E7BE47B8;
  v6 = v2;
  v7 = *(a1 + 32);
  v4 = v2;
  dispatch_async(v3, v5);
}

uint64_t __56__VKCDataDetectorInfo_preWarmIfNecessaryWithCompletion___block_invoke_3(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v2 = getDDUIActionClass_softClass;
  v18 = getDDUIActionClass_softClass;
  if (!getDDUIActionClass_softClass)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getDDUIActionClass_block_invoke;
    v13 = &unk_1E7BE3F48;
    v14 = &v15;
    __getDDUIActionClass_block_invoke(&v10);
    v2 = v16[3];
  }

  v3 = v2;
  _Block_object_dispose(&v15, 8);
  v4 = objc_alloc_init(v2);
  v5 = [v4 description];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v6 = getDDContextMenuActionClass_softClass_0;
  v18 = getDDContextMenuActionClass_softClass_0;
  if (!getDDContextMenuActionClass_softClass_0)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getDDContextMenuActionClass_block_invoke_0;
    v13 = &unk_1E7BE3F48;
    v14 = &v15;
    __getDDContextMenuActionClass_block_invoke_0(&v10);
    v6 = v16[3];
  }

  v7 = v6;
  _Block_object_dispose(&v15, 8);
  v8 = [v6 buttonActionsForURL:0 result:0 contact:0 icsString:0 context:MEMORY[0x1E695E0F8] view:*(a1 + 32) identifier:0 suggestedActions:0 defaultAction:0];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)populateDataDetectorElementsFromAnalysis:(id)analysis dataDetectorTypes:(unint64_t)types unfiltered:(BOOL)unfiltered
{
  analysisCopy = analysis;
  imageAnalysisResult = [analysisCopy imageAnalysisResult];
  v10 = imageAnalysisResult;
  if (unfiltered)
  {
    [imageAnalysisResult unfilteredDataDetectors];
  }

  else
  {
    [imageAnalysisResult dataDetectors];
  }
  v11 = ;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __93__VKCDataDetectorInfo_populateDataDetectorElementsFromAnalysis_dataDetectorTypes_unfiltered___block_invoke;
  v17 = &unk_1E7BE5F40;
  v18 = analysisCopy;
  typesCopy = types;
  v12 = analysisCopy;
  v13 = [v11 vk_compactMap:&v14];
  [(VKCDataDetectorInfo *)self setElements:v13, v14, v15, v16, v17];
}

id __93__VKCDataDetectorInfo_populateDataDetectorElementsFromAnalysis_dataDetectorTypes_unfiltered___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 40) & [v3 dataDetectorTypes]) != 0)
  {
    v4 = [VKCDataDetectorElementInfo infoFromDataDetectorElement:v3 analysis:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)createQuickActionInfosWithCompletion:(id)completion
{
  completionCopy = completion;
  elements = [(VKCDataDetectorInfo *)self elements];

  if (!elements)
  {
    analysis = [(VKCDataDetectorInfo *)self analysis];
    [(VKCDataDetectorInfo *)self populateDataDetectorElementsFromAnalysis:analysis dataDetectorTypes:[(VKCDataDetectorInfo *)self dataDetectorTypes] unfiltered:0];
  }

  analysis2 = [(VKCDataDetectorInfo *)self analysis];
  imageAnalysisResult = [analysis2 imageAnalysisResult];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__VKCDataDetectorInfo_createQuickActionInfosWithCompletion___block_invoke;
  v11[3] = &unk_1E7BE50D8;
  v12 = imageAnalysisResult;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = imageAnalysisResult;
  vk_dispatchMainAfterDelay(v11, 0.0);
}

void __60__VKCDataDetectorInfo_createQuickActionInfosWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataDetectors];
  v3 = [*(a1 + 32) unfilteredDataDetectors];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__VKCDataDetectorInfo_createQuickActionInfosWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7BE5F68;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [VKCQuickActionsProcessor quickActionsFromElements:v2 unfilteredElements:v3 analysis:v4 queue:MEMORY[0x1E69E96A0] completionHandler:v6];
}

void __60__VKCDataDetectorInfo_createQuickActionInfosWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() quickActionInfosFromQuickActions:v3];

  (*(*(a1 + 40) + 16))();
}

@end