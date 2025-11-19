@interface SKUICompletion
- (NSMutableDictionary)cacheRepresentation;
- (SKUICompletion)initWithCacheRepresentation:(id)a3;
- (SKUICompletion)initWithCompletionDictionary:(id)a3;
@end

@implementation SKUICompletion

- (SKUICompletion)initWithCompletionDictionary:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICompletion *)v5 initWithCompletionDictionary:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v24.receiver = self;
  v24.super_class = SKUICompletion;
  v13 = [(SKUICompletion *)&v24 init];
  if (v13)
  {
    v14 = [v4 objectForKey:@"term"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      title = v13->_title;
      v13->_title = v15;
    }

    v17 = [v4 objectForKey:@"search-field-term"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      alternateTitle = v13->_alternateTitle;
      v13->_alternateTitle = v18;
    }

    v20 = [v4 objectForKey:@"url"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      URLString = v13->_URLString;
      v13->_URLString = v21;
    }
  }

  return v13;
}

- (SKUICompletion)initWithCacheRepresentation:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICompletion *)v5 initWithCacheRepresentation:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v23.receiver = self;
  v23.super_class = SKUICompletion;
  v13 = [(SKUICompletion *)&v23 init];
  if (v13)
  {
    v14 = [v4 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      title = v13->_title;
      v13->_title = v15;
    }

    v17 = [v4 objectForKey:@"alttitle"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      alternateTitle = v13->_alternateTitle;
      v13->_alternateTitle = v18;
    }

    self = [v4 objectForKey:@"url"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [(SKUICompletion *)self copy];
      URLString = v13->_URLString;
      v13->_URLString = v20;
    }

    goto LABEL_14;
  }

LABEL_15:

  return v13;
}

- (NSMutableDictionary)cacheRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  alternateTitle = self->_alternateTitle;
  if (alternateTitle)
  {
    [v4 setObject:alternateTitle forKey:@"alttitle"];
  }

  URLString = self->_URLString;
  if (URLString)
  {
    [v4 setObject:URLString forKey:@"url"];
  }

  return v4;
}

@end