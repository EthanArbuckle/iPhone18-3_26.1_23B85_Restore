@interface TSTOwnerUidMapper
- (BOOL)usesAllSubOwnerUIDs;
- (TSKUIDStruct)categoryAggregatesOwnerUID;
- (TSKUIDStruct)categoryOwnerUID;
- (TSKUIDStruct)conditionalStyleOwnerUID;
- (TSKUIDStruct)groupByUID;
- (TSKUIDStruct)hiddenStateForColumnsOwnerUID;
- (TSKUIDStruct)hiddenStateForRowsOwnerUID;
- (TSKUIDStruct)mergeOwnerUID;
- (TSKUIDStruct)nextCategoryAggregatesOwnerUID;
- (TSKUIDStruct)nextCategoryOwnerUID;
- (TSKUIDStruct)nextConditionalStyleOwnerUID;
- (TSKUIDStruct)nextGroupByUID;
- (TSKUIDStruct)nextHiddenStateForColumnsOwnerUID;
- (TSKUIDStruct)nextHiddenStateForRowsOwnerUID;
- (TSKUIDStruct)nextMergeOwnerUID;
- (TSKUIDStruct)nextPencilAnnotationOwnerUID;
- (TSKUIDStruct)nextSortRuleReferenceTrackerOwnerUID;
- (TSKUIDStruct)nextTableUID;
- (TSKUIDStruct)pbTableUID;
- (TSKUIDStruct)pencilAnnotationOwnerUID;
- (TSKUIDStruct)sortRuleReferenceTrackerOwnerUID;
- (TSKUIDStruct)tableUID;
- (TSTOwnerUidMapper)initWithArchive:(const void *)a3;
- (TSTOwnerUidMapper)initWithFormulaOwnerUID:(const TSKUIDStruct *)a3;
- (TSTOwnerUidMapper)initWithIdentityMapping;
- (TSTOwnerUidMapper)initWithTableUID:(const TSKUIDStruct *)a3 pasteBoardTableUID:(const TSKUIDStruct *)a4 hiddenStateOwnerForRowsUID:(const TSKUIDStruct *)a5 hiddenStateOwnerForColumnsUID:(const TSKUIDStruct *)a6 conditionalStyleOwnerUID:(const TSKUIDStruct *)a7 sortRuleReferenceTrackerOwnerUID:(const TSKUIDStruct *)a8 mergeOwnerUID:(const TSKUIDStruct *)a9 pencilAnnotationOwnerUID:(const TSKUIDStruct *)a10 categoryAggregatesOwnerUID:(const TSKUIDStruct *)a11 groupByUID:(const TSKUIDStruct *)a12;
- (const)ownerUIDMap;
- (id).cxx_construct;
- (id)description;
- (id)fullDescription;
- (id)initForPivotDataTableWithMapper:(id)a3;
- (id)makeInverse;
- (id)pivotDataTableMapper;
- (void)p_recreateUIDs;
- (void)saveToArchive:(void *)a3;
- (void)setToIdentityMapping;
- (void)setToUpgradeMapping;
@end

@implementation TSTOwnerUidMapper

