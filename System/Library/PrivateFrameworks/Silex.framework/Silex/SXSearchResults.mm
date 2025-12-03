@interface SXSearchResults
- (SXSearchResults)initWithTotal:(unint64_t)total index:(unint64_t)index;
@end

@implementation SXSearchResults

- (SXSearchResults)initWithTotal:(unint64_t)total index:(unint64_t)index
{
  v7.receiver = self;
  v7.super_class = SXSearchResults;
  result = [(SXSearchResults *)&v7 init];
  if (result)
  {
    result->_total = total;
    result->_index = index;
  }

  return result;
}

@end