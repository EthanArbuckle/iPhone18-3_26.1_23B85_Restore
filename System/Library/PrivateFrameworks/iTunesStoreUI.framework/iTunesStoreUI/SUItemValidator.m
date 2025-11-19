@interface SUItemValidator
- (BOOL)validateItems:(id)a3 offers:(id)a4 error:(id *)a5;
- (NSArray)validationTests;
- (void)addCollectionValidationTests:(id)a3;
- (void)addItemValidationTests:(id)a3;
- (void)dealloc;
- (void)removeValidationTest:(id)a3;
@end

@implementation SUItemValidator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUItemValidator;
  [(SUItemValidator *)&v3 dealloc];
}

- (void)addCollectionValidationTests:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_collectionTests)
  {
    self->_collectionTests = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_collectionTests containsObject:v9]& 1) == 0)
        {
          v10 = [v9 copy];
          [(NSMutableArray *)self->_collectionTests addObject:v10];
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)addItemValidationTests:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_itemTests)
  {
    self->_itemTests = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_itemTests containsObject:v9]& 1) == 0)
        {
          v10 = [v9 copy];
          [(NSMutableArray *)self->_itemTests addObject:v10];
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)removeValidationTest:(id)a3
{
  [(NSMutableArray *)self->_collectionTests removeObject:?];
  itemTests = self->_itemTests;

  [(NSMutableArray *)itemTests removeObject:a3];
}

- (BOOL)validateItems:(id)a3 offers:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  collectionTests = self->_collectionTests;
  v10 = [(NSMutableArray *)collectionTests countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v35 != v12)
      {
        objc_enumerationMutation(collectionTests);
      }

      v14 = [*(*(&v34 + 1) + 8 * v13) validateItems:a3 offers:a4 error:&v38];
      if (!v14)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [(NSMutableArray *)collectionTests countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = self->_itemTests;
    v28 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (!v28)
    {
      LOBYTE(v14) = 1;
      if (a5)
      {
        goto LABEL_26;
      }

      return v14;
    }

    v29 = *v31;
    v26 = a5;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v30 + 1) + 8 * v15);
        v17 = [a3 count];
        v18 = [a4 count];
        if (v17 >= 1)
        {
          v19 = v18;
          v20 = 0;
          while (1)
          {
            v21 = [a3 objectAtIndex:v20];
            v22 = v20 >= v19 ? 0 : [a4 objectAtIndex:v20];
            v23 = [MEMORY[0x1E695DEC8] arrayWithObject:v21];
            if (([v16 validateItems:v23 offers:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:", v22, 0), &v38}] & 1) == 0)
            {
              break;
            }

            if (v17 == ++v20)
            {
              goto LABEL_21;
            }
          }

          LOBYTE(v14) = 0;
          a5 = v26;
          goto LABEL_25;
        }

LABEL_21:
        ++v15;
      }

      while (v15 != v28);
      v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v39 count:16];
      LOBYTE(v14) = 1;
      a5 = v26;
      v28 = v24;
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:
  if (a5)
  {
LABEL_26:
    *a5 = v38;
  }

  return v14;
}

- (NSArray)validationTests
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_collectionTests)
  {
    [(NSArray *)v3 addObjectsFromArray:?];
  }

  if (self->_itemTests)
  {
    [(NSArray *)v4 addObjectsFromArray:?];
  }

  return v4;
}

@end