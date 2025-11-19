@interface TSTConditionalStyleSet
- (BOOL)containsUidReferences;
- (BOOL)hasBadRefWithUidInfo;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualForInspector:(id)a3;
- (TSTConditionalStyleSet)initWithConditionalStyleSet:(id)a3;
- (TSTConditionalStyleSet)initWithContext:(id)a3 rules:(id)a4;
- (id)copyByClearingUids:(id)a3 containingTableUID:(const TSKUIDStruct *)a4;
- (id)copyByOffsettingRelativeReferencesWithOffset:(TSUColumnRowOffset)a3;
- (id)copyByRemappingHostCellAgnosticOwnerUIDsWithMap:(const void *)a3 rewriteContext:(TSCEFormulaRewriteContext *)a4 error:(BOOL *)a5;
- (id)copyByRemappingOwnerUIDsWithMap:(const void *)a3 rewriteContext:(TSCEFormulaRewriteContext *)a4 error:(BOOL *)a5;
- (id)copyByRepairingBadReferences:(TSCEFormulaRewriteContext *)a3 clearUidHistory:(BOOL)a4;
- (id)copyByReparenting:(id)a3 groupByUID:(const TSKUIDStruct *)a4 rewriteContext:(TSCEFormulaRewriteContext *)a5;
- (id)copyByRewritingWithContext:(TSCEFormulaRewriteContext *)a3 rewriteBlock:(id)a4;
- (id)copyByRewritingWithSpec:(id)a3 inOwner:(id)a4 inCellCoordinate:(TSUCellCoord)a5;
- (id)copyByUpdatingHostCellRef:(const TSCECellRef *)a3;
- (id)copyByUpgradingToLinkedRefAtHostCellRef:(const TSCECellRef *)a3;
- (id)copyToGeometricFormWithRewriteContext:(TSCEFormulaRewriteContext *)a3;
- (id)copyToUidFormForTableInfo:(id)a3 inCellCoordinate:(TSUCellCoord)a4 preserveHostCell:(BOOL)a5;
- (id)copyWithContext:(id)a3;
- (id)description;
- (id)precedentsWithCalcEngine:(id)a3 hostOwnerUID:(const TSKUIDStruct *)a4 hostCellID:(const TSUCellCoord *)a5;
- (id)ruleAtIndex:(unint64_t)a3;
- (id)rulesDescription;
- (unint64_t)hash;
- (void)iterateFormulasWithContext:(TSCEFormulaRewriteContext *)a3 block:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setHostCell:(const TSKUIDStruct *)a3 hostColumnUID:(const TSKUIDStruct *)a4 hostRowUID:(const TSKUIDStruct *)a5;
@end

@implementation TSTConditionalStyleSet

- (TSTConditionalStyleSet)initWithConditionalStyleSet:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_context(v4, v5, v6, v7, v8);
  v12 = objc_msgSend_initWithContext_rules_(self, v10, v9, v4[8], v11);

  return v12;
}

- (TSTConditionalStyleSet)initWithContext:(id)a3 rules:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = TSTConditionalStyleSet;
  v8 = [(TSTConditionalStyleSet *)&v16 initWithContext:v6];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v13 = objc_msgSend_initWithArray_(v9, v10, v7, v11, v12);
    conditionalStyleSetRules = v8->_conditionalStyleSetRules;
    v8->_conditionalStyleSetRules = v13;
  }

  return v8;
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  for (i = 0; i < objc_msgSend_count(self->_conditionalStyleSetRules, v9, v10, v11, v12); ++i)
  {
    v18 = objc_msgSend_objectAtIndex_(self->_conditionalStyleSetRules, v15, i, v16, v17);
    v22 = objc_msgSend_copyWithContext_(v18, v19, v4, v20, v21);

    objc_msgSend_addObject_(v13, v23, v22, v24, v25);
  }

  v26 = objc_alloc(objc_opt_class());
  v29 = objc_msgSend_initWithContext_rules_(v26, v27, v4, v13, v28);

  return v29;
}

