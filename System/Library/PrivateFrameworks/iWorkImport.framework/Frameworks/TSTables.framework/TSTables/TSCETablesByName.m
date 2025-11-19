@interface TSCETablesByName
+ (id)containerNameForTable:(id)a3;
+ (id)tableNameForTable:(id)a3;
- (BOOL)resolverNameIsUsed:(id)a3;
- (TSCETablesByName)initWithCalcEngine:(id)a3;
- (id)anyTableForTableName:(id)a3;
- (id)description;
- (id)resolverMatchingName:(id)a3;
- (id)resolversMatchingPrefix:(id)a3;
- (id)tableForTableName:(id)a3 containerName:(id)a4;
- (void)addTable:(id)a3;
- (void)dropTable:(id)a3;
- (void)dropTable:(id)a3 withTableName:(id)a4 withContainerName:(id)a5;
- (void)renameTable:(id)a3 fromName:(id)a4;
- (void)willClose;
@end

@implementation TSCETablesByName

- (TSCETablesByName)initWithCalcEngine:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TSCETablesByName;
  v5 = [(TSCETablesByName *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_calcEngine, v4);
    v7 = objc_opt_new();
    tablesByTableNameByContainerName = v6->_tablesByTableNameByContainerName;
    v6->_tablesByTableNameByContainerName = v7;

    v9 = objc_opt_new();
    tableNameChangeDistributor = v6->_tableNameChangeDistributor;
    v6->_tableNameChangeDistributor = v9;
  }

  return v6;
}

- (void)willClose
{
  objc_msgSend_removeAllObjects(self->_tablesByTableNameByContainerName, a2, v2, v3, v4);
  tableNameChangeDistributor = self->_tableNameChangeDistributor;

  objc_msgSend_disconnect(tableNameChangeDistributor, v6, v7, v8, v9);
}

+ (id)containerNameForTable:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSCETablesByName containerNameForTable:]", v5, v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETablesByName.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 78, 0, "invalid nil value for '%{public}s'", "table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = objc_msgSend_sheetName(v7, v3, v4, v5, v6);
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_2834BADA0;
  }

  v22 = v21;

  return v21;
}

+ (id)tableNameForTable:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSCETablesByName tableNameForTable:]", v5, v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETablesByName.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 86, 0, "invalid nil value for '%{public}s'", "table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = objc_msgSend_tableName(v7, v3, v4, v5, v6);
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_2834BADA0;
  }

  v22 = v21;

  return v21;
}

- (void)addTable:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v35 = v4;
    v7 = objc_msgSend_containerNameForTable_(TSCETablesByName, v4, v4, v5, v6);
    v11 = objc_msgSend_tableNameForTable_(TSCETablesByName, v8, v35, v9, v10);
    v19 = objc_msgSend_objectForKey_(self->_tablesByTableNameByContainerName, v12, v7, v13, v14);
    if (!v19)
    {
      v19 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v15, v16, v17, v18);
      objc_msgSend_setObject_forKey_(self->_tablesByTableNameByContainerName, v20, v19, v7, v21);
    }

    v26 = objc_msgSend_objectForKey_(v19, v15, v11, v17, v18);
    if (!v26)
    {
      v26 = objc_msgSend_set(MEMORY[0x277CBEB58], v22, v23, v24, v25);
      objc_msgSend_setObject_forKey_(v19, v27, v26, v11, v28);
    }

    objc_msgSend_addObject_(v26, v22, v35, v24, v25);
    v33 = objc_msgSend_resolverUID(v35, v29, v30, v31, v32);
    objc_msgSend_didAddTableName_forTableUID_(self->_tableNameChangeDistributor, v34, v11, v33, v34);

    v4 = v35;
  }
}

