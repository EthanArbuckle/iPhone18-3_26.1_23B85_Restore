@interface SUNavigationMenuItem
- (SUNavigationMenuItem)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation SUNavigationMenuItem

- (SUNavigationMenuItem)initWithDictionary:(id)dictionary
{
  v9.receiver = self;
  v9.super_class = SUNavigationMenuItem;
  v4 = [(SUNavigationMenuItem *)&v9 init];
  if (v4)
  {
    v5 = [dictionary objectForKey:@"rating"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v4->_contentRating = [[SUItemContentRating alloc] initWithDictionary:v5];
    }

    v6 = [dictionary objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_title = v6;
    }

    v7 = [dictionary objectForKey:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_url = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v7];
    }

    if (![(NSString *)v4->_title length]|| !v4->_url)
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUNavigationMenuItem;
  [(SUNavigationMenuItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v5[1] = [(SUItemContentRating *)self->_contentRating copyWithZone:zone];
  v5[2] = [(NSString *)self->_title copyWithZone:zone];
  v5[3] = [(NSURL *)self->_url copyWithZone:zone];
  return v5;
}

@end