- (id)copyByRemappingOwnerUIDsWithMap:(const void *)a3 rewriteContext:(TSCEFormulaRewriteContext *)a4 error:(BOOL *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, a4, a5);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = self->_conditionalStyleSetRules;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v30, v34, 16);
  if (v13)
  {
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = objc_msgSend_copyByRemappingOwnerUIDsWithMap_rewriteContext_error_(*(*(&v30 + 1) + 8 * v15), v12, a3, a4, a5, v30);
        objc_msgSend_addObject_(v9, v17, v16, v18, v19);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v30, v34, 16);
    }

    while (v13);
  }

  v20 = objc_alloc(objc_opt_class());
  v25 = objc_msgSend_context(self, v21, v22, v23, v24);
  v28 = objc_msgSend_initWithContext_rules_(v20, v26, v25, v9, v27);

  return v28;
}

- (id)copyByRemappingHostCellAgnosticOwnerUIDsWithMap:(const void *)a3 rewriteContext:(TSCEFormulaRewriteContext *)a4 error:(BOOL *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, a4, a5);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = self->_conditionalStyleSetRules;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v32, v36, 16);
  if (v13)
  {
    v14 = *v33;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v31 = 0;
        v17 = objc_msgSend_copyByRemappingHostCellAgnosticOwnerUIDsWithMap_rewriteContext_error_(v16, v12, a3, a4, &v31);
        v21 = v17;
        if (v31 == 1)
        {
          if (a5)
          {
            *a5 = 1;
          }

          v29 = 0;
          goto LABEL_13;
        }

        objc_msgSend_addObject_(v9, v18, v17, v19, v20);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v32, v36, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v22 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_context(self, v23, v24, v25, v26);
  v29 = objc_msgSend_initWithContext_rules_(v22, v27, v10, v9, v28);
LABEL_13:

  return v29;
}

- (id)copyByRewritingWithSpec:(id)a3 inOwner:(id)a4 inCellCoordinate:(TSUCellCoord)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12, v13);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = self->_conditionalStyleSetRules;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v35, v39, 16);
  if (v18)
  {
    v19 = *v36;
    do
    {
      v20 = 0;
      do
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = objc_msgSend_copyByRewritingWithSpec_inOwner_inCellCoordinate_(*(*(&v35 + 1) + 8 * v20), v17, v8, v9, *&a5, v35);
        objc_msgSend_addObject_(v14, v22, v21, v23, v24);

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v35, v39, 16);
    }

    while (v18);
  }

  v25 = objc_alloc(objc_opt_class());
  v30 = objc_msgSend_context(self, v26, v27, v28, v29);
  v33 = objc_msgSend_initWithContext_rules_(v25, v31, v30, v14, v32);

  return v33;
}

- (id)copyByOffsettingRelativeReferencesWithOffset:(TSUColumnRowOffset)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, *&a3, v3, v4);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = self->_conditionalStyleSetRules;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v30, v34, 16);
  if (v13)
  {
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_copyByOffsettingRelativeReferencesWithOffset_(*(*(&v30 + 1) + 8 * v15), v10, *&a3, v11, v12, v30);
        objc_msgSend_addObject_(v7, v17, v16, v18, v19);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v30, v34, 16);
    }

    while (v13);
  }

  v20 = objc_alloc(objc_opt_class());
  v25 = objc_msgSend_context(self, v21, v22, v23, v24);
  v28 = objc_msgSend_initWithContext_rules_(v20, v26, v25, v7, v27);

  return v28;
}

- (id)copyByUpgradingToLinkedRefAtHostCellRef:(const TSCECellRef *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, v3, v4);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = self->_conditionalStyleSetRules;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v30, v34, 16);
  if (v13)
  {
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_copyByUpgradingToLinkedRefAtHostCellRef_(*(*(&v30 + 1) + 8 * v15), v10, a3, v11, v12, v30);
        objc_msgSend_addObject_(v7, v17, v16, v18, v19);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v30, v34, 16);
    }

    while (v13);
  }

  v20 = objc_alloc(objc_opt_class());
  v25 = objc_msgSend_context(self, v21, v22, v23, v24);
  v28 = objc_msgSend_initWithContext_rules_(v20, v26, v25, v7, v27);

  return v28;
}

