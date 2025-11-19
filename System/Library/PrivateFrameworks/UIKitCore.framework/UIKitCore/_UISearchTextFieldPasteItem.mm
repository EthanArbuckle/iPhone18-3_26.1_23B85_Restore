@interface _UISearchTextFieldPasteItem
- (void)setSearchTokenResult:(id)a3;
@end

@implementation _UISearchTextFieldPasteItem

- (void)setSearchTokenResult:(id)a3
{
  objc_storeStrong(&self->_searchTokenResult, a3);
  v5 = a3;
  v6.receiver = self;
  v6.super_class = _UISearchTextFieldPasteItem;
  [(UITextPasteItem *)&v6 setNoResult];
}

@end