- (TSKUIDStruct)tableUID
{
  p_tableUID = &self->_tableUID;
  lower = self->_tableUID.var0.var0._lower;
  upper = p_tableUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)hiddenStateForRowsOwnerUID
{
  p_hiddenStateForRowsOwnerUID = &self->_hiddenStateForRowsOwnerUID;
  lower = self->_hiddenStateForRowsOwnerUID.var0.var0._lower;
  upper = p_hiddenStateForRowsOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)hiddenStateForColumnsOwnerUID
{
  p_hiddenStateForColumnsOwnerUID = &self->_hiddenStateForColumnsOwnerUID;
  lower = self->_hiddenStateForColumnsOwnerUID.var0.var0._lower;
  upper = p_hiddenStateForColumnsOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)conditionalStyleOwnerUID
{
  p_conditionalStyleOwnerUID = &self->_conditionalStyleOwnerUID;
  lower = self->_conditionalStyleOwnerUID.var0.var0._lower;
  upper = p_conditionalStyleOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)sortRuleReferenceTrackerOwnerUID
{
  p_sortRuleReferenceTrackerOwnerUID = &self->_sortRuleReferenceTrackerOwnerUID;
  lower = self->_sortRuleReferenceTrackerOwnerUID.var0.var0._lower;
  upper = p_sortRuleReferenceTrackerOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)mergeOwnerUID
{
  p_mergeOwnerUID = &self->_mergeOwnerUID;
  lower = self->_mergeOwnerUID.var0.var0._lower;
  upper = p_mergeOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)pencilAnnotationOwnerUID
{
  p_pencilAnnotationOwnerUID = &self->_pencilAnnotationOwnerUID;
  lower = self->_pencilAnnotationOwnerUID.var0.var0._lower;
  upper = p_pencilAnnotationOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)categoryAggregatesOwnerUID
{
  p_categoryAggregatesOwnerUID = &self->_categoryAggregatesOwnerUID;
  lower = self->_categoryAggregatesOwnerUID.var0.var0._lower;
  upper = p_categoryAggregatesOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)groupByUID
{
  p_groupByUID = &self->_groupByUID;
  lower = self->_groupByUID.var0.var0._lower;
  upper = p_groupByUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextTableUID
{
  p_nextTableUID = &self->_nextTableUID;
  lower = self->_nextTableUID.var0.var0._lower;
  upper = p_nextTableUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextHiddenStateForRowsOwnerUID
{
  p_nextHiddenStateForRowsOwnerUID = &self->_nextHiddenStateForRowsOwnerUID;
  lower = self->_nextHiddenStateForRowsOwnerUID.var0.var0._lower;
  upper = p_nextHiddenStateForRowsOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextHiddenStateForColumnsOwnerUID
{
  p_nextHiddenStateForColumnsOwnerUID = &self->_nextHiddenStateForColumnsOwnerUID;
  lower = self->_nextHiddenStateForColumnsOwnerUID.var0.var0._lower;
  upper = p_nextHiddenStateForColumnsOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextConditionalStyleOwnerUID
{
  p_nextConditionalStyleOwnerUID = &self->_nextConditionalStyleOwnerUID;
  lower = self->_nextConditionalStyleOwnerUID.var0.var0._lower;
  upper = p_nextConditionalStyleOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextSortRuleReferenceTrackerOwnerUID
{
  p_nextSortRuleReferenceTrackerOwnerUID = &self->_nextSortRuleReferenceTrackerOwnerUID;
  lower = self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._lower;
  upper = p_nextSortRuleReferenceTrackerOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextMergeOwnerUID
{
  p_nextMergeOwnerUID = &self->_nextMergeOwnerUID;
  lower = self->_nextMergeOwnerUID.var0.var0._lower;
  upper = p_nextMergeOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextPencilAnnotationOwnerUID
{
  p_nextPencilAnnotationOwnerUID = &self->_nextPencilAnnotationOwnerUID;
  lower = self->_nextPencilAnnotationOwnerUID.var0.var0._lower;
  upper = p_nextPencilAnnotationOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextCategoryAggregatesOwnerUID
{
  p_nextCategoryAggregatesOwnerUID = &self->_nextCategoryAggregatesOwnerUID;
  lower = self->_nextCategoryAggregatesOwnerUID.var0.var0._lower;
  upper = p_nextCategoryAggregatesOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextGroupByUID
{
  p_nextGroupByUID = &self->_nextGroupByUID;
  lower = self->_nextGroupByUID.var0.var0._lower;
  upper = p_nextGroupByUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)p_recreateUIDs
{
  sub_2210BE918(&self->_uidMap.__table_.__bucket_list_.__ptr_);
  if (*&self->_hiddenStateForRowsOwnerUID != 0)
  {
    self->_nextHiddenStateForRowsOwnerUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 4, v4, v5, v6);
    self->_nextHiddenStateForRowsOwnerUID.var0.var0._upper = v3;
  }

  if (self->_hiddenStateForColumnsOwnerUID.var0.var0._lower || self->_hiddenStateForColumnsOwnerUID.var0.var0._upper)
  {
    self->_nextHiddenStateForColumnsOwnerUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 0xB, v4, v5, v6);
    self->_nextHiddenStateForColumnsOwnerUID.var0.var0._upper = v3;
  }

  if (self->_conditionalStyleOwnerUID.var0.var0._lower || self->_conditionalStyleOwnerUID.var0.var0._upper)
  {
    self->_nextConditionalStyleOwnerUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 3, v4, v5, v6);
    self->_nextConditionalStyleOwnerUID.var0.var0._upper = v3;
  }

  if (self->_sortRuleReferenceTrackerOwnerUID.var0.var0._lower || self->_sortRuleReferenceTrackerOwnerUID.var0.var0._upper)
  {
    self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 6, v4, v5, v6);
    self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._upper = v3;
  }

  if (self->_mergeOwnerUID.var0.var0._lower || self->_mergeOwnerUID.var0.var0._upper)
  {
    self->_nextMergeOwnerUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 5, v4, v5, v6);
    self->_nextMergeOwnerUID.var0.var0._upper = v3;
  }

  if (self->_pencilAnnotationOwnerUID.var0.var0._lower || self->_pencilAnnotationOwnerUID.var0.var0._upper)
  {
    self->_nextPencilAnnotationOwnerUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 0xA, v4, v5, v6);
    self->_nextPencilAnnotationOwnerUID.var0.var0._upper = v3;
  }

  if (self->_categoryAggregatesOwnerUID.var0.var0._lower || self->_categoryAggregatesOwnerUID.var0.var0._upper)
  {
    self->_nextCategoryAggregatesOwnerUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 9, v4, v5, v6);
    self->_nextCategoryAggregatesOwnerUID.var0.var0._upper = v3;
  }

  if (self->_groupByUID.var0.var0._lower || self->_groupByUID.var0.var0._upper)
  {
    self->_nextGroupByUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 8, v4, v5, v6);
    self->_nextGroupByUID.var0.var0._upper = v3;
  }

  if ((objc_msgSend_verifySubOwnerUIDsUsed(self, v3, v4, v5, v6) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTOwnerUidMapper p_recreateUIDs]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOwnerUidMapper.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 100, 0, "Check for non subOwner formula UIDs");

    v21 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v21, v17, v18, v19, v20);
  }
}

