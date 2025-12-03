@interface SXSearchContext
- (SXSearchContext)initWithSearchTerm:(id)term options:(unint64_t)options total:(unint64_t)total index:(unint64_t)index action:(unint64_t)action isBeginningFilterActive:(BOOL)active keyboardHeight:(unint64_t)height;
@end

@implementation SXSearchContext

- (SXSearchContext)initWithSearchTerm:(id)term options:(unint64_t)options total:(unint64_t)total index:(unint64_t)index action:(unint64_t)action isBeginningFilterActive:(BOOL)active keyboardHeight:(unint64_t)height
{
  v16.receiver = self;
  v16.super_class = SXSearchContext;
  result = [(SXSearchContext *)&v16 init];
  if (result)
  {
    result->_searchTerm = term;
    result->_options = options;
    result->_total = total;
    result->_index = index;
    result->_isBeginningFilterActive = active;
    result->_action = action;
    result->_keyboardHeight = height;
  }

  return result;
}

@end