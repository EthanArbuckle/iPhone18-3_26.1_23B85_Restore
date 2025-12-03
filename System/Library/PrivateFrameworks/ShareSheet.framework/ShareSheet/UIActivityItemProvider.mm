@interface UIActivityItemProvider
- (UIActivityItemProvider)init;
- (UIActivityItemProvider)initWithPlaceholderItem:(id)placeholderItem;
- (void)main;
@end

@implementation UIActivityItemProvider

- (UIActivityItemProvider)init
{
  v3.receiver = self;
  v3.super_class = UIActivityItemProvider;
  return [(UIActivityItemProvider *)&v3 init];
}

- (UIActivityItemProvider)initWithPlaceholderItem:(id)placeholderItem
{
  v4 = placeholderItem;
  v8.receiver = self;
  v8.super_class = UIActivityItemProvider;
  v5 = [(UIActivityItemProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIActivityItemProvider *)v5 setPlaceholderItem:v4];
    [(UIActivityItemProvider *)v6 setProvidedItem:v4];
  }

  return v6;
}

- (void)main
{
  item = [(UIActivityItemProvider *)self item];
  [(UIActivityItemProvider *)self setProvidedItem:item];
}

@end