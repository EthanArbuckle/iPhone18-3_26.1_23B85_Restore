@interface VKImageAnalysis
+ (id)analysisWithDocumentObservation:(id)a3 imageSize:(CGSize)a4;
+ (id)analysisWithDocumentObservation:(id)a3 request:(id)a4;
- (BOOL)_hasVisualSearchElements;
- (BOOL)hasResultsForAnalysisTypes:(unint64_t)a3;
- (BOOL)writeSecureCodedArchiveToURL:(id)a3 error:(id *)a4;
- (CGRect)rectForMrcActionInPresentingViewController;
- (NSArray)filteredNormalizedRectangleQuads;
- (NSArray)formRegions;
- (NSArray)layoutComponents;
- (NSArray)rectangleObservations;
- (NSDictionary)localeMap;
- (NSString)transcript;
- (VKImageAnalysis)initWithAnalysisResult:(id)a3;
- (VKImageAnalysis)initWithCoder:(id)a3;
- (id)_attributedStringForRange:(_NSRange)a3;
- (id)allLines;
- (id)barcodeActions;
- (id)formRegionsExcluding:(id)a3 updateExcludedFields:(BOOL)a4;
- (id)mrcMenu;
- (id)presentingViewControllerForMrcAction;
- (id)proposedFormRegionForPoint:(CGPoint)a3 existingFields:(id)a4 formSize:(CGSize)a5;
- (id)textDataDetectors;
- (id)visualSearchResultItems;
- (int)analysisRequestID;
- (unint64_t)countOfDataDetectorsWithTypes:(unint64_t)a3;
- (unint64_t)recognitionConfidence;
- (void)checkForTranslationResultsWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)generateDataDetectorInfoWithTypes:(unint64_t)a3 unfiltered:(BOOL)a4;
- (void)setPresentingViewControllerForMrcAction:(id)a3;
- (void)setRectForMrcActionInPresentingViewController:(CGRect)a3;
- (void)translateFrom:(id)a3 to:(id)a4 withCompletion:(id)a5;
@end

@implementation VKImageAnalysis

+ (id)analysisWithDocumentObservation:(id)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = [[VKCImageAnalysisResult alloc] initWithDocumentObservation:v6 mrcDataDetectors:0 imageSize:width, height];

  v8 = [(VKImageAnalysis *)[VKCImageAnalysis alloc] initWithAnalysisResult:v7];

  return v8;
}

+ (id)analysisWithDocumentObservation:(id)a3 request:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 imageSize];
  v8 = [a1 analysisWithDocumentObservation:v7 imageSize:?];

  v9 = [v8 imageAnalysisResult];
  [v9 setRequest:v6];

  return v8;
}

- (VKImageAnalysis)initWithAnalysisResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VKImageAnalysis;
  v6 = [(VKImageAnalysis *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageAnalysisResult, a3);
    [(VKImageAnalysis *)v7 setFeedbackProvider:0];
  }

  return v7;
}

- (NSString)transcript
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v3 = [v2 text];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F2C04538;
  }

  v6 = v5;

  return &v5->isa;
}

- (NSDictionary)localeMap
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v3 = [v2 localeMap];

  return v3;
}

- (int)analysisRequestID
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v3 = [v2 analysisRequestID];

  return v3;
}

