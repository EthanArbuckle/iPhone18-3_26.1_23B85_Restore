@interface CLSCurationModel
+ (id)baseSpecificationWithSpecification:(id)a3;
+ (id)firstReasonForAvoidForKeyAssetFromStatistics:(id *)a3;
+ (void)logInfo:(id)a3 prefix:(id)a4 avoidForKeyAssetStatistics:(id *)a5;
+ (void)logInfoInIndividualLine:(id)a3 prefix:(id)a4 avoidForKeyAssetStatistics:(id *)a5;
- (CLSCurationModel)initWithCurationModelSpecification:(id)a3;
@end

@implementation CLSCurationModel

+ (void)logInfoInIndividualLine:(id)a3 prefix:(id)a4 avoidForKeyAssetStatistics:(id *)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__CLSCurationModel_logInfoInIndividualLine_prefix_avoidForKeyAssetStatistics___block_invoke;
  v12[3] = &unk_1E82A1A80;
  v9 = v7;
  v13 = v9;
  v10 = v8;
  v14 = v10;
  v11 = _Block_copy(v12);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v10;
    _os_log_impl(&dword_1C6F5C000, v9, OS_LOG_TYPE_INFO, "%@ Avoided for key asset: {", buf, 0xCu);
  }

  v11[2](v11, a5->var0, @"hidden persons");
  v11[2](v11, a5->var1, @"panorama");
  v11[2](v11, a5->var2.var0, @"low sharpness");
  v11[2](v11, a5->var2.var1, @"low aesthetics");
  v11[2](v11, a5->var2.var2, @"high failure");
  v11[2](v11, a5->var2.var3, @"low tasteBlur");
  v11[2](v11, a5->var2.var4, @"unpleasant lighting");
  v11[2](v11, a5->var3, @"junkForMemories");
  v11[2](v11, a5->var7, @"risky file format");
  v11[2](v11, a5->var8, @"blocklisted importedBy");
  v11[2](v11, a5->var9, @"meme");
  v11[2](v11, a5->var10, @"wrong rotation");
  v11[2](v11, a5->var11, @"poor resolution");
  v11[2](v11, a5->var13.var0, @"explicit NSFW");
  v11[2](v11, a5->var14.var0, @"junkFailure");
  v11[2](v11, a5->var14.var1, @"blood");
  v11[2](v11, a5->var14.var2, @"funeral");
  v11[2](v11, a5->var14.var3, @"hospital");
  v11[2](v11, a5->var14.var4, @"vehicle crash");
  v11[2](v11, a5->var14.var5, @"war");
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

+ (void)logInfo:(id)a3 prefix:(id)a4 avoidForKeyAssetStatistics:(id *)a5
{
  v70 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a3, OS_LOG_TYPE_INFO))
  {
    var0 = a5->var0;
    var1 = a5->var1;
    v10 = a5->var2.var0;
    v11 = a5->var2.var1;
    var2 = a5->var2.var2;
    var3 = a5->var2.var3;
    var4 = a5->var2.var4;
    v15 = a5->var3;
    var7 = a5->var7;
    var8 = a5->var8;
    var9 = a5->var9;
    var10 = a5->var10;
    var11 = a5->var11;
    v21 = a5->var13.var0;
    v22 = a5->var14.var0;
    v23 = a5->var14.var1;
    v24 = a5->var14.var2;
    v25 = a5->var14.var3;
    v26 = a5->var14.var4;
    var5 = a5->var14.var5;
    v28 = 138417410;
    v29 = a4;
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
    _os_log_impl(&dword_1C6F5C000, a3, OS_LOG_TYPE_INFO, "%@ Avoided for key asset: %d for hidden persons, %d for panorama, %d for low sharpness, %d for low aesthetics, %d for high failure, %d for low tasteBlur, %d for unpleasant lighting, %d for junkForMemories, %d for risky file format, %d for blocklisted importedBy, %d for meme, %d for wrong rotation, %d for poor resolution, %d for NSFW, %d for junkFailure, %d for blood, %d for funeral, %d for hospital, %d for vehicle crash, %d for war", &v28, 0x84u);
  }
}

