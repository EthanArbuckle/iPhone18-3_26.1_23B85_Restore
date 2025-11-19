@interface CRNeuralTextDetectorV3
+ (BOOL)computeClassCount:(void *)a3 classProbabiity:(void *)a4 fromSingleTextFeature:(id)a5 map:(const void *)a6 backgroundClass:(int)a7;
+ (CGSize)scaledImageSizeForConfiguration:(id)a3 imageSize:(CGSize)a4;
+ (CGSize)smallestImageSizeForTextWithRelativeHeight:(double)a3 originalImageSize:(CGSize)a4 configuration:(id)a5;
+ (double)scaledImageSizeForMaxSize:(double)a3 minSize:(double)a4 inputLengthLimit:(double)a5 imageSize:(double)a6 scale:(double)a7;
+ (float64x2_t)calculateTargetOutputSize:(double)a3 adjustedInputScale:(double)a4 paddedSize:(double)a5 imageSize:(double)a6 maximumSize:(double)a7 minimumSize:(uint64_t)a8 inputLengthLimit:(float64x2_t *)a9;
+ (id)supportedTextType;
+ (uint64_t)numSupportedTextType;
+ (void)computeOrientationFromSingleTextFeature:(uint64_t)a3 map:;
+ (void)computeScriptCategoryFromSingleTextFeature:(uint64_t *)a3 map:(void *)a4 scriptRatioThresholds:;
+ (void)computeTextTypeFromSingleTextFeature:(uint64_t)a3 map:;
+ (void)createImageMap:(void *)a3 targetSize:;
+ (void)createMultiChannelImageMaps:(CGFloat)a3 size:(uint64_t)a4 channels:(void *)a5;
- (BOOL)preheatWithError:(id *)a3;
- (CRNeuralTextDetectorV3)initWithConfiguration:(id)a3 owner:(id)a4 error:(id *)a5;
- (double)getBorderPoints:(char *)a3 sourceImageSize:(uint64_t)a4 outP1:(char)a5 outP2:(__n128)a6 isHorizontal:;
- (id)detectInImage:(id)a3 delegate:(id)a4 error:(id *)a5;
- (id)detectInImage:(id)a3 trackingSession:(id)a4 delegate:(id)a5 error:(id *)a6;
- (id)enumerateTilesForImage:(id)a3 cachedSurface:(__IOSurface *)a4 guidedByScoreMapFullTile:(void *)a5 delegate:(id)a6 block:(id)a7;
- (id)processFineScaleMaps:(uint64_t *)a3 adjustedSize:(CRIntermediateDetectorResult *)a4 fullTileMaps:(int64x2_t *)a5 adjustedFullTileSize:(void *)a6 targetSize:(void *)a7 targetSizeFullTile:(double)a8 intermediateResults:(double)a9 withScaleIds:(double)a10 sourceImageSize:(double)a11 tileRects:(float64_t)a12 trackingSession:(float64_t)a13;
- (void)addIntermediateResults:(uint64_t)a3 idxLog:(void *)a4 adjustedSize:(uint64_t)a5 quadFeatures:(uint64_t)a6 nmsOutputScale:(uint64_t)a7;
- (void)computeClassificationType:(void *)a3 fromTextFeatures:(uint64_t *)a4 fineScaleMap:(uint64_t *)a5 fullTileMap:(void *)a6 withScaleIds:;
- (void)getBorderPoints:(float64x2_t *)a3 sourceImageSize:(char)a4 outP1:(float64_t)a5 outP2:(float64_t)a6 isHorizontal:;
- (void)runFullTileInferenceOnImage:(id)a3 cachedSurface:(__IOSurface *)a4 outputMaps:(void *)a5 inputSize:(CGSize *)a6 outputSize:(CGSize *)a7 modelContext:(id)a8 delegate:(id)a9 error:(id *)a10;
- (void)runNMSForDirection:(uint64_t *)a3 adjustedSize:(void *)a4 fullTileMaps:(void *)a5 adjustedFullTileSize:(void *)a6 targetSize:(int)a7 targetSizeFullTile:(id *)a8 intermediateResults:(uint64_t *)a9 withScaleIds:(unsigned __int8)a10 sourceImageSize:(unsigned __int8)a11 tileRects:isHorizontal:resultTextFeatures:quadFeatures:isFineScaleVerticalLinkActive:isFullTileVerticalLinkActive:idxLog:;
- (void)updateNMS:(uint64_t)a3 andQuadFeatures:(uint64_t *)a4 inMaps:(void *)a5 tileRects:(uint64_t)a6 intermediateResult:(int)a7 isFullTile:(float)a8 isHorizontal:adjustedSize:randomPrefix:;
@end

@implementation CRNeuralTextDetectorV3

+ (void)computeScriptCategoryFromSingleTextFeature:(uint64_t *)a3 map:(void *)a4 scriptRatioThresholds:
{
  v120[16] = *MEMORY[0x1E69E9840];
  v99 = a2;
  v5 = a4;
  objc_opt_self();
  v6 = +[CRScriptCategoryV1 supportedCategories];
  v7 = [v6 count];

  v120[0] = 0;
  std::vector<double>::vector[abi:ne200100](v114, v7);
  v120[0] = 0;
  std::vector<long>::vector[abi:ne200100](&v112, v7);
  [objc_opt_class() computeClassCount:&v112 classProbabiity:v114 fromSingleTextFeature:v99 map:a3 backgroundClass:0];
  v100 = v5;
  v97 = v5;
  objc_opt_self();
  v8 = v112;
  if (v112 == v113)
  {
    v10 = v112;
  }

  else
  {
    v9 = v112 + 8;
    v10 = v112;
    if (v112 + 8 != v113)
    {
      v11 = *v112;
      v10 = v112;
      v12 = v112 + 8;
      do
      {
        v14 = *v12;
        v12 += 8;
        v13 = v14;
        v15 = v11 < v14;
        if (v11 <= v14)
        {
          v11 = v13;
        }

        if (v15)
        {
          v10 = v9;
        }

        v9 = v12;
      }

      while (v12 != v113);
    }
  }

  v16 = +[CRScriptCategoryV1 supportedCategories];
  v101 = (v10 - v8) >> 3;
  v17 = [v16 objectAtIndexedSubscript:?];

  v18 = +[CRScriptCategoryV1 supportedCategories];
  v19 = +[CRScriptCategoryV1 latinCyrillic];
  obj = [v18 indexOfObject:v19];

  v20 = +[CRScriptCategoryV1 supportedCategories];
  v21 = +[CRScriptCategoryV1 chinese];
  v22 = [v20 indexOfObject:v21];

  v23 = +[CRScriptCategoryV1 supportedCategories];
  v24 = +[CRScriptCategoryV1 common];
  v25 = [v23 indexOfObject:v24];

  v26 = +[CRScriptCategoryV1 supportedCategories];
  v27 = +[CRScriptCategoryV1 korean];
  v28 = [v26 indexOfObject:v27];

  v29 = +[CRScriptCategoryV1 supportedCategories];
  v30 = +[CRScriptCategoryV1 japanese];
  v31 = [v29 indexOfObject:v30];

  v32 = +[CRScriptCategoryV1 supportedCategories];
  v33 = +[CRScriptCategoryV1 thai];
  v34 = [v32 indexOfObject:v33];

  v35 = +[CRScriptCategoryV1 supportedCategories];
  v36 = +[CRScriptCategoryV1 arabic];
  v37 = [v35 indexOfObject:v36];

  if (*(v112 + v28) <= *(v112 + v22))
  {
    v38 = v22;
  }

  else
  {
    v38 = v28;
  }

  if (*(v112 + v38) <= *(v112 + v31))
  {
    v38 = v31;
  }

  if (*(v112 + v38) <= *(v112 + v34))
  {
    v38 = v34;
  }

  if (*(v112 + v38) <= *(v112 + v37))
  {
    v39 = v37;
  }

  else
  {
    v39 = v38;
  }

  v40 = +[CRScriptCategoryV1 unknown];
  v41 = v17 == v40;

  if (!v41)
  {
    v42 = *(v112 + v25) + *(v112 + obj);
    if (v42 < 1 || ([v100 objectForKeyedSubscript:@"CRScriptThresholdPreferredLatinCJK"], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "floatValue"), v45 = (v44 * *(v112 + v39)) < v42, v43, v101 = obj, !v45))
    {
      v46 = +[CRScriptCategoryV1 japanese];
      if (v17 == v46)
      {

        v101 = v31;
        goto LABEL_53;
      }

      v47 = *(v112 + v31);
      if (v47 < 1)
      {
      }

      else
      {
        v48 = *(v112 + v39) == v47;

        v101 = v31;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      v49 = +[CRScriptCategoryV1 korean];
      if (v17 == v49)
      {

        v101 = v28;
        goto LABEL_53;
      }

      v50 = *(v112 + v28);
      if (v50 < 1)
      {
      }

      else
      {
        v51 = *(v112 + v39) == v50;

        v101 = v28;
        if (v51)
        {
          goto LABEL_53;
        }
      }

      v52 = +[CRScriptCategoryV1 chinese];
      if (v17 == v52)
      {

        v101 = v22;
        goto LABEL_53;
      }

      v53 = *(v112 + v22);
      if (v53 < 1)
      {
      }

      else
      {
        v54 = *(v112 + v39) == v53;

        v101 = v22;
        if (v54)
        {
          goto LABEL_53;
        }
      }

      v55 = +[CRScriptCategoryV1 thai];
      if (v17 == v55)
      {

        v101 = v34;
        goto LABEL_53;
      }

      v56 = *(v112 + v34);
      if (v56 < 1)
      {
      }

      else
      {
        v57 = *(v112 + v39) == v56;

        v101 = v34;
        if (v57)
        {
          goto LABEL_53;
        }
      }

      v58 = +[CRScriptCategoryV1 arabic];
      if (v17 == v58)
      {

        v101 = v37;
      }

      else
      {
        v59 = *(v112 + v37) > 0;

        v60 = obj;
        if (v59)
        {
          v60 = v37;
        }

        v101 = v60;
      }
    }
  }

LABEL_53:

  __p = 0;
  v110 = 0;
  v111 = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(&__p, v112, v113, (v113 - v112) >> 3);
  v102 = v99;
  objc_opt_self();
  v61 = [MEMORY[0x1E695DF70] array];
  v62 = objc_opt_new();
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v63 = +[CRScriptCategoryV1 supportedCategories];
  obja = v63;
  v64 = [v63 countByEnumeratingWithState:&v115 objects:v120 count:16];
  if (v64)
  {
    LODWORD(v65) = 0;
    v66 = *v116;
    do
    {
      v67 = 0;
      v65 = v65;
      do
      {
        if (*v116 != v66)
        {
          objc_enumerationMutation(obja);
        }

        v68 = *(*(&v115 + 1) + 8 * v67);
        v69 = [CRScriptCategoryResult alloc];
        v70 = *(v114[0] + v65);
        *&v70 = v70;
        v71 = [(CRScriptCategoryResult *)v69 initWithScriptCategory:v68 probability:v70];
        [v61 addObject:v71];

        v72 = [MEMORY[0x1E696AD98] numberWithLong:*(__p + v65)];
        [v62 setObject:v72 forKeyedSubscript:v68];

        ++v65;
        ++v67;
      }

      while (v64 != v67);
      v63 = obja;
      v64 = [obja countByEnumeratingWithState:&v115 objects:v120 count:16];
    }

    while (v64);
  }

  [v102 setScriptCategoryResults:v61];
  v73 = +[CRScriptCategoryV1 supportedCategories];
  v74 = [v73 objectAtIndexedSubscript:v101];
  [v102 setSelectedScriptCategory:v74];

  [v102 setScriptCounts:v62];
  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  v75 = **a3;
  v77 = *(v75 + 8);
  v76 = *(v75 + 16);
  v78 = v102;
  objc_opt_self();
  v79 = +[CRScriptCategoryV1 supportedCategories];
  v80 = +[CRScriptCategoryV1 common];
  v81 = [v79 indexOfObject:v80];

  v82 = [v78 selectedScriptCategory];
  v83 = +[CRScriptCategoryV1 common];
  if ([v82 isEqual:v83])
  {
    v84 = *(v114[0] + v81);
  }

  else
  {
    v84 = *(v114[0] + v101) + *(v114[0] + v81);
  }

  [v78 sizeForImageSize:{v76, v77}];
  v87 = v84;
  if (v87 <= 0.79)
  {
    if (fmin(v86, v85) / fmax(v86, v85) < 0.150000006 || v87 < 0.79)
    {
      goto LABEL_71;
    }

LABEL_70:
    v88 = 0;
    goto LABEL_72;
  }

  if (v87 >= 0.79)
  {
    goto LABEL_70;
  }

LABEL_71:
  v88 = 1;
LABEL_72:
  [v78 setUseSequenceScriptLocale:v88];

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v89 = [v78 subFeatures];
  v90 = [v89 countByEnumeratingWithState:&v105 objects:v119 count:16];
  if (v90)
  {
    v91 = *v106;
    do
    {
      for (i = 0; i != v90; ++i)
      {
        if (*v106 != v91)
        {
          objc_enumerationMutation(v89);
        }

        v93 = *(*(&v105 + 1) + 8 * i);
        v94 = [v78 scriptCategoryResults];
        [v93 setScriptCategoryResults:v94];

        v95 = [v78 selectedScriptCategory];
        [v93 setSelectedScriptCategory:v95];

        v96 = [v78 scriptCounts];
        [v93 setScriptCounts:v96];

        [v93 setUseSequenceScriptLocale:{objc_msgSend(v78, "useSequenceScriptLocale")}];
      }

      v90 = [v89 countByEnumeratingWithState:&v105 objects:v119 count:16];
    }

    while (v90);
  }

  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }

  if (v114[0])
  {
    v114[1] = v114[0];
    operator delete(v114[0]);
  }
}

+ (uint64_t)numSupportedTextType
{
  objc_opt_self();
  v0 = +[CRNeuralTextDetectorV3 supportedTextType];
  v1 = [v0 count];

  return v1;
}

+ (id)supportedTextType
{
  objc_opt_self();
  if (_MergedGlobals_34 != -1)
  {
    dispatch_once(&_MergedGlobals_34, &__block_literal_global_29);
  }

  v0 = qword_1ED960250;

  return v0;
}

void __63__CRNeuralTextDetectorV3_CRDetectorTextType__supportedTextType__block_invoke()
{
  v0 = qword_1ED960250;
  qword_1ED960250 = &unk_1F2BFB188;
}

+ (void)computeTextTypeFromSingleTextFeature:(uint64_t)a3 map:
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  objc_opt_class();
  v5 = +[CRNeuralTextDetectorV3 numSupportedTextType];
  __p = 0;
  std::vector<double>::vector[abi:ne200100](&v36, v5);
  v33 = 0;
  std::vector<long>::vector[abi:ne200100](&__p, v5);
  v6 = [objc_opt_class() computeClassCount:&__p classProbabiity:&v36 fromSingleTextFeature:v4 map:a3 backgroundClass:0];
  v7 = __p;
  if (v6)
  {
    if (__p == v35)
    {
      v9 = __p;
    }

    else
    {
      v8 = __p + 8;
      v9 = __p;
      if (__p + 8 != v35)
      {
        v10 = *__p;
        v9 = __p;
        v11 = __p + 8;
        do
        {
          v13 = *v11;
          v11 += 8;
          v12 = v13;
          v14 = v10 < v13;
          if (v10 <= v13)
          {
            v10 = v12;
          }

          if (v14)
          {
            v9 = v8;
          }

          v8 = v11;
        }

        while (v11 != v35);
      }
    }

    v15 = v36;
    v16 = (v36 + 8);
    if (v36 != v37 && v16 != v37)
    {
      v18 = *v36;
      v19 = (v36 + 8);
      do
      {
        v20 = *v19++;
        v21 = v20;
        if (v18 < v20)
        {
          v18 = v21;
          v15 = v16;
        }

        v16 = v19;
      }

      while (v19 != v37);
    }

    if (*v15 > 0.5)
    {
      objc_opt_class();
      v22 = +[CRNeuralTextDetectorV3 supportedTextType];
      v23 = [v22 objectAtIndex:((v9 - v7) >> 3)];
      v24 = [v23 unsignedIntegerValue];

      [v4 setTextType:v24];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v25 = [v4 subFeatures];
      v26 = [v25 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v26)
      {
        v27 = *v30;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v30 != v27)
            {
              objc_enumerationMutation(v25);
            }

            [*(*(&v29 + 1) + 8 * i) setTextType:{objc_msgSend(v4, "textType")}];
          }

          v26 = [v25 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v26);
      }

      v7 = __p;
    }
  }

  if (v7)
  {
    v35 = v7;
    operator delete(v7);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }
}

- (CRNeuralTextDetectorV3)initWithConfiguration:(id)a3 owner:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = CRNeuralTextDetectorV3;
  v10 = [(CRNeuralTextDetector *)&v18 init];
  if (!v10)
  {
    goto LABEL_9;
  }

  if (+[CRNeuralTextDetectorV3 useE5Detector])
  {
    v11 = [[CRTextDetectorModelV3E5ML alloc] initWithConfiguration:v8 owner:v9 error:a5];
    [(CRNeuralTextDetectorV3 *)v10 setModelE5:v11];
  }

  else
  {
    v11 = [[CRTextDetectorModelV3CoreML alloc] initWithConfiguration:v8 owner:v9 error:a5];
    [(CRNeuralTextDetectorV3 *)v10 setModelEIR:v11];
  }

  v12 = [(CRNeuralTextDetectorV3 *)v10 modelE5];
  if (v12)
  {

LABEL_8:
    [(CRNeuralTextDetector *)v10 setConfiguration:v8];
LABEL_9:
    v14 = v10;
    goto LABEL_10;
  }

  v13 = [(CRNeuralTextDetectorV3 *)v10 modelEIR];

  if (v13)
  {
    goto LABEL_8;
  }

  v16 = CROSLogForCategory(2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_ERROR, "Could not initialize V3 detector model", v17, 2u);
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (BOOL)preheatWithError:(id *)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (+[CRNeuralTextDetectorV3 useE5Detector])
  {
    v22 = *MEMORY[0x1E69660D8];
    v23[0] = MEMORY[0x1E695E0F8];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    texture = 0;
    v6 = [(CRNeuralTextDetector *)self configuration];
    [v6 tileSize];
    v8 = v7;
    v9 = [(CRNeuralTextDetector *)self configuration];
    [v9 tileSize];
    CVPixelBufferCreate(*MEMORY[0x1E695E480], v8, v10, 0x42475241u, v5, &texture);

    v11 = [(CRNeuralTextDetectorV3 *)self modelE5];
    v12 = [v11 createExecutionContext];

    v13 = [v12 predictionFromImage:texture error:a3];
    CVPixelBufferRelease(texture);
  }

  else
  {
    texture = 0;
    v14 = [(CRNeuralTextDetector *)self configuration];
    [v14 tileSize];
    v16 = v15;
    v17 = [(CRNeuralTextDetector *)self configuration];
    [v17 tileSize];
    CVPixelBufferCreate(*MEMORY[0x1E695E480], v16, v18, 0x42475241u, MEMORY[0x1E695E0F8], &texture);

    v19 = [(CRNeuralTextDetectorV3 *)self modelEIR];
    v13 = [v19 predictionFromImage:texture error:a3];

    CVPixelBufferRelease(texture);
  }

  return v13 != 0;
}

+ (CGSize)smallestImageSizeForTextWithRelativeHeight:(double)a3 originalImageSize:(CGSize)a4 configuration:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = [a5 prioritization];
  v9 = [v8 isEqualToString:@"CRImageReaderPrioritizationPerformance"];

  v10 = 4032.0;
  if (v9)
  {
    v10 = 2800.0;
  }

  if (width <= height)
  {
    v11 = height;
  }

  else
  {
    v11 = width;
  }

  v12 = v10 / v11;
  if (a3 <= 0.0)
  {
    v19 = 1.0;
    v18 = v12 <= 1.0;
  }

  else
  {
    if (width >= height)
    {
      v13 = height;
    }

    else
    {
      v13 = width;
    }

    v14 = 480.0 / v13;
    v15 = v12;
    if (30.0 / (height * a3) < v15)
    {
      v15 = 30.0 / (height * a3);
    }

    v16 = v14;
    v17 = v15 <= v14;
    if (v15 > v14)
    {
      v16 = v15;
    }

    v12 = v15;
    if (v17)
    {
      v12 = v14;
    }

    v18 = v16 <= 1.0;
    v19 = 1.0;
  }

  if (!v18)
  {
    v12 = v19;
  }

  v20 = v12;
  v21 = width * v12;
  v22 = llroundf(v21);
  *&v20 = height * v20;
  v23 = llroundf(*&v20);
  result.height = v23;
  result.width = v22;
  return result;
}

