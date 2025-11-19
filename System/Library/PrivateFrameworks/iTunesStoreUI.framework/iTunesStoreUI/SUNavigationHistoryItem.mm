@interface SUNavigationHistoryItem
- (SUNavigationHistoryItem)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation SUNavigationHistoryItem

- (SUNavigationHistoryItem)initWithDictionary:(id)a3
{
  v10.receiver = self;
  v10.super_class = SUNavigationHistoryItem;
  v4 = [(SUNavigationHistoryItem *)&v10 init];
  if (v4)
  {
    v5 = [a3 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_title = v5;
    }

    v6 = [a3 objectForKey:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
      if (v7)
      {
        v8 = v7;
        v4->_urlRequestProperties = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:v7];
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUNavigationHistoryItem;
  [(SUNavigationHistoryItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(NSString *)self->_title copyWithZone:a3];
  v5[2] = [(SSURLRequestProperties *)self->_urlRequestProperties copyWithZone:a3];
  return v5;
}

@end