+ (id)firstReasonForAvoidForKeyAssetFromStatistics:(id *)a3
{
  if (a3->var0)
  {
    return @"Hidden Persons";
  }

  if (a3->var1)
  {
    return @"Panorama";
  }

  if (a3->var2.var0)
  {
    return @"Low Sharpness Score";
  }

  if (a3->var2.var1)
  {
    return @"Low Aesthetics Score";
  }

  if (a3->var2.var2)
  {
    return @"Low Failure Score";
  }

  if (a3->var2.var3)
  {
    return @"Low TastefullyBlurred Score";
  }

  if (a3->var2.var4)
  {
    return @"Low Lighting Score";
  }

  if (a3->var3)
  {
    return @"Junk for Memories";
  }

  if (a3->var4)
  {
    return @"Uninteresting Video";
  }

  if (a3->var5)
  {
    return @"Low Autoplay Score";
  }

  if (a3->var6)
  {
    return @"Poor Video Res + No Loc";
  }

  if (a3->var7)
  {
    return @"Risky File Format";
  }

  if (a3->var8)
  {
    return @"Blocklisted Imported By";
  }

  if (a3->var9)
  {
    return @"Meme";
  }

  if (a3->var10)
  {
    return @"Wrong Rotation";
  }

  if (a3->var11)
  {
    return @"Poor Photo Resolution";
  }

  if (a3->var12)
  {
    return @"Unacceptable User Feedback";
  }

  if (a3->var13.var0)
  {
    return @"NSFW";
  }

  if (a3->var14.var0)
  {
    return @"Junk Failure";
  }

  if (a3->var14.var1)
  {
    return @"Blood";
  }

  if (a3->var14.var2)
  {
    return @"Funeral";
  }

  if (a3->var14.var3)
  {
    return @"Hospital";
  }

  if (a3->var14.var4)
  {
    return @"Vehicle Crash";
  }

  if (a3->var14.var5)
  {
    return @"War";
  }

  return @"Unknown Reason";
}

+ (id)baseSpecificationWithSpecification:(id)a3
{
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___CLSCurationModel;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v12, sel_baseSpecificationWithSpecification_, v3);
  v5 = [v3 sceneAnalysisVersion];

  v6 = [v4 sceneAnalysisVersion];
  v7 = [MEMORY[0x1E69C1A30] baseSceneAnalysisVersionWithSceneAnalysisVersion:v5];
  if (v6 <= v7)
  {
    v6 = v7;
  }

  v8 = [MEMORY[0x1E69C1A50] baseSceneAnalysisVersionWithSceneAnalysisVersion:v5];
  if (v6 <= v8)
  {
    v6 = v8;
  }

  v9 = SimilarityModelVersionFromSceneAnalysisVersion();
  if (v6 <= v9)
  {
    v6 = v9;
  }

  v10 = -[CLSCurationModelSpecification initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:]([CLSCurationModelSpecification alloc], "initWithSceneAnalysisVersion:mediaAnalysisVersion:faceAnalysisVersion:", v6, [v4 mediaAnalysisVersion], objc_msgSend(v4, "faceAnalysisVersion"));

  return v10;
}

- (CLSCurationModel)initWithCurationModelSpecification:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CLSCurationModel;
  v5 = [(CLSCurationModel_v5 *)&v12 initWithCurationModelSpecification:v4];
  if (v5)
  {
    v6 = [v4 sceneAnalysisVersion];
    v7 = [objc_alloc(MEMORY[0x1E69C1A30]) initWithSceneAnalysisVersion:v6];
    entityNetModel = v5->_entityNetModel;
    v5->_entityNetModel = v7;

    v9 = [objc_alloc(MEMORY[0x1E69C1A50]) initWithSceneAnalysisVersion:{objc_msgSend(v4, "sceneAnalysisVersion")}];
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