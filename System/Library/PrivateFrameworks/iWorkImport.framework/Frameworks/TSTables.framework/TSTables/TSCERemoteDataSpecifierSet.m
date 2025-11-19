@interface TSCERemoteDataSpecifierSet
+ (TSCERemoteDataSpecifierSet)setWithSpecifier:(id)a3;
+ (TSCERemoteDataSpecifierSet)setWithSpecifierArray:(id)a3;
+ (TSCERemoteDataSpecifierSet)setWithSpecifiers:(id)a3;
+ (id)set;
- (BOOL)containsColdSpecifiers;
- (BOOL)containsSpecifier:(id)a3;
- (BOOL)containsSpecifiersFromSet:(id)a3;
- (BOOL)containsSpecifiersWithSymbol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TSCERemoteDataSpecifierSet)init;
- (TSCERemoteDataSpecifierSet)initWithSpecifierArray:(id)a3;
- (TSCERemoteDataSpecifierSet)initWithSpecifiers:(id)a3;
- (id).cxx_construct;
- (id)allSpecifiers;
- (id)allSymbols;
- (id)coldSpecifierArrayForYear:(unint64_t)a3;
- (id)coldSpecifierSet;
- (id)coldSpecifiers;
- (id)coldSpecifiersForYear:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)hotSpecifierSet;
- (id)p_description:(BOOL)a3;
- (id)setByIntersectingWithSet:(id)a3;
- (id)setByIntersectingWithSymbolsOfSet:(id)a3;
- (id)setByRemovingSpecifiersFromSet:(id)a3;
- (id)setByRemovingSpecifiersWithSymbols:(id)a3;
- (id)setOfSpecifiersContainedInSet:(id)a3;
- (id)setOfSpecifiersNotContainedInSet:(id)a3;
- (id)setOfSpecifiersPassingTest:(id)a3;
- (id)setOfSpecifiersWithDate:(id)a3;
- (id)setOfSpecifiersWithSymbol:(id)a3;
- (id)sortedArrayOfSpecifiers;
- (id)yearsReferenced;
- (unint64_t)p_coldSpecifierCount;
- (void)enumerateSpecifiersWithBlock:(id)a3;
- (void)insertSpecifier:(id)a3;
- (void)insertSpecifiersFromArray:(id)a3;
- (void)insertSpecifiersFromSet:(id)a3;
- (void)p_enumerateYearSetsWithBlock:(id)a3;
- (void)removeAllSpecifiers;
- (void)removeSpecifier:(id)a3;
- (void)removeSpecifiersFromArray:(id)a3;
- (void)removeSpecifiersFromSet:(id)a3;
@end

@implementation TSCERemoteDataSpecifierSet

+ (id)set
{
  v2 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithSpecifiers_(v2, v3, 0, v4, v5);

  return v6;
}

+ (TSCERemoteDataSpecifierSet)setWithSpecifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v5, v3, v6, v7);
  v12 = objc_msgSend_initWithSpecifiers_(v4, v9, v8, v10, v11);

  return v12;
}

+ (TSCERemoteDataSpecifierSet)setWithSpecifiers:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithSpecifiers_(v4, v5, v3, v6, v7);

  return v8;
}

+ (TSCERemoteDataSpecifierSet)setWithSpecifierArray:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithSpecifierArray_(v4, v5, v3, v6, v7);

  return v8;
}

- (void)p_enumerateYearSetsWithBlock:(id)a3
{
  v4 = a3;
  p_first_node = &self->_coldDataByYear.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    v6 = 0;
    v4[2](v4, p_first_node[2].__next_, p_first_node[3].__next_, &v6);
  }

  while ((v6 & 1) == 0);
}

