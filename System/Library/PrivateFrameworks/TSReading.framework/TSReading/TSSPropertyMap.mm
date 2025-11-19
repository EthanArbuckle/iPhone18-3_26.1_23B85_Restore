@interface TSSPropertyMap
+ (id)propertyMap;
+ (id)propertyMapWithPropertyMap:(id)a3;
- (BOOL)containsAnyPropertyInProperties:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TSSPropertyMap)init;
- (TSSPropertyMap)initWithFirstKey:(int)a3 andArgumentList:(char *)a4;
- (TSSPropertyMap)initWithPropertyMap:(id)a3;
- (TSSPropertyMap)propertyMapWithProperties:(id)a3;
- (id)allKeys;
- (id)allProperties;
- (id)copyWithZone:(_NSZone *)a3;
- (id)diff:(id)a3;
- (id)diffOnlyDifferences:(id)a3;
- (id)old_description;
- (id)propertyMapByAddingValuesFromPropertyMap:(id)a3;
- (id)propertyMapByRemovingValuesForProperties:(id)a3;
- (id)propertyMapByRemovingValuesFromPropertyMap:(id)a3;
- (void)addValuesFromPropertyMap:(id)a3;
- (void)dealloc;
- (void)enumeratePropertiesAndObjectsUsingBlock:(id)a3;
- (void)filterWithProperties:(id)a3;
- (void)minusPropertyMap:(id)a3;
- (void)pSetArrayOfFloats:(double)a3[9] forProperty:(int)a4;
- (void)pSetArrayOfObjects:(id)a3[9] forProperty:(int)a4;
- (void)removeValuesForProperties:(id)a3;
- (void)removeValuesFromPropertyMap:(id)a3;
@end

@implementation TSSPropertyMap

+ (id)propertyMap
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)propertyMapWithPropertyMap:(id)a3
{
  v3 = [a3 copy];

  return v3;
}

- (TSSPropertyMap)init
{
  v4.receiver = self;
  v4.super_class = TSSPropertyMap;
  v2 = [(TSSPropertyMap *)&v4 init];
  if (v2)
  {
    v2->mStore = String();
  }

  return v2;
}

- (TSSPropertyMap)initWithPropertyMap:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSSPropertyMap;
  v4 = [(TSSPropertyMap *)&v7 init];
  if (v4)
  {
    if (a3)
    {
      v5 = String(*(a3 + 1));
      v4->mStore = v5;
      if (!v5)
      {

        return 0;
      }
    }

    else
    {
      v4->mStore = String();
    }
  }

  return v4;
}

- (TSSPropertyMap)initWithFirstKey:(int)a3 andArgumentList:(char *)a4
{
  v5 = *&a3;
  v9.receiver = self;
  v9.super_class = TSSPropertyMap;
  v6 = [(TSSPropertyMap *)&v9 init];
  if (v6)
  {
    PropertyAndArgumentList = i_TSSPropertyStoreCreateWithFirstPropertyAndArgumentList(v5, a4);
    v6->mStore = PropertyAndArgumentList;
    if (!PropertyAndArgumentList)
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  String(self->mStore);
  v3.receiver = self;
  v3.super_class = TSSPropertyMap;
  [(TSSPropertyMap *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  if (v4)
  {
    v4[1] = String(self->mStore);
    if (!self->mStore)
    {

      return 0;
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v6 = *(v4 + 8);
    mStore = self->mStore;

    LOBYTE(v4) = String(mStore, v6, v5);
  }

  return v4;
}

- (id)allKeys
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = String(self->mStore);
  v4 = v9 - ((8 * v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  String(self->mStore, v9);
  if (v3)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      *&v4[8 * v5] = [MEMORY[0x277CCABB0] numberWithInt:*(v9 + 4 * v5 - ((4 * v3 + 15) & 0xFFFFFFFFFFFFFFF0))];
      v5 = v6;
    }

    while (v3 > v6++);
  }

  return [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:v3];
}

- (id)allProperties
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = String(self->mStore);
  v4 = v10 - ((4 * v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = +[(TSSPropertySet *)TSSMutablePropertySet];
  String(self->mStore, v4);
  if (v3)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      [v5 addProperty:*&v4[4 * v6]];
      v6 = v7;
    }

    while (v3 > v7++);
  }

  return v5;
}

- (id)old_description
{
  if (!self)
  {
    return &stru_287D36338;
  }

  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return [v3 stringWithFormat:@"(%@*)%p {\n%@\n}", v5, self, objc_msgSend(MEMORY[0x277CCACA8], "tsu_stringByIndentingString:", String(self->mStore))];
}

- (void)enumeratePropertiesAndObjectsUsingBlock:(id)a3
{
  v5 = [(TSSPropertyMap *)self allProperties];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__TSSPropertyMap_enumeratePropertiesAndObjectsUsingBlock___block_invoke;
  v6[3] = &unk_279D47E48;
  v6[4] = self;
  v6[5] = a3;
  [v5 enumeratePropertiesUsingBlock:v6];
}

uint64_t __58__TSSPropertyMap_enumeratePropertiesAndObjectsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = String(a2);
  v8 = [*(a1 + 32) boxedObjectForProperty:a2];
  v9 = *(v6 + 16);

  return v9(v6, a2, v7, v8, a3);
}

- (NSString)description
{
  if (!self)
  {
    return &stru_287D36338;
  }

  v3 = [MEMORY[0x277CBEB18] array];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__TSSPropertyMap_description__block_invoke;
  v5[3] = &unk_279D47E70;
  v5[4] = v3;
  [(TSSPropertyMap *)self enumeratePropertiesAndObjectsUsingBlock:v5];
  [v3 sortUsingComparator:&__block_literal_global_19];
  return [objc_msgSend(v3 componentsJoinedByString:{@"$", "tsu_stringByExpandingTableFormatting"}];
}

uint64_t __29__TSSPropertyMap_description__block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277CCACA8];
  v8 = String(a2);
  v9 = p_summaryFromPropertyValue(0, a4);
  v10 = [v7 stringWithFormat:@"%@|%@|%@", v8, v9, p_infoStringFromPropertyValue(a3)];

  return [v6 addObject:v10];
}