- (BOOL)usesAllSubOwnerUIDs
{
  v13 = 1;
  if (self->_nextHiddenStateForRowsOwnerUID.var0.var0._lower || self->_nextHiddenStateForRowsOwnerUID.var0.var0._upper)
  {
    HiddenStateForRowsOwnerUID = objc_msgSend_nextHiddenStateForRowsOwnerUID(self, a2, v2, v3, v4);
    v8 = v7;
    if (HiddenStateForRowsOwnerUID != sub_2212C4A30(&self->_nextTableUID, 4, v9, v10, v11) || v8 != a2)
    {
      v13 = 0;
    }
  }

  if (self->_nextHiddenStateForColumnsOwnerUID.var0.var0._lower || self->_nextHiddenStateForColumnsOwnerUID.var0.var0._upper)
  {
    HiddenStateForColumnsOwnerUID = objc_msgSend_nextHiddenStateForColumnsOwnerUID(self, a2, v2, v3, v4);
    v16 = v15;
    if (HiddenStateForColumnsOwnerUID != sub_2212C4A30(&self->_nextTableUID, 0xB, v17, v18, v19) || v16 != a2)
    {
      v13 = 0;
    }
  }

  if (self->_nextConditionalStyleOwnerUID.var0.var0._lower || self->_nextConditionalStyleOwnerUID.var0.var0._upper)
  {
    ConditionalStyleOwnerUID = objc_msgSend_nextConditionalStyleOwnerUID(self, a2, v2, v3, v4);
    v23 = v22;
    if (ConditionalStyleOwnerUID != sub_2212C4A30(&self->_nextTableUID, 3, v24, v25, v26) || v23 != a2)
    {
      v13 = 0;
    }
  }

  if (self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._lower || self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._upper)
  {
    SortRuleReferenceTrackerOwnerUID = objc_msgSend_nextSortRuleReferenceTrackerOwnerUID(self, a2, v2, v3, v4);
    v30 = v29;
    if (SortRuleReferenceTrackerOwnerUID != sub_2212C4A30(&self->_nextTableUID, 6, v31, v32, v33) || v30 != a2)
    {
      v13 = 0;
    }
  }

  if (self->_nextMergeOwnerUID.var0.var0._lower || self->_nextMergeOwnerUID.var0.var0._upper)
  {
    MergeOwnerUID = objc_msgSend_nextMergeOwnerUID(self, a2, v2, v3, v4);
    v36 = v35;
    if (MergeOwnerUID != sub_2212C4A30(&self->_nextTableUID, 5, v37, v38, v39) || v36 != a2)
    {
      v13 = 0;
    }
  }

  if (self->_nextPencilAnnotationOwnerUID.var0.var0._lower || self->_nextPencilAnnotationOwnerUID.var0.var0._upper)
  {
    PencilAnnotationOwnerUID = objc_msgSend_nextPencilAnnotationOwnerUID(self, a2, v2, v3, v4);
    v42 = v41;
    if (PencilAnnotationOwnerUID != sub_2212C4A30(&self->_nextTableUID, 0xA, v43, v44, v45) || v42 != a2)
    {
      v13 = 0;
    }
  }

  if (self->_nextCategoryAggregatesOwnerUID.var0.var0._lower || self->_nextCategoryAggregatesOwnerUID.var0.var0._upper)
  {
    CategoryAggregatesOwnerUID = objc_msgSend_nextCategoryAggregatesOwnerUID(self, a2, v2, v3, v4);
    v48 = v47;
    if (CategoryAggregatesOwnerUID != sub_2212C4A30(&self->_nextTableUID, 9, v49, v50, v51) || v48 != a2)
    {
      v13 = 0;
    }
  }

  if (self->_nextGroupByUID.var0.var0._lower || self->_nextGroupByUID.var0.var0._upper)
  {
    GroupByUID = objc_msgSend_nextGroupByUID(self, a2, v2, v3, v4);
    v54 = v53;
    if (GroupByUID != sub_2212C4A30(&self->_nextTableUID, 8, v55, v56, v57) || v54 != v58)
    {
      return 0;
    }
  }

  return v13;
}

- (TSTOwnerUidMapper)initWithTableUID:(const TSKUIDStruct *)a3 pasteBoardTableUID:(const TSKUIDStruct *)a4 hiddenStateOwnerForRowsUID:(const TSKUIDStruct *)a5 hiddenStateOwnerForColumnsUID:(const TSKUIDStruct *)a6 conditionalStyleOwnerUID:(const TSKUIDStruct *)a7 sortRuleReferenceTrackerOwnerUID:(const TSKUIDStruct *)a8 mergeOwnerUID:(const TSKUIDStruct *)a9 pencilAnnotationOwnerUID:(const TSKUIDStruct *)a10 categoryAggregatesOwnerUID:(const TSKUIDStruct *)a11 groupByUID:(const TSKUIDStruct *)a12
{
  v26.receiver = self;
  v26.super_class = TSTOwnerUidMapper;
  v18 = [(TSTOwnerUidMapper *)&v26 init];
  v19 = v18;
  if (v18)
  {
    *(v18 + 8) = *a3;
    *(v18 + 296) = *a4;
    if (!*(v18 + 1) && !*(v18 + 2))
    {
      *(v18 + 8) = *(v18 + 296);
    }

    *(v18 + 40) = *a5;
    *(v18 + 72) = *a6;
    *(v18 + 104) = *a7;
    *(v18 + 136) = *a8;
    *(v18 + 168) = *a9;
    *(v18 + 200) = *a10;
    *(v18 + 232) = *a11;
    *(v18 + 264) = *a12;
    uuid_generate_random(&v25);
    *(v19 + 24) = v25;
    objc_msgSend_p_recreateUIDs(v19, v20, v21, v22, v23);
  }

  return v19;
}

- (id)pivotDataTableMapper
{
  v3 = [TSTOwnerUidMapper alloc];
  v7 = objc_msgSend_initForPivotDataTableWithMapper_(v3, v4, self, v5, v6);

  return v7;
}

- (id)initForPivotDataTableWithMapper:(id)a3
{
  v4 = a3;
  v57.receiver = self;
  v57.super_class = TSTOwnerUidMapper;
  v9 = [(TSTOwnerUidMapper *)&v57 init];
  if (v9)
  {
    v53 = objc_msgSend_tableUID(v4, v5, v6, v7, v8);
    v55 = v10;
    *(v9 + 1) = TSKUIDStruct::operator+();
    *(v9 + 2) = v11;
    TableUID = objc_msgSend_nextTableUID(v4, v11, v12, v13, v14, v53, v55);
    v56 = v15;
    *(v9 + 3) = TSKUIDStruct::operator+();
    *(v9 + 4) = v16;
    *(v9 + 5) = sub_2212C4A30((v9 + 8), 4, v17, v18, v19);
    *(v9 + 6) = v20;
    *(v9 + 9) = sub_2212C4A30((v9 + 8), 0xB, v21, v22, v23);
    *(v9 + 10) = v24;
    *(v9 + 13) = sub_2212C4A30((v9 + 8), 3, v25, v26, v27);
    *(v9 + 14) = v28;
    *(v9 + 17) = sub_2212C4A30((v9 + 8), 6, v29, v30, v31);
    *(v9 + 18) = v32;
    *(v9 + 21) = sub_2212C4A30((v9 + 8), 5, v33, v34, v35);
    *(v9 + 22) = v36;
    *(v9 + 25) = sub_2212C4A30((v9 + 8), 0xA, v37, v38, v39);
    *(v9 + 26) = v40;
    *(v9 + 29) = sub_2212C4A30((v9 + 8), 9, v41, v42, v43);
    *(v9 + 30) = v44;
    *(v9 + 33) = sub_2212C4A30((v9 + 8), 8, v45, v46, v47);
    *(v9 + 34) = v48;
    objc_msgSend_p_recreateUIDs(v9, v48, v49, v50, v51, TableUID, v56);
  }

  return v9;
}