+ (double)scaledImageSizeForMaxSize:(double)a3 minSize:(double)a4 inputLengthLimit:(double)a5 imageSize:(double)a6 scale:(double)a7
{
  objc_opt_self();
  if (a3 >= a6)
  {
    v17 = a6;
  }

  else
  {
    v17 = a3;
  }

  if (a4 >= a7)
  {
    v18 = a7;
  }

  else
  {
    v18 = a4;
  }

  v19 = v17 / a6;
  v20 = v18 / a7;
  if (v19 <= v20)
  {
    v19 = v20;
  }

  v21 = v19;
  v22 = 0.0;
  if (v21 < 1.0)
  {
    v23 = a6 <= a7 ? a7 : a6;
    v22 = a5 / v23;
    if (v21 < v22)
    {
      v22 = v21;
    }
  }

  v24 = a1 / a6;
  if (a1 / a6 >= a2 / a7)
  {
    v24 = a2 / a7;
  }

  if (v24 > 1.0)
  {
    v24 = 1.0;
  }

  v25 = v24;
  if (v22 < v25)
  {
    v22 = v25;
  }

  *a9 = v22;
  return (a6 * v22 + 0.5);
}

+ (float64x2_t)calculateTargetOutputSize:(double)a3 adjustedInputScale:(double)a4 paddedSize:(double)a5 imageSize:(double)a6 maximumSize:(double)a7 minimumSize:(uint64_t)a8 inputLengthLimit:(float64x2_t *)a9
{
  v21 = objc_opt_self();
  v22.f64[0] = [(CRNeuralTextDetectorV3 *)a3 scaledImageSizeForMaxSize:a4 minSize:a5 inputLengthLimit:a6 imageSize:a7 scale:a1, a2, v21, a10];
  v22.f64[1] = v23;
  v24 = vcvt_s32_f32(vrndp_f32(vcvt_f32_f64(vmulq_f64(v22, vdupq_n_s64(0x3FA0000000000000uLL)))));
  v25 = vcgt_s32(0xF0000000FLL, v24);
  v26.i64[0] = v25.i32[0];
  v26.i64[1] = v25.i32[1];
  v27 = vbslq_s8(v26, vdupq_n_s64(0x407E000000000000uLL), vcvtq_f64_f32(vcvt_f32_s32(vshl_n_s32(v24, 5uLL))));
  *a11 = v27;
  v28 = vaddq_f64(v27, vsubq_f64(v22, v27));
  __asm { FMOV            V1.2D, #0.5 }

  result = vcvtq_f64_f32(vrndp_f32(vcvt_f32_f64(vmulq_f64(v28, _Q1))));
  *a9 = result;
  return result;
}

- (id)enumerateTilesForImage:(id)a3 cachedSurface:(__IOSurface *)a4 guidedByScoreMapFullTile:(void *)a5 delegate:(id)a6 block:(id)a7
{
  v98 = a3;
  v97 = a6;
  v89 = a7;
  if (v89)
  {
    v11 = [(CRNeuralTextDetector *)self configuration];
    [v11 tileOverlap];
    v13 = v12;

    v14 = [(CRNeuralTextDetector *)self configuration];
    [v14 tileSize];
    v91 = v16;
    v92 = v15;

    v17 = [v98 width];
    v18 = [v98 height];
    v19 = v92 - v13;
    v20 = (v17 - v13) / (v92 - v13);
    v21 = vcvtps_s32_f32(v20);
    v83 = v91 - v13;
    v22 = (v18 - v13) / (v91 - v13);
    v95 = v21;
    v85 = vcvtps_s32_f32(v22);
    v23 = v85 * v21;
    v90 = [MEMORY[0x1E695DF70] arrayWithCapacity:v85 * v21];
    LODWORD(__p[0]) = 0;
    std::vector<float>::vector[abi:ne200100](v106, v23);
    std::vector<CGRect>::vector[abi:ne200100](__p, v23);
    v104 = 0.0;
    v94 = 1.0;
    if (*a5 && (-[CRNeuralTextDetector configuration](self, "configuration"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 useScaleTraversal], v24, v25))
    {
      v96 = 0;
      v26 = (v92 / [v98 width] * *(*a5 + 16));
      v27 = (v91 / [v98 height] * *(*a5 + 8));
      v28 = (v26 * v27) / v92 / v91;
      *&v28 = v28 + v28 + v28 + v28;
      v94 = *&v28;
    }

    else
    {
      v27 = 0;
      v26 = 0;
      v96 = 1;
    }

    v103 = 0;
    if (v85 < 1)
    {
      v54 = 0;
    }

    else
    {
      v87 = 0;
      v88 = 0;
      v84 = v27;
      do
      {
        if (v95 >= 1)
        {
          v29 = 0;
          v93 = v87 * v95;
          do
          {
            x = v19 * v29;
            if (x >= 0.0)
            {
              height = v91;
              width = v92;
              y = v83 * v87;
            }

            else
            {
              v108.origin.x = v19 * v29;
              v108.origin.y = v83 * v87;
              v108.size.height = v91;
              v108.size.width = v92;
              v109 = CGRectOffset(v108, -x, 0.0);
              x = v109.origin.x;
              y = v109.origin.y;
              width = v109.size.width;
              height = v109.size.height;
            }

            if (width + x >= [v98 width])
            {
              v34 = [v98 width];
              v110.origin.x = x;
              v110.origin.y = y;
              v110.size.width = width;
              v110.size.height = height;
              v111 = CGRectOffset(v110, v34 - (width + x), 0.0);
              x = v111.origin.x;
              y = v111.origin.y;
              width = v111.size.width;
              height = v111.size.height;
            }

            if (y < 0.0)
            {
              v112.origin.x = x;
              v112.origin.y = y;
              v112.size.width = width;
              v112.size.height = height;
              v113 = CGRectOffset(v112, 0.0, -y);
              x = v113.origin.x;
              y = v113.origin.y;
              width = v113.size.width;
              height = v113.size.height;
            }

            if (height + y >= [v98 height])
            {
              v35 = [v98 height];
              v114.origin.x = x;
              v114.origin.y = y;
              v114.size.width = width;
              v114.size.height = height;
              v115 = CGRectOffset(v114, 0.0, v35 - (height + y));
              x = v115.origin.x;
              y = v115.origin.y;
              width = v115.size.width;
              height = v115.size.height;
            }

            v36 = v29 + v93;
            v37 = (__p[0] + 32 * v29 + 32 * v93);
            *v37 = x;
            v37[1] = y;
            v37[2] = width;
            v37[3] = height;
            if (!v97 || ([v98 size], objc_msgSend(v97, "shouldRunTileForRect:imageSize:", x, y, width, height, v38, v39)))
            {
              v40 = [v98 width];
              v41 = [v98 height];
              v42 = [v98 width];
              v43 = [v98 height];
              v44 = x / v40;
              v45 = [MEMORY[0x1E696B098] valueWithRect:{v44, y / v41, width / v42, height / v43}];
              [v90 addObject:v45];

              if (v96)
              {
                v96 = 1;
              }

              else
              {
                if (v27)
                {
                  v46 = (y / v41 * *(*a5 + 8));
                  v47 = (v44 * *(*a5 + 16));
                  do
                  {
                    __C = 0.2;
                    __B = 0.0;
                    v48 = malloc_type_calloc(v26, 4uLL, 0x100004052888210uLL);
                    __NHigh = 0;
                    __NLow = 0;
                    vDSP_vclipc((**a5 + 4 * *(*a5 + 16) * v46 + 4 * v47), 1, &__B, &__C, v48, 1, v26, &__NLow, &__NHigh);
                    free(v48);
                    v49 = v106[0];
                    *(v106[0] + v36) = *(v106[0] + v36) + __NHigh;
                    ++v46;
                    --v27;
                  }

                  while (v27);
                  v27 = v84;
                }

                else
                {
                  v49 = v106[0];
                }

                if (v49[v36] <= 0.0)
                {
                  v96 = 0;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v98 imageByCroppingRectangle:a4 toSurface:{x, y, width, height}];
                  }

                  else
                  {
                    [v98 imageByCroppingRectangle:{x, y, width, height}];
                  }
                  v50 = ;
                  v51 = [v50 pixelBuffer];
                  v104 = 0.0;
                  v89[2](v89, v51, &v104, &v103, x, y, width, height);
                  v96 = (v94 * v104) > *(v106[0] + v36);
                  ++v88;
                }
              }

              if ((v103 & 1) != 0 || [(CRNeuralTextDetector *)self shouldCancel])
              {
                break;
              }
            }

            ++v29;
          }

          while (v29 != v95);
        }

        if (v103)
        {
          break;
        }

        v52 = [(CRNeuralTextDetector *)self shouldCancel];
        v53 = ++v87 == v85 || v52;
      }

      while ((v53 & 1) == 0);
      v54 = v88 != 0;
    }

    if (v96 || v54 || (v56 = v85 / 2 * v95 + v95 / 2, v57 = (__p[0] + 32 * v56), v59 = *v57, v58 = v57[1], v61 = v57[2], v60 = v57[3], v97) && ([v98 size], (objc_msgSend(v97, "shouldRunTileForRect:imageSize:", v59, v58, v61, v60, v62, v63) & 1) == 0))
    {
      if (v85 >= 1 && v96)
      {
        goto LABEL_56;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v98 imageByCroppingRectangle:a4 toSurface:{v59, v58, v61, v60}];
      }

      else
      {
        [v98 imageByCroppingRectangle:{v59, v58, v61, v60}];
      }
      v64 = ;
      v65 = [v64 pixelBuffer];
      v104 = 0.0;
      v89[2](v89, v65, &v104, &v103, *(__p[0] + 4 * v56), *(__p[0] + 4 * v56 + 1), *(__p[0] + 4 * v56 + 2), *(__p[0] + 4 * v56 + 3));
      if (v104 <= 0.0)
      {
      }

      else
      {
        *(v106[0] + v56) = fmaxf(v94 * v104, 1.0);

        if (v85 > 0)
        {
LABEL_56:
          v66 = 0;
          while (v95 < 1)
          {
LABEL_73:
            if ((v103 & 1) == 0)
            {
              v80 = [(CRNeuralTextDetector *)self shouldCancel];
              v81 = ++v66 == v85 || v80;
              if ((v81 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_80;
          }

          v67 = 0;
          v68 = v66 * v95;
          while (1)
          {
            while (*(v106[0] + v67 + v68) >= v94)
            {
LABEL_66:
              if ((v103 & 1) == 0)
              {
                v78 = [(CRNeuralTextDetector *)self shouldCancel];
                v79 = ++v67 == v95 || v78;
                if ((v79 & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_73;
            }

            v69 = (__p[0] + 32 * v67 + 32 * v68);
            v70 = *v69;
            v71 = v69[1];
            v72 = v69[2];
            v73 = v69[3];
            if (!v97 || ([v98 size], (objc_msgSend(v97, "shouldRunTileForRect:imageSize:", v70, v71, v72, v73, v74, v75) & 1) != 0))
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v98 imageByCroppingRectangle:a4 toSurface:{v70, v71, v72, v73}];
              }

              else
              {
                [v98 imageByCroppingRectangle:{v70, v71, v72, v73}];
              }
              v76 = ;
              v77 = [v76 pixelBuffer];
              v104 = 1.0;
              v89[2](v89, v77, &v104, &v103, v70, v71, v72, v73);

              goto LABEL_66;
            }

            if (++v67 == v95)
            {
              goto LABEL_73;
            }
          }
        }
      }
    }

LABEL_80:
    v55 = v90;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v106[0])
    {
      v106[1] = v106[0];
      operator delete(v106[0]);
    }
  }

  else
  {
    v55 = MEMORY[0x1E695E0F0];
  }

  return v55;
}

+ (void)createImageMap:(void *)a3 targetSize:
{
  v5 = a3;
  objc_opt_self();
  v3 = [v5 shape];
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 integerValue];

  operator new();
}

+ (void)createMultiChannelImageMaps:(CGFloat)a3 size:(uint64_t)a4 channels:(void *)a5
{
  v25 = a5;
  objc_opt_self();
  v9 = [v25 strides];
  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v10 integerValue];

  v12 = [v25 strides];
  v13 = [v12 objectAtIndexedSubscript:1];
  v14 = [v13 integerValue];

  v28.width = a2;
  v28.height = a3;
  CRDetectorOutputMaps::createMaps(a6, v28, a1);
  v15 = [v25 dataPointer];
  if (a6 >= 1)
  {
    v16 = v15;
    v17 = 0;
    v18 = vcvtd_n_u64_f64(a2, 2uLL);
    v19 = 4 * v11;
    v20 = 4 * v14;
    do
    {
      if (a3 > 0.0)
      {
        v21 = **(*a1 + 8 * v17);
        v22 = 1;
        v23 = v16;
        do
        {
          memcpy(v21, v23, v18);
          v24 = v22++;
          v23 += v20;
          v21 += 4 * a2;
        }

        while (a3 > v24);
      }

      ++v17;
      v16 += v19;
    }

    while (v17 != a6);
  }
}

- (id)detectInImage:(id)a3 delegate:(id)a4 error:(id *)a5
{
  v5 = [(CRNeuralTextDetectorV3 *)self detectInImage:a3 trackingSession:0 delegate:a4 error:a5];

  return v5;
}

- (id)detectInImage:(id)a3 trackingSession:(id)a4 delegate:(id)a5 error:(id *)a6
{
  v135 = *MEMORY[0x1E69E9840];
  v58 = a3;
  v61 = a4;
  v60 = a5;
  v129[0] = 0;
  v129[1] = v129;
  v129[2] = 0x9812000000;
  v129[3] = __Block_byref_object_copy__14;
  v129[4] = __Block_byref_object_dispose__14;
  v129[5] = &unk_1B4305E9E;
  memset(&v129[6], 0, 32);
  v130 = 0u;
  memset(v131, 0, sizeof(v131));
  v132 = 0u;
  v133 = 0;
  v124[0] = 0;
  v124[1] = v124;
  v124[2] = 0x9812000000;
  v124[3] = __Block_byref_object_copy__14;
  v124[4] = __Block_byref_object_dispose__14;
  v124[5] = &unk_1B4305E9E;
  memset(&v124[6], 0, 32);
  v125 = 0u;
  memset(v126, 0, sizeof(v126));
  v127 = 0u;
  v128 = 0;
  v118 = 0;
  v119 = &v118;
  v120 = 0x3032000000;
  v121 = __Block_byref_object_copy__9;
  v122 = __Block_byref_object_dispose__10;
  v123 = 0;
  v117[0] = 0;
  v117[1] = v117;
  v117[2] = 0x4012000000;
  v117[3] = __Block_byref_object_copy__11;
  v117[4] = __Block_byref_object_dispose__12;
  v117[5] = &unk_1B4305E9E;
  v116[0] = 0;
  v116[1] = v116;
  v116[2] = 0x4012000000;
  v116[3] = __Block_byref_object_copy__11;
  v116[4] = __Block_byref_object_dispose__12;
  v116[5] = &unk_1B4305E9E;
  v115[0] = 0;
  v115[1] = v115;
  v115[2] = 0x4012000000;
  v115[3] = __Block_byref_object_copy__11;
  v115[4] = __Block_byref_object_dispose__12;
  v115[5] = &unk_1B4305E9E;
  v114[0] = 0;
  v114[1] = v114;
  v114[2] = 0x4012000000;
  v114[3] = __Block_byref_object_copy__11;
  v114[4] = __Block_byref_object_dispose__12;
  v114[5] = &unk_1B4305E9E;
  v10 = [(CRNeuralTextDetector *)self configuration];
  v11 = [v10 disableScriptDetection];

  v12 = [(CRNeuralTextDetector *)self configuration];
  v13 = [v12 disableTextTypeDetection];

  if (v60)
  {
    v14 = [v60 detectTables];
    if (v61)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v16 = [(CRNeuralTextDetector *)self configuration];
    v17 = [v16 detectTables];
    if (v61)
    {
      v15 = 0;
    }

    else
    {
      v15 = v17;
    }
  }

  v112[0] = 0;
  v112[1] = v112;
  v112[2] = 0x3032000000;
  v112[3] = __Block_byref_object_copy__9;
  v112[4] = __Block_byref_object_dispose__10;
  v113 = 0;
  v18 = [(CRNeuralTextDetector *)self detectorStats];
  v19 = v11 ^ 1;
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __71__CRNeuralTextDetectorV3_detectInImage_trackingSession_delegate_error___block_invoke;
  v99[3] = &unk_1E7BC3400;
  v99[4] = self;
  v102 = v116;
  v59 = v58;
  v100 = v59;
  v103 = &v118;
  v104 = v117;
  v105 = v124;
  v106 = v115;
  v107 = v114;
  v57 = v60;
  v101 = v57;
  v108 = v129;
  v110 = v11 ^ 1;
  v111 = v13 ^ 1;
  v109 = v112;
  [v18 measureBlock:v99];

  v20 = v119[5];
  if (v20)
  {
    v21 = 0;
    if (a6)
    {
      *a6 = v20;
    }
  }

  else
  {
    v97[0] = 0;
    v97[1] = v97;
    v97[2] = 0x6012000000;
    v97[3] = __Block_byref_object_copy__21;
    v97[4] = __Block_byref_object_dispose__22;
    v97[5] = &unk_1B4305E9E;
    memset(v98, 0, sizeof(v98));
    v91 = 0;
    v92 = &v91;
    v93 = 0x3032000000;
    v94 = __Block_byref_object_copy__9;
    v95 = __Block_byref_object_dispose__10;
    v96 = 0;
    v89[0] = 0;
    v89[1] = v89;
    v89[2] = 0x4812000000;
    v89[3] = __Block_byref_object_copy__24;
    v89[4] = __Block_byref_object_dispose__25;
    v89[5] = &unk_1B4305E9E;
    memset(v90, 0, sizeof(v90));
    v83 = 0;
    v84 = &v83;
    v85 = 0x3032000000;
    v86 = __Block_byref_object_copy__9;
    v87 = __Block_byref_object_dispose__10;
    v88 = 0;
    v22 = [(CRNeuralTextDetector *)self postProcStats];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __71__CRNeuralTextDetectorV3_detectInImage_trackingSession_delegate_error___block_invoke_27;
    v66[3] = &unk_1E7BC3428;
    v66[4] = self;
    v69 = &v91;
    v70 = v129;
    v71 = v117;
    v72 = v124;
    v73 = v115;
    v74 = v116;
    v75 = v114;
    v76 = &v83;
    v77 = v97;
    v23 = v59;
    v67 = v23;
    v78 = v112;
    v80 = v19;
    v81 = v15;
    v68 = v61;
    v79 = v89;
    v82 = v13 ^ 1;
    [v22 measureBlock:v66];

    v24 = objc_opt_new();
    v25 = [(CRNeuralTextDetector *)self configuration];
    v26 = [v25 skipVerticalText];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v27 = v92[5];
    v28 = [v27 countByEnumeratingWithState:&v62 objects:v134 count:16];
    if (v28)
    {
      v29 = *v63;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v63 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v62 + 1) + 8 * i);
          if (!v26 || ([*(*(&v62 + 1) + 8 * i) isVerticalLayout] & 1) == 0)
          {
            v32 = objc_opt_class();
            [v23 size];
            v33 = [v32 _lineRegionFromLineTextFeature:v31 imageSize:?];
            [v24 addObject:v33];
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v62 objects:v134 count:16];
      }

      while (v28);
    }

    CRLogger = CRLogger::getCRLogger(v34);
    if (*CRLogger == 1 && (CRLogger[8] & 1) != 0)
    {
      v36 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVImageBuffer:{objc_msgSend(v23, "pixelBuffer")}];
      v37 = [CRTextFeature overlayFeaturesQuadVertices:v92[5] onImage:v36 showSubFeatures:0];
      v38 = rand();
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/%f_quad.png", *&v38];
      v40 = [[CRImage alloc] initWithCIImage:v37 toColorSpace:1];
      [(CRImage *)v40 writeToFile:v39];
      v41 = [CRTextFeature overlayFeaturesPolygonVertices:v92[5] onImage:v36 showSubFeatures:0];
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/%f_polygon.png", *&v38];
      v43 = [[CRImage alloc] initWithCIImage:v41 toColorSpace:1];
      [(CRImage *)v43 writeToFile:v42];
    }

    v21 = [[CRDetectionResult alloc] initWithLines:v24];
    v44 = [v84[5] pyramidPreIntraScaleNMSTextFeatures];
    [(CRDetectionResult *)v21 setPyramidPreIntraScaleNMSTextFeatures:v44];

    v45 = [v84[5] pyramidScaleSize];
    [(CRDetectionResult *)v21 setPyramidScaleSize:v45];

    v46 = [v84[5] pyramidScaleName];
    [(CRDetectionResult *)v21 setPyramidScaleName:v46];

    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    [(CRDetectionResult *)v21 setTableRegions:v47];

    _Block_object_dispose(&v83, 8);
    _Block_object_dispose(v89, 8);
    v83 = v90;
    std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](&v83);
    _Block_object_dispose(&v91, 8);

    _Block_object_dispose(v97, 8);
    std::deque<unsigned char>::~deque[abi:ne200100](v98);
  }

  _Block_object_dispose(v112, 8);
  _Block_object_dispose(v114, 8);
  _Block_object_dispose(v115, 8);
  _Block_object_dispose(v116, 8);
  _Block_object_dispose(v117, 8);
  _Block_object_dispose(&v118, 8);

  _Block_object_dispose(v124, 8);
  v97[0] = &v127;
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](v97);
  v97[0] = &v126[1];
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](v97);
  v48 = v126[0];
  v126[0] = 0;
  if (v48)
  {
    if (*v48)
    {
      free(*v48);
    }

    MEMORY[0x1B8C73EF0](v48, 0x1080C40ABB4582ELL);
  }

  v49 = *(&v125 + 1);
  *(&v125 + 1) = 0;
  if (v49)
  {
    if (*v49)
    {
      free(*v49);
    }

    MEMORY[0x1B8C73EF0](v49, 0x1080C40ABB4582ELL);
  }

  v50 = v125;
  *&v125 = 0;
  if (v50)
  {
    if (*v50)
    {
      free(*v50);
    }

    MEMORY[0x1B8C73EF0](v50, 0x1080C40ABB4582ELL);
  }

  v97[0] = &v124[7];
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](v97);
  v51 = v124[6];
  v124[6] = 0;
  if (v51)
  {
    if (*v51)
    {
      free(*v51);
    }

    MEMORY[0x1B8C73EF0](v51, 0x1080C40ABB4582ELL);
  }

  _Block_object_dispose(v129, 8);
  v124[0] = &v132;
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](v124);
  v124[0] = v131 + 1;
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](v124);
  v52 = *&v131[0];
  *&v131[0] = 0;
  if (v52)
  {
    if (*v52)
    {
      free(*v52);
    }

    MEMORY[0x1B8C73EF0](v52, 0x1080C40ABB4582ELL);
  }

  v53 = *(&v130 + 1);
  *(&v130 + 1) = 0;
  if (v53)
  {
    if (*v53)
    {
      free(*v53);
    }

    MEMORY[0x1B8C73EF0](v53, 0x1080C40ABB4582ELL);
  }

  v54 = v130;
  *&v130 = 0;
  if (v54)
  {
    if (*v54)
    {
      free(*v54);
    }

    MEMORY[0x1B8C73EF0](v54, 0x1080C40ABB4582ELL);
  }

  v124[0] = &v129[7];
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](v124);
  v55 = v129[6];
  v129[6] = 0;
  if (v55)
  {
    if (*v55)
    {
      free(*v55);
    }

    MEMORY[0x1B8C73EF0](v55, 0x1080C40ABB4582ELL);
  }

  return v21;
}