- (BOOL)hasResultsForAnalysisTypes:(unint64_t)a3
{
  v6 = a3;
  v8 = [(VKImageAnalysis *)self imageAnalysisResult];
  v9 = v8;
  if (v6)
  {
    v3 = [v8 text];
    if ([v3 length])
    {
      v10 = 1;
LABEL_22:

      goto LABEL_23;
    }
  }

  if ((v6 & 2) != 0)
  {
    v4 = [v9 textDataDetectorElements];
    if ([v4 count])
    {

      v10 = 1;
      goto LABEL_21;
    }
  }

  if ((v6 & 4) != 0)
  {
    v5 = [v9 mrcDataDetectorElements];
    if ([v5 count])
    {
      v10 = 1;
LABEL_18:

      goto LABEL_19;
    }
  }

  if ((v6 & 8) != 0)
  {
    v11 = [v9 appClipDataDetectorElements];
    v12 = [v11 count];
    v10 = v12 != 0;
    if (!v12 && (v6 & 0x10) != 0)
    {
      v10 = [(VKImageAnalysis *)self _hasVisualSearchElements];
    }

    if ((v6 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((v6 & 0x10) != 0)
  {
    v10 = [(VKImageAnalysis *)self _hasVisualSearchElements];
    if ((v6 & 4) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 0;
    if ((v6 & 4) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  if ((v6 & 2) != 0)
  {
  }

LABEL_21:
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_23:

  return v10;
}

- (BOOL)_hasVisualSearchElements
{
  v3 = [(VKImageAnalysis *)self imageAnalysisResult];
  v4 = [v3 visualSearchResult];

  if (!v4)
  {
    return 0;
  }

  v5 = [(VKImageAnalysis *)self imageAnalysisResult];
  v6 = [v5 visualSearchResult];
  v7 = [v6 resultItems];
  v8 = [v7 count] != 0;

  return v8;
}

- (id)visualSearchResultItems
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v3 = [v2 visualSearchResultItems];

  return v3;
}

- (unint64_t)countOfDataDetectorsWithTypes:(unint64_t)a3
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v5 = [(VKImageAnalysis *)self imageAnalysisResult];
  v6 = [v5 dataDetectors];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__VKImageAnalysis_countOfDataDetectorsWithTypes___block_invoke;
  v10[3] = &unk_1E7BE7978;
  v10[4] = v11;
  v10[5] = a3;
  [v6 enumerateObjectsUsingBlock:v10];

  v7 = [(VKImageAnalysis *)self imageAnalysisResult];
  v8 = [v7 countOfDataDetectorsWithTypes:a3];

  _Block_object_dispose(v11, 8);
  return v8;
}

uint64_t __49__VKImageAnalysis_countOfDataDetectorsWithTypes___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 elementType];
  if ((*(a1 + 40) & result) != 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (id)_attributedStringForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(VKImageAnalysis *)self imageAnalysisResult];
  v6 = [v5 text];
  v7 = [v6 vk_range];
  v9 = VKMClampRange(location, length, v7, v8);
  v11 = v10;

  v12 = [VKTextRange rangeWithNSRange:v9, v11];
  v13 = [v5 convertPlainTextRangeToAttributedRange:v12];
  v14 = [v13 nsRange];
  v16 = v15;

  v17 = [v5 attributedText];
  v18 = [v17 vk_attributedSubstringFromRange:{v14, v16}];

  return v18;
}

- (void)checkForTranslationResultsWithCompletion:(id)a3
{
  v4 = a3;
  if (vk_isSeedBuild() && ([MEMORY[0x1E695E000] standardUserDefaults], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLForKey:", @"DebugVisionKitCatalystTranslation"), v5, !v6))
  {
    (*(v4 + 2))(v4, 0, 0);
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v7 = getLTUIVisualTranslationViewClass_softClass_1;
    v16 = getLTUIVisualTranslationViewClass_softClass_1;
    if (!getLTUIVisualTranslationViewClass_softClass_1)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getLTUIVisualTranslationViewClass_block_invoke_1;
      v12[3] = &unk_1E7BE3F48;
      v12[4] = &v13;
      __getLTUIVisualTranslationViewClass_block_invoke_1(v12);
      v7 = v14[3];
    }

    v8 = v7;
    _Block_object_dispose(&v13, 8);
    v9 = [(VKImageAnalysis *)self allLines];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__VKImageAnalysis_checkForTranslationResultsWithCompletion___block_invoke;
    v10[3] = &unk_1E7BE4988;
    v11 = v4;
    [v7 isTranslatable:v9 completion:v10];
  }
}

- (BOOL)writeSecureCodedArchiveToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:a4];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v6 URLByDeletingLastPathComponent];
    v10 = [v9 path];
    v11 = [v8 fileExistsAtPath:v10];

    if ((v11 & 1) == 0)
    {
      [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:a4];
    }

    [v7 writeToURL:v6 options:1 error:a4];
  }

  return a4 != 0;
}