- (TSTOwnerUidMapper)initWithFormulaOwnerUID:(const TSKUIDStruct *)a3
{
  v4[0] = 0;
  v4[1] = 0;
  return objc_msgSend_initWithTableUID_pasteBoardTableUID_hiddenStateOwnerForRowsUID_hiddenStateOwnerForColumnsUID_conditionalStyleOwnerUID_sortRuleReferenceTrackerOwnerUID_mergeOwnerUID_pencilAnnotationOwnerUID_categoryAggregatesOwnerUID_groupByUID_(self, a2, a3, v4, v4, v4, v4, v4, v4, v4, v4, v4);
}

- (TSTOwnerUidMapper)initWithIdentityMapping
{
  *&v51 = TSKMakeUIDStructRandom();
  *(&v51 + 1) = v3;
  v50[0] = sub_2212C4930(&v51, 4, v4, v5, v6);
  v50[1] = v7;
  v49[0] = sub_2212C4930(&v51, 0xB, v8, v9, v10);
  v49[1] = v11;
  v48[0] = sub_2212C4930(&v51, 3, v12, v13, v14);
  v48[1] = v15;
  v47[0] = sub_2212C4930(&v51, 6, v16, v17, v18);
  v47[1] = v19;
  v46[0] = sub_2212C4930(&v51, 5, v20, v21, v22);
  v46[1] = v23;
  v45[0] = sub_2212C4930(&v51, 0xA, v24, v25, v26);
  v45[1] = v27;
  v44[0] = sub_2212C4930(&v51, 9, v28, v29, v30);
  v44[1] = v31;
  v43[0] = sub_2212C4930(&v51, 8, v32, v33, v34);
  v43[1] = v35;
  v42[0] = 0;
  v42[1] = 0;
  v36 = objc_msgSend_initWithTableUID_pasteBoardTableUID_hiddenStateOwnerForRowsUID_hiddenStateOwnerForColumnsUID_conditionalStyleOwnerUID_sortRuleReferenceTrackerOwnerUID_mergeOwnerUID_pencilAnnotationOwnerUID_categoryAggregatesOwnerUID_groupByUID_(self, v35, &v51, v42, v50, v49, v48, v47, v46, v45, v44, v43);
  objc_msgSend_setToIdentityMapping(v36, v37, v38, v39, v40);
  return v36;
}

- (void)setToIdentityMapping
{
  lower = self->_pbTableUID._lower;
  upper = self->_pbTableUID._upper;
  self->_nextTableUID.var0.var0._lower = lower;
  self->_nextTableUID.var0.var0._upper = upper;
  if (!(lower | upper))
  {
    self->_nextTableUID = self->_tableUID;
  }

  self->_nextHiddenStateForRowsOwnerUID = self->_hiddenStateForRowsOwnerUID;
  self->_nextHiddenStateForColumnsOwnerUID = self->_hiddenStateForColumnsOwnerUID;
  self->_nextConditionalStyleOwnerUID = self->_conditionalStyleOwnerUID;
  self->_nextSortRuleReferenceTrackerOwnerUID = self->_sortRuleReferenceTrackerOwnerUID;
  self->_nextMergeOwnerUID = self->_mergeOwnerUID;
  self->_nextPencilAnnotationOwnerUID = self->_pencilAnnotationOwnerUID;
  self->_nextCategoryAggregatesOwnerUID = self->_categoryAggregatesOwnerUID;
  self->_nextGroupByUID = self->_groupByUID;
}

- (void)setToUpgradeMapping
{
  objc_msgSend_setToIdentityMapping(self, a2, v2, v3, v4);
  *&v60 = objc_msgSend_nextTableUID(self, v6, v7, v8, v9);
  *(&v60 + 1) = v10;
  self->_nextHiddenStateForRowsOwnerUID.var0.var0._lower = sub_2212C4930(&v60, 4, v11, v12, v13);
  self->_nextHiddenStateForRowsOwnerUID.var0.var0._upper = v14;
  self->_nextHiddenStateForColumnsOwnerUID.var0.var0._lower = sub_2212C4930(&v60, 0xB, v15, v16, v17);
  self->_nextHiddenStateForColumnsOwnerUID.var0.var0._upper = v18;
  self->_nextConditionalStyleOwnerUID.var0.var0._lower = sub_2212C4930(&v60, 3, v19, v20, v21);
  self->_nextConditionalStyleOwnerUID.var0.var0._upper = v22;
  self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._lower = sub_2212C4930(&v60, 6, v23, v24, v25);
  self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._upper = v26;
  self->_nextMergeOwnerUID.var0.var0._lower = sub_2212C4930(&v60, 5, v27, v28, v29);
  self->_nextMergeOwnerUID.var0.var0._upper = v30;
  self->_nextPencilAnnotationOwnerUID.var0.var0._lower = sub_2212C4930(&v60, 0xA, v31, v32, v33);
  self->_nextPencilAnnotationOwnerUID.var0.var0._upper = v34;
  self->_nextCategoryAggregatesOwnerUID.var0.var0._lower = sub_2212C4930(&v60, 9, v35, v36, v37);
  self->_nextCategoryAggregatesOwnerUID.var0.var0._upper = v38;
  self->_nextGroupByUID.var0.var0._lower = sub_2212C4930(&v60, 8, v39, v40, v41);
  self->_nextGroupByUID.var0.var0._upper = v42;
  if ((objc_msgSend_verifySubOwnerUIDsUsed(self, v42, v43, v44, v45) & 1) == 0)
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSTOwnerUidMapper setToUpgradeMapping]", v47, v48);
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOwnerUidMapper.mm", v52, v53);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v55, v50, v54, 342, 0, "Check for non subOwner formula UIDs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
  }
}

