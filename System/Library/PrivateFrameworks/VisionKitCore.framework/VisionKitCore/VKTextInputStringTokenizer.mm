@interface VKTextInputStringTokenizer
- (BOOL)isPosition:(id)position atBoundary:(int64_t)boundary inDirection:(int64_t)direction;
- (BOOL)isPosition:(id)position withinTextUnit:(int64_t)unit inDirection:(int64_t)direction;
- (VKTextInputStringTokenizer)initWithTextInput:(id)input recognitionResult:(id)result;
- (id)positionFromPosition:(id)position toBoundary:(int64_t)boundary inDirection:(int64_t)direction;
- (id)rangeEnclosingPosition:(id)position withGranularity:(int64_t)granularity inDirection:(int64_t)direction;
@end

@implementation VKTextInputStringTokenizer

- (VKTextInputStringTokenizer)initWithTextInput:(id)input recognitionResult:(id)result
{
  resultCopy = result;
  v11.receiver = self;
  v11.super_class = VKTextInputStringTokenizer;
  v8 = [(UITextInputStringTokenizer *)&v11 initWithTextInput:input];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recognitionResult, result);
  }

  return v9;
}

- (id)rangeEnclosingPosition:(id)position withGranularity:(int64_t)granularity inDirection:(int64_t)direction
{
  positionCopy = position;
  v9 = objc_opt_class();
  v15.receiver = self;
  v15.super_class = VKTextInputStringTokenizer;
  v10 = [(UITextInputStringTokenizer *)&v15 rangeEnclosingPosition:positionCopy withGranularity:granularity inDirection:direction];

  v11 = VKDynamicCast(v9, v10);

  if (v11)
  {
    recognitionResult = [(VKTextInputStringTokenizer *)self recognitionResult];
    v13 = [recognitionResult adjustTextRangeToSelectableRange:v11];

    if (v13)
    {
      v13 = v13;

      v11 = v13;
    }
  }

  else
  {
    v13 = 0;
  }

  return v11;
}

- (id)positionFromPosition:(id)position toBoundary:(int64_t)boundary inDirection:(int64_t)direction
{
  positionCopy = position;
  v9 = objc_opt_class();
  v13.receiver = self;
  v13.super_class = VKTextInputStringTokenizer;
  v10 = [(UITextInputStringTokenizer *)&v13 positionFromPosition:positionCopy toBoundary:boundary inDirection:direction];

  v11 = VKDynamicCast(v9, v10);

  return v11;
}

- (BOOL)isPosition:(id)position atBoundary:(int64_t)boundary inDirection:(int64_t)direction
{
  v6.receiver = self;
  v6.super_class = VKTextInputStringTokenizer;
  return [(UITextInputStringTokenizer *)&v6 isPosition:position atBoundary:boundary inDirection:direction];
}

- (BOOL)isPosition:(id)position withinTextUnit:(int64_t)unit inDirection:(int64_t)direction
{
  v6.receiver = self;
  v6.super_class = VKTextInputStringTokenizer;
  return [(UITextInputStringTokenizer *)&v6 isPosition:position withinTextUnit:unit inDirection:direction];
}

@end