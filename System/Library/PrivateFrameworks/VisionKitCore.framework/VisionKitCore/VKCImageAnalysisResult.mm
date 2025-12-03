@interface VKCImageAnalysisResult
- (BOOL)hasImageData;
- (CGRect)rectForMrcActionInPresentingViewController;
- (NSArray)barcodeActions;
- (NSArray)mrcDataDetectorElements;
- (NSArray)textDataDetectorElements;
- (NSArray)visualSearchResultItems;
- (UIMenu)mrcMenu;
- (UIViewController)presentingViewControllerForMrcAction;
- (VKCImageAnalysisResult)initWithCoder:(id)coder;
- (VKCImageAnalysisResult)initWithDocumentObservation:(id)observation mrcDataDetectors:(id)detectors imageSize:(CGSize)size;
- (double)totalBoundingBoxTextArea;
- (double)totalQuadTextArea;
- (id)dataDetectorsFromRecognitionResult:(id)result;
- (id)ddDictionaryFromDataDetectorElement:(id)element;
- (id)dictionaryRepresentation;
- (id)imageFromNormalizedSubrect:(CGRect)subrect;
- (id)linesPlistFromSourceDocument:(id)document;
- (id)wordPlistFromOutputRegion:(id)region document:(id)document;
- (id)wordsPlistFromRegion:(id)region sourceDocument:(id)document;
- (void)encodeWithCoder:(id)coder;
- (void)setPresentingViewControllerForMrcAction:(id)action;
- (void)setRectForMrcActionInPresentingViewController:(CGRect)controller;
- (void)setRequest:(id)request;
- (void)setVisualSearchResult:(id)result;
@end

@implementation VKCImageAnalysisResult

- (void)setVisualSearchResult:(id)result
{
  v9[1] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_visualSearchResult, result);
  resultCopy = result;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"updatedTypes";
  v9[0] = &unk_1F2C38D40;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"VKAnalysisDidUpdateNotification" object:self userInfo:v7];
}

- (NSArray)visualSearchResultItems
{
  visualSearchResult = [(VKCImageAnalysisResult *)self visualSearchResult];
  resultItems = [visualSearchResult resultItems];
  v4 = [resultItems vk_compactMap:&__block_literal_global_3];

  return v4;
}

VKCVisualSearchResultInfo *__49__VKCImageAnalysisResult_visualSearchResultItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[VKCVisualSearchResultInfo alloc] initWithResultItem:v2];

  return v3;
}

- (BOOL)hasImageData
{
  request = [(VKCTextRecognitionResult *)self request];
  hasImageData = [request hasImageData];

  return hasImageData;
}

- (VKCImageAnalysisResult)initWithDocumentObservation:(id)observation mrcDataDetectors:(id)detectors imageSize:(CGSize)size
{
  v6.receiver = self;
  v6.super_class = VKCImageAnalysisResult;
  result = [(VKCTextRecognitionResult *)&v6 initWithDocumentObservation:observation mrcDataDetectors:detectors imageSize:size.width, size.height];
  result->_totalBoundingBoxTextArea = -1.0;
  result->_totalQuadTextArea = -1.0;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = VKCImageAnalysisResult;
  [(VKCTextRecognitionResult *)&v3 encodeWithCoder:coder];
}

- (VKCImageAnalysisResult)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = VKCImageAnalysisResult;
  return [(VKCTextRecognitionResult *)&v4 initWithCoder:coder];
}

- (void)setRequest:(id)request
{
  v7.receiver = self;
  v7.super_class = VKCImageAnalysisResult;
  requestCopy = request;
  [(VKCTextRecognitionResult *)&v7 setRequest:requestCopy];
  locales = [requestCopy locales];
  [(VKCTextRecognitionResult *)self setRequestLocales:locales];

  barcodeSymbologies = [requestCopy barcodeSymbologies];

  [(VKCTextRecognitionResult *)self setRequestBarcodeSymbologies:barcodeSymbologies];
  [(VKCTextRecognitionResult *)self updateInspectableElements];
}