- (void)addValuesFromPropertyMap:(id)a3
{
  if (a3)
  {
    String(self->mStore, *(a3 + 1));
  }
}

- (void)removeValuesFromPropertyMap:(id)a3
{
  if (a3)
  {
    String(self->mStore, *(a3 + 1), v3);
  }
}

- (BOOL)containsAnyPropertyInProperties:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__TSSPropertyMap_containsAnyPropertyInProperties___block_invoke;
  v5[3] = &unk_279D47E98;
  v5[4] = self;
  v5[5] = &v6;
  [a3 enumeratePropertiesUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

BOOL __50__TSSPropertyMap_containsAnyPropertyInProperties___block_invoke(uint64_t a1, unsigned __int16 a2, _BYTE *a3)
{
  result = String(*(*(a1 + 32) + 8), a2);
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)removeValuesForProperties:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a3 count];
  if (v5)
  {
    v6 = v5;
    if (v5 < 0x21)
    {
      v7 = v10;
    }

    else
    {
      v7 = malloc_type_calloc(v5, 4uLL, 0x100004052888210uLL);
      if (!v7)
      {
        return;
      }
    }

    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__TSSPropertyMap_removeValuesForProperties___block_invoke;
    v8[3] = &unk_279D47EC0;
    v8[4] = v9;
    v8[5] = v7;
    [a3 enumeratePropertiesUsingBlock:v8];
    String(self->mStore, v7, v6);
    if (v7 != v10)
    {
      free(v7);
    }

    _Block_object_dispose(v9, 8);
  }
}

uint64_t __44__TSSPropertyMap_removeValuesForProperties___block_invoke(uint64_t result, int a2)
{
  v2 = *(result + 40);
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *(v2 + 4 * v4) = a2;
  return result;
}

- (void)filterWithProperties:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v6 = [(TSSPropertyMap *)self allProperties];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__TSSPropertyMap_filterWithProperties___block_invoke;
  v7[3] = &unk_279D47EE8;
  v7[4] = a3;
  v7[5] = self;
  [v6 enumeratePropertiesUsingBlock:v7];
}

void __39__TSSPropertyMap_filterWithProperties___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (([*(a1 + 32) containsProperty:a2] & 1) == 0)
  {
    v4 = *(*(a1 + 40) + 8);

    String(v4, v2);
  }
}

- (void)minusPropertyMap:(id)a3
{
  if (a3)
  {
    String(self->mStore, *(a3 + 1), v3);
  }
}

- (id)diff:(id)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = TSUObjectReferenceDescription();
  v7 = TSUObjectReferenceDescription();
  return [v5 stringWithFormat:@"\nDiff %@ vs. %@:\n%@\n", v6, v7, String(self->mStore, *(a3 + 1), 1)];
}

- (id)diffOnlyDifferences:(id)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = TSUObjectReferenceDescription();
  v7 = TSUObjectReferenceDescription();
  return [v5 stringWithFormat:@"\nDiff %@ vs. %@:\n%@\n", v6, v7, String(self->mStore, *(a3 + 1), 0)];
}

- (id)propertyMapByAddingValuesFromPropertyMap:(id)a3
{
  v4 = [(TSSPropertyMap *)self copy];
  v5 = v4;
  if (a3)
  {
    [v4 addValuesFromPropertyMap:a3];
  }

  return v5;
}

- (id)propertyMapByRemovingValuesFromPropertyMap:(id)a3
{
  v4 = [(TSSPropertyMap *)self copy];
  v5 = v4;
  if (a3)
  {
    [v4 removeValuesFromPropertyMap:a3];
  }

  return v5;
}

- (id)propertyMapByRemovingValuesForProperties:(id)a3
{
  v4 = [(TSSPropertyMap *)self copy];
  v5 = v4;
  if (a3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__TSSPropertyMap_propertyMapByRemovingValuesForProperties___block_invoke;
    v7[3] = &unk_279D47F10;
    v7[4] = v4;
    [a3 enumeratePropertiesUsingBlock:v7];
  }

  return v5;
}

- (TSSPropertyMap)propertyMapWithProperties:(id)a3
{
  v4 = [(TSSPropertyMap *)self copy];
  [(TSSPropertyMap *)v4 filterWithProperties:a3];
  return v4;
}

- (void)pSetArrayOfObjects:(id)a3[9] forProperty:(int)a4
{
  v4 = *&a4;
  v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:a3 count:9];
  [(TSSPropertyMap *)self setObject:v6 forProperty:v4];
}

- (void)pSetArrayOfFloats:(double)a3[9] forProperty:(int)a4
{
  v4 = *&a4;
  v7 = 0;
  v9 = *MEMORY[0x277D85DE8];
  do
  {
    *&v8[v7 * 8] = [MEMORY[0x277CCABB0] numberWithDouble:a3[v7]];
    ++v7;
  }

  while (v7 != 9);
  [(TSSPropertyMap *)self pSetArrayOfObjects:v8 forProperty:v4];
}

@end