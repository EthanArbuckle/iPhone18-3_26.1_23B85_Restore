@interface WBSStartPageSuggestionsManager
- (void)_updateDefaultStartPageVisibleProviders;
@end

@implementation WBSStartPageSuggestionsManager

- (void)_updateDefaultStartPageVisibleProviders
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(WBSStartPageSectionManager *)self->_sectionManager suggestionsDataSourceSections];
  v4 = [v3 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_60];

  v5 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_providers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 providerSectionIdentifier];
        v13 = [v4 containsObject:v12];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  defaultStartPageVisibleProviders = self->_defaultStartPageVisibleProviders;
  self->_defaultStartPageVisibleProviders = v14;
}

id __73__WBSStartPageSuggestionsManager__updateDefaultStartPageVisibleProviders__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEnabled])
  {
    v3 = [v2 identifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end