- (id)makeInverse
{
  v3 = [TSTOwnerUidMapper alloc];
  v67[0] = objc_msgSend_nextTableUID(self, v4, v5, v6, v7);
  v67[1] = v8;
  v66[0] = objc_msgSend_nextTableUID(self, v8, v9, v10, v11);
  v66[1] = v12;
  v65[0] = objc_msgSend_nextHiddenStateForRowsOwnerUID(self, v12, v13, v14, v15);
  v65[1] = v16;
  v64[0] = objc_msgSend_nextHiddenStateForColumnsOwnerUID(self, v16, v17, v18, v19);
  v64[1] = v20;
  v63[0] = objc_msgSend_nextConditionalStyleOwnerUID(self, v20, v21, v22, v23);
  v63[1] = v24;
  v62[0] = objc_msgSend_nextSortRuleReferenceTrackerOwnerUID(self, v24, v25, v26, v27);
  v62[1] = v28;
  v61[0] = objc_msgSend_nextMergeOwnerUID(self, v28, v29, v30, v31);
  v61[1] = v32;
  v60[0] = objc_msgSend_nextPencilAnnotationOwnerUID(self, v32, v33, v34, v35);
  v60[1] = v36;
  v59[0] = objc_msgSend_nextCategoryAggregatesOwnerUID(self, v36, v37, v38, v39);
  v59[1] = v40;
  v58[0] = objc_msgSend_nextGroupByUID(self, v40, v41, v42, v43);
  v58[1] = v44;
  v45 = objc_msgSend_initWithTableUID_pasteBoardTableUID_hiddenStateOwnerForRowsUID_hiddenStateOwnerForColumnsUID_conditionalStyleOwnerUID_sortRuleReferenceTrackerOwnerUID_mergeOwnerUID_pencilAnnotationOwnerUID_categoryAggregatesOwnerUID_groupByUID_(v3, v44, v67, v66, v65, v64, v63, v62, v61, v60, v59, v58);
  v50 = objc_msgSend_tableUID(self, v46, v47, v48, v49);
  objc_msgSend_setNextTableUID_(v45, v51, v50, v51, v52);
  objc_msgSend_p_recreateUIDs(v45, v53, v54, v55, v56);

  return v45;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = TSTOwnerUidMapper;
  v2 = [(TSTOwnerUidMapper *)&v4 description];

  return v2;
}

- (id)fullDescription
{
  v4.receiver = self;
  v4.super_class = TSTOwnerUidMapper;
  v2 = [(TSTOwnerUidMapper *)&v4 description];

  return v2;
}

