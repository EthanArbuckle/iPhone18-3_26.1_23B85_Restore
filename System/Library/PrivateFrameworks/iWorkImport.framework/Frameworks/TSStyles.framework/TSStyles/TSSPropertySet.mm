@interface TSSPropertySet
+ (TSSPropertySet)propertySetWithArray:(id)array;
+ (id)p_mutableIndexSetWithFirstProperty:(int)property argumentList:(char *)list;
+ (id)propertySet;
+ (id)propertySetFromUnionOfPropertySets:(id)sets;
- (BOOL)containsProperties:(id)properties;
- (BOOL)intersectsProperties:(id)properties;
- (BOOL)isEqual:(id)equal;
- (NSSet)propertyStrings;
- (TSSPropertySet)init;
- (TSSPropertySet)initWithIndexSet:(id)set;
- (TSSPropertySet)initWithPropertySet:(id)set;
- (_NSRange)propertyRange;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)propertySetByAddingPropertiesFromSet:(id)set;
- (id)propertySetByIntersectingWithPropertySet:(id)set;
- (id)propertySetByRemovingPropertiesFromSet:(id)set;
- (void)enumeratePropertiesUsingBlock:(id)block;
@end

@implementation TSSPropertySet

- (TSSPropertySet)initWithIndexSet:(id)set
{
  setCopy = set;
  if (!setCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSPropertySet initWithIndexSet:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertySet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 24, 0, "invalid nil value for '%{public}s'", "indexSet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v17.receiver = self;
  v17.super_class = TSSPropertySet;
  v14 = [(TSSPropertySet *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->mIndexSet, set);
  }

  return v15;
}

- (TSSPropertySet)init
{
  v4 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], a2, v2);
  v6 = objc_msgSend_initWithIndexSet_(self, v5, v4);

  return v6;
}

+ (id)p_mutableIndexSetWithFirstProperty:(int)property argumentList:(char *)list
{
  if (!property)
  {
    goto LABEL_6;
  }

  v5 = objc_alloc(MEMORY[0x277CCAB58]);
  for (i = objc_msgSend_initWithIndex_(v5, v6, property); ; objc_msgSend_addIndex_(i, v7, v10))
  {
    listCopy = list;
    list += 8;
    v10 = *listCopy;
    if (!v10)
    {
      break;
    }
  }

  if (!i)
  {
LABEL_6:
    i = objc_opt_new();
  }

  return i;
}

- (TSSPropertySet)initWithPropertySet:(id)set
{
  setCopy = set;
  if (!setCopy)
  {
    sub_276CE17B8();
  }

  v7 = setCopy;
  v8 = setCopy[1];
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSPropertySet initWithPropertySet:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertySet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 65, 0, "invalid nil value for '%{public}s'", "other->mIndexSet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    v8 = v7[1];
  }

  v16 = objc_msgSend_copy(v8, v5, v6);
  v18 = objc_msgSend_initWithIndexSet_(self, v17, v16);

  return v18;
}

+ (id)propertySet
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

+ (TSSPropertySet)propertySetWithArray:(id)array
{
  v29 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v4, v5);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = arrayCopy;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v24, v28, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = objc_msgSend_tss_propertyValue(*(*(&v24 + 1) + 8 * i), v10, v11, v24);
        if (v15)
        {
          objc_msgSend_addIndex_(v6, v10, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v24, v28, 16);
    }

    while (v12);
  }

  v16 = objc_alloc(objc_opt_class());
  v19 = objc_msgSend_copy(v6, v17, v18);
  v21 = objc_msgSend_initWithIndexSet_(v16, v20, v19);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)propertySetFromUnionOfPropertySets:(id)sets
{
  v27 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v4, v5);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = setsCopy;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v22, v26, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_addIndexes_(v6, v10, *(*(*(&v22 + 1) + 8 * i) + 8), v22);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v22, v26, 16);
    }

    while (v11);
  }

  v14 = objc_alloc(objc_opt_class());
  v17 = objc_msgSend_copy(v6, v15, v16);
  v19 = objc_msgSend_initWithIndexSet_(v14, v18, v17);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)containsProperties:(id)properties
{
  if (properties && (v3 = *(properties + 1)) != 0)
  {
    return MEMORY[0x2821F9670](self->mIndexSet, sel_containsIndexes_, v3);
  }

  else
  {
    return 1;
  }
}