- (id)textDataDetectors
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v3 = [v2 textDataDetectorElements];
  v4 = [v3 vk_map:&__block_literal_global_44];

  return v4;
}

VKWKDataDetectorInfo *__36__VKImageAnalysis_textDataDetectors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(VKWKDataDetectorInfo);
  v4 = [v2 boundingQuads];
  [(VKWKDataDetectorInfo *)v3 setBoundingQuads:v4];

  v5 = [v2 characterRange];
  [(VKWKDataDetectorInfo *)v3 setCharacterRange:v5, v6];
  v7 = [v2 scannerResult];

  [(VKWKDataDetectorInfo *)v3 setResult:v7];

  return v3;
}

- (id)allLines
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v3 = [v2 sourceVNDocument];

  v4 = [v3 blocksWithTypes:8 inRegion:{0.0, 0.0, 1.0, 1.0}];
  v5 = [v4 vk_map:&__block_literal_global_236];

  return v5;
}

VKWKLineInfo *__27__VKImageAnalysis_allLines__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(VKWKLineInfo);
  v4 = objc_opt_class();
  v5 = VKDynamicCast(v4, v2);

  v6 = [v5 vkQuad];
  [(VKWKTextInfo *)v3 setQuad:v6];

  v7 = [v5 getTranscript];
  [(VKWKTextInfo *)v3 setString:v7];

  v8 = [v5 getCROutputRegion];
  -[VKWKLineInfo setLayoutDirection:](v3, "setLayoutDirection:", [v8 layoutDirection]);

  v9 = [v5 getChildren];
  v10 = [v9 vk_map:&__block_literal_global_241];
  [(VKWKLineInfo *)v3 setChildren:v10];

  -[VKWKLineInfo setShouldWrap:](v3, "setShouldWrap:", [v5 shouldBeWrappedWithNextLine]);

  return v3;
}

VKWKTextInfo *__27__VKImageAnalysis_allLines__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(VKWKTextInfo);
  v4 = [v2 getCROutputRegion];
  v5 = [v4 boundingQuad];
  v6 = [v5 vkQuad];
  [(VKWKTextInfo *)v3 setQuad:v6];

  v7 = [v2 string];

  [(VKWKTextInfo *)v3 setString:v7];

  return v3;
}

- (NSArray)rectangleObservations
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v3 = [v2 rectangleObservations];

  return v3;
}

- (NSArray)filteredNormalizedRectangleQuads
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v3 = [v2 filteredNormalizedRectangleQuads];

  return v3;
}

- (NSArray)layoutComponents
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v3 = [v2 layoutComponents];

  return v3;
}

- (void)generateDataDetectorInfoWithTypes:(unint64_t)a3 unfiltered:(BOOL)a4
{
  v5 = [VKCDataDetectorInfo dataDetectorInfoFromAnalysis:self dataDetectorTypes:a3 unfiltered:a4];
  [(VKImageAnalysis *)self setDataDetectorInfo:v5];
}

- (id)mrcMenu
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v3 = [v2 mrcMenu];

  return v3;
}

- (id)presentingViewControllerForMrcAction
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v3 = [v2 presentingViewControllerForMrcAction];

  return v3;
}

- (void)setPresentingViewControllerForMrcAction:(id)a3
{
  v4 = a3;
  v5 = [(VKImageAnalysis *)self imageAnalysisResult];
  [v5 setPresentingViewControllerForMrcAction:v4];
}

