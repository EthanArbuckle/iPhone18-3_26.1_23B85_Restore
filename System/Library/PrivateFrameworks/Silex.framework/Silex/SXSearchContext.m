@interface SXSearchContext
- (SXSearchContext)initWithSearchTerm:(id)a3 options:(unint64_t)a4 total:(unint64_t)a5 index:(unint64_t)a6 action:(unint64_t)a7 isBeginningFilterActive:(BOOL)a8 keyboardHeight:(unint64_t)a9;
@end

@implementation SXSearchContext

- (SXSearchContext)initWithSearchTerm:(id)a3 options:(unint64_t)a4 total:(unint64_t)a5 index:(unint64_t)a6 action:(unint64_t)a7 isBeginningFilterActive:(BOOL)a8 keyboardHeight:(unint64_t)a9
{
  v16.receiver = self;
  v16.super_class = SXSearchContext;
  result = [(SXSearchContext *)&v16 init];
  if (result)
  {
    result->_searchTerm = a3;
    result->_options = a4;
    result->_total = a5;
    result->_index = a6;
    result->_isBeginningFilterActive = a8;
    result->_action = a7;
    result->_keyboardHeight = a9;
  }

  return result;
}

@end