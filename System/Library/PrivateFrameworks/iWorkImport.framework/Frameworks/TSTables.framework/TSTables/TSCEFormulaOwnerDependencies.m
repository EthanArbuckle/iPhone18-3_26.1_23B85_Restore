@interface TSCEFormulaOwnerDependencies
- (BOOL)duringSubOwnerUIDUpgrade;
- (TSCEDependencyTracker)dependencyTracker;
- (TSCEFormulaOwnerDependencies)initWithContext:(id)a3 dependencyTracker:(id)a4 ownerID:(unsigned __int16)a5 ownerUID:(const TSKUIDStruct *)a6 owner:(id)a7 ownerIndex:(unsigned __int16)a8;
- (TSKUIDStruct)formulaOwnerUid;
- (TSUCellCoord)embiggenedCellCoord;
- (void)dealloc;
- (void)loadFromUnarchiver:(id)a3;
- (void)pushRangeAndSpanningDependents:(id)a3 fromCoord:(const TSUCellCoord *)a4 cellIsInACycle:(BOOL)a5;
- (void)resetOwnerUIDForUpgrade:(const TSKUIDStruct *)a3 forBaseOwner:(const TSKUIDStruct *)a4 ownerKind:(unsigned __int16)a5;
- (void)saveToArchiver:(id)a3;
- (void)setDependencyTracker:(id)a3;
- (void)setOwnerIndex:(unsigned __int16)a3;
- (void)unpackAfterUnarchive;
- (void)willClose;
@end

@implementation TSCEFormulaOwnerDependencies

- (TSCEFormulaOwnerDependencies)initWithContext:(id)a3 dependencyTracker:(id)a4 ownerID:(unsigned __int16)a5 ownerUID:(const TSKUIDStruct *)a6 owner:(id)a7 ownerIndex:(unsigned __int16)a8
{
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v68.receiver = self;
  v68.super_class = TSCEFormulaOwnerDependencies;
  v17 = [(TSCEFormulaOwnerDependencies *)&v68 initWithContext:v14];
  v18 = v17;
  if (v17)
  {
    v17->_formulaOwnerUid = *a6;
    v17->_formulaOwnerId = v11;
    v17->_ownerIndex = a8;
    v19 = [TSCECellDependencies alloc];
    v21 = objc_msgSend_initWithDependTracker_ownerID_ownerUID_ownerIndex_(v19, v20, v15, v11, a6, v18->_ownerIndex);
    cellDependencies = v18->_cellDependencies;
    v18->_cellDependencies = v21;

    v23 = [TSCERangeDependencies alloc];
    v26 = objc_msgSend_initWithDependTracker_ownerID_(v23, v24, v15, v11, v25);
    rangeDependencies = v18->_rangeDependencies;
    v18->_rangeDependencies = v26;

    v28 = [TSCESpanningDependencies alloc];
    isColumns = objc_msgSend_initWithDependTracker_ownerID_ownerUID_isColumns_(v28, v29, v15, v11, a6, 0);
    spanningRowDependencies = v18->_spanningRowDependencies;
    v18->_spanningRowDependencies = isColumns;

    v32 = [TSCESpanningDependencies alloc];
    v34 = objc_msgSend_initWithDependTracker_ownerID_ownerUID_isColumns_(v32, v33, v15, v11, a6, 1);
    spanningColumnDependencies = v18->_spanningColumnDependencies;
    v18->_spanningColumnDependencies = v34;

    v36 = [TSCEVolatileDependencies alloc];
    v38 = objc_msgSend_initWithDependTracker_ownerID_ownerUID_(v36, v37, v15, v11, a6);
    volatileDependencies = v18->_volatileDependencies;
    v18->_volatileDependencies = v38;

    v40 = [TSCEWholeOwnerDependencies alloc];
    v43 = objc_msgSend_initWithDependTracker_ownerID_(v40, v41, v15, v11, v42);
    wholeOwnerDependencies = v18->_wholeOwnerDependencies;
    v18->_wholeOwnerDependencies = v43;

    v45 = [TSCEErrorsAndWarnings alloc];
    v48 = objc_msgSend_initWithDependTracker_ownerID_(v45, v46, v15, v11, v47);
    errors = v18->_errors;
    v18->_errors = v48;

    v50 = [TSCESpillSizes alloc];
    v53 = objc_msgSend_initWithDependTracker_ownerID_(v50, v51, v15, v11, v52);
    spillSizes = v18->_spillSizes;
    v18->_spillSizes = v53;

    v55 = [TSCEUuidReferences alloc];
    v59 = objc_msgSend_initWithOwnerUID_(v55, v56, a6, v57, v58);
    uuidReferences = v18->_uuidReferences;
    v18->_uuidReferences = v59;

    objc_storeStrong(&v18->_formulaOwner, a7);
    if (objc_opt_respondsToSelector())
    {
      v65 = objc_msgSend_objectToArchiveInDependencyTracker(v18->_formulaOwner, v61, v62, v63, v64);
      calcEngineRegistrationObject = v18->_calcEngineRegistrationObject;
      v18->_calcEngineRegistrationObject = v65;
    }
  }

  return v18;
}