- (CGRect)rectForMrcActionInPresentingViewController
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  [v2 rectForMrcActionInPresentingViewController];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setRectForMrcActionInPresentingViewController:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(VKImageAnalysis *)self imageAnalysisResult];
  [v7 setRectForMrcActionInPresentingViewController:{x, y, width, height}];
}

- (id)barcodeActions
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v3 = [v2 barcodeActions];

  return v3;
}

- (void)translateFrom:(id)a3 to:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(VKImageAnalysis *)self imageAnalysisResult];
  v12 = [v11 sourceVNDocument];

  v13 = [v12 blocksWithTypes:2 inRegion:{0.0, 0.0, 1.0, 1.0}];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v14 = getLTUIVisualTranslationServiceClass_softClass;
  v31 = getLTUIVisualTranslationServiceClass_softClass;
  if (!getLTUIVisualTranslationServiceClass_softClass)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __getLTUIVisualTranslationServiceClass_block_invoke;
    v27[3] = &unk_1E7BE3F48;
    v27[4] = &v28;
    __getLTUIVisualTranslationServiceClass_block_invoke(v27);
    v14 = v29[3];
  }

  v15 = v14;
  _Block_object_dispose(&v28, 8);
  v16 = objc_alloc_init(v14);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __51__VKImageAnalysis_translateFrom_to_withCompletion___block_invoke;
  v25 = &unk_1E7BE7A00;
  v17 = v10;
  v26 = v17;
  v18 = _Block_copy(&v22);
  if (v8 && v9)
  {
    v19 = objc_alloc(MEMORY[0x1E695DF58]);
    v20 = [v19 initWithLocaleIdentifier:{v8, v22, v23, v24, v25}];
    v21 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v9];
    if (objc_opt_respondsToSelector())
    {
      [v16 translate:v13 sourceLocale:v20 targetLocale:v21 completion:v18];
    }

    else
    {
      [v16 translate:v13 targetLocale:v21 completion:v18];
    }
  }
}

void __51__VKImageAnalysis_translateFrom_to_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v32 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = [v10 string];
        v12 = [VKQuad alloc];
        [v10 bottomLeft];
        v14 = v13;
        v16 = v15;
        [v10 bottomRight];
        v18 = v17;
        v20 = v19;
        [v10 topLeft];
        v22 = v21;
        v24 = v23;
        [v10 topRight];
        v27 = [(VKQuad *)v12 initWithBottomLeft:v14 bottomRight:v16 topLeft:v18 topRight:v20, v22, v24, v25, v26];
        if (objc_opt_respondsToSelector())
        {
          v28 = [v10 isPassthrough];
        }

        else
        {
          v28 = 0;
        }

        v29 = [[VKCTranslatedParagraph alloc] initWithText:v11 quad:v27 isPassthrough:v28];
        [v5 addObject:v29];
      }

      v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = [[VKCImageAnalysisTranslation alloc] initWithParagraphs:v5];
  (*(*(a1 + 32) + 16))();
}

- (NSArray)formRegions
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v3 = [v2 formRegions];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (unint64_t)recognitionConfidence
{
  v2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v3 = [v2 recognitionConfidence];

  return v3;
}

- (id)formRegionsExcluding:(id)a3 updateExcludedFields:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(VKImageAnalysis *)self imageAnalysisResult];
  v8 = [v7 formRegionsExcluding:v6 updateExcludedFields:v4];

  return v8;
}

- (id)proposedFormRegionForPoint:(CGPoint)a3 existingFields:(id)a4 formSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  y = a3.y;
  x = a3.x;
  v10 = a4;
  v11 = [(VKImageAnalysis *)self imageAnalysisResult];
  v12 = [v11 proposedFormRegionForPoint:v10 existingFields:x formSize:{y, width, height}];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VKImageAnalysis *)self imageAnalysisResult];
  [v4 encodeObject:v5 forKey:@"Result"];
}

- (VKImageAnalysis)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Result"];

  v6 = [(VKImageAnalysis *)self initWithAnalysisResult:v5];
  return v6;
}

@end