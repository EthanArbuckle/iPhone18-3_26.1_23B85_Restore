@interface TSSPropertyMap
+ (TSSPropertyMap)propertyMapWithDictionary:(id)dictionary;
+ (TSSPropertyMap)propertyMapWithPropertyMap:(id)map;
+ (id)propertyMap;
- (BOOL)containsAnyPropertyInProperties:(id)properties;
- (BOOL)isEqual:(id)equal;
- (NSArray)allKeys;
- (NSString)description;
- (TSSPropertyMap)init;
- (TSSPropertyMap)initWithPropertyMap:(id)map;
- (TSSPropertyMap)propertyMapWithProperties:(id)properties;
- (TSSPropertySet)allProperties;
- (_NSRange)propertyRange;
- (double)doubleValueForProperty:(int)property;
- (float)floatValueForProperty:(int)property;
- (id)boxedObjectForProperty:(int)property;
- (id)copyWithZone:(_NSZone *)zone;
- (id)diff:(id)diff;
- (id)diffOnlyDifferences:(id)differences;
- (id)objectForProperty:(int)property;
- (id)old_description;
- (id)propertyMapByAddingValuesFromPropertyMap:(id)map;
- (id)propertyMapByRemovingValuesForProperties:(id)properties;
- (id)propertyMapByRemovingValuesFromPropertyMap:(id)map;
- (int)intValueForProperty:(int)property;
- (unint64_t)count;
- (void)addValuesFromPropertyMap:(id)map;
- (void)dealloc;
- (void)enumerateDataPropertiesUsingBlock:(id)block;
- (void)enumeratePropertiesAndObjectsUsingBlock:(id)block;
- (void)filterWithProperties:(id)properties;
- (void)minusPropertyMap:(id)map;
- (void)p_getAllKeys:(int *)keys;
- (void)removeValueForProperty:(int)property;
- (void)removeValuesForProperties:(id)properties;
- (void)removeValuesFromPropertyMap:(id)map;
@end

@implementation TSSPropertyMap

+ (id)propertyMap
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (TSSPropertyMap)propertyMapWithPropertyMap:(id)map
{
  v3 = objc_msgSend_copy(map, a2, map);

  return v3;
}

+ (TSSPropertyMap)propertyMapWithDictionary:(id)dictionary
{
  v4 = objc_alloc_init(self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276CAFA74;
  v7[3] = &unk_27A6EEF00;
  v7[4] = v4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(dictionary, v5, v7);
  return v4;
}

- (TSSPropertyMap)init
{
  v5.receiver = self;
  v5.super_class = TSSPropertyMap;
  v2 = [(TSSPropertyMap *)&v5 init];
  if (v2)
  {
    v3 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
    if (v3)
    {
      *v3 = 0;
      *(v3 + 1) = 0;
    }

    v2->mStore = v3;
  }

  return v2;
}

- (TSSPropertyMap)initWithPropertyMap:(id)map
{
  v8.receiver = self;
  v8.super_class = TSSPropertyMap;
  v4 = [(TSSPropertyMap *)&v8 init];
  if (v4)
  {
    if (map)
    {
      v5 = sub_276CAFBC4(*(map + 1));
      v4->mStore = v5;
      if (!v5)
      {

        return 0;
      }
    }

    else
    {
      v6 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
      if (v6)
      {
        *v6 = 0;
        *(v6 + 1) = 0;
      }

      v4->mStore = v6;
    }
  }

  return v4;
}

- (void)dealloc
{
  sub_276CAFFB0(self->mStore);
  v3.receiver = self;
  v3.super_class = TSSPropertyMap;
  [(TSSPropertyMap *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  if (v7)
  {
    v8 = sub_276CAFBC4(self->mStore);
    v7[1] = v8;
    if (!v8)
    {

      return 0;
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();

  return MEMORY[0x2821F9670](self, sel_isEqualToPropertyMap_, v4);
}

- (unint64_t)count
{
  mStore = self->mStore;
  if (mStore)
  {
    return *mStore;
  }

  else
  {
    return 0;
  }
}

- (NSArray)allKeys
{
  v21[1] = *MEMORY[0x277D85DE8];
  mStore = self->mStore;
  if (mStore && (v3 = *mStore) != 0)
  {
    v4 = (MEMORY[0x28223BE20])();
    v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = MEMORY[0x28223BE20](v4);
    v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = *(v7 + 8);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        v13 = 0;
        v14 = v11[1];
        v15 = 1;
        do
        {
          *&v6[4 * v13] = *(v14 + 16 * v13 + 8);
          v13 = v15;
          v16 = v12 > v15++;
        }

        while (v16);
      }
    }

    v17 = 0;
    v18 = 1;
    do
    {
      *&v10[8 * v17] = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v8, *&v6[4 * v17]);
      v17 = v18;
      v16 = v3 > v18++;
    }

    while (v16);
    result = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v10, v3);
  }

  else
  {
    result = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (TSSPropertySet)allProperties
{
  v23[1] = *MEMORY[0x277D85DE8];
  mStore = self->mStore;
  if (mStore && (v4 = *mStore) != 0)
  {
    MEMORY[0x28223BE20](self);
    v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = objc_msgSend_propertySet(TSSMutablePropertySet, v8, v9);
    v12 = self->mStore;
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        v14 = 0;
        v15 = *(v12 + 1);
        v16 = 1;
        do
        {
          *&v7[4 * v14] = *(v15 + 16 * v14 + 8);
          v14 = v16;
          v17 = v13 > v16++;
        }

        while (v17);
      }
    }

    v18 = 0;
    v19 = 1;
    do
    {
      objc_msgSend_addProperty_(v11, v10, *&v7[4 * v18]);
      v18 = v19;
      v17 = v4 > v19++;
    }

    while (v17);
    v20 = *MEMORY[0x277D85DE8];
    return v11;
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];

    return objc_msgSend_propertySet(TSSPropertySet, a2, v2);
  }
}