- (id)copyByUpdatingHostCellRef:(const TSCECellRef *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, v3, v4);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = self->_conditionalStyleSetRules;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v30, v34, 16);
  if (v13)
  {
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_copyByUpdatingHostCellRef_(*(*(&v30 + 1) + 8 * v15), v10, a3, v11, v12, v30);
        objc_msgSend_addObject_(v7, v17, v16, v18, v19);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v30, v34, 16);
    }

    while (v13);
  }

  v20 = objc_alloc(objc_opt_class());
  v25 = objc_msgSend_context(self, v21, v22, v23, v24);
  v28 = objc_msgSend_initWithContext_rules_(v20, v26, v25, v7, v27);

  return v28;
}

- (id)copyByRewritingWithContext:(TSCEFormulaRewriteContext *)a3 rewriteBlock:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = self->_conditionalStyleSetRules;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v36, v40, 16);
  v35 = self;
  if (!v16)
  {

LABEL_11:
    v33 = v35;
    goto LABEL_12;
  }

  v17 = 0;
  v18 = *v37;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v37 != v18)
      {
        objc_enumerationMutation(v12);
      }

      v20 = *(*(&v36 + 1) + 8 * i);
      v21 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(v20, v14, a3, v6, v15);
      objc_msgSend_addObject_(v11, v22, v21, v23, v24);

      v17 |= v20 != v21;
    }

    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v36, v40, 16);
  }

  while (v16);

  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

  v25 = objc_alloc(objc_opt_class());
  v30 = objc_msgSend_context(v35, v26, v27, v28, v29);
  v33 = objc_msgSend_initWithContext_rules_(v25, v31, v30, v11, v32);

LABEL_12:
  return v33;
}

- (void)iterateFormulasWithContext:(TSCEFormulaRewriteContext *)a3 block:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_conditionalStyleSetRules;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v13, v18, 16);
  if (v10)
  {
    v11 = *v14;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v7);
      }

      objc_msgSend_iterateFormulasWithContext_shouldStop_block_(*(*(&v13 + 1) + 8 * v12), v9, a3, &v17, v6, v13);
      if (v17)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v13, v18, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)copyByReparenting:(id)a3 groupByUID:(const TSKUIDStruct *)a4 rewriteContext:(TSCEFormulaRewriteContext *)a5
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22148AE2C;
  v6[3] = &unk_2784653E0;
  v6[4] = a4;
  return objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, a2, a5, v6, a5);
}

- (id)copyByClearingUids:(id)a3 containingTableUID:(const TSKUIDStruct *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = self->_conditionalStyleSetRules;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v33, v37, 16);
  if (v16)
  {
    v17 = *v34;
    do
    {
      v18 = 0;
      do
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = objc_msgSend_copyByClearingUids_containingTableUID_(*(*(&v33 + 1) + 8 * v18), v14, v6, a4, v15, v33);
        objc_msgSend_addObject_(v11, v20, v19, v21, v22);

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v33, v37, 16);
    }

    while (v16);
  }

  v23 = objc_alloc(objc_opt_class());
  v28 = objc_msgSend_context(self, v24, v25, v26, v27);
  v31 = objc_msgSend_initWithContext_rules_(v23, v29, v28, v11, v30);

  return v31;
}

- (void)setHostCell:(const TSKUIDStruct *)a3 hostColumnUID:(const TSKUIDStruct *)a4 hostRowUID:(const TSKUIDStruct *)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_conditionalStyleSetRules;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v14, v18, 16);
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_setHostCell_hostColumnUID_hostRowUID_(*(*(&v14 + 1) + 8 * v13++), v10, a3, a4, a5, v14);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v14, v18, 16);
    }

    while (v11);
  }
}

- (id)copyToUidFormForTableInfo:(id)a3 inCellCoordinate:(TSUCellCoord)a4 preserveHostCell:(BOOL)a5
{
  v5 = a5;
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10, v11, v12);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = self->_conditionalStyleSetRules;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v34, v38, 16);
  if (v17)
  {
    v18 = *v35;
    do
    {
      v19 = 0;
      do
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = objc_msgSend_copyToUidFormForTableInfo_inCellCoordinate_preserveHostCell_(*(*(&v34 + 1) + 8 * v19), v16, v8, *&a4, v5, v34);
        objc_msgSend_addObject_(v13, v21, v20, v22, v23);

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v34, v38, 16);
    }

    while (v17);
  }

  v24 = objc_alloc(objc_opt_class());
  v29 = objc_msgSend_context(self, v25, v26, v27, v28);
  v32 = objc_msgSend_initWithContext_rules_(v24, v30, v29, v13, v31);

  return v32;
}

