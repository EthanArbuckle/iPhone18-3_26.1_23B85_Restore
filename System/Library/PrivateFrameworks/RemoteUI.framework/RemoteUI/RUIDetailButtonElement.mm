@interface RUIDetailButtonElement
- (RUIDetailButtonElement)initWithAttributes:(id)attributes parent:(id)parent;
- (void)startActivityIndicator;
- (void)stopActivityIndicator;
@end

@implementation RUIDetailButtonElement

- (RUIDetailButtonElement)initWithAttributes:(id)attributes parent:(id)parent
{
  v14.receiver = self;
  v14.super_class = RUIDetailButtonElement;
  v4 = [(RUIElement *)&v14 initWithAttributes:attributes parent:parent];
  v5 = v4;
  if (v4)
  {
    attributes = [(RUIElement *)v4 attributes];
    v7 = [attributes objectForKeyedSubscript:@"visibility"];
    v8 = [v7 isEqualToString:@"editing"];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      attributes2 = [(RUIElement *)v5 attributes];
      v11 = [attributes2 objectForKeyedSubscript:@"visibility"];
      v12 = [v11 isEqualToString:@"notEditing"];

      if (v12)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }
    }

    [(RUIDetailButtonElement *)v5 setVisibility:v9];
  }

  return v5;
}

- (void)startActivityIndicator
{
  parent = [(RUIElement *)self parent];
  [parent startActivityIndicator];
}

- (void)stopActivityIndicator
{
  parent = [(RUIElement *)self parent];
  [parent stopActivityIndicator];
}

@end