- (unint64_t)p_coldSpecifierCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2213D0FD8;
  v6[3] = &unk_278464428;
  v6[4] = &v7;
  objc_msgSend_p_enumerateYearSetsWithBlock_(self, a2, v6, v2, v3);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (TSCERemoteDataSpecifierSet)init
{
  v6.receiver = self;
  v6.super_class = TSCERemoteDataSpecifierSet;
  v2 = [(TSCERemoteDataSpecifierSet *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    hotData = v2->_hotData;
    v2->_hotData = v3;
  }

  return v2;
}

- (TSCERemoteDataSpecifierSet)initWithSpecifiers:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_init(self, v5, v6, v7, v8);
  if (v9)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v4;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v22, v26, 16);
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = sub_2213D1224(v9, v15);
          objc_msgSend_addObject_(v16, v17, v15, v18, v19, v22);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v20, &v22, v26, 16);
      }

      while (v12);
    }
  }

  return v9;
}

- (TSCERemoteDataSpecifierSet)initWithSpecifierArray:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_init(self, v5, v6, v7, v8);
  if (v9)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v4;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v22, v26, 16);
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = sub_2213D1224(v9, v15);
          objc_msgSend_addObject_(v16, v17, v15, v18, v19, v22);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v20, &v22, v26, 16);
      }

      while (v12);
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_2213D1544;
  v24 = sub_2213D1554;
  v6 = objc_msgSend_allocWithZone_(TSCERemoteDataSpecifierSet, a2, a3, v3, v4);
  v25 = objc_msgSend_init(v6, v7, v8, v9, v10);
  objc_msgSend_unionSet_(*(v21[5] + 48), v11, self->_hotData, v12, v13);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2213D155C;
  v19[3] = &unk_278464428;
  v19[4] = &v20;
  objc_msgSend_p_enumerateYearSetsWithBlock_(self, v14, v19, v15, v16);
  v17 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = v5;
  if (v5 && (v11 = objc_msgSend_count(*(v5 + 48), v6, v7, v8, v9), v11 == objc_msgSend_count(self->_hotData, v12, v13, v14, v15)) && v10[4] == self->_coldDataByYear.__table_.__size_ && objc_msgSend_isEqualToSet_(self->_hotData, v16, v10[6], v17, v18) && (objc_msgSend_yearsReferenced(self, v19, v20, v21, v22), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend_yearsReferenced(v10, v24, v25, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), isEqualToIndexSet = objc_msgSend_isEqualToIndexSet_(v23, v29, v28, v30, v31), v28, v23, (isEqualToIndexSet & 1) != 0))
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 1;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_2213D17F0;
    v38[3] = &unk_278464450;
    v39 = v10;
    v40 = &v41;
    objc_msgSend_p_enumerateYearSetsWithBlock_(self, v33, v38, v34, v35);
    v36 = *(v42 + 24);

    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v36 = 0;
  }

  return v36 & 1;
}

- (void)insertSpecifier:(id)a3
{
  v8 = a3;
  v4 = sub_2213D1224(self, v8);
  objc_msgSend_addObject_(v4, v5, v8, v6, v7);
}

- (void)removeSpecifier:(id)a3
{
  v8 = a3;
  v4 = sub_2213D1224(self, v8);
  objc_msgSend_removeObject_(v4, v5, v8, v6, v7);
}

- (void)insertSpecifiersFromArray:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = sub_2213D1224(self, v9);
        objc_msgSend_addObject_(v10, v11, v9, v12, v13, v15);
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v14, &v15, v19, 16);
    }

    while (v6);
  }
}

- (void)removeSpecifiersFromArray:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = sub_2213D1224(self, v9);
        objc_msgSend_removeObject_(v10, v11, v9, v12, v13, v15);
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v14, &v15, v19, 16);
    }

    while (v6);
  }
}

- (void)insertSpecifiersFromSet:(id)a3
{
  v4 = a3;
  hotData = self->_hotData;
  v10 = objc_msgSend_hotData(v4, v6, v7, v8, v9);
  objc_msgSend_unionSet_(hotData, v11, v10, v12, v13);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2213D1DA4;
  v17[3] = &unk_278464478;
  v17[4] = self;
  objc_msgSend_p_enumerateYearSetsWithBlock_(v4, v14, v17, v15, v16);
}

- (void)removeSpecifiersFromSet:(id)a3
{
  v4 = a3;
  hotData = self->_hotData;
  v10 = objc_msgSend_hotData(v4, v6, v7, v8, v9);
  objc_msgSend_minusSet_(hotData, v11, v10, v12, v13);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2213D1EF0;
  v17[3] = &unk_278464478;
  v17[4] = self;
  objc_msgSend_p_enumerateYearSetsWithBlock_(v4, v14, v17, v15, v16);
}