- (id)copyToGeometricFormWithRewriteContext:(TSCEFormulaRewriteContext *)a3
{
  v5 = a3->var0;
  v6 = TSCEFormulaRewriteContext::containingTableUID(a3);
  v9 = objc_msgSend_ownerKindForOwnerUID_(v5, v7, v6, v7, v8);

  if (v9 == 1)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTConditionalStyleSet copyToGeometricFormWithRewriteContext:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConditionalStyleSet.mm", v16, v17);
    v27._lower = TSCEFormulaRewriteContext::containingTableUID(a3);
    v27._upper = v19;
    v20 = TSKUIDStruct::description(&v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v14, v18, 226, 0, "Trying to rewrite a conditional style with a non-conditionalStyleFormulaOwner containing ownerUID: %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  return objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v10, a3, &unk_2834A86E8, v12);
}

- (id)copyByRepairingBadReferences:(TSCEFormulaRewriteContext *)a3 clearUidHistory:(BOOL)a4
{
  v7 = a3->var0;
  v8 = TSCEFormulaRewriteContext::containingTableUID(a3);
  v11 = objc_msgSend_ownerKindForOwnerUID_(v7, v9, v8, v9, v10);

  if (v11 == 1)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTConditionalStyleSet copyByRepairingBadReferences:clearUidHistory:]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConditionalStyleSet.mm", v18, v19);
    v31._lower = TSCEFormulaRewriteContext::containingTableUID(a3);
    v31._upper = v21;
    v22 = TSKUIDStruct::description(&v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v23, v16, v20, 235, 0, "Trying to rewrite a conditional style with a non-conditionalStyleFormulaOwner containing ownerUID: %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_22148B6E8;
  v29[3] = &unk_278465A38;
  v30 = a4;
  return objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v12, a3, v29, v14);
}