- (void)p_getAllKeys:(int *)keys
{
  mStore = self->mStore;
  if (mStore)
  {
    v4 = *mStore;
    if (*mStore)
    {
      v5 = 0;
      v6 = *(mStore + 1);
      v7 = 1;
      do
      {
        keys[v5] = *(v6 + 16 * v5 + 8);
        v5 = v7;
      }

      while (v4 > v7++);
    }
  }
}

- (id)old_description
{
  if (!self)
  {
    return &stru_2885E7A20;
  }

  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = MEMORY[0x277CCACA8];
  v9 = sub_276CB059C(self->mStore, v7, v8);
  v11 = objc_msgSend_tsu_stringByIndentingString_(v6, v10, v9);
  return objc_msgSend_stringWithFormat_(v3, v12, @"(%@*)%p {\n%@\n}", v5, self, v11);
}

- (void)enumeratePropertiesAndObjectsUsingBlock:(id)block
{
  v5 = objc_msgSend_allProperties(self, a2, block);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276CB0700;
  v7[3] = &unk_27A6EEF28;
  v7[4] = self;
  v7[5] = block;
  objc_msgSend_enumeratePropertiesUsingBlock_(v5, v6, v7);
}

- (void)enumerateDataPropertiesUsingBlock:(id)block
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276CB0A58;
  v3[3] = &unk_27A6EEF50;
  v3[4] = self;
  v3[5] = block;
  objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(self, a2, v3);
}

- (NSString)description
{
  if (!self)
  {
    return &stru_2885E7A20;
  }

  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276CB0C74;
  v12[3] = &unk_27A6EEF78;
  v12[4] = v4;
  objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(self, v5, v12);
  objc_msgSend_sortUsingComparator_(v4, v6, &unk_2885E6300);
  v8 = objc_msgSend_componentsJoinedByString_(v4, v7, @"$");
  return objc_msgSend_tsu_stringByExpandingTableFormatting(v8, v9, v10);
}

- (id)boxedObjectForProperty:(int)property
{
  result = sub_276CB3BF4(self->mStore, property);
  if (result)
  {

    return sub_276CB3794(result, v4, v5, v6);
  }

  return result;
}

- (id)objectForProperty:(int)property
{
  result = sub_276CB3BF4(self->mStore, property);
  if (result)
  {

    return sub_276CB35C8(result, v4);
  }

  return result;
}

- (int)intValueForProperty:(int)property
{
  v3 = sub_276CB3BF4(self->mStore, property);
  if (!v3)
  {
    return 0x80000000;
  }

  return sub_276CB3034(v3, v4);
}

- (float)floatValueForProperty:(int)property
{
  v3 = sub_276CB3BF4(self->mStore, property);
  if (!v3)
  {
    return INFINITY;
  }

  return sub_276CB3210(v3, v4, v5);
}

- (double)doubleValueForProperty:(int)property
{
  v3 = sub_276CB3BF4(self->mStore, property);
  if (!v3)
  {
    return INFINITY;
  }

  return sub_276CB33F0(v3, v4);
}

