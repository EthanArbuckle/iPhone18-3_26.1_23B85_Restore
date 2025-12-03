@interface CLSCurationModel
+ (id)baseSpecificationWithSpecification:(id)specification;
+ (id)firstReasonForAvoidForKeyAssetFromStatistics:(id *)statistics;
+ (void)logInfo:(id)info prefix:(id)prefix avoidForKeyAssetStatistics:(id *)statistics;
+ (void)logInfoInIndividualLine:(id)line prefix:(id)prefix avoidForKeyAssetStatistics:(id *)statistics;
- (CLSCurationModel)initWithCurationModelSpecification:(id)specification;
@end

@implementation CLSCurationModel

+ (void)logInfoInIndividualLine:(id)line prefix:(id)prefix avoidForKeyAssetStatistics:(id *)statistics
{
  v17 = *MEMORY[0x1E69E9840];
  lineCopy = line;
  prefixCopy = prefix;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__CLSCurationModel_logInfoInIndividualLine_prefix_avoidForKeyAssetStatistics___block_invoke;
  v12[3] = &unk_1E82A1A80;
  v9 = lineCopy;
  v13 = v9;
  v10 = prefixCopy;
  v14 = v10;
  v11 = _Block_copy(v12);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v10;
    _os_log_impl(&dword_1C6F5C000, v9, OS_LOG_TYPE_INFO, "%@ Avoided for key asset: {", buf, 0xCu);
  }

  v11[2](v11, statistics->var0, @"hidden persons");
  v11[2](v11, statistics->var1, @"panorama");
  v11[2](v11, statistics->var2.var0, @"low sharpness");
  v11[2](v11, statistics->var2.var1, @"low aesthetics");
  v11[2](v11, statistics->var2.var2, @"high failure");
  v11[2](v11, statistics->var2.var3, @"low tasteBlur");
  v11[2](v11, statistics->var2.var4, @"unpleasant lighting");
  v11[2](v11, statistics->var3, @"junkForMemories");
  v11[2](v11, statistics->var7, @"risky file format");
  v11[2](v11, statistics->var8, @"blocklisted importedBy");
  v11[2](v11, statistics->var9, @"meme");
  v11[2](v11, statistics->var10, @"wrong rotation");
  v11[2](v11, statistics->var11, @"poor resolution");
  v11[2](v11, statistics->var13.var0, @"explicit NSFW");
  v11[2](v11, statistics->var14.var0, @"junkFailure");
  v11[2](v11, statistics->var14.var1, @"blood");
  v11[2](v11, statistics->var14.var2, @"funeral");
  v11[2](v11, statistics->var14.var3, @"hospital");
  v11[2](v11, statistics->var14.var4, @"vehicle crash");
  v11[2](v11, statistics->var14.var5, @"war");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v10;
    _os_log_impl(&dword_1C6F5C000, v9, OS_LOG_TYPE_INFO, "%@ }", buf, 0xCu);
  }
}

void __78__CLSCurationModel_logInfoInIndividualLine_prefix_avoidForKeyAssetStatistics___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1C6F5C000, v6, OS_LOG_TYPE_INFO, "%@ Filtered out %d for %@", &v8, 0x1Cu);
  }
}

+ (void)logInfo:(id)info prefix:(id)prefix avoidForKeyAssetStatistics:(id *)statistics
{
  v70 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(info, OS_LOG_TYPE_INFO))
  {
    var0 = statistics->var0;
    var1 = statistics->var1;
    v10 = statistics->var2.var0;
    v11 = statistics->var2.var1;
    var2 = statistics->var2.var2;
    var3 = statistics->var2.var3;
    var4 = statistics->var2.var4;
    v15 = statistics->var3;
    var7 = statistics->var7;
    var8 = statistics->var8;
    var9 = statistics->var9;
    var10 = statistics->var10;
    var11 = statistics->var11;
    v21 = statistics->var13.var0;
    v22 = statistics->var14.var0;
    v23 = statistics->var14.var1;
    v24 = statistics->var14.var2;
    v25 = statistics->var14.var3;
    v26 = statistics->var14.var4;
    var5 = statistics->var14.var5;
    v28 = 138417410;
    prefixCopy = prefix;
    v30 = 1024;
    v31 = var0;
    v32 = 1024;
    v33 = var1;
    v34 = 1024;
    v35 = v10;
    v36 = 1024;
    v37 = v11;
    v38 = 1024;
    v39 = var2;
    v40 = 1024;
    v41 = var3;
    v42 = 1024;
    v43 = var4;
    v44 = 1024;
    v45 = v15;
    v46 = 1024;
    v47 = var7;
    v48 = 1024;
    v49 = var8;
    v50 = 1024;
    v51 = var9;
    v52 = 1024;
    v53 = var10;
    v54 = 1024;
    v55 = var11;
    v56 = 1024;
    v57 = v21;
    v58 = 1024;
    v59 = v22;
    v60 = 1024;
    v61 = v23;
    v62 = 1024;
    v63 = v24;
    v64 = 1024;
    v65 = v25;
    v66 = 1024;
    v67 = v26;
    v68 = 1024;
    v69 = var5;
    _os_log_impl(&dword_1C6F5C000, info, OS_LOG_TYPE_INFO, "%@ Avoided for key asset: %d for hidden persons, %d for panorama, %d for low sharpness, %d for low aesthetics, %d for high failure, %d for low tasteBlur, %d for unpleasant lighting, %d for junkForMemories, %d for risky file format, %d for blocklisted importedBy, %d for meme, %d for wrong rotation, %d for poor resolution, %d for NSFW, %d for junkFailure, %d for blood, %d for funeral, %d for hospital, %d for vehicle crash, %d for war", &v28, 0x84u);
  }
}

