@interface CRFormAnalyzer
+ (id)fetchSerializedResultsForImage:(id)a3;
+ (void)_saveAllDebugImagesForRegions:(id)a3 image:(id)a4 afterPostProcessing:(BOOL)a5;
+ (void)_saveDebugImageForRegions:(id)a3 image:(id)a4 suffix:(id)a5 displayTypes:(BOOL)a6;
+ (void)exportSerializedResults:(id)a3 forImage:(id)a4;
- (BOOL)shouldRunDetectionForDocument:(id)a3;
- (CRFormAnalyzer)initWithConfiguration:(id)a3 detectionStats:(id)a4 postProcessingStats:(id)a5 error:(id *)a6;
- (void)analyzeImage:(id)a3 outputRegion:(id)a4;
@end

@implementation CRFormAnalyzer

- (CRFormAnalyzer)initWithConfiguration:(id)a3 detectionStats:(id)a4 postProcessingStats:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v26.receiver = self;
  v26.super_class = CRFormAnalyzer;
  v14 = [(CRFormAnalyzer *)&v26 init];
  v15 = v14;
  v16 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_configuration, a3);
    if ([v11 useModelBasedDetection])
    {
      v17 = [[CRFormDetector alloc] initWithConfiguration:v11 error:a6];
      modelDetector = v16->_modelDetector;
      v16->_modelDetector = v17;
    }

    if ([v11 useContourBasedDetection])
    {
      v19 = [[CRFormContourBasedDetector alloc] initWithConfiguration:v11];
      contourBasedDetector = v16->_contourBasedDetector;
      v16->_contourBasedDetector = v19;
    }

    if ([v11 useTextBasedDetection])
    {
      v21 = [[CRFormTextBasedDetector alloc] initWithConfiguration:v11 error:a6];
      textBasedDetector = v16->_textBasedDetector;
      v16->_textBasedDetector = v21;
    }

    v23 = +[CRFormPostProcessingManager postProcessingManagerWithDefaultSequence];
    postProcessingManager = v16->_postProcessingManager;
    v16->_postProcessingManager = v23;

    objc_storeStrong(&v15->_formDetectionStats, a4);
    objc_storeStrong(&v15->_formPostProcessingStats, a5);
  }

  return v16;
}