- (void)willClose
{
  cellDependencies = self->_cellDependencies;
  self->_cellDependencies = 0;

  rangeDependencies = self->_rangeDependencies;
  self->_rangeDependencies = 0;

  spanningColumnDependencies = self->_spanningColumnDependencies;
  self->_spanningColumnDependencies = 0;

  spanningRowDependencies = self->_spanningRowDependencies;
  self->_spanningRowDependencies = 0;

  volatileDependencies = self->_volatileDependencies;
  self->_volatileDependencies = 0;

  wholeOwnerDependencies = self->_wholeOwnerDependencies;
  self->_wholeOwnerDependencies = 0;

  errors = self->_errors;
  self->_errors = 0;

  spillSizes = self->_spillSizes;
  self->_spillSizes = 0;

  uuidReferences = self->_uuidReferences;
  self->_uuidReferences = 0;
}

- (void)dealloc
{
  objc_msgSend_willClose(self, a2, v2, v3, v4);
  v6.receiver = self;
  v6.super_class = TSCEFormulaOwnerDependencies;
  [(TSCEFormulaOwnerDependencies *)&v6 dealloc];
}

- (TSCEDependencyTracker)dependencyTracker
{
  cellDependencies = self->_cellDependencies;
  if (cellDependencies)
  {
    cellDependencies = objc_msgSend_dependencyTracker(cellDependencies, a2, v2, v3, v4);
    v5 = vars8;
  }

  return cellDependencies;
}

- (void)setDependencyTracker:(id)a3
{
  v29 = a3;
  cellDependencies = self->_cellDependencies;
  if (cellDependencies)
  {
    objc_msgSend_setDependencyTracker_(cellDependencies, v4, v29, v5, v6);
    objc_msgSend_setDependencyTracker_(self->_rangeDependencies, v8, v29, v9, v10);
    objc_msgSend_setDependencyTracker_(self->_spanningColumnDependencies, v11, v29, v12, v13);
    objc_msgSend_setDependencyTracker_(self->_spanningRowDependencies, v14, v29, v15, v16);
    objc_msgSend_setDependencyTracker_(self->_volatileDependencies, v17, v29, v18, v19);
    objc_msgSend_setDependencyTracker_(self->_wholeOwnerDependencies, v20, v29, v21, v22);
    objc_msgSend_setDependencyTracker_(self->_errors, v23, v29, v24, v25);
    objc_msgSend_setDependencyTracker_(self->_spillSizes, v26, v29, v27, v28);
  }
}

- (void)setOwnerIndex:(unsigned __int16)a3
{
  if (self->_ownerIndex != a3)
  {
    v5 = a3;
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_ownerIndex = v5;
    cellDependencies = self->_cellDependencies;
    if (cellDependencies)
    {

      objc_msgSend_setOwnerIndex_(cellDependencies, v7, v5, v8, v9);
    }
  }
}

- (TSUCellCoord)embiggenedCellCoord
{
  cellDependencies = self->_cellDependencies;
  if (cellDependencies)
  {
    return objc_msgSend_embiggenedCellCoord(cellDependencies, a2, v2, v3, v4);
  }

  else
  {
    return 0x7FFF7FFFFFFFLL;
  }
}