- (BOOL)containsUidReferences
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_conditionalStyleSetRules;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_msgSend_containsUidReferences(*(*(&v12 + 1) + 8 * i), v4, v5, v6, v7, v12))
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v12, v16, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (BOOL)hasBadRefWithUidInfo
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_conditionalStyleSetRules;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_msgSend_hasBadRefWithUidInfo(*(*(&v12 + 1) + 8 * i), v4, v5, v6, v7, v12))
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v12, v16, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)precedentsWithCalcEngine:(id)a3 hostOwnerUID:(const TSKUIDStruct *)a4 hostCellID:(const TSUCellCoord *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v13 = v8;
  if (v8)
  {
    v14 = objc_msgSend_emptyReferenceSetWrapper(v8, v9, v10, v11, v12);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = self->_conditionalStyleSetRules;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v28, v32, 16);
    if (v21)
    {
      v22 = *v29;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v15);
          }

          v24 = *(*(&v28 + 1) + 8 * i);
          v25 = objc_msgSend_referenceSet(v14, v17, v18, v19, v20, v28);
          objc_msgSend_getPrecedents_calcEngine_hostOwnerUID_hostCellID_(v24, v26, v25, v13, a4, a5);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v28, v32, 16);
      }

      while (v21);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  result = objc_msgSend_ruleCount(self, a2, v2, v3, v4);
  if (result)
  {
    v11 = objc_msgSend_ruleCount(self, v7, v8, v9, v10);
    v15 = v11;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    if (v11 <= 6)
    {
      v19 = 6;
    }

    else
    {
      v19 = v11;
    }

    do
    {
      v20 = objc_msgSend_ruleAtIndex_(self, v12, v17, v13, v14);
      v25 = objc_msgSend_predicate(v20, v21, v22, v23, v24);
      v18 |= (objc_msgSend_predicateType(v25, v26, v27, v28, v29) << v16);

      ++v17;
      v16 += 8;
    }

    while (v19 != v17);
    return v18 | ((v15 & 0xFFF) << 48);
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.super.isa;
  if (self == v4)
  {
    v24 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v10 = objc_msgSend_count(self->_conditionalStyleSetRules, v6, v7, v8, v9), v10 == objc_msgSend_count(p_isa[8], v11, v12, v13, v14)))
  {
    v19 = 0;
    do
    {
      v20 = objc_msgSend_count(self->_conditionalStyleSetRules, v15, v16, v17, v18);
      v24 = v19 >= v20;
      if (v19 >= v20)
      {
        break;
      }

      v25 = objc_msgSend_objectAtIndex_(self->_conditionalStyleSetRules, v21, v19, v22, v23);
      v29 = objc_msgSend_objectAtIndex_(p_isa[8], v26, v19, v27, v28);
      isEqual = objc_msgSend_isEqual_(v25, v30, v29, v31, v32);

      ++v19;
    }

    while ((isEqual & 1) != 0);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)isEqualForInspector:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.super.isa;
  if (self == v4)
  {
    v24 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v10 = objc_msgSend_count(self->_conditionalStyleSetRules, v6, v7, v8, v9), v10 == objc_msgSend_count(p_isa[8], v11, v12, v13, v14)))
  {
    v19 = 0;
    do
    {
      v20 = objc_msgSend_count(self->_conditionalStyleSetRules, v15, v16, v17, v18);
      v24 = v19 >= v20;
      if (v19 >= v20)
      {
        break;
      }

      v25 = objc_msgSend_objectAtIndex_(self->_conditionalStyleSetRules, v21, v19, v22, v23);
      v29 = objc_msgSend_objectAtIndex_(p_isa[8], v26, v19, v27, v28);
      isEqualForInspector = objc_msgSend_isEqualForInspector_(v25, v30, v29, v31, v32);

      ++v19;
    }

    while ((isEqualForInspector & 1) != 0);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v8 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p>: Rules:\n", v6, v7, v4, self);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_conditionalStyleSetRules;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v22, 16);
  if (v14)
  {
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_appendFormat_(v8, v11, @"\t%@\n", v12, v13, *(*(&v18 + 1) + 8 * i));
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v18, v22, 16);
    }

    while (v14);
  }

  return v8;
}

- (id)rulesDescription
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], a2, @"CS Rules: ", v2, v3);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_conditionalStyleSetRules;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
  if (v12)
  {
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_predicateDescription(*(*(&v20 + 1) + 8 * i), v8, v9, v10, v11);
        objc_msgSend_appendFormat_(v5, v16, @"\t%@ ", v17, v18, v15);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v20, v24, 16);
    }

    while (v12);
  }

  return v5;
}

