@interface VKCImageAnalysisResult
- (BOOL)hasImageData;
- (CGRect)rectForMrcActionInPresentingViewController;
- (NSArray)barcodeActions;
- (NSArray)mrcDataDetectorElements;
- (NSArray)textDataDetectorElements;
- (NSArray)visualSearchResultItems;
- (UIMenu)mrcMenu;
- (UIViewController)presentingViewControllerForMrcAction;
- (VKCImageAnalysisResult)initWithCoder:(id)a3;
- (VKCImageAnalysisResult)initWithDocumentObservation:(id)a3 mrcDataDetectors:(id)a4 imageSize:(CGSize)a5;
- (double)totalBoundingBoxTextArea;
- (double)totalQuadTextArea;
- (id)dataDetectorsFromRecognitionResult:(id)a3;
- (id)ddDictionaryFromDataDetectorElement:(id)a3;
- (id)dictionaryRepresentation;
- (id)imageFromNormalizedSubrect:(CGRect)a3;
- (id)linesPlistFromSourceDocument:(id)a3;
- (id)wordPlistFromOutputRegion:(id)a3 document:(id)a4;
- (id)wordsPlistFromRegion:(id)a3 sourceDocument:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setPresentingViewControllerForMrcAction:(id)a3;
- (void)setRectForMrcActionInPresentingViewController:(CGRect)a3;
- (void)setRequest:(id)a3;
- (void)setVisualSearchResult:(id)a3;
@end

@implementation VKCImageAnalysisResult

- (void)setVisualSearchResult:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_visualSearchResult, a3);
  v5 = a3;
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"updatedTypes";
  v9[0] = &unk_1F2C38D40;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v6 postNotificationName:@"VKAnalysisDidUpdateNotification" object:self userInfo:v7];
}

- (NSArray)visualSearchResultItems
{
  v2 = [(VKCImageAnalysisResult *)self visualSearchResult];
  v3 = [v2 resultItems];
  v4 = [v3 vk_compactMap:&__block_literal_global_3];

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
  v2 = [(VKCTextRecognitionResult *)self request];
  v3 = [v2 hasImageData];

  return v3;
}

- (VKCImageAnalysisResult)initWithDocumentObservation:(id)a3 mrcDataDetectors:(id)a4 imageSize:(CGSize)a5
{
  v6.receiver = self;
  v6.super_class = VKCImageAnalysisResult;
  result = [(VKCTextRecognitionResult *)&v6 initWithDocumentObservation:a3 mrcDataDetectors:a4 imageSize:a5.width, a5.height];
  result->_totalBoundingBoxTextArea = -1.0;
  result->_totalQuadTextArea = -1.0;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = VKCImageAnalysisResult;
  [(VKCTextRecognitionResult *)&v3 encodeWithCoder:a3];
}

- (VKCImageAnalysisResult)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = VKCImageAnalysisResult;
  return [(VKCTextRecognitionResult *)&v4 initWithCoder:a3];
}

- (void)setRequest:(id)a3
{
  v7.receiver = self;
  v7.super_class = VKCImageAnalysisResult;
  v4 = a3;
  [(VKCTextRecognitionResult *)&v7 setRequest:v4];
  v5 = [v4 locales];
  [(VKCTextRecognitionResult *)self setRequestLocales:v5];

  v6 = [v4 barcodeSymbologies];

  [(VKCTextRecognitionResult *)self setRequestBarcodeSymbologies:v6];
  [(VKCTextRecognitionResult *)self updateInspectableElements];
}

