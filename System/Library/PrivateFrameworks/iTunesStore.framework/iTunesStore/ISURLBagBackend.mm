@interface ISURLBagBackend
+ (BOOL)_bagValue:(id)a3 equalsBagValue:(id)a4;
- (ISURLBagBackend)init;
- (id)_bagValuesMapTableWithInitialValues:(id)a3;
- (id)_valueForKey:(id)a3 forBagValuesNode:(id)a4;
- (id)deltaDictionaryRepresentationForBagWithKey:(id)a3;
- (id)description;
- (id)diagnostics;
- (id)dictionaryRepresentationForBagWithKey:(id)a3;
- (id)valueForKey:(id)a3 forBagWithKey:(id)a4;
- (void)addBagValues:(id)a3 forBagWithKey:(id)a4;
- (void)removeBagValuesForBagWithKey:(id)a3;
@end

@implementation ISURLBagBackend

- (ISURLBagBackend)init
{
  v10.receiver = self;
  v10.super_class = ISURLBagBackend;
  v2 = [(ISURLBagBackend *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesStore.URLBagBackend", MEMORY[0x277D85CD8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    bagValuesDictionary = v2->_bagValuesDictionary;
    v2->_bagValuesDictionary = v5;

    v7 = objc_alloc_init(MEMORY[0x277D69A90]);
    bagValuesList = v2->_bagValuesList;
    v2->_bagValuesList = v7;
  }

  return v2;
}

- (id)deltaDictionaryRepresentationForBagWithKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v5 = [(ISURLBagBackend *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ISURLBagBackend_deltaDictionaryRepresentationForBagWithKey___block_invoke;
  block[3] = &unk_27A670AC8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __62__ISURLBagBackend_deltaDictionaryRepresentationForBagWithKey___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) bagValuesDictionary];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [v3 object];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v7 objectForKey:v12];
          v14 = [MEMORY[0x277CBEB68] null];

          if (v13 != v14)
          {
            [*(*(*(a1 + 48) + 8) + 40) setObject:v13 forKey:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)diagnostics
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  v3 = [(ISURLBagBackend *)self accessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__ISURLBagBackend_diagnostics__block_invoke;
  v6[3] = &unk_27A6708C0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __30__ISURLBagBackend_diagnostics__block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 40) + 8) + 40) appendString:@"ISURLBagBackend Diagnostics\n\n"];
  v54 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v41 = a1;
  v5 = [*(a1 + 32) bagValuesDictionary];
  v6 = [v5 allValues];

  obj = v6;
  v44 = [v6 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (!v44)
  {
    v48 = 0;
    v52 = 0;
    goto LABEL_38;
  }

  v48 = 0;
  v52 = 0;
  v43 = *v72;
  do
  {
    v7 = 0;
    do
    {
      if (*v72 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v45 = v7;
      v8 = *(*(&v71 + 1) + 8 * v7);
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v50 = [v8 object];
      v9 = [v50 countByEnumeratingWithState:&v67 objects:v78 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v68;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v68 != v11)
            {
              objc_enumerationMutation(v50);
            }

            v13 = *(*(&v67 + 1) + 8 * i);
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v14 = v54;
            v15 = [v14 countByEnumeratingWithState:&v63 objects:v77 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = 0;
              v18 = 0;
              v19 = *v64;
              while (2)
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v64 != v19)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v18 |= v13 == *(*(&v63 + 1) + 8 * j);
                  v17 |= [v13 isEqualToString:?];
                  if (v18 & 1) != 0 && (v17)
                  {

                    v18 = 1;
                    LOBYTE(v17) = 1;
                    goto LABEL_22;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v63 objects:v77 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              LOBYTE(v17) = 0;
              v18 = 0;
            }

            if ((v18 & 1) == 0 && (v17 & 1) == 0)
            {
              v21 = v14;
              goto LABEL_31;
            }

LABEL_22:
            if (v18 & 1) != 0 && (v17)
            {
              ++v52;
              continue;
            }

            if (!(v18 & 1 | ((v17 & 1) == 0)))
            {
              v21 = v47;
              ++v48;
LABEL_31:
              [v21 addObject:v13];
              continue;
            }
          }

          v10 = [v50 countByEnumeratingWithState:&v67 objects:v78 count:16];
        }

        while (v10);
      }

      v7 = v45 + 1;
    }

    while (v45 + 1 != v44);
    v44 = [obj countByEnumeratingWithState:&v71 objects:v79 count:16];
  }

  while (v44);
