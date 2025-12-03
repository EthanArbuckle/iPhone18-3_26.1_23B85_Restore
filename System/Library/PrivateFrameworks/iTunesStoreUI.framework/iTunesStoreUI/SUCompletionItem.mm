@interface SUCompletionItem
- (SUCompletionItem)initWithPropertyList:(id)list;
- (void)dealloc;
@end

@implementation SUCompletionItem

- (SUCompletionItem)initWithPropertyList:(id)list
{
  v9.receiver = self;
  v9.super_class = SUCompletionItem;
  v4 = [(SUCompletionItem *)&v9 init];
  if (v4)
  {
    v5 = [list objectForKey:@"search-field-term"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_alternateTitle = v5;
    }

    v6 = [list objectForKey:@"term"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_title = v6;
    }

    v7 = [list objectForKey:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_url = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v7];
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUCompletionItem;
  [(SUCompletionItem *)&v3 dealloc];
}

@end