@interface VKCMockImageAnalysisResult
+ (id)mockImageAnalysisResultFromDictionary:(id)dictionary;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)firstRectForRange:(id)range documentView:(id)view contentRect:(CGRect)rect;
- (CGSize)imageSize;
- (id)adjustTextRangeToSelectableRange:(id)range;
- (id)allLineQuads;
- (id)characterRangeAtPoint:(CGPoint)point;
- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range;
- (id)rangeOfLineForPosition:(id)position;
- (id)rangeOfWordForPosition:(id)position;
- (id)selectionRectsForRange:(id)range documentView:(id)view contentRect:(CGRect)rect;
- (id)smallestSelectableRangeForPosition:(id)position;
- (id)stringForLine:(id)line;
- (void)addMockDataDetectorElementsFromArray:(id)array;
- (void)generateText;
- (void)setIsRunningTest:(BOOL)test;
@end

@implementation VKCMockImageAnalysisResult

+ (id)mockImageAnalysisResultFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(VKCMockImageAnalysisResult);
  v5 = [dictionaryCopy objectForKeyedSubscript:VKCMockResultRecognitionResultKey];

  [(VKCMockImageAnalysisResult *)v4 setSourceDict:v5];
  [(VKCMockImageAnalysisResult *)v4 generateText];
  v6 = [[VKCMockTextProvider alloc] initWithDictionary:v5];
  [(VKCMockImageAnalysisResult *)v4 setTextProvider:v6];

  v7 = [v5 objectForKeyedSubscript:VKCMockResultDataDetectorsKey];
  [(VKCMockImageAnalysisResult *)v4 addMockDataDetectorElementsFromArray:v7];

  v8 = [v5 objectForKeyedSubscript:VKCMockResultImageSizeKey];
  [VKCMockHelper sizeFromPlistDictionary:v8];
  [(VKCMockImageAnalysisResult *)v4 setImageSize:?];

  return v4;
}

- (void)setIsRunningTest:(BOOL)test
{
  testCopy = test;
  self->_isRunningTest = test;
  textProvider = [(VKCMockImageAnalysisResult *)self textProvider];
  [textProvider setIsRunningTest:testCopy];
}

- (void)addMockDataDetectorElementsFromArray:(id)array
{
  v4 = MEMORY[0x1E695DF70];
  arrayCopy = array;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__VKCMockImageAnalysisResult_addMockDataDetectorElementsFromArray___block_invoke;
  v10[3] = &unk_1E7BE60C8;
  v11 = v6;
  v7 = v6;
  [arrayCopy enumerateObjectsUsingBlock:v10];

  v8 = [v7 copy];
  dataDetectors = self->_dataDetectors;
  self->_dataDetectors = v8;
}

void __67__VKCMockImageAnalysisResult_addMockDataDetectorElementsFromArray___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[VKCMockDataDetectorElement alloc] initWithDictionary:v3];

  [v2 vk_addNonNilObject:v4];
}

- (void)generateText
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  sourceDict = [(VKCMockImageAnalysisResult *)self sourceDict];
  v5 = [sourceDict objectForKeyedSubscript:VKCMockResultLinesKey];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__VKCMockImageAnalysisResult_generateText__block_invoke;
  v8[3] = &unk_1E7BE60F0;
  v8[4] = self;
  v9 = v3;
  v10 = v5;
  v6 = v5;
  v7 = v3;
  [v6 enumerateObjectsUsingBlock:v8];
  [(VKCMockImageAnalysisResult *)self setText:v7];
}

void __42__VKCMockImageAnalysisResult_generateText__block_invoke(id *a1, uint64_t a2, unint64_t a3)
{
  v5 = [a1[4] stringForLine:a2];
  [a1[5] appendString:?];
  if ([a1[6] count] > a3)
  {
    [a1[5] appendString:@"\n"];
  }
}

- (id)stringForLine:(id)line
{
  lineCopy = line;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__VKCMockImageAnalysisResult_stringForLine___block_invoke;
  v10[3] = &unk_1E7BE4B50;
  v5 = v4;
  v11 = v5;
  v12 = lineCopy;
  v6 = lineCopy;
  [v6 enumerateObjectsUsingBlock:v10];
  v7 = v12;
  v8 = v5;

  return v5;
}

void __44__VKCMockImageAnalysisResult_stringForLine___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = [a2 objectForKeyedSubscript:VKCMockResultTextKey];
  [*(a1 + 32) appendString:?];
  if ([*(a1 + 40) count] - 1 > a3)
  {
    [*(a1 + 32) appendString:@" "];
  }
}

- (id)allLineQuads
{
  allLineQuads = self->_allLineQuads;
  if (!allLineQuads)
  {
    textProvider = [(VKCMockImageAnalysisResult *)self textProvider];
    allLineQuads = [textProvider allLineQuads];
    v6 = self->_allLineQuads;
    self->_allLineQuads = allLineQuads;

    allLineQuads = self->_allLineQuads;
  }

  return allLineQuads;
}

- (CGRect)caretRectForPosition:(id)position
{
  positionCopy = position;
  textProvider = [(VKCMockImageAnalysisResult *)self textProvider];
  [textProvider caretRectForPosition:positionCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)characterRangeAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  textProvider = [(VKCMockImageAnalysisResult *)self textProvider];
  v6 = [textProvider characterRangeAtPoint:{x, y}];

  return v6;
}

- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range
{
  y = point.y;
  x = point.x;
  rangeCopy = range;
  textProvider = [(VKCMockImageAnalysisResult *)self textProvider];
  v9 = [textProvider closestPositionToPoint:rangeCopy withinRange:{x, y}];

  return v9;
}

- (CGRect)firstRectForRange:(id)range documentView:(id)view contentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  rangeCopy = range;
  textProvider = [(VKCMockImageAnalysisResult *)self textProvider];
  [textProvider firstRectForRange:rangeCopy documentView:viewCopy contentRect:{x, y, width, height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)selectionRectsForRange:(id)range documentView:(id)view contentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  rangeCopy = range;
  textProvider = [(VKCMockImageAnalysisResult *)self textProvider];
  v14 = [textProvider selectionRectsForRange:rangeCopy documentView:viewCopy contentRect:{x, y, width, height}];

  return v14;
}

- (id)rangeOfLineForPosition:(id)position
{
  positionCopy = position;
  textProvider = [(VKCMockImageAnalysisResult *)self textProvider];
  v6 = [textProvider rangeOfLineForPosition:positionCopy];

  return v6;
}

- (id)rangeOfWordForPosition:(id)position
{
  positionCopy = position;
  textProvider = [(VKCMockImageAnalysisResult *)self textProvider];
  v6 = [textProvider rangeOfWordForPosition:positionCopy];

  return v6;
}

- (id)smallestSelectableRangeForPosition:(id)position
{
  positionCopy = position;
  textProvider = [(VKCMockImageAnalysisResult *)self textProvider];
  v6 = [textProvider smallestSelectableRangeForPosition:positionCopy];

  return v6;
}

- (id)adjustTextRangeToSelectableRange:(id)range
{
  rangeCopy = range;
  textProvider = [(VKCMockImageAnalysisResult *)self textProvider];
  v6 = [textProvider adjustTextRangeToSelectableRange:rangeCopy];

  return v6;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end