void __71__CRNeuralTextDetectorV3_detectInImage_trackingSession_delegate_error___block_invoke(uint64_t a1)
{
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v2 = CRSignpostLog_signPostOSLog;
  v3 = os_signpost_id_generate(v2);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v4 = CRSignpostLog_signPostOSLog;
  v5 = v4;
  v6 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "OCRDetectorTime", "", buf, 2u);
  }

  *buf = 0;
  v75 = buf;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__9;
  v78 = __Block_byref_object_dispose__10;
  v79 = 0;
  if (+[CRNeuralTextDetectorV3 useE5Detector])
  {
    v7 = [*(a1 + 32) modelE5];
    v8 = [v7 createExecutionContext];
    v9 = *(v75 + 5);
    *(v75 + 5) = v8;
  }

  v73 = 0.0;
  v10 = *(*(a1 + 56) + 8);
  [*(a1 + 40) size];
  v12 = v11;
  v14 = v13;
  v15 = [*(a1 + 32) configuration];
  [v15 maximumInputSize];
  v17 = v16;
  v19 = v18;
  v20 = [*(a1 + 32) configuration];
  [v20 tileSize];
  v22 = v21;
  v24 = v23;
  v25 = [*(a1 + 32) configuration];
  [v25 inputLengthLimit];
  [(CRNeuralTextDetectorV3 *)v12 calculateTargetOutputSize:v14 adjustedInputScale:v17 paddedSize:v19 imageSize:v22 maximumSize:v24 minimumSize:v26 inputLengthLimit:CRNeuralTextDetectorV3, v10 + 3, &v73, &v72];

  v27 = *(*(a1 + 56) + 8);
  if (*(v27 + 48) > 4.0 && *(v27 + 56) > 4.0)
  {
    if ([*(a1 + 32) shouldCancel])
    {
      v28 = [CRImageReader errorWithErrorCode:-3];
      v29 = *(*(a1 + 64) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      if (CRSignpostLog_onceToken != -1)
      {
        dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
      }

      v31 = CRSignpostLog_signPostOSLog;
      p_super = v31;
      if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        *v71 = 0;
LABEL_23:
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, p_super, OS_SIGNPOST_INTERVAL_END, v3, "OCRDetectorTime", "", v71, 2u);
        goto LABEL_83;
      }

      goto LABEL_83;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = *(a1 + 40);
    }

    else
    {
      v34 = -[CRImage_PixelBuffer initWithCVPixelBuffer:]([CRImage_PixelBuffer alloc], "initWithCVPixelBuffer:", [*(a1 + 40) pixelBuffer]);
    }

    p_super = &v34->super.super;
    v35 = [(CRImage_PixelBuffer *)v34 pixelBufferWithScale:*(*(a1 + 72) + 8) + 48 paddedToSize:1 adjustedToSize:1111970369 paddingMode:+[CRNeuralTextDetectorV3 format:"useE5Detector"]hardwareAcceleration:1 iosurfaceBacking:v73, v72.f64[0], v72.f64[1]];
    if (!v35)
    {
      v38 = CROSLogForCategory(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        *v71 = 0;
        _os_log_impl(&dword_1B40D2000, v38, OS_LOG_TYPE_FAULT, "NULL scaledBuffer during detection.", v71, 2u);
      }

      v39 = [CRImageReader errorWithErrorCode:-5];
      v40 = *(*(a1 + 64) + 8);
      v41 = *(v40 + 40);
      *(v40 + 40) = v39;

      if (CRSignpostLog_onceToken != -1)
      {
        dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
      }

      v42 = CRSignpostLog_signPostOSLog;
      v36 = v42;
      if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        *v71 = 0;
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, &v36->super.super, OS_SIGNPOST_INTERVAL_END, v3, "OCRDetectorTime", "", v71, 2u);
      }

      goto LABEL_82;
    }

    v36 = [[CRImage_PixelBuffer alloc] initWithCVPixelBuffer:v35];
    CVPixelBufferRelease(v35);
    v37 = [*(a1 + 32) configuration];
    if ([v37 useScaleTraversal])
    {
      v66 = 1;
    }

    else
    {
      v43 = [*(a1 + 32) configuration];
      v66 = [v43 runFullTile];
    }

    v44 = [*(a1 + 32) configuration];
    v45 = [v44 useScaleTraversal];
    if ((v45 & 1) != 0 || ([*(a1 + 32) configuration], v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "runFineScale")))
    {
      v67 = v44;
      v68 = v36;
      v46 = [*(a1 + 40) width];
      v47 = [*(a1 + 32) configuration];
      [v47 tileSize];
      if (v48 >= v46)
      {
        v50 = [*(a1 + 40) height];
        v51 = [*(a1 + 32) configuration];
        [v51 tileSize];
        v49 = v52 < v50;
      }

      else
      {
        v49 = 1;
      }

      v44 = v67;
      v36 = v68;
      if (v45)
      {
LABEL_47:

        if ([*(a1 + 32) shouldCancel])
        {
          v53 = [CRImageReader errorWithErrorCode:-3];
          v54 = *(*(a1 + 64) + 8);
          v55 = *(v54 + 40);
          *(v54 + 40) = v53;

          if (CRSignpostLog_onceToken != -1)
          {
            dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
          }

          v56 = CRSignpostLog_signPostOSLog;
          v57 = v56;
          if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v56))
          {
            goto LABEL_81;
          }

          *v71 = 0;
          v58 = v71;
LABEL_80:
          _os_signpost_emit_with_name_impl(&dword_1B40D2000, v57, OS_SIGNPOST_INTERVAL_END, v3, "OCRDetectorTime", "", v58, 2u);
LABEL_81:

LABEL_82:
          goto LABEL_83;
        }

        *v71 = 0;
        if (v66)
        {
          obj[0] = 0;
          [*(a1 + 32) runFullTileInferenceOnImage:*(a1 + 40) cachedSurface:v71 outputMaps:*(*(a1 + 80) + 8) + 48 inputSize:*(*(a1 + 88) + 8) + 48 outputSize:*(*(a1 + 96) + 8) + 48 modelContext:*(v75 + 5) delegate:*(a1 + 48) error:obj];
          objc_storeStrong((*(*(a1 + 64) + 8) + 40), obj[0]);
          if ([*(a1 + 32) shouldCancel])
          {
            v59 = [CRImageReader errorWithErrorCode:-3];
            v60 = *(*(a1 + 64) + 8);
            v61 = *(v60 + 40);
            *(v60 + 40) = v59;
          }

          if (*(*(*(a1 + 64) + 8) + 40))
          {
            if (+[CRNeuralTextDetectorV3 useE5Detector])
            {
              [*(v75 + 5) unbindPreboundInputImageSurface];
            }

            if (*v71)
            {
              CFRelease(*v71);
            }

            if (CRSignpostLog_onceToken != -1)
            {
              dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
            }

            v62 = CRSignpostLog_signPostOSLog;
            v63 = v62;
            if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
            {
              *v69 = 0;
              _os_signpost_emit_with_name_impl(&dword_1B40D2000, v63, OS_SIGNPOST_INTERVAL_END, v3, "OCRDetectorTime", "", v69, 2u);
            }

            goto LABEL_82;
          }

          if (!v49 || !*(*(*(a1 + 80) + 8) + 48))
          {
            goto LABEL_71;
          }
        }

        else if (!v49)
        {
LABEL_71:
          if (+[CRNeuralTextDetectorV3 useE5Detector])
          {
            [*(v75 + 5) unbindPreboundInputImageSurface];
          }

          if (*v71)
          {
            CFRelease(*v71);
          }

          if (CRSignpostLog_onceToken != -1)
          {
            dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
          }

          v64 = CRSignpostLog_signPostOSLog;
          v57 = v64;
          if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v64))
          {
            goto LABEL_81;
          }

          LOWORD(obj[0]) = 0;
          v58 = obj;
          goto LABEL_80;
        }

        CRDetectorOutputMaps::init((*(*(a1 + 104) + 8) + 48));
      }
    }

    else
    {
      v49 = 0;
    }

    goto LABEL_47;
  }

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v33 = CRSignpostLog_signPostOSLog;
  p_super = v33;
  if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *v71 = 0;
    goto LABEL_23;
  }

LABEL_83:

  _Block_object_dispose(buf, 8);
}

void __71__CRNeuralTextDetectorV3_detectInImage_trackingSession_delegate_error___block_invoke_18(uint64_t a1, uint64_t a2, float *a3, _BYTE *a4, float64_t a5, double a6, double a7, double a8)
{
  v57 = *MEMORY[0x1E69E9840];
  v14 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) shouldCancel])
  {
LABEL_2:
    *a4 = 1;
    goto LABEL_19;
  }

  if (+[CRNeuralTextDetectorV3 useE5Detector])
  {
    v15 = *(*(*(a1 + 40) + 8) + 40);
    v16 = *(a1 + 72);
    v17 = *(*(a1 + 48) + 8);
    obj = *(v17 + 40);
    v18 = [v15 prebindInputImageSurface:v16 error:&obj];
    objc_storeStrong((v17 + 40), obj);
    if ((v18 & 1) == 0)
    {
      v39 = CROSLogForCategory(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        v40 = [*(*(*(a1 + 48) + 8) + 40) description];
        LODWORD(v52) = 138412290;
        *(&v52 + 4) = v40;
        _os_log_impl(&dword_1B40D2000, v39, OS_LOG_TYPE_FAULT, "Failed to prebind input image surface: %@", &v52, 0xCu);
      }

      goto LABEL_2;
    }
  }

  *&v52 = 0;
  *(&v52 + 1) = &v52;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__9;
  v55 = __Block_byref_object_dispose__10;
  v56 = 0;
  v19 = [*(a1 + 32) inferenceStats];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __71__CRNeuralTextDetectorV3_detectInImage_trackingSession_delegate_error___block_invoke_19;
  v47[3] = &unk_1E7BC33B0;
  v48 = *(a1 + 40);
  v47[4] = *(a1 + 32);
  v47[5] = &v52;
  v49 = a2;
  [v19 measureBlock:v47];

  v46 = vdupq_n_s64(0x406E000000000000uLL);
  v20 = a6;
  v21 = *(*(a1 + 56) + 8);
  v22 = *(v21 + 56);
  if ((a6 + a8) * 0.5 <= v22)
  {
    v23 = 240.0;
  }

  else
  {
    v23 = 240.0 - -(v22 - (a6 + a8) * 0.5);
    v46.height = v23;
  }

  v24.f64[0] = a5;
  v25 = *(v21 + 48);
  if ((a5 + a7) * 0.5 <= v25)
  {
    v26 = 240.0;
  }

  else
  {
    v26 = 240.0 - -(v25 - (a5 + a7) * 0.5);
    v46.width = v26;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v29 = *(*(&v52 + 1) + 40);
    if (v29)
    {
      if (*a3 < 1.0)
      {
        __C = 0.2;
        __B = 0.0;
        v30 = (v23 * v26);
        v31 = malloc_type_calloc(v30, 4uLL, 0x100004052888210uLL);
        *buf = 0;
        __NHigh = 0;
        v32 = [*(*(&v52 + 1) + 40) region_score];
        v33 = v32;
        vDSP_vclipc([v32 dataPointer], 1, &__B, &__C, v31, 1, v30, buf, &__NHigh);

        free(v31);
        *a3 = __NHigh;
        v29 = *(*(&v52 + 1) + 40);
        v24.f64[0] = a5;
        v20 = a6;
      }

      v24.f64[1] = v20;
      __asm { FMOV            V0.2D, #0.5 }

      *buf = vmulq_f64(v24, _Q0);
      CRDetectorOutputMaps::aggregateMaps((*(*(a1 + 64) + 8) + 48), v29, &v46, buf);
    }
  }

  v27 = CROSLogForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    v28 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
    *buf = 138412290;
    *&buf[4] = v28;
    _os_log_impl(&dword_1B40D2000, v27, OS_LOG_TYPE_FAULT, "Model prediction error: %@", buf, 0xCu);
  }

  _Block_object_dispose(&v52, 8);
LABEL_19:
  objc_autoreleasePoolPop(v14);
}

void __71__CRNeuralTextDetectorV3_detectInImage_trackingSession_delegate_error___block_invoke_19(uint64_t a1)
{
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v2 = CRSignpostLog_signPostOSLog;
  v3 = os_signpost_id_generate(v2);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v4 = CRSignpostLog_signPostOSLog;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "OCRDetectorInferenceTime", "", buf, 2u);
  }

  if (+[CRNeuralTextDetectorV3 useE5Detector])
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v7 = *(*(a1 + 56) + 8);
    obj = *(v7 + 40);
    v8 = [v6 predictionFromPreboundInputsWithError:&obj];
    objc_storeStrong((v7 + 40), obj);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v10 = [*(a1 + 32) modelEIR];
    v11 = *(a1 + 64);
    v12 = *(*(a1 + 56) + 8);
    v18 = *(v12 + 40);
    v13 = [v10 predictionFromImage:v11 error:&v18];
    objc_storeStrong((v12 + 40), v18);
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v16 = CRSignpostLog_signPostOSLog;
  v17 = v16;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v17, OS_SIGNPOST_INTERVAL_END, v3, "OCRDetectorInferenceTime", "", buf, 2u);
  }
}

void __71__CRNeuralTextDetectorV3_detectInImage_trackingSession_delegate_error___block_invoke_27(uint64_t a1)
{
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v2 = CRSignpostLog_signPostOSLog;
  v3 = os_signpost_id_generate(v2);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v4 = CRSignpostLog_signPostOSLog;
  v5 = v4;
  spid = v3;
  v6 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "OCRPostProcessingTime", "", buf, 2u);
  }

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 64) + 8);
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 56);
  v12 = *(*(a1 + 80) + 8);
  v13 = *(*(a1 + 88) + 8);
  v14 = *(v13 + 48);
  v15 = *(v13 + 56);
  v16 = *(*(a1 + 96) + 8);
  v17 = *(v16 + 48);
  v18 = *(v16 + 56);
  v19 = [v7 configuration];
  v20 = [v19 logIntermediateResults];
  if (v20)
  {
    v21 = *(*(a1 + 112) + 8);
    v23 = *(v21 + 40);
    v22 = (v21 + 40);
    obj = v23;
    p_obj = &obj;
  }

  else
  {
    p_obj = 0;
    v22 = 0;
  }

  v25 = *(*(a1 + 120) + 8);
  [*(a1 + 40) size];
  v28 = [(CRNeuralTextDetectorV3 *)v7 processFineScaleMaps:(v12 + 48) adjustedSize:p_obj fullTileMaps:v25 + 3 adjustedFullTileSize:*(*(*(a1 + 128) + 8) + 40) targetSize:*(a1 + 48) targetSizeFullTile:v10 intermediateResults:v11 withScaleIds:v14 sourceImageSize:v15 tileRects:v17 trackingSession:v18, v26, v27];
  if (v20)
  {
    objc_storeStrong(v22, obj);
  }

  v29 = *(*(a1 + 56) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

  [(CRNeuralTextDetectorV3 *)*(a1 + 32) computeClassificationType:*(*(*(a1 + 56) + 8) + 40) fromTextFeatures:(*(*(a1 + 64) + 8) + 104) fineScaleMap:(*(*(a1 + 80) + 8) + 104) fullTileMap:(*(*(a1 + 120) + 8) + 48) withScaleIds:?];
  if (*(a1 + 144) == 1)
  {
    [(CRNeuralTextDetectorV3 *)*(a1 + 32) computeClassificationType:*(*(*(a1 + 56) + 8) + 40) fromTextFeatures:(*(*(a1 + 64) + 8) + 56) fineScaleMap:(*(*(a1 + 80) + 8) + 56) fullTileMap:(*(*(a1 + 120) + 8) + 48) withScaleIds:?];
  }

  if (*(a1 + 145) == 1)
  {
    v31 = *(a1 + 32);
    v32 = *(*(a1 + 80) + 8);
    v33 = [v31 configuration];
    v34 = [v33 logIntermediateResults];
    if (v34)
    {
      v35 = *(*(a1 + 112) + 8);
      v37 = *(v35 + 40);
      v36 = (v35 + 40);
      v22 = v37;
    }

    else
    {
      v36 = 0;
    }

    v38 = *(*(*(a1 + 56) + 8) + 40);
    [*(a1 + 40) size];
    v39 = v38;
    if (v31)
    {
      v40 = *(v32 + 96);
      v41 = [v31 configuration];
      [v41 tableMinDetectableArea];
      CRDetectorPostProcessV3::extractTableBoxes(v40, v39, buf);
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      v52 = 0;
    }

    if (v34)
    {
      objc_storeStrong(v36, v22);
    }

    v42 = *(*(a1 + 136) + 8);
    v43 = (v42 + 6);
    v44 = v42[6];
    if (v44)
    {
      v45 = v42[7];
      v46 = v42[6];
      if (v45 != v44)
      {
        do
        {
          v47 = *(v45 - 8);
          v45 -= 8;
        }

        while (v45 != v44);
        v46 = *v43;
      }

      v42[7] = v44;
      operator delete(v46);
      *v43 = 0;
      v42[7] = 0;
      v42[8] = 0;
    }

    *(v42 + 3) = *buf;
    v42[8] = v52;
    v52 = 0;
    memset(buf, 0, sizeof(buf));
    v54 = buf;
    std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](&v54);
  }

  if (*(a1 + 146) == 1)
  {
    [(CRNeuralTextDetectorV3 *)*(a1 + 32) computeClassificationType:*(*(*(a1 + 56) + 8) + 40) fromTextFeatures:(*(*(a1 + 64) + 8) + 128) fineScaleMap:(*(*(a1 + 80) + 8) + 128) fullTileMap:(*(*(a1 + 120) + 8) + 48) withScaleIds:?];
  }

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v48 = CRSignpostLog_signPostOSLog;
  v49 = v48;
  if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v49, OS_SIGNPOST_INTERVAL_END, spid, "OCRPostProcessingTime", "", buf, 2u);
  }
}