- (const)ownerUIDMap
{
  p_uidMap = &self->_uidMap;
  if (!self->_uidMap.__table_.__size_)
  {
    p_tableUID = &self->_tableUID;
    if (self->_tableUID.var0.var0._lower || self->_tableUID.var0.var0._upper)
    {
      TableUID = objc_msgSend_nextTableUID(self, a2, v2, v3, v4);
      v10 = v9;
      p_pbTableUID = objc_msgSend_tableUID(self, v9, v11, v12, v13);
      v135 = v14;
      p_p_pbTableUID = &p_pbTableUID;
      v15 = sub_22123067C(p_uidMap, &p_pbTableUID);
      v15[4] = TableUID;
      v15[5] = v10;
    }

    if (self->_pbTableUID._lower || self->_pbTableUID._upper)
    {
      v16 = objc_msgSend_nextTableUID(self, a2, v2, v3, v4);
      v18 = v17;
      p_pbTableUID = &self->_pbTableUID;
      v19 = sub_221230440(p_uidMap, &self->_pbTableUID._lower);
      v19[4] = v16;
      v19[5] = v18;
    }

    lower = self->_sortRuleReferenceTrackerOwnerUID.var0.var0._lower;
    if ((lower || self->_sortRuleReferenceTrackerOwnerUID.var0.var0._upper) && (lower != self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._lower || self->_sortRuleReferenceTrackerOwnerUID.var0.var0._upper != self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._upper))
    {
      SortRuleReferenceTrackerOwnerUID = objc_msgSend_nextSortRuleReferenceTrackerOwnerUID(self, a2, v2, v3, v4);
      v23 = v22;
      p_pbTableUID = objc_msgSend_sortRuleReferenceTrackerOwnerUID(self, v22, v24, v25, v26);
      v135 = v27;
      p_p_pbTableUID = &p_pbTableUID;
      v28 = sub_22123067C(p_uidMap, &p_pbTableUID);
      v28[4] = SortRuleReferenceTrackerOwnerUID;
      v28[5] = v23;
    }

    v29 = self->_hiddenStateForRowsOwnerUID.var0.var0._lower;
    if (v29 || self->_hiddenStateForRowsOwnerUID.var0.var0._upper || self->_hiddenStateForColumnsOwnerUID.var0.var0._lower || self->_hiddenStateForColumnsOwnerUID.var0.var0._upper)
    {
      if (v29 != self->_nextHiddenStateForRowsOwnerUID.var0.var0._lower || self->_hiddenStateForRowsOwnerUID.var0.var0._upper != self->_nextHiddenStateForRowsOwnerUID.var0.var0._upper)
      {
        HiddenStateForRowsOwnerUID = objc_msgSend_nextHiddenStateForRowsOwnerUID(self, a2, v2, v3, v4);
        v32 = v31;
        p_pbTableUID = objc_msgSend_hiddenStateForRowsOwnerUID(self, v31, v33, v34, v35);
        v135 = v36;
        p_p_pbTableUID = &p_pbTableUID;
        v37 = sub_22123067C(p_uidMap, &p_pbTableUID);
        v37[4] = HiddenStateForRowsOwnerUID;
        v37[5] = v32;
      }

      if (self->_hiddenStateForColumnsOwnerUID.var0.var0._lower != self->_nextHiddenStateForColumnsOwnerUID.var0.var0._lower || self->_hiddenStateForColumnsOwnerUID.var0.var0._upper != self->_nextHiddenStateForColumnsOwnerUID.var0.var0._upper)
      {
        HiddenStateForColumnsOwnerUID = objc_msgSend_nextHiddenStateForColumnsOwnerUID(self, a2, v2, v3, v4);
        v40 = v39;
        p_pbTableUID = objc_msgSend_hiddenStateForColumnsOwnerUID(self, v39, v41, v42, v43);
        v135 = v44;
        p_p_pbTableUID = &p_pbTableUID;
        v45 = sub_22123067C(p_uidMap, &p_pbTableUID);
        v45[4] = HiddenStateForColumnsOwnerUID;
        v45[5] = v40;
      }
    }

    v46 = self->_conditionalStyleOwnerUID.var0.var0._lower;
    if ((v46 || self->_conditionalStyleOwnerUID.var0.var0._upper) && (v46 != self->_nextConditionalStyleOwnerUID.var0.var0._lower || self->_conditionalStyleOwnerUID.var0.var0._upper != self->_nextConditionalStyleOwnerUID.var0.var0._upper))
    {
      ConditionalStyleOwnerUID = objc_msgSend_nextConditionalStyleOwnerUID(self, a2, v2, v3, v4);
      v49 = v48;
      p_pbTableUID = objc_msgSend_conditionalStyleOwnerUID(self, v48, v50, v51, v52);
      v135 = v53;
      p_p_pbTableUID = &p_pbTableUID;
      v54 = sub_22123067C(p_uidMap, &p_pbTableUID);
      v54[4] = ConditionalStyleOwnerUID;
      v54[5] = v49;
    }

    v55 = self->_mergeOwnerUID.var0.var0._lower;
    if ((v55 || self->_mergeOwnerUID.var0.var0._upper) && (v55 != self->_nextMergeOwnerUID.var0.var0._lower || self->_mergeOwnerUID.var0.var0._upper != self->_nextMergeOwnerUID.var0.var0._upper))
    {
      MergeOwnerUID = objc_msgSend_nextMergeOwnerUID(self, a2, v2, v3, v4);
      v58 = v57;
      p_pbTableUID = objc_msgSend_mergeOwnerUID(self, v57, v59, v60, v61);
      v135 = v62;
      p_p_pbTableUID = &p_pbTableUID;
      v63 = sub_22123067C(p_uidMap, &p_pbTableUID);
      v63[4] = MergeOwnerUID;
      v63[5] = v58;
    }

    v64 = self->_pencilAnnotationOwnerUID.var0.var0._lower;
    if ((v64 || self->_pencilAnnotationOwnerUID.var0.var0._upper) && (v64 != self->_nextPencilAnnotationOwnerUID.var0.var0._lower || self->_pencilAnnotationOwnerUID.var0.var0._upper != self->_nextPencilAnnotationOwnerUID.var0.var0._upper))
    {
      PencilAnnotationOwnerUID = objc_msgSend_nextPencilAnnotationOwnerUID(self, a2, v2, v3, v4);
      v67 = v66;
      p_pbTableUID = objc_msgSend_pencilAnnotationOwnerUID(self, v66, v68, v69, v70);
      v135 = v71;
      p_p_pbTableUID = &p_pbTableUID;
      v72 = sub_22123067C(p_uidMap, &p_pbTableUID);
      v72[4] = PencilAnnotationOwnerUID;
      v72[5] = v67;
    }

    v73 = self->_categoryAggregatesOwnerUID.var0.var0._lower;
    if ((v73 || self->_categoryAggregatesOwnerUID.var0.var0._upper) && (v73 != self->_nextCategoryAggregatesOwnerUID.var0.var0._lower || self->_categoryAggregatesOwnerUID.var0.var0._upper != self->_nextCategoryAggregatesOwnerUID.var0.var0._upper))
    {
      CategoryAggregatesOwnerUID = objc_msgSend_nextCategoryAggregatesOwnerUID(self, a2, v2, v3, v4);
      v76 = v75;
      p_pbTableUID = objc_msgSend_categoryAggregatesOwnerUID(self, v75, v77, v78, v79);
      v135 = v80;
      p_p_pbTableUID = &p_pbTableUID;
      v81 = sub_22123067C(p_uidMap, &p_pbTableUID);
      v81[4] = CategoryAggregatesOwnerUID;
      v81[5] = v76;
    }

    v82 = self->_groupByUID.var0.var0._lower;
    if ((v82 || self->_groupByUID.var0.var0._upper) && (v82 != self->_nextGroupByUID.var0.var0._lower || self->_groupByUID.var0.var0._upper != self->_nextGroupByUID.var0.var0._upper))
    {
      GroupByUID = objc_msgSend_nextGroupByUID(self, a2, v2, v3, v4);
      v85 = v84;
      p_pbTableUID = objc_msgSend_groupByUID(self, v84, v86, v87, v88);
      v135 = v89;
      p_p_pbTableUID = &p_pbTableUID;
      v90 = sub_22123067C(p_uidMap, &p_pbTableUID);
      v90[4] = GroupByUID;
      v90[5] = v85;
    }

    v91 = objc_msgSend_nextGroupByUID(self, a2, v2, v3, v4);
    v93 = v92;
    if (v91 == sub_2212C4A30(&self->_nextTableUID, 8, v94, v95, v96) && v93 == v97)
    {
      p_pbTableUID = sub_2212C4A30(p_tableUID, 0x64, v98, v99, v100);
      v135 = v101;
      v105 = sub_2212C4A30(&self->_nextTableUID, 0x64, v102, v103, v104);
      v107 = v106;
      p_p_pbTableUID = &p_pbTableUID;
      v108 = sub_221230440(p_uidMap, &p_pbTableUID);
      v108[4] = v105;
      v108[5] = v107;
      p_pbTableUID = sub_2212C4A30(p_tableUID, 0x11, v109, v110, v111);
      v135 = v112;
      v116 = sub_2212C4A30(&self->_nextTableUID, 0x11, v113, v114, v115);
      v118 = v117;
      p_p_pbTableUID = &p_pbTableUID;
      v119 = sub_221230440(p_uidMap, &p_pbTableUID);
      v119[4] = v116;
      v119[5] = v118;
      v123 = 205;
      do
      {
        v124 = v123;
        p_pbTableUID = sub_2212C4A30(p_tableUID, v123, v120, v121, v122);
        v135 = v125;
        v129 = sub_2212C4A30(&self->_nextTableUID, v123, v126, v127, v128);
        v131 = v130;
        p_p_pbTableUID = &p_pbTableUID;
        v132 = sub_221230440(p_uidMap, &p_pbTableUID);
        v132[4] = v129;
        v132[5] = v131;
        ++v123;
      }

      while (v124 < 0x519);
    }
  }

  return p_uidMap;
}

