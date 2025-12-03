@interface UIDOMHTMLOptionSelectedItem
- (UIDOMHTMLOptionSelectedItem)initWithHTMLOptionNode:(id)node;
- (void)dealloc;
@end

@implementation UIDOMHTMLOptionSelectedItem

- (UIDOMHTMLOptionSelectedItem)initWithHTMLOptionNode:(id)node
{
  v6.receiver = self;
  v6.super_class = UIDOMHTMLOptionSelectedItem;
  v4 = [(UIDOMHTMLOptionSelectedItem *)&v6 init];
  if (v4)
  {
    v4->_selected = [node selected];
    [(UIDOMHTMLOptionSelectedItem *)v4 set_node:node];
  }

  return v4;
}

- (void)dealloc
{
  [(UIDOMHTMLOptionSelectedItem *)self set_node:0];
  v3.receiver = self;
  v3.super_class = UIDOMHTMLOptionSelectedItem;
  [(UIDOMHTMLOptionSelectedItem *)&v3 dealloc];
}

@end