- (id)processFineScaleMaps:(uint64_t *)a3 adjustedSize:(CRIntermediateDetectorResult *)a4 fullTileMaps:(int64x2_t *)a5 adjustedFullTileSize:(void *)a6 targetSize:(void *)a7 targetSizeFullTile:(double)a8 intermediateResults:(double)a9 withScaleIds:(double)a10 sourceImageSize:(double)a11 tileRects:(float64_t)a12 trackingSession:(float64_t)a13
{
  v531 = *MEMORY[0x1E69E9840];
  v444 = a6;
  v439 = a7;
  if (!a1)
  {
    goto LABEL_407;
  }

  v440 = a4;
  if (a4)
  {
    v446 = [[CRIntermediateDetectorResult alloc] initWithNumberOfScales:4];
  }

  else
  {
    v446 = 0;
  }

  v18 = a2;
  v19 = 0;
  v508 = 0u;
  v509 = 0u;
  v507 = 0u;
  v506 = 0uLL;
  v505 = 0;
  v504[1] = 0;
  v20 = 1;
  if (*a3 && *a2)
  {
    v22 = a2[4];
    v21 = a2[5];
    v24 = a3[4];
    v23 = a3[5];
    memset(&__dst, 0, sizeof(__dst));
    CRDetectorUtils::erodeImageMap(v24, &__dst);
    memset(v528, 0, 32);
    CRDetectorUtils::dilateImageMap(&__dst, v528);
    free(__dst.data);
    memset(&v518, 0, sizeof(v518));
    CRDetectorUtils::erodeImageMap(v23, &v518);
    memset(&v515, 0, sizeof(v515));
    CRDetectorUtils::dilateImageMap(&v518, &v515);
    free(v518.data);
    v25 = v22[1];
    data = v528[0].data;
    v20 = 0;
    v27 = 0;
    if (v25)
    {
      v28 = 0;
      height = v24->height;
      width = v24->width;
      v31 = v22[2];
      v32 = v25 / height;
      v33 = width;
      v34 = *v22;
      v35 = *v21;
      v36 = v515.data;
      v37 = v23->data;
      v38 = width * height;
      v39 = 4 * v31;
      v18 = a2;
      do
      {
        if (v31)
        {
          v40 = 0;
          v41 = roundf(v28 / v32);
          do
          {
            v42 = (roundf(v40 / (v31 / v33)) + (v41 * v33));
            if (v38 > v42)
            {
              v43 = v37[v42] >= 0.3;
              v44 = *(v35 + 4 * v40) >= 0.3;
              v45 = data[v42];
              if (v45 > 0.7)
              {
                v46 = fmin((v45 + *(v34 + 4 * v40)), 1.0);
                *(v34 + 4 * v40) = v46;
              }

              v20 |= v43;
              v27 |= v44;
              v47 = v36[v42];
              if (v47 > 0.7)
              {
                v48 = fmin((v47 + *(v35 + 4 * v40)), 1.0);
                *(v35 + 4 * v40) = v48;
              }
            }

            ++v40;
          }

          while (v31 != v40);
        }

        ++v28;
        v34 += v39;
        v35 += v39;
      }

      while (v28 != v25);
    }

    else
    {
      v18 = a2;
    }

    v49 = v27;
    free(data);
    free(v515.data);
    v19 = v49;
  }

  v504[0] = 0;
  v442 = v19;
  [CRNeuralTextDetectorV3 runNMSForDirection:a1 adjustedSize:v18 fullTileMaps:a3 adjustedFullTileSize:v446 targetSize:&v507 targetSizeFullTile:v444 intermediateResults:1 withScaleIds:v504 sourceImageSize:&v505 tileRects:v19 & 1 isHorizontal:v20 & 1 resultTextFeatures:? quadFeatures:? isFineScaleVerticalLinkActive:? isFullTileVerticalLinkActive:? idxLog:?];
  v443 = v504[0];
  if (&v507 != a5)
  {
    v50 = (v509 >> 9) & 0x7FFFFFFFFFFFF8;
    v51 = (*(&v507 + 1) + v50);
    if (v508 == *(&v507 + 1))
    {
      v53 = 0;
      v61 = 0;
    }

    else
    {
      v52 = v509 & 0xFFF;
      v53 = (*v51 + v52);
      v54 = ((*(&v509 + 1) + v509) >> 9) & 0x7FFFFFFFFFFFF8;
      if ((*(*(&v507 + 1) + v54) + ((WORD4(v509) + v509) & 0xFFF)) != v53)
      {
        v55 = ((WORD4(v509) + v509) & 0xFFF) - v52 + ((v54 - v50) << 9);
        v57 = &a5[2].i64[1];
        v56 = a5[2].u64[1];
        if (v56 < v55)
        {
          v58 = (*v51 + (v509 & 0xFFF));
          v59 = v51;
          if (v56)
          {
            v60 = v56 + v52;
            if (v60 < 1)
            {
              v80 = 4095 - v60;
              v59 = &v51[-(v80 >> 12)];
              v58 = (*v59 + (~v80 & 0xFFF));
            }

            else
            {
              v59 = &v51[v60 >> 12];
              v58 = (*v59 + (v60 & 0xFFF));
            }
          }

          v81 = a5->i64[1];
          if (a5[1].i64[0] == v81)
          {
            v82 = 0;
          }

          else
          {
            v82 = *(v81 + 8 * (a5[2].i64[0] >> 12)) + (a5[2].i64[0] & 0xFFF);
          }

          __dst.data = (v81 + 8 * (a5[2].i64[0] >> 12));
          __dst.height = v82;
          std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>>(v51, v53, v59, v58, &__dst);
          v83 = a5->i64[1];
          v84 = a5[1].i64[0];
          v85 = ((v84 - v83) << 9) - 1;
          if (v84 == v83)
          {
            v85 = 0;
          }

          v86 = a5[2].i64[1];
          v87 = a5[2].i64[0] + v86;
          v88 = v85 - v87;
          if (v55 - v86 <= v88)
          {
            v89 = a5[2].i64[1];
          }

          else
          {
            std::deque<unsigned char>::__add_back_capacity(a5, v55 - v86 - v88);
            v89 = a5[2].i64[1];
            v83 = a5->i64[1];
            v84 = a5[1].i64[0];
            v87 = a5[2].i64[0] + v89;
          }

          v90 = (v83 + 8 * (v87 >> 12));
          if (v84 == v83)
          {
            v91 = 0;
            v92 = 0;
          }

          else
          {
            v91 = (*v90 + (v87 & 0xFFF));
            v92 = v91;
          }

          v93 = v90;
          if (v55 != v86)
          {
            v94 = v92 - *v90 + v55 - v86;
            if (v94 < 1)
            {
              v95 = 4095 - v94;
              v93 = &v90[-(v95 >> 12)];
              v92 = *v93 + (~v95 & 0xFFF);
            }

            else
            {
              v93 = &v90[v94 >> 12];
              v92 = *v93 + (v94 & 0xFFF);
            }
          }

          while (v91 != v92)
          {
            v96 = v92;
            if (v90 != v93)
            {
              v96 = *v90 + 4096;
            }

            if (v91 == v96)
            {
              v96 = v91;
            }

            else
            {
              v97 = v91;
              do
              {
                v98 = *v58++;
                *v97++ = v98;
                if (&v58[-*v59] == 4096)
                {
                  v99 = v59[1];
                  ++v59;
                  v58 = v99;
                }
              }

              while (v97 != v96);
              v89 = *v57;
            }

            v89 += v96 - v91;
            *v57 = v89;
            if (v90 == v93)
            {
              break;
            }

            v100 = v90[1];
            ++v90;
            v91 = v100;
          }

          goto LABEL_81;
        }

        v61 = (*v51 + (v509 & 0xFFF));
        v62 = a5;
LABEL_32:
        v63 = v62[1];
        v64 = (v63 + 8 * (v62[4] >> 12));
        if (v62[2] == v63)
        {
          v65 = 0;
          if (v55)
          {
LABEL_34:
            v66 = &v61[v55 - *v51];
            if (v66 < 1)
            {
              v68 = 4095 - v66;
              v67 = &v51[-(v68 >> 12)];
              v61 = (*v67 + (~v68 & 0xFFF));
            }

            else
            {
              v67 = &v51[v66 >> 12];
              v61 = (*v67 + (v66 & 0xFFF));
            }

            goto LABEL_39;
          }
        }

        else
        {
          v65 = *v64 + (v62[4] & 0xFFF);
          if (v55)
          {
            goto LABEL_34;
          }
        }

        v67 = v51;
LABEL_39:
        __dst.data = v64;
        __dst.height = v65;
        std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>>(v51, v53, v67, v61, &__dst);
        v69 = a5[2].i64[0];
        v70 = a5[2].i64[1];
        v72 = a5->i64[1];
        v71 = a5[1].i64[0];
        v73 = (v72 + 8 * ((v69 + v70) >> 12));
        if (v71 == v72)
        {
          v74 = 0;
        }

        else
        {
          v74 = *v73 + ((v69 + v70) & 0xFFF);
        }

        if (v74 != __dst.height)
        {
          v75 = v74 + ((v73 - __dst.data) << 9) - __dst.height - *v73 + *__dst.data;
          if (v75 >= 1)
          {
            v76 = v71 == v72 ? 0 : ((v71 - v72) << 9) - 1;
            v77 = v70 - v75;
            *v57 = v77;
            if ((v76 - v69 - v77) >= 0x2000)
            {
              do
              {
                operator delete(*(v71 - 8));
                v78 = a5->i64[1];
                v71 = a5[1].i64[0] - 8;
                a5[1].i64[0] = v71;
                if (v71 == v78)
                {
                  v79 = 0;
                }

                else
                {
                  v79 = ((v71 - v78) << 9) - 1;
                }
              }

              while ((v79 - (a5[2].i64[1] + a5[2].i64[0])) >> 13);
            }
          }
        }

        goto LABEL_81;
      }

      v61 = (*v51 + (v509 & 0xFFF));
    }

    v55 = 0;
    v62 = a5;
    v57 = &a5[2].i64[1];
    goto LABEL_32;
  }

LABEL_81:
  if ((v20 | v442))
  {
    v502 = 0u;
    v503 = 0u;
    v501 = 0u;
    v498 = 0;
    v499 = 0;
    v500 = 0;
    v497 = 0;
    [CRNeuralTextDetectorV3 runNMSForDirection:a1 adjustedSize:a2 fullTileMaps:a3 adjustedFullTileSize:v446 targetSize:&v501 targetSizeFullTile:v444 intermediateResults:0 withScaleIds:&v497 sourceImageSize:&v498 tileRects:v442 & 1 isHorizontal:v20 & 1 resultTextFeatures:? quadFeatures:? isFineScaleVerticalLinkActive:? isFullTileVerticalLinkActive:? idxLog:?];
    v101 = v497;
    v441 = v443;
    v448 = v101;
    v102 = v498;
    if (v499 != v498)
    {
      v103 = 0;
      v104 = 140;
      do
      {
        *(v102 + v104) += 1022611261 * ((v506 - v505) >> 3);
        v105 = [v448 objectAtIndexedSubscript:v103];
        [v105 setFeatureID:{objc_msgSend(v105, "featureID") + 1022611261 * ((v506 - v505) >> 3)}];

        ++v103;
        v102 = v498;
        v104 += 168;
      }

      while (v103 < 0xCF3CF3CF3CF3CF3DLL * ((v499 - v498) >> 3));
    }

    v454 = [v441 count];
    v106 = [v448 count];
    LOBYTE(__dst.data) = 1;
    std::vector<BOOL>::vector(&v514, v454);
    LOBYTE(__dst.data) = 1;
    std::vector<BOOL>::vector(&__p, v106);
    v107 = v441;
    v451 = v448;
    CRDetectorPostProcessV3::Graph::Graph(&v511, [v451 count] + objc_msgSend(v107, "count"));
    v519 = 0u;
    v520 = 0u;
    memset(&v518, 0, sizeof(v518));
    obj = v107;
    v108 = [obj countByEnumeratingWithState:&v518 objects:&__dst count:16];
    if (v108)
    {
      v455 = 0;
      v449 = *v518.width;
      do
      {
        v453 = 0;
        v450 = v108;
        do
        {
          if (*v518.width != v449)
          {
            objc_enumerationMutation(obj);
          }

          v109 = *(v518.height + 8 * v453);
          memset(&v515, 0, sizeof(v515));
          v516 = 0u;
          v517 = 0u;
          v457 = v451;
          v110 = [v457 countByEnumeratingWithState:&v515 objects:v528 count:16];
          if (v110)
          {
            v111 = 0;
            v112 = *v515.width;
            do
            {
              for (i = 0; i != v110; ++i)
              {
                if (*v515.width != v112)
                {
                  objc_enumerationMutation(v457);
                }

                v114 = *(v515.height + 8 * i);
                v115 = v109;
                v116 = v114;
                [(CRNeuralTextDetectorV3 *)v115 getBorderPoints:&v525 sourceImageSize:1 outP1:a12 outP2:a13 isHorizontal:?];
                [(CRNeuralTextDetectorV3 *)v116 getBorderPoints:&v523 sourceImageSize:0 outP1:a12 outP2:a13 isHorizontal:?];
                v117 = v510;
                v118 = v525;
                v119 = v524;
                v120 = v523;
                LODWORD(v114) = [CRGeometryUtilities checkIntersectionForLineThroughPoint:&v522 andPoint:v510.f64[0] andSegmentStartingAt:v510.f64[1] andEndingAt:v525.f64[0] intersectAt:v525.f64[1], v524.f64[0], v524.f64[1], v523.f64[0], v523.f64[1]];
                v121 = [CRGeometryUtilities checkIntersectionForLineThroughPoint:&v521 andPoint:*&v119 andSegmentStartingAt:*&v120 andEndingAt:*&v117 intersectAt:*&v118];

                v122 = v115;
                v123 = v116;
                [v122 topLeft];
                __srcc = v124;
                [v122 bottomLeft];
                v481 = v125;
                [v122 topLeft];
                v477 = v126;
                [v122 bottomLeft];
                v473 = v127;
                [v122 topRight];
                v469 = v128;
                [v122 bottomRight];
                v466 = v129;
                [v122 topRight];
                v464 = v130;
                [v122 bottomRight];
                v132 = v131;
                [v123 topLeft];
                v134 = v133;
                [v123 bottomLeft];
                v136 = v135;
                [v123 topLeft];
                v138 = v137;
                [v123 bottomLeft];
                v140 = v139;
                [v123 topRight];
                v142 = v141;
                [v123 bottomRight];
                v144 = v143;
                [v123 topRight];
                v146 = v145;
                [v123 bottomRight];
                v148 = v114 & v121;
                v149 = (*&__srcc + *&v481) * 0.5;
                v150 = (v477 + v473) * 0.5;
                v151 = (v469 + *&v466) * 0.5;
                v152 = (v134 + v136) * 0.5;
                v153 = (v142 + v144) * 0.5;
                v482 = v151;
                __src = (v464 + v132) * 0.5;
                v474 = v149;
                v478 = v150;
                v154 = (__src - v150) / (v151 - v149);
                if (v149 == v151)
                {
                  v154 = 3.40282347e38;
                }

                v462 = v154;
                v463 = (v134 + v136) * 0.5;
                v467 = (v142 + v144) * 0.5;
                v470 = (v146 + v147) * 0.5;
                v465 = (v138 + v140) * 0.5;
                if (v152 == v153)
                {
                  v155 = 3.40282347e38;
                }

                else
                {
                  v155 = ((v146 + v147) * 0.5 - (v138 + v140) * 0.5) / (v153 - v152);
                }

                [v122 topLeft];
                v157 = v156;
                [v122 bottomLeft];
                v159 = v158;
                [v122 topLeft];
                v161 = v160;
                [v122 bottomLeft];
                v163 = v162;
                [v123 topLeft];
                v165 = v164;
                [v123 bottomLeft];
                v167 = v166;
                [v123 topLeft];
                v169 = v168;
                [v123 bottomLeft];
                v170 = vabdd_f64(v462, v155);
                v171 = v157 - v159;
                v172 = v161 - v163;
                v173 = (v171 * v171) + (v172 * v172);
                v174 = v165 - v167;
                *&v175 = v169 - v175;
                v176 = fminf(v173, (v174 * v174) + (*&v175 * *&v175)) * 0.349999994 * 0.349999994;
                v177 = v474 - v463;
                v178 = v478 - v465;
                v179 = v176 >= ((v177 * v177) + (v178 * v178));
                v180 = v482 - v467;
                v181 = __src - v470;
                if (v176 < ((v180 * v180) + (v181 * v181)))
                {
                  v179 = 0;
                }

                v182 = v170 < 0.100000001 && v179;

                if ((v148 | v182))
                {
                  [obj count];
                  CRDetectorPostProcessV3::Graph::addEdge(&v511);
                }

                ++v111;
              }

              v110 = [v457 countByEnumeratingWithState:&v515 objects:v528 count:16];
            }

            while (v110);
          }

          ++v455;
          ++v453;
        }

        while (v453 != v450);
        v108 = [obj countByEnumeratingWithState:&v518 objects:&__dst count:16];
      }

      while (v108);
    }

    CRDetectorPostProcessV3::Graph::connectedComponents(&v511, &v510);
    v183 = v510.f64[0];
    if (*&v510.f64[1] != *&v510.f64[0])
    {
      v184 = 0;
      do
      {
        v185 = *(*&v183 + 24 * v184);
        if (*(*&v183 + 24 * v184 + 8) != v185)
        {
          v186 = 0;
          v187 = 0.0;
          v188 = 0.0;
          do
          {
            v189 = v185[v186];
            if ([obj count] <= v189)
            {
              v188 = v188 + *(v498 + 168 * (v189 - v454) + 112) * *(v498 + 168 * (v189 - v454) + 120) * *(v498 + 168 * (v189 - v454) + 128);
            }

            else
            {
              v187 = v187 + v505[21 * v189 + 14] * v505[21 * v189 + 15] * v505[21 * v189 + 16];
            }

            ++v186;
            v183 = v510.f64[0];
            v185 = *(*&v510.f64[0] + 24 * v184);
            v190 = (*(*&v510.f64[0] + 24 * v184 + 8) - v185) >> 2;
          }

          while (v190 > v186);
          if (v190)
          {
            v191 = v514;
            v192 = __p;
            do
            {
              v194 = *v185++;
              v193 = v194;
              if (v194 < v454 && v187 < v188)
              {
                *&v191[(v193 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v193);
              }

              if (v193 >= v454 && v188 <= v187)
              {
                *&v192[((v193 - v454) >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << (v193 - v454));
              }

              --v190;
            }

            while (v190);
          }
        }

        ++v184;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*&v510.f64[1] - *&v183) >> 3) > v184);
    }

    v197 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v198 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v519 = 0u;
    v520 = 0u;
    memset(&v518, 0, sizeof(v518));
    v199 = obj;
    v200 = [v199 countByEnumeratingWithState:&v518 objects:&__dst count:16];
    if (v200)
    {
      v201 = 0;
      v202 = *v518.width;
      do
      {
        v203 = 0;
        v204 = v201;
        v201 += v200;
        do
        {
          if (*v518.width != v202)
          {
            objc_enumerationMutation(v199);
          }

          if ((*(v514 + ((v204 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v204))
          {
            v205 = v197;
          }

          else
          {
            v205 = v198;
          }

          [v205 addObject:*(v518.height + 8 * v203)];
          ++v204;
          ++v203;
        }

        while (v200 != v203);
        v200 = [v199 countByEnumeratingWithState:&v518 objects:&__dst count:16];
      }

      while (v200);
    }

    v516 = 0u;
    v517 = 0u;
    memset(&v515, 0, sizeof(v515));
    v206 = v451;
    v207 = [v206 countByEnumeratingWithState:&v515 objects:v528 count:16];
    if (v207)
    {
      v208 = 0;
      v209 = *v515.width;
      do
      {
        v210 = 0;
        v211 = v208;
        v208 += v207;
        do
        {
          if (*v515.width != v209)
          {
            objc_enumerationMutation(v206);
          }

          if ((*(__p + ((v211 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v211))
          {
            v212 = v197;
          }

          else
          {
            v212 = v198;
          }

          [v212 addObject:*(v515.height + 8 * v210)];
          ++v211;
          ++v210;
        }

        while (v207 != v210);
        v207 = [v206 countByEnumeratingWithState:&v515 objects:v528 count:16];
      }

      while (v207);
    }

    if ([v198 count])
    {
      v213 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v214 = a3;
      if (v442)
      {
        v214 = a2;
      }

      CRDetectorPostProcessV3::getSplitComponents(v197, v198, *v214, v213);
    }

    *&v525.f64[0] = &v510;
    std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&v525);
    *&v510.f64[0] = &v512;
    std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&v510);
    if (__p)
    {
      operator delete(__p);
    }

    if (v514)
    {
      operator delete(v514);
    }

    v216 = v498;
    v215 = v499;
    v217 = v499 - v498;
    if (v499 - v498 >= 1)
    {
      v218 = v506;
      if (*(&v506 + 1) - v506 >= v217)
      {
        v528[0].data = v506;
        v518.data = v506;
        __dst.data = &v505;
        __dst.height = &v518;
        __dst.width = v528;
        LOBYTE(__dst.rowBytes) = 0;
        if (v498 != v499)
        {
          v223 = v506;
          do
          {
            v224 = *v216;
            v225 = *(v216 + 16);
            v226 = *(v216 + 48);
            *(v223 + 2) = *(v216 + 32);
            *(v223 + 3) = v226;
            *v223 = v224;
            *(v223 + 1) = v225;
            *(v223 + 8) = 0;
            *(v223 + 9) = 0;
            *(v223 + 10) = 0;
            std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>((v223 + 64), *(v216 + 64), *(v216 + 72), (*(v216 + 72) - *(v216 + 64)) >> 4);
            v227 = *(v216 + 88);
            v228 = *(v216 + 104);
            v229 = *(v216 + 120);
            v230 = *(v216 + 136);
            *(v223 + 18) = 0;
            *(v223 + 17) = v230;
            *(v223 + 120) = v229;
            *(v223 + 104) = v228;
            *(v223 + 88) = v227;
            *(v223 + 19) = 0;
            *(v223 + 20) = 0;
            std::vector<CRDetectorUtils::CRTextDetectorQuad>::__init_with_size[abi:ne200100]<CRDetectorUtils::CRTextDetectorQuad*,CRDetectorUtils::CRTextDetectorQuad*>((v223 + 144), *(v216 + 144), *(v216 + 152), 0x8E38E38E38E38E39 * ((*(v216 + 152) - *(v216 + 144)) >> 4));
            v216 += 168;
            v223 = v528[0].data + 168;
            v528[0].data = v528[0].data + 168;
          }

          while (v216 != v215);
          v218 = v223;
        }

        LOBYTE(__dst.rowBytes) = 1;
        std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>,CRDetectorUtils::CRTextDetectorQuadFeature*>>::~__exception_guard_exceptions[abi:ne200100](&__dst);
        *&v506 = v218;
      }

      else
      {
        v219 = 0xCF3CF3CF3CF3CF3DLL * ((v506 - v505) >> 3);
        v220 = v219 - 0x30C30C30C30C30C3 * (v217 >> 3);
        if (v220 > 0x186186186186186)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v221 = 0x9E79E79E79E79E7ALL * ((*(&v506 + 1) - v505) >> 3);
        if (v221 <= v220)
        {
          v221 = v219 - 0x30C30C30C30C30C3 * (v217 >> 3);
        }

        if (0xCF3CF3CF3CF3CF3DLL * ((*(&v506 + 1) - v505) >> 3) >= 0xC30C30C30C30C3)
        {
          v222 = 0x186186186186186;
        }

        else
        {
          v222 = v221;
        }

        v530 = &v505;
        if (v222)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>>(&v505, v222);
        }

        v231 = 0;
        v232 = 8 * ((v506 - v505) >> 3);
        __dst.data = 0;
        __dst.height = v232;
        *&__dst.width = v232;
        do
        {
          v233 = v232 + v231;
          v234 = *(v216 + v231);
          v235 = *(v216 + v231 + 16);
          v236 = *(v216 + v231 + 48);
          *(v233 + 32) = *(v216 + v231 + 32);
          *(v233 + 48) = v236;
          *v233 = v234;
          *(v233 + 16) = v235;
          *(v233 + 72) = 0;
          *(v233 + 80) = 0;
          *(v232 + v231 + 64) = 0;
          std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(v232 + v231 + 64, *(v216 + v231 + 64), *(v216 + v231 + 72), (*(v216 + v231 + 72) - *(v216 + v231 + 64)) >> 4);
          v237 = *(v216 + v231 + 88);
          v238 = *(v216 + v231 + 104);
          v239 = *(v216 + v231 + 120);
          v240 = *(v216 + v231 + 136);
          *(v233 + 144) = 0;
          v241 = v232 + v231 + 144;
          *(v241 - 8) = v240;
          *(v241 - 24) = v239;
          *(v241 - 40) = v238;
          *(v241 - 56) = v237;
          *(v241 + 8) = 0;
          *(v241 + 16) = 0;
          std::vector<CRDetectorUtils::CRTextDetectorQuad>::__init_with_size[abi:ne200100]<CRDetectorUtils::CRTextDetectorQuad*,CRDetectorUtils::CRTextDetectorQuad*>(v241, *(v216 + v231 + 144), *(v216 + v231 + 152), 0x8E38E38E38E38E39 * ((*(v216 + v231 + 152) - *(v216 + v231 + 144)) >> 4));
          v231 += 168;
        }

        while (v217 != v231);
        __dst.width = 168 * v219 + v217;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>,CRDetectorUtils::CRTextDetectorQuadFeature*>(&v505, v218, v506, __dst.width);
        __dst.width += v506 - v218;
        *&v506 = v218;
        v242 = v505 + __dst.height - v218;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>,CRDetectorUtils::CRTextDetectorQuadFeature*>(&v505, v505, v218, v242);
        v243 = v505;
        v244 = *(&v506 + 1);
        v505 = v242;
        v506 = *&__dst.width;
        __dst.width = v243;
        __dst.rowBytes = v244;
        __dst.height = v243;
        __dst.data = v243;
        std::__split_buffer<CRDetectorUtils::CRTextDetectorQuadFeature>::~__split_buffer(&__dst.data);
      }
    }

    v246 = a5[2].u64[0];
    v245 = a5[2].i64[1];
    v247 = v246 + v245;
    v248 = ((v246 + v245) >> 9) & 0x7FFFFFFFFFFFF8;
    v249 = a5->i64[1];
    v250 = a5[1].i64[0];
    if (v250 == v249)
    {
      v251 = 0;
    }

    else
    {
      v251 = *(v249 + v248) + (v247 & 0xFFF);
    }

    v252 = (v503 >> 9) & 0x7FFFFFFFFFFFF8;
    v253 = (*(&v501 + 1) + v252);
    v479 = (*(&v501 + 1) + v252);
    if (v502 == *(&v501 + 1))
    {
      v257 = 0;
      __srca = 0;
      v258 = 0;
      v256 = *(&v501 + 1) + 8 * ((*(&v503 + 1) + v503) >> 12);
    }

    else
    {
      v254 = (*v253 + (v503 & 0xFFF));
      v255 = ((*(&v503 + 1) + v503) >> 9) & 0x7FFFFFFFFFFFF8;
      v256 = *(&v501 + 1) + v255;
      v257 = (*(*(&v501 + 1) + v255) + ((WORD4(v503) + v503) & 0xFFF));
      __srca = v254;
      if (v257 == v254)
      {
        v258 = 0;
      }

      else
      {
        v258 = ((WORD4(v503) + v503) & 0xFFF) + ((v255 - v252) << 9) - v254 + *v253;
      }
    }

    v259 = v246 >> 12;
    v260 = 8 * (v246 >> 12);
    v261 = v250 - v249;
    if (v250 == v249)
    {
      v262 = 0;
    }

    else
    {
      v262 = *(v249 + v260) + (a5[2].i64[0] & 0xFFF);
    }

    v483 = v256;
    if (v251 == v262)
    {
      v263 = 0;
    }

    else
    {
      v263 = v251 + ((v248 - v260) << 9) - v262 - *(v249 + v248) + *(v249 + v260);
    }

    if (v263 < v245 - v263)
    {
      v264 = v258 - v246;
      if (v258 > v246)
      {
        v265 = (v261 << 9) - 1;
        v266 = v250 - v249;
        if (v250 == v249)
        {
          v265 = 0;
          ++v264;
        }

        if ((v264 & 0xFFF) != 0)
        {
          v267 = (v264 >> 12) + 1;
        }

        else
        {
          v267 = v264 >> 12;
        }

        v268 = v265 - v247;
        v269 = (v265 - v247) >> 12;
        if (v267 >= v268 >> 12)
        {
          v270 = v269;
        }

        else
        {
          v270 = v267;
        }

        if (v267 <= v268 >> 12)
        {
          for (a5[2].i64[0] = v246 + (v270 << 12); v270; --v270)
          {
            v284 = a5[1].i64[0];
            __dst.data = *(v284 - 8);
            a5[1].i64[0] = v284 - 8;
            std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(a5, &__dst);
          }
        }

        else
        {
          v271 = v267 - v270;
          v272 = a5[1].i64[1] - a5->i64[0];
          if (v267 - v270 > (v272 >> 3) - (v266 >> 3))
          {
            v273 = v271 + (v266 >> 3);
            if (v272 >> 2 <= v273)
            {
              v274 = v273;
            }

            else
            {
              v274 = v272 >> 2;
            }

            v530 = a5;
            if (v274)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a5, v274);
            }

            memset(&__dst, 0, sizeof(__dst));
            operator new();
          }

          if (v271)
          {
            if (v249 != a5->i64[0])
            {
              operator new();
            }

            operator new();
          }

          for (a5[2].i64[0] = v246 + (v270 << 12); v270; --v270)
          {
            v312 = a5[1].i64[0];
            __dst.data = *(v312 - 8);
            a5[1].i64[0] = v312 - 8;
            std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(a5, &__dst);
          }
        }

        v246 = a5[2].u64[0];
        v249 = a5->i64[1];
        v250 = a5[1].i64[0];
        v259 = v246 >> 12;
      }

      v313 = (v249 + 8 * v259);
      if (v250 == v249)
      {
        v314 = 0;
      }

      else
      {
        v314 = *v313 + (v246 & 0xFFF);
      }

      if (v258 <= v263)
      {
        v318 = v314;
        v319 = v313;
LABEL_316:
        if (v258)
        {
          v329 = v314 - *v313 + v258;
          if (v329 < 1)
          {
            v332 = 4095 - v329;
            v330 = &v313[-(v332 >> 12)];
            v331 = (*v330 + (~v332 & 0xFFF));
          }

          else
          {
            v330 = &v313[v329 >> 12];
            v331 = (*v330 + (v329 & 0xFFF));
          }

          if (v331 != v314)
          {
            v333 = v330;
            v334 = v331;
            do
            {
              if (v318 == *v319)
              {
                v335 = *--v319;
                v318 = v335 + 4096;
              }

              if (v334 == *v333)
              {
                v336 = *--v333;
                v334 = (v336 + 4096);
              }

              v337 = *--v334;
              *--v318 = v337;
              a5[2] = vaddq_s64(a5[2], xmmword_1B42AF9D0);
            }

            while (v334 != v314);
          }

          if (v258 >= v263)
          {
            v339 = __srca;
            v340 = v479;
          }

          else
          {
            v475 = v257;
            v338 = v314 - *v313 + v263;
            v339 = __srca;
            v340 = v479;
            if (v338 < 1)
            {
              v343 = 4095 - v338;
              v341 = &v313[-(v343 >> 12)];
              v342 = (*v341 + (~v343 & 0xFFF));
            }

            else
            {
              v341 = &v313[v338 >> 12];
              v342 = (*v341 + (v338 & 0xFFF));
            }

            __dst.data = v313;
            __dst.height = v314;
            v528[0].data = &__dst;
            if (v330 != v341)
            {
              v471 = v342;
              v345 = *v330;
              v344 = v330 + 1;
              std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>::operator()[abi:ne200100](v528, v331, (v345 + 4096));
              if (v344 != v341)
              {
                v346 = __dst.data;
                v347 = __dst.height;
                do
                {
                  v348 = 0;
                  v349 = *v344;
                  v351 = *v346++;
                  v350 = v351;
                  while (1)
                  {
                    v352 = v350 - v347 + 4096;
                    if (4096 - v348 >= v352)
                    {
                      v353 = v352;
                    }

                    else
                    {
                      v353 = 4096 - v348;
                    }

                    if (v353)
                    {
                      memmove(v347, &v349[v348], v353);
                    }

                    v348 += v353;
                    if (v348 == 4096)
                    {
                      break;
                    }

                    v354 = *v346++;
                    v350 = v354;
                    v347 = v354;
                  }

                  v347 += v353;
                  if (*(v346 - 1) + 4096 == v347)
                  {
                    v347 = *v346;
                  }

                  else
                  {
                    --v346;
                  }

                  __dst.data = v346;
                  __dst.height = v347;
                  ++v344;
                }

                while (v344 != v341);
              }

              v331 = *v344;
              v339 = __srca;
              v340 = v479;
              v342 = v471;
            }

            std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>::operator()[abi:ne200100](v528, v331, v342);
            v313 = __dst.data;
            v314 = __dst.height;
            v257 = v475;
          }

          __dst.data = v313;
          __dst.height = v314;
          v528[0].data = &__dst;
          if (v340 != v483)
          {
            v356 = *v340;
            v355 = v340 + 1;
            std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>::operator()[abi:ne200100](v528, v339, (v356 + 4096));
            if (v355 != v483)
            {
              v357 = __dst.data;
              v358 = __dst.height;
              do
              {
                v359 = 0;
                v360 = v355;
                v361 = *v355;
                v363 = *v357++;
                v362 = v363;
                while (1)
                {
                  v364 = v362 - v358 + 4096;
                  if (4096 - v359 >= v364)
                  {
                    v365 = v364;
                  }

                  else
                  {
                    v365 = 4096 - v359;
                  }

                  if (v365)
                  {
                    memmove(v358, &v361[v359], v365);
                  }

                  v359 += v365;
                  if (v359 == 4096)
                  {
                    break;
                  }

                  v366 = *v357++;
                  v362 = v366;
                  v358 = v366;
                }

                v358 += v365;
                if (*(v357 - 1) + 4096 == v358)
                {
                  v358 = *v357;
                }

                else
                {
                  --v357;
                }

                __dst.data = v357;
                __dst.height = v358;
                v355 = v360 + 1;
              }

              while (v360 + 1 != v483);
            }

            v339 = *v355;
          }

          std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>::operator()[abi:ne200100](v528, v339, v257);
        }

        goto LABEL_410;
      }

      if (v263 >= v258 >> 1)
      {
        v315 = __srca;
        v316 = &__srca[v258 - v263 - *v479];
        if (v316 >= 1)
        {
          v317 = &v479[v316 >> 12];
          goto LABEL_301;
        }

        v321 = 4095 - v316;
        v322 = ~v321;
        v317 = &v479[-(v321 >> 12)];
      }

      else
      {
        v315 = __srca;
        if (!v263)
        {
          v317 = v483;
          v320 = v257;
          goto LABEL_306;
        }

        v316 = &v257[-v263 - *v483];
        if (v316 >= 1)
        {
          v317 = &v483[v316 >> 12];
LABEL_301:
          v320 = (*v317 + (v316 & 0xFFF));
LABEL_306:
          v479 = v317;
          if (v320 == v315)
          {
            v318 = v314;
            v319 = v313;
          }

          else
          {
            v324 = v317;
            v325 = v320;
            v319 = v313;
            v318 = v314;
            do
            {
              if (v318 == *v319)
              {
                v326 = *--v319;
                v318 = v326 + 4096;
              }

              if (v325 == *v324)
              {
                v327 = *--v324;
                v325 = (v327 + 4096);
              }

              v328 = *--v325;
              *--v318 = v328;
              a5[2] = vaddq_s64(a5[2], xmmword_1B42AF9D0);
            }

            while (v325 != v315);
          }

          __srca = v320;
          v258 = v263;
          goto LABEL_316;
        }

        v323 = 4095 - v316;
        v322 = ~v323;
        v317 = &v483[-(v323 >> 12)];
      }

      v320 = (*v317 + (v322 & 0xFFF));
      goto LABEL_306;
    }

    v275 = (v261 << 9) - 1;
    if (v250 == v249)
    {
      v275 = 0;
    }

    v276 = v275 - v247;
    if (v258 > v276)
    {
      std::deque<unsigned char>::__add_back_capacity(a5, v258 - v276);
      v245 = a5[2].i64[1];
      v249 = a5->i64[1];
      v250 = a5[1].i64[0];
      v247 = a5[2].i64[0] + v245;
    }

    v277 = (v249 + 8 * (v247 >> 12));
    if (v250 == v249)
    {
      v278 = 0;
    }

    else
    {
      v278 = (*v277 + (v247 & 0xFFF));
    }

    v279 = v245 - v263;
    if (v279 >= v258)
    {
      v282 = v278;
      v283 = (v249 + 8 * (v247 >> 12));
      goto LABEL_250;
    }

    if (v279 >= v258 >> 1)
    {
      v280 = &v257[v279 - v258 - *v483];
      if (v280 >= 1)
      {
        v281 = &v483[v280 >> 12];
        goto LABEL_232;
      }

      v286 = 4095 - v280;
      v287 = ~v286;
      v281 = &v483[-(v286 >> 12)];
    }

    else
    {
      if (!v279)
      {
        v281 = v479;
        v285 = __srca;
        goto LABEL_240;
      }

      v280 = &__srca[v279 - *v479];
      if (v280 >= 1)
      {
        v281 = &v479[v280 >> 12];
LABEL_232:
        v285 = (*v281 + (v280 & 0xFFF));
LABEL_240:
        v483 = v281;
        if (v285 == v257)
        {
          v282 = v278;
          v283 = v277;
        }

        else
        {
          v289 = v281;
          v290 = v285;
          v283 = v277;
          v282 = v278;
          do
          {
            *v282++ = *v290;
            if (&v282[-*v283] == 4096)
            {
              v291 = v283[1];
              ++v283;
              v282 = v291;
            }

            if (&(++v290)[-*v289] == 4096)
            {
              v292 = v289[1];
              ++v289;
              v290 = v292;
            }

            ++a5[2].i64[1];
          }

          while (v290 != v257);
        }

        v257 = v285;
        v258 = v279;
LABEL_250:
        if (!v258)
        {
LABEL_410:
          __dst.data = &v498;
          std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__destroy_vector::operator()[abi:ne200100](&__dst);
          std::deque<unsigned char>::~deque[abi:ne200100](&v501);

          goto LABEL_367;
        }

        v293 = &v278[-v258 - *v277];
        if (v293 < 1)
        {
          v296 = 4095 - v293;
          v294 = &v277[-(v296 >> 12)];
          v295 = (*v294 + (~v296 & 0xFFF));
        }

        else
        {
          v294 = &v277[v293 >> 12];
          v295 = (*v294 + (v293 & 0xFFF));
        }

        if (v295 != v278)
        {
          v297 = v294;
          v298 = v295;
          do
          {
            *v282++ = *v298;
            if (&v282[-*v283] == 4096)
            {
              v299 = v283[1];
              ++v283;
              v282 = v299;
            }

            if (&(++v298)[-*v297] == 4096)
            {
              v300 = v297[1];
              ++v297;
              v298 = v300;
            }

            ++a5[2].i64[1];
          }

          while (v298 != v278);
        }

        if (v258 < v279)
        {
          v301 = *v277;
          v302 = &v278[-v279 - *v277];
          if (v302 < 1)
          {
            v305 = 4095 - v302;
            v303 = &v277[-(v305 >> 12)];
            v304 = (*v303 + (~v305 & 0xFFF));
          }

          else
          {
            v303 = &v277[v302 >> 12];
            v304 = (*v303 + (v302 & 0xFFF));
          }

          if (v303 != v294)
          {
            v306 = *v294;
            if (*v294 == v295)
            {
              goto LABEL_456;
            }

            while (1)
            {
              if (v295 - v306 >= v278 - v301)
              {
                v307 = v278 - v301;
              }

              else
              {
                v307 = v295 - v306;
              }

              v295 -= v307;
              v278 -= v307;
              if (v307)
              {
                memmove(v278, v295, v307);
              }

              if (v295 == v306)
              {
                break;
              }

              v308 = *--v277;
              v301 = v308;
              v278 = v308 + 4096;
            }

            while (1)
            {
              v301 = *v277;
              if ((*v277 + 4096) == v278)
              {
                v429 = v277[1];
                ++v277;
                v301 = v429;
                v278 = v429;
              }

LABEL_456:
              if (--v294 == v303)
              {
                break;
              }

              v430 = *v294;
              v431 = (*v294 + 4096);
              while (1)
              {
                if (v431 - v430 >= v278 - v301)
                {
                  v432 = v278 - v301;
                }

                else
                {
                  v432 = v431 - v430;
                }

                v431 -= v432;
                v278 -= v432;
                if (v432)
                {
                  memmove(v278, v431, v432);
                }

                if (v431 == v430)
                {
                  break;
                }

                v433 = *--v277;
                v301 = v433;
                v278 = v433 + 4096;
              }
            }

            v434 = (*v294 + 4096);
            if (v434 == v304)
            {
              goto LABEL_411;
            }

            v435 = *v277;
            while (1)
            {
              v436 = &v278[-v435];
              if (v434 - v304 >= v436)
              {
                v437 = v436;
              }

              else
              {
                v437 = v434 - v304;
              }

              v434 -= v437;
              v278 -= v437;
              if (v437)
              {
                memmove(v278, v434, v437);
              }

              if (v434 == v304)
              {
                break;
              }

              v438 = *--v277;
              v435 = v438;
              v278 = (v438 + 4096);
            }

            goto LABEL_283;
          }

          if (v304 != v295)
          {
            while (1)
            {
              if (v295 - v304 >= v278 - v301)
              {
                v310 = v278 - v301;
              }

              else
              {
                v310 = v295 - v304;
              }

              v295 -= v310;
              v278 -= v310;
              if (v310)
              {
                memmove(v278, v295, v310);
              }

              if (v295 == v304)
              {
                break;
              }

              v309 = *--v277;
              v301 = v309;
              v278 = v309 + 4096;
            }

LABEL_283:
            if ((*v277 + 4096) == v278)
            {
              v311 = v277[1];
              ++v277;
              v278 = v311;
            }
          }
        }

LABEL_411:
        if (v483 == v479)
        {
          if (__srca != v257)
          {
            v404 = *v277;
            v403 = v277 - 1;
            v402 = v404;
            while (1)
            {
              v405 = &v278[-v402];
              if (v257 - __srca >= v405)
              {
                v406 = v405;
              }

              else
              {
                v406 = v257 - __srca;
              }

              v257 -= v406;
              if (v406)
              {
                memmove(&v278[-v406], v257, v406);
              }

              if (v257 == __srca)
              {
                break;
              }

              v407 = *v403--;
              v402 = v407;
              v278 = (v407 + 4096);
            }
          }
        }

        else
        {
          v408 = *v483;
          if (*v483 != v257)
          {
            v409 = *v277;
            while (1)
            {
              v410 = &v278[-v409];
              if (v257 - v408 >= v410)
              {
                v411 = v410;
              }

              else
              {
                v411 = v257 - v408;
              }

              v257 -= v411;
              v278 -= v411;
              if (v411)
              {
                memmove(v278, v257, v411);
              }

              if (v257 == v408)
              {
                break;
              }

              v412 = *--v277;
              v409 = v412;
              v278 = (v412 + 4096);
            }

            if ((*v277 + 4096) == v278)
            {
              v413 = v277[1];
              ++v277;
              v278 = v413;
            }
          }

          v414 = v483 - 1;
          if (v483 - 1 != v479)
          {
            v415 = *v277;
            do
            {
              v416 = *v414;
              v417 = (*v414 + 4096);
              while (1)
              {
                v418 = (v278 - v415);
                if (v417 - v416 >= v418)
                {
                  v419 = v418;
                }

                else
                {
                  v419 = v417 - v416;
                }

                v417 -= v419;
                v278 -= v419;
                if (v419)
                {
                  memmove(v278, v417, v419);
                }

                if (v417 == v416)
                {
                  break;
                }

                v420 = *--v277;
                v415 = v420;
                v278 = v420 + 4096;
              }

              v415 = *v277;
              if ((*v277 + 4096) == v278)
              {
                v421 = v277[1];
                ++v277;
                v415 = v421;
                v278 = v421;
              }

              --v414;
            }

            while (v414 != v479);
          }

          v422 = (*v414 + 4096);
          if (v422 != __srca)
          {
            v425 = *v277;
            v424 = v277 - 1;
            v423 = v425;
            while (1)
            {
              v426 = &v278[-v423];
              if (v422 - __srca >= v426)
              {
                v427 = v426;
              }

              else
              {
                v427 = v422 - __srca;
              }

              v422 -= v427;
              if (v427)
              {
                memmove(&v278[-v427], v422, v427);
              }

              if (v422 == __srca)
              {
                break;
              }

              v428 = *v424--;
              v423 = v428;
              v278 = (v428 + 4096);
            }
          }
        }

        goto LABEL_410;
      }

      v288 = 4095 - v280;
      v287 = ~v288;
      v281 = &v479[-(v288 >> 12)];
    }

    v285 = (*v281 + (v287 & 0xFFF));
    goto LABEL_240;
  }

  v197 = v443;
LABEL_367:
  v495 = 0u;
  v496 = 0u;
  v493 = 0u;
  v494 = 0u;
  v468 = v197;
  v476 = [v468 countByEnumeratingWithState:&v493 objects:v527 count:16];
  if (v476)
  {
    LODWORD(v367) = 0;
    v472 = *v494;
    do
    {
      v480 = 0;
      v367 = v367;
      do
      {
        if (*v494 != v472)
        {
          objc_enumerationMutation(v468);
        }

        v368 = a5[2].u64[1];
        if (v368)
        {
          if (v368 <= v367)
          {
            v369 = 1;
          }

          else if (*(*(a5->i64[1] + (((a5[2].i64[0] + v367) >> 9) & 0x7FFFFFFFFFFFF8)) + ((a5[2].i64[0] + v367) & 0xFFF)))
          {
            v369 = 2;
          }

          else
          {
            v369 = 1;
          }
        }

        else
        {
          v369 = 2;
        }

        v370 = *(*(&v493 + 1) + 8 * v480);
        [v370 setNmsOutputScale:v369];
        v371 = [v370 featureID];
        v372 = *&v505[21 * v371 + 9] - *&v505[21 * v371 + 8];
        if ((v372 >> 4) < 1)
        {
          [v370 setPolygon:0];
        }

        else
        {
          v373 = (v372 >> 4) & 0x7FFFFFFF;
          std::vector<CGPoint>::vector[abi:ne200100](&__dst, v373);
          v374 = 0;
          v375 = v373;
          do
          {
            v376 = [v370 featureID];
            v377 = *(*&v505[21 * v376 + 8] + v374);
            v378 = [v370 featureID];
            v379 = *(*&v505[21 * v378 + 8] + v374 + 8);
            v380 = __dst.data + v374;
            *v380 = v377;
            v380[1] = v379;
            v374 += 16;
            --v375;
          }

          while (v375);
          v381 = [CRNormalizedPolyline alloc];
          v382 = [(CRNormalizedPolyline *)v381 initWithNormalizedPoints:__dst.data count:v373 size:a14, a15];
          [v370 setPolygon:v382];

          if (__dst.data)
          {
            __dst.height = __dst.data;
            operator delete(__dst.data);
          }
        }

        v491 = 0u;
        v492 = 0u;
        v489 = 0u;
        v490 = 0u;
        v484 = [v370 subFeatures];
        v383 = [v484 countByEnumeratingWithState:&v489 objects:v526 count:16];
        if (v383)
        {
          __srcb = *v490;
          do
          {
            for (j = 0; j != v383; ++j)
            {
              if (*v490 != __srcb)
              {
                objc_enumerationMutation(v484);
              }

              v385 = *(*(&v489 + 1) + 8 * j);
              v386 = [v370 featureID];
              v387 = *&v505[21 * v386 + 9] - *&v505[21 * v386 + 8];
              if ((v387 >> 4) < 1)
              {
                [v385 setPolygon:0];
              }

              else
              {
                v388 = (v387 >> 4) & 0x7FFFFFFF;
                std::vector<CGPoint>::vector[abi:ne200100](&__dst, v388);
                v389 = 0;
                v390 = v388;
                do
                {
                  v391 = [v370 featureID];
                  v392 = *(*&v505[21 * v391 + 8] + v389);
                  v393 = [v370 featureID];
                  v394 = *(*&v505[21 * v393 + 8] + v389 + 8);
                  v395 = __dst.data + v389;
                  *v395 = v392;
                  v395[1] = v394;
                  v389 += 16;
                  --v390;
                }

                while (v390);
                v396 = [CRNormalizedPolyline alloc];
                v397 = [(CRNormalizedPolyline *)v396 initWithNormalizedPoints:__dst.data count:v388 size:a14, a15];
                [v385 setPolygon:v397];

                if (__dst.data)
                {
                  __dst.height = __dst.data;
                  operator delete(__dst.data);
                }
              }

              [v385 setNmsOutputScale:v369];
            }

            v383 = [v484 countByEnumeratingWithState:&v489 objects:v526 count:16];
          }

          while (v383);
        }

        ++v367;
        ++v480;
      }

      while (v480 != v476);
      v476 = [v468 countByEnumeratingWithState:&v493 objects:v527 count:16];
    }

    while (v476);
  }

  v398 = v506;
  v399 = v505;
  while (v398 != v399)
  {
    v398 -= 168;
    std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>::destroy[abi:ne200100](&v505, v398);
  }

  *&v506 = v399;
  std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::shrink_to_fit(&v505);
  if (v440 && v446)
  {
    v400 = v446;
    *v440 = v446;
  }

  __dst.data = &v505;
  a1 = v468;
  std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__destroy_vector::operator()[abi:ne200100](&__dst);
  std::deque<unsigned char>::~deque[abi:ne200100](&v507);

LABEL_407:

  return a1;
}

- (void)computeClassificationType:(void *)a3 fromTextFeatures:(uint64_t *)a4 fineScaleMap:(uint64_t *)a5 fullTileMap:(void *)a6 withScaleIds:
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v23 = a1;
  if (a1)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = v10;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      LODWORD(v12) = 0;
      v26 = *v29;
      do
      {
        v27 = v11;
        v13 = 0;
        v12 = v12;
        do
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v14 = a4[1];
          v15 = v14 == *a4;
          v16 = v14 == *a4 || a5[1] == *a5;
          v17 = (a5[1] == *a5) ^ v16;
          if (!v15)
          {
            v17 = 0;
          }

          if (v17)
          {
            v18 = a5;
          }

          else
          {
            v18 = a4;
          }

          if (!v16)
          {
            v18 = a4;
            if (a6[5] > v12)
            {
              if (*(*(a6[1] + (((v12 + a6[4]) >> 9) & 0x7FFFFFFFFFFFF8)) + ((v12 + a6[4]) & 0xFFF)))
              {
                v18 = a5;
              }

              else
              {
                v18 = a4;
              }
            }
          }

          v19 = *(*(&v28 + 1) + 8 * v13);
          if (a2)
          {
            if (a2 == 1)
            {
              [CRNeuralTextDetectorV3 computeOrientationFromSingleTextFeature:v18 map:?];
            }

            else
            {
              [CRNeuralTextDetectorV3 computeTextTypeFromSingleTextFeature:v18 map:?];
            }
          }

          else
          {
            v20 = [v23 configuration];
            v21 = [v20 scriptRatioThresholds];
            [CRNeuralTextDetectorV3 computeScriptCategoryFromSingleTextFeature:v19 map:v18 scriptRatioThresholds:v21];
          }

          ++v12;
          ++v13;
        }

        while (v27 != v13);
        v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    v10 = v22;
  }
}

