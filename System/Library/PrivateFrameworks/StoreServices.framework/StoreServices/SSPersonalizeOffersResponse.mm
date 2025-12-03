@interface SSPersonalizeOffersResponse
- (NSArray)personalizedItems;
- (SSPersonalizeOffersResponse)initWithXPCEncoding:(id)encoding;
- (id)actionDisplayNameForItemType:(id)type;
- (id)actionParametersForItemIdentifier:(id)identifier;
- (id)copyXPCEncoding;
- (id)priceDisplayForItemType:(id)type;
- (void)_setPersonalizedItems:(id)items;
- (void)dealloc;
- (void)setActionDisplayNameString:(id)string forItemType:(id)type;
- (void)setActionParameters:(id)parameters forItemIdentifier:(id)identifier;
- (void)setPriceDisplayString:(id)string forItemType:(id)type;
@end

@implementation SSPersonalizeOffersResponse

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSPersonalizeOffersResponse;
  [(SSPersonalizeOffersResponse *)&v3 dealloc];
}

- (id)actionDisplayNameForItemType:(id)type
{
  v3 = [(NSMutableDictionary *)self->_actionDisplayNames objectForKey:type];

  return v3;
}

- (NSArray)personalizedItems
{
  v2 = self->_items;

  return v2;
}

- (id)priceDisplayForItemType:(id)type
{
  v3 = [(NSMutableDictionary *)self->_priceDisplayNames objectForKey:type];

  return v3;
}

- (id)actionParametersForItemIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_actionParameters objectForKey:identifier];

  return v3;
}

- (void)setActionDisplayNameString:(id)string forItemType:(id)type
{
  actionDisplayNames = self->_actionDisplayNames;
  if (actionDisplayNames)
  {
    if (string)
    {
LABEL_3:

      [(NSMutableDictionary *)actionDisplayNames setObject:string forKey:type];
      return;
    }
  }

  else
  {
    actionDisplayNames = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_actionDisplayNames = actionDisplayNames;
    if (string)
    {
      goto LABEL_3;
    }
  }

  [(NSMutableDictionary *)actionDisplayNames removeObjectForKey:type];
}

- (void)setActionParameters:(id)parameters forItemIdentifier:(id)identifier
{
  actionParameters = self->_actionParameters;
  if (actionParameters)
  {
    if (parameters)
    {
LABEL_3:

      [(NSMutableDictionary *)actionParameters setObject:parameters forKey:identifier];
      return;
    }
  }

  else
  {
    actionParameters = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_actionParameters = actionParameters;
    if (parameters)
    {
      goto LABEL_3;
    }
  }

  [(NSMutableDictionary *)actionParameters removeObjectForKey:identifier];
}

- (void)setPriceDisplayString:(id)string forItemType:(id)type
{
  priceDisplayNames = self->_priceDisplayNames;
  if (priceDisplayNames)
  {
    if (string)
    {
LABEL_3:

      [(NSMutableDictionary *)priceDisplayNames setObject:string forKey:type];
      return;
    }
  }

  else
  {
    priceDisplayNames = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_priceDisplayNames = priceDisplayNames;
    if (string)
    {
      goto LABEL_3;
    }
  }

  [(NSMutableDictionary *)priceDisplayNames removeObjectForKey:type];
}

- (void)_setPersonalizedItems:(id)items
{
  items = self->_items;
  if (items != items)
  {

    self->_items = [items copy];
  }
}

- (SSPersonalizeOffersResponse)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v10.receiver = self;
    v10.super_class = SSPersonalizeOffersResponse;
    v5 = [(SSPersonalizeOffersResponse *)&v10 init];
    if (v5)
    {
      objc_opt_class();
      v7 = SSXPCDictionaryCopyCFObjectWithClass(encoding, "0");
      v5->_actionDisplayNames = [(__CFArray *)v7 mutableCopy];

      objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(encoding, "1");
      v5->_actionParameters = [(__CFArray *)v8 mutableCopy];

      objc_opt_class();
      v9 = SSXPCDictionaryCopyCFObjectWithClass(encoding, "2");
      v5->_priceDisplayNames = [(__CFArray *)v9 mutableCopy];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_actionDisplayNames);
  SSXPCDictionarySetCFObject(v3, "1", self->_actionParameters);
  SSXPCDictionarySetCFObject(v3, "2", self->_priceDisplayNames);
  return v3;
}

@end