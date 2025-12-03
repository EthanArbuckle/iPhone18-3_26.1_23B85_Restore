@interface SUPageSection
- (BOOL)isEqual:(id)equal;
- (BOOL)loadFromDictionary:(id)dictionary;
- (SUPageSection)init;
- (id)segmentedControlItem;
- (void)_setURL:(id)l;
- (void)_setURLBagKey:(id)key;
- (void)dealloc;
- (void)setURLRequestProperties:(id)properties;
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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  identifier = [(SUPageSection *)self identifier];
  identifier2 = [equal identifier];
  if (isKindOfClass)
  {
    v8 = identifier == identifier2 || [(NSString *)identifier isEqualToString:identifier2];
  }

  else
  {
    v8 = 0;
  }

  title = [(SUPageSection *)self title];
  title2 = [equal title];
  if (!v8)
  {
    return 0;
  }

  v11 = title2;
  if (title != title2 && ![(NSString *)title isEqualToString:title2])
  {
    return 0;
  }

  uRLRequestProperties = [(SUPageSection *)self URLRequestProperties];
  uRLRequestProperties2 = [equal URLRequestProperties];

  return [(SSURLRequestProperties *)uRLRequestProperties isEqual:uRLRequestProperties2];
}

- (BOOL)loadFromDictionary:(id)dictionary
{
  v4 = [objc_alloc(MEMORY[0x1E69D4990]) initWithDictionary:dictionary];
  dictionaryByEvaluatingConditions = [v4 dictionaryByEvaluatingConditions];

  v6 = [dictionaryByEvaluatingConditions objectForKey:@"template-name"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUPageSection *)self setStructuredPageType:[SUStructuredPage pageTypeForStorePageString:v6]];
  }

  v7 = [dictionaryByEvaluatingConditions objectForKey:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUPageSection *)self setTitle:v7];
  }

  v8 = [dictionaryByEvaluatingConditions objectForKey:@"url-bag-key"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUPageSection *)self _setURLBagKey:v8];
  }

  v9 = [dictionaryByEvaluatingConditions objectForKey:@"url"];
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

- (void)setURLRequestProperties:(id)properties
{
  urlRequestProperties = self->_urlRequestProperties;
  if (urlRequestProperties != properties)
  {

    self->_urlRequestProperties = [properties mutableCopy];
  }
}

- (void)_setURL:(id)l
{
  urlRequestProperties = self->_urlRequestProperties;
  if (!urlRequestProperties)
  {
    urlRequestProperties = objc_alloc_init(MEMORY[0x1E69D4970]);
    self->_urlRequestProperties = urlRequestProperties;
  }

  [(SSMutableURLRequestProperties *)urlRequestProperties setURL:l];
}

- (void)_setURLBagKey:(id)key
{
  urlRequestProperties = self->_urlRequestProperties;
  if (!urlRequestProperties)
  {
    urlRequestProperties = objc_alloc_init(MEMORY[0x1E69D4970]);
    self->_urlRequestProperties = urlRequestProperties;
  }

  [(SSMutableURLRequestProperties *)urlRequestProperties setURLBagKey:key];
}

@end