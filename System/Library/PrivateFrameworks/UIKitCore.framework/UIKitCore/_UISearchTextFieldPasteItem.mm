@interface _UISearchTextFieldPasteItem
- (void)setSearchTokenResult:(id)result;
@end

@implementation _UISearchTextFieldPasteItem

- (void)setSearchTokenResult:(id)result
{
  objc_storeStrong(&self->_searchTokenResult, result);
  resultCopy = result;
  v6.receiver = self;
  v6.super_class = _UISearchTextFieldPasteItem;
  [(UITextPasteItem *)&v6 setNoResult];
}

@end