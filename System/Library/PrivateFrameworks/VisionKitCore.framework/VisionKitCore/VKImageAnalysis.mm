@interface VKImageAnalysis
+ (id)analysisWithDocumentObservation:(id)observation imageSize:(CGSize)size;
+ (id)analysisWithDocumentObservation:(id)observation request:(id)request;
- (BOOL)_hasVisualSearchElements;
- (BOOL)hasResultsForAnalysisTypes:(unint64_t)types;
- (BOOL)writeSecureCodedArchiveToURL:(id)l error:(id *)error;
- (CGRect)rectForMrcActionInPresentingViewController;
- (NSArray)filteredNormalizedRectangleQuads;
- (NSArray)formRegions;
- (NSArray)layoutComponents;
- (NSArray)rectangleObservations;
- (NSDictionary)localeMap;
- (NSString)transcript;
- (VKImageAnalysis)initWithAnalysisResult:(id)result;
- (VKImageAnalysis)initWithCoder:(id)coder;
- (id)_attributedStringForRange:(_NSRange)range;
- (id)allLines;
- (id)barcodeActions;
- (id)formRegionsExcluding:(id)excluding updateExcludedFields:(BOOL)fields;
- (id)mrcMenu;
- (id)presentingViewControllerForMrcAction;
- (id)proposedFormRegionForPoint:(CGPoint)point existingFields:(id)fields formSize:(CGSize)size;
- (id)textDataDetectors;
- (id)visualSearchResultItems;
- (int)analysisRequestID;
- (unint64_t)countOfDataDetectorsWithTypes:(unint64_t)types;
- (unint64_t)recognitionConfidence;
- (void)checkForTranslationResultsWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)generateDataDetectorInfoWithTypes:(unint64_t)types unfiltered:(BOOL)unfiltered;
- (void)setPresentingViewControllerForMrcAction:(id)action;
- (void)setRectForMrcActionInPresentingViewController:(CGRect)controller;
- (void)translateFrom:(id)from to:(id)to withCompletion:(id)completion;
@end

@implementation VKImageAnalysis

+ (id)analysisWithDocumentObservation:(id)observation imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  observationCopy = observation;
  height = [[VKCImageAnalysisResult alloc] initWithDocumentObservation:observationCopy mrcDataDetectors:0 imageSize:width, height];

  v8 = [(VKImageAnalysis *)[VKCImageAnalysis alloc] initWithAnalysisResult:height];

  return v8;
}

+ (id)analysisWithDocumentObservation:(id)observation request:(id)request
{
  requestCopy = request;
  observationCopy = observation;
  [requestCopy imageSize];
  v8 = [self analysisWithDocumentObservation:observationCopy imageSize:?];

  imageAnalysisResult = [v8 imageAnalysisResult];
  [imageAnalysisResult setRequest:requestCopy];

  return v8;
}

- (VKImageAnalysis)initWithAnalysisResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = VKImageAnalysis;
  v6 = [(VKImageAnalysis *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageAnalysisResult, result);
    [(VKImageAnalysis *)v7 setFeedbackProvider:0];
  }

  return v7;
}

