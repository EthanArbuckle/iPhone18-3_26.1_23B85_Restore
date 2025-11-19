@interface SUPageSection
- (BOOL)isEqual:(id)a3;
- (BOOL)loadFromDictionary:(id)a3;
- (SUPageSection)init;
- (id)segmentedControlItem;
- (void)_setURL:(id)a3;
- (void)_setURLBagKey:(id)a3;
- (void)dealloc;
- (void)setURLRequestProperties:(id)a3;
@end

@implementation SUPageSection

- (SUPageSection)init
{
  v3.receiver = self;
  v3.super_class = SUPageSection;
  result = [(SUPageSection *)&v3 init];
  if (result)
  {
    result->_expirationTime = 1.79769313e308;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUPageSection;
  [(SUPageSection *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = [(SUPageSection *)self identifier];
  v7 = [a3 identifier];
  if (isKindOfClass)
  {
    v8 = v6 == v7 || [(NSString *)v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SUPageSection *)self title];
  v10 = [a3 title];
  if (!v8)
  {
    return 0;
  }

  v11 = v10;
  if (v9 != v10 && ![(NSString *)v9 isEqualToString:v10])
  {
    return 0;
  }

  v12 = [(SUPageSection *)self URLRequestProperties];
  v13 = [a3 URLRequestProperties];

  return [(SSURLRequestProperties *)v12 isEqual:v13];
}

- (BOOL)loadFromDictionary:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x1E69D4990]) initWithDictionary:a3];
  v5 = [v4 dictionaryByEvaluatingConditions];

  v6 = [v5 objectForKey:@"template-name"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUPageSection *)self setStructuredPageType:[SUStructuredPage pageTypeForStorePageString:v6]];
  }

  v7 = [v5 objectForKey:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUPageSection *)self setTitle:v7];
  }

  v8 = [v5 objectForKey:@"url-bag-key"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUPageSection *)self _setURLBagKey:v8];
  }

  v9 = [v5 objectForKey:@"url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v9];
    if (v10)
    {
      v11 = v10;
      [(SUPageSection *)self _setURL:v10];
    }
  }

  v12 = [(NSString *)[(SUPageSection *)self title] length];
  if (v12)
  {
    LOBYTE(v12) = (self->_urlRequestProperties | v6) != 0;
  }

  return v12;
}

- (id)segmentedControlItem
{
  result = self->_image;
  if (!result)
  {
    return self->_title;
  }

  return result;
}

- (void)setURLRequestProperties:(id)a3
{
  urlRequestProperties = self->_urlRequestProperties;
  if (urlRequestProperties != a3)
  {

    self->_urlRequestProperties = [a3 mutableCopy];
  }
}

- (void)_setURL:(id)a3
{
  urlRequestProperties = self->_urlRequestProperties;
  if (!urlRequestProperties)
  {
    urlRequestProperties = objc_alloc_init(MEMORY[0x1E69D4970]);
    self->_urlRequestProperties = urlRequestProperties;
  }

  [(SSMutableURLRequestProperties *)urlRequestProperties setURL:a3];
}

- (void)_setURLBagKey:(id)a3
{
  urlRequestProperties = self->_urlRequestProperties;
  if (!urlRequestProperties)
  {
    urlRequestProperties = objc_alloc_init(MEMORY[0x1E69D4970]);
    self->_urlRequestProperties = urlRequestProperties;
  }

  [(SSMutableURLRequestProperties *)urlRequestProperties setURLBagKey:a3];
}

@end