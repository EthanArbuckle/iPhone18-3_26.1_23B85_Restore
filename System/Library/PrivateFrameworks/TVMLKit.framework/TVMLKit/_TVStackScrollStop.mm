@interface _TVStackScrollStop
- (_TVStackScrollStop)init;
@end

@implementation _TVStackScrollStop

- (_TVStackScrollStop)init
{
  v3.receiver = self;
  v3.super_class = _TVStackScrollStop;
  result = [(_TVStackScrollStop *)&v3 init];
  if (result)
  {
    result->_sectionIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

@end