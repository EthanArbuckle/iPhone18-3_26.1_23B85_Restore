@interface SUConcernItem
- (SUConcernItem)initWithDictionary:(id)a3;
- (void)dealloc;
@end

@implementation SUConcernItem

- (SUConcernItem)initWithDictionary:(id)a3
{
  v4 = [(SUConcernItem *)self init];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a3 objectForKey:@"default"];
      if (objc_opt_respondsToSelector())
      {
        v6 = [v5 BOOLValue];
      }

      else
      {
        v6 = 0;
      }

      [(SUConcernItem *)v4 setDefaultConcern:v6];
      v7 = [a3 objectForKey:@"problem-id"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      [(SUConcernItem *)v4 setIdentifier:v8];
      v9 = [a3 objectForKey:@"title"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      [(SUConcernItem *)v4 setTitle:v10];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  self->_identifier = 0;

  self->_title = 0;
  v3.receiver = self;
  v3.super_class = SUConcernItem;
  [(SUConcernItem *)&v3 dealloc];
}

@end