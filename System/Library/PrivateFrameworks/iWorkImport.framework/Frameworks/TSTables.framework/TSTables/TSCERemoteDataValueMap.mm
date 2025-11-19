@interface TSCERemoteDataValueMap
+ (TSCERemoteDataValueMap)valueMapWithSpecifier:(id)a3 value:(id)a4;
+ (id)valueMap;
- (BOOL)containsValueForAllSpecifiersInSet:(id)a3;
- (BOOL)containsValueForSpecifier:(id)a3;
- (TSCERemoteDataValueMap)init;
- (TSCERemoteDataValueMap)initWithData:(id)a3;
- (id).cxx_construct;
- (id)allSpecifiers;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromArchive:(const void *)a3;
- (id)mapForSingleSpecifier:(id)a3;
- (id)mapForSpecifiersInSet:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (id)updateWithValuesFromMap:(id)a3 overwriteValues:(BOOL)a4;
- (id)valueForSpecifier:(id)a3;
- (int64_t)count;
- (void)addValuesFromMap:(id)a3;
- (void)enumerateSpecifiersAndValuesWithBlock:(id)a3;
- (void)p_enumerateYearMapsWithBlock:(id)a3;
- (void)p_saveMap:(id)a3 toArchive:(void *)a4;
- (void)removeAllValues;
- (void)removeValueForSpecifier:(id)a3;
- (void)removeValuesForSpecifierSet:(id)a3;
- (void)saveToArchive:(void *)a3;
- (void)setValue:(id)a3 forSpecifier:(id)a4;
@end

@implementation TSCERemoteDataValueMap

+ (id)valueMap
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (TSCERemoteDataValueMap)valueMapWithSpecifier:(id)a3 value:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(objc_opt_class());
  objc_msgSend_setObject_forKeyedSubscript_(v7, v8, v6, v5, v9);

  return v7;
}

- (void)p_enumerateYearMapsWithBlock:(id)a3
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

- (TSCERemoteDataValueMap)init
{
  v6.receiver = self;
  v6.super_class = TSCERemoteDataValueMap;
  v2 = [(TSCERemoteDataValueMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    data = v2->_data;
    v2->_data = v3;
  }

  return v2;
}

- (TSCERemoteDataValueMap)initWithData:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_init(self, v5, v6, v7, v8);
  v10 = v9;
  if (v9)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2215A2D64;
    v15[3] = &unk_278467220;
    v16 = v9;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v11, v15, v12, v13);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TSCERemoteDataValueMap);
  v8 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v5, self->_data, v6, v7);
  data = v4->_data;
  v4->_data = v8;

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2215A2F7C;
  v15[3] = &unk_278467248;
  v10 = v4;
  v16 = v10;
  objc_msgSend_p_enumerateYearMapsWithBlock_(self, v11, v15, v12, v13);

  return v10;
}

- (int64_t)count
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = objc_msgSend_count(self->_data, a2, v2, v3, v4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2215A30D8;
  v11[3] = &unk_278467270;
  v11[4] = &v12;
  objc_msgSend_p_enumerateYearMapsWithBlock_(self, v6, v11, v7, v8);
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (void)setValue:(id)a3 forSpecifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = sub_2215A2DF4(self, v6, 1);
  objc_msgSend_setObject_forKey_(v7, v8, v10, v6, v9);
}

- (void)removeValueForSpecifier:(id)a3
{
  v8 = a3;
  v4 = sub_2215A2DF4(self, v8, 0);
  objc_msgSend_removeObjectForKey_(v4, v5, v8, v6, v7);
}

- (void)addValuesFromMap:(id)a3
{
  v4 = a3;
  data = self->_data;
  v10 = objc_msgSend_data(v4, v6, v7, v8, v9);
  objc_msgSend_addEntriesFromDictionary_(data, v11, v10, v12, v13);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2215A3320;
  v17[3] = &unk_278467248;
  v17[4] = self;
  objc_msgSend_p_enumerateYearMapsWithBlock_(v4, v14, v17, v15, v16);
}