+ (void)_saveDebugImageForRegions:(id)a3 image:(id)a4 suffix:(id)a5 displayTypes:(BOOL)a6
{
  v6 = a6;
  v89[1] = *MEMORY[0x1E69E9840];
  v68 = a3;
  v9 = a4;
  v67 = a5;
  v64 = v9;
  GenericRGB = CGColorCreateGenericRGB(0.2, 0.2, 1.0, 0.8);
  v66 = CGColorCreateGenericRGB(0.6, 0.6, 0.6, 0.8);
  v10 = v9;
  v70 = v10;
  if (v6)
  {
    v88 = *MEMORY[0x1E69659D8];
    v11 = v88;
    v89[0] = GenericRGB;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:&v88 count:1];
    v72 = [v12 mutableCopy];

    v86 = v11;
    v87 = v66;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v78 = [v13 mutableCopy];

    v69 = objc_opt_new();
    v76 = objc_opt_new();
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = v68;
    v14 = [obj countByEnumeratingWithState:&v81 objects:v85 count:16];
    if (v14)
    {
      v15 = 1;
      v74 = *MEMORY[0x1E6965658];
      v75 = *v82;
      do
      {
        v77 = v14;
        for (i = 0; i != v77; ++i)
        {
          if (*v82 != v75)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v81 + 1) + 8 * i);
          v18 = CRCastAsClass<CRFormFieldOutputRegion>(v17);
          v19 = v18;
          if (v18)
          {
            v20 = [v18 labelRegion];
            v21 = v20 == 0;

            if (!v21)
            {
              v22 = [v19 labelRegion];
              [v69 addObject:v22];
            }
          }

          if ([v17 fieldType] == 1)
          {
            v23 = [v17 textContentType];
          }

          else
          {
            v23 = 0;
          }

          v24 = [CRFormContentTypeUtilities stringFromContentType:v23];
          v80 = [v24 stringByReplacingOccurrencesOfString:@"CRFormContentType" withString:&stru_1F2BB4348];

          if (v19)
          {
            v25 = [v19 labelRegion];
            v26 = [v25 text];
            v27 = [v19 labelRegion];
            v28 = [v27 text];
            v29 = [v28 length];
            if (v29 >= 0xA)
            {
              v30 = 10;
            }

            else
            {
              v30 = v29;
            }

            v79 = [v26 substringToIndex:v30];
          }

          else
          {
            v79 = 0;
          }

          v31 = @"×";
          if ([v17 fieldType] == 1)
          {
            [v17 suggestedLineHeight];
            v33 = v32 * [v70 height] * 0.75;
            v34 = CTFontCreateWithName(@"Menlo", v33, 0);
            if (v34)
            {
              [v72 setObject:v34 forKeyedSubscript:v74];
            }

            v35 = CTFontCreateWithName(@"Menlo", v33, 0);
            if (v35)
            {
              [v78 setObject:v35 forKeyedSubscript:v74];
            }

            v36 = MEMORY[0x1E696AEC0];
            if (v79)
            {
              v37 = v79;
            }

            else
            {
              v37 = &stru_1F2BB4348;
            }

            if (v19)
            {
              v38 = [v19 labelRegion];
              v39 = [v38 recognizedLocale];
              v40 = v39;
              v41 = &stru_1F2BB4348;
              if (v39)
              {
                v41 = v39;
              }

              v73 = v41;
              if (v34)
              {
                Size = CTFontGetSize(v34);
              }

              else
              {
                Size = 0.0;
              }

              v31 = [v36 stringWithFormat:@"%lu: %@ (%@) (%@) %3.1f [%d, %d]", v15, v80, v37, v73, *&Size, objc_msgSend(v17, "hasBoundedWidth"), objc_msgSend(v17, "hasBoundedHeight"), v64];
            }

            else
            {
              if (v34)
              {
                v43 = CTFontGetSize(v34);
              }

              else
              {
                v43 = 0.0;
              }

              v31 = [v36 stringWithFormat:@"%lu: %@ (%@) %3.1f [%d, %d]", v15, v80, v37, *&v43, objc_msgSend(v17, "hasBoundedWidth"), objc_msgSend(v17, "hasBoundedHeight")];
            }
          }

          if (+[CRFormContentTypeUtilities contentTypeIsAutoFillable:](CRFormContentTypeUtilities, "contentTypeIsAutoFillable:", v23) && ([v17 autofillNewContextStart] & 1) == 0)
          {
            v44 = objc_alloc(MEMORY[0x1E696AAB0]);
            v45 = v72;
          }

          else
          {
            v44 = objc_alloc(MEMORY[0x1E696AAB0]);
            v45 = v78;
          }

          v46 = [v44 initWithString:v31 attributes:v45];
          [v76 addObject:v46];

          ++v15;
        }

        v14 = [obj countByEnumeratingWithState:&v81 objects:v85 count:16];
      }

      while (v14);
    }

    v47 = [v70 imageByOverlayingRegions:obj strings:v76 lineWidth:2.0 red:0.2 green:0.2 blue:1.0 alpha:0.8];

    v48 = [v47 imageByOverlayingRegions:v69 strings:0 lineWidth:2.0 red:0.2 green:1.0 blue:0.2 alpha:0.8];

    v49 = [v70 url];
    v50 = [v49 URLByDeletingPathExtension];
    v51 = [v50 lastPathComponent];
    v52 = v51;
    if (v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"null%lu", objc_msgSend(v70, "hash")];
    }

    v62 = v53;

    v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/form_%@_%@.png", v62, v67];
    [v48 writeToFile:v63];
  }

  else
  {
    v54 = v10;
    v48 = [v10 imageByOverlayingRegions:v68 strings:0 lineWidth:2.0 red:0.2 green:0.2 blue:1.0 alpha:0.8];

    v55 = [v54 url];
    v56 = [v55 URLByDeletingPathExtension];
    v57 = [v56 lastPathComponent];
    v58 = v57;
    if (v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"null%lu", objc_msgSend(v70, "hash")];
    }

    v60 = v59;

    v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/form_%@_%@.png", v60, v67];
    [v48 writeToFile:v61];
  }
}

