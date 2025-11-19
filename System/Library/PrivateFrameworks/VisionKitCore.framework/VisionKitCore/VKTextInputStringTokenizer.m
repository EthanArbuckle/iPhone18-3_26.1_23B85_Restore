@interface VKTextInputStringTokenizer
- (BOOL)isPosition:(id)a3 atBoundary:(int64_t)a4 inDirection:(int64_t)a5;
- (BOOL)isPosition:(id)a3 withinTextUnit:(int64_t)a4 inDirection:(int64_t)a5;
- (VKTextInputStringTokenizer)initWithTextInput:(id)a3 recognitionResult:(id)a4;
- (id)positionFromPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5;
- (id)rangeEnclosingPosition:(id)a3 withGranularity:(int64_t)a4 inDirection:(int64_t)a5;
@end

@implementation VKTextInputStringTokenizer

- (VKTextInputStringTokenizer)initWithTextInput:(id)a3 recognitionResult:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VKTextInputStringTokenizer;
  v8 = [(UITextInputStringTokenizer *)&v11 initWithTextInput:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recognitionResult, a4);
  }

  return v9;
}

- (id)rangeEnclosingPosition:(id)a3 withGranularity:(int64_t)a4 inDirection:(int64_t)a5
{
  v8 = a3;
  v9 = objc_opt_class();
  v15.receiver = self;
  v15.super_class = VKTextInputStringTokenizer;
  v10 = [(UITextInputStringTokenizer *)&v15 rangeEnclosingPosition:v8 withGranularity:a4 inDirection:a5];

  v11 = VKDynamicCast(v9, v10);

  if (v11)
  {
    v12 = [(VKTextInputStringTokenizer *)self recognitionResult];
    v13 = [v12 adjustTextRangeToSelectableRange:v11];

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

- (id)positionFromPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5
{
  v8 = a3;
  v9 = objc_opt_class();
  v13.receiver = self;
  v13.super_class = VKTextInputStringTokenizer;
  v10 = [(UITextInputStringTokenizer *)&v13 positionFromPosition:v8 toBoundary:a4 inDirection:a5];

  v11 = VKDynamicCast(v9, v10);

  return v11;
}

- (BOOL)isPosition:(id)a3 atBoundary:(int64_t)a4 inDirection:(int64_t)a5
{
  v6.receiver = self;
  v6.super_class = VKTextInputStringTokenizer;
  return [(UITextInputStringTokenizer *)&v6 isPosition:a3 atBoundary:a4 inDirection:a5];
}

- (BOOL)isPosition:(id)a3 withinTextUnit:(int64_t)a4 inDirection:(int64_t)a5
{
  v6.receiver = self;
  v6.super_class = VKTextInputStringTokenizer;
  return [(UITextInputStringTokenizer *)&v6 isPosition:a3 withinTextUnit:a4 inDirection:a5];
}

@end