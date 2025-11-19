@interface UAPasteboardGeneration
- (BOOL)addItem:(id)a3;
- (BOOL)addType:(id)a3 toItemAtIndex:(unint64_t)a4;
- (UAPasteboardGeneration)initWithGeneration:(unint64_t)a3;
- (id)getTypePaths;
- (void)fetchTypeURL:(id)a3;
@end

@implementation UAPasteboardGeneration

- (UAPasteboardGeneration)initWithGeneration:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = UAPasteboardGeneration;
  v4 = [(UAPasteboardGeneration *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_generation = a3;
    v6 = objc_alloc_init(MEMORY[0x277CBEA60]);
    [(UAPasteboardGeneration *)v5 setItems:v6];

    v7 = objc_alloc_init(MEMORY[0x277CBEB98]);
    [(UAPasteboardGeneration *)v5 setAllTypes:v7];

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(UAPasteboardGeneration *)v5 setTypePaths:v8];
  }

  return v5;
}

- (id)getTypePaths
{
  v2 = [(UAPasteboardGeneration *)self typePaths];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)addItem:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UAPasteboardGeneration *)self items];
  v6 = [v5 arrayByAddingObject:v4];
  [(UAPasteboardGeneration *)self setItems:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v4 types];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * v12) type];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [(UAPasteboardGeneration *)self allTypes];
  v15 = [v14 setByAddingObjectsFromSet:v7];
  [(UAPasteboardGeneration *)self setAllTypes:v15];

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)addType:(id)a3 toItemAtIndex:(unint64_t)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(UAPasteboardGeneration *)self items];
  v8 = [v7 count];

  if (v8 <= a4)
  {
    v18 = [(UAPasteboardGeneration *)self items];
    v19 = [v18 count];

    v20 = _uaGetLogForCategory(@"pasteboard-client");
    v13 = v20;
    if (v19 == a4)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = [(UAPasteboardGeneration *)self generation];
        v22 = [v6 type];
        v38 = 134218498;
        v39 = a4;
        v40 = 2048;
        v41 = v21;
        v42 = 2112;
        v43 = v22;
        _os_log_impl(&dword_226A4E000, &v13->super, OS_LOG_TYPE_DEBUG, "[Local Pasteboard] Adding type to index %lu for generation %lu: %@", &v38, 0x20u);
      }

      v13 = objc_alloc_init(UAPasteboardItem);
      [(UAPasteboardItem *)v13 addType:v6];
      v23 = [(UAPasteboardGeneration *)self allTypes];
      v24 = [v6 type];
      v25 = [v23 setByAddingObject:v24];
      [(UAPasteboardGeneration *)self setAllTypes:v25];

      v17 = [(UAPasteboardGeneration *)self addItem:v13];
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
        v27 = MEMORY[0x277CCABB0];
        v28 = [(UAPasteboardGeneration *)self items];
        v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
        v38 = 138412546;
        v39 = v26;
        v40 = 2112;
        v41 = v29;
        _os_log_impl(&dword_226A4E000, &v13->super, OS_LOG_TYPE_ERROR, "[Local Pasteboard] Error adding type to item %@, cur count: %@", &v38, 0x16u);
      }

      v17 = 0;
    }
  }

  else
  {
    v9 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(UAPasteboardGeneration *)self generation];
      v11 = [v6 type];
      v38 = 134218498;
      v39 = a4;
      v40 = 2048;
      v41 = v10;
      v42 = 2112;
      v43 = v11;
      _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_DEBUG, "[Local Pasteboard] Adding type to index %lu for generation %lu: %@", &v38, 0x20u);
    }

    v12 = [(UAPasteboardGeneration *)self items];
    v13 = [v12 objectAtIndex:a4];

    [(UAPasteboardItem *)v13 addType:v6];
    v14 = [(UAPasteboardGeneration *)self allTypes];
    v15 = [v6 type];
    v16 = [v14 setByAddingObject:v15];
    [(UAPasteboardGeneration *)self setAllTypes:v16];

    v17 = 1;
  }

  v30 = v6;
  if ([v30 conformsToProtocol:&unk_283A69178] && objc_msgSend(v30, "preferFileRep"))
  {
    if (objc_opt_respondsToSelector())
    {
      v31 = [v30 getFileName];
      if (v31)
      {
        v32 = [(UAPasteboardGeneration *)self typePaths];
        v33 = [v30 uuid];
        [v32 setObject:v31 forKey:v33];
      }
    }
  }

  else
  {
    v34 = [v30 type];
    v35 = [v34 isEqualToString:@"public.file-url"];

    if (v35)
    {
      [(UAPasteboardGeneration *)self fetchTypeURL:v30];
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)fetchTypeURL:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 getFileName];
    if (v5)
    {
      v6 = [(UAPasteboardGeneration *)self typePaths];
      v7 = [v4 uuid];
      [v6 setObject:v5 forKey:v7];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__UAPasteboardGeneration_fetchTypeURL___block_invoke;
    v8[3] = &unk_2785C4600;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    [v9 getDataWithCompletionBlock:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __39__UAPasteboardGeneration_fetchTypeURL___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 open];
  v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v5 = [v3 read:v14 maxLength:1024];
  if (v5 >= 1)
  {
    for (i = v5; i > 0; i = [v3 read:v14 maxLength:1024])
    {
      [v4 appendBytes:v14 length:i];
    }
  }

  v7 = [MEMORY[0x277CBEBC0] URLWithDataRepresentation:v4 relativeToURL:0];
  v8 = [v7 lastPathComponent];
  if (v8)
  {
    v9 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_DEBUG, "[Local Pasteboard] Saving file name: %@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v11 = [WeakRetained typePaths];
    v12 = [*(a1 + 32) uuid];
    [v11 setObject:v8 forKey:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end