+ (void)_saveAllDebugImagesForRegions:(id)a3 image:(id)a4 afterPostProcessing:(BOOL)a5
{
  v5 = a5;
  v20 = a3;
  v7 = a4;
  CRLogger = CRLogger::getCRLogger(v7);
  if (*CRLogger == 1 && (CRLogger[8] & 0x10) != 0)
  {
    v9 = @"a_before_pp";
    if (v5)
    {
      v9 = @"b_after_pp";
    }

    v10 = v9;
    v11 = [v20 _fieldsOfSource:1];
    v12 = [v20 _fieldsOfSource:2];
    v13 = [v20 _fieldsOfSource:3];
    v14 = objc_opt_class();
    v15 = [@"mlfields_" stringByAppendingString:v10];
    [v14 _saveDebugImageForRegions:v11 image:v7 suffix:v15 displayTypes:0];

    v16 = objc_opt_class();
    v17 = [@"contourfields_" stringByAppendingString:v10];
    [v16 _saveDebugImageForRegions:v12 image:v7 suffix:v17 displayTypes:0];

    v18 = objc_opt_class();
    v19 = [@"textBasedfields_" stringByAppendingString:v10];
    [v18 _saveDebugImageForRegions:v13 image:v7 suffix:v19 displayTypes:0];

    if (v5)
    {
      [objc_opt_class() _saveDebugImageForRegions:v11 image:v7 suffix:@"mlfields_with_types" displayTypes:1];
    }
  }
}

- (void)analyzeImage:(id)a3 outputRegion:(id)a4
{
  v66[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__12;
  v55[4] = __Block_byref_object_dispose__12;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__12;
  v53 = __Block_byref_object_dispose__12;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__12;
  v47 = __Block_byref_object_dispose__12;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__12;
  v41 = __Block_byref_object_dispose__12;
  v42 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__12;
  v35[4] = __Block_byref_object_dispose__12;
  v36 = 0;
  formDetectionStats = self->_formDetectionStats;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __44__CRFormAnalyzer_analyzeImage_outputRegion___block_invoke;
  v27[3] = &unk_1E7BC3040;
  v30 = &v43;
  v27[4] = self;
  v9 = v6;
  v28 = v9;
  v10 = v7;
  v29 = v10;
  v31 = v55;
  v32 = &v37;
  v33 = v35;
  v34 = &v49;
  [(CRPerformanceStatistics *)formDetectionStats measureBlock:v27];
  [objc_opt_class() _saveAllDebugImagesForRegions:v50[5] image:v9 afterPostProcessing:0];
  v65[0] = @"ShouldSurfaceContourBasedFormFieldsOption";
  v65[1] = @"ShouldSurfaceTextBasedFormFieldsOption";
  v66[0] = MEMORY[0x1E695E118];
  v66[1] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
  formPostProcessingStats = self->_formPostProcessingStats;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __44__CRFormAnalyzer_analyzeImage_outputRegion___block_invoke_117;
  v22 = &unk_1E7BC3068;
  v26 = &v49;
  v23 = self;
  v13 = v10;
  v24 = v13;
  v14 = v11;
  v25 = v14;
  [(CRPerformanceStatistics *)formPostProcessingStats measureBlock:&v19];
  [objc_opt_class() _saveAllDebugImagesForRegions:v50[5] image:v9 afterPostProcessing:{1, v19, v20, v21, v22, v23}];
  v15 = CROSLogForCategory(6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v44[5] count];
    v17 = [v38[5] count];
    v18 = [v13 formness];
    *buf = 136315906;
    v58 = "[CRFormAnalyzer analyzeImage:outputRegion:]";
    v59 = 2048;
    v60 = v16;
    v61 = 2048;
    v62 = v17;
    v63 = 2048;
    v64 = v18;
    _os_log_impl(&dword_1B40D2000, v15, OS_LOG_TYPE_DEFAULT, "%s: %lu ML fields detected; %lu contour-based fields detected; formness: %lu;", buf, 0x2Au);
  }

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(v55, 8);
}

