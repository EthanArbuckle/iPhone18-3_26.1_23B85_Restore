@interface UAPasteboardGeneration
- (BOOL)addItem:(id)item;
- (BOOL)addType:(id)type toItemAtIndex:(unint64_t)index;
- (UAPasteboardGeneration)initWithGeneration:(unint64_t)generation;
- (id)getTypePaths;
- (void)fetchTypeURL:(id)l;
@end

@implementation UAPasteboardGeneration

- (UAPasteboardGeneration)initWithGeneration:(unint64_t)generation
{
  v10.receiver = self;
  v10.super_class = UAPasteboardGeneration;
  v4 = [(UAPasteboardGeneration *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_generation = generation;
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
  typePaths = [(UAPasteboardGeneration *)self typePaths];
  v3 = [typePaths copy];

  return v3;
}

- (BOOL)addItem:(id)item
{
  v23 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  items = [(UAPasteboardGeneration *)self items];
  v6 = [items arrayByAddingObject:itemCopy];
  [(UAPasteboardGeneration *)self setItems:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  types = [itemCopy types];
  v9 = [types countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(types);
        }

        type = [*(*(&v18 + 1) + 8 * v12) type];
        [v7 addObject:type];

        ++v12;
      }

      while (v10 != v12);
      v10 = [types countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  allTypes = [(UAPasteboardGeneration *)self allTypes];
  v15 = [allTypes setByAddingObjectsFromSet:v7];
  [(UAPasteboardGeneration *)self setAllTypes:v15];

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)addType:(id)type toItemAtIndex:(unint64_t)index
{
  v44 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  items = [(UAPasteboardGeneration *)self items];
  v8 = [items count];

  if (v8 <= index)
  {
    items2 = [(UAPasteboardGeneration *)self items];
    v19 = [items2 count];

    v20 = _uaGetLogForCategory(@"pasteboard-client");
    v13 = v20;
    if (v19 == index)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        generation = [(UAPasteboardGeneration *)self generation];
        type = [typeCopy type];
        v38 = 134218498;
        indexCopy2 = index;
        v40 = 2048;
        v41 = generation;
        v42 = 2112;
        v43 = type;
        _os_log_impl(&dword_226A4E000, &v13->super, OS_LOG_TYPE_DEBUG, "[Local Pasteboard] Adding type to index %lu for generation %lu: %@", &v38, 0x20u);
      }

      v13 = objc_alloc_init(UAPasteboardItem);
      [(UAPasteboardItem *)v13 addType:typeCopy];
      allTypes = [(UAPasteboardGeneration *)self allTypes];
      type2 = [typeCopy type];
      v25 = [allTypes setByAddingObject:type2];
      [(UAPasteboardGeneration *)self setAllTypes:v25];

      v17 = [(UAPasteboardGeneration *)self addItem:v13];
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
        v27 = MEMORY[0x277CCABB0];
        items3 = [(UAPasteboardGeneration *)self items];
        v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(items3, "count")}];
        v38 = 138412546;
        indexCopy2 = v26;
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
      generation2 = [(UAPasteboardGeneration *)self generation];
      type3 = [typeCopy type];
      v38 = 134218498;
      indexCopy2 = index;
      v40 = 2048;
      v41 = generation2;
      v42 = 2112;
      v43 = type3;
      _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_DEBUG, "[Local Pasteboard] Adding type to index %lu for generation %lu: %@", &v38, 0x20u);
    }

    items4 = [(UAPasteboardGeneration *)self items];
    v13 = [items4 objectAtIndex:index];

    [(UAPasteboardItem *)v13 addType:typeCopy];
    allTypes2 = [(UAPasteboardGeneration *)self allTypes];
    type4 = [typeCopy type];
    v16 = [allTypes2 setByAddingObject:type4];
    [(UAPasteboardGeneration *)self setAllTypes:v16];

    v17 = 1;
  }

  v30 = typeCopy;
  if ([v30 conformsToProtocol:&unk_283A69178] && objc_msgSend(v30, "preferFileRep"))
  {
    if (objc_opt_respondsToSelector())
    {
      getFileName = [v30 getFileName];
      if (getFileName)
      {
        typePaths = [(UAPasteboardGeneration *)self typePaths];
        uuid = [v30 uuid];
        [typePaths setObject:getFileName forKey:uuid];
      }
    }
  }

  else
  {
    type5 = [v30 type];
    v35 = [type5 isEqualToString:@"public.file-url"];

    if (v35)
    {
      [(UAPasteboardGeneration *)self fetchTypeURL:v30];
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)fetchTypeURL:(id)l
{
  lCopy = l;
  if (objc_opt_respondsToSelector())
  {
    getFileName = [lCopy getFileName];
    if (getFileName)
    {
      typePaths = [(UAPasteboardGeneration *)self typePaths];
      uuid = [lCopy uuid];
      [typePaths setObject:getFileName forKey:uuid];
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
    v9 = lCopy;
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