+ (id)firstReasonForAvoidForKeyAssetFromStatistics:(id *)statistics
{
  if (statistics->var0)
  {
    return @"Hidden Persons";
  }

  if (statistics->var1)
  {
    return @"Panorama";
  }

  if (statistics->var2.var0)
  {
    return @"Low Sharpness Score";
  }

  if (statistics->var2.var1)
  {
    return @"Low Aesthetics Score";
  }

  if (statistics->var2.var2)
  {
    return @"Low Failure Score";
  }

  if (statistics->var2.var3)
  {
    return @"Low TastefullyBlurred Score";
  }

  if (statistics->var2.var4)
  {
    return @"Low Lighting Score";
  }

  if (statistics->var3)
  {
    return @"Junk for Memories";
  }

  if (statistics->var4)
  {
    return @"Uninteresting Video";
  }

  if (statistics->var5)
  {
    return @"Low Autoplay Score";
  }

  if (statistics->var6)
  {
    return @"Poor Video Res + No Loc";
  }

  if (statistics->var7)
  {
    return @"Risky File Format";
  }

  if (statistics->var8)
  {
    return @"Blocklisted Imported By";
  }

  if (statistics->var9)
  {
    return @"Meme";
  }

  if (statistics->var10)
  {
    return @"Wrong Rotation";
  }

  if (statistics->var11)
  {
    return @"Poor Photo Resolution";
  }

  if (statistics->var12)
  {
    return @"Unacceptable User Feedback";
  }

  if (statistics->var13.var0)
  {
    return @"NSFW";
  }

  if (statistics->var14.var0)
  {
    return @"Junk Failure";
  }

  if (statistics->var14.var1)
  {
    return @"Blood";
  }

  if (statistics->var14.var2)
  {
    return @"Funeral";
  }

  if (statistics->var14.var3)
  {
    return @"Hospital";
  }

  if (statistics->var14.var4)
  {
    return @"Vehicle Crash";
  }

  if (statistics->var14.var5)
  {
    return @"War";
  }

  return @"Unknown Reason";
}

+ (id)baseSpecificationWithSpecification:(id)specification
{
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___CLSCurationModel;
  specificationCopy = specification;
  v4 = objc_msgSendSuper2(&v12, sel_baseSpecificationWithSpecification_, specificationCopy);
  sceneAnalysisVersion = [specificationCopy sceneAnalysisVersion];

  sceneAnalysisVersion2 = [v4 sceneAnalysisVersion];
  v7 = [MEMORY[0x1E69C1A30] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (sceneAnalysisVersion2 <= v7)
  {
    sceneAnalysisVersion2 = v7;
  }

  v8 = [MEMORY[0x1E69C1A50] baseSceneAnalysisVersionWithSceneAnalysisVersion:sceneAnalysisVersion];
  if (sceneAnalysisVersion2 <= v8)
  {
    sceneAnalysisVersion2 = v8;
  }

  v9 = SimilarityModelVersionFromSceneAnalysisVersion();
  if (sceneAnalysisVersion2 <= v9)
  {
    sceneAnalysisVersion2 = v9;
  }

  v10 = -[CLSCurationModelSpecification initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:]([CLSCurationModelSpecification alloc], "initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:", sceneAnalysisVersion2, [v4 mediaAnalysisVersion], objc_msgSend(v4, "faceAnalysisVersion"));

  return v10;
}

- (CLSCurationModel)initWithCurationModelSpecification:(id)specification
{
  specificationCopy = specification;
  v12.receiver = self;
  v12.super_class = CLSCurationModel;
  v5 = [(CLSCurationModel_v5 *)&v12 initWithCurationModelSpecification:specificationCopy];
  if (v5)
  {
    sceneAnalysisVersion = [specificationCopy sceneAnalysisVersion];
    v7 = [objc_alloc(MEMORY[0x1E69C1A30]) initWithSceneAnalysisVersion:sceneAnalysisVersion];
    entityNetModel = v5->_entityNetModel;
    v5->_entityNetModel = v7;

    v9 = [objc_alloc(MEMORY[0x1E69C1A50]) initWithSceneAnalysisVersion:{objc_msgSend(specificationCopy, "sceneAnalysisVersion")}];
    iconicScoreModel = v5->_iconicScoreModel;
    v5->_iconicScoreModel = v9;

    v5->_similarityModelVersion = SimilarityModelVersionFromSceneAnalysisVersion();
  }

  return v5;
}

uint64_t __74__CLSCurationModel_v3_enumerateClassificationBasedSignalModelsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a3;
  return result;
}

uint64_t __55__CLSCurationModel_v3_enumerateSignalModelsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a3;
  return result;
}

uint64_t __74__CLSCurationModel_v5_enumerateClassificationBasedSignalModelsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a3;
  return result;
}

uint64_t __55__CLSCurationModel_v5_enumerateSignalModelsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a3;
  return result;
}

uint64_t __74__CLSCurationModel_v4_enumerateClassificationBasedSignalModelsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a3;
  return result;
}

uint64_t __55__CLSCurationModel_v4_enumerateSignalModelsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a3;
  return result;
}

@end