- (id)updateWithValuesFromMap:(id)a3 overwriteValues:(BOOL)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_2215A35A4;
  v22 = sub_2215A35B4;
  v23 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v7, v8, v9, v10);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2215A35BC;
  v16[3] = &unk_278467298;
  v17 = a4;
  v16[4] = self;
  v16[5] = &v18;
  objc_msgSend_enumerateSpecifiersAndValuesWithBlock_(v6, v11, v16, v12, v13);
  v14 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v14;
}

- (void)removeValuesForSpecifierSet:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  data = self->_data;
  v10 = objc_msgSend_hotSpecifiers(v4, v6, v7, v8, v9);
  v15 = objc_msgSend_allObjects(v10, v11, v12, v13, v14);
  objc_msgSend_removeObjectsForKeys_(data, v16, v15, v17, v18);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = objc_msgSend_coldSpecifiers(v4, v19, v20, v21, v22, 0);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v33, v37, 16);
  if (v25)
  {
    v26 = *v34;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v33 + 1) + 8 * i);
        v29 = sub_2215A2DF4(self, v28, 0);
        if (v29)
        {
          objc_msgSend_removeObjectForKey_(v29, v30, v28, v31, v32);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v30, &v33, v37, 16);
    }

    while (v25);
  }
}

- (void)removeAllValues
{
  objc_msgSend_removeAllObjects(self->_data, a2, v2, v3, v4);

  sub_2211A89A4(&self->_coldDataByYear);
}

- (BOOL)containsValueForSpecifier:(id)a3
{
  v4 = a3;
  v5 = sub_2215A2DF4(self, v4, 0);
  if (v5)
  {
    v9 = objc_msgSend_objectForKey_(v5, v6, v4, v7, v8);
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)valueForSpecifier:(id)a3
{
  v4 = a3;
  v5 = sub_2215A2DF4(self, v4, 0);
  if (v5)
  {
    v9 = objc_msgSend_objectForKey_(v5, v6, v4, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)containsValueForAllSpecifiersInSet:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2215A3B0C;
  v7[3] = &unk_2784672C0;
  v7[4] = self;
  v7[5] = &v8;
  objc_msgSend_enumerateSpecifiersWithBlock_(a3, a2, v7, v3, v4);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)mapForSpecifiersInSet:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v10 = objc_msgSend_valueMap(v5, v6, v7, v8, v9);
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = objc_msgSend_count(v4, v11, v12, v13, v14);
  objc_msgSend_hotSpecifierArray(v4, v15, v16, v17, v18);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v19 = v49 = 0u;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v48, v56, 16);
  if (v24)
  {
    v25 = *v49;
LABEL_3:
    v26 = 0;
    while (1)
    {
      if (*v49 != v25)
      {
        objc_enumerationMutation(v19);
      }

      v27 = *(*(&v48 + 1) + 8 * v26);
      v28 = objc_msgSend_objectForKey_(self->_data, v21, v27, v22, v23);
      if (v28)
      {
        objc_msgSend_setObject_forKey_(v10[6], v21, v28, v27, v23);
        v29 = v53[3] - 1;
        v53[3] = v29;
        if (!v29)
        {
          break;
        }
      }

      if (v24 == ++v26)
      {
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v48, v56, 16);
        if (v24)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v34 = objc_msgSend_yearsReferenced(v4, v30, v31, v32, v33);
  if (objc_msgSend_count(v34, v35, v36, v37, v38))
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_2215A3E24;
    v43[3] = &unk_2784672E8;
    v44 = v34;
    v45 = v4;
    v47 = &v52;
    v46 = v10;
    objc_msgSend_p_enumerateYearMapsWithBlock_(self, v39, v43, v40, v41);
  }

  _Block_object_dispose(&v52, 8);

  return v10;
}

- (id)mapForSingleSpecifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v10 = objc_msgSend_valueMap(v5, v6, v7, v8, v9);
  v16 = objc_msgSend_objectForKeyedSubscript_(self, v11, v4, v12, v13);
  if (v16)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v14, v16, v4, v15);
  }

  return v10;
}