- (void)dropTable:(id)a3 withTableName:(id)a4 withContainerName:(id)a5
{
  v35 = a3;
  v8 = a4;
  v12 = a5;
  if (v35)
  {
    v13 = objc_msgSend_objectForKey_(self->_tablesByTableNameByContainerName, v9, v12, v10, v11);
    v17 = v13;
    if (v13)
    {
      v22 = objc_msgSend_objectForKey_(v13, v14, v8, v15, v16);
      if (v22)
      {
        v23 = objc_msgSend_resolverUID(v35, v18, v19, v20, v21);
        objc_msgSend_didRemoveTableName_forTableUID_(self->_tableNameChangeDistributor, v24, v8, v23, v24);
        objc_msgSend_removeObject_(v22, v25, v35, v26, v27);
        if (!objc_msgSend_count(v22, v28, v29, v30, v31))
        {
          objc_msgSend_removeObjectForKey_(v17, v32, v8, v33, v34);
        }
      }
    }
  }
}

- (void)dropTable:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    v7 = objc_msgSend_containerNameForTable_(TSCETablesByName, v4, v4, v5, v6);
    v11 = objc_msgSend_tableNameForTable_(TSCETablesByName, v8, v13, v9, v10);
    objc_msgSend_dropTable_withTableName_withContainerName_(self, v12, v13, v11, v7);

    v4 = v13;
  }
}

- (void)renameTable:(id)a3 fromName:(id)a4
{
  v25 = a3;
  v9 = a4;
  if (v25)
  {
    v10 = objc_msgSend_containerNameForTable_(TSCETablesByName, v6, v25, v7, v8);
    v14 = objc_msgSend_tableNameForTable_(TSCETablesByName, v11, v25, v12, v13);
    objc_msgSend_dropTable_withTableName_withContainerName_(self, v15, v25, v9, v10);
    objc_msgSend_addTable_(self, v16, v25, v17, v18);
    v23 = objc_msgSend_resolverUID(v25, v19, v20, v21, v22);
    objc_msgSend_didChangeTableName_fromTableName_forTableUID_(self->_tableNameChangeDistributor, v24, v14, v9, v23, v24);
  }
}

- (id)tableForTableName:(id)a3 containerName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = &stru_2834BADA0;
  }

  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = &stru_2834BADA0;
  }

  v13 = objc_msgSend_objectForKey_(self->_tablesByTableNameByContainerName, v8, v11, v9, v10);
  v17 = v13;
  if (v13)
  {
    v18 = objc_msgSend_objectForKey_(v13, v14, v12, v15, v16);
    if (objc_msgSend_count(v18, v19, v20, v21, v22))
    {
      v27 = objc_msgSend_anyObject(v18, v23, v24, v25, v26);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)description
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v35 = self;
  v8 = objc_msgSend_stringWithFormat_(v3, v5, @"%@<%p>:\n", v6, v7, v4, self);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = self->_tablesByTableNameByContainerName;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v47, v53, 16);
  if (v32)
  {
    v34 = *v48;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        v14 = objc_msgSend_objectForKey_(v35->_tablesByTableNameByContainerName, v10, v13, v11, v12);
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v38 = v14;
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v15, &v43, v52, 16);
        if (v19)
        {
          v37 = *v44;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v44 != v37)
              {
                objc_enumerationMutation(v38);
              }

              v21 = *(*(&v43 + 1) + 8 * j);
              v22 = objc_msgSend_objectForKey_(v38, v16, v21, v17, v18);
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v23 = v22;
              v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v39, v51, 16);
              if (v28)
              {
                v29 = *v40;
                do
                {
                  for (k = 0; k != v28; ++k)
                  {
                    if (*v40 != v29)
                    {
                      objc_enumerationMutation(v23);
                    }

                    objc_msgSend_appendFormat_(v8, v25, @"  ContainerName: '%@' TableName: '%@' Table: %@\n", v26, v27, v13, v21, *(*(&v39 + 1) + 8 * k));
                  }

                  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v39, v51, 16);
                }

                while (v28);
              }
            }

            v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v16, &v43, v52, 16);
          }

          while (v19);
        }
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v47, v53, 16);
    }

    while (v32);
  }

  return v8;
}