- (TSTOwnerUidMapper)initWithArchive:(const void *)a3
{
  v25.receiver = self;
  v25.super_class = TSTOwnerUidMapper;
  v4 = [(TSTOwnerUidMapper *)&v25 init];
  if (v4)
  {
    v5 = MEMORY[0x277D809E0];
    if (*(a3 + 3))
    {
      v6 = *(a3 + 3);
    }

    else
    {
      v6 = MEMORY[0x277D809E0];
    }

    TSP::UUIDData::UUIDData(&v26, v6);
    *(v4 + 8) = v26;
    if (*(a3 + 4))
    {
      v7 = *(a3 + 4);
    }

    else
    {
      v7 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v7);
    *(v4 + 24) = v26;
    if (*(a3 + 5))
    {
      v8 = *(a3 + 5);
    }

    else
    {
      v8 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v8);
    *(v4 + 40) = v26;
    if (*(a3 + 6))
    {
      v9 = *(a3 + 6);
    }

    else
    {
      v9 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v9);
    *(v4 + 56) = v26;
    if (*(a3 + 7))
    {
      v10 = *(a3 + 7);
    }

    else
    {
      v10 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v10);
    *(v4 + 72) = v26;
    if (*(a3 + 8))
    {
      v11 = *(a3 + 8);
    }

    else
    {
      v11 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v11);
    *(v4 + 88) = v26;
    if (*(a3 + 9))
    {
      v12 = *(a3 + 9);
    }

    else
    {
      v12 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v12);
    *(v4 + 104) = v26;
    if (*(a3 + 10))
    {
      v13 = *(a3 + 10);
    }

    else
    {
      v13 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v13);
    *(v4 + 120) = v26;
    if (*(a3 + 11))
    {
      v14 = *(a3 + 11);
    }

    else
    {
      v14 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v14);
    *(v4 + 136) = v26;
    if (*(a3 + 12))
    {
      v15 = *(a3 + 12);
    }

    else
    {
      v15 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v15);
    *(v4 + 152) = v26;
    if (*(a3 + 13))
    {
      v16 = *(a3 + 13);
    }

    else
    {
      v16 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v16);
    *(v4 + 168) = v26;
    if (*(a3 + 14))
    {
      v17 = *(a3 + 14);
    }

    else
    {
      v17 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v17);
    *(v4 + 184) = v26;
    if (*(a3 + 19))
    {
      v18 = *(a3 + 19);
    }

    else
    {
      v18 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v18);
    *(v4 + 200) = v26;
    if (*(a3 + 20))
    {
      v19 = *(a3 + 20);
    }

    else
    {
      v19 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v19);
    *(v4 + 216) = v26;
    if (*(a3 + 15))
    {
      v20 = *(a3 + 15);
    }

    else
    {
      v20 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v20);
    *(v4 + 232) = v26;
    if (*(a3 + 16))
    {
      v21 = *(a3 + 16);
    }

    else
    {
      v21 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v21);
    *(v4 + 248) = v26;
    if (*(a3 + 17))
    {
      v22 = *(a3 + 17);
    }

    else
    {
      v22 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v22);
    *(v4 + 264) = v26;
    if (*(a3 + 18))
    {
      v23 = *(a3 + 18);
    }

    else
    {
      v23 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v23);
    *(v4 + 280) = v26;
  }

  return v4;
}