- (void)pushRangeAndSpanningDependents:(id)a3 fromCoord:(const TSUCellCoord *)a4 cellIsInACycle:(BOOL)a5
{
  v5 = a5;
  v31 = a3;
  v12 = objc_msgSend_rangeDependencies(self, v8, v9, v10, v11);
  v17 = v12;
  if (v12 && (objc_msgSend_isEmpty(v12, v13, v14, v15, v16) & 1) == 0)
  {
    objc_msgSend_pushDependents_outDependents_referencingCellIsInACycle_(v17, v13, a4, v31, v5);
  }

  v18 = objc_msgSend_spanningRowDependencies(self, v13, v14, v15, v16);
  v23 = v18;
  if (v18 && (objc_msgSend_isEmpty(v18, v19, v20, v21, v22) & 1) == 0)
  {
    objc_msgSend_pushDependents_outDependents_referencingCellIsInACycle_(v23, v19, a4, v31, v5);
  }

  v24 = objc_msgSend_spanningColumnDependencies(self, v19, v20, v21, v22);
  v29 = v24;
  if (v24 && (objc_msgSend_isEmpty(v24, v25, v26, v27, v28) & 1) == 0)
  {
    objc_msgSend_pushDependents_outDependents_referencingCellIsInACycle_(v29, v30, a4, v31, v5);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v69 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v69, v4, off_2812E2AC8[132], v5, v6);

  if (*(v7 + 24))
  {
    v9 = *(v7 + 24);
  }

  else
  {
    v9 = MEMORY[0x277D809E0];
  }

  self->_formulaOwnerUid._lower = TSKUIDStruct::loadFromMessage(v9, v8);
  self->_formulaOwnerUid._upper = v10;
  self->_formulaOwnerId = *(v7 + 136);
  v11 = *(v7 + 16);
  if ((v11 & 0x8000) != 0)
  {
    v12 = *(v7 + 140);
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOWORD(v12) = 0;
  if ((v11 & 0x200) != 0)
  {
LABEL_8:
    TSKUIDStruct::loadFromMessage(*(v7 + 96), v10);
  }

LABEL_9:
  self->_ownerIndex = v12;
  v13 = [TSCECellDependencies alloc];
  v15 = objc_msgSend_initWithDependTracker_ownerID_ownerUID_ownerIndex_(v13, v14, 0, self->_formulaOwnerId, &self->_formulaOwnerUid, self->_ownerIndex);
  cellDependencies = self->_cellDependencies;
  self->_cellDependencies = v15;

  v17 = [TSCERangeDependencies alloc];
  v20 = objc_msgSend_initWithDependTracker_ownerID_(v17, v18, 0, self->_formulaOwnerId, v19);
  rangeDependencies = self->_rangeDependencies;
  self->_rangeDependencies = v20;

  v22 = [TSCESpanningDependencies alloc];
  isColumns = objc_msgSend_initWithDependTracker_ownerID_ownerUID_isColumns_(v22, v23, 0, self->_formulaOwnerId, &self->_formulaOwnerUid, 1);
  spanningColumnDependencies = self->_spanningColumnDependencies;
  self->_spanningColumnDependencies = isColumns;

  v26 = [TSCESpanningDependencies alloc];
  v28 = objc_msgSend_initWithDependTracker_ownerID_ownerUID_isColumns_(v26, v27, 0, self->_formulaOwnerId, &self->_formulaOwnerUid, 0);
  spanningRowDependencies = self->_spanningRowDependencies;
  self->_spanningRowDependencies = v28;

  v30 = [TSCEVolatileDependencies alloc];
  v32 = objc_msgSend_initWithDependTracker_ownerID_ownerUID_(v30, v31, 0, self->_formulaOwnerId, &self->_formulaOwnerUid);
  volatileDependencies = self->_volatileDependencies;
  self->_volatileDependencies = v32;

  v34 = [TSCEWholeOwnerDependencies alloc];
  v37 = objc_msgSend_initWithDependTracker_ownerID_(v34, v35, 0, self->_formulaOwnerId, v36);
  wholeOwnerDependencies = self->_wholeOwnerDependencies;
  self->_wholeOwnerDependencies = v37;

  v39 = [TSCEErrorsAndWarnings alloc];
  v42 = objc_msgSend_initWithDependTracker_ownerID_(v39, v40, 0, self->_formulaOwnerId, v41);
  errors = self->_errors;
  self->_errors = v42;

  v44 = [TSCESpillSizes alloc];
  v47 = objc_msgSend_initWithDependTracker_ownerID_(v44, v45, 0, self->_formulaOwnerId, v46);
  spillSizes = self->_spillSizes;
  self->_spillSizes = v47;

  v52 = *(v7 + 16);
  if ((v52 & 0x400) != 0)
  {
    objc_msgSend_readFromTiledArchive_unarchiver_ownerDepends_(self->_cellDependencies, v49, *(v7 + 104), v69, self);
  }

  else if ((v52 & 2) != 0)
  {
    objc_msgSend_readFromExpandedArchive_(self->_cellDependencies, v49, *(v7 + 32), v50, v51);
  }

  v53 = *(v7 + 16);
  if ((v53 & 0x1000) != 0)
  {
    objc_msgSend_readFromTiledArchive_unarchiver_ownerDepends_(self->_rangeDependencies, v49, *(v7 + 120), v69, self);
  }

  else if ((v53 & 4) != 0)
  {
    objc_msgSend_readFromExpandedArchive_(self->_rangeDependencies, v49, *(v7 + 40), v50, v51);
  }

  v54 = *(v7 + 16);
  if ((v54 & 0x10) != 0)
  {
    objc_msgSend_readFromExpandedArchive_(self->_spanningColumnDependencies, v49, *(v7 + 56), v50, v51);
    v54 = *(v7 + 16);
  }

  if ((v54 & 0x20) != 0)
  {
    objc_msgSend_readFromExpandedArchive_(self->_spanningRowDependencies, v49, *(v7 + 64), v50, v51);
    v54 = *(v7 + 16);
  }

  if ((v54 & 8) != 0)
  {
    objc_msgSend_readFromExpandedArchive_(self->_volatileDependencies, v49, *(v7 + 48), v50, v51);
    v54 = *(v7 + 16);
  }

  if ((v54 & 0x40) != 0)
  {
    objc_msgSend_readFromExpandedArchive_(self->_wholeOwnerDependencies, v49, *(v7 + 72), v50, v51);
    v54 = *(v7 + 16);
  }

  if ((v54 & 0x80) != 0)
  {
    objc_msgSend_readFromArchive_(self->_errors, v49, *(v7 + 80), v50, v51);
    v54 = *(v7 + 16);
  }

  if ((v54 & 0x800) != 0)
  {
    v60 = [TSCEUuidReferences alloc];
    if (*(v7 + 112))
    {
      v59 = objc_msgSend_initFromArchive_ownerUID_(v60, v61, *(v7 + 112), &self->_formulaOwnerUid, v62);
    }

    else
    {
      v59 = objc_msgSend_initFromArchive_ownerUID_(v60, v61, &TSCE::_UuidReferencesArchive_default_instance_, &self->_formulaOwnerUid, v62);
    }
  }

  else
  {
    v55 = [TSCEUuidReferences alloc];
    v59 = objc_msgSend_initWithOwnerUID_(v55, v56, &self->_formulaOwnerUid, v57, v58);
  }

  uuidReferences = self->_uuidReferences;
  self->_uuidReferences = v59;

  v67 = *(v7 + 16);
  if ((v67 & 0x2000) != 0)
  {
    objc_msgSend_readFromArchive_(self->_spillSizes, v64, *(v7 + 128), v65, v66);
    v67 = *(v7 + 16);
  }

  if ((v67 & 0x100) != 0)
  {
    v68 = *(v7 + 88);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = sub_2213BDB5C;
    v70[3] = &unk_2784634F0;
    v70[4] = self;
    sub_221375DAC(v69, v68, &unk_2835174A8, v70);
  }
}

- (void)unpackAfterUnarchive
{
  v6 = objc_msgSend_dependencyTracker(self->_cellDependencies, a2, v2, v3, v4);

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEFormulaOwnerDependencies unpackAfterUnarchive]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaOwnerDependencies.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 234, 0, "invalid nil value for '%{public}s'", "_cellDependencies.dependencyTracker");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  objc_msgSend_unpackAfterUnarchive(self->_cellDependencies, v7, v8, v9, v10);
  objc_msgSend_unpackAfterUnarchive(self->_rangeDependencies, v22, v23, v24, v25);
  objc_msgSend_unpackAfterUnarchive(self->_spanningColumnDependencies, v26, v27, v28, v29);
  objc_msgSend_unpackAfterUnarchive(self->_spanningRowDependencies, v30, v31, v32, v33);
  objc_msgSend_unpackAfterUnarchive(self->_volatileDependencies, v34, v35, v36, v37);
  objc_msgSend_unpackAfterUnarchive(self->_wholeOwnerDependencies, v38, v39, v40, v41);
  objc_msgSend_unpackAfterUnarchive(self->_uuidReferences, v42, v43, v44, v45);
  v50 = objc_msgSend_formulaOwner(self->_calcEngineRegistrationObject, v46, v47, v48, v49);
  if (v50)
  {
    v51 = v50;
    objc_storeStrong(&self->_formulaOwner, v50);
    v50 = v51;
  }
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  objc_msgSend_setMessageVersion_(v4, v5, 0x300020000000ALL, v6, v7);
  v8 = v4;
  google::protobuf::internal::AssignDescriptors();
  v11 = objc_msgSend_messageWithNewFunction_descriptor_(v8, v9, sub_2213BE9D0, off_2812E2AC8[132], v10);

  *(v11 + 16) |= 1u;
  v12 = *(v11 + 24);
  if (!v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x223DA0360](v13);
    *(v11 + 24) = v12;
  }

  p_formulaOwnerUid = &self->_formulaOwnerUid;
  TSKUIDStruct::saveToMessage(&self->_formulaOwnerUid, v12);
  formulaOwnerId = self->_formulaOwnerId;
  ownerIndex = self->_ownerIndex;
  *(v11 + 16) |= 0xC000u;
  *(v11 + 136) = formulaOwnerId;
  *(v11 + 140) = ownerIndex;
  formulaOwnerUid = self->_formulaOwnerUid;
  if (ownerIndex > 7 || ((1 << ownerIndex) & 0x86) == 0)
  {
    formulaOwnerUid._lower = sub_2212C4A5C(p_formulaOwnerUid, ownerIndex);
    formulaOwnerUid._upper = ownerIndex;
    v21 = self->_ownerIndex;
    if (v21 == 17 || v21 == 100 || (v21 - 205) <= 0x44C)
    {
      self->_saveAsEmbiggenedFormat = 1;
    }
  }

  if (formulaOwnerUid._lower != p_formulaOwnerUid->_lower || formulaOwnerUid._upper != self->_formulaOwnerUid._upper)
  {
    *(v11 + 16) |= 0x200u;
    v22 = *(v11 + 96);
    if (!v22)
    {
      v23 = *(v11 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x223DA0360](v23);
      *(v11 + 96) = v22;
    }

    TSKUIDStruct::saveToMessage(&formulaOwnerUid, v22);
  }

  if (self->_saveAsEmbiggenedFormat)
  {
    goto LABEL_33;
  }

  v24 = objc_msgSend_embiggenedCellCoord(self, ownerIndex, v15, v16, v17);
  if (v24 != 0x7FFFFFFF && v24 > 0xFFFE)
  {
    goto LABEL_24;
  }

  v27 = WORD2(v24) != 0x7FFF && WORD2(v24) > 0xFEu;
  v28 = v27;
  self->_saveAsEmbiggenedFormat = v28;
  if (v27)
  {
    goto LABEL_33;
  }

  v79 = objc_msgSend_count(self->_errors, ownerIndex, v25, v26, v17);
  if (v79 >> 3 > 0x270 || objc_msgSend_memoryUseEstimate(self->_cellDependencies, ownerIndex, v80, v81, v17) > 0x3000000)
  {
LABEL_24:
    self->_saveAsEmbiggenedFormat = 1;
LABEL_33:
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(v8, ownerIndex, 0xA000000000003, @"TSTExpandedTables", v17);
    goto LABEL_34;
  }

  if (self->_saveAsEmbiggenedFormat)
  {
    goto LABEL_33;
  }

