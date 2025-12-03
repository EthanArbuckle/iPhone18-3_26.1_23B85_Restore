@interface SKUIStorePage
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueForPageKey:(id)key;
- (void)setPageComponents:(id)components;
- (void)setValue:(id)value forPageKey:(id)key;
@end

@implementation SKUIStorePage

- (void)setPageComponents:(id)components
{
  v28 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStorePage *)v5 setPageComponents:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_pageComponents != componentsCopy)
  {
    v13 = objc_alloc_init(MEMORY[0x277CCA940]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = componentsCopy;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          metricsElementName = [v19 metricsElementName];
          if (metricsElementName)
          {
            [v19 _setMetricsLocationPosition:{objc_msgSend(v13, "countForObject:", metricsElementName)}];
            [v13 addObject:metricsElementName];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }

    v21 = [(NSArray *)v14 copy];
    pageComponents = self->_pageComponents;
    self->_pageComponents = v21;
  }
}

- (void)setValue:(id)value forPageKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIStorePage *)v8 setValue:v9 forPageKey:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  values = self->_values;
  if (valueCopy)
  {
    if (!values)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v18 = self->_values;
      self->_values = v17;

      values = self->_values;
    }

    [(NSMutableDictionary *)values setObject:valueCopy forKey:keyCopy];
  }

  else
  {
    [(NSMutableDictionary *)values removeObjectForKey:keyCopy];
  }
}

- (id)valueForPageKey:(id)key
{
  keyCopy = key;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStorePage *)v5 valueForPageKey:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(NSMutableDictionary *)self->_values objectForKey:keyCopy];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStorePage *)v5 copyWithZone:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v13 setBackgroundArtwork:self->_backgroundArtwork];
  [v13 setITMLData:self->_itmlData];
  [v13 setITMLResponse:self->_itmlResponse];
  [v13 setMetricsConfiguration:self->_metricsConfiguration];
  [v13 setMetricsPageDescription:self->_metricsPageDescription];
  v14 = [(NSArray *)self->_pageComponents copyWithZone:zone];
  v15 = v13[6];
  v13[6] = v14;

  [v13 setPageType:self->_pageType];
  [v13 setPageURL:self->_pageURL];
  [v13 setProductPage:self->_productPage];
  [v13 setTitle:self->_title];
  [v13 setUber:self->_uber];
  v16 = [(NSMutableDictionary *)self->_values mutableCopyWithZone:zone];
  v17 = v13[12];
  v13[12] = v16;

  return v13;
}

@end