- (id)ruleAtIndex:(unint64_t)a3
{
  if (objc_msgSend_count(self->_conditionalStyleSetRules, a2, a3, v3, v4) <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_objectAtIndex_(self->_conditionalStyleSetRules, v7, a3, v8, v9);
  }

  return v10;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  if (objc_msgSend_fileFormatVersion(v4, v5, v6, v7, v8, v4) == 0x300020000000ALL)
  {
    objc_msgSend_willModifyForUpgrade(self, v9, v10, v11, v12);
  }

  v13 = v4;
  google::protobuf::internal::AssignDescriptors();
  v17 = objc_msgSend_messageWithDescriptor_(v13, v14, off_2812E4498[178], v15, v16);

  v18 = *(v17 + 56);
  v19 = objc_alloc(MEMORY[0x277CBEB18]);
  v23 = objc_msgSend_initWithCapacity_(v19, v20, v18, v21, v22);
  conditionalStyleSetRules = self->_conditionalStyleSetRules;
  self->_conditionalStyleSetRules = v23;

  v88 = self;
  if (*(v17 + 16))
  {
    v58 = *(v17 + 48);
    v59 = *(v58 + 24);
    if (v59 >= 1)
    {
      for (i = 0; i != v59; ++i)
      {
        v61 = *(*(v58 + 32) + 8 * i + 8);
        if (*(v61 + 16))
        {
          v62 = [TSTFormulaPredicate alloc];
          v66 = (*(v61 + 24) ? objc_msgSend_initFromArchive_(v62, v63, *(v61 + 24), v64, v65) : objc_msgSend_initFromArchive_(v62, v63, &TST::_FormulaPredicateArchive_default_instance_, v64, v65));
          v70 = v66;
          if (v66)
          {
            objc_msgSend_setForConditionalStyle_(v66, v67, 1, v68, v69);
            v71 = [TSTConditionalStyleRule alloc];
            v73 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v71, v72, v70, 0, 0);
            objc_msgSend_insertObject_atIndex_(v88->_conditionalStyleSetRules, v74, v73, i, v75);
            v107 = 0;
            v108 = &v107;
            v109 = 0x3032000000;
            v110 = sub_22148C95C;
            v111 = sub_22148C96C;
            v112 = 0;
            v101 = 0;
            v102 = &v101;
            v103 = 0x3032000000;
            v104 = sub_22148C95C;
            v105 = sub_22148C96C;
            v106 = 0;
            v76 = *(v61 + 32);
            v100[0] = MEMORY[0x277D85DD0];
            v100[1] = 3221225472;
            v100[2] = sub_22148C974;
            v100[3] = &unk_278465A60;
            v100[4] = &v107;
            v77 = v13;
            v79 = objc_opt_class();
            if (v76)
            {
              objc_msgSend_readReferenceMessage_class_protocol_completion_(v77, v78, v76, v79, 0, v100);
            }

            else
            {
              objc_msgSend_readReferenceMessage_class_protocol_completion_(v77, v78, MEMORY[0x277D80A18], v79, 0, v100);
            }

            v80 = *(v61 + 40);
            v99[0] = MEMORY[0x277D85DD0];
            v99[1] = 3221225472;
            v99[2] = sub_22148C984;
            v99[3] = &unk_278465A88;
            v99[4] = &v101;
            v81 = v77;
            v83 = objc_opt_class();
            if (v80)
            {
              objc_msgSend_readReferenceMessage_class_protocol_completion_(v81, v82, v80, v83, 0, v99);
            }

            else
            {
              objc_msgSend_readReferenceMessage_class_protocol_completion_(v81, v82, MEMORY[0x277D80A18], v83, 0, v99);
            }

            v95[0] = MEMORY[0x277D85DD0];
            v95[1] = 3221225472;
            v95[2] = sub_22148CA04;
            v95[3] = &unk_2784604D0;
            v84 = v73;
            v96 = v84;
            v97 = &v107;
            v98 = &v101;
            objc_msgSend_addFinalizeHandler_(v81, v85, v95, v86, v87);

            _Block_object_dispose(&v101, 8);
            _Block_object_dispose(&v107, 8);
          }
        }
      }
    }
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(self, v25, v26, v27, v28);
    v29 = *(v17 + 32);
    if (v29 >= 1)
    {
      for (j = 0; j != v29; ++j)
      {
        v31 = *(*(v17 + 40) + 8 * j + 8);
        v32 = [TSTFormulaPredicate alloc];
        if (v31[3])
        {
          v36 = objc_msgSend_initFromPrePivotArchive_(v32, v33, v31[3], v34, v35);
        }

        else
        {
          v36 = objc_msgSend_initFromPrePivotArchive_(v32, v33, &TST::_FormulaPredicatePrePivotArchive_default_instance_, v34, v35);
        }

        v40 = v36;
        if (v36)
        {
          objc_msgSend_setForConditionalStyle_(v36, v37, 1, v38, v39);
          v41 = [TSTConditionalStyleRule alloc];
          v43 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v41, v42, v40, 0, 0);
          objc_msgSend_insertObject_atIndex_(self->_conditionalStyleSetRules, v44, v43, j, v45);
          v107 = 0;
          v108 = &v107;
          v109 = 0x3032000000;
          v110 = sub_22148C95C;
          v111 = sub_22148C96C;
          v112 = 0;
          v101 = 0;
          v102 = &v101;
          v103 = 0x3032000000;
          v104 = sub_22148C95C;
          v105 = sub_22148C96C;
          v106 = 0;
          v46 = v31[4];
          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = sub_22148CA78;
          v94[3] = &unk_278465A60;
          v94[4] = &v107;
          v47 = v13;
          v49 = objc_opt_class();
          if (v46)
          {
            objc_msgSend_readReferenceMessage_class_protocol_completion_(v47, v48, v46, v49, 0, v94);
          }

          else
          {
            objc_msgSend_readReferenceMessage_class_protocol_completion_(v47, v48, MEMORY[0x277D80A18], v49, 0, v94);
          }

          v50 = v31[5];
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = sub_22148CA88;
          v93[3] = &unk_278465A88;
          v93[4] = &v101;
          v51 = v47;
          v53 = objc_opt_class();
          if (v50)
          {
            objc_msgSend_readReferenceMessage_class_protocol_completion_(v51, v52, v50, v53, 0, v93);
          }

          else
          {
            objc_msgSend_readReferenceMessage_class_protocol_completion_(v51, v52, MEMORY[0x277D80A18], v53, 0, v93);
          }

          v89[0] = MEMORY[0x277D85DD0];
          v89[1] = 3221225472;
          v89[2] = sub_22148CB08;
          v89[3] = &unk_2784604D0;
          v54 = v43;
          v90 = v54;
          v91 = &v107;
          v92 = &v101;
          objc_msgSend_addFinalizeHandler_(v51, v55, v89, v56, v57);

          _Block_object_dispose(&v101, 8);
          _Block_object_dispose(&v107, 8);
        }
      }
    }
  }
}

