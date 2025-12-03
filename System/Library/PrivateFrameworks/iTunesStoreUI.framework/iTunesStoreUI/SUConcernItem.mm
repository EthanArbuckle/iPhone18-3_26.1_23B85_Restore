@interface SUConcernItem
- (SUConcernItem)initWithDictionary:(id)dictionary;
- (void)dealloc;
@end

@implementation SUConcernItem

- (SUConcernItem)initWithDictionary:(id)dictionary
{
  v4 = [(SUConcernItem *)self init];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [dictionary objectForKey:@"default"];
      if (objc_opt_respondsToSelector())
      {
        bOOLValue = [v5 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      [(SUConcernItem *)v4 setDefaultConcern:bOOLValue];
      v7 = [dictionary objectForKey:@"problem-id"];
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
      v9 = [dictionary objectForKey:@"title"];
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