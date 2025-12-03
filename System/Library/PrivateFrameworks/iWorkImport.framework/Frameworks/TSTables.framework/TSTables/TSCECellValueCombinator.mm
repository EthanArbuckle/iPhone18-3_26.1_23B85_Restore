@interface TSCECellValueCombinator
- (void)addValuesForDimension:(id)dimension;
- (void)enumerateCombinationsWithBlock:(id)block;
@end

@implementation TSCECellValueCombinator

- (void)addValuesForDimension:(id)dimension
{
  dimensionCopy = dimension;
  if (dimensionCopy)
  {
    valuesForDimension = self->_valuesForDimension;
    if (!valuesForDimension)
    {
      v8 = objc_opt_new();
      v9 = self->_valuesForDimension;
      self->_valuesForDimension = v8;

      valuesForDimension = self->_valuesForDimension;
    }

    objc_msgSend_addObject_(valuesForDimension, v4, dimensionCopy, v5, v6);
  }
}

- (void)enumerateCombinationsWithBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (objc_msgSend_count(self->_valuesForDimension, v4, v5, v6, v7))
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v13 = objc_msgSend_count(self->_valuesForDimension, v9, v10, v11, v12);
    v17 = objc_msgSend_initWithCapacity_(v8, v14, v13, v15, v16);
    v18 = objc_opt_new();
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v19 = self->_valuesForDimension;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v57, v61, 16);
    if (v25)
    {
      v26 = *v58;
      v27 = 1;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v58 != v26)
          {
            objc_enumerationMutation(v19);
          }

          v29 = objc_msgSend_count(*(*(&v57 + 1) + 8 * i), v21, v22, v23, v24);
          objc_msgSend_addObject_(v17, v30, v18, v31, v32);
          v27 *= v29;
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v57, v61, 16);
      }

      while (v25);

      if (!v27)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v27 = 1;
    }

    for (j = 0; j != v27; ++j)
    {
      v41 = objc_msgSend_count(self->_valuesForDimension, v33, v34, v35, v36);
      v42 = j;
      if (v41 - 1 >= 0)
      {
        do
        {
          v43 = objc_msgSend_objectAtIndex_(self->_valuesForDimension, v38, --v41, v39, v40);
          v48 = objc_msgSend_count(v43, v44, v45, v46, v47);
          v49 = v42 / v48;
          v53 = objc_msgSend_objectAtIndex_(v43, v50, v42 % v48, v51, v52);
          objc_msgSend_replaceObjectAtIndex_withObject_(v17, v54, v41, v53, v55);

          v42 = v49;
        }

        while (v41 > 0);
      }

      blockCopy[2](blockCopy, v17);
    }

LABEL_16:
  }
}

@end