- (void)saveToArchiver:(id)a3
{
  v101 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v101, v4, sub_22148D134, off_2812E4498[178], v5);

  v11 = objc_msgSend_ruleCount(self, v7, v8, v9, v10);
  *(v6 + 16) |= 2u;
  *(v6 + 56) = v11;
  v100 = objc_msgSend_objectLocale(self, v12, v13, v14, v15);
  *(v6 + 16) |= 1u;
  v19 = *(v6 + 48);
  if (!v19)
  {
    v20 = *(v6 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = google::protobuf::Arena::CreateMaybeMessage<TST::ConditionalStyleSetArchive_ConditionalStyleRules>(v20);
    *(v6 + 48) = v19;
  }

  v99 = v11;
  if (v11)
  {
    v21 = 0;
    v22 = v11;
    LOBYTE(canDowngradeForPrePivotFormat) = 1;
    while (1)
    {
      v24 = *(v19 + 32);
      if (!v24)
      {
        goto LABEL_12;
      }

      v25 = *(v19 + 24);
      v26 = *v24;
      if (v25 >= *v24)
      {
        break;
      }

      *(v19 + 24) = v25 + 1;
      v27 = *&v24[2 * v25 + 2];
LABEL_14:
      v30 = objc_msgSend_ruleAtIndex_(self, v16, v21, v17, v18);
      v37 = objc_msgSend_predicate(v30, v31, v32, v33, v34);
      *(v27 + 16) |= 1u;
      v38 = *(v27 + 24);
      if (!v38)
      {
        v39 = *(v27 + 8);
        if (v39)
        {
          v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
        }

        v38 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicateArchive>(v39);
        *(v27 + 24) = v38;
      }

      objc_msgSend_encodeToArchive_archiver_(v37, v35, v38, v101, v36);
      if (canDowngradeForPrePivotFormat)
      {
        if (objc_msgSend_backwardCompatiblePrePivot(v37, v40, v41, v42, v43))
        {
          canDowngradeForPrePivotFormat = 1;
        }

        else
        {
          canDowngradeForPrePivotFormat = objc_msgSend_canDowngradeForPrePivotFormat(v37, v40, v41, v42, v43);
        }
      }

      else
      {
        canDowngradeForPrePivotFormat = 0;
      }

      v46 = objc_msgSend_privateTextStyle(v30, v40, v41, v42, v43);
      *(v27 + 16) |= 4u;
      v47 = *(v27 + 40);
      if (!v47)
      {
        v48 = *(v27 + 8);
        if (v48)
        {
          v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
        }

        v47 = MEMORY[0x223DA0390](v48);
        *(v27 + 40) = v47;
      }

      objc_msgSend_setStrongReference_message_(v101, v44, v46, v47, v45);

      v55 = objc_msgSend_privateCellStyle(v30, v49, v50, v51, v52);
      *(v27 + 16) |= 2u;
      v56 = *(v27 + 32);
      if (!v56)
      {
        v57 = *(v27 + 8);
        if (v57)
        {
          v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
        }

        v56 = MEMORY[0x223DA0390](v57);
        *(v27 + 32) = v56;
      }

      objc_msgSend_setStrongReference_message_(v101, v53, v55, v56, v54);

      if (v22 == ++v21)
      {
        goto LABEL_34;
      }
    }

    if (v26 == *(v19 + 28))
    {
LABEL_12:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v19 + 16));
      v24 = *(v19 + 32);
      v26 = *v24;
    }

    *v24 = v26 + 1;
    v27 = google::protobuf::Arena::CreateMaybeMessage<TST::ConditionalStyleSetArchive_ConditionalStyleRule>(*(v19 + 16));
    v28 = *(v19 + 24);
    v29 = *(v19 + 32) + 8 * v28;
    *(v19 + 24) = v28 + 1;
    *(v29 + 8) = v27;
    goto LABEL_14;
  }

  canDowngradeForPrePivotFormat = 1;
