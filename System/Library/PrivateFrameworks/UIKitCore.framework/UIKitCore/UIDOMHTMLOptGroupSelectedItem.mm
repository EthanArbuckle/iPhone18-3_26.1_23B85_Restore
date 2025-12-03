@interface UIDOMHTMLOptGroupSelectedItem
- (UIDOMHTMLOptGroupSelectedItem)initWithHTMLOptGroupNode:(id)node;
- (void)dealloc;
@end

@implementation UIDOMHTMLOptGroupSelectedItem

- (UIDOMHTMLOptGroupSelectedItem)initWithHTMLOptGroupNode:(id)node
{
  v7.receiver = self;
  v7.super_class = UIDOMHTMLOptGroupSelectedItem;
  v4 = [(UIDOMHTMLOptGroupSelectedItem *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(UIDOMHTMLOptGroupSelectedItem *)v4 set_node:node];
  }

  return v5;
}

- (void)dealloc
{
  [(UIDOMHTMLOptGroupSelectedItem *)self set_node:0];
  v3.receiver = self;
  v3.super_class = UIDOMHTMLOptGroupSelectedItem;
  [(UIDOMHTMLOptGroupSelectedItem *)&v3 dealloc];
}

@end