void __44__CRFormAnalyzer_analyzeImage_outputRegion___block_invoke(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "OCRFormDetection", "", buf, 2u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) modelDetector];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(*(a1 + 64) + 8);
  obj = *(v10 + 40);
  v11 = [v7 detectFormFieldsInImage:v8 document:v9 outputCandidateResults:&obj];
  objc_storeStrong((v10 + 40), obj);
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    v14 = [*(a1 + 32) contourBasedDetector];
    v15 = [v14 detectFormFieldsInImage:*(a1 + 40)];
    v16 = *(*(a1 + 72) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = [*(a1 + 32) textBasedDetector];
    v19 = [v18 detectFormFieldsInImage:*(a1 + 40) document:*(a1 + 48) candidateFields:*(*(*(a1 + 64) + 8) + 40)];
    v20 = *(*(a1 + 80) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v22 = *(*(*(a1 + 56) + 8) + 40);
    if (!v22)
    {
      v22 = MEMORY[0x1E695E0F0];
    }

    v23 = v22;
    v24 = v23;
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v25 = [v23 arrayByAddingObjectsFromArray:?];

      v24 = v25;
    }

    if (*(*(*(a1 + 80) + 8) + 40))
    {
      v26 = [v24 arrayByAddingObjectsFromArray:?];

      v24 = v26;
    }

    v27 = [CRFormParser convertDetectedFields:v24];
    v28 = *(*(a1 + 88) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    objc_autoreleasePoolPop(v6);
    if (CRSignpostLog_onceToken != -1)
    {
      dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
    }

    v30 = CRSignpostLog_signPostOSLog;
    v31 = v30;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *v32 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v31, OS_SIGNPOST_INTERVAL_END, v3, "OCRFormDetection", "", v32, 2u);
    }
  }

  else
  {
    objc_autoreleasePoolPop(v6);
  }
}

void __44__CRFormAnalyzer_analyzeImage_outputRegion___block_invoke_117(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "OCRFormPostProcessing", "", buf, 2u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) postProcessingManager];
  v8 = [v7 process:*(*(*(a1 + 56) + 8) + 40) document:*(a1 + 40) options:*(a1 + 48)];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  [*(a1 + 40) setFormFieldRegions:*(*(*(a1 + 56) + 8) + 40)];
  objc_autoreleasePoolPop(v6);
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v11 = CRSignpostLog_signPostOSLog;
  v12 = v11;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v12, OS_SIGNPOST_INTERVAL_END, v3, "OCRFormPostProcessing", "", v13, 2u);
  }
}

+ (void)exportSerializedResults:(id)a3 forImage:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 bufferHash];
  if (qword_1ED960200 != -1)
  {
    dispatch_once(&qword_1ED960200, &__block_literal_global_25);
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"form_result_%lX.dat", v7];
  v9 = [v5 writeToFileInFolder:_MergedGlobals_30 basename:v8];
  v10 = CROSLogForCategory(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v12 = "+[CRFormAnalyzer exportSerializedResults:forImage:]";
    v13 = 2112;
    v14 = _MergedGlobals_30;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_DEBUG, "%s: Saving serialized result at location: %@/%@", buf, 0x20u);
  }
}

void __51__CRFormAnalyzer_exportSerializedResults_forImage___block_invoke()
{
  v0 = MEMORY[0x1E695DFF8];
  v3 = NSTemporaryDirectory();
  v1 = [v0 fileURLWithPath:?];
  v2 = _MergedGlobals_30;
  _MergedGlobals_30 = v1;
}