- (double)totalBoundingBoxTextArea
{
  result = self->_totalBoundingBoxTextArea;
  if (result < 0.0)
  {
    self->_totalBoundingBoxTextArea = 0.0;
    v4 = [(VKCTextRecognitionResult *)self allLineQuads];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__VKCImageAnalysisResult_totalBoundingBoxTextArea__block_invoke;
    v5[3] = &unk_1E7BE4640;
    v5[4] = self;
    [v4 enumerateObjectsUsingBlock:v5];

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
    v4 = [(VKCTextRecognitionResult *)self allLineQuads];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__VKCImageAnalysisResult_totalQuadTextArea__block_invoke;
    v5[3] = &unk_1E7BE4640;
    v5[4] = self;
    [v4 enumerateObjectsUsingBlock:v5];

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
  v2 = [(VKCImageAnalysisResult *)self mrcDataDetectorElements];
  if ([v2 count] == 1)
  {
    v3 = [v2 firstObject];
    if (!v3)
    {
      [VKAssert handleFailedAssertWithCondition:"((mrcElement) != nil)" functionName:"[VKCImageAnalysisResult mrcMenu]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "mrcElement"];
    }

    v4 = [v3 mrcMenu];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIViewController)presentingViewControllerForMrcAction
{
  v2 = [(VKCImageAnalysisResult *)self mrcDataDetectorElements];
  if ([v2 count] == 1)
  {
    v3 = [v2 firstObject];
    if (!v3)
    {
      [VKAssert handleFailedAssertWithCondition:"((mrcElement) != nil)" functionName:"[VKCImageAnalysisResult presentingViewControllerForMrcAction]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "mrcElement"];
    }

    v4 = [v3 presentingViewControllerForMrcAction];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPresentingViewControllerForMrcAction:(id)a3
{
  v6 = a3;
  v4 = [(VKCImageAnalysisResult *)self mrcDataDetectorElements];
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    if (!v5)
    {
      [VKAssert handleFailedAssertWithCondition:"((mrcElement) != nil)" functionName:"[VKCImageAnalysisResult setPresentingViewControllerForMrcAction:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "mrcElement"];
    }

    [v5 setPresentingViewControllerForMrcAction:v6];
  }
}

- (void)setRectForMrcActionInPresentingViewController:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(VKCImageAnalysisResult *)self mrcDataDetectorElements];
  v7 = [v10 count] == 1;
  v8 = v10;
  if (v7)
  {
    v9 = [v10 firstObject];
    if (!v9)
    {
      [VKAssert handleFailedAssertWithCondition:"((mrcElement) != nil)" functionName:"[VKCImageAnalysisResult setRectForMrcActionInPresentingViewController:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "mrcElement"];
    }

    [v9 setRectForMrcActionInPresentingViewController:{x, y, width, height}];

    v8 = v10;
  }
}

- (NSArray)barcodeActions
{
  v2 = [(VKCImageAnalysisResult *)self mrcDataDetectorElements];
  v3 = [v2 vk_compactMap:&__block_literal_global_167];

  return v3;
}

- (NSArray)textDataDetectorElements
{
  v2 = [(VKCTextRecognitionResult *)self dataDetectors];
  v3 = [v2 vk_objectsPassingTest:&__block_literal_global_170];

  return v3;
}

- (NSArray)mrcDataDetectorElements
{
  v2 = [(VKCTextRecognitionResult *)self dataDetectors];
  v3 = [v2 vk_objectsPassingTest:&__block_literal_global_172];

  return v3;
}

- (id)imageFromNormalizedSubrect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(VKCTextRecognitionResult *)self request];
  v8 = [v7 blockingGenerateCIImage];

  if (v8)
  {
    v9 = VKMFlipRect(x, y, width, height, 0.0, 0.0, 1.0, 1.0);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v8 extent];
    VKMRectFromNormalizedSubrect(v16, v17, v18, v19, v9, v11, v13, v15);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [objc_alloc(MEMORY[0x1E695F620]) initWithOptions:0];
    v29 = [v28 createCGImage:v8 fromRect:{v21, v23, v25, v27}];
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
  v7 = [(VKCTextRecognitionResult *)self text];
  [v3 vk_addKey:v6 forNonNilObject:v7];

  v8 = VKCMockResultTextForReferenceKey;
  v9 = [(VKCTextRecognitionResult *)self text];
  v10 = [v9 vk_stringByReplacingNewlineCharactersWithWhiteSpace];
  [v3 vk_addKey:v8 forNonNilObject:v10];

  v11 = VKCMockResultLinesKey;
  v12 = [(VKCTextRecognitionResult *)self sourceDocument];
  v13 = [(VKCImageAnalysisResult *)self linesPlistFromSourceDocument:v12];
  [v3 vk_addKey:v11 forNonNilObject:v13];

  v14 = VKCMockResultDataDetectorsKey;
  v15 = [(VKCImageAnalysisResult *)self dataDetectorsFromRecognitionResult:self];
  [v3 vk_addKey:v14 forNonNilObject:v15];

  return v3;
}

- (id)linesPlistFromSourceDocument:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__VKCImageAnalysisResult_MockAdditions__linesPlistFromSourceDocument___block_invoke;
  v10[3] = &unk_1E7BE6058;
  v11 = v4;
  v6 = v5;
  v12 = v6;
  v13 = self;
  v7 = v4;
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

- (id)wordsPlistFromRegion:(id)a3 sourceDocument:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF70];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__VKCImageAnalysisResult_MockAdditions__wordsPlistFromRegion_sourceDocument___block_invoke;
  v15[3] = &unk_1E7BE6058;
  v10 = v9;
  v16 = v10;
  v17 = self;
  v18 = v6;
  v11 = v6;
  [v8 enumerateContentsWithTypes:16 usingBlock:v15];

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

- (id)wordPlistFromOutputRegion:(id)a3 document:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = VKCMockResultTextKey;
  v10 = [v7 text];
  [v8 vk_addKey:v9 forNonNilObject:v10];

  v11 = VKCMockResultRangeKey;
  v12 = [v6 rangeOfContentRegion:v7];
  v14 = v13;

  v15 = [VKCMockHelper plistFromRange:v12, v14];
  [v8 vk_addKey:v11 forNonNilObject:v15];

  v16 = VKCMockResultQuadKey;
  v17 = [v7 boundingQuad];

  v18 = [v17 vkQuad];
  v19 = [v18 dictionaryRepresentation];
  [v8 vk_addKey:v16 forNonNilObject:v19];

  return v8;
}

- (id)dataDetectorsFromRecognitionResult:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 dataDetectors];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__VKCImageAnalysisResult_MockAdditions__dataDetectorsFromRecognitionResult___block_invoke;
  v11[3] = &unk_1E7BE6080;
  v8 = v6;
  v12 = v8;
  v13 = self;
  [v7 enumerateObjectsUsingBlock:v11];

  v9 = v8;
  return v8;
}

void __76__VKCImageAnalysisResult_MockAdditions__dataDetectorsFromRecognitionResult___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) ddDictionaryFromDataDetectorElement:a2];
  [v2 addObject:v3];
}

- (id)ddDictionaryFromDataDetectorElement:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "dataDetectorTypes")}];
  [v4 setObject:v5 forKeyedSubscript:VKCMockResultDataDetectorTypesKey];

  v6 = objc_opt_class();
  v7 = VKDynamicCast(v6, v3);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 characterRange];
    v11 = [VKCMockHelper plistFromRange:v9, v10];
    [v4 setObject:v11 forKeyedSubscript:VKCMockResultRangeKey];
  }

  v12 = [v3 boundingQuads];
  v13 = [v12 vk_compactMap:&__block_literal_global_22];
  [v4 setObject:v13 forKeyedSubscript:VKCMockResultDataDetectorQuadsKey];

  return v4;
}

@end