LABEL_38:

  [*(*(*(v41 + 40) + 8) + 40) appendString:@"KEYS\n"];
  v22 = (v52 + v48);
  [*(*(*(v41 + 40) + 8) + 40) appendFormat:@"Total Reused Keys: %li (%f)\n", v52, v52 / v22];
  [*(*(*(v41 + 40) + 8) + 40) appendFormat:@"Total Copied Keys: %li (%f)\n\n", v48, v48 / v22];
  v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v24 = [*(v41 + 32) bagValuesDictionary];
  v25 = [v24 allValues];

  v46 = v25;
  v51 = [v25 countByEnumeratingWithState:&v59 objects:v76 count:16];
  v26 = 0;
  v27 = 0;
  if (v51)
  {
    v49 = *v60;
    do
    {
      v28 = 0;
      do
      {
        if (*v60 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v53 = v28;
        v29 = *(*(&v59 + 1) + 8 * v28);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v30 = [v29 object];
        v31 = [v30 countByEnumeratingWithState:&v55 objects:v75 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v56;
          do
          {
            for (k = 0; k != v32; ++k)
            {
              if (*v56 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v55 + 1) + 8 * k);
              v36 = [v29 object];
              v37 = [v36 objectForKey:v35];

              v38 = [MEMORY[0x277CBEB68] null];

              if (v37 == v38)
              {
                ++v26;
              }

              else if ([v23 containsObject:v37])
              {
                ++v27;
              }

              else
              {
                [v23 addObject:v37];
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v55 objects:v75 count:16];
          }

          while (v32);
        }

        v28 = v53 + 1;
      }

      while ((v53 + 1) != v51);
      v51 = [v46 countByEnumeratingWithState:&v59 objects:v76 count:16];
    }

    while (v51);
  }

  [*(*(*(v41 + 40) + 8) + 40) appendString:@"VALUES\n"];
  v39 = (v27 + v26);
  [*(*(*(v41 + 40) + 8) + 40) appendFormat:@"Total Delta Values: %li (%f)\n", v26, v26 / v39];
  [*(*(*(v41 + 40) + 8) + 40) appendFormat:@"Total Duplicate Values: %li (%f)\n\n", v27, v27 / v39];
  [*(*(*(v41 + 40) + 8) + 40) appendFormat:@"Copied Keys: %@", v47];

  v40 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentationForBagWithKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v5 = [(ISURLBagBackend *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ISURLBagBackend_dictionaryRepresentationForBagWithKey___block_invoke;
  block[3] = &unk_27A670AC8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __57__ISURLBagBackend_dictionaryRepresentationForBagWithKey___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) bagValuesDictionary];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB38]);
    v5 = [v3 object];
    v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v3 object];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = [*(a1 + 32) _valueForKey:v14 forBagValuesNode:v3];
          if (v15)
          {
            [*(*(*(a1 + 48) + 8) + 40) setObject:v15 forKey:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)valueForKey:(id)a3 forBagWithKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__10;
  v21 = __Block_byref_object_dispose__10;
  v22 = 0;
  v8 = [(ISURLBagBackend *)self accessQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__ISURLBagBackend_valueForKey_forBagWithKey___block_invoke;
  v13[3] = &unk_27A671310;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v16 = &v17;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __45__ISURLBagBackend_valueForKey_forBagWithKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bagValuesDictionary];
  v6 = [v2 objectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) _valueForKey:*(a1 + 48) forBagValuesNode:v6];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)addBagValues:(id)a3 forBagWithKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ISURLBagBackend *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ISURLBagBackend_addBagValues_forBagWithKey___block_invoke;
  block[3] = &unk_27A670890;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_async(v8, block);
}