+ (id)fetchSerializedResultsForImage:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v3 = [v33 bufferHash];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/AppleInternal/Library/Frameworks/CoreRecognitionToolkit.framework/"];
  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FormSerializedResults/form_result_%lX.dat", v3];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FormSerializedResults/form_result_%lX.dat", v3];
  v35 = [v4 URLByAppendingPathComponent:v5];

  v6 = CROSLogForCategory(6);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v4 absoluteString];
    *buf = 136315650;
    v39 = "+[CRFormAnalyzer fetchSerializedResultsForImage:]";
    v40 = 2112;
    v41 = v7;
    v42 = 2112;
    v43 = v32;
    _os_log_impl(&dword_1B40D2000, v6, OS_LOG_TYPE_DEBUG, "%s: Attempting to fetch serialized result from location: %@/%@", buf, 0x20u);
  }

  v37 = 0;
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v35 options:0 error:&v37];
  v34 = v37;
  if (v8)
  {
    goto LABEL_6;
  }

  v9 = MEMORY[0x1E695DFF8];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/Resources/", @"/AppleInternal/Library/Frameworks/CoreRecognitionToolkit.framework/"];
  v11 = [v9 fileURLWithPath:v10];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FormSerializedResults/form_result_%lX.dat", v3];
  v13 = [v11 URLByAppendingPathComponent:v12];

  v36 = v34;
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v13 options:0 error:&v36];
  v14 = v36;

  if (v8)
  {
    v4 = v11;
    v34 = v14;
    v35 = v13;
LABEL_6:
    v15 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:0];
    v16 = CROSLogForCategory(6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v35 absoluteString];
      *buf = 136315394;
      v39 = "+[CRFormAnalyzer fetchSerializedResultsForImage:]";
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_DEBUG, "%s: Successfully fetched serialized result from location: %@", buf, 0x16u);
    }

    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    [v33 size];
    v20 = v19;
    v22 = v21;
    v23 = 0;
    v24 = MEMORY[0x1E695E0F0];
    do
    {
      v25 = [[CRNormalizedQuad alloc] initWithNormalizedTopLeft:v23 * 0.02 + 0.9 topRight:0.9 bottomRight:v23 * 0.02 + 0.91 bottomLeft:0.9 size:v23 * 0.02 + 0.91, 0.91, v23 * 0.02 + 0.9, 0.91, v20, v22];
      v26 = [(CRFormFieldOutputRegion *)[CRFormTextFieldOutputRegion alloc] initWithQuad:v25 labelRegion:0 subFields:v24 source:1];
      [v18 addObject:v26];

      ++v23;
    }

    while (v23 != 3);
    v27 = [v15 formFieldRegions];
    v28 = [v27 arrayByAddingObjectsFromArray:v18];
    [v15 setFormFieldRegions:v28];

    goto LABEL_11;
  }

  v18 = CROSLogForCategory(6);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v30 = [v13 absoluteString];
    v31 = [v14 description];
    *buf = 136315650;
    v39 = "+[CRFormAnalyzer fetchSerializedResultsForImage:]";
    v40 = 2112;
    v41 = v30;
    v42 = 2112;
    v43 = v31;
    _os_log_impl(&dword_1B40D2000, v18, OS_LOG_TYPE_DEBUG, "%s: Unable to fetch serialized result from tentative location: %@, error = %@", buf, 0x20u);
  }

  v8 = 0;
  v15 = 0;
  v4 = v11;
  v34 = v14;
  v35 = v13;
LABEL_11:

  return v15;
}