- (double)totalBoundingBoxTextArea
{
  result = self->_totalBoundingBoxTextArea;
  if (result < 0.0)
  {
    self->_totalBoundingBoxTextArea = 0.0;
    allLineQuads = [(VKCTextRecognitionResult *)self allLineQuads];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__VKCImageAnalysisResult_totalBoundingBoxTextArea__block_invoke;
    v5[3] = &unk_1E7BE4640;
    v5[4] = self;
    [allLineQuads enumerateObjectsUsingBlock:v5];

    return self->_totalBoundingBoxTextArea;
  }

  return result;
}

double __50__VKCImageAnalysisResult_totalBoundingBoxTextArea__block_invoke(uint64_t a1, void *a2)
{
  [a2 boundingBoxArea];
  v3 = *(a1 + 32);
  result = v4 + *(v3 + 288);
  *(v3 + 288) = result;
  return result;
}

- (double)totalQuadTextArea
{
  result = self->_totalQuadTextArea;
  if (result < 0.0)
  {
    self->_totalQuadTextArea = 0.0;
    allLineQuads = [(VKCTextRecognitionResult *)self allLineQuads];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__VKCImageAnalysisResult_totalQuadTextArea__block_invoke;
    v5[3] = &unk_1E7BE4640;
    v5[4] = self;
    [allLineQuads enumerateObjectsUsingBlock:v5];

    return self->_totalQuadTextArea;
  }

  return result;
}

double __43__VKCImageAnalysisResult_totalQuadTextArea__block_invoke(uint64_t a1, void *a2)
{
  [a2 area];
  v3 = *(a1 + 32);
  result = v4 + *(v3 + 296);
  *(v3 + 296) = result;
  return result;
}