- (void)removeAllSpecifiers
{
  objc_msgSend_removeAllObjects(self->_hotData, a2, v2, v3, v4);

  sub_2211A89A4(&self->_coldDataByYear);
}

- (BOOL)containsSpecifier:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isCold(v4, v5, v6, v7, v8) && (objc_msgSend_containsColdSpecifiers(self, v9, v10, v11, v12) & 1) == 0)
  {
    v17 = 0;
  }

  else
  {
    v13 = sub_2213D1224(self, v4);
    v17 = objc_msgSend_containsObject_(v13, v14, v4, v15, v16);
  }

  return v17;
}

- (BOOL)containsSpecifiersFromSet:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_hotData(v4, v5, v6, v7, v8);
  isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v9, v10, self->_hotData, v11, v12);

  if (isSubsetOfSet)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 1;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2213D2144;
    v19[3] = &unk_278464450;
    v19[4] = self;
    v19[5] = &v20;
    objc_msgSend_p_enumerateYearSetsWithBlock_(v4, v14, v19, v15, v16);
    v17 = *(v21 + 24);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

- (BOOL)containsSpecifiersWithSymbol:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = self->_hotData;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v31, v35, 16);
  if (v11)
  {
    v12 = *v32;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = objc_msgSend_symbol(*(*(&v31 + 1) + 8 * v13), v7, v8, v9, v10);
        isEqualToString = objc_msgSend_isEqualToString_(v14, v15, v4, v16, v17);

        if (isEqualToString)
        {

          v22 = 1;
          goto LABEL_11;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v31, v35, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2213D23F8;
  v24[3] = &unk_278464450;
  v25 = v4;
  v26 = &v27;
  objc_msgSend_p_enumerateYearSetsWithBlock_(self, v19, v24, v20, v21);
  v22 = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
LABEL_11:

  return v22 & 1;
}

- (BOOL)containsColdSpecifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2213D2620;
  v6[3] = &unk_278464428;
  v6[4] = &v7;
  objc_msgSend_p_enumerateYearSetsWithBlock_(self, a2, v6, v2, v3);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)allSpecifiers
{
  if (objc_msgSend_containsColdSpecifiers(self, a2, v2, v3, v4))
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_2213D1544;
    v28 = sub_2213D1554;
    v10 = MEMORY[0x277CBEB18];
    v11 = objc_msgSend_allObjects(self->_hotData, v6, v7, v8, v9);
    v29 = objc_msgSend_arrayWithArray_(v10, v12, v11, v13, v14);

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2213D27E4;
    v23[3] = &unk_278464428;
    v23[4] = &v24;
    objc_msgSend_p_enumerateYearSetsWithBlock_(self, v15, v23, v16, v17);
    v21 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v18, v25[5], v19, v20);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v21 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB98], v6, self->_hotData, v8, v9);
  }

  return v21;
}

- (id)coldSpecifiers
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_2213D1544;
  v19 = sub_2213D1554;
  v20 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2213D29A4;
  v14[3] = &unk_278464428;
  v14[4] = &v15;
  objc_msgSend_p_enumerateYearSetsWithBlock_(self, v6, v14, v7, v8);
  v12 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v9, v16[5], v10, v11);
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (id)coldSpecifiersForYear:(unint64_t)a3
{
  v4 = sub_2213D1894(&self->_coldDataByYear.__table_.__bucket_list_.__ptr_, a3);
  if (v4)
  {
    objc_msgSend_setWithSet_(MEMORY[0x277CBEB98], v3, v4, v5, v6);
  }

  else
  {
    objc_msgSend_set(MEMORY[0x277CBEB98], v3, 0, v5, v6);
  }
  v7 = ;

  return v7;
}