- (BOOL)shouldRunDetectionForDocument:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v55 = a3;
  v4 = [(CRFormAnalyzer *)self configuration];
  v5 = [v4 gatingWithOCRResults];

  if (v5)
  {
    v6 = [v55 text];
    v7 = [v6 length];

    if (v7 <= 0x4F)
    {
      v8 = CROSLogForCategory(6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [v55 text];
        *buf = 136315394;
        v66 = "[CRFormAnalyzer shouldRunDetectionForDocument:]";
        v67 = 2048;
        v68 = COERCE_DOUBLE([v9 length]);
        _os_log_impl(&dword_1B40D2000, v8, OS_LOG_TYPE_DEBUG, "%s: Gated by character count %lu", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_52;
    }

    v8 = [v55 contentsWithTypes:8];
    if ([v8 count]<= 3)
    {
      log = CROSLogForCategory(6);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v66 = "[CRFormAnalyzer shouldRunDetectionForDocument:]";
        v67 = 2048;
        v68 = COERCE_DOUBLE([v8 count]);
        _os_log_impl(&dword_1B40D2000, log, OS_LOG_TYPE_DEBUG, "%s: Gated by line count %lu", buf, 0x16u);
      }

LABEL_15:
      v10 = 0;
LABEL_51:

LABEL_52:
      goto LABEL_53;
    }

    log = [v55 contentsWithTypes:2];
    if ([log count]<= 1 && [v8 count]<= 7)
    {
      v11 = CROSLogForCategory(6);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v66 = "[CRFormAnalyzer shouldRunDetectionForDocument:]";
        v67 = 2048;
        v68 = COERCE_DOUBLE([log count]);
        v69 = 2048;
        v70 = COERCE_DOUBLE([v8 count]);
        _os_log_impl(&dword_1B40D2000, v11, OS_LOG_TYPE_DEBUG, "%s: Gated by block count %lu and line count %lu", buf, 0x20u);
      }

      goto LABEL_15;
    }

    __src = 0;
    v62 = 0;
    v63 = 0;
    std::vector<double>::reserve(&__src, [v8 count]);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v57 objects:v64 count:16];
    if (v13)
    {
      v14 = *v58;
      v56 = 1.0;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 1.0;
      v18 = v8;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v58 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v57 + 1) + 8 * i);
          v21 = [v20 boundingQuad];
          [v21 topLeft];
          v23 = v22;

          v24 = [v20 boundingQuad];
          [v24 topRight];
          v26 = v25;

          v27 = [v20 boundingQuad];
          [v27 topLeft];
          v29 = v28;

          v30 = [v20 boundingQuad];
          [v30 bottomLeft];
          v32 = v31;

          [v20 visualTextAngle];
          v34 = fabsf(v33);
          v35 = v62;
          if (v62 >= v63)
          {
            v37 = __src;
            v38 = v62 - __src;
            v39 = (v62 - __src) >> 3;
            v40 = v39 + 1;
            if ((v39 + 1) >> 61)
            {
              std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
            }

            v41 = v63 - __src;
            if ((v63 - __src) >> 2 > v40)
            {
              v40 = v41 >> 2;
            }

            if (v41 >= 0x7FFFFFFFFFFFFFF8)
            {
              v42 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v42 = v40;
            }

            if (v42)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v42);
            }

            *(8 * v39) = v34;
            v36 = (8 * v39 + 8);
            memcpy(0, v37, v38);
            v43 = __src;
            __src = 0;
            v62 = v36;
            v63 = 0;
            if (v43)
            {
              operator delete(v43);
            }

            v8 = v18;
          }

          else
          {
            *v62 = v34;
            v36 = v35 + 1;
          }

          v56 = fmin(v56, v23);
          v15 = fmax(v15, v26);
          v17 = fmin(v17, v29);
          v16 = fmax(v16, v32);
          v62 = v36;
        }

        v13 = [v12 countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v13);

      if (v56 <= 0.5 && v17 <= 0.5)
      {
        if (v15 - v56 >= 0.22 && v16 - v17 >= 0.04)
        {
          v44 = ([v12 count]>> 1) - 1;
          v45 = __src;
          v46 = (__src + 8 * v44);
          if (v46 != v62)
          {
            std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(__src, v46, v62);
            v45 = __src;
          }

          v47 = v45[v44];
          if (v47 <= 0.1)
          {
            v48 = 1;
            goto LABEL_50;
          }

          v49 = CROSLogForCategory(6);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v66 = "[CRFormAnalyzer shouldRunDetectionForDocument:]";
            v67 = 2048;
            v68 = v47;
            v50 = "%s: Gated by insufficient horizontality in the text, median line deviation is %lf";
            v51 = v49;
            v52 = 22;
            goto LABEL_48;
          }

LABEL_49:

          v48 = 0;
          v10 = 0;
          v45 = __src;
          if (!__src)
          {
            goto LABEL_51;
          }

LABEL_50:
          v62 = v45;
          operator delete(v45);
          v10 = v48;
          goto LABEL_51;
        }

        v49 = CROSLogForCategory(6);
        if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_49;
        }

        *buf = 136315650;
        v66 = "[CRFormAnalyzer shouldRunDetectionForDocument:]";
        v67 = 2048;
        v68 = v15 - v56;
        v69 = 2048;
        v70 = v16 - v17;
        v50 = "%s: Gated by x-range %lf and y-range %lf";
LABEL_47:
        v51 = v49;
        v52 = 32;
LABEL_48:
        _os_log_impl(&dword_1B40D2000, v51, OS_LOG_TYPE_DEBUG, v50, buf, v52);
        goto LABEL_49;
      }
    }

    else
    {

      v17 = 1.0;
      v56 = 1.0;
    }

    v49 = CROSLogForCategory(6);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_49;
    }

    *buf = 136315650;
    v66 = "[CRFormAnalyzer shouldRunDetectionForDocument:]";
    v67 = 2048;
    v68 = v56;
    v69 = 2048;
    v70 = v17;
    v50 = "%s: Gated by min-x %lf and min-y %lf";
    goto LABEL_47;
  }

  v10 = 1;
LABEL_53:

  return v10;
}

@end