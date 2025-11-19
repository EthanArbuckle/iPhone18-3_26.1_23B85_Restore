@interface SUPurchaseBatch
- (SUPurchaseBatch)initWithItems:(id)a3 offers:(id)a4;
- (id)_copyModifiedErrorsFromDictionary:(__CFDictionary *)a3;
- (id)_copyUniqueErrorsFromErrors:(id)a3;
- (id)_copyValidPurchasesForItems:(id)a3;
- (void)_validateItems;
- (void)dealloc;
- (void)setDocumentTargetIdentifier:(id)a3;
- (void)setPurchasesAndContinuationsFromPurchases:(id)a3;
@end

@implementation SUPurchaseBatch

- (SUPurchaseBatch)initWithItems:(id)a3 offers:(id)a4
{
  v6 = [(SUPurchaseBatch *)self init];
  if (v6)
  {
    v6->_items = [a3 copy];
    v6->_offers = [a4 copy];
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

- (void)setDocumentTargetIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [(SUPurchaseBatch *)self validPurchases];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setValue:a3 forDownloadProperty:v8];
        }

        else
        {
          [v10 setValue:a3 forProperty:v8];
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)setPurchasesAndContinuationsFromPurchases:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [a3 mutableCopy];
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

        v10 = [*(*(&v11 + 1) + 8 * v9) purchase];
        if (v10)
        {
          [v4 removeObject:v10];
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

- (id)_copyModifiedErrorsFromDictionary:(__CFDictionary *)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7[0] = v5;
  v7[1] = self;
  CFDictionaryApplyFunction(a3, __SUPurchaseBatchAddModifiedError, v7);
  return v5;
}

- (id)_copyUniqueErrorsFromErrors:(id)a3
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
  v8 = [a3 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        Value = CFDictionaryGetValue(v7, v12);
        CFDictionarySetValue(v7, v12, Value + 1);
      }

      v9 = [a3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [(SUPurchaseBatch *)self _copyModifiedErrorsFromDictionary:v7];
  CFRelease(v7);
  return v14;
}

- (id)_copyValidPurchasesForItems:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = +[SUItemDataSource sharedDataSource];
  v7 = [(NSArray *)self->_offers count];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a3;
  v8 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        v13 = [v12 defaultStoreOffer];
        if (v7 >= 1)
        {
          v14 = [(NSArray *)self->_items indexOfObjectIdenticalTo:v12];
          if (v14 < v7)
          {
            v13 = [(NSArray *)self->_offers objectAtIndex:v14];
          }
        }

        v15 = [v6 newExternalDownloadWithItem:v12 storeOffer:v13];
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = [v6 newPurchaseWithItem:v12 storeOffer:v13];
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