- (NSString)transcript
{
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  text = [imageAnalysisResult text];
  v4 = text;
  if (text)
  {
    v5 = text;
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
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  localeMap = [imageAnalysisResult localeMap];

  return localeMap;
}

- (int)analysisRequestID
{
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  analysisRequestID = [imageAnalysisResult analysisRequestID];

  return analysisRequestID;
}

- (BOOL)hasResultsForAnalysisTypes:(unint64_t)types
{
  typesCopy = types;
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  v9 = imageAnalysisResult;
  if (typesCopy)
  {
    text = [imageAnalysisResult text];
    if ([text length])
    {
      _hasVisualSearchElements = 1;
LABEL_22:

      goto LABEL_23;
    }
  }

  if ((typesCopy & 2) != 0)
  {
    textDataDetectorElements = [v9 textDataDetectorElements];
    if ([textDataDetectorElements count])
    {

      _hasVisualSearchElements = 1;
      goto LABEL_21;
    }
  }

  if ((typesCopy & 4) != 0)
  {
    mrcDataDetectorElements = [v9 mrcDataDetectorElements];
    if ([mrcDataDetectorElements count])
    {
      _hasVisualSearchElements = 1;
LABEL_18:

      goto LABEL_19;
    }
  }

  if ((typesCopy & 8) != 0)
  {
    appClipDataDetectorElements = [v9 appClipDataDetectorElements];
    v12 = [appClipDataDetectorElements count];
    _hasVisualSearchElements = v12 != 0;
    if (!v12 && (typesCopy & 0x10) != 0)
    {
      _hasVisualSearchElements = [(VKImageAnalysis *)self _hasVisualSearchElements];
    }

    if ((typesCopy & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((typesCopy & 0x10) != 0)
  {
    _hasVisualSearchElements = [(VKImageAnalysis *)self _hasVisualSearchElements];
    if ((typesCopy & 4) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    _hasVisualSearchElements = 0;
    if ((typesCopy & 4) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  if ((typesCopy & 2) != 0)
  {
  }

LABEL_21:
  if (typesCopy)
  {
    goto LABEL_22;
  }

LABEL_23:

  return _hasVisualSearchElements;
}

- (BOOL)_hasVisualSearchElements
{
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  visualSearchResult = [imageAnalysisResult visualSearchResult];

  if (!visualSearchResult)
  {
    return 0;
  }

  imageAnalysisResult2 = [(VKImageAnalysis *)self imageAnalysisResult];
  visualSearchResult2 = [imageAnalysisResult2 visualSearchResult];
  resultItems = [visualSearchResult2 resultItems];
  v8 = [resultItems count] != 0;

  return v8;
}

- (id)visualSearchResultItems
{
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  visualSearchResultItems = [imageAnalysisResult visualSearchResultItems];

  return visualSearchResultItems;
}

- (unint64_t)countOfDataDetectorsWithTypes:(unint64_t)types
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  dataDetectors = [imageAnalysisResult dataDetectors];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__VKImageAnalysis_countOfDataDetectorsWithTypes___block_invoke;
  v10[3] = &unk_1E7BE7978;
  v10[4] = v11;
  v10[5] = types;
  [dataDetectors enumerateObjectsUsingBlock:v10];

  imageAnalysisResult2 = [(VKImageAnalysis *)self imageAnalysisResult];
  v8 = [imageAnalysisResult2 countOfDataDetectorsWithTypes:types];

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

- (id)_attributedStringForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  text = [imageAnalysisResult text];
  vk_range = [text vk_range];
  v9 = VKMClampRange(location, length, vk_range, v8);
  v11 = v10;

  v12 = [VKTextRange rangeWithNSRange:v9, v11];
  v13 = [imageAnalysisResult convertPlainTextRangeToAttributedRange:v12];
  nsRange = [v13 nsRange];
  v16 = v15;

  attributedText = [imageAnalysisResult attributedText];
  v18 = [attributedText vk_attributedSubstringFromRange:{nsRange, v16}];

  return v18;
}

- (void)checkForTranslationResultsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (vk_isSeedBuild() && ([MEMORY[0x1E695E000] standardUserDefaults], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLForKey:", @"DebugVisionKitCatalystTranslation"), v5, !v6))
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
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
    allLines = [(VKImageAnalysis *)self allLines];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__VKImageAnalysis_checkForTranslationResultsWithCompletion___block_invoke;
    v10[3] = &unk_1E7BE4988;
    v11 = completionCopy;
    [v7 isTranslatable:allLines completion:v10];
  }
}

- (BOOL)writeSecureCodedArchiveToURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:error];
  if (v7)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    path = [uRLByDeletingLastPathComponent path];
    v11 = [defaultManager fileExistsAtPath:path];

    if ((v11 & 1) == 0)
    {
      [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error];
    }

    [v7 writeToURL:lCopy options:1 error:error];
  }

  return error != 0;
}

- (id)textDataDetectors
{
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  textDataDetectorElements = [imageAnalysisResult textDataDetectorElements];
  v4 = [textDataDetectorElements vk_map:&__block_literal_global_44];

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
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  sourceVNDocument = [imageAnalysisResult sourceVNDocument];

  v4 = [sourceVNDocument blocksWithTypes:8 inRegion:{0.0, 0.0, 1.0, 1.0}];
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
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  rectangleObservations = [imageAnalysisResult rectangleObservations];

  return rectangleObservations;
}

- (NSArray)filteredNormalizedRectangleQuads
{
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  filteredNormalizedRectangleQuads = [imageAnalysisResult filteredNormalizedRectangleQuads];

  return filteredNormalizedRectangleQuads;
}

- (NSArray)layoutComponents
{
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  layoutComponents = [imageAnalysisResult layoutComponents];

  return layoutComponents;
}

- (void)generateDataDetectorInfoWithTypes:(unint64_t)types unfiltered:(BOOL)unfiltered
{
  v5 = [VKCDataDetectorInfo dataDetectorInfoFromAnalysis:self dataDetectorTypes:types unfiltered:unfiltered];
  [(VKImageAnalysis *)self setDataDetectorInfo:v5];
}

- (id)mrcMenu
{
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  mrcMenu = [imageAnalysisResult mrcMenu];

  return mrcMenu;
}

- (id)presentingViewControllerForMrcAction
{
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  presentingViewControllerForMrcAction = [imageAnalysisResult presentingViewControllerForMrcAction];

  return presentingViewControllerForMrcAction;
}

- (void)setPresentingViewControllerForMrcAction:(id)action
{
  actionCopy = action;
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  [imageAnalysisResult setPresentingViewControllerForMrcAction:actionCopy];
}

- (CGRect)rectForMrcActionInPresentingViewController
{
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  [imageAnalysisResult rectForMrcActionInPresentingViewController];
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

- (void)setRectForMrcActionInPresentingViewController:(CGRect)controller
{
  height = controller.size.height;
  width = controller.size.width;
  y = controller.origin.y;
  x = controller.origin.x;
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  [imageAnalysisResult setRectForMrcActionInPresentingViewController:{x, y, width, height}];
}

- (id)barcodeActions
{
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  barcodeActions = [imageAnalysisResult barcodeActions];

  return barcodeActions;
}

- (void)translateFrom:(id)from to:(id)to withCompletion:(id)completion
{
  fromCopy = from;
  toCopy = to;
  completionCopy = completion;
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  sourceVNDocument = [imageAnalysisResult sourceVNDocument];

  v13 = [sourceVNDocument blocksWithTypes:2 inRegion:{0.0, 0.0, 1.0, 1.0}];
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
  v17 = completionCopy;
  v26 = v17;
  v18 = _Block_copy(&v22);
  if (fromCopy && toCopy)
  {
    v19 = objc_alloc(MEMORY[0x1E695DF58]);
    v20 = [v19 initWithLocaleIdentifier:{fromCopy, v22, v23, v24, v25}];
    v21 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:toCopy];
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
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  formRegions = [imageAnalysisResult formRegions];
  v4 = formRegions;
  if (formRegions)
  {
    v5 = formRegions;
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
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  recognitionConfidence = [imageAnalysisResult recognitionConfidence];

  return recognitionConfidence;
}

- (id)formRegionsExcluding:(id)excluding updateExcludedFields:(BOOL)fields
{
  fieldsCopy = fields;
  excludingCopy = excluding;
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  v8 = [imageAnalysisResult formRegionsExcluding:excludingCopy updateExcludedFields:fieldsCopy];

  return v8;
}

- (id)proposedFormRegionForPoint:(CGPoint)point existingFields:(id)fields formSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = point.y;
  x = point.x;
  fieldsCopy = fields;
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  v12 = [imageAnalysisResult proposedFormRegionForPoint:fieldsCopy existingFields:x formSize:{y, width, height}];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  imageAnalysisResult = [(VKImageAnalysis *)self imageAnalysisResult];
  [coderCopy encodeObject:imageAnalysisResult forKey:@"Result"];
}

- (VKImageAnalysis)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Result"];

  v6 = [(VKImageAnalysis *)self initWithAnalysisResult:v5];
  return v6;
}

@end