void __46__ISURLBagBackend_addBagValues_forBagWithKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _bagValuesMapTableWithInitialValues:*(a1 + 40)];
  v2 = [objc_alloc(MEMORY[0x277D69A98]) initWithObject:v5];
  v3 = [*(a1 + 32) bagValuesDictionary];
  [v3 setObject:v2 forKey:*(a1 + 48)];

  v4 = [*(a1 + 32) bagValuesList];
  [v4 appendNode:v2];
}

- (void)removeBagValuesForBagWithKey:(id)a3
{
  v4 = a3;
  v5 = [(ISURLBagBackend *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ISURLBagBackend_removeBagValuesForBagWithKey___block_invoke;
  v7[3] = &unk_27A670868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(v5, v7);
}

void __48__ISURLBagBackend_removeBagValuesForBagWithKey___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) bagValuesDictionary];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v21 = a1;
    v4 = [v3 next];
    v5 = [v4 object];
    v22 = [v5 copy];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [v4 object];
    v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        v9 = 0;
        do
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * v9);
          v11 = [v4 object];
          v12 = [v11 objectForKey:v10];

          v13 = [MEMORY[0x277CBEB68] null];

          if (v12 == v13)
          {
            v14 = v3;
            v15 = [v3 object];
            v16 = [v15 objectForKey:v10];

            if (v16)
            {
              v17 = [MEMORY[0x277CBEB68] null];

              if (v16 != v17)
              {
                [v22 setObject:v16 forKey:v10];
              }
            }

            v3 = v14;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v7);
    }

    [v4 setObject:v22];
    v18 = [*(v21 + 32) bagValuesDictionary];
    [v18 removeObjectForKey:*(v21 + 40)];

    v19 = [*(v21 + 32) bagValuesList];
    [v19 removeNode:v3];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  v3 = [(ISURLBagBackend *)self accessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__ISURLBagBackend_description__block_invoke;
  v6[3] = &unk_27A6708C0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __30__ISURLBagBackend_description__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) bagValuesList];
  v2 = [v5 description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (BOOL)_bagValue:(id)a3 equalsBagValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 isEqualToArray:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v5 isEqualToDictionary:v6];
      }

      else
      {
        v7 = [v5 isEqual:v6];
      }
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_bagValuesMapTableWithInitialValues:(id)a3
{
  v4 = MEMORY[0x277CCAB00];
  v5 = a3;
  v6 = [v4 strongToStrongObjectsMapTable];
  v7 = [(ISURLBagBackend *)self bagValuesList];
  v8 = [v7 tail];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__ISURLBagBackend__bagValuesMapTableWithInitialValues___block_invoke;
  v14[3] = &unk_27A671338;
  v14[4] = self;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  v10 = v8;
  [v5 enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __55__ISURLBagBackend__bagValuesMapTableWithInitialValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) _valueForKey:v11 forBagValuesNode:*(a1 + 40)];
  v7 = *(a1 + 32);
  v8 = [objc_opt_class() _bagValue:v5 equalsBagValue:v6];
  v9 = *(a1 + 48);
  if (v8)
  {
    v10 = [MEMORY[0x277CBEB68] null];
    [v9 setObject:v10 forKey:v11];
  }

  else
  {
    [v9 setObject:v5 forKey:v11];
  }
}

- (id)_valueForKey:(id)a3 forBagValuesNode:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      v9 = v8;
      v10 = [v7 object];
      v8 = [v10 objectForKey:v5];

      v11 = [MEMORY[0x277CBEB68] null];
      if (v8 != v11)
      {
        break;
      }

      v12 = [v7 previous];

      v7 = v12;
      if (!v12)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_8:

  return v8;
}

@end