- (id)coldSpecifierArrayForYear:(unint64_t)a3
{
  v3 = sub_2213D1894(&self->_coldDataByYear.__table_.__bucket_list_.__ptr_, a3);
  if (v3)
  {
    objc_msgSend_allObjects(v3, v4, v5, v6, v7);
  }

  else
  {
    objc_msgSend_array(MEMORY[0x277CBEA60], v4, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)sortedArrayOfSpecifiers
{
  v29[5] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_allSpecifiers(self, a2, v2, v3, v4);
  v8 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v6, @"symbol", 1, v7);
  v11 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v9, @"year", 0, v10, v8);
  v29[1] = v11;
  v14 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v12, @"month", 0, v13);
  v29[2] = v14;
  v17 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v15, @"day", 0, v16);
  v29[3] = v17;
  v20 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v18, @"attribute", 1, v19);
  v29[4] = v20;
  v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v29, 5, v22);
  v27 = objc_msgSend_sortedArrayUsingDescriptors_(v5, v24, v23, v25, v26);

  return v27;
}

- (id)allSymbols
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_2213D1544;
  v19 = sub_2213D1554;
  v20 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2, v3, v4);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2213D2DD4;
  v14[3] = &unk_2784644A0;
  v14[4] = &v15;
  objc_msgSend_enumerateSpecifiersWithBlock_(self, v6, v14, v7, v8);
  v12 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB98], v9, v16[5], v10, v11);
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (void)enumerateSpecifiersWithBlock:(id)a3
{
  v4 = a3;
  objc_msgSend_enumerateObjectsUsingBlock_(self->_hotData, v5, v4, v6, v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2213D2F14;
  v12[3] = &unk_2784644C8;
  v8 = v4;
  v13 = v8;
  objc_msgSend_p_enumerateYearSetsWithBlock_(self, v9, v12, v10, v11);
}

- (id)coldSpecifierSet
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_2213D1544;
  v18 = sub_2213D1554;
  v3 = objc_opt_class();
  v19 = objc_msgSend_set(v3, v4, v5, v6, v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2213D3044;
  v13[3] = &unk_278464428;
  v13[4] = &v14;
  objc_msgSend_p_enumerateYearSetsWithBlock_(self, v8, v13, v9, v10);
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (id)hotSpecifierSet
{
  if (objc_msgSend_containsColdSpecifiers(self, a2, v2, v3, v4))
  {
    v10 = objc_opt_class();
    v15 = objc_msgSend_hotSpecifiers(self, v11, v12, v13, v14);
    v19 = objc_msgSend_setWithSpecifiers_(v10, v16, v15, v17, v18);
  }

  else
  {
    v19 = objc_msgSend_copy(self, v6, v7, v8, v9);
  }

  return v19;
}

- (id)yearsReferenced
{
  if (objc_msgSend_containsColdSpecifiers(self, a2, v2, v3, v4))
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_2213D1544;
    v24 = sub_2213D1554;
    v25 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v6, v7, v8, v9);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2213D32C4;
    v19[3] = &unk_278464428;
    v19[4] = &v20;
    objc_msgSend_p_enumerateYearSetsWithBlock_(self, v10, v19, v11, v12);
    v13 = objc_alloc(MEMORY[0x277CCAA78]);
    v17 = objc_msgSend_initWithIndexSet_(v13, v14, v21[5], v15, v16);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v17 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v6, v7, v8, v9);
  }

  return v17;
}

- (id)setOfSpecifiersContainedInSet:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_copy(self, v5, v6, v7, v8);
  v10 = v9[6];
  v15 = objc_msgSend_hotData(v4, v11, v12, v13, v14);
  objc_msgSend_intersectSet_(v10, v16, v15, v17, v18);

  v23 = objc_msgSend_yearsReferenced(v4, v19, v20, v21, v22);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2213D3428;
  v30[3] = &unk_2784644F0;
  v31 = v23;
  v24 = v4;
  v32 = v24;
  v25 = v23;
  objc_msgSend_p_enumerateYearSetsWithBlock_(v9, v26, v30, v27, v28);

  return v9;
}

- (id)setOfSpecifiersNotContainedInSet:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_copy(self, v5, v6, v7, v8);
  v10 = v9[6];
  v15 = objc_msgSend_hotData(v4, v11, v12, v13, v14);
  objc_msgSend_minusSet_(v10, v16, v15, v17, v18);

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2213D35E4;
  v24[3] = &unk_278464478;
  v19 = v4;
  v25 = v19;
  objc_msgSend_p_enumerateYearSetsWithBlock_(v9, v20, v24, v21, v22);

  return v9;
}

