@interface _SWCPatternMatchingResult
- (id)_initWithIndex:(unint64_t)index excluded:(BOOL)excluded;
@end

@implementation _SWCPatternMatchingResult

- (id)_initWithIndex:(unint64_t)index excluded:(BOOL)excluded
{
  v7.receiver = self;
  v7.super_class = _SWCPatternMatchingResult;
  result = [(_SWCPatternMatchingResult *)&v7 init];
  if (result)
  {
    *(result + 2) = index;
    *(result + 8) = excluded;
  }

  return result;
}

@end