@interface TSAPdfTaggerState
- (TSAPdfTaggerState)initWithTagStackHeight:(unint64_t)a3;
@end

@implementation TSAPdfTaggerState

- (TSAPdfTaggerState)initWithTagStackHeight:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TSAPdfTaggerState;
  result = [(TSAPdfTaggerState *)&v5 init];
  if (result)
  {
    result->_tagStackHeight = a3;
  }

  return result;
}

@end