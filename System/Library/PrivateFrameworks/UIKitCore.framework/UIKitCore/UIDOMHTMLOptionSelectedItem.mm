@interface UIDOMHTMLOptionSelectedItem
- (UIDOMHTMLOptionSelectedItem)initWithHTMLOptionNode:(id)a3;
- (void)dealloc;
@end

@implementation UIDOMHTMLOptionSelectedItem

- (UIDOMHTMLOptionSelectedItem)initWithHTMLOptionNode:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIDOMHTMLOptionSelectedItem;
  v4 = [(UIDOMHTMLOptionSelectedItem *)&v6 init];
  if (v4)
  {
    v4->_selected = [a3 selected];
    [(UIDOMHTMLOptionSelectedItem *)v4 set_node:a3];
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