- (id)setByIntersectingWithSet:(id)a3
{
  v5 = objc_msgSend_setOfSpecifiersContainedInSet_(self, a2, a3, v3, v4);

  return v5;
}

- (id)setByRemovingSpecifiersFromSet:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_copy(self, v5, v6, v7, v8);
  objc_msgSend_removeSpecifiersFromSet_(v9, v10, v4, v11, v12);

  return v9;
}

- (id)setByRemovingSpecifiersWithSymbols:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2213D37D4;
  v11[3] = &unk_278464518;
  v12 = v4;
  v5 = v4;
  v9 = objc_msgSend_setOfSpecifiersPassingTest_(self, v6, v11, v7, v8);

  return v9;
}

- (id)setOfSpecifiersPassingTest:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_2213D1544;
  v40 = sub_2213D1554;
  v5 = objc_opt_class();
  v41 = objc_msgSend_set(v5, v6, v7, v8, v9);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = self->_hotData;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v28, v42, 16);
  if (v12)
  {
    v13 = *v29;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v28 + 1) + 8 * v14);
      if (v4[2](v4, v15, (v33 + 3)))
      {
        objc_msgSend_addObject_(*(v37[5] + 48), v16, v15, v17, v18);
      }

      if (v33[3])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, &v28, v42, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((v33[3] & 1) == 0)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2213D3AF4;
    v24[3] = &unk_278464540;
    v26 = &v36;
    v25 = v4;
    v27 = &v32;
    objc_msgSend_p_enumerateYearSetsWithBlock_(self, v19, v24, v20, v21);
  }

  v22 = v37[5];
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v22;
}

- (id)setByIntersectingWithSymbolsOfSet:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_allSymbols(v4, v5, v6, v7, v8);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2213D3D94;
  v16[3] = &unk_278464518;
  v17 = v9;
  v10 = v9;
  v14 = objc_msgSend_setOfSpecifiersPassingTest_(self, v11, v16, v12, v13);

  return v14;
}

- (id)setOfSpecifiersWithSymbol:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2213D3EB4;
  v11[3] = &unk_278464518;
  v12 = v4;
  v5 = v4;
  v9 = objc_msgSend_setOfSpecifiersPassingTest_(self, v6, v11, v7, v8);

  return v9;
}

- (id)setOfSpecifiersWithDate:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2213D3FD0;
  v11[3] = &unk_278464518;
  v12 = v4;
  v5 = v4;
  v9 = objc_msgSend_setOfSpecifiersPassingTest_(self, v6, v11, v7, v8);

  return v9;
}

- (id)p_description:(BOOL)a3
{
  v5 = a3;
  v44 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, @"<{ ", v3, v4);
  v12 = objc_msgSend_count(self, v8, v9, v10, v11);
  v17 = v12;
  if (v12)
  {
    if (v5 && v12 >= 6)
    {
      v18 = objc_msgSend_count(self->_hotData, v13, v14, v15, v16);
      v23 = objc_msgSend_p_coldSpecifierCount(self, v19, v20, v21, v22);
      objc_msgSend_appendFormat_(v7, v24, @"<%tu specifiers: %tu hot, %tu cold>", v25, v26, v17, v18, v23);
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v30 = objc_msgSend_allSpecifiers(self, v13, v14, v15, v16);
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v39, v43, 16);
      if (v35)
      {
        v36 = *v40;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v40 != v36)
            {
              objc_enumerationMutation(v30);
            }

            objc_msgSend_appendFormat_(v7, v32, @"%@ ", v33, v34, *(*(&v39 + 1) + 8 * i));
          }

          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v39, v43, 16);
        }

        while (v35);
      }
    }
  }

  else
  {
    objc_msgSend_appendFormat_(v7, v13, @"(empty) ", v15, v16);
  }

  objc_msgSend_appendString_(v7, v27, @" }>", v28, v29);

  return v7;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end