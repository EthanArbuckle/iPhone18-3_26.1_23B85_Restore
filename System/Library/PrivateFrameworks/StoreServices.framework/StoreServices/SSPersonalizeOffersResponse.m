@interface SSPersonalizeOffersResponse
- (NSArray)personalizedItems;
- (SSPersonalizeOffersResponse)initWithXPCEncoding:(id)a3;
- (id)actionDisplayNameForItemType:(id)a3;
- (id)actionParametersForItemIdentifier:(id)a3;
- (id)copyXPCEncoding;
- (id)priceDisplayForItemType:(id)a3;
- (void)_setPersonalizedItems:(id)a3;
- (void)dealloc;
- (void)setActionDisplayNameString:(id)a3 forItemType:(id)a4;
- (void)setActionParameters:(id)a3 forItemIdentifier:(id)a4;
- (void)setPriceDisplayString:(id)a3 forItemType:(id)a4;
@end

@implementation SSPersonalizeOffersResponse

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSPersonalizeOffersResponse;
  [(SSPersonalizeOffersResponse *)&v3 dealloc];
}

- (id)actionDisplayNameForItemType:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_actionDisplayNames objectForKey:a3];

  return v3;
}

- (NSArray)personalizedItems
{
  v2 = self->_items;

  return v2;
}

- (id)priceDisplayForItemType:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_priceDisplayNames objectForKey:a3];

  return v3;
}

- (id)actionParametersForItemIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_actionParameters objectForKey:a3];

  return v3;
}

- (void)setActionDisplayNameString:(id)a3 forItemType:(id)a4
{
  actionDisplayNames = self->_actionDisplayNames;
  if (actionDisplayNames)
  {
    if (a3)
    {
LABEL_3:

      [(NSMutableDictionary *)actionDisplayNames setObject:a3 forKey:a4];
      return;
    }
  }

  else
  {
    actionDisplayNames = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_actionDisplayNames = actionDisplayNames;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  [(NSMutableDictionary *)actionDisplayNames removeObjectForKey:a4];
}

- (void)setActionParameters:(id)a3 forItemIdentifier:(id)a4
{
  actionParameters = self->_actionParameters;
  if (actionParameters)
  {
    if (a3)
    {
LABEL_3:

      [(NSMutableDictionary *)actionParameters setObject:a3 forKey:a4];
      return;
    }
  }

  else
  {
    actionParameters = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_actionParameters = actionParameters;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  [(NSMutableDictionary *)actionParameters removeObjectForKey:a4];
}

- (void)setPriceDisplayString:(id)a3 forItemType:(id)a4
{
  priceDisplayNames = self->_priceDisplayNames;
  if (priceDisplayNames)
  {
    if (a3)
    {
LABEL_3:

      [(NSMutableDictionary *)priceDisplayNames setObject:a3 forKey:a4];
      return;
    }
  }

  else
  {
    priceDisplayNames = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_priceDisplayNames = priceDisplayNames;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  [(NSMutableDictionary *)priceDisplayNames removeObjectForKey:a4];
}

- (void)_setPersonalizedItems:(id)a3
{
  items = self->_items;
  if (items != a3)
  {

    self->_items = [a3 copy];
  }
}

- (SSPersonalizeOffersResponse)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v10.receiver = self;
    v10.super_class = SSPersonalizeOffersResponse;
    v5 = [(SSPersonalizeOffersResponse *)&v10 init];
    if (v5)
    {
      objc_opt_class();
      v7 = SSXPCDictionaryCopyCFObjectWithClass(a3, "0");
      v5->_actionDisplayNames = [(__CFArray *)v7 mutableCopy];

      objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(a3, "1");
      v5->_actionParameters = [(__CFArray *)v8 mutableCopy];

      objc_opt_class();
      v9 = SSXPCDictionaryCopyCFObjectWithClass(a3, "2");
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