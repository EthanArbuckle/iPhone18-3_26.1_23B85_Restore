@interface SXSearchResults
- (SXSearchResults)initWithTotal:(unint64_t)a3 index:(unint64_t)a4;
@end

@implementation SXSearchResults

- (SXSearchResults)initWithTotal:(unint64_t)a3 index:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = SXSearchResults;
  result = [(SXSearchResults *)&v7 init];
  if (result)
  {
    result->_total = a3;
    result->_index = a4;
  }

  return result;
}

@end