- (id)allSpecifiers
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_2215A35A4;
  v20 = sub_2215A35B4;
  v6 = objc_msgSend_allKeys(self->_data, a2, v2, v3, v4);
  v21 = objc_msgSend_setWithSpecifierArray_(TSCERemoteDataSpecifierSet, v7, v6, v8, v9);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2215A4254;
  v15[3] = &unk_278467270;
  v15[4] = &v16;
  objc_msgSend_p_enumerateYearMapsWithBlock_(self, v10, v15, v11, v12);
  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

- (void)enumerateSpecifiersAndValuesWithBlock:(id)a3
{
  v4 = a3;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(self->_data, v5, v4, v6, v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2215A4394;
  v12[3] = &unk_278467310;
  v8 = v4;
  v13 = v8;
  objc_msgSend_p_enumerateYearMapsWithBlock_(self, v9, v12, v10, v11);
}

- (id)objectForKeyedSubscript:(id)a3
{
  v5 = objc_msgSend_valueForSpecifier_(self, a2, a3, v3, v4);

  return v5;
}

- (id)initFromArchive:(const void *)a3
{
  v51 = objc_msgSend_init(self, a2, a3, v3, v4);
  if (v51)
  {
    v9 = *(a3 + 4);
    v10 = v9 ? v9 + 8 : 0;
    v11 = *(a3 + 6);
    if (v11)
    {
      v12 = 8 * v11;
      p_superclass = &OBJC_METACLASS___TSCEFunction_YIELD.superclass;
      v14 = &TSCE::_RemoteDataSpecifierArchive_default_instance_;
      v15 = 0x27845C000uLL;
      v16 = 0x277D81000uLL;
      do
      {
        v17 = *v10;
        v18 = p_superclass + 459;
        if (*(*v10 + 24))
        {
          objc_msgSend_specifierFromArchive_(v18, v6, *(*v10 + 24), v7, v8);
        }

        else
        {
          objc_msgSend_specifierFromArchive_(v18, v6, v14, v7, v8);
        }
        v19 = ;
        v20 = *(v15 + 272);
        v21 = *(v17 + 32);
        v28 = objc_msgSend_currentLocale(*(v16 + 552), v22, v23, v24, v25);
        if (v21)
        {
          objc_msgSend_cellValueWithArchive_locale_(v20, v26, v21, v28, v27);
        }

        else
        {
          objc_msgSend_cellValueWithArchive_locale_(v20, v26, &TSCE::_CellValueArchive_default_instance_, v28, v27);
        }
        v29 = ;

        if (!v29)
        {
          v33 = MEMORY[0x277D81150];
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSCERemoteDataValueMap initFromArchive:]", v31, v32);
          v35 = v15;
          v36 = v14;
          v37 = p_superclass;
          v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataValueMap.mm", v39, v40);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v42, v34, v41, 333, 0, "Failed to unarchive value for %@!", v19);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
          p_superclass = v37;
          v14 = v36;
          v15 = v35;
          v16 = 0x277D81000;
        }

        v47 = sub_2215A2DF4(v51, v19, 1);
        objc_msgSend_setObject_forKey_(v47, v48, v29, v19, v49);

        v10 += 8;
        v12 -= 8;
      }

      while (v12);
    }
  }

  return v51;
}

- (void)p_saveMap:(id)a3 toArchive:(void *)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2215A4650;
  v5[3] = &unk_278467330;
  v5[4] = a4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a3, a2, v5, a4, v4);
}

- (void)saveToArchive:(void *)a3
{
  objc_msgSend_p_saveMap_toArchive_(self, a2, self->_data, a3, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2215A485C;
  v9[3] = &unk_278467358;
  v9[4] = self;
  v9[5] = a3;
  objc_msgSend_p_enumerateYearMapsWithBlock_(self, v6, v9, v7, v8);
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end