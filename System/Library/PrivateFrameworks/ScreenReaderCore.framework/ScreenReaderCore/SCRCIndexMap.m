@interface SCRCIndexMap
- (BOOL)isEqual:(id)a3;
- (SCRCIndexMap)init;
- (SCRCIndexMap)initWithCoder:(id)a3;
- (SCRCIndexMap)initWithObjects:(const void *)a3 andIndexes:(unint64_t *)a4 count:(unint64_t)a5;
- (id)_ensureCodableAttributedString:(id)a3;
- (id)_initAndDeepCopyIndexMap:(id)a3;
- (id)_initWithIndexMap:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deepCopyWithZone:(_NSZone *)a3;
- (id)description;
- (id)indexes;
- (unint64_t)_createIndexesWithSize:(unint64_t *)a3;
- (void)addObjectsFromIndexMap:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setObject:(id)a3 forIndex:(unint64_t)a4;
@end

@implementation SCRCIndexMap

- (SCRCIndexMap)initWithObjects:(const void *)a3 andIndexes:(unint64_t *)a4 count:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = SCRCIndexMap;
  v8 = [(SCRCIndexMap *)&v12 init];
  if (v8 && (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]), (v8->_map = Mutable) != 0))
  {
    for (; a5; --a5)
    {
      if (*a3)
      {
        CFDictionarySetValue(v8->_map, *a4, *a3);
      }

      ++a4;
      ++a3;
    }

    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (SCRCIndexMap)init
{
  v6.receiver = self;
  v6.super_class = SCRCIndexMap;
  v2 = [(SCRCIndexMap *)&v6 init];
  if (v2 && (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]), (v2->_map = Mutable) != 0))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_initWithIndexMap:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SCRCIndexMap;
  v5 = [(SCRCIndexMap *)&v11 init];
  if (v5 && (v6 = v4[1], Count = CFDictionaryGetCount(v6), MutableCopy = CFDictionaryCreateMutableCopy(0, Count, v6), (v5->_map = MutableCopy) != 0))
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_initAndDeepCopyIndexMap:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SCRCIndexMap;
  v5 = [(SCRCIndexMap *)&v15 init];
  if (v5 && (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]), (v5->_map = Mutable) != 0))
  {
    v14 = 0;
    v7 = [v4 _createIndexesWithSize:&v14];
    if (v7)
    {
      v8 = v7;
      if (v14)
      {
        for (i = 0; i < v14; ++i)
        {
          v10 = [v4 objectForIndex:v8[i]];
          v11 = [v10 copy];

          CFDictionarySetValue(v5->_map, v8[i], v11);
        }
      }

      free(v8);
    }

    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SCRCIndexMap allocWithZone:a3];

  return [(SCRCIndexMap *)v4 _initWithIndexMap:self];
}

- (id)deepCopyWithZone:(_NSZone *)a3
{
  v4 = [SCRCIndexMap allocWithZone:a3];

  return [(SCRCIndexMap *)v4 _initAndDeepCopyIndexMap:self];
}

- (SCRCIndexMap)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SCRCIndexMap *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"indexes"];

    v10 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v19[3] = objc_opt_class();
    v19[4] = objc_opt_class();
    v19[5] = objc_opt_class();
    v19[6] = objc_opt_class();
    v19[7] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:8];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"values"];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __30__SCRCIndexMap_initWithCoder___block_invoke;
    v16[3] = &unk_279B71430;
    v17 = v5;
    v18 = v13;
    v14 = v13;
    [v9 enumerateObjectsUsingBlock:v16];
  }

  return v5;
}

void __30__SCRCIndexMap_initWithCoder___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v8 = [v5 objectAtIndex:a3];
  v7 = [v6 unsignedLongValue];

  [v4 setObject:v8 forIndex:v7];
}

- (id)_ensureCodableAttributedString:(id)a3
{
  v3 = MEMORY[0x277CCAB48];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 string];
  v7 = [v5 initWithString:v6];

  v8 = [v4 length];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SCRCIndexMap__ensureCodableAttributedString___block_invoke;
  v11[3] = &unk_279B71458;
  v9 = v7;
  v12 = v9;
  [v4 enumerateAttributesInRange:0 options:v8 usingBlock:{0, v11}];

  return v9;
}