- (UIMenu)mrcMenu
{
  mrcDataDetectorElements = [(VKCImageAnalysisResult *)self mrcDataDetectorElements];
  if ([mrcDataDetectorElements count] == 1)
  {
    firstObject = [mrcDataDetectorElements firstObject];
    if (!firstObject)
    {
      [VKAssert handleFailedAssertWithCondition:"((mrcElement) != nil)" functionName:"[VKCImageAnalysisResult mrcMenu]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "mrcElement"];
    }

    mrcMenu = [firstObject mrcMenu];
  }

  else
  {
    mrcMenu = 0;
  }

  return mrcMenu;
}

- (UIViewController)presentingViewControllerForMrcAction
{
  mrcDataDetectorElements = [(VKCImageAnalysisResult *)self mrcDataDetectorElements];
  if ([mrcDataDetectorElements count] == 1)
  {
    firstObject = [mrcDataDetectorElements firstObject];
    if (!firstObject)
    {
      [VKAssert handleFailedAssertWithCondition:"((mrcElement) != nil)" functionName:"[VKCImageAnalysisResult presentingViewControllerForMrcAction]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "mrcElement"];
    }

    presentingViewControllerForMrcAction = [firstObject presentingViewControllerForMrcAction];
  }

  else
  {
    presentingViewControllerForMrcAction = 0;
  }

  return presentingViewControllerForMrcAction;
}

- (void)setPresentingViewControllerForMrcAction:(id)action
{
  actionCopy = action;
  mrcDataDetectorElements = [(VKCImageAnalysisResult *)self mrcDataDetectorElements];
  if ([mrcDataDetectorElements count] == 1)
  {
    firstObject = [mrcDataDetectorElements firstObject];
    if (!firstObject)
    {
      [VKAssert handleFailedAssertWithCondition:"((mrcElement) != nil)" functionName:"[VKCImageAnalysisResult setPresentingViewControllerForMrcAction:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "mrcElement"];
    }

    [firstObject setPresentingViewControllerForMrcAction:actionCopy];
  }
}

- (void)setRectForMrcActionInPresentingViewController:(CGRect)controller
{
  height = controller.size.height;
  width = controller.size.width;
  y = controller.origin.y;
  x = controller.origin.x;
  mrcDataDetectorElements = [(VKCImageAnalysisResult *)self mrcDataDetectorElements];
  v7 = [mrcDataDetectorElements count] == 1;
  v8 = mrcDataDetectorElements;
  if (v7)
  {
    firstObject = [mrcDataDetectorElements firstObject];
    if (!firstObject)
    {
      [VKAssert handleFailedAssertWithCondition:"((mrcElement) != nil)" functionName:"[VKCImageAnalysisResult setRectForMrcActionInPresentingViewController:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "mrcElement"];
    }

    [firstObject setRectForMrcActionInPresentingViewController:{x, y, width, height}];

    v8 = mrcDataDetectorElements;
  }
}

- (NSArray)barcodeActions
{
  mrcDataDetectorElements = [(VKCImageAnalysisResult *)self mrcDataDetectorElements];
  v3 = [mrcDataDetectorElements vk_compactMap:&__block_literal_global_167];

  return v3;
}

- (NSArray)textDataDetectorElements
{
  dataDetectors = [(VKCTextRecognitionResult *)self dataDetectors];
  v3 = [dataDetectors vk_objectsPassingTest:&__block_literal_global_170];

  return v3;
}

- (NSArray)mrcDataDetectorElements
{
  dataDetectors = [(VKCTextRecognitionResult *)self dataDetectors];
  v3 = [dataDetectors vk_objectsPassingTest:&__block_literal_global_172];

  return v3;
}

- (id)imageFromNormalizedSubrect:(CGRect)subrect
{
  height = subrect.size.height;
  width = subrect.size.width;
  y = subrect.origin.y;
  x = subrect.origin.x;
  request = [(VKCTextRecognitionResult *)self request];
  blockingGenerateCIImage = [request blockingGenerateCIImage];

  if (blockingGenerateCIImage)
  {
    v9 = VKMFlipRect(x, y, width, height, 0.0, 0.0, 1.0, 1.0);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [blockingGenerateCIImage extent];
    VKMRectFromNormalizedSubrect(v16, v17, v18, v19, v9, v11, v13, v15);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [objc_alloc(MEMORY[0x1E695F620]) initWithOptions:0];
    v29 = [v28 createCGImage:blockingGenerateCIImage fromRect:{v21, v23, v25, v27}];
    v30 = [MEMORY[0x1E69DCAB8] vk_imageWithCGImage:v29];
    CGImageRelease(v29);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (CGRect)rectForMrcActionInPresentingViewController
{
  x = self->_rectForMrcActionInPresentingViewController.origin.x;
  y = self->_rectForMrcActionInPresentingViewController.origin.y;
  width = self->_rectForMrcActionInPresentingViewController.size.width;
  height = self->_rectForMrcActionInPresentingViewController.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = VKCMockResultImageSizeKey;
  [(VKCTextRecognitionResult *)self imageSize];
  v5 = [VKCMockHelper plistFromSize:?];
  [v3 vk_addKey:v4 forNonNilObject:v5];

  v6 = VKCMockResultTextKey;
  text = [(VKCTextRecognitionResult *)self text];
  [v3 vk_addKey:v6 forNonNilObject:text];

  v8 = VKCMockResultTextForReferenceKey;
  text2 = [(VKCTextRecognitionResult *)self text];
  vk_stringByReplacingNewlineCharactersWithWhiteSpace = [text2 vk_stringByReplacingNewlineCharactersWithWhiteSpace];
  [v3 vk_addKey:v8 forNonNilObject:vk_stringByReplacingNewlineCharactersWithWhiteSpace];

  v11 = VKCMockResultLinesKey;
  sourceDocument = [(VKCTextRecognitionResult *)self sourceDocument];
  v13 = [(VKCImageAnalysisResult *)self linesPlistFromSourceDocument:sourceDocument];
  [v3 vk_addKey:v11 forNonNilObject:v13];

  v14 = VKCMockResultDataDetectorsKey;
  v15 = [(VKCImageAnalysisResult *)self dataDetectorsFromRecognitionResult:self];
  [v3 vk_addKey:v14 forNonNilObject:v15];

  return v3;
}

- (id)linesPlistFromSourceDocument:(id)document
{
  documentCopy = document;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__VKCImageAnalysisResult_MockAdditions__linesPlistFromSourceDocument___block_invoke;
  v10[3] = &unk_1E7BE6058;
  v11 = documentCopy;
  v6 = v5;
  v12 = v6;
  selfCopy = self;
  v7 = documentCopy;
  [v7 enumerateContentsWithTypes:8 usingBlock:v10];
  v8 = v6;

  return v6;
}

void __70__VKCImageAnalysisResult_MockAdditions__linesPlistFromSourceDocument___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 rangeOfContentRegion:a2];
  v8 = [v3 outputRegionWithContentsOfCharacterRange:{v4, v5}];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) wordsPlistFromRegion:v8 sourceDocument:*(a1 + 32)];
  [v6 vk_addNonNilObject:v7];
}

- (id)wordsPlistFromRegion:(id)region sourceDocument:(id)document
{
  documentCopy = document;
  v7 = MEMORY[0x1E695DF70];
  regionCopy = region;
  v9 = objc_alloc_init(v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__VKCImageAnalysisResult_MockAdditions__wordsPlistFromRegion_sourceDocument___block_invoke;
  v15[3] = &unk_1E7BE6058;
  v10 = v9;
  v16 = v10;
  selfCopy = self;
  v18 = documentCopy;
  v11 = documentCopy;
  [regionCopy enumerateContentsWithTypes:16 usingBlock:v15];

  v12 = v18;
  v13 = v10;

  return v10;
}

void __77__VKCImageAnalysisResult_MockAdditions__wordsPlistFromRegion_sourceDocument___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) wordPlistFromOutputRegion:a2 document:*(a1 + 48)];
  [v2 vk_addNonNilObject:v3];
}

