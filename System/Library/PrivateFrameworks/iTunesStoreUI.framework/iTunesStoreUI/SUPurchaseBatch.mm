@interface SUPurchaseBatch
- (SUPurchaseBatch)initWithItems:(id)items offers:(id)offers;
- (id)_copyModifiedErrorsFromDictionary:(__CFDictionary *)dictionary;
- (id)_copyUniqueErrorsFromErrors:(id)errors;
- (id)_copyValidPurchasesForItems:(id)items;
- (void)_validateItems;
- (void)dealloc;
- (void)setDocumentTargetIdentifier:(id)identifier;
- (void)setPurchasesAndContinuationsFromPurchases:(id)purchases;
@end

@implementation SUPurchaseBatch

- (SUPurchaseBatch)initWithItems:(id)items offers:(id)offers
{
  v6 = [(SUPurchaseBatch *)self init];
  if (v6)
  {
    v6->_items = [items copy];
    v6->_offers = [offers copy];
    [(SUPurchaseBatch *)v6 _validateItems];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUPurchaseBatch;
  [(SUPurchaseBatch *)&v3 dealloc];
}

- (void)setDocumentTargetIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  validPurchases = [(SUPurchaseBatch *)self validPurchases];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)validPurchases countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = *MEMORY[0x1E69D4B80];
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(validPurchases);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setValue:identifier forDownloadProperty:v8];
        }

        else
        {
          [v10 setValue:identifier forProperty:v8];
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSArray *)validPurchases countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)setPurchasesAndContinuationsFromPurchases:(id)purchases
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [purchases mutableCopy];
  v5 = [(SUPurchaseBatch *)self copyContinuationsForPurchases:v4];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        purchase = [*(*(&v11 + 1) + 8 * v9) purchase];
        if (purchase)
        {
          [v4 removeObject:purchase];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(SUPurchaseBatch *)self setContinuations:v5];
  [(SUPurchaseBatch *)self setValidPurchases:v4];
}

- (id)_copyModifiedErrorsFromDictionary:(__CFDictionary *)dictionary
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7[0] = v5;
  v7[1] = self;
  CFDictionaryApplyFunction(dictionary, __SUPurchaseBatchAddModifiedError, v7);
  return v5;
}

- (id)_copyUniqueErrorsFromErrors:(id)errors
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(MEMORY[0x1E695E9D8] + 16);
  *&keyCallBacks.version = *MEMORY[0x1E695E9D8];
  *&keyCallBacks.release = v5;
  keyCallBacks.hash = __SUPurchaseBatchErrorHash;
  keyCallBacks.equal = [(SUPurchaseBatch *)self errorEqualCallback];
  v6 = CFDictionaryCreateMutable(0, 0, &keyCallBacks, 0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [errors countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(errors);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        Value = CFDictionaryGetValue(v7, v12);
        CFDictionarySetValue(v7, v12, Value + 1);
      }

      v9 = [errors countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [(SUPurchaseBatch *)self _copyModifiedErrorsFromDictionary:v7];
  CFRelease(v7);
  return v14;
}

- (id)_copyValidPurchasesForItems:(id)items
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = +[SUItemDataSource sharedDataSource];
  v7 = [(NSArray *)self->_offers count];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = items;
  v8 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        defaultStoreOffer = [v12 defaultStoreOffer];
        if (v7 >= 1)
        {
          v14 = [(NSArray *)self->_items indexOfObjectIdenticalTo:v12];
          if (v14 < v7)
          {
            defaultStoreOffer = [(NSArray *)self->_offers objectAtIndex:v14];
          }
        }

        v15 = [v6 newExternalDownloadWithItem:v12 storeOffer:defaultStoreOffer];
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = [v6 newPurchaseWithItem:v12 storeOffer:defaultStoreOffer];
          if (!v16)
          {
            goto LABEL_13;
          }
        }

        [v5 addObject:v16];
LABEL_13:
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return v5;
}

- (void)_validateItems
{
  v4 = [(SUPurchaseBatch *)self copyFilteredItemsFromItems:self->_items];
  v3 = [(SUPurchaseBatch *)self _copyValidPurchasesForItems:v4];
  [(SUPurchaseBatch *)self setPurchasesAndContinuationsFromPurchases:v3];
}

@end