void __47__SCRCIndexMap__ensureCodableAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        if ([v13 conformsToProtocol:&unk_28763CF90])
        {
          [*(a1 + 32) addAttribute:v12 value:v13 range:{a3, a4}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v14 = 0;
  v6 = [(SCRCIndexMap *)self _createIndexesWithSize:&v14];
  if (v14)
  {
    for (i = 0; i < v14; ++i)
    {
      v8 = v6[i];
      v9 = [(SCRCIndexMap *)self objectForIndex:v8, v13];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(SCRCIndexMap *)self _ensureCodableAttributedString:v9];

        v9 = v10;
      }

      if ([v9 conformsToProtocol:&unk_28763CF90])
      {
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v8];
        [v4 addObject:v11];

        [v5 addObject:v9];
      }
    }
  }

  v12 = v13;
  [v13 encodeObject:v4 forKey:{@"indexes", v13}];
  [v12 encodeObject:v5 forKey:@"values"];
  free(v6);
}

- (void)dealloc
{
  map = self->_map;
  if (map)
  {
    CFRelease(map);
  }

  v4.receiver = self;
  v4.super_class = SCRCIndexMap;
  [(SCRCIndexMap *)&v4 dealloc];
}

- (void)setObject:(id)a3 forIndex:(unint64_t)a4
{
  if (a3)
  {
    CFDictionarySetValue(self->_map, a4, a3);
  }
}

- (unint64_t)_createIndexesWithSize:(unint64_t *)a3
{
  Count = CFDictionaryGetCount(self->_map);
  if (a3)
  {
    *a3 = Count;
  }

  v6 = 8 * Count;
  v7 = malloc_type_malloc(8 * Count, 0xE660DFD0uLL);
  v8 = v7;
  if (v7)
  {
    bzero(v7, v6);
    CFDictionaryGetKeysAndValues(self->_map, v8, 0);
  }

  return v8;
}

- (id)indexes
{
  v6 = 0;
  v2 = [(SCRCIndexMap *)self _createIndexesWithSize:&v6];
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      [v3 addIndex:v2[i]];
    }
  }

  free(v2);

  return v3;
}

- (void)addObjectsFromIndexMap:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [v4 _createIndexesWithSize:&v9];
  if (v5)
  {
    v6 = v5;
    if (v9)
    {
      for (i = 0; i < v9; ++i)
      {
        v8 = [v4 objectForIndex:v6[i]];
        [(SCRCIndexMap *)self setObject:v8 forIndex:v6[i]];
      }
    }

    free(v6);
  }
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"SCRCIndexMap:\n"];
  v13 = 0;
  v4 = [(SCRCIndexMap *)self _createIndexesWithSize:&v13];
  if (v4)
  {
    v5 = v4;
    if (v13)
    {
      for (i = 0; i < v13; ++i)
      {
        v7 = objc_alloc(MEMORY[0x277CCACA8]);
        v8 = v5[i];
        v9 = [(SCRCIndexMap *)self objectForIndex:v8];
        v10 = [v7 initWithFormat:@"\t%lu (0x%lx) -> %@\n", v8, v8, v9];

        [v3 appendString:v10];
      }
    }

    free(v5);
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SCRCIndexMap *)self count];
    if (v6 == [v5 count])
    {
      v7 = [(SCRCIndexMap *)self indexes];
      v8 = [v5 indexes];
      v9 = [v8 mutableCopy];

      if ([v7 isEqualToIndexSet:v9])
      {
        v15 = 0;
        v16 = &v15;
        v17 = 0x2020000000;
        v18 = 1;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __24__SCRCIndexMap_isEqual___block_invoke;
        v12[3] = &unk_279B71480;
        v12[4] = self;
        v13 = v5;
        v14 = &v15;
        [v7 enumerateIndexesUsingBlock:v12];
        v10 = *(v16 + 24);

        _Block_object_dispose(&v15, 8);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void __24__SCRCIndexMap_isEqual___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = [*(a1 + 32) objectForIndex:a2];
  v6 = [*(a1 + 40) objectForIndex:a2];
  if (v7 != v6 && ([v7 isEqual:v6] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a3 = 1;
  }
}

@end