LABEL_34:
  if (self->_cellDependencies)
  {
    *(v11 + 16) |= 0x400u;
    v30 = *(v11 + 104);
    if (!v30)
    {
      v31 = *(v11 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellDependenciesTiledArchive>(v31);
      *(v11 + 104) = v30;
    }

    objc_msgSend_encodeToTiledArchive_archiver_(self->_cellDependencies, ownerIndex, v30, v8, v17);
    if (!self->_saveAsEmbiggenedFormat)
    {
      *(v11 + 16) |= 2u;
      v32 = *(v11 + 32);
      if (!v32)
      {
        v33 = *(v11 + 8);
        if (v33)
        {
          v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
        }

        v32 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellDependenciesExpandedArchive>(v33);
        *(v11 + 32) = v32;
      }

      objc_msgSend_encodeToExpandedArchive_(self->_cellDependencies, ownerIndex, v32, v29, v17);
    }
  }

  if (self->_rangeDependencies)
  {
    *(v11 + 16) |= 0x1000u;
    v34 = *(v11 + 120);
    if (!v34)
    {
      v35 = *(v11 + 8);
      if (v35)
      {
        v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
      }

      v34 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeDependenciesTiledArchive>(v35);
      *(v11 + 120) = v34;
    }

    objc_msgSend_encodeToTiledArchive_archiver_(self->_rangeDependencies, ownerIndex, v34, v8, v17);
    if (!self->_saveAsEmbiggenedFormat)
    {
      *(v11 + 16) |= 4u;
      v36 = *(v11 + 40);
      if (!v36)
      {
        v37 = *(v11 + 8);
        if (v37)
        {
          v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
        }

        v36 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeDependenciesArchive>(v37);
        *(v11 + 40) = v36;
      }

      objc_msgSend_encodeToArchive_(self->_rangeDependencies, ownerIndex, v36, v29, v17);
    }
  }

  if (self->_spanningColumnDependencies)
  {
    *(v11 + 16) |= 0x10u;
    v38 = *(v11 + 56);
    if (!v38)
    {
      v39 = *(v11 + 8);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive>(v39);
      *(v11 + 56) = v38;
    }

    objc_msgSend_encodeToExpandedArchive_(self->_spanningColumnDependencies, ownerIndex, v38, v29, v17);
  }

  if (self->_spanningRowDependencies)
  {
    *(v11 + 16) |= 0x20u;
    v40 = *(v11 + 64);
    if (!v40)
    {
      v41 = *(v11 + 8);
      if (v41)
      {
        v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
      }

      v40 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive>(v41);
      *(v11 + 64) = v40;
    }

    objc_msgSend_encodeToExpandedArchive_(self->_spanningRowDependencies, ownerIndex, v40, v29, v17);
  }

  if (self->_volatileDependencies)
  {
    *(v11 + 16) |= 8u;
    v42 = *(v11 + 48);
    if (!v42)
    {
      v43 = *(v11 + 8);
      if (v43)
      {
        v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
      }

      v42 = google::protobuf::Arena::CreateMaybeMessage<TSCE::VolatileDependenciesExpandedArchive>(v43);
      *(v11 + 48) = v42;
    }

    objc_msgSend_encodeToExpandedArchive_embiggenedFormatOnly_(self->_volatileDependencies, ownerIndex, v42, self->_saveAsEmbiggenedFormat, v17);
  }

  if (!self->_saveAsEmbiggenedFormat && self->_wholeOwnerDependencies)
  {
    *(v11 + 16) |= 0x40u;
    v44 = *(v11 + 72);
    if (!v44)
    {
      v45 = *(v11 + 8);
      if (v45)
      {
        v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
      }

      v44 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WholeOwnerDependenciesExpandedArchive>(v45);
      *(v11 + 72) = v44;
    }

    objc_msgSend_encodeToExpandedArchive_(self->_wholeOwnerDependencies, ownerIndex, v44, v29, v17);
  }

  if (self->_errors)
  {
    *(v11 + 16) |= 0x80u;
    v46 = *(v11 + 80);
    if (!v46)
    {
      v47 = *(v11 + 8);
      if (v47)
      {
        v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
      }

      v46 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellErrorsArchive>(v47);
      *(v11 + 80) = v46;
    }

    objc_msgSend_encodeToArchive_(self->_errors, ownerIndex, v46, v29, v17);
  }

  if (self->_spillSizes)
  {
    *(v11 + 16) |= 0x2000u;
    v48 = *(v11 + 128);
    if (!v48)
    {
      v49 = *(v11 + 8);
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellSpillSizesArchive>(v49);
      *(v11 + 128) = v48;
    }

    objc_msgSend_encodeToArchive_(self->_spillSizes, ownerIndex, v48, v29, v17);
  }

  uuidReferences = self->_uuidReferences;
  if (uuidReferences)
  {
    *(v11 + 16) |= 0x800u;
    v51 = *(v11 + 112);
    if (!v51)
    {
      v52 = *(v11 + 8);
      if (v52)
      {
        v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
      }

      v51 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive>(v52);
      *(v11 + 112) = v51;
    }

    objc_msgSend_encodeToArchive_archiver_(uuidReferences, ownerIndex, v51, v8, v17);
  }

  v57 = TSUProtocolCast();
  if (v57 && objc_msgSend_ownerIndex(self, v53, v54, v55, v56, &unk_2835174A8) != 100)
  {
    if (objc_opt_respondsToSelector())
    {
      v62 = objc_msgSend_objectToArchiveInDependencyTracker(v57, v58, v59, v60, v61);

      if (!v62)
      {
        v66 = MEMORY[0x277D81150];
        v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "[TSCEFormulaOwnerDependencies saveToArchiver:]", v64, v65);
        v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaOwnerDependencies.mm", v69, v70);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v72, v67, v71, 450, 0, "failed to get an object to archive for a formula owner that needs registration. Registration failure at unarchive time is likely.");

        v62 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
LABEL_110:

        goto LABEL_111;
      }
    }

    else
    {
      v62 = v57;
    }

    *(v11 + 16) |= 0x100u;
    v77 = *(v11 + 88);
    if (!v77)
    {
      v78 = *(v11 + 8);
      if (v78)
      {
        v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
      }

      v77 = MEMORY[0x223DA0390](v78);
      *(v11 + 88) = v77;
    }

    objc_msgSend_setWeakReference_message_(v8, v63, v62, v77, v65);
    goto LABEL_110;
  }

