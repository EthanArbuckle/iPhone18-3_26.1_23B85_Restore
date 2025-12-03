@interface TSAPdfTaggerState
- (TSAPdfTaggerState)initWithTagStackHeight:(unint64_t)height;
@end

@implementation TSAPdfTaggerState

- (TSAPdfTaggerState)initWithTagStackHeight:(unint64_t)height
{
  v5.receiver = self;
  v5.super_class = TSAPdfTaggerState;
  result = [(TSAPdfTaggerState *)&v5 init];
  if (result)
  {
    result->_tagStackHeight = height;
  }

  return result;
}

@end