- (void)runFullTileInferenceOnImage:(id)a3 cachedSurface:(__IOSurface *)a4 outputMaps:(void *)a5 inputSize:(CGSize *)a6 outputSize:(CGSize *)a7 modelContext:(id)a8 delegate:(id)a9 error:(id *)a10
{
  v55 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v38 = a8;
  v37 = a9;
  v16 = objc_autoreleasePoolPush();
  v17 = [(CRNeuralTextDetector *)self configuration];
  [v17 disableScriptDetection];

  v18 = [(CRNeuralTextDetector *)self configuration];
  [v18 disableTextTypeDetection];

  v52 = 0.0;
  [v15 size];
  v20 = v19;
  v22 = v21;
  v23 = [(CRNeuralTextDetector *)self configuration];
  [v23 tileSize];
  [(CRNeuralTextDetectorV3 *)v20 calculateTargetOutputSize:v22 adjustedInputScale:v24 paddedSize:v25 imageSize:*MEMORY[0x1E695F060] maximumSize:*(MEMORY[0x1E695F060] + 8) minimumSize:0.0 inputLengthLimit:CRNeuralTextDetectorV3, a7, &v52, &v51];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v15;
  }

  else
  {
    v26 = -[CRImage_PixelBuffer initWithCVPixelBuffer:]([CRImage_PixelBuffer alloc], "initWithCVPixelBuffer:", [v15 pixelBuffer]);
  }

  v27 = v26;
  v28 = [(CRImage_PixelBuffer *)v26 pixelBufferWithScale:a6 paddedToSize:1 adjustedToSize:1111970369 paddingMode:+[CRNeuralTextDetectorV3 format:"useE5Detector"]hardwareAcceleration:a4 toSurface:v52, v51.f64[0], v51.f64[1]];
  if (v28)
  {
    if (+[CRNeuralTextDetectorV3 useE5Detector])
    {
      [v38 prebindInputImageSurface:*a4 error:0];
    }

    *v45 = 0;
    v46 = v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__9;
    v49 = __Block_byref_object_dispose__10;
    v50 = 0;
    v29 = [(CRNeuralTextDetector *)self inferenceStats];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __128__CRNeuralTextDetectorV3_runFullTileInferenceOnImage_cachedSurface_outputMaps_inputSize_outputSize_modelContext_delegate_error___block_invoke;
    v39[3] = &unk_1E7BC3450;
    v42 = v45;
    v40 = v38;
    v41 = self;
    v43 = v28;
    v44 = a10;
    [v29 measureBlock:v39];

    CVPixelBufferRelease(v28);
    if (a10)
    {
      if (*a10 || !*(v46 + 5))
      {
        v30 = CROSLogForCategory(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          v31 = [*a10 localizedDescription];
          buf = 138412290;
          *buf_4 = v31;
          _os_log_impl(&dword_1B40D2000, v30, OS_LOG_TYPE_FAULT, "Model prediction error for full tile: %@", &buf, 0xCu);
        }

        goto LABEL_22;
      }
    }

    else if (!*(v46 + 5))
    {
      v30 = CROSLogForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B40D2000, v30, OS_LOG_TYPE_FAULT, "Model prediction error for full tile with error == nullptr.", &buf, 2u);
      }

      goto LABEL_22;
    }

    if (![(CRNeuralTextDetector *)self shouldCancel])
    {
      v36 = [*(v46 + 5) region_score];
      [(CRNeuralTextDetectorV3 *)&buf createImageMap:v36 targetSize:?];
    }

    if (!a10)
    {
      goto LABEL_24;
    }

    v35 = [CRImageReader errorWithErrorCode:-3];
    v30 = *a10;
    *a10 = v35;
