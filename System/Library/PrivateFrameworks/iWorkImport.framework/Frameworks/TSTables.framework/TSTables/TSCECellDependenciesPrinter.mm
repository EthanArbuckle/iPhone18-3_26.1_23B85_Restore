@interface TSCECellDependenciesPrinter
+ (id)stringForOwnerKind:(unsigned __int16)kind;
- (TSCECellDependenciesPrinter)init;
- (id)description;
- (void)addDependencyRow:(id)row;
@end

@implementation TSCECellDependenciesPrinter

- (TSCECellDependenciesPrinter)init
{
  v8.receiver = self;
  v8.super_class = TSCECellDependenciesPrinter;
  v2 = [(TSCECellDependenciesPrinter *)&v8 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_setShowCleanCells_(v2, v3, 1, v4, v5);
  }

  return v6;
}

- (void)addDependencyRow:(id)row
{
  rowCopy = row;
  if (rowCopy)
  {
    if (objc_msgSend_dirtyPrecedentCount(rowCopy, v4, v5, v6, v7))
    {
      dirtyCellDependencyRows = self->_dirtyCellDependencyRows;
      p_dirtyCellDependencyRows = &self->_dirtyCellDependencyRows;
      v12 = dirtyCellDependencyRows;
      if (dirtyCellDependencyRows)
      {
LABEL_8:
        objc_msgSend_addObject_(v12, v8, rowCopy, v10, v11);
        goto LABEL_9;
      }
    }

    else
    {
      if (!objc_msgSend_showCleanCells(self, v8, v9, v10, v11))
      {
        goto LABEL_9;
      }

      cleanCellDependencyRows = self->_cleanCellDependencyRows;
      p_dirtyCellDependencyRows = &self->_cleanCellDependencyRows;
      v12 = cleanCellDependencyRows;
      if (cleanCellDependencyRows)
      {
        goto LABEL_8;
      }
    }

    v16 = objc_opt_new();
    v17 = *p_dirtyCellDependencyRows;
    *p_dirtyCellDependencyRows = v16;

    v12 = *p_dirtyCellDependencyRows;
    goto LABEL_8;
  }

LABEL_9:
}

- (id)description
{
  v83 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_dirtyCellDependencyRows, a2, v2, v3, v4) || objc_msgSend_numDirtyCells(self, v6, v7, v8, v9) || objc_msgSend_count(self->_cleanCellDependencyRows, v6, v7, v8, v9) && objc_msgSend_showCleanCells(self, v68, v69, v70, v71))
  {
    v10 = MEMORY[0x277CCAB68];
    v11 = objc_msgSend_ownerName(self, v6, v7, v8, v9);
    v16 = objc_msgSend_numDirtyCells(self, v12, v13, v14, v15);
    v20 = objc_msgSend_stringWithFormat_(v10, v17, @"---Cell dependencies for %@ (%lu dirty cells):\n", v18, v19, v11, v16);

    if (objc_msgSend_count(self->_dirtyCellDependencyRows, v21, v22, v23, v24))
    {
      objc_msgSend_sortedArrayUsingSelector_(self->_dirtyCellDependencyRows, v25, sel_tsce_numericCompare_, v27, v28);
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v29 = v78 = 0u;
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v77, v82, 16);
      if (v35)
      {
        v36 = *v78;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v78 != v36)
            {
              objc_enumerationMutation(v29);
            }

            v41 = objc_msgSend_stringForDependencyRow(*(*(&v77 + 1) + 8 * i), v31, v32, v33, v34);
            if (v41)
            {
              objc_msgSend_appendString_(v20, v38, v41, v39, v40);
              objc_msgSend_appendString_(v20, v42, @"\n", v43, v44);
            }
          }

          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v77, v82, 16);
        }

        while (v35);
      }
    }

    if (objc_msgSend_count(self->_cleanCellDependencyRows, v25, v26, v27, v28) && objc_msgSend_showCleanCells(self, v45, v46, v47, v48))
    {
      objc_msgSend_sortedArrayUsingSelector_(self->_cleanCellDependencyRows, v49, sel_tsce_numericCompare_, v50, v51);
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v52 = v74 = 0u;
      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v73, v81, 16);
      if (v58)
      {
        v59 = *v74;
        do
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v74 != v59)
            {
              objc_enumerationMutation(v52);
            }

            v64 = objc_msgSend_stringForDependencyRow(*(*(&v73 + 1) + 8 * j), v54, v55, v56, v57);
            if (v64)
            {
              objc_msgSend_appendString_(v20, v61, v64, v62, v63);
              objc_msgSend_appendString_(v20, v65, @"\n", v66, v67);
            }
          }

          v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v54, &v73, v81, 16);
        }

        while (v58);
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)stringForOwnerKind:(unsigned __int16)kind
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%d", v3, v4, kind);

  return v5;
}

@end