- (void)saveToArchive:(void *)a3
{
  pbTableUID._lower = objc_msgSend_tableUID(self, a2, a3, v3, v4);
  pbTableUID._upper = v7;
  if (!(pbTableUID._lower | v7))
  {
    pbTableUID = self->_pbTableUID;
  }

  *(a3 + 4) |= 1u;
  v8 = *(a3 + 3);
  if (!v8)
  {
    v9 = *(a3 + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x223DA0360](v9);
    *(a3 + 3) = v8;
  }

  TSKUIDStruct::saveToMessage(&pbTableUID, v8);
  *(a3 + 4) |= 2u;
  v10 = *(a3 + 4);
  if (!v10)
  {
    v11 = *(a3 + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x223DA0360](v11);
    *(a3 + 4) = v10;
  }

  TSP::UUIDData::saveToMessage(&self->_nextTableUID, v10);
  *(a3 + 4) |= 4u;
  v12 = *(a3 + 5);
  if (!v12)
  {
    v13 = *(a3 + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x223DA0360](v13);
    *(a3 + 5) = v12;
  }

  TSP::UUIDData::saveToMessage(&self->_hiddenStateForRowsOwnerUID, v12);
  *(a3 + 4) |= 8u;
  v14 = *(a3 + 6);
  if (!v14)
  {
    v15 = *(a3 + 1);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = MEMORY[0x223DA0360](v15);
    *(a3 + 6) = v14;
  }

  TSP::UUIDData::saveToMessage(&self->_nextHiddenStateForRowsOwnerUID, v14);
  *(a3 + 4) |= 0x10u;
  v16 = *(a3 + 7);
  if (!v16)
  {
    v17 = *(a3 + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x223DA0360](v17);
    *(a3 + 7) = v16;
  }

  TSP::UUIDData::saveToMessage(&self->_hiddenStateForColumnsOwnerUID, v16);
  *(a3 + 4) |= 0x20u;
  v18 = *(a3 + 8);
  if (!v18)
  {
    v19 = *(a3 + 1);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = MEMORY[0x223DA0360](v19);
    *(a3 + 8) = v18;
  }

  TSP::UUIDData::saveToMessage(&self->_nextHiddenStateForColumnsOwnerUID, v18);
  *(a3 + 4) |= 0x40u;
  v20 = *(a3 + 9);
  if (!v20)
  {
    v21 = *(a3 + 1);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x223DA0360](v21);
    *(a3 + 9) = v20;
  }

  TSP::UUIDData::saveToMessage(&self->_conditionalStyleOwnerUID, v20);
  *(a3 + 4) |= 0x80u;
  v22 = *(a3 + 10);
  if (!v22)
  {
    v23 = *(a3 + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = MEMORY[0x223DA0360](v23);
    *(a3 + 10) = v22;
  }

  TSP::UUIDData::saveToMessage(&self->_nextConditionalStyleOwnerUID, v22);
  *(a3 + 4) |= 0x100u;
  v24 = *(a3 + 11);
  if (!v24)
  {
    v25 = *(a3 + 1);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = MEMORY[0x223DA0360](v25);
    *(a3 + 11) = v24;
  }

  TSP::UUIDData::saveToMessage(&self->_sortRuleReferenceTrackerOwnerUID, v24);
  *(a3 + 4) |= 0x200u;
  v26 = *(a3 + 12);
  if (!v26)
  {
    v27 = *(a3 + 1);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = MEMORY[0x223DA0360](v27);
    *(a3 + 12) = v26;
  }

  TSP::UUIDData::saveToMessage(&self->_nextSortRuleReferenceTrackerOwnerUID, v26);
  *(a3 + 4) |= 0x400u;
  v28 = *(a3 + 13);
  if (!v28)
  {
    v29 = *(a3 + 1);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = MEMORY[0x223DA0360](v29);
    *(a3 + 13) = v28;
  }

  TSP::UUIDData::saveToMessage(&self->_mergeOwnerUID, v28);
  *(a3 + 4) |= 0x800u;
  v30 = *(a3 + 14);
  if (!v30)
  {
    v31 = *(a3 + 1);
    if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
    }

    v30 = MEMORY[0x223DA0360](v31);
    *(a3 + 14) = v30;
  }

  TSP::UUIDData::saveToMessage(&self->_nextMergeOwnerUID, v30);
  *(a3 + 4) |= 0x10000u;
  v32 = *(a3 + 19);
  if (!v32)
  {
    v33 = *(a3 + 1);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = MEMORY[0x223DA0360](v33);
    *(a3 + 19) = v32;
  }

  TSP::UUIDData::saveToMessage(&self->_pencilAnnotationOwnerUID, v32);
  *(a3 + 4) |= 0x20000u;
  v34 = *(a3 + 20);
  if (!v34)
  {
    v35 = *(a3 + 1);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    v34 = MEMORY[0x223DA0360](v35);
    *(a3 + 20) = v34;
  }

  TSP::UUIDData::saveToMessage(&self->_nextPencilAnnotationOwnerUID, v34);
  *(a3 + 4) |= 0x1000u;
  v36 = *(a3 + 15);
  if (!v36)
  {
    v37 = *(a3 + 1);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = MEMORY[0x223DA0360](v37);
    *(a3 + 15) = v36;
  }

  TSP::UUIDData::saveToMessage(&self->_categoryAggregatesOwnerUID, v36);
  *(a3 + 4) |= 0x2000u;
  v38 = *(a3 + 16);
  if (!v38)
  {
    v39 = *(a3 + 1);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x223DA0360](v39);
    *(a3 + 16) = v38;
  }

  TSP::UUIDData::saveToMessage(&self->_nextCategoryAggregatesOwnerUID, v38);
  *(a3 + 4) |= 0x4000u;
  v40 = *(a3 + 17);
  if (!v40)
  {
    v41 = *(a3 + 1);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = MEMORY[0x223DA0360](v41);
    *(a3 + 17) = v40;
  }

  TSP::UUIDData::saveToMessage(&self->_groupByUID, v40);
  *(a3 + 4) |= 0x8000u;
  v42 = *(a3 + 18);
  if (!v42)
  {
    v43 = *(a3 + 1);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = MEMORY[0x223DA0360](v43);
    *(a3 + 18) = v42;
  }

  TSP::UUIDData::saveToMessage(&self->_nextGroupByUID, v42);
}

- (TSKUIDStruct)pbTableUID
{
  p_pbTableUID = &self->_pbTableUID;
  lower = self->_pbTableUID._lower;
  upper = p_pbTableUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)categoryOwnerUID
{
  p_categoryOwnerUID = &self->_categoryOwnerUID;
  lower = self->_categoryOwnerUID._lower;
  upper = p_categoryOwnerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextCategoryOwnerUID
{
  p_nextCategoryOwnerUID = &self->_nextCategoryOwnerUID;
  lower = self->_nextCategoryOwnerUID._lower;
  upper = p_nextCategoryOwnerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0uLL;
  *(self + 24) = 0uLL;
  *(self + 40) = 0uLL;
  *(self + 56) = 0uLL;
  *(self + 72) = 0uLL;
  *(self + 88) = 0uLL;
  *(self + 104) = 0uLL;
  *(self + 120) = 0uLL;
  *(self + 136) = 0uLL;
  *(self + 152) = 0uLL;
  *(self + 168) = 0uLL;
  *(self + 184) = 0uLL;
  *(self + 200) = 0uLL;
  *(self + 216) = 0uLL;
  *(self + 232) = 0uLL;
  *(self + 248) = 0uLL;
  *(self + 264) = 0uLL;
  *(self + 280) = 0uLL;
  *(self + 312) = 0u;
  *(self + 328) = 0u;
  *(self + 86) = 1065353216;
  return self;
}

@end