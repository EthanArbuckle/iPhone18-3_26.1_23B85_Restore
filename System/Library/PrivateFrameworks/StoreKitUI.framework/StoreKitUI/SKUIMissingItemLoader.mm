@interface SKUIMissingItemLoader
- (SKUIMissingItemDelegate)delegate;
- (SKUIMissingItemLoader)initWithResourceLoader:(id)loader;
- (id)_existingRequestIDForItemID:(id)d;
- (void)_requestItems:(id)items withReason:(int64_t)reason;
- (void)itemRequest:(id)request didFinishWithItems:(id)items invalidItemIdentifiers:(id)identifiers;
- (void)loadItemsForPageComponent:(id)component startIndex:(int64_t)index reason:(int64_t)reason;
- (void)loadItemsWithIdentifiers:(id)identifiers reason:(int64_t)reason;
@end

@implementation SKUIMissingItemLoader

- (SKUIMissingItemLoader)initWithResourceLoader:(id)loader
{
  loaderCopy = loader;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMissingItemLoader initWithResourceLoader:];
  }

  v11.receiver = self;
  v11.super_class = SKUIMissingItemLoader;
  v6 = [(SKUIMissingItemLoader *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_batchSize = 25;
    objc_storeStrong(&v6->_keyProfile, *MEMORY[0x277D6A2C8]);
    objc_storeStrong(&v7->_loader, loader);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requests = v7->_requests;
    v7->_requests = v8;
  }

  return v7;
}

- (void)loadItemsForPageComponent:(id)component startIndex:(int64_t)index reason:(int64_t)reason
{
  v8 = MEMORY[0x277CBEB18];
  componentCopy = component;
  v10 = objc_alloc_init(v8);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __69__SKUIMissingItemLoader_loadItemsForPageComponent_startIndex_reason___block_invoke;
  v15 = &unk_2781FB648;
  v11 = v10;
  v16 = v11;
  selfCopy = self;
  [componentCopy enumerateMissingItemIdentifiersFromIndex:index usingBlock:&v12];

  if ([v11 count])
  {
    [(SKUIMissingItemLoader *)self loadItemsWithIdentifiers:v11 reason:reason];
  }
}

uint64_t __69__SKUIMissingItemLoader_loadItemsForPageComponent_startIndex_reason___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  [*(a1 + 32) addObject:a2];
  result = [*(a1 + 32) count];
  *a4 = result == *(*(a1 + 40) + 8);
  return result;
}

- (void)loadItemsWithIdentifiers:(id)identifiers reason:(int64_t)reason
{
  v20 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = identifiersCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [(SKUIMissingItemLoader *)self _existingRequestIDForItemID:v13, v15];
        if (!v14 || !-[SKUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_loader, "trySetReason:forRequestWithIdentifier:", reason, [v13 unsignedIntegerValue]))
        {
          [v7 addObject:v13];
          if ([v7 count] == self->_batchSize)
          {
            [(SKUIMissingItemLoader *)self _requestItems:v7 withReason:reason];
            [v7 removeAllObjects];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    [(SKUIMissingItemLoader *)self _requestItems:v7 withReason:reason];
  }
}

- (void)itemRequest:(id)request didFinishWithItems:(id)items invalidItemIdentifiers:(id)identifiers
{
  itemsCopy = items;
  identifiersCopy = identifiers;
  requests = self->_requests;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(request, "requestIdentifier")}];
  [(NSMutableDictionary *)requests removeObjectForKey:v10];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained missingItemLoader:self didLoadItems:itemsCopy invalidItemIdentifiers:identifiersCopy];
  }
}

- (id)_existingRequestIDForItemID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__79;
  v16 = __Block_byref_object_dispose__79;
  v17 = 0;
  requests = self->_requests;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SKUIMissingItemLoader__existingRequestIDForItemID___block_invoke;
  v9[3] = &unk_2781FF5F8;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)requests enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __53__SKUIMissingItemLoader__existingRequestIDForItemID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_requestItems:(id)items withReason:(int64_t)reason
{
  itemsCopy = items;
  v9 = objc_alloc_init(SKUIItemResourceRequest);
  [(SKUIItemResourceRequest *)v9 setDelegate:self];
  [(SKUIItemResourceRequest *)v9 setImageProfile:self->_imageProfile];
  [(SKUIItemResourceRequest *)v9 setItemIdentifiers:itemsCopy];
  [(SKUIItemResourceRequest *)v9 setKeyProfile:self->_keyProfile];
  requests = self->_requests;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SKUIResourceRequest requestIdentifier](v9, "requestIdentifier")}];
  [(NSMutableDictionary *)requests setObject:itemsCopy forKey:v8];

  [(SKUIResourceLoader *)self->_loader loadResourceWithRequest:v9 reason:reason];
}

- (SKUIMissingItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithResourceLoader:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMissingItemLoader initWithResourceLoader:]";
}

@end