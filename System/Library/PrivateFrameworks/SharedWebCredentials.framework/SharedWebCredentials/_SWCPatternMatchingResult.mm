@interface _SWCPatternMatchingResult
- (id)_initWithIndex:(unint64_t)a3 excluded:(BOOL)a4;
@end

@implementation _SWCPatternMatchingResult

- (id)_initWithIndex:(unint64_t)a3 excluded:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = _SWCPatternMatchingResult;
  result = [(_SWCPatternMatchingResult *)&v7 init];
  if (result)
  {
    *(result + 2) = a3;
    *(result + 8) = a4;
  }

  return result;
}

@end