- (_NSRange)propertyRange
{
  if (objc_msgSend_count(self->mIndexSet, a2, v2))
  {
    Index = objc_msgSend_firstIndex(self->mIndexSet, v4, v5);
    v9 = objc_msgSend_lastIndex(self->mIndexSet, v7, v8) - Index + 1;
  }

  else
  {
    v9 = 0;
    Index = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = Index;
  result.length = v9;
  result.location = v10;
  return result;
}

- (void)enumeratePropertiesUsingBlock:(id)block
{
  blockCopy = block;
  mIndexSet = self->mIndexSet;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276CBAEA8;
  v8[3] = &unk_27A6EF210;
  v9 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateIndexesUsingBlock_(mIndexSet, v7, v8);
}

- (BOOL)intersectsProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = propertiesCopy;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (propertiesCopy && objc_msgSend_count(propertiesCopy, v5, v6))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_276CBAFAC;
    v11[3] = &unk_27A6EF238;
    v13 = &v14;
    v12 = v7;
    objc_msgSend_enumeratePropertiesUsingBlock_(self, v8, v11);
  }

  v9 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)propertySetByAddingPropertiesFromSet:(id)set
{
  mIndexSet = self->mIndexSet;
  setCopy = set;
  v7 = objc_msgSend_mutableCopy(mIndexSet, v5, v6);
  v8 = setCopy[1];

  objc_msgSend_addIndexes_(v7, v9, v8);
  v10 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithIndexSet_(v10, v11, v7);

  return v12;
}

- (id)propertySetByRemovingPropertiesFromSet:(id)set
{
  mIndexSet = self->mIndexSet;
  setCopy = set;
  v7 = objc_msgSend_mutableCopy(mIndexSet, v5, v6);
  v8 = setCopy[1];

  objc_msgSend_removeIndexes_(v7, v9, v8);
  v10 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithIndexSet_(v10, v11, v7);

  return v12;
}

- (id)propertySetByIntersectingWithPropertySet:(id)set
{
  setCopy = set;
  v7 = objc_msgSend_count(self, v5, v6);
  if (v7 >= objc_msgSend_count(setCopy, v8, v9))
  {
    selfCopy = setCopy;
  }

  else
  {
    selfCopy = self;
  }

  v11 = selfCopy->mIndexSet;
  v14 = objc_msgSend_count(self, v12, v13);
  if (v14 >= objc_msgSend_count(setCopy, v15, v16))
  {
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = setCopy;
  }

  v18 = selfCopy2->mIndexSet;
  v21 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v19, v20);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = sub_276CBB450;
  v32 = &unk_27A6EF260;
  v33 = v18;
  v34 = v21;
  v22 = v21;
  v23 = v18;
  objc_msgSend_enumerateIndexesUsingBlock_(v11, v24, &v29);
  v25 = objc_alloc(objc_opt_class());
  v27 = objc_msgSend_initWithIndexSet_(v25, v26, v22, v29, v30, v31, v32);

  return v27;
}

- (NSSet)propertyStrings
{
  v4 = MEMORY[0x277CBEB58];
  v5 = objc_msgSend_count(self, a2, v2);
  v7 = objc_msgSend_setWithCapacity_(v4, v6, v5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276CBB564;
  v11[3] = &unk_27A6EF288;
  v8 = v7;
  v12 = v8;
  objc_msgSend_enumeratePropertiesUsingBlock_(self, v9, v11);

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSSMutablePropertySet alloc];

  return MEMORY[0x2821F9670](v4, sel_initWithPropertySet_, self);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqual = objc_msgSend_isEqual_(self->mIndexSet, v5, equalCopy[1]);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (id)description
{
  v3 = MEMORY[0x277D811A8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_count(self, v5, v6);
  v9 = objc_msgSend_descriptionWithObject_class_format_(v3, v8, self, v4, @" count = %zd", v7);;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_276CBB768;
  v16[3] = &unk_27A6EF288;
  v17 = v9;
  v10 = v9;
  objc_msgSend_enumeratePropertiesUsingBlock_(self, v11, v16);
  v14 = objc_msgSend_descriptionString(v10, v12, v13);

  return v14;
}

@end