LABEL_22:

LABEL_24:
    _Block_object_dispose(v45, 8);

    goto LABEL_25;
  }

  v32 = CROSLogForCategory(0);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
  {
    *v45 = 0;
    _os_log_impl(&dword_1B40D2000, v32, OS_LOG_TYPE_FAULT, "NULL when creating fullTilePixelBuffer.", v45, 2u);
  }

  if (a10)
  {
    v33 = [CRImageReader errorWithErrorCode:-5];
    v34 = *a10;
    *a10 = v33;
  }

LABEL_25:

  objc_autoreleasePoolPop(v16);
}

void __128__CRNeuralTextDetectorV3_runFullTileInferenceOnImage_cachedSurface_outputMaps_inputSize_outputSize_modelContext_delegate_error___block_invoke(uint64_t a1)
{
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v2 = CRSignpostLog_signPostOSLog;
  v3 = os_signpost_id_generate(v2);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v4 = CRSignpostLog_signPostOSLog;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "OCRDetectorInferenceTime", "", buf, 2u);
  }

  if (+[CRNeuralTextDetectorV3 useE5Detector])
  {
    v6 = *(a1 + 32);
    v19 = 0;
    v7 = [v6 predictionFromPreboundInputsWithError:&v19];
    v8 = v19;
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;
  }

  else
  {
    v10 = [*(a1 + 40) modelEIR];
    v11 = *(a1 + 56);
    v18 = 0;
    v12 = [v10 predictionFromImage:v11 error:&v18];
    v8 = v18;
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  if (v8)
  {
    v15 = *(a1 + 64);
    if (v15)
    {
      objc_storeStrong(v15, v8);
    }
  }

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v16 = CRSignpostLog_signPostOSLog;
  v17 = v16;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v17, OS_SIGNPOST_INTERVAL_END, v3, "OCRDetectorInferenceTime", "", buf, 2u);
  }
}

- (void)addIntermediateResults:(uint64_t)a3 idxLog:(void *)a4 adjustedSize:(uint64_t)a5 quadFeatures:(uint64_t)a6 nmsOutputScale:(uint64_t)a7
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = [v12 pyramidScaleSize];
  v14 = [MEMORY[0x1E696B098] valueWithSize:{a1, a2}];
  [v13 insertObject:v14 atIndex:a5];

  v15 = [v12 pyramidScaleName];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a7];
  [v15 insertObject:v16 atIndex:a5];

  v17 = [v12 pyramidPreIntraScaleNMSTextFeatures];
  v18 = [v17 objectAtIndexedSubscript:a5];
  v19 = [objc_opt_class() textFeaturesFromPolygons:a6 withScale:&v20 withNMSOutputScale:0];
  [v18 addObjectsFromArray:v19];
}

- (void)updateNMS:(uint64_t)a3 andQuadFeatures:(uint64_t *)a4 inMaps:(void *)a5 tileRects:(uint64_t)a6 intermediateResult:(int)a7 isFullTile:(float)a8 isHorizontal:adjustedSize:randomPrefix:
{
  a2;
  v27 = a5;
  v14 = *a4;
  if (a7)
  {
    v15 = a4[4];
  }

  else
  {
    v15 = a4[5];
  }

  if (a7)
  {
    v16 = a4[5];
  }

  else
  {
    v16 = a4[4];
  }

  v17 = [a1 configuration];
  [v17 scoreMapScaleFactor];

  v18 = malloc_type_calloc(*(v14 + 8) * *(v14 + 16), 4uLL, 0x100004052888210uLL);
  v19 = *(v14 + 8);
  v20 = *(v14 + 16);
  v31[0] = v18;
  v31[1] = v19;
  v31[2] = v20;
  v31[3] = (4 * v20);
  if (a7)
  {
    v21 = @"hor";
  }

  else
  {
    v21 = @"ver";
  }

  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f_%@", a8, v21, v27];
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v22 = CRSignpostLog_signPostOSLog;
  v23 = os_signpost_id_generate(v22);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v24 = CRSignpostLog_signPostOSLog;
  v25 = v24;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "OCRDetectorPostprocessingExtractTextBoxes", "", buf, 2u);
  }

  [a1 configuration];
  v26 = [objc_claimAutoreleasedReturnValue() extractPolygons];
  CRDetectorPostProcessV3::extractTextBoxes(v14, v15, v16, a3, v31, a6, v26, v29);
}

