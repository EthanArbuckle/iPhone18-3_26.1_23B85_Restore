@interface VKCMockImageAnalysisResult
+ (id)mockImageAnalysisResultFromDictionary:(id)a3;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)firstRectForRange:(id)a3 documentView:(id)a4 contentRect:(CGRect)a5;
- (CGSize)imageSize;
- (id)adjustTextRangeToSelectableRange:(id)a3;
- (id)allLineQuads;
- (id)characterRangeAtPoint:(CGPoint)a3;
- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4;
- (id)rangeOfLineForPosition:(id)a3;
- (id)rangeOfWordForPosition:(id)a3;
- (id)selectionRectsForRange:(id)a3 documentView:(id)a4 contentRect:(CGRect)a5;
- (id)smallestSelectableRangeForPosition:(id)a3;
- (id)stringForLine:(id)a3;
- (void)addMockDataDetectorElementsFromArray:(id)a3;
- (void)generateText;
- (void)setIsRunningTest:(BOOL)a3;
@end

@implementation VKCMockImageAnalysisResult

+ (id)mockImageAnalysisResultFromDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(VKCMockImageAnalysisResult);
  v5 = [v3 objectForKeyedSubscript:VKCMockResultRecognitionResultKey];

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

- (void)setIsRunningTest:(BOOL)a3
{
  v3 = a3;
  self->_isRunningTest = a3;
  v4 = [(VKCMockImageAnalysisResult *)self textProvider];
  [v4 setIsRunningTest:v3];
}

- (void)addMockDataDetectorElementsFromArray:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__VKCMockImageAnalysisResult_addMockDataDetectorElementsFromArray___block_invoke;
  v10[3] = &unk_1E7BE60C8;
  v11 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:v10];

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
  v4 = [(VKCMockImageAnalysisResult *)self sourceDict];
  v5 = [v4 objectForKeyedSubscript:VKCMockResultLinesKey];

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

- (id)stringForLine:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__VKCMockImageAnalysisResult_stringForLine___block_invoke;
  v10[3] = &unk_1E7BE4B50;
  v5 = v4;
  v11 = v5;
  v12 = v3;
  v6 = v3;
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
    v4 = [(VKCMockImageAnalysisResult *)self textProvider];
    v5 = [v4 allLineQuads];
    v6 = self->_allLineQuads;
    self->_allLineQuads = v5;

    allLineQuads = self->_allLineQuads;
  }

  return allLineQuads;
}

- (CGRect)caretRectForPosition:(id)a3
{
  v4 = a3;
  v5 = [(VKCMockImageAnalysisResult *)self textProvider];
  [v5 caretRectForPosition:v4];
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

- (id)characterRangeAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VKCMockImageAnalysisResult *)self textProvider];
  v6 = [v5 characterRangeAtPoint:{x, y}];

  return v6;
}

- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(VKCMockImageAnalysisResult *)self textProvider];
  v9 = [v8 closestPositionToPoint:v7 withinRange:{x, y}];

  return v9;
}

- (CGRect)firstRectForRange:(id)a3 documentView:(id)a4 contentRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = a3;
  v13 = [(VKCMockImageAnalysisResult *)self textProvider];
  [v13 firstRectForRange:v12 documentView:v11 contentRect:{x, y, width, height}];
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

- (id)selectionRectsForRange:(id)a3 documentView:(id)a4 contentRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = a3;
  v13 = [(VKCMockImageAnalysisResult *)self textProvider];
  v14 = [v13 selectionRectsForRange:v12 documentView:v11 contentRect:{x, y, width, height}];

  return v14;
}

- (id)rangeOfLineForPosition:(id)a3
{
  v4 = a3;
  v5 = [(VKCMockImageAnalysisResult *)self textProvider];
  v6 = [v5 rangeOfLineForPosition:v4];

  return v6;
}

- (id)rangeOfWordForPosition:(id)a3
{
  v4 = a3;
  v5 = [(VKCMockImageAnalysisResult *)self textProvider];
  v6 = [v5 rangeOfWordForPosition:v4];

  return v6;
}

- (id)smallestSelectableRangeForPosition:(id)a3
{
  v4 = a3;
  v5 = [(VKCMockImageAnalysisResult *)self textProvider];
  v6 = [v5 smallestSelectableRangeForPosition:v4];

  return v6;
}

- (id)adjustTextRangeToSelectableRange:(id)a3
{
  v4 = a3;
  v5 = [(VKCMockImageAnalysisResult *)self textProvider];
  v6 = [v5 adjustTextRangeToSelectableRange:v4];

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