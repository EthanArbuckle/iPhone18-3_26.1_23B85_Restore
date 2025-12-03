@interface SKUILink
- (NSDictionary)linkDictionary;
- (SKUILink)initWithComponentContext:(id)context;
- (SKUILink)initWithLinkDictionary:(id)dictionary;
- (SKUILink)initWithURL:(id)l title:(id)title targetString:(id)string;
- (id)valueForMetricsField:(id)field;
- (void)_setItem:(id)item;
@end

@implementation SKUILink

- (SKUILink)initWithLinkDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUILink *)v5 initWithLinkDictionary:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v24.receiver = self;
  v24.super_class = SKUILink;
  v13 = [(SKUILink *)&v24 init];
  if (v13)
  {
    v14 = [dictionaryCopy objectForKey:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      title = v13->_title;
      v13->_title = v15;
    }

    v17 = [dictionaryCopy objectForKey:@"url"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [MEMORY[0x277CBEBC0] URLWithString:v17];
      url = v13->_url;
      v13->_url = v18;
    }

    v20 = [dictionaryCopy objectForKey:@"target"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      target = v13->_target;
      v13->_target = v21;
    }
  }

  return v13;
}

- (SKUILink)initWithComponentContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUILink *)v5 initWithComponentContext:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v32.receiver = self;
  v32.super_class = SKUILink;
  v13 = [(SKUILink *)&v32 init];
  if (v13)
  {
    componentDictionary = [contextCopy componentDictionary];
    v15 = [componentDictionary objectForKey:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      title = v13->_title;
      v13->_title = v16;
    }

    v18 = [componentDictionary objectForKey:@"url"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [MEMORY[0x277CBEBC0] URLWithString:v18];
      url = v13->_url;
      v13->_url = v19;
    }

    v21 = [componentDictionary objectForKey:@"lockupData"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[SKUIItem alloc] initWithLookupDictionary:v21];
      v23 = 16;
      v24 = v21;
    }

    else
    {
      v24 = [componentDictionary objectForKey:@"adamId"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_16;
      }

      v26 = [contextCopy itemForItemIdentifier:v24];
      item = v13->_item;
      v13->_item = v26;

      if (v13->_item || ([contextCopy isUnavailableItemIdentifier:v24] & 1) != 0)
      {
        goto LABEL_16;
      }

      v22 = [v24 copy];
      v23 = 24;
    }

    v25 = *(&v13->super.isa + v23);
    *(&v13->super.isa + v23) = v22;

LABEL_16:
    v28 = [componentDictionary objectForKey:@"target"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      target = v13->_target;
      v13->_target = v29;
    }
  }

  return v13;
}

- (SKUILink)initWithURL:(id)l title:(id)title targetString:(id)string
{
  lCopy = l;
  titleCopy = title;
  stringCopy = string;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v11)
      {
        [(SKUILink *)v11 initWithURL:v12 title:v13 targetString:v14, v15, v16, v17, v18];
      }
    }
  }

  v27.receiver = self;
  v27.super_class = SKUILink;
  v19 = [(SKUILink *)&v27 init];
  if (v19)
  {
    v20 = [stringCopy copy];
    target = v19->_target;
    v19->_target = v20;

    v22 = [titleCopy copy];
    title = v19->_title;
    v19->_title = v22;

    v24 = [lCopy copy];
    url = v19->_url;
    v19->_url = v24;
  }

  return v19;
}

- (NSDictionary)linkDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  target = self->_target;
  if (target)
  {
    [dictionary setObject:target forKey:@"target"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"label"];
  }

  url = self->_url;
  if (url)
  {
    absoluteString = [(NSURL *)url absoluteString];
    [v4 setObject:absoluteString forKey:@"url"];
  }

  return v4;
}

- (id)valueForMetricsField:(id)field
{
  fieldCopy = field;
  if ([fieldCopy isEqualToString:*MEMORY[0x277D6A490]])
  {
    item = self->_item;
    if (item)
    {
      title = [MEMORY[0x277CCABB0] numberWithLongLong:{-[SKUIItem itemIdentifier](item, "itemIdentifier")}];
    }

    else
    {
      title = self->_itemIdentifier;
    }

    goto LABEL_8;
  }

  if (([fieldCopy isEqualToString:*MEMORY[0x277D6A4A0]] & 1) != 0 || objc_msgSend(fieldCopy, "isEqualToString:", *MEMORY[0x277D6A4A8]))
  {
    title = [(SKUILink *)self title];
LABEL_8:
    v7 = title;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)_setItem:(id)item
{
  itemCopy = item;
  item = self->_item;
  p_item = &self->_item;
  if (item != itemCopy)
  {
    v8 = itemCopy;
    objc_storeStrong(p_item, item);
    itemCopy = v8;
  }
}

@end