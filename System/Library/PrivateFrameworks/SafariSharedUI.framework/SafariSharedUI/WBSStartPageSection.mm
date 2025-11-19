@interface WBSStartPageSection
- (id)siteIconConfigurationProvider;
- (int64_t)effectiveItemIdentifiersCount;
- (int64_t)numberOfRowsVisibleWhenCollapsedInCompactWidth;
@end

@implementation WBSStartPageSection

- (int64_t)numberOfRowsVisibleWhenCollapsedInCompactWidth
{
  result = self->_numberOfRowsVisibleWhenCollapsedInCompactWidth;
  if (!result)
  {
    return self->_numberOfRowsVisibleWhenCollapsed;
  }

  return result;
}

- (id)siteIconConfigurationProvider
{
  v2 = _Block_copy(self->_configurationProvider);

  return v2;
}

- (int64_t)effectiveItemIdentifiersCount
{
  result = [(NSArray *)self->_itemIdentifiers count];
  if (self->_supplementaryAction)
  {
    ++result;
  }

  return result;
}

- (void)initWithIdentifier:(uint64_t)a1 title:(NSObject *)a2 actions:banner:itemType:itemIdentifiers:configurationProvider:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C6968000, a2, OS_LOG_TYPE_ERROR, "%@ section has duplicate item identifiers.", &v2, 0xCu);
}

@end