- (void)runNMSForDirection:(uint64_t *)a3 adjustedSize:(void *)a4 fullTileMaps:(void *)a5 adjustedFullTileSize:(void *)a6 targetSize:(int)a7 targetSizeFullTile:(id *)a8 intermediateResults:(uint64_t *)a9 withScaleIds:(unsigned __int8)a10 sourceImageSize:(unsigned __int8)a11 tileRects:isHorizontal:resultTextFeatures:quadFeatures:isFineScaleVerticalLinkActive:isFullTileVerticalLinkActive:idxLog:
{
  v76 = *MEMORY[0x1E69E9840];
  v48 = a4;
  v17 = a6;
  v47 = v17;
  v49 = 0;
  v18 = *a3 != 0;
  if (*a2)
  {
    v19 = a10;
  }

  else
  {
    v19 = 0;
  }

  if (*a3)
  {
    v20 = a11;
  }

  else
  {
    v20 = 0;
  }

  if (a7)
  {
    v21 = *a2 != 0;
  }

  else
  {
    v21 = v19;
  }

  v62 = 0;
  v63 = 0;
  if (a7)
  {
    v20 = v18;
  }

  v64 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v51 = v20;
  v54 = v20 & v21;
  if ((v20 & v21) == 1)
  {
    v17 = [[CRNMS alloc] initForRevision:3, v17, v48, 0];
    v49 = v17;
  }

  CRLogger = CRLogger::getCRLogger(v17);
  if (*CRLogger == 1 && (CRLogger[8] & 1) != 0)
  {
    v23 = rand();
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;
  if (v21)
  {
    [CRNeuralTextDetectorV3 updateNMS:a1 andQuadFeatures:v49 inMaps:&v59 tileRects:a2 intermediateResult:0 isFullTile:0 isHorizontal:a7 adjustedSize:v24 randomPrefix:?];
  }

  if (v51)
  {
    [CRNeuralTextDetectorV3 updateNMS:a1 andQuadFeatures:v49 inMaps:&v62 tileRects:a3 intermediateResult:v47 isFullTile:1 isHorizontal:a7 adjustedSize:v24 randomPrefix:?];
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = *a8;
  v25 = [obj countByEnumeratingWithState:&v55 objects:v75 count:16];
  if (v25)
  {
    v26 = 0;
    v50 = 0;
    v27 = *v56;
    do
    {
      v28 = 0;
      v29 = v50;
      v50 += v25;
      do
      {
        if (*v56 != v27)
        {
          objc_enumerationMutation(obj);
        }

        if (v54 && ((v30 = a5[5]) == 0 || v30 > v29 && *(*(a5[1] + (((v29 + a5[4]) >> 9) & 0x7FFFFFFFFFFFF8)) + ((v29 + a5[4]) & 0xFFF))))
        {
          v31 = 1;
          v32 = 2;
        }

        else
        {
          v31 = 0;
          v32 = 1;
        }

        v33 = *(*(&v55 + 1) + 8 * v28);
        [v33 setNmsOutputScale:{v32, v47}];
        v34 = [v33 featureID];
        if (v31)
        {
          v35 = v62;
        }

        else
        {
          v35 = v59;
        }

        v36 = v35 + 168 * v34;
        v37 = *v36;
        v38 = *(v36 + 16);
        v39 = *(v36 + 48);
        v66[2] = *(v36 + 32);
        v66[3] = v39;
        v66[0] = v37;
        v66[1] = v38;
        v68 = 0;
        v69 = 0;
        __p = 0;
        std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(&__p, *(v36 + 64), *(v36 + 72), (*(v36 + 72) - *(v36 + 64)) >> 4);
        v40 = *(v36 + 88);
        v41 = *(v36 + 104);
        v42 = *(v36 + 120);
        v73 = *(v36 + 136);
        v72 = v42;
        v71 = v41;
        v70 = v40;
        memset(v74, 0, 24);
        std::vector<CRDetectorUtils::CRTextDetectorQuad>::__init_with_size[abi:ne200100]<CRDetectorUtils::CRTextDetectorQuad*,CRDetectorUtils::CRTextDetectorQuad*>(v74, *(v36 + 144), *(v36 + 152), 0x8E38E38E38E38E39 * ((*(v36 + 152) - *(v36 + 144)) >> 4));
        [v33 setFeatureID:v26];
        HIDWORD(v73) = v26;
        std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::push_back[abi:ne200100](a9, v66);
        v65 = v74;
        std::vector<CRDetectorUtils::CRTextDetectorQuad>::__destroy_vector::operator()[abi:ne200100](&v65);
        if (__p)
        {
          v68 = __p;
          operator delete(__p);
        }

        ++v28;
        ++v29;
        v26 = (v26 + 1);
      }

      while (v25 != v28);
      v25 = [obj countByEnumeratingWithState:&v55 objects:v75 count:16];
    }

    while (v25);
  }

  v43 = v62;
  for (i = v63; i != v43; std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>::destroy[abi:ne200100](&v62, i))
  {
    i -= 168;
  }

  v63 = v43;
  std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::shrink_to_fit(&v62);
  v45 = v59;
  for (j = v60; j != v45; std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>::destroy[abi:ne200100](&v59, j))
  {
    j -= 168;
  }

  v60 = v45;
  std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::shrink_to_fit(&v59);

  *&v66[0] = &v59;
  std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__destroy_vector::operator()[abi:ne200100](v66);
  *&v66[0] = &v62;
  std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__destroy_vector::operator()[abi:ne200100](v66);
}

- (void)getBorderPoints:(float64x2_t *)a3 sourceImageSize:(char)a4 outP1:(float64_t)a5 outP2:(float64_t)a6 isHorizontal:
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a1;
  [v9 topLeft];
  v33[0] = v10;
  v33[1] = v11;
  [v9 topRight];
  v33[2] = v12;
  v33[3] = v13;
  [v9 bottomRight];
  v33[4] = v14;
  v33[5] = v15;
  [v9 bottomLeft];
  v33[6] = v16;
  v33[7] = v17;
  v31 = 0;
  v32 = 0;
  __p = 0;
  std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint const*,CGPoint const*>(&__p, v33, &v34, 4uLL);
  v19 = 126 - 2 * __clz((v31 - __p) >> 4);
  LOBYTE(v33[0]) = a4;
  if (v31 == __p)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  std::__introsort<std::_ClassicAlgPolicy,[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *,false>(__p, v31, v33, v20, 1, v18);
  v21 = __p;
  v22.f64[0] = a5;
  v22.f64[1] = a6;
  __asm { FMOV            V1.2D, #0.5 }

  *a2 = vmulq_f64(vmulq_f64(v22, vaddq_f64(*__p, *(__p + 1))), _Q1);
  *a3 = vmulq_f64(vmulq_f64(v22, vaddq_f64(v21[2], v21[3])), _Q1);
  v31 = v21;
  operator delete(v21);
}

+ (CGSize)scaledImageSizeForConfiguration:(id)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  [v7 maximumInputSize];
  v9 = v8;
  v11 = v10;
  [v7 tileSize];
  v13 = v12;
  v15 = v14;
  [v7 inputLengthLimit];
  v17 = [(CRNeuralTextDetectorV3 *)v9 scaledImageSizeForMaxSize:v11 minSize:v13 inputLengthLimit:v15 imageSize:v16 scale:width, height, a1, &v22];
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (BOOL)computeClassCount:(void *)a3 classProbabiity:(void *)a4 fromSingleTextFeature:(id)a5 map:(const void *)a6 backgroundClass:(int)a7
{
  v100[8] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v94 = a3;
  v13 = a3;
  v12 = *a3;
  v11 = v13[1];
  v14 = **a6;
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  [v10 topLeft];
  v18 = v17;
  [v10 topLeft];
  v100[0] = v18 * v15;
  v100[1] = v19 * v16;
  [v10 topRight];
  v21 = v20;
  [v10 topRight];
  v100[2] = v21 * v15;
  v100[3] = v22 * v16;
  [v10 bottomRight];
  v24 = v23;
  [v10 bottomRight];
  v100[4] = v24 * v15;
  v100[5] = v25 * v16;
  [v10 bottomLeft];
  v27 = v26;
  [v10 bottomLeft];
  v100[6] = v27 * v15;
  v100[7] = v28 * v16;
  CenterPoint = CRDetectorUtils::makeCenterPoint(v100, v29);
  v98.x = CenterPoint;
  v98.y = v31;
  v95 = v31;
  [v10 baselineAngle];
  v32 = v11 - v12;
  CRDetectorUtils::rotatePolygon(v100, &v98, &v99, v33, v34);
  CRDetectorUtils::convertPointToRect(&v99, v35);
  v40 = v39;
  v41 = (v32 >> 3);
  v91 = v16;
  if (v32 << 29)
  {
    if (!(v41 >> 61))
    {
      operator new();
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v42 = v32 >> 3;
  v43 = (v32 >> 3) & 0x7FFFFFFF;
  if ((v32 >> 3) >= 1)
  {
    v44 = *a6;
    v45 = 0;
    v46 = (v32 >> 3) & 0x7FFFFFFF;
    do
    {
      v47 = *v44++;
      *v45++ = *v47;
      --v46;
    }

    while (v46);
  }

  v48 = v36;
  v49 = v36;
  v93 = v36 + v38;
  if (v36 + v38 <= v49)
  {
    goto LABEL_42;
  }

  v50 = 0;
  v51 = v40;
  v52 = v40 + v37;
  v90 = v51;
  v53 = v51;
  v54 = (v91 - 1);
  v92 = v51;
  do
  {
    if (v52 > v53)
    {
      v55 = v49 - v95;
      v56 = -(v49 - v95);
      v57 = v90;
      do
      {
        [v10 baselineAngle];
        v59 = __sincosf_stret(v58);
        v60 = -v59.__sinval;
        v61 = CenterPoint + v56 * v60 + (v53 - CenterPoint) * v59.__cosval;
        v62 = v95 + v55 * v59.__cosval + (v53 - CenterPoint) * v60;
        v63 = fmax(v61, 0.0);
        if (v63 >= (v15 - 1))
        {
          v64 = (v15 - 1);
        }

        else
        {
          v64 = v63;
        }

        v65 = fmax(v62, 0.0);
        if (v65 >= v54)
        {
          v66 = v54;
        }

        else
        {
          v66 = v65;
        }

        std::vector<double>::vector[abi:ne200100](&__p, v41);
        v67 = v15 * v66 + v64;
        v68 = *a4;
        v69 = __p;
        v70 = *(a4 + 1) - *a4;
        if (v70)
        {
          v71 = v70 >> 3;
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = 0;
          v73 = __p;
          do
          {
            v74 = *v72++;
            *v73++ = *(v74 + 4 * v67);
            --v71;
          }

          while (v71);
        }

        v75 = v69 + 1;
        v76 = v69 == v97 || v75 == v97;
        v77 = v69;
        if (!v76)
        {
          v78 = *v69;
          v77 = v69;
          v79 = v69 + 1;
          do
          {
            v80 = *v79++;
            v81 = v80;
            if (v78 < v80)
            {
              v78 = v81;
              v77 = v75;
            }

            v75 = v79;
          }

          while (v79 != v97);
        }

        v82 = v77 - v69;
        if (((v77 - v69) & 0x7FFFFFFF8) != 0)
        {
          v83 = 0;
          v84 = v43;
          if (v42 >= 1)
          {
            do
            {
              v85 = *v83++;
              *v68 = *v68 + *(v85 + 4 * v67);
              ++v68;
              --v84;
            }

            while (v84);
          }

          ++*(*v94 + (v82 << 29 >> 29));
          ++v50;
        }

        if (v69)
        {
          v97 = v69;
          operator delete(v69);
        }

        v53 = ++v57;
      }

      while (v52 > v57);
    }

    v49 = ++v48;
    v53 = v92;
  }

  while (v93 > v48);
  if (v50 <= 0)
  {
LABEL_42:
    v88 = 0;
  }

  else
  {
    v86 = *a4;
    v87 = *(a4 + 1);
    if (*a4 != v87)
    {
      do
      {
        *v86 = *v86 / v50;
        ++v86;
      }

      while (v86 != v87);
    }

    v88 = 1;
  }

  return v88;
}

- (double)getBorderPoints:(char *)a3 sourceImageSize:(uint64_t)a4 outP1:(char)a5 outP2:(__n128)a6 isHorizontal:
{
LABEL_1:
  v10 = a2 - 1;
  v193 = a2 - 3;
  v194 = a2 - 2;
  v196 = &a2[-1].n128_u64[1];
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return a6.n128_f64[0];
      }

      if (v12 == 2)
      {
        v118 = 1;
        if (*a3)
        {
          v118 = 0;
        }

        n128_u64 = &a2[-1].n128_u64[1];
        if (*a3)
        {
          n128_u64 = a2[-1].n128_u64;
        }

        a6.n128_u64[0] = *n128_u64;
        if (*n128_u64 >= v11->n128_f64[v118])
        {
          return a6.n128_f64[0];
        }

LABEL_239:
        v217 = *v11;
        *v11 = *v10;
        a6 = v217;
LABEL_240:
        *v10 = a6;
        return a6.n128_f64[0];
      }

      goto LABEL_9;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      a6.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *,0>(v11, v11 + 1, v11 + 2, a2[-1].n128_u64, a3, a6).n128_u64[0];
      return a6.n128_f64[0];
    }

    if (v12 == 5)
    {
      v104 = v11 + 1;
      v105 = v11 + 2;
      v106 = v11 + 3;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *,0>(v11, v11 + 1, v11 + 2, v11[3].n128_u64, a3, a6);
      v107 = 1;
      if (*a3)
      {
        v107 = 0;
      }

      v108 = v196;
      if (*a3)
      {
        v108 = v10;
      }

      a6.n128_u64[0] = *v108;
      if (*v108 < v106->n128_f64[v107])
      {
        v109 = *v106;
        *v106 = *v10;
        *v10 = v109;
        v110 = &v11[3].n128_u64[1];
        v111 = 1;
        if (*a3)
        {
          v111 = 0;
          v110 = v11[3].n128_u64;
        }

        a6.n128_u64[0] = *v110;
        if (*v110 < v105->n128_f64[v111])
        {
          v112 = *v105;
          *v105 = *v106;
          *v106 = v112;
          v113 = &v11[2].n128_u64[1];
          v114 = 1;
          if (*a3)
          {
            v114 = 0;
            v113 = v11[2].n128_u64;
          }

          a6.n128_u64[0] = *v113;
          if (*v113 < v104->n128_f64[v114])
          {
            v115 = *v104;
            *v104 = *v105;
            *v105 = v115;
            v116 = &v11[1].n128_u64[1];
            v117 = 1;
            if (*a3)
            {
              v117 = 0;
              v116 = v11[1].n128_u64;
            }

            a6.n128_u64[0] = *v116;
            if (*v116 < v11->n128_f64[v117])
            {
              v216 = *v11;
              *v11 = *v104;
              a6.n128_u64[0] = v216.n128_u64[0];
              *v104 = v216;
            }
          }
        }
      }

      return a6.n128_f64[0];
    }

LABEL_9:
    if (v12 <= 23)
    {
      v126 = v11 + 1;
      v128 = v11 == a2 || v126 == a2;
      if (a5)
      {
        if (!v128)
        {
          v129 = 0;
          v130 = v11;
          do
          {
            v131 = v130[1].n128_f64[0];
            a6.n128_u64[0] = v130[1].n128_u64[1];
            if (*a3)
            {
              v132 = 0;
            }

            else
            {
              v132 = 1;
            }

            v133 = v130->n128_f64[v132];
            v130 = v126;
            if (*a3)
            {
              v134 = v131;
            }

            else
            {
              v134 = a6.n128_f64[0];
            }

            if (v134 < v133)
            {
              v135 = v129;
              while (1)
              {
                *(v11 + v135 + 16) = *(v11 + v135);
                if (!v135)
                {
                  break;
                }

                if (*a3)
                {
                  v136 = 0;
                }

                else
                {
                  v136 = 8;
                }

                if (*a3)
                {
                  v137 = v131;
                }

                else
                {
                  v137 = a6.n128_f64[0];
                }

                v138 = *(v11[-1].n128_f64 + v135 + v136);
                v135 -= 16;
                if (v137 >= v138)
                {
                  v139 = &v11[1] + v135;
                  goto LABEL_271;
                }
              }

              v139 = v11;
LABEL_271:
              *v139 = v131;
              *(v139 + 8) = a6.n128_u64[0];
            }

            v126 = v130 + 1;
            v129 += 16;
          }

          while (&v130[1] != a2);
        }
      }

      else if (!v128)
      {
        v180 = *a3;
        v181 = v11 - 1;
        do
        {
          v182 = a1[1].n128_f64[0];
          a6.n128_u64[0] = a1[1].n128_u64[1];
          v183 = (v180 & 1) == 0;
          v184 = a1->n128_f64[v183];
          a1 = v126;
          if (v180)
          {
            v185 = v182;
          }

          else
          {
            v185 = a6.n128_f64[0];
          }

          if (v185 < v184)
          {
            v186 = v181;
            do
            {
              v186[2] = v186[1];
              v180 = *a3;
              if (*a3)
              {
                v187 = 0;
              }

              else
              {
                v187 = 1;
              }

              if (*a3)
              {
                v188 = v182;
              }

              else
              {
                v188 = a6.n128_f64[0];
              }

              v189 = v186->n128_f64[v187];
              --v186;
            }

            while (v188 < v189);
            v186[2].n128_f64[0] = v182;
            v186[2].n128_u64[1] = a6.n128_u64[0];
          }

          v126 = a1 + 1;
          ++v181;
        }

        while (&a1[1] != a2);
      }

      return a6.n128_f64[0];
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v140 = (v12 - 2) >> 1;
        v141 = v140;
        do
        {
          v142 = v141;
          if (v140 >= v141)
          {
            v143 = (2 * v141) | 1;
            v144 = &v11[v143];
            if (2 * v142 + 2 >= v12)
            {
              v146 = (*a3 & 1) == 0;
            }

            else
            {
              n128_f64 = &v144->n128_f64[1];
              v146 = (*a3 & 1) == 0;
              if (*a3)
              {
                n128_f64 = v11[v143].n128_f64;
              }

              if (*n128_f64 < v144[1].n128_f64[v146])
              {
                ++v144;
                v143 = 2 * v142 + 2;
              }
            }

            v147 = &v11[v142];
            if (*a3)
            {
              v148 = v144;
            }

            else
            {
              v148 = &v144->n128_f64[1];
            }

            if (*v148 >= v147->n128_f64[v146])
            {
              v149 = *v147;
              v150 = v147->n128_f64[1];
              do
              {
                v151 = v147;
                v147 = v144;
                *v151 = *v144;
                if (v140 < v143)
                {
                  break;
                }

                v152 = 2 * v143;
                v143 = (2 * v143) | 1;
                v144 = &v11[v143];
                if (v152 + 2 < v12)
                {
                  v153 = &v144->n128_f64[1];
                  v154 = (*a3 & 1) == 0;
                  if (*a3)
                  {
                    v153 = v11[v143].n128_f64;
                  }

                  if (*v153 < v144[1].n128_f64[v154])
                  {
                    ++v144;
                    v143 = v152 + 2;
                  }
                }

                v155 = (*a3 & 1) != 0 ? v144 : &v144->n128_i8[8];
                v156 = (*a3 & 1) != 0 ? v149.n128_f64[0] : v150;
              }

              while (*v155 >= v156);
              *v147 = v149;
            }
          }

          v141 = v142 - 1;
        }

        while (v142);
        do
        {
          v157 = 0;
          v218 = *v11;
          v158 = v11;
          do
          {
            v159 = v158;
            v160 = &v158[v157];
            v158 = v160 + 1;
            v161 = 2 * v157;
            v157 = (2 * v157) | 1;
            v162 = v161 + 2;
            if (v162 < v12)
            {
              v163 = v160 + 2;
              v164 = &v160[1].n128_f64[1];
              if (*a3)
              {
                v165 = 0;
              }

              else
              {
                v165 = 1;
              }

              if (*a3)
              {
                v164 = v158;
              }

              if (*v164 < v163->n128_f64[v165])
              {
                v158 = v163;
                v157 = v162;
              }
            }

            *v159 = *v158;
          }

          while (v157 <= ((v12 - 2) >> 1));
          if (v158 == --a2)
          {
            a6.n128_u64[0] = v218.n128_u64[0];
            *v158 = v218;
          }

          else
          {
            *v158 = *a2;
            a6.n128_u64[0] = v218.n128_u64[0];
            *a2 = v218;
            v166 = (v158 - v11 + 16) >> 4;
            v167 = v166 < 2;
            v168 = v166 - 2;
            if (!v167)
            {
              v169 = v168 >> 1;
              v170 = &v11[v169];
              v171 = &v170->n128_u64[1];
              if (*a3)
              {
                v172 = 0;
              }

              else
              {
                v172 = 1;
              }

              if (*a3)
              {
                v171 = v11[v169].n128_u64;
              }

              a6.n128_u64[0] = *v171;
              if (*v171 < v158->n128_f64[v172])
              {
                a6.n128_u64[0] = v158->n128_u64[0];
                v173 = v158->n128_f64[1];
                do
                {
                  v174 = v158;
                  v158 = v170;
                  *v174 = *v170;
                  if (!v169)
                  {
                    break;
                  }

                  v169 = (v169 - 1) >> 1;
                  v170 = &v11[v169];
                  v175 = *a3 ? &v11[v169] : &v170->n128_i8[8];
                  v176 = *a3 ? a6.n128_f64[0] : v173;
                }

                while (*v175 < v176);
                v158->n128_u64[0] = a6.n128_u64[0];
                v158->n128_f64[1] = v173;
              }
            }
          }

          v167 = v12-- <= 2;
        }

        while (!v167);
      }

      return a6.n128_f64[0];
    }

    v13 = &v11[v12 >> 1];
    if (*a3)
    {
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = &a2[-1].n128_f64[1];
    if (*a3)
    {
      v15 = a2[-1].n128_f64;
    }

    v16 = *v15;
    if (v12 >= 0x81)
    {
      v17 = &v13->n128_f64[1];
      if (*a3)
      {
        v17 = v13;
      }

      v18 = v13->n128_f64[v14];
      if (*v17 >= v11->n128_f64[v14])
      {
        if (v16 < v18)
        {
          v199 = *v13;
          *v13 = *v10;
          *v10 = v199;
          v21 = &v13->n128_f64[1];
          if (*a3)
          {
            v22 = 0;
          }

          else
          {
            v22 = 1;
          }

          if (*a3)
          {
            v21 = v13;
          }

          if (*v21 < v11->n128_f64[v22])
          {
            v200 = *v11;
            *v11 = *v13;
            *v13 = v200;
          }
        }
      }

      else
      {
        if (v16 < v18)
        {
          v197 = *v11;
          *v11 = *v10;
          goto LABEL_50;
        }

        v203 = *v11;
        *v11 = *v13;
        *v13 = v203;
        if (*a3)
        {
          v25 = 0;
        }

        else
        {
          v25 = 1;
        }

        v26 = &a2[-1].n128_f64[1];
        if (*a3)
        {
          v26 = a2[-1].n128_f64;
        }

        if (*v26 < v13->n128_f64[v25])
        {
          v197 = *v13;
          *v13 = *v10;
LABEL_50:
          *v10 = v197;
        }
      }

      v27 = v11 + 1;
      v28 = v13 - 1;
      v29 = &v13[-1].n128_f64[1];
      v30 = &a2[-2].n128_f64[1];
      if (*a3)
      {
        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      if (*a3)
      {
        v29 = v13[-1].n128_f64;
      }

      v32 = *v29;
      v33 = a2[-2].n128_f64;
      if (!*a3)
      {
        v33 = &a2[-2].n128_f64[1];
      }

      v34 = *v33;
      v35 = v28->n128_f64[v31];
      if (v32 >= v27->n128_f64[v31])
      {
        if (v34 < v35)
        {
          v204 = *v28;
          *v28 = *v194;
          *v194 = v204;
          v37 = &v13[-1].n128_f64[1];
          if (*a3)
          {
            v38 = 0;
          }

          else
          {
            v38 = 1;
          }

          if (*a3)
          {
            v37 = v13[-1].n128_f64;
          }

          if (*v37 < v27->n128_f64[v38])
          {
            v39 = *v27;
            *v27 = *v28;
            *v28 = v39;
          }
        }
      }

      else if (v34 >= v35)
      {
        v42 = *v27;
        *v27 = *v28;
        *v28 = v42;
        if (*a3)
        {
          v43 = 0;
        }

        else
        {
          v43 = 1;
        }

        if (*a3)
        {
          v30 = a2[-2].n128_f64;
        }

        if (*v30 < v28->n128_f64[v43])
        {
          v206 = *v28;
          *v28 = *v194;
          *v194 = v206;
        }
      }

      else
      {
        v36 = *v27;
        *v27 = *v194;
        *v194 = v36;
      }

      v44 = v11 + 2;
      v45 = v13 + 1;
      v46 = &v13[1].n128_f64[1];
      v47 = &a2[-3].n128_f64[1];
      if (*a3)
      {
        v48 = 0;
      }

      else
      {
        v48 = 1;
      }

      if (*a3)
      {
        v46 = v13[1].n128_f64;
      }

      v49 = *v46;
      v50 = a2[-3].n128_f64;
      if (!*a3)
      {
        v50 = &a2[-3].n128_f64[1];
      }

      v51 = *v50;
      v52 = v45->n128_f64[v48];
      if (v49 >= v44->n128_f64[v48])
      {
        if (v51 < v52)
        {
          v207 = *v45;
          *v45 = *v193;
          *v193 = v207;
          v54 = &v13[1].n128_f64[1];
          if (*a3)
          {
            v55 = 0;
          }

          else
          {
            v55 = 1;
          }

          if (*a3)
          {
            v54 = v13[1].n128_f64;
          }

          if (*v54 < v44->n128_f64[v55])
          {
            v56 = *v44;
            *v44 = *v45;
            *v45 = v56;
          }
        }
      }

      else if (v51 >= v52)
      {
        v57 = *v44;
        *v44 = *v45;
        *v45 = v57;
        if (*a3)
        {
          v58 = 0;
        }

        else
        {
          v58 = 1;
        }

        if (*a3)
        {
          v47 = a2[-3].n128_f64;
        }

        if (*v47 < v45->n128_f64[v58])
        {
          v208 = *v45;
          *v45 = *v193;
          *v193 = v208;
        }
      }

      else
      {
        v53 = *v44;
        *v44 = *v193;
        *v193 = v53;
      }

      v59 = &v13->n128_f64[1];
      if (*a3)
      {
        v60 = 0;
      }

      else
      {
        v60 = 1;
      }

      if (*a3)
      {
        v59 = v13;
      }

      v61 = *v59;
      v62 = &v13[1].n128_f64[1];
      if (*a3)
      {
        v62 = v13[1].n128_f64;
      }

      v63 = *v62;
      v64 = v13->n128_f64[v60];
      if (v61 >= v28->n128_f64[v60])
      {
        if (v63 < v64)
        {
          v210 = *v13;
          *v13 = *v45;
          *v45 = v210;
          v65 = &v13->n128_f64[1];
          if (*a3)
          {
            v66 = 0;
          }

          else
          {
            v66 = 1;
          }

          if (*a3)
          {
            v65 = v13;
          }

          if (*v65 < v28->n128_f64[v66])
          {
            v211 = *v28;
            *v28 = *v13;
            *v13 = v211;
          }
        }
      }

      else
      {
        if (v63 < v64)
        {
          v209 = *v28;
          *v28 = *v45;
          goto LABEL_134;
        }

        v212 = *v28;
        *v28 = *v13;
        *v13 = v212;
        v67 = &v13[1].n128_f64[1];
        if (*a3)
        {
          v68 = 0;
        }

        else
        {
          v68 = 1;
        }

        if (*a3)
        {
          v67 = v13[1].n128_f64;
        }

        if (*v67 < v13->n128_f64[v68])
        {
          v209 = *v13;
          *v13 = *v45;
LABEL_134:
          *v45 = v209;
        }
      }

      v213 = *v11;
      *v11 = *v13;
      a6.n128_u64[1] = v213.n128_u64[1];
      *v13 = v213;
      goto LABEL_136;
    }

    v19 = &v11->n128_f64[1];
    if (*a3)
    {
      v19 = v11;
    }

    v20 = v11->n128_f64[v14];
    if (*v19 >= v13->n128_f64[v14])
    {
      if (v16 < v20)
      {
        v201 = *v11;
        *v11 = *v10;
        a6.n128_u64[1] = v201.n128_u64[1];
        *v10 = v201;
        v23 = &v11->n128_f64[1];
        if (*a3)
        {
          v24 = 0;
        }

        else
        {
          v24 = 1;
        }

        if (*a3)
        {
          v23 = v11;
        }

        if (*v23 < v13->n128_f64[v24])
        {
          v202 = *v13;
          *v13 = *v11;
          a6.n128_u64[1] = v202.n128_u64[1];
          *v11 = v202;
        }
      }
    }

    else
    {
      if (v16 < v20)
      {
        v198 = *v13;
        *v13 = *v10;
LABEL_76:
        a6.n128_u64[1] = v198.n128_u64[1];
        *v10 = v198;
        goto LABEL_136;
      }

      v205 = *v13;
      *v13 = *v11;
      a6.n128_u64[1] = v205.n128_u64[1];
      *v11 = v205;
      if (*a3)
      {
        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      v41 = &a2[-1].n128_f64[1];
      if (*a3)
      {
        v41 = a2[-1].n128_f64;
      }

      if (*v41 < v11->n128_f64[v40])
      {
        v198 = *v11;
        *v11 = *v10;
        goto LABEL_76;
      }
    }

LABEL_136:
    --a4;
    if (a5)
    {
      a6.n128_u64[0] = v11->n128_u64[0];
      goto LABEL_144;
    }

    v69 = v11[-1].n128_f64;
    v70 = (*a3 & 1) == 0;
    if ((*a3 & 1) == 0)
    {
      v69 = &v11[-1].n128_f64[1];
    }

    a6.n128_u64[0] = v11->n128_u64[0];
    if (*v69 >= v11->n128_f64[v70])
    {
      v89 = v11->n128_f64[1];
      if (*a3)
      {
        v90 = v11->n128_f64[0];
      }

      else
      {
        v90 = v11->n128_f64[1];
      }

      if (v90 >= v10->n128_f64[v70])
      {
        v93 = v11 + 1;
        do
        {
          v11 = v93;
          if (v93 >= a2)
          {
            break;
          }

          v94 = v93->n128_f64[v70];
          ++v93;
        }

        while (v90 >= v94);
      }

      else
      {
        v91 = v11;
        do
        {
          v11 = v91 + 1;
          v92 = *(v91->n128_f64 + ((v70 * 8) | 0x10));
          ++v91;
        }

        while (v90 >= v92);
      }

      v95 = a2;
      if (v11 < a2)
      {
        v96 = (v70 * 8) | 0xFFFFFFFFFFFFFFF0;
        v97 = a2;
        do
        {
          v95 = v97 - 1;
          v98 = *(v97->n128_f64 + v96);
          --v97;
        }

        while (v90 < v98);
      }

      while (v11 < v95)
      {
        v215 = *v11;
        *v11 = *v95;
        *v95 = v215;
        if (*a3)
        {
          v99 = 0;
        }

        else
        {
          v99 = 8;
        }

        if (*a3)
        {
          v100 = a6.n128_f64[0];
        }

        else
        {
          v100 = v89;
        }

        do
        {
          v101 = *(v11->n128_f64 + (v99 | 0x10));
          ++v11;
        }

        while (v100 >= v101);
        v102 = v99 | 0xFFFFFFFFFFFFFFF0;
        do
        {
          v103 = *(v95->n128_f64 + v102);
          --v95;
        }

        while (v100 < v103);
      }

      if (&v11[-1] != a1)
      {
        *a1 = v11[-1];
      }

      a5 = 0;
      v11[-1].n128_u64[0] = a6.n128_u64[0];
      v11[-1].n128_f64[1] = v89;
    }

    else
    {
LABEL_144:
      v71 = 0;
      v72 = v11->n128_f64[1];
      if (*a3)
      {
        v73 = a6.n128_f64[0];
      }

      else
      {
        v73 = v11->n128_f64[1];
      }

      do
      {
        if (*a3)
        {
          v74 = 2;
        }

        else
        {
          v74 = 3;
        }

        v75 = v11[v71++].n128_f64[v74];
      }

      while (v75 < v73);
      v76 = &v11[v71];
      v77 = a2;
      if (v71 == 1)
      {
        v81 = a2;
        while (v76 < v81)
        {
          v78 = v81[-1].n128_f64;
          v82 = &v81[-1].n128_f64[1];
          if (*a3)
          {
            v82 = v78;
          }

          v80 = *v82 < v73;
          v81 = v78;
          if (v80)
          {
            goto LABEL_165;
          }
        }

        v78 = v81;
      }

      else
      {
        do
        {
          v78 = v77[-1].n128_f64;
          v79 = &v77[-1].n128_f64[1];
          if (*a3)
          {
            v79 = v78;
          }

          v80 = *v79 < v73;
          v77 = v78;
        }

        while (!v80);
      }

LABEL_165:
      v11 = v76;
      if (v76 < v78)
      {
        v83 = v78;
        do
        {
          v214 = *v11;
          *v11 = *v83;
          *v83 = v214;
          if (*a3)
          {
            v84 = a6.n128_f64[0];
          }

          else
          {
            v84 = v72;
          }

          do
          {
            v85 = &v11[1].n128_f64[1];
            ++v11;
            if (*a3)
            {
              v85 = v11;
            }
          }

          while (*v85 < v84);
          do
          {
            v86 = &v83[-1].n128_f64[1];
            --v83;
            if (*a3)
            {
              v86 = v83;
            }
          }

          while (*v86 >= v84);
        }

        while (v11 < v83);
      }

      if (&v11[-1] != a1)
      {
        *a1 = v11[-1];
      }

      v11[-1].n128_u64[0] = a6.n128_u64[0];
      v11[-1].n128_f64[1] = v72;
      if (v76 < v78)
      {
        goto LABEL_182;
      }

      v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *>(a1, v11 - 1, a3, a6);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *>(v11, a2, a3, v88))
      {
        a2 = v11 - 1;
        if (!v87)
        {
          goto LABEL_1;
        }

        return a6.n128_f64[0];
      }

      if (!v87)
      {
LABEL_182:
        std::__introsort<std::_ClassicAlgPolicy,[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *,false>(a1, &v11[-1], a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  v120 = v11 + 1;
  v121 = &v11[1].n128_f64[1];
  v122 = 1;
  if (*a3)
  {
    v122 = 0;
    v121 = v11[1].n128_f64;
  }

  v123 = *v121;
  v124 = &a2[-1].n128_u64[1];
  if (*a3)
  {
    v124 = a2[-1].n128_u64;
  }

  a6.n128_u64[0] = *v124;
  v125 = v120->n128_f64[v122];
  if (v123 >= v11->n128_f64[v122])
  {
    if (a6.n128_f64[0] < v125)
    {
      v177 = *v120;
      *v120 = *v10;
      *v10 = v177;
      v178 = &v11[1].n128_u64[1];
      v179 = 1;
      if (*a3)
      {
        v179 = 0;
        v178 = v11[1].n128_u64;
      }

      a6.n128_u64[0] = *v178;
      if (*v178 < v11->n128_f64[v179])
      {
        v219 = *v11;
        *v11 = *v120;
        a6.n128_u64[0] = v219.n128_u64[0];
        *v120 = v219;
      }
    }
  }

  else
  {
    if (a6.n128_f64[0] < v125)
    {
      goto LABEL_239;
    }

    v220 = *v11;
    *v11 = *v120;
    *v120 = v220;
    v190 = 1;
    if (*a3)
    {
      v190 = 0;
    }

    v191 = &a2[-1].n128_u64[1];
    if (*a3)
    {
      v191 = a2[-1].n128_u64;
    }

    a6.n128_u64[0] = *v191;
    if (*v191 < v120->n128_f64[v190])
    {
      a6 = *v120;
      *v120 = *v10;
      goto LABEL_240;
    }
  }

  return a6.n128_f64[0];
}

+ (void)computeOrientationFromSingleTextFeature:(uint64_t)a3 map:
{
  v66[16] = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  objc_opt_class();
  objc_opt_self();
  v66[0] = 0;
  std::vector<double>::vector[abi:ne200100](&v59, 9uLL);
  v66[0] = 0;
  std::vector<long>::vector[abi:ne200100](&__p, 9uLL);
  if ([objc_opt_class() computeClassCount:&__p classProbabiity:&v59 fromSingleTextFeature:v4 map:a3 backgroundClass:0])
  {
    v5 = v4;
    objc_opt_self();
    v6 = __p;
    if (__p == v58)
    {
      v8 = __p;
    }

    else
    {
      v7 = __p + 8;
      v8 = __p;
      if (__p + 8 != v58)
      {
        v9 = *__p;
        v8 = __p;
        v10 = __p + 8;
        do
        {
          v12 = *v10;
          v10 += 8;
          v11 = v12;
          v13 = v9 < v12;
          if (v9 <= v12)
          {
            v9 = v11;
          }

          if (v13)
          {
            v8 = v7;
          }

          v7 = v10;
        }

        while (v10 != v58);
      }
    }

    v18 = v59;
    v19 = (v59 + 8);
    if (v59 != v60 && v19 != v60)
    {
      v21 = *v59;
      v22 = (v59 + 8);
      do
      {
        v23 = *v22++;
        v24 = v23;
        if (v21 < v23)
        {
          v21 = v24;
          v18 = v19;
        }

        v19 = v22;
      }

      while (v22 != v60);
    }

    v25 = *v18;
    [v5 baselineAngle];
    v27 = v26;
    objc_opt_self();
    objc_opt_class();
    objc_opt_self();
    objc_opt_class();
    objc_opt_self();
    v28 = ((((v8 - v6) >> 3) - 1) * 0.7854) + -0.3926991;
    if (v28 <= 3.14159265)
    {
      if (v28 > -3.14159265)
      {
        goto LABEL_33;
      }

      v29 = 6.28318531;
    }

    else
    {
      v29 = -6.28318531;
    }

    v28 = v28 + v29;
LABEL_33:
    v30 = v28;
    v31 = (v30 + 0.7854);
    if (v31 <= 3.14159265)
    {
      if (v31 > -3.14159265)
      {
        goto LABEL_38;
      }

      v32 = 6.28318531;
    }

    else
    {
      v32 = -6.28318531;
    }

    v31 = v31 + v32;
LABEL_38:
    v33 = v31;
    v34 = (v27 - v30);
    if (v34 <= 3.14159265)
    {
      if (v34 > -3.14159265)
      {
        goto LABEL_43;
      }

      v35 = 6.28318531;
    }

    else
    {
      v35 = -6.28318531;
    }

    v34 = v34 + v35;
LABEL_43:
    v36 = (v27 - v33);
    if (v36 <= 3.14159265)
    {
      if (v36 > -3.14159265)
      {
LABEL_48:
        v38 = v34;
        v39 = v36;
        v40 = fabsf(v38);
        v41 = fabsf(v39);
        v42 = fminf(v40, v41);
        v43 = fmaxf(v40, v41);
        v44 = v43 > 1.5708 && v42 < 1.5708;
        if (!v44 || (v45 = 0.75, v27 >= 0.0))
        {
          v45 = 0.55;
          if ((v43 <= 0.7854 || v42 >= 2.3562) && v27 < 1.57079633)
          {
            if (v27 <= -1.57079633)
            {
              v45 = 0.55;
            }

            else
            {
              v45 = 0.75;
            }
          }
        }

        [v5 setUseSequenceOrientation:1];
        if (v44)
        {
          [v5 setIsVerticalLayout:1];
          v44 = v41 < v40;
        }

        if (v42 >= 2.3562 && v25 > v45)
        {
          [v5 setShouldRotate180:1];
          if (v25 > 0.9)
          {
            [v5 setUseSequenceOrientation:0];
          }
        }

        if (v44 && v25 > v45)
        {
          [v5 setShouldRotate180:1];
          if (v25 > 0.9)
          {
            [v5 setUseSequenceOrientation:0];
          }
        }

        [v5 setShouldRotate180DetectorOrientationFallBack:0];
        v47 = !v44;
        if (v42 >= 2.3562)
        {
          v47 = 0;
        }

        if (!v47)
        {
          [v5 setShouldRotate180DetectorOrientationFallBack:{objc_msgSend(v5, "shouldRotate180") ^ 1}];
        }

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v48 = [v5 subFeatures];
        v49 = [v48 countByEnumeratingWithState:&v61 objects:v66 count:16];
        if (v49)
        {
          v50 = *v62;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v62 != v50)
              {
                objc_enumerationMutation(v48);
              }

              v52 = *(*(&v61 + 1) + 8 * i);
              [v52 setShouldRotate180:{objc_msgSend(v5, "shouldRotate180")}];
              [v52 setShouldRotate180DetectorOrientationFallBack:{objc_msgSend(v5, "shouldRotate180DetectorOrientationFallBack")}];
              [v52 setIsVerticalLayout:{objc_msgSend(v5, "isVerticalLayout")}];
              [v52 setUseSequenceOrientation:{objc_msgSend(v5, "useSequenceOrientation")}];
            }

            v49 = [v48 countByEnumeratingWithState:&v61 objects:v66 count:16];
          }

          while (v49);
        }

        goto LABEL_83;
      }

      v37 = 6.28318531;
    }

    else
    {
      v37 = -6.28318531;
    }

    v36 = v36 + v37;
    goto LABEL_48;
  }

  [v4 setUseSequenceOrientation:1];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v14 = [v4 subFeatures];
  v15 = [v14 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v15)
  {
    v16 = *v54;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v53 + 1) + 8 * j) setUseSequenceOrientation:{objc_msgSend(v4, "useSequenceOrientation")}];
      }

      v15 = [v14 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v15);
  }

LABEL_83:
  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }
}

@end