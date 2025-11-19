@interface SKUIDynamicPageSectionIndexMapper
- (BOOL)getItem:(unint64_t *)a3 section:(unint64_t *)a4 forGlobalIndex:(int64_t)a5;
- (_NSRange)rangeForSectionAtIndex:(int64_t)a3;
- (id)entityIndexPathForGlobalIndex:(int64_t)a3;
- (int64_t)globalIndexForEntityIndexPath:(id)a3;
- (int64_t)numberOfSections;
- (int64_t)totalNumberOfEntities;
- (void)_loadDataIfNeeded;
- (void)dealloc;
- (void)setEntityProvider:(id)a3;
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

- (void)setEntityProvider:(id)a3
{
  v5 = a3;
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

  if (self->_entityProvider != v5)
  {
    objc_storeStrong(&self->_entityProvider, a3);
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

- (id)entityIndexPathForGlobalIndex:(int64_t)a3
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
  if ([(SKUIDynamicPageSectionIndexMapper *)self getItem:&v16 section:&v15 forGlobalIndex:a3])
  {
    v13 = [MEMORY[0x277CCAA70] indexPathForItem:v16 inSection:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)getItem:(unint64_t *)a3 section:(unint64_t *)a4 forGlobalIndex:(int64_t)a5
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
    v27 = a5 >= v23->location;
    v26 = a5 - v23->location;
    v27 = !v27 || v26 >= length;
    if (!v27)
    {
      break;
    }

    if (a5 < location)
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

  if (a3)
  {
    *a3 = v26;
  }

  if (a4)
  {
    *a4 = v22;
  }

  return 1;
}

- (int64_t)globalIndexForEntityIndexPath:(id)a3
{
  v4 = a3;
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

  v13 = [v4 section];
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if (v13 < self->_numberOfSections)
  {
    v15 = &self->_sectionIndexToEntityRange[v13];
    location = v15->location;
    length = v15->length;
    v18 = [v4 item];
    if (v18 < length)
    {
      v14 = v18 + location;
    }
  }

  return v14;
}

- (_NSRange)rangeForSectionAtIndex:(int64_t)a3
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
  if (numberOfSections > a3 && (a3 & 0x8000000000000000) == 0 && numberOfSections >= 1)
  {
    v16 = &self->_sectionIndexToEntityRange[a3];
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
      v12 = [(SKUIEntityProviding *)self->_entityProvider numberOfSections];
      self->_sectionIndexToEntityRange = malloc_type_calloc(v12, 0x10uLL, 0x1000040451B5BE8uLL);
      if (v12 < 1)
      {
LABEL_9:
        self->_numberOfSections = v12;
        return;
      }
    }

    else
    {
      v12 = 1;
      self->_sectionIndexToEntityRange = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    }

    v13 = 0;
    v14 = 0;
    for (i = 0; i != v12; ++i)
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