- (id)anyTableForTableName:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_tablesByTableNameByContainerName;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v28, v32, 16);
  if (v10)
  {
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = objc_msgSend_objectForKey_(self->_tablesByTableNameByContainerName, v7, *(*(&v28 + 1) + 8 * i), v8, v9, v28);
        v17 = objc_msgSend_objectForKey_(v13, v14, v4, v15, v16);
        if (objc_msgSend_count(v17, v18, v19, v20, v21))
        {
          v26 = objc_msgSend_anyObject(v17, v22, v23, v24, v25);

          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v28, v32, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0;
LABEL_11:

  return v26;
}

- (id)resolverMatchingName:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = objc_msgSend_tableForTableName_containerName_(self, v5, v4, 0, v6);
  if (!v10)
  {
    v11 = objc_msgSend_objectForKey_(self->_tablesByTableNameByContainerName, v7, &stru_2834BADA0, v8, v9);
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v17 = objc_msgSend_documentLocale(WeakRetained, v13, v14, v15, v16);

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v18 = v11;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v37, v41, 16);
    if (v22)
    {
      v10 = 0;
      v23 = *v38;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v37 + 1) + 8 * i);
          if (objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v17, v20, v4, v25, v21, v37))
          {
            if (v10)
            {

              goto LABEL_17;
            }

            v27 = objc_msgSend_objectForKey_(v18, v20, v25, v26, v21);
            if (objc_msgSend_count(v27, v28, v29, v30, v31) == 1)
            {
              v10 = objc_msgSend_anyObject(v27, v32, v33, v34, v35);
            }

            else
            {
              v10 = 0;
            }
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v37, v41, 16);
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_17:
      v10 = 0;
    }
  }

  return v10;
}

- (id)resolversMatchingPrefix:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v45 = objc_msgSend_objectForKey_(self->_tablesByTableNameByContainerName, v6, &stru_2834BADA0, v7, v8);
  if (objc_msgSend_length(v4, v9, v10, v11, v12))
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v22 = objc_msgSend_documentLocale(WeakRetained, v18, v19, v20, v21);
    v27 = objc_msgSend_locale(v22, v23, v24, v25, v26);

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v28 = v45;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v46, v50, 16);
    if (v32)
    {
      v33 = *v47;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v47 != v33)
          {
            objc_enumerationMutation(v28);
          }

          v35 = *(*(&v46 + 1) + 8 * i);
          if (objc_msgSend_tsce_hasCaseInsensitivePrefix_withLocale_(v35, v30, v4, v27, v31))
          {
            v39 = objc_msgSend_tableForTableName_containerName_(self, v30, v35, &stru_2834BADA0, v31);
            if (v39)
            {
              objc_msgSend_addObject_(v5, v36, v39, v37, v38);
            }
          }
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v46, v50, 16);
      }

      while (v32);
    }
  }

  else
  {
    v40 = objc_msgSend_allValues(v45, v13, v14, v15, v16);
    objc_msgSend_addObjectsFromArray_(v5, v41, v40, v42, v43);
  }

  return v5;
}

- (BOOL)resolverNameIsUsed:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8 = objc_msgSend_objectForKey_(self->_tablesByTableNameByContainerName, v5, &stru_2834BADA0, v6, v7);
  v12 = objc_msgSend_objectForKey_(v8, v9, v4, v10, v11);
  v17 = objc_msgSend_count(v12, v13, v14, v15, v16);

  if (v17)
  {
    LOBYTE(v18) = 1;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v8;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v27, v31, 16);
    if (v18)
    {
      v24 = *v28;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v19);
          }

          if (!objc_msgSend_caseInsensitiveCompare_(*(*(&v27 + 1) + 8 * i), v21, v4, v22, v23, v27))
          {
            LOBYTE(v18) = 1;
            goto LABEL_13;
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v27, v31, 16);
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v18;
}

@end