LABEL_111:
  self->_saveAsEmbiggenedFormat = 0;
}

- (BOOL)duringSubOwnerUIDUpgrade
{
  v5 = objc_msgSend_dependencyTracker(self, a2, v2, v3, v4);
  v10 = objc_msgSend_duringSubOwnerUIDUpgrade(v5, v6, v7, v8, v9);

  return v10;
}

- (void)resetOwnerUIDForUpgrade:(const TSKUIDStruct *)a3 forBaseOwner:(const TSKUIDStruct *)a4 ownerKind:(unsigned __int16)a5
{
  v5 = a5;
  v8 = objc_msgSend_formulaOwnerUid(self, a2, a3, a4, a5);
  v10 = v9;
  if (objc_msgSend_ownerIndex(self, v9, v11, v12, v13) != v5)
  {
    objc_msgSend_setOwnerIndex_(self, v14, v5, v16, v17);
  }

  if (v8 != a3->_lower || v10 != a3->_upper)
  {
    if (!objc_msgSend_ownerIndex(self, v14, v15, v16, v17))
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCEFormulaOwnerDependencies resetOwnerUIDForUpgrade:forBaseOwner:ownerKind:]", v21, v22);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaOwnerDependencies.mm", v26, v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 492, 0, "OwnerIndex must be set to use this method");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    }

    if (objc_msgSend_ownerIndex(self, v19, v20, v21, v22) == 1)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSCEFormulaOwnerDependencies resetOwnerUIDForUpgrade:forBaseOwner:ownerKind:]", v36, v37);
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaOwnerDependencies.mm", v41, v42);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v44, v39, v43, 493, 0, "Tables cannot use this method");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    }

    if (objc_msgSend_ownerIndex(self, v34, v35, v36, v37) == 2)
    {
      v53 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[TSCEFormulaOwnerDependencies resetOwnerUIDForUpgrade:forBaseOwner:ownerKind:]", v51, v52);
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaOwnerDependencies.mm", v56, v57);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v59, v54, v58, 494, 0, "Charts cannot use this method");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
    }

    objc_msgSend_willModifyForUpgrade(self, v49, v50, v51, v52);
    self->_formulaOwnerUid = *a3;
    cellDependencies = self->_cellDependencies;
    if (cellDependencies)
    {
      objc_msgSend_resetOwnerUIDForUpgrade_(cellDependencies, v64, a3, v65, v66);
    }

    objc_msgSend_resetOwnerUIDForUpgrade_(self->_spanningRowDependencies, v64, a3, v65, v66);
    objc_msgSend_resetOwnerUIDForUpgrade_(self->_spanningColumnDependencies, v68, a3, v69, v70);
    volatileDependencies = self->_volatileDependencies;
    if (volatileDependencies)
    {

      objc_msgSend_resetOwnerUIDForUpgrade_(volatileDependencies, v71, a3, v72, v73);
    }
  }
}

- (TSKUIDStruct)formulaOwnerUid
{
  p_formulaOwnerUid = &self->_formulaOwnerUid;
  lower = self->_formulaOwnerUid._lower;
  upper = p_formulaOwnerUid->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end