@interface RUIHTMLHeaderElement
- (void)configureView:(id)a3;
@end

@implementation RUIHTMLHeaderElement

- (void)configureView:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
    v5 = [(RUIElement *)self sourceURL];
    [v4 setBaseURL:v5];

    v6 = [(RUIHTMLHeaderElement *)self HTMLContent];
    [v4 setText:v6 attributes:0];
  }
}

@end