LABEL_34:
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v101, v16, 3, v6, v18);
  if (canDowngradeForPrePivotFormat)
  {
    if (v99)
    {
      v61 = 0;
      while (1)
      {
        v62 = *(v6 + 40);
        if (!v62)
        {
          goto LABEL_42;
        }

        v63 = *(v6 + 32);
        v64 = *v62;
        if (v63 >= *v62)
        {
          break;
        }

        *(v6 + 32) = v63 + 1;
        v65 = *&v62[2 * v63 + 2];
LABEL_44:
        v68 = objc_msgSend_ruleAtIndex_(self, v58, v61, v59, v60);
        v73 = objc_msgSend_predicate(v68, v69, v70, v71, v72);
        if ((objc_msgSend_backwardCompatiblePrePivot(v73, v74, v75, v76, v77) & 1) == 0)
        {
          v82 = objc_msgSend_downgradeForPrePivotFormatForLocale_(v73, v78, v100, v80, v81);

          v73 = v82;
        }

        if (v73)
        {
          *(v65 + 16) |= 1u;
          v83 = *(v65 + 24);
          if (!v83)
          {
            v84 = *(v65 + 8);
            if (v84)
            {
              v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
            }

            v83 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicatePrePivotArchive>(v84);
            *(v65 + 24) = v83;
          }

          objc_msgSend_encodeToPrePivotArchive_archiver_(v73, v78, v83, v101, v81);
        }

        v87 = objc_msgSend_privateTextStyle(v68, v78, v79, v80, v81);
        *(v65 + 16) |= 4u;
        v88 = *(v65 + 40);
        if (!v88)
        {
          v89 = *(v65 + 8);
          if (v89)
          {
            v89 = *(v89 & 0xFFFFFFFFFFFFFFFELL);
          }

          v88 = MEMORY[0x223DA0390](v89);
          *(v65 + 40) = v88;
        }

        objc_msgSend_setStrongReference_message_(v101, v85, v87, v88, v86);

        v96 = objc_msgSend_privateCellStyle(v68, v90, v91, v92, v93);
        *(v65 + 16) |= 2u;
        v97 = *(v65 + 32);
        if (!v97)
        {
          v98 = *(v65 + 8);
          if (v98)
          {
            v98 = *(v98 & 0xFFFFFFFFFFFFFFFELL);
          }

          v97 = MEMORY[0x223DA0390](v98);
          *(v65 + 32) = v97;
        }

        objc_msgSend_setStrongReference_message_(v101, v94, v96, v97, v95);

        if (v99 == ++v61)
        {
          goto LABEL_63;
        }
      }

      if (v64 == *(v6 + 36))
      {
LABEL_42:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
        v62 = *(v6 + 40);
        v64 = *v62;
      }

      *v62 = v64 + 1;
      v65 = google::protobuf::Arena::CreateMaybeMessage<TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot>(*(v6 + 24));
      v66 = *(v6 + 32);
      v67 = *(v6 + 40) + 8 * v66;
      *(v6 + 32) = v66 + 1;
      *(v67 + 8) = v65;
      goto LABEL_44;
    }
  }

  else
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(v101, v58, 0xB000200000006, @"TSTPivotTables", v60);
  }

LABEL_63:
}

@end