- (id)wordPlistFromOutputRegion:(id)region document:(id)document
{
  v5 = MEMORY[0x1E695DF90];
  documentCopy = document;
  regionCopy = region;
  v8 = objc_alloc_init(v5);
  v9 = VKCMockResultTextKey;
  text = [regionCopy text];
  [v8 vk_addKey:v9 forNonNilObject:text];

  v11 = VKCMockResultRangeKey;
  v12 = [documentCopy rangeOfContentRegion:regionCopy];
  v14 = v13;

  v15 = [VKCMockHelper plistFromRange:v12, v14];
  [v8 vk_addKey:v11 forNonNilObject:v15];

  v16 = VKCMockResultQuadKey;
  boundingQuad = [regionCopy boundingQuad];

  vkQuad = [boundingQuad vkQuad];
  dictionaryRepresentation = [vkQuad dictionaryRepresentation];
  [v8 vk_addKey:v16 forNonNilObject:dictionaryRepresentation];

  return v8;
}

- (id)dataDetectorsFromRecognitionResult:(id)result
{
  v4 = MEMORY[0x1E695DF70];
  resultCopy = result;
  v6 = objc_alloc_init(v4);
  dataDetectors = [resultCopy dataDetectors];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__VKCImageAnalysisResult_MockAdditions__dataDetectorsFromRecognitionResult___block_invoke;
  v11[3] = &unk_1E7BE6080;
  v8 = v6;
  v12 = v8;
  selfCopy = self;
  [dataDetectors enumerateObjectsUsingBlock:v11];

  v9 = v8;
  return v8;
}

void __76__VKCImageAnalysisResult_MockAdditions__dataDetectorsFromRecognitionResult___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) ddDictionaryFromDataDetectorElement:a2];
  [v2 addObject:v3];
}

- (id)ddDictionaryFromDataDetectorElement:(id)element
{
  elementCopy = element;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(elementCopy, "dataDetectorTypes")}];
  [v4 setObject:v5 forKeyedSubscript:VKCMockResultDataDetectorTypesKey];

  v6 = objc_opt_class();
  v7 = VKDynamicCast(v6, elementCopy);
  v8 = v7;
  if (v7)
  {
    characterRange = [v7 characterRange];
    v11 = [VKCMockHelper plistFromRange:characterRange, v10];
    [v4 setObject:v11 forKeyedSubscript:VKCMockResultRangeKey];
  }

  boundingQuads = [elementCopy boundingQuads];
  v13 = [boundingQuads vk_compactMap:&__block_literal_global_22];
  [v4 setObject:v13 forKeyedSubscript:VKCMockResultDataDetectorQuadsKey];

  return v4;
}

@end