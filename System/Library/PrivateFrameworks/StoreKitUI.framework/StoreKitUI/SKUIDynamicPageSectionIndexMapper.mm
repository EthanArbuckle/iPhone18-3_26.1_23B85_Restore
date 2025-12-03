@interface SKUIDynamicPageSectionIndexMapper
- (BOOL)getItem:(unint64_t *)item section:(unint64_t *)section forGlobalIndex:(int64_t)index;
- (_NSRange)rangeForSectionAtIndex:(int64_t)index;
- (id)entityIndexPathForGlobalIndex:(int64_t)index;
- (int64_t)globalIndexForEntityIndexPath:(id)path;
- (int64_t)numberOfSections;
- (int64_t)totalNumberOfEntities;
- (void)_loadDataIfNeeded;
- (void)dealloc;
- (void)setEntityProvider:(id)provider;
@end

@implementation SKUIDynamicPageSectionIndexMapper

- (void)dealloc
{
  sectionIndexToEntityRange = self->_sectionIndexToEntityRange;
  if (sectionIndexToEntityRange)
  {
    free(sectionIndexToEntityRange);
    self->_sectionIndexToEntityRange = 0;
  }

  v4.receiver = self;
  v4.super_class = SKUIDynamicPageSectionIndexMapper;
  [(SKUIDynamicPageSectionIndexMapper *)&v4 dealloc];
}

- (int64_t)numberOfSections
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIDynamicPageSectionIndexMapper *)v3 numberOfSections:v4];
      }
    }
  }

  [(SKUIDynamicPageSectionIndexMapper *)self _loadDataIfNeeded];
  return self->_numberOfSections;
}

- (void)setEntityProvider:(id)provider
{
  providerCopy = provider;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIDynamicPageSectionIndexMapper *)v6 setEntityProvider:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_entityProvider != providerCopy)
  {
    objc_storeStrong(&self->_entityProvider, provider);
    *&self->_entityProviderFlags = *&self->_entityProviderFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    self->_numberOfSections = -1;
  }
}

- (int64_t)totalNumberOfEntities
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIDynamicPageSectionIndexMapper *)v3 totalNumberOfEntities:v4];
      }
    }
  }

  [(SKUIDynamicPageSectionIndexMapper *)self _loadDataIfNeeded];
  numberOfSections = self->_numberOfSections;
  if (numberOfSections >= 1 && (sectionIndexToEntityRange = self->_sectionIndexToEntityRange) != 0)
  {
    return sectionIndexToEntityRange[numberOfSections - 1].length + sectionIndexToEntityRange[numberOfSections - 1].location;
  }

  else
  {
    return 0;
  }
}

- (id)entityIndexPathForGlobalIndex:(int64_t)index
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIDynamicPageSectionIndexMapper *)v5 entityIndexPathForGlobalIndex:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUIDynamicPageSectionIndexMapper *)self _loadDataIfNeeded];
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(SKUIDynamicPageSectionIndexMapper *)self getItem:&v16 section:&v15 forGlobalIndex:index])
  {
    v13 = [MEMORY[0x277CCAA70] indexPathForItem:v16 inSection:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)getItem:(unint64_t *)item section:(unint64_t *)section forGlobalIndex:(int64_t)index
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIDynamicPageSectionIndexMapper *)v9 getItem:v10 section:v11 forGlobalIndex:v12, v13, v14, v15, v16];
      }
    }
  }

  [(SKUIDynamicPageSectionIndexMapper *)self _loadDataIfNeeded];
  numberOfSections = self->_numberOfSections;
  v18 = numberOfSections < 1;
  v19 = numberOfSections - 1;
  if (v18)
  {
    return 0;
  }

  sectionIndexToEntityRange = self->_sectionIndexToEntityRange;
  if (!sectionIndexToEntityRange)
  {
    return 0;
  }

  v21 = 0;
  while (1)
  {
    v22 = (v19 + v21) >> 1;
    v23 = &sectionIndexToEntityRange[v22];
    location = v23->location;
    length = v23->length;
    v27 = index >= v23->location;
    v26 = index - v23->location;
    v27 = !v27 || v26 >= length;
    if (!v27)
    {
      break;
    }

    if (index < location)
    {
      v19 = v22 - 1;
    }

    else
    {
      v21 = v22 + 1;
    }

    if (v19 < v21)
    {
      return 0;
    }
  }

  if (item)
  {
    *item = v26;
  }

  if (section)
  {
    *section = v22;
  }

  return 1;
}

- (int64_t)globalIndexForEntityIndexPath:(id)path
{
  pathCopy = path;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIDynamicPageSectionIndexMapper *)v5 globalIndexForEntityIndexPath:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  section = [pathCopy section];
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if (section < self->_numberOfSections)
  {
    v15 = &self->_sectionIndexToEntityRange[section];
    location = v15->location;
    length = v15->length;
    item = [pathCopy item];
    if (item < length)
    {
      v14 = item + location;
    }
  }

  return v14;
}

- (_NSRange)rangeForSectionAtIndex:(int64_t)index
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIDynamicPageSectionIndexMapper *)v5 rangeForSectionAtIndex:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUIDynamicPageSectionIndexMapper *)self _loadDataIfNeeded];
  length = 0;
  numberOfSections = self->_numberOfSections;
  location = 0x7FFFFFFFFFFFFFFFLL;
  if (numberOfSections > index && (index & 0x8000000000000000) == 0 && numberOfSections >= 1)
  {
    v16 = &self->_sectionIndexToEntityRange[index];
    location = v16->location;
    length = v16->length;
  }

  result.length = length;
  result.location = location;
  return result;
}

- (void)_loadDataIfNeeded
{
  if (self->_numberOfSections < 0)
  {
    v18 = v7;
    v19 = v6;
    v20 = v5;
    v21 = v4;
    v22 = v3;
    v23 = v2;
    v24 = v8;
    v25 = v9;
    sectionIndexToEntityRange = self->_sectionIndexToEntityRange;
    if (sectionIndexToEntityRange)
    {
      free(sectionIndexToEntityRange);
    }

    if (*&self->_entityProviderFlags)
    {
      numberOfSections = [(SKUIEntityProviding *)self->_entityProvider numberOfSections];
      self->_sectionIndexToEntityRange = malloc_type_calloc(numberOfSections, 0x10uLL, 0x1000040451B5BE8uLL);
      if (numberOfSections < 1)
      {
LABEL_9:
        self->_numberOfSections = numberOfSections;
        return;
      }
    }

    else
    {
      numberOfSections = 1;
      self->_sectionIndexToEntityRange = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    }

    v13 = 0;
    v14 = 0;
    for (i = 0; i != numberOfSections; ++i)
    {
      v16 = [(SKUIEntityProviding *)self->_entityProvider numberOfEntitiesInSection:i, v18, v19, v20, v21, v22, v23, v24, v25];
      v17 = &self->_sectionIndexToEntityRange[v13];
      v17->location = v14;
      v17->length = v16;
      v14 += v16;
      ++v13;
    }

    goto LABEL_9;
  }
}

@end