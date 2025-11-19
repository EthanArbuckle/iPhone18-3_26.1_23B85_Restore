@interface TSTArchivedCellSelection
- (NSString)description;
- (TSKSelection)selection;
- (TSTArchivedCellSelection)selectionWithParent:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setSelection:(id)a3;
@end

@implementation TSTArchivedCellSelection

- (TSKSelection)selection
{
  cellSelection = self->_cellSelection;
  if (!cellSelection)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTArchivedCellSelection selection]", v2, v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchivedCellSelection.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 38, 0, "Call selectionWithParent:");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    cellSelection = self->_cellSelection;
  }

  return cellSelection;
}

- (TSTArchivedCellSelection)selectionWithParent:(id)a3
{
  v4 = a3;
  cellSelection = self->_cellSelection;
  if (!cellSelection)
  {
    if (self->_isLegacyBasedIDSelection)
    {
      objc_opt_class();
      v6 = TSUDynamicCast();
      objc_opt_class();
      v11 = objc_msgSend_infos(v6, v7, v8, v9, v10);
      v16 = objc_msgSend_anyObject(v11, v12, v13, v14, v15);
      v17 = TSUDynamicCast();

      if (v17)
      {
        v21 = [TSTCellSelection alloc];
        v23 = objc_msgSend_initForUpgradeWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(v21, v22, v17, self->_legacyCellRegion, *&self->_legacyAnchorCellID, *&self->_legacyCursorCellID, self->_legacyBaseCellRegion, self->_selectionType);
        v24 = self->_cellSelection;
        self->_cellSelection = v23;
      }

      else
      {
        v25 = MEMORY[0x277D81150];
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTArchivedCellSelection selectionWithParent:]", v19, v20);
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchivedCellSelection.mm", v28, v29);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 48, 0, "invalid nil value for '%{public}s'", "tableInfo");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
      }

      cellSelection = self->_cellSelection;
    }

    else
    {
      cellSelection = 0;
    }
  }

  v36 = cellSelection;

  return cellSelection;
}

- (void)setSelection:(id)a3
{
  v8 = a3;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTArchivedCellSelection setSelection:]", v6, v7);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchivedCellSelection.mm", v12, v13);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v10, v14, 63, 0, "Wrong type of class %@ (expected TSTCellSelection)", v16);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    }
  }

  objc_msgSend_willModify(self, v4, v5, v6, v7);
  cellSelection = self->_cellSelection;
  self->_cellSelection = v8;
}

- (void)loadFromUnarchiver:(id)a3
{
  v65 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v65, v4, off_2812E4498[142], v5, v6);

  v12 = *(v7 + 16);
  if ((v12 & 0x10) != 0 || (v12 & 0x40) != 0 || (v12 & 0x80) != 0)
  {
    self->_isLegacyBasedIDSelection = 0;
    v25 = [TSTCellSelection alloc];
    v28 = objc_msgSend_initWithArchive_unarchiver_(v25, v26, v7, v65, v27);
    objc_msgSend_setSelection_(self, v29, v28, v30, v31);

    goto LABEL_8;
  }

  self->_isLegacyBasedIDSelection = 1;
  v13 = *(v7 + 136);
  if (v13 <= 3)
  {
    if (v13 == 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
      if (v13 != 2)
      {
        v32 = 0;
      }
    }

    goto LABEL_19;
  }

  if ((v13 - 4) < 2)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "TSTSelectionType TSTArchivedToNativeSelectionType(const TST::SelectionTypeArchive)", v10, v11);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchiveUtilities.h", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 212, 0, "shouldn't be converting from deprecated archived selection type %d", v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
LABEL_17:
    v32 = 0;
    goto LABEL_19;
  }

  if (v13 != 7)
  {
    goto LABEL_17;
  }

  v32 = 3;
LABEL_19:
  self->_selectionType = v32;
  v33 = objc_msgSend_invalidRegion(TSTCellRegion, v8, v9, v10, v11);
  legacyCellRegion = self->_legacyCellRegion;
  self->_legacyCellRegion = v33;

  if (*(v7 + 32) >= 1)
  {
    v39 = 0;
    do
    {
      v40 = self->_legacyCellRegion;
      v41 = sub_22112397C(*(*(v7 + 40) + 8 * v39 + 8));
      v44 = objc_msgSend_regionByAddingRange_(v40, v42, v41, v42, v43);
      v45 = self->_legacyCellRegion;
      self->_legacyCellRegion = v44;

      ++v39;
    }

    while (v39 < *(v7 + 32));
  }

  v46 = objc_msgSend_invalidRegion(TSTCellRegion, v35, v36, v37, v38);
  legacyBaseCellRegion = self->_legacyBaseCellRegion;
  self->_legacyBaseCellRegion = v46;

  if (*(v7 + 56) >= 1)
  {
    v52 = 0;
    do
    {
      v53 = self->_legacyBaseCellRegion;
      v54 = sub_22112397C(*(*(v7 + 64) + 8 * v52 + 8));
      v57 = objc_msgSend_regionByAddingRange_(v53, v55, v54, v55, v56);
      v58 = self->_legacyBaseCellRegion;
      self->_legacyBaseCellRegion = v57;

      ++v52;
    }

    while (v52 < *(v7 + 56));
  }

  self->_legacyAnchorCellID = 0x7FFF7FFFFFFFLL;
  if ((*(v7 + 16) & 2) != 0)
  {
    CellID = sub_2211238E0(*(v7 + 80));
  }

  else
  {
    CellID = objc_msgSend_firstCellID(self->_legacyCellRegion, v48, v49, v50, v51);
  }

  self->_legacyAnchorCellID = CellID;
  self->_legacyCursorCellID = 0x7FFF7FFFFFFFLL;
  if ((*(v7 + 16) & 4) != 0)
  {
    v64 = sub_2211238E0(*(v7 + 88));
  }

  else
  {
    v64 = objc_msgSend_lastCellID(self->_legacyCellRegion, v60, v61, v62, v63);
  }

  self->_legacyCursorCellID = v64;
LABEL_8:
}

- (void)saveToArchiver:(id)a3
{
  v14 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v14, v4, sub_221182B90, off_2812E4498[142], v5);

  v11 = objc_msgSend_selection(self, v7, v8, v9, v10);
  objc_msgSend_saveToArchive_archiver_(v11, v12, v6, v14, v13);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_selection(self, v6, v7, v8, v9);
  v14 = objc_msgSend_stringWithFormat_(v3, v11, @"<%@: %p> %@", v12, v13, v5, self, v10);

  return v14;
}

@end