- (void)addValuesFromPropertyMap:(id)map
{
  if (map)
  {
    sub_276CB172C(self->mStore, *(map + 1));
  }
}

- (void)removeValuesFromPropertyMap:(id)map
{
  if (map)
  {
    sub_276CB1914(self->mStore, *(map + 1), v3);
  }
}

- (BOOL)containsAnyPropertyInProperties:(id)properties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276CB1BD8;
  v5[3] = &unk_27A6EEFC0;
  v5[4] = self;
  v5[5] = &v6;
  objc_msgSend_enumeratePropertiesUsingBlock_(properties, a2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (_NSRange)propertyRange
{
  mStore = self->mStore;
  if (mStore && (v3 = *(mStore + 1)) != 0 && (v4 = *mStore) != 0 && (v5 = *(v3 + 16 * v4 - 8), v5 != 1))
  {
    v7 = *(v3 + 8);
    v6 = v5 - v7 + 1;
  }

  else
  {
    v6 = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result.length = v6;
  result.location = v7;
  return result;
}

- (void)removeValueForProperty:(int)property
{
  mStore = self->mStore;
  propertyCopy = property;
  sub_276CB1E1C(mStore, &propertyCopy, 1uLL);
}

- (void)removeValuesForProperties:(id)properties
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_count(properties, a2, properties);
  if (v5)
  {
    v7 = v5;
    if (v5 < 0x21)
    {
      v8 = v12;
    }

    else
    {
      v8 = malloc_type_calloc(v5, 4uLL, 0x100004052888210uLL);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_276CB1E00;
    v10[3] = &unk_27A6EEFE8;
    v10[4] = v11;
    v10[5] = v8;
    objc_msgSend_enumeratePropertiesUsingBlock_(properties, v6, v10);
    sub_276CB1E1C(self->mStore, v8, v7);
    if (v8 != v12)
    {
      free(v8);
    }

    _Block_object_dispose(v11, 8);
  }

LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)filterWithProperties:(id)properties
{
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_allProperties(self, v6, v7);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276CB2060;
  v10[3] = &unk_27A6EF010;
  v10[4] = properties;
  v10[5] = self;
  objc_msgSend_enumeratePropertiesUsingBlock_(v8, v9, v10);
  objc_autoreleasePoolPop(v5);
}

- (void)minusPropertyMap:(id)map
{
  if (map)
  {
    sub_276CB1914(self->mStore, *(map + 1), v3);
  }
}

- (id)diff:(id)diff
{
  v5 = MEMORY[0x277CCACA8];
  v6 = TSUObjectReferenceDescription();
  v7 = TSUObjectReferenceDescription();
  v8 = sub_276CB2148(self->mStore, *(diff + 1), 1);
  return objc_msgSend_stringWithFormat_(v5, v9, @"\nDiff %@ vs. %@:\n%@\n", v6, v7, v8);
}

- (id)diffOnlyDifferences:(id)differences
{
  v5 = MEMORY[0x277CCACA8];
  v6 = TSUObjectReferenceDescription();
  v7 = TSUObjectReferenceDescription();
  v8 = sub_276CB2148(self->mStore, *(differences + 1), 0);
  return objc_msgSend_stringWithFormat_(v5, v9, @"\nDiff %@ vs. %@:\n%@\n", v6, v7, v8);
}

- (id)propertyMapByAddingValuesFromPropertyMap:(id)map
{
  v4 = objc_msgSend_copy(self, a2, map);
  v6 = v4;
  if (map)
  {
    objc_msgSend_addValuesFromPropertyMap_(v4, v5, map);
  }

  return v6;
}

- (id)propertyMapByRemovingValuesFromPropertyMap:(id)map
{
  v4 = objc_msgSend_copy(self, a2, map);
  v6 = v4;
  if (map)
  {
    objc_msgSend_removeValuesFromPropertyMap_(v4, v5, map);
  }

  return v6;
}

- (id)propertyMapByRemovingValuesForProperties:(id)properties
{
  v4 = objc_msgSend_copy(self, a2, properties);
  v6 = v4;
  if (properties)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_276CB26A8;
    v8[3] = &unk_27A6EF038;
    v8[4] = v4;
    objc_msgSend_enumeratePropertiesUsingBlock_(properties, v5, v8);
  }

  return v6;
}

- (TSSPropertyMap)propertyMapWithProperties:(id)properties
{
  v4 = objc_msgSend_copy(self, a2, properties);
  objc_msgSend_filterWithProperties_(v4, v5, properties);
  return v4;
}

@end