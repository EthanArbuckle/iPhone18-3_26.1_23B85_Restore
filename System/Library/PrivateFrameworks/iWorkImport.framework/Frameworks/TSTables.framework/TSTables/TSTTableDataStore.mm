@interface TSTTableDataStore
- (BOOL)_needToUpgradeCellStorage;
- (BOOL)auditColumnRowCellCountsReturningResult:(id *)result hasUndercounts:(BOOL *)undercounts;
- (BOOL)auditDatalistDuplicationReturningResult:(id *)result;
- (BOOL)confirmRefCountsReturningResult:(id *)result;
- (BOOL)containsControlCellSpecs;
- (BOOL)containsFormulas;
- (BOOL)containsImportWarnings;
- (BOOL)containsRatingFormats;
- (BOOL)getCell:(id)cell atCellID:(TSUCellCoord)d;
- (BOOL)hasCellOrTextStyles;
- (BOOL)hasFormulaAtCellID:(TSUCellCoord)d;
- (BOOL)hasFormulaSyntaxErrorAtCellID:(TSUCellCoord)d;
- (BOOL)hasMigratableStylesInCells;
- (BOOL)mightHaveCustomFormats;
- (BOOL)repairStyleDatalistStylesheetIfNecessary;
- (TSDContainerInfo)richTextParentInfo;
- (TSTCellStorage)cellStorageRefAtCellID:(TSUCellCoord)d;
- (TSTTableDataStore)initWithArchive:(const void *)archive unarchiver:(id)unarchiver owner:(id)owner;
- (TSTTableDataStore)initWithOwner:(id)owner;
- (id).cxx_construct;
- (id)_loadDatalist:(id *)datalist forLazyReference:(id)reference completionBlock:(id)block;
- (id)addPasteboardCustomFormatsToDocumentAndTableReturningBadIDs;
- (id)allRichTextStorages;
- (id)cellMapForRepairingPasteboardCustomFormats:(id)formats;
- (id)cellStyleAtCellID:(TSUCellCoord)d;
- (id)commentStorageAtCellID:(TSUCellCoord)d;
- (id)conditionalStyleSetAtCellID:(TSUCellCoord)d;
- (id)copyWithOwner:(id)owner;
- (id)formatForCalcEngineAtCellID:(TSUCellCoord)d formatIsExplicitOut:(BOOL *)out refIfAvailable:(TSTCellStorage *)available;
- (id)formulaAtCellID:(TSUCellCoord)d;
- (id)formulaSpecAtCellID:(TSUCellCoord)d;
- (id)formulaSpecForStorageRef:(TSTCellStorage *)ref;
- (id)formulaSyntaxErrorAtCellID:(TSUCellCoord)d;
- (id)i_cellStyleHandleForDataListKey:(unsigned int)key;
- (id)i_formatForDataListKey:(unsigned int)key;
- (id)i_stringForDataListKey:(unsigned int)key outShouldWrap:(BOOL *)wrap outIsShared:(BOOL *)shared;
- (id)i_textStyleHandleForDataListKey:(unsigned int)key;
- (id)mapReassigningPasteboardCustomFormatKeys:(id)keys;
- (id)p_cellMapForUpgradingToBraveNewCell;
- (id)p_makeALazyDatalistOfType:(int)type isNewForBNC:(BOOL)c;
- (id)p_populatedMultipleChoiceListFormat:(id)format;
- (id)p_preBNCpopulatedCustomFormat:(id)format value:(double)value;
- (id)richTextStorageForCalcEngineAtCellID:(TSUCellCoord)d refIfAvailable:(TSTCellStorage *)available;
- (id)stringAtCellID:(TSUCellCoord)d;
- (id)stringForCalcEngineAtCellID:(TSUCellCoord)d refIfAvailable:(TSTCellStorage *)available;
- (id)textStyleAtCellID:(TSUCellCoord)d;
- (id)tsceValueFromCell:(id)cell atCellID:(TSUCellCoord)d tableUID:(const TSKUIDStruct *)iD;
- (unint64_t)archivingCompatibilityVersion;
- (unint64_t)numberOfComments;
- (unsigned)numberOfConditionalStyles;
- (unsigned)valueTypeAtCellID:(TSUCellCoord)d;
- (vector<TSTCell)accumulateCurrentCellsConcurrentlyInRow:(TSTTableDataStore *)self rowInfo:(SEL)info atColumns:(TSUModelRowIndex)columns usingCellCreationBlock:(id)block;
- (vector<TSUCellRect,)mergedRects;
- (void)_setCell:(id)cell atCellID:(TSUCellCoord)d tableUID:(const TSKUIDStruct *)iD calculationEngine:(id)engine conditionalStyleOwner:(id)owner ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings richTextDOLCHint:(BOOL *)self0;
- (void)decrementCellCountsAtCellID:(TSUCellCoord)d;
- (void)decrementColumnCellCount:(unsigned __int16)count byAmount:(unint64_t)amount;
- (void)didApplyConcurrentCellMap:(id)map;
- (void)embiggenTableForUpgrade;
- (void)enumerateCellStoragesInRange:(TSUCellRect)range withBlock:(id)block;
- (void)incrementCellCountsAtCellID:(TSUCellCoord)d;
- (void)insertColumns:(_NSRange)columns;
- (void)insertRows:(_NSRange)rows;
- (void)loadAllLazyReferences;
- (void)moveColumnIndexRange:(_NSRange)range toIndex:(unsigned __int16)index;
- (void)moveRowIndexRange:(_NSRange)range toIndex:(unsigned int)index;
- (void)p_clearDataListEntriesForStorageRef:(TSTCellStorage *)ref cellID:(TSUCellCoord)d;
- (void)p_clearDataListEntriesInRange:(TSUCellRect)range;
- (void)p_enumerateCellStoragesRowByRowToMaxID:(TSUCellCoord)d getPreBNC:(BOOL)c withBlock:(id)block;
- (void)p_forceLoadHeaderStorages;
- (void)p_loadLazyDatalists;
- (void)p_stashBadKey:(unint64_t)key forList:(id)list;
- (void)p_updateNumberOfPopulatedCells;
- (void)purgePreBNCDatalists;
- (void)removeColumns:(_NSRange)columns;
- (void)removeRows:(_NSRange)rows;
- (void)replaceCommentStoragesUsingBlock:(id)block;
- (void)replaceConditionalStyleSetsUsingBlock:(id)block;
- (void)replaceFormulasUsingBlock:(id)block;
- (void)replaceStylesUsingBlock:(id)block;
- (void)resetAllColumnRowSizes;
- (void)resetAlmostEverything;
- (void)resolveDataListKeysForCell:(id)cell cache:(id)cache suppressTransmutation:(BOOL)transmutation sourceStorageVersion:(unsigned __int8)version;
- (void)resolveDataListKeysForPreBNCCell:(id)cell suppressTransmutation:(BOOL)transmutation sourceStorageVersion:(unsigned __int8)version;
- (void)saveToArchive:(void *)archive archiver:(id)archiver isInTheDocument:(BOOL)document;
- (void)setCellMap:(id)map tableUID:(const TSKUIDStruct *)d calculationEngine:(id)engine conditionalStyleOwner:(id)owner ignoreFormulas:(BOOL)formulas skipDirtyingNonFormulaCells:(BOOL)cells doRichTextDOLC:(BOOL)c;
- (void)setCellsConcurrently:(id)concurrently tableUID:(const TSKUIDStruct *)d calculationEngine:(id)engine conditionalStyleOwner:(id)owner ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings;
- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex;
- (void)tsceValueForCellStorageRef:(TSTCellStorage *)ref cellCoord:(const TSUCellCoord *)coord hostTableUID:(const TSKUIDStruct *)d outValue:(id *)value;
- (void)updateCustomFormatsAtKey:(id)key;
- (void)updateDataListsConcurrentlyWithConcurrentCellMap:(id)map clearImportWarnings:(BOOL)warnings;
- (void)updateHeaderStorageStylesWithBlock:(id)block;
- (void)upgradeCellFormatsU2_0;
- (void)upgradeConditionalStylesToLinkedRefWithTableUID:(const TSKUIDStruct *)d;
- (void)upgradeDataStoreCellStorageIfNeededWithTableUID:(const TSKUIDStruct *)d conditionalStyleOwner:(id)owner fileFormatVersion:(unint64_t)version;
@end

@implementation TSTTableDataStore

- (void)loadAllLazyReferences
{
  if (!self->_lazyReferencesAreLoaded)
  {
    objc_msgSend_p_loadLazyDatalists(self, a2, v2, v3, v4);
    objc_msgSend_p_loadLazyTileStorage(self, v6, v7, v8, v9);
    objc_msgSend_p_forceLoadHeaderStorages(self, v10, v11, v12, v13);
    self->_lazyReferencesAreLoaded = 1;
  }
}

- (void)p_forceLoadHeaderStorages
{
  objc_msgSend_forceLoadHeaders(self->_rowHeaderStorage, a2, v2, v3, v4);
  columnHeaderStorage = self->_columnHeaderStorage;

  objc_msgSend_forceLoadHeaders(columnHeaderStorage, v6, v7, v8, v9);
}

- (void)updateHeaderStorageStylesWithBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_updateStylesWithBlock_(self->_rowHeaderStorage, v4, blockCopy, v5, v6);
  objc_msgSend_updateStylesWithBlock_(self->_columnHeaderStorage, v7, blockCopy, v8, v9);
}

- (BOOL)hasMigratableStylesInCells
{
  styleDataList = self->_styleDataList;
  v7 = styleDataList;
  if (!styleDataList)
  {
    v7 = sub_22170A75C(self);
  }

  if (objc_msgSend_count(v7, a2, v2, v3, v4))
  {
    v12 = 1;
    if (!styleDataList)
    {
      goto LABEL_16;
    }

    return v12;
  }

  richTextDataList = self->_richTextDataList;
  v14 = richTextDataList;
  if (!richTextDataList)
  {
    v14 = sub_22170A7B0(self, v8);
  }

  if (objc_msgSend_count(v14, v8, v9, v10, v11))
  {
    v12 = 1;
    if (!richTextDataList)
    {
LABEL_19:

      if (styleDataList)
      {
        return v12;
      }

      goto LABEL_16;
    }
  }

  else
  {
    formulaErrorDataList = self->_formulaErrorDataList;
    v20 = formulaErrorDataList;
    if (!formulaErrorDataList)
    {
      v20 = sub_22170A7F8(self);
    }

    v12 = objc_msgSend_count(v20, v15, v16, v17, v18) != 0;
    if (formulaErrorDataList)
    {
      if (!richTextDataList)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (!richTextDataList)
      {
        goto LABEL_19;
      }
    }
  }

  if (!styleDataList)
  {
LABEL_16:
  }

  return v12;
}

- (BOOL)hasCellOrTextStyles
{
  styleDataList = self->_styleDataList;
  v6 = styleDataList;
  if (!styleDataList)
  {
    v6 = sub_22170A75C(self);
  }

  v7 = objc_msgSend_count(v6, a2, v2, v3, v4);
  if (!styleDataList)
  {
  }

  return v7 != 0;
}

- (void)replaceStylesUsingBlock:(id)block
{
  blockCopy = block;
  styleDataList = self->_styleDataList;
  v6 = styleDataList;
  if (!styleDataList)
  {
    v6 = sub_22170A75C(self);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22169D7B8;
  v11[3] = &unk_27845E4E0;
  v7 = blockCopy;
  v12 = v7;
  objc_msgSend_replaceStylesUsingBlock_(v6, v8, v11, v9, v10);
  if (!styleDataList)
  {
  }
}

- (void)decrementColumnCellCount:(unsigned __int16)count byAmount:(unint64_t)amount
{
  objc_msgSend_decrementCellCountAtIndex_byAmount_(self->_columnHeaderStorage, a2, count, amount, v4);
  if (self->_cellCountValid)
  {
    cellCount = self->_cellCount;
    if (cellCount < amount)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataStore decrementColumnCellCount:byAmount:]", v8, v9);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v14, v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 377, 0, "Can't drive cell count below zero!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
      LODWORD(cellCount) = self->_cellCount;
    }

    self->_cellCount = cellCount - amount;
  }
}

- (void)decrementCellCountsAtCellID:(TSUCellCoord)d
{
  column = d.column;
  objc_msgSend_decrementCellCountAtIndex_byAmount_(self->_rowHeaderStorage, a2, *&d, 1, v3);

  MEMORY[0x2821F9670](self, sel_decrementColumnCellCount_byAmount_, column, 1, v6);
}

- (void)incrementCellCountsAtCellID:(TSUCellCoord)d
{
  column = d.column;
  objc_msgSend_incrementCellCountAtIndex_byAmount_(self->_rowHeaderStorage, a2, *&d, 1, v3);
  objc_msgSend_incrementCellCountAtIndex_byAmount_(self->_columnHeaderStorage, v6, column, 1, v7);
  if (self->_cellCountValid)
  {
    ++self->_cellCount;
  }
}

- (void)p_updateNumberOfPopulatedCells
{
  if (!self->_cellCountValid)
  {
    self->_cellCount = objc_msgSend_totalCellCount(self->_columnHeaderStorage, a2, v2, v3, v4);
    self->_cellCountValid = 1;
  }
}

- (unsigned)numberOfConditionalStyles
{
  conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
  v6 = conditionalStyleSetDataList;
  if (!conditionalStyleSetDataList)
  {
    v6 = sub_22170A84C(self);
  }

  v7 = objc_msgSend_count(v6, a2, v2, v3, v4);
  if (!conditionalStyleSetDataList)
  {
  }

  return v7;
}

- (unint64_t)numberOfComments
{
  commentStorageDataList = self->_commentStorageDataList;
  v6 = commentStorageDataList;
  if (!commentStorageDataList)
  {
    v6 = sub_22170A8A0(self);
  }

  v7 = objc_msgSend_count(v6, a2, v2, v3, v4);
  if (!commentStorageDataList)
  {
  }

  return v7;
}

- (id)commentStorageAtCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3, v4);
  v10 = sub_221145078(v6, 0x80000, v7, v8, v9);
  if (v10)
  {
    v14 = v10;
    commentStorageDataList = self->_commentStorageDataList;
    v16 = commentStorageDataList;
    if (!commentStorageDataList)
    {
      v16 = sub_22170A8A0(self);
    }

    v17 = objc_msgSend_commentStorageForKey_(v16, v11, v14, v12, v13);
    if (!commentStorageDataList)
    {
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)upgradeConditionalStylesToLinkedRefWithTableUID:(const TSKUIDStruct *)d
{
  conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
  v7 = conditionalStyleSetDataList;
  if (!conditionalStyleSetDataList)
  {
    v7 = sub_22170A84C(self);
  }

  v8 = v7;
  objc_msgSend_upgradeConditionalStylesToLinkedRefWithTableUID_(v7, v7, d, v3, v4);
  if (!conditionalStyleSetDataList)
  {
  }
}

- (TSTCellStorage)cellStorageRefAtCellID:(TSUCellCoord)d
{
  column = d.column;
  v6 = objc_msgSend_rowInfoAtIndex_(self->_tileStorage, a2, *&d, v3, v4);
  v10 = objc_msgSend_cellStorageRefAtIndex_(v6, v7, column, v8, v9);

  return v10;
}

- (BOOL)getCell:(id)cell atCellID:(TSUCellCoord)d
{
  cellCopy = cell;
  if (!cellCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataStore getCell:atCellID:]", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 459, 0, "invalid nil value for '%{public}s'", "cell");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21 = objc_msgSend_cellStorageRefAtCellID_(self, v6, *&d, v7, v8);
  v26 = v21;
  if (!v21)
  {
    goto LABEL_7;
  }

  if (!sub_22169DEF8(v21, v22, v23, v24, v25))
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTTableDataStore getCell:atCellID:]", v28, v29);
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v34, v35);
    v37 = NSStringFromTSUCellCoord();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v32, v36, 466, 0, "Retrieving corrupt cell storage data for cellID:%@", v37);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
LABEL_7:
    v30 = 0;
    goto LABEL_8;
  }

  objc_msgSend_inflateFromStorageRef_dataStore_(cellCopy, v27, v26, self, v29);
  v30 = 1;
LABEL_8:

  return v30;
}

- (id)stringAtCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3, v4);
  if (!v6)
  {
    goto LABEL_14;
  }

  v11 = v6;
  sub_22169DEF8(v6, v7, v8, v9, v10);
  v15 = *(v11 + 1);
  if (v15 == 9)
  {
    v24 = sub_221145078(v11, 0x10, v12, v13, v14);
    if (v24)
    {
      v28 = v24;
      richTextDataList = self->_richTextDataList;
      v22 = richTextDataList;
      if (!richTextDataList)
      {
        v22 = sub_22170A7B0(self, v25);
      }

      v30 = objc_msgSend_richTextForKey_(v22, v25, v28, v26, v27);
      v23 = objc_msgSend_string(v30, v31, v32, v33, v34);

      if (!richTextDataList)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

LABEL_14:
    v23 = 0;
    goto LABEL_17;
  }

  if (v15 != 3)
  {
    v35 = [TSTCell alloc];
    v22 = objc_msgSend_initWithStorageRef_dataStore_(v35, v36, v11, self, v37);
    v23 = objc_msgSend_formattedValue(v22, v38, v39, v40, v41);
LABEL_16:

    goto LABEL_17;
  }

  v16 = sub_221145078(v11, 8, v12, v13, v14);
  if (!v16)
  {
    goto LABEL_14;
  }

  v20 = v16;
  stringDataList = self->_stringDataList;
  v22 = stringDataList;
  if (!stringDataList)
  {
    v22 = sub_22170A8F4(self);
  }

  v23 = objc_msgSend_stringForKey_(v22, v17, v20, v18, v19);
  if (!stringDataList)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v23;
}

- (void)enumerateCellStoragesInRange:(TSUCellRect)range withBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  tileStorage = self->_tileStorage;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22169E254;
  v12[3] = &unk_2784684B8;
  v9 = HIDWORD(*&size);
  column = origin.column;
  numberOfColumns = size.numberOfColumns;
  v13 = blockCopy;
  v10 = blockCopy;
  objc_msgSend_enumerateRowsInRange_withBlock_(tileStorage, v11, origin.row, v9, v12);
}

- (void)p_enumerateCellStoragesRowByRowToMaxID:(TSUCellCoord)d getPreBNC:(BOOL)c withBlock:(id)block
{
  blockCopy = block;
  tileStorage = self->_tileStorage;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22169E4AC;
  v12[3] = &unk_2784684E0;
  v14 = 0;
  v15 = d.column + 1;
  cCopy = c;
  v13 = blockCopy;
  v10 = blockCopy;
  objc_msgSend_enumerateRowByRowInRange_withBlock_(tileStorage, v11, 0, d.row + 1, v12);
}

- (id)cellStyleAtCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3, v4);
  if (v6 && (v10 = sub_221145078(v6, 0x20, v7, v8, v9), v10))
  {
    v11 = v10;
    objc_opt_class();
    styleDataList = self->_styleDataList;
    v16 = styleDataList;
    if (!styleDataList)
    {
      v16 = sub_22170A75C(self);
    }

    v17 = objc_msgSend_styleForKey_(v16, v12, v11, v13, v14);
    v18 = TSUCheckedDynamicCast();

    if (!styleDataList)
    {
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)conditionalStyleSetAtCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3, v4);
  if (v6 && (v10 = sub_221145078(v6, 0x80, v7, v8, v9), v10))
  {
    v11 = v10;
    objc_opt_class();
    conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
    v16 = conditionalStyleSetDataList;
    if (!conditionalStyleSetDataList)
    {
      v16 = sub_22170A84C(self);
    }

    v17 = objc_msgSend_conditionalStyleSetForKey_(v16, v12, v11, v13, v14);
    v18 = TSUCheckedDynamicCast();

    if (!conditionalStyleSetDataList)
    {
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)textStyleAtCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3, v4);
  if (v6 && (v10 = sub_221145078(v6, 0x40, v7, v8, v9), v10))
  {
    v11 = v10;
    objc_opt_class();
    styleDataList = self->_styleDataList;
    v16 = styleDataList;
    if (!styleDataList)
    {
      v16 = sub_22170A75C(self);
    }

    v17 = objc_msgSend_styleForKey_(v16, v12, v11, v13, v14);
    v18 = TSUCheckedDynamicCast();

    if (!styleDataList)
    {
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)formatForCalcEngineAtCellID:(TSUCellCoord)d formatIsExplicitOut:(BOOL *)out refIfAvailable:(TSTCellStorage *)available
{
  availableCopy = available;
  if (available || (v8 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, out, 0), (availableCopy = v8) != 0))
  {
    v9 = sub_221145078(availableCopy, 0x1000, *&d, out, available);
    v10 = sub_221143624(v9);
    v14 = sub_221145078(availableCopy, v10, v11, v12, v13);
    if (v14)
    {
      v18 = v14;
      formatDataList = self->_formatDataList;
      if (!formatDataList)
      {
        formatDataList = sub_22170A948(self, v15);
      }

      v20 = objc_msgSend_cellFormatForKey_(formatDataList, v15, v18, v16, v17);
      v25 = objc_msgSend_formatType(v20, v21, v22, v23, v24);
      if (!objc_msgSend_formatTypeIsExpected_(TSTCell, v26, v25, v27, v28))
      {
        v20 = 0;
      }

      if (out)
      {
        if (v20)
        {
          v32 = sub_221145078(availableCopy, 0x1000, v29, v30, v31);
          v33 = (*(&availableCopy->var0 + 3) & (sub_22121E814(v32) | 0x8000)) != 0;
        }

        else
        {
          v33 = 0;
        }

        *out = v33;
      }

      v8 = v20;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)stringForCalcEngineAtCellID:(TSUCellCoord)d refIfAvailable:(TSTCellStorage *)available
{
  if ((available || (available = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, 0, v4)) != 0) && (v6 = sub_221145078(available, 8, *&d, available, v4), v6))
  {
    v10 = v6;
    stringDataList = self->_stringDataList;
    v12 = stringDataList;
    if (!stringDataList)
    {
      v12 = sub_22170A8F4(self);
    }

    v13 = objc_msgSend_stringForKey_(v12, v7, v10, v8, v9);
    if (!stringDataList)
    {
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)richTextStorageForCalcEngineAtCellID:(TSUCellCoord)d refIfAvailable:(TSTCellStorage *)available
{
  if ((available || (available = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, 0, v4)) != 0) && (v6 = sub_221145078(available, 0x10, *&d, available, v4), v6))
  {
    v10 = v6;
    richTextDataList = self->_richTextDataList;
    v12 = richTextDataList;
    if (!richTextDataList)
    {
      v12 = sub_22170A7B0(self, v7);
    }

    v13 = objc_msgSend_richTextForKey_(v12, v7, v10, v8, v9);
    if (!richTextDataList)
    {
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unsigned)valueTypeAtCellID:(TSUCellCoord)d
{
  v5 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3, v4);
  if (!v5 || (v10 = v5, sub_22169DEF8(v5, v6, v7, v8, v9), v11 = v10[1], (objc_msgSend_cellValueTypeIsExpected_(TSTCell, v12, v11, v13, v14) & 1) == 0))
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)hasFormulaSyntaxErrorAtCellID:(TSUCellCoord)d
{
  result = 0;
  if (d.row != 0x7FFFFFFF && (*&d & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v7 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3, v4);
    return sub_221145078(v7, 0x800, v8, v9, v10) != 0;
  }

  return result;
}

- (BOOL)hasFormulaAtCellID:(TSUCellCoord)d
{
  result = 0;
  if (d.row != 0x7FFFFFFF && (*&d & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v7 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3, v4);
    return sub_221145078(v7, 0x200, v8, v9, v10) != 0;
  }

  return result;
}

- (BOOL)containsFormulas
{
  formulaDataList = self->_formulaDataList;
  v6 = formulaDataList;
  if (!formulaDataList)
  {
    v6 = sub_22170A990(self);
  }

  v7 = objc_msgSend_containsFormulas(v6, a2, v2, v3, v4);
  if (!formulaDataList)
  {
  }

  return v7;
}

- (BOOL)containsImportWarnings
{
  importWarningSetDataList = self->_importWarningSetDataList;
  v6 = importWarningSetDataList;
  if (!importWarningSetDataList)
  {
    v6 = sub_22170A9E4(self);
  }

  v7 = objc_msgSend_count(v6, a2, v2, v3, v4);
  if (!importWarningSetDataList)
  {
  }

  return v7 != 0;
}

- (BOOL)containsControlCellSpecs
{
  controlCellSpecDataList = self->_controlCellSpecDataList;
  v6 = controlCellSpecDataList;
  if (!controlCellSpecDataList)
  {
    v6 = sub_22170AA38(self, a2);
  }

  v7 = objc_msgSend_containsControlCellSpecs(v6, a2, v2, v3, v4);
  if (!controlCellSpecDataList)
  {
  }

  return v7;
}

- (BOOL)containsRatingFormats
{
  formatDataList = self->_formatDataList;
  v6 = formatDataList;
  if (!formatDataList)
  {
    v6 = sub_22170A948(self, a2);
  }

  v7 = objc_msgSend_containsRatingFormats(v6, a2, v2, v3, v4);
  if (!formatDataList)
  {
  }

  return v7;
}

- (id)allRichTextStorages
{
  richTextDataList = self->_richTextDataList;
  v6 = richTextDataList;
  if (!richTextDataList)
  {
    v6 = sub_22170A7B0(self, a2);
  }

  v7 = objc_msgSend_allRichTextStorages(v6, a2, v2, v3, v4);
  if (!richTextDataList)
  {
  }

  return v7;
}

- (void)_setCell:(id)cell atCellID:(TSUCellCoord)d tableUID:(const TSKUIDStruct *)iD calculationEngine:(id)engine conditionalStyleOwner:(id)owner ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings richTextDOLCHint:(BOOL *)self0
{
  cellCopy = cell;
  engineCopy = engine;
  ownerCopy = owner;
  objc_msgSend_assertIsNotIterating(self, v15, v16, v17, v18);
  objc_msgSend_validateAndRepair(cellCopy, v19, v20, v21, v22);
  if (objc_msgSend_isEmptyForDataStore(cellCopy, v23, v24, v25, v26))
  {
  }

  else if (cellCopy)
  {
    v29 = objc_msgSend_tileForWritingAtRowIndex_outTileRange_(self->_tileStorage, v27, *&d, v190, v28);

    if (!v29)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSTTableDataStore _setCell:atCellID:tableUID:calculationEngine:conditionalStyleOwner:ignoreFormula:clearImportWarnings:richTextDOLCHint:]", v31, v32);
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v36, v37);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v39, v34, v38, 1167, 0, "Failed to get tile for cell!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    }

    v182 = d.row - LODWORD(v190[0]);
    v48 = objc_msgSend_cellStorageRefAtColumnIndex_tileRowIndex_(v29, v30, d.column, d.row - LODWORD(v190[0]), v32);
    v181 = 1;
LABEL_12:
    shouldUseWideRows = objc_msgSend_shouldUseWideRows(v29, v44, v45, v46, v47);
    v183 = objc_msgSend_shouldUseWideRows(self->_tileStorage, v52, v53, v54, v55);
    if (HIWORD(d.row) || d.column >= 0x100u)
    {
      if ((shouldUseWideRows & 1) == 0)
      {
        objc_msgSend_setShouldUseWideRows_(v29, v56, 1, v58, v59);
      }

      if (v183)
      {
LABEL_22:
        v180 = sub_221145078(v48, 0x80, v57, v58, v59);
        if (objc_msgSend_hasFormula(cellCopy, v61, v62, v63, v64))
        {
          v69 = objc_msgSend_formulaObject(cellCopy, v65, v66, v67, v68);
          v74 = v69;
          if (v69 && objc_msgSend_containsUidReferences(v69, v70, v71, v72, v73))
          {
            v79 = objc_msgSend_calcEngine(engineCopy, v75, v76, v77, v78);
            v188.coordinate = d;
            v188._tableUID = *iD;
            TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v189, v79, &v188);

            v83 = objc_msgSend_copyByRewritingReferencesToGeometricForm_(v74, v80, &v189, v81, v82);
            objc_msgSend_setFormulaObject_(cellCopy, v84, v83, v85, v86);
          }
        }

        if (objc_msgSend_hasFormulaSyntaxError(cellCopy, v65, v66, v67, v68))
        {
          objc_msgSend_formulaDefinitionPrecedentForTableUID_(TSCEHauntedOwner, v87, iD, v89, v90);
          objc_msgSend_markCellRefAsDirty_(engineCopy, v91, &v189, v92, v93);
        }

        if (objc_msgSend_hasConditionalStyle(cellCopy, v87, v88, v89, v90))
        {
          v98 = objc_msgSend_conditionalStyle(cellCopy, v94, v95, v96, v97);
          if (objc_msgSend_containsUidReferences(v98, v99, v100, v101, v102))
          {
            v107 = objc_msgSend_calcEngine(engineCopy, v103, v104, v105, v106);
            v112 = objc_msgSend_ownerUID(ownerCopy, v108, v109, v110, v111);
            v188.coordinate = d;
            v188._tableUID._lower = v112;
            v188._tableUID._upper = v113;
            TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v189, v107, &v188);

            TSCEFormulaRewriteContext::setHostCellOverridesTableID(&v189, 0);
            v117 = objc_msgSend_copyToGeometricFormWithRewriteContext_(v98, v114, &v189, v115, v116);

            objc_msgSend_setConditionalStyle_(cellCopy, v118, v117, v119, v120);
          }

          else
          {
            v117 = v98;
          }

          if (formula)
          {
            v121 = v117;
          }

          else
          {
            v122 = objc_msgSend_calcEngine(engineCopy, v103, v104, v105, v106);
            v188.coordinate = d;
            v188._tableUID = *iD;
            TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v189, v122, &v188);

            v121 = objc_msgSend_copyByConvertingToRelativeAncestorsWithRewriteContext_(v117, v123, &v189, v124, v125);
            objc_msgSend_setConditionalStyle_(cellCopy, v126, v121, v127, v128);
          }
        }

        v129 = objc_msgSend_richTextValue(cellCopy, v94, v95, v96, v97);
        if (v129)
        {
        }

        else
        {
          v133 = sub_221145078(v48, 0x10, v130, v131, v132);
          if (!v133)
          {
            goto LABEL_45;
          }
        }

        if (hint)
        {
          if (!*hint)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

        v138 = objc_msgSend_owner(self, v134, v135, v136, v137);
        v143 = objc_msgSend_tsp_isInDocument(v138, v139, v140, v141, v142);

        if (v143)
        {
LABEL_44:
          sub_22169EEEC(self, cellCopy, v48);
        }

LABEL_45:
        sub_22169F148(v133, cellCopy, v48);
        sub_22169F450(self, cellCopy, v48, v144, v145, warnings);
        v153 = sub_221145078(v48, 0x200, v146, v147, v148);
        if (warnings && objc_msgSend_hasImportWarningSet(cellCopy, v149, v150, v151, v152))
        {
          v157 = objc_msgSend_importWarningSet(cellCopy, v149, v154, v155, v156);
          v162 = objc_msgSend_importWarningSetID(cellCopy, v158, v159, v160, v161);
          v163 = v157;
          objc_msgSend_setImportWarningSet_(cellCopy, v164, 0, v165, v166);
        }

        else
        {
          v163 = 0;
          v162 = 0;
        }

        objc_msgSend_setCell_atColumnIndex_tileRowIndex_(v29, v149, cellCopy, d.column, v182);
        if (v162)
        {
          objc_msgSend_setImportWarningSet_(cellCopy, v167, v163, v169, v170);
        }

        if ((v183 & 1) == 0 && objc_msgSend_shouldUseWideRows(v29, v167, v168, v169, v170))
        {
          objc_msgSend_setShouldUseWideRows_(self->_tileStorage, v167, 1, v169, v170);
        }

        if (!cellCopy)
        {
          objc_msgSend_pruneTileForRowIndex_(self->_tileStorage, v167, *&d, v169, v170);
        }

        if (engineCopy)
        {
          if (!formula)
          {
            sub_2216A0654(cellCopy, v153, *&d, iD, engineCopy, self, 0);
            if (ownerCopy)
            {
              if (v180 != objc_msgSend_conditionalStyleID(cellCopy, v171, v174, v172, v173))
              {
                v176 = objc_msgSend_conditionalStyle(cellCopy, v171, v175, v172, v173);
                objc_msgSend_replaceFormulaForConditionalStyle_atCellID_(ownerCopy, v177, v176, *&d, v178);
              }
            }
          }
        }

        if (v48)
        {
          v179 = 0;
        }

        else
        {
          v179 = v181;
        }

        if (v179 == 1)
        {
          objc_msgSend_incrementCellCountsAtCellID_(self, v171, *&d, v172, v173);
          goto LABEL_70;
        }

        if (!cellCopy && v48)
        {
          objc_msgSend_decrementCellCountsAtCellID_(self, v171, *&d, v172, v173);
          goto LABEL_69;
        }

        goto LABEL_70;
      }
    }

    else if (v183 & 1 | ((shouldUseWideRows & 1) == 0))
    {
      tileStorage = v29;
      if (shouldUseWideRows & 1 | ((v183 & 1) == 0))
      {
        goto LABEL_22;
      }

LABEL_21:
      objc_msgSend_setShouldUseWideRows_(tileStorage, v56, 1, v58, v59);
      goto LABEL_22;
    }

    tileStorage = self->_tileStorage;
    goto LABEL_21;
  }

  v29 = objc_msgSend_tileStartingAtOrBeforeRowIndex_outTileRange_(self->_tileStorage, v27, *&d, v190, v28);

  if (!v29)
  {
LABEL_69:
    cellCopy = 0;
    goto LABEL_70;
  }

  cellCopy = 0;
  if (d.row >= v190[0] && d.row - v190[0] < v190[1])
  {
    v182 = d.row - LODWORD(v190[0]);
    v48 = objc_msgSend_cellStorageRefAtColumnIndex_tileRowIndex_(v29, v49, d.column, d.row - LODWORD(v190[0]), v50);
    cellCopy = 0;
    if (v48)
    {
      v181 = 0;
      goto LABEL_12;
    }
  }

LABEL_70:
}

- (void)setCellMap:(id)map tableUID:(const TSKUIDStruct *)d calculationEngine:(id)engine conditionalStyleOwner:(id)owner ignoreFormulas:(BOOL)formulas skipDirtyingNonFormulaCells:(BOOL)cells doRichTextDOLC:(BOOL)c
{
  mapCopy = map;
  engineCopy = engine;
  ownerCopy = owner;
  v18 = MEMORY[0x277D86228];
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x2050000000;
  v83[3] = 0;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2020000000;
  v82 = 0x7FFFFFFF;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x2020000000;
  v80 = 0x7FFFFFFF;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_2216A140C;
  v77 = sub_2216A141C;
  v78 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v19, v20, v21, v22);
  if (formulas)
  {
    mayModifyFormulasInCells = 0;
  }

  else
  {
    mayModifyFormulasInCells = objc_msgSend_mayModifyFormulasInCells(mapCopy, v23, v24, v25, v26);
  }

  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x9812000000;
  v71[3] = sub_2216A1424;
  v71[4] = nullsub_86;
  v71[5] = TSTCategoryAggregateFormulaOwner__ivarLayout;
  v28 = objc_msgSend_calcEngine(engineCopy, v23, v24, v25, v26);
  v66.coordinate = 0;
  v66._tableUID = *d;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v72, v28, &v66);

  v66.coordinate = 0;
  v66._tableUID._lower = &v66;
  v66._tableUID._upper = 0x9812000000;
  v67 = sub_2216A1424;
  v68 = nullsub_86;
  v69 = TSTCategoryAggregateFormulaOwner__ivarLayout;
  v33 = objc_msgSend_calcEngine(engineCopy, v29, v30, v31, v32);
  v64.coordinate = 0;
  v64._tableUID._lower = objc_msgSend_ownerUID(ownerCopy, v34, v35, v36, v37);
  v64._tableUID._upper = v38;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v70, v33, &v64);

  TSCEFormulaRewriteContext::setHostCellOverridesTableID((v66._tableUID._lower + 48), 0);
  v64.coordinate = 0;
  v64._tableUID._lower = &v64;
  v64._tableUID._upper = 0x2020000000;
  v65 = 0;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_2216A1474;
  v48[3] = &unk_278468508;
  v53 = v81;
  v54 = v79;
  v52 = v83;
  v48[4] = self;
  v55 = &v73;
  v56 = v71;
  v57 = &v64;
  v39 = engineCopy;
  v49 = v39;
  v58 = &v66;
  dCopy = d;
  formulasCopy = formulas;
  cCopy = c;
  v62 = mayModifyFormulasInCells;
  cellsCopy = cells;
  v40 = ownerCopy;
  v50 = v40;
  v41 = mapCopy;
  v51 = v41;
  objc_msgSend_enumerateCellsWithIDsUsingBlock_(v41, v42, v48, v43, v44);
  objc_msgSend_pruneTilesForRows_(self->_tileStorage, v45, v74[5], v46, v47);

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(v71, 8);
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(v79, 8);
  _Block_object_dispose(v81, 8);
  _Block_object_dispose(v83, 8);
}

- (void)upgradeCellFormatsU2_0
{
  v12 = sub_22170AA80(self);
  objc_msgSend_upgradeCellFormatsU2_0(v12, v3, v4, v5, v6);

  v13 = sub_22170A948(self, v7);
  objc_msgSend_upgradeCellFormatsU2_0(v13, v8, v9, v10, v11);
}

- (void)updateCustomFormatsAtKey:(id)key
{
  keyCopy = key;
  v5 = sub_22170A948(self, v4);
  objc_msgSend_updateCustomFormatsAtKey_(v5, v6, keyCopy, v7, v8);
}

- (id)p_preBNCpopulatedCustomFormat:(id)format value:(double)value
{
  formatCopy = format;
  v10 = objc_msgSend_asCustomFormatWrapper(formatCopy, v6, v7, v8, v9);
  v15 = v10;
  if (v10)
  {
    v16 = objc_msgSend_customFormatKey(v10, v11, v12, v13, v14);
    v21 = objc_msgSend_documentRoot(self, v17, v18, v19, v20);

    if (v21)
    {
      v26 = objc_msgSend_documentRoot(self, v22, v23, v24, v25);
      v31 = objc_msgSend_customFormatList(v26, v27, v28, v29, v30);

      v35 = objc_msgSend_customFormatForKey_(v31, v32, v16, v33, v34);

      v40 = v15;
      if (v35)
      {
        v41 = objc_msgSend_formatType(v35, v36, v37, v38, v39);
        if (v41 == objc_msgSend_formatType(v40, v42, v43, v44, v45))
        {
          v50 = objc_msgSend_populatedCustomFormatWrapperFromCFWrapper_customFormat_(MEMORY[0x277D80650], v46, v40, v35, v49);
        }

        else if (objc_msgSend_formatType(v35, v46, v47, v48, v49) == 274 && objc_msgSend_formatType(v40, v51, v52, v53, v54) == 270)
        {
          v55 = objc_alloc(MEMORY[0x277D80650]);
          v50 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v55, v56, 274, v16, v35);
        }

        else
        {
          v57 = objc_alloc(MEMORY[0x277D80650]);
          v50 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v57, v58, 274, v16, 0);
        }

        v59 = v50;

        v40 = v59;
      }
    }

    else
    {
      v40 = v15;
    }
  }

  else
  {
    v40 = formatCopy;
  }

  return v40;
}

- (id)p_populatedMultipleChoiceListFormat:(id)format
{
  formatCopy = format;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = v5;
  if (v5)
  {
    multipleChoiceListFormatDataList = self->_multipleChoiceListFormatDataList;
    v12 = objc_msgSend_multipleChoiceListFormatID(v5, v6, v7, v8, v9);
    v20 = objc_msgSend_multipleChoiceListFormatForKey_(multipleChoiceListFormatDataList, v13, v12, v14, v15);
    if (!v20)
    {
      v21 = objc_msgSend_multipleChoiceListFormatID(v10, v16, v17, v18, v19);
      objc_msgSend_p_stashBadKey_forList_(self, v22, v21, @"preBNCPopupTable", v23);
    }

    v24 = objc_alloc(MEMORY[0x277D80698]);
    v29 = objc_msgSend_initialValue(v10, v25, v26, v27, v28);
    v34 = objc_msgSend_multipleChoiceListFormatID(v10, v30, v31, v32, v33);
    v36 = objc_msgSend_initWithInitialValue_multipleChoiceListFormatID_popupModel_(v24, v35, v29, v34, v20);
  }

  else
  {
    v36 = formatCopy;
  }

  return v36;
}

- (void)p_stashBadKey:(unint64_t)key forList:(id)list
{
  if (!self->_foundABadDatalistKey)
  {
    obj = self;
    objc_sync_enter(obj);
    if (!self->_foundABadDatalistKey)
    {
      v9 = objc_msgSend_owner(obj, v5, v6, v7, v8);
      objc_opt_class();
      objc_opt_isKindOfClass();

      self->_foundABadDatalistKey = 1;
    }

    objc_sync_exit(obj);
  }
}

- (void)resolveDataListKeysForPreBNCCell:(id)cell suppressTransmutation:(BOOL)transmutation sourceStorageVersion:(unsigned __int8)version
{
  versionCopy = version;
  transmutationCopy = transmutation;
  cellCopy = cell;
  if (objc_msgSend_valueType(cellCopy, v9, v10, v11, v12) == 3)
  {
    v21 = objc_msgSend_stringID(cellCopy, v13, v14, v15, v16);
    if (v21)
    {
      v328 = 0;
      stringDataList = self->_stringDataList;
      v23 = stringDataList;
      if (!stringDataList)
      {
        v23 = sub_22170A8F4(self);
      }

      v24 = objc_msgSend_stringForKey_outShouldWrap_outIsShared_(v23, v17, v21, &v328, 0);
      v27 = v24;
      if (stringDataList)
      {
        if (!v24)
        {
          goto LABEL_12;
        }
      }

      else
      {

        if (!v27)
        {
LABEL_12:
          objc_msgSend_p_stashBadKey_forList_(self, v25, v21, @"StringTable", v26);
        }
      }

      objc_msgSend_setStringValue_clearingID_shouldWrap_(cellCopy, v25, v27, 0, v328);

      goto LABEL_14;
    }

    if ((objc_msgSend_upgrading(self, v17, v18, v19, v20) & 1) == 0)
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTTableDataStore resolveDataListKeysForPreBNCCell:suppressTransmutation:sourceStorageVersion:]", v29, v30);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v34, v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 1576, 0, "String cell has bad string!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    }

    objc_msgSend_setValueType_(cellCopy, v28, 0, v29, v30);
  }

LABEL_14:
  if (!objc_msgSend_hasCellSpec(cellCopy, v13, v14, v15, v16))
  {
    goto LABEL_32;
  }

  v46 = objc_msgSend_formulaID(cellCopy, v42, v43, v44, v45);
  v51 = objc_msgSend_upgrading(self, v47, v48, v49, v50);
  if (v46)
  {
    v55 = 1;
  }

  else
  {
    v55 = v51;
  }

  if ((v55 & 1) == 0)
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSTTableDataStore resolveDataListKeysForPreBNCCell:suppressTransmutation:sourceStorageVersion:]", v53, v54);
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v59, v60);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v62, v57, v61, 1590, 0, "Formula cell has bad formula!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
  }

  formulaDataList = self->_formulaDataList;
  v68 = formulaDataList;
  if (!formulaDataList)
  {
    v68 = sub_22170A990(self);
  }

  v69 = objc_msgSend_formulaForKey_(v68, v52, v46, v53, v54);
  v74 = v69;
  if (formulaDataList)
  {
    if (v69)
    {
      goto LABEL_24;
    }

LABEL_27:
    objc_msgSend_p_stashBadKey_forList_(self, v70, v46, @"FormulaTable", v73);
    goto LABEL_28;
  }

  if (!v74)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (!objc_msgSend_interactionType(v74, v70, v71, v72, v73))
  {
LABEL_28:
    if ((objc_msgSend_upgrading(self, v75, v76, v77, v78) & 1) == 0)
    {
      v82 = MEMORY[0x277D81150];
      v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "[TSTTableDataStore resolveDataListKeysForPreBNCCell:suppressTransmutation:sourceStorageVersion:]", v80, v81);
      v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v85, v86);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v88, v83, v87, 1600, 0, "NULL formula");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90, v91, v92);
    }

    objc_msgSend_setFormulaID_(cellCopy, v79, 0, v80, v81);
    goto LABEL_31;
  }

  objc_msgSend_setCellSpec_clearingID_(cellCopy, v75, v74, 0, v78);
LABEL_31:

LABEL_32:
  v97 = objc_msgSend_formulaSyntaxErrorID(cellCopy, v42, v43, v44, v45);
  if (!v97)
  {
    goto LABEL_41;
  }

  formulaErrorDataList = self->_formulaErrorDataList;
  v99 = formulaErrorDataList;
  if (!formulaErrorDataList)
  {
    v99 = sub_22170A7F8(self);
  }

  v100 = objc_msgSend_formulaErrorForKey_(v99, v93, v97, v95, v96);
  v103 = v100;
  if (formulaErrorDataList)
  {
    if (!v100)
    {
      goto LABEL_39;
    }
  }

  else
  {

    if (!v103)
    {
LABEL_39:
      objc_msgSend_p_stashBadKey_forList_(self, v101, v97, @"FormulaErrorTable", v102);
    }
  }

  objc_msgSend_setFormulaSyntaxError_clearingID_(cellCopy, v101, v103, 0, v102);

LABEL_41:
  v108 = objc_msgSend_richTextID(cellCopy, v93, v94, v95, v96);
  if (!v108)
  {
    goto LABEL_53;
  }

  richTextDataList = self->_richTextDataList;
  v110 = richTextDataList;
  if (!richTextDataList)
  {
    v110 = sub_22170A7B0(self, v104);
  }

  v111 = objc_msgSend_richTextForKey_(v110, v104, v108, v106, v107);
  v114 = v111;
  if (richTextDataList)
  {
    if (!v111)
    {
      goto LABEL_48;
    }
  }

  else
  {

    if (!v114)
    {
LABEL_48:
      objc_msgSend_p_stashBadKey_forList_(self, v112, v108, @"RichTextTable", v113);
    }
  }

  if (versionCopy > 4)
  {
    objc_msgSend_setRichTextValue_clearingID_convertToPlaintextIfPossible_(cellCopy, v112, v114, 0, !transmutationCopy);
  }

  else
  {
    objc_msgSend_setRichTextValue_clearingID_convertToPlaintextIfPossible_(cellCopy, v112, v114, 0, 0);
  }

LABEL_53:
  v119 = objc_msgSend_commentStorageID(cellCopy, v104, v105, v106, v107);
  if (!v119)
  {
    goto LABEL_62;
  }

  commentStorageDataList = self->_commentStorageDataList;
  v121 = commentStorageDataList;
  if (!commentStorageDataList)
  {
    v121 = sub_22170A8A0(self);
  }

  v122 = objc_msgSend_commentStorageForKey_(v121, v115, v119, v117, v118);
  v125 = v122;
  if (commentStorageDataList)
  {
    if (!v122)
    {
      goto LABEL_60;
    }
  }

  else
  {

    if (!v125)
    {
LABEL_60:
      objc_msgSend_p_stashBadKey_forList_(self, v123, v119, @"CommentTable", v124);
    }
  }

  objc_msgSend_setCommentStorage_clearingID_(cellCopy, v123, v125, 0, v124);

LABEL_62:
  v130 = objc_msgSend_importWarningSetID(cellCopy, v115, v116, v117, v118);
  if (!v130)
  {
    goto LABEL_71;
  }

  importWarningSetDataList = self->_importWarningSetDataList;
  v132 = importWarningSetDataList;
  if (!importWarningSetDataList)
  {
    v132 = sub_22170A9E4(self);
  }

  v133 = objc_msgSend_importWarningSetForKey_(v132, v126, v130, v128, v129);
  v136 = v133;
  if (importWarningSetDataList)
  {
    if (!v133)
    {
      goto LABEL_69;
    }
  }

  else
  {

    if (!v136)
    {
LABEL_69:
      objc_msgSend_p_stashBadKey_forList_(self, v134, v130, @"ImportWarningTable", v135);
    }
  }

  objc_msgSend_setImportWarningSet_clearingID_(cellCopy, v134, v136, 0, v135);

LABEL_71:
  v141 = objc_msgSend_cellStyleID(cellCopy, v126, v127, v128, v129);
  if (!v141)
  {
    goto LABEL_80;
  }

  styleDataList = self->_styleDataList;
  v143 = styleDataList;
  if (!styleDataList)
  {
    v143 = sub_22170A75C(self);
  }

  v144 = objc_msgSend_styleForKey_(v143, v137, v141, v139, v140);
  v147 = v144;
  if (styleDataList)
  {
    if (!v144)
    {
      goto LABEL_78;
    }
  }

  else
  {

    if (!v147)
    {
LABEL_78:
      objc_msgSend_p_stashBadKey_forList_(self, v145, v141, @"StyleTable", v146);
    }
  }

  objc_msgSend_setCellStyle_clearingID_(cellCopy, v145, v147, 0, v146);

LABEL_80:
  v152 = objc_msgSend_textStyleID(cellCopy, v137, v138, v139, v140);
  if (!v152)
  {
    goto LABEL_89;
  }

  v153 = self->_styleDataList;
  v154 = v153;
  if (!v153)
  {
    v154 = sub_22170A75C(self);
  }

  v155 = objc_msgSend_styleForKey_(v154, v148, v152, v150, v151);
  v158 = v155;
  if (v153)
  {
    if (!v155)
    {
      goto LABEL_87;
    }
  }

  else
  {

    if (!v158)
    {
LABEL_87:
      objc_msgSend_p_stashBadKey_forList_(self, v156, v152, @"StyleTable", v157);
    }
  }

  objc_msgSend_setTextStyle_clearingID_(cellCopy, v156, v158, 0, v157);

LABEL_89:
  v163 = objc_msgSend_conditionalStyleID(cellCopy, v148, v149, v150, v151);
  if (!v163)
  {
    goto LABEL_98;
  }

  conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
  v165 = conditionalStyleSetDataList;
  if (!conditionalStyleSetDataList)
  {
    v165 = sub_22170A84C(self);
  }

  v166 = objc_msgSend_conditionalStyleSetForKey_(v165, v159, v163, v161, v162);
  v169 = v166;
  if (conditionalStyleSetDataList)
  {
    if (!v166)
    {
      goto LABEL_96;
    }
  }

  else
  {

    if (!v169)
    {
LABEL_96:
      objc_msgSend_p_stashBadKey_forList_(self, v167, v163, @"ConditionalStyleTable", v168);
    }
  }

  objc_msgSend_setConditionalStyle_clearingID_(cellCopy, v167, v169, 0, v168);

LABEL_98:
  v174 = objc_msgSend_currentFormatID(cellCopy, v159, v160, v161, v162);
  if (!v174)
  {
    goto LABEL_123;
  }

  preBNCFormatDataList = self->_preBNCFormatDataList;
  v176 = preBNCFormatDataList;
  if (!preBNCFormatDataList)
  {
    v176 = sub_22170AA80(self);
  }

  v177 = objc_msgSend_cellFormatForKey_(v176, v170, v174, v172, v173);
  v182 = v177;
  if (preBNCFormatDataList)
  {
    if (v177)
    {
      goto LABEL_106;
    }
  }

  else
  {

    if (v182)
    {
      goto LABEL_106;
    }
  }

  objc_msgSend_p_stashBadKey_forList_(self, v178, v174, @"preBNCFormatTable", v181);
LABEL_106:
  v187 = objc_msgSend_asCustomFormatWrapper(v182, v178, v179, v180, v181);
  if (v187)
  {
    v192 = 0.0;
    if (objc_msgSend_valueType(cellCopy, v183, v184, v185, v186) == 2 && objc_msgSend_formatType(v182, v188, v189, v190, v191) == 270)
    {
      objc_msgSend_doubleValue(cellCopy, v188, v193, v190, v191);
      v192 = v194;
    }

    v195 = objc_msgSend_p_preBNCpopulatedCustomFormat_value_(self, v188, v187, v190, v191, v192);

    v200 = objc_msgSend_asCustomFormatWrapper(v195, v196, v197, v198, v199);
    v209 = objc_msgSend_customFormat(v200, v201, v202, v203, v204);
    if (v209 || !objc_msgSend_hasFormula(cellCopy, v205, v206, v207, v208) || (objc_msgSend_currentFormatIsExplicit(cellCopy, v210, v211, v212, v213) & 1) != 0)
    {
    }

    else
    {

      if (versionCopy >= 2)
      {
        objc_msgSend_setDefaultFormatForValue(cellCopy, v324, v325, v326, v327);
        v214 = 0;
        goto LABEL_116;
      }
    }

    v214 = 1;
  }

  else
  {
    v214 = 1;
    v195 = v182;
  }

LABEL_116:
  objc_opt_class();
  v219 = TSUDynamicCast();
  if (v219)
  {
    v220 = objc_msgSend_p_populatedMultipleChoiceListFormat_(self, v215, v219, v217, v218);

    v195 = v220;
  }

  if (v214)
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v215, v195, 0, 1, 1, 0);
  }

  if (versionCopy <= 1)
  {
    v221 = objc_msgSend_currentFormat(cellCopy, v215, v216, v217, v218);
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v222, v221, 1, 1, 1, 0);
  }

LABEL_123:
  v227 = objc_msgSend_numberFormatID(cellCopy, v170, v171, v172, v173);
  if (!v227)
  {
    goto LABEL_132;
  }

  v228 = self->_preBNCFormatDataList;
  v229 = v228;
  if (!v228)
  {
    v229 = sub_22170AA80(self);
  }

  v230 = objc_msgSend_cellFormatForKey_(v229, v223, v227, v225, v226);
  v233 = v230;
  if (v228)
  {
    if (!v230)
    {
      goto LABEL_130;
    }
  }

  else
  {

    if (!v233)
    {
LABEL_130:
      objc_msgSend_p_stashBadKey_forList_(self, v231, v227, @"preBNCFormatTable", v232);
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v231, v233, 0, 1, 0, 0);

LABEL_132:
  v238 = objc_msgSend_currencyFormatID(cellCopy, v223, v224, v225, v226);
  if (!v238)
  {
    goto LABEL_141;
  }

  v239 = self->_preBNCFormatDataList;
  v240 = v239;
  if (!v239)
  {
    v240 = sub_22170AA80(self);
  }

  v241 = objc_msgSend_cellFormatForKey_(v240, v234, v238, v236, v237);
  v244 = v241;
  if (v239)
  {
    if (!v241)
    {
      goto LABEL_139;
    }
  }

  else
  {

    if (!v244)
    {
LABEL_139:
      objc_msgSend_p_stashBadKey_forList_(self, v242, v238, @"preBNCFormatTable", v243);
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v242, v244, 0, 1, 0, 0);

LABEL_141:
  v249 = objc_msgSend_dateFormatID(cellCopy, v234, v235, v236, v237);
  if (!v249)
  {
    goto LABEL_150;
  }

  v250 = self->_preBNCFormatDataList;
  v251 = v250;
  if (!v250)
  {
    v251 = sub_22170AA80(self);
  }

  v252 = objc_msgSend_cellFormatForKey_(v251, v245, v249, v247, v248);
  v255 = v252;
  if (v250)
  {
    if (!v252)
    {
      goto LABEL_148;
    }
  }

  else
  {

    if (!v255)
    {
LABEL_148:
      objc_msgSend_p_stashBadKey_forList_(self, v253, v249, @"preBNCFormatTable", v254);
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v253, v255, 0, 1, 0, 0);

LABEL_150:
  v260 = objc_msgSend_durationFormatID(cellCopy, v245, v246, v247, v248);
  if (!v260)
  {
    goto LABEL_159;
  }

  v261 = self->_preBNCFormatDataList;
  v262 = v261;
  if (!v261)
  {
    v262 = sub_22170AA80(self);
  }

  v263 = objc_msgSend_cellFormatForKey_(v262, v256, v260, v258, v259);
  v266 = v263;
  if (v261)
  {
    if (!v263)
    {
      goto LABEL_157;
    }
  }

  else
  {

    if (!v266)
    {
LABEL_157:
      objc_msgSend_p_stashBadKey_forList_(self, v264, v260, @"preBNCFormatTable", v265);
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v264, v266, 0, 1, 0, 0);

LABEL_159:
  v271 = objc_msgSend_controlFormatID(cellCopy, v256, v257, v258, v259);
  if (!v271)
  {
    goto LABEL_168;
  }

  v272 = self->_preBNCFormatDataList;
  v273 = v272;
  if (!v272)
  {
    v273 = sub_22170AA80(self);
  }

  v274 = objc_msgSend_cellFormatForKey_(v273, v267, v271, v269, v270);
  v277 = v274;
  if (v272)
  {
    if (!v274)
    {
      goto LABEL_166;
    }
  }

  else
  {

    if (!v277)
    {
LABEL_166:
      objc_msgSend_p_stashBadKey_forList_(self, v275, v271, @"preBNCFormatTable", v276);
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v275, v277, 0, 1, 0, 0);

LABEL_168:
  v282 = objc_msgSend_customFormatID(cellCopy, v267, v268, v269, v270);
  if (!v282)
  {
    goto LABEL_180;
  }

  v283 = self->_preBNCFormatDataList;
  v284 = v283;
  if (!v283)
  {
    v284 = sub_22170AA80(self);
  }

  v285 = objc_msgSend_cellFormatForKey_(v284, v278, v282, v280, v281);
  v290 = v285;
  if (v283)
  {
    if (v285)
    {
      goto LABEL_176;
    }
  }

  else
  {

    if (v290)
    {
      goto LABEL_176;
    }
  }

  objc_msgSend_p_stashBadKey_forList_(self, v286, v282, @"preBNCFormatTable", v289);
LABEL_176:
  v295 = 0.0;
  if (objc_msgSend_valueType(cellCopy, v286, v287, v288, v289) == 2 && objc_msgSend_formatType(v290, v291, v292, v293, v294) == 270)
  {
    objc_msgSend_doubleValue(cellCopy, v291, v296, v293, v294);
    v295 = v297;
  }

  v298 = objc_msgSend_p_preBNCpopulatedCustomFormat_value_(self, v291, v290, v293, v294, v295);

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v299, v298, 0, 1, 0, 0);
LABEL_180:
  v304 = objc_msgSend_baseFormatID(cellCopy, v278, v279, v280, v281);
  if (!v304)
  {
    goto LABEL_189;
  }

  v305 = self->_preBNCFormatDataList;
  v306 = v305;
  if (!v305)
  {
    v306 = sub_22170AA80(self);
  }

  v307 = objc_msgSend_cellFormatForKey_(v306, v300, v304, v302, v303);
  v310 = v307;
  if (v305)
  {
    if (!v307)
    {
      goto LABEL_187;
    }
  }

  else
  {

    if (!v310)
    {
LABEL_187:
      objc_msgSend_p_stashBadKey_forList_(self, v308, v304, @"preBNCFormatTable", v309);
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v308, v310, 0, 1, 0, 0);

LABEL_189:
  v314 = objc_msgSend_multipleChoiceListFormatID(cellCopy, v300, v301, v302, v303);
  if (v314)
  {
    v315 = self->_preBNCFormatDataList;
    v316 = v315;
    if (!v315)
    {
      v316 = sub_22170AA80(self);
    }

    v317 = objc_msgSend_cellFormatForKey_(v316, v311, v314, v312, v313);
    v321 = v317;
    if (v315)
    {
      if (!v317)
      {
        goto LABEL_196;
      }
    }

    else
    {

      if (!v321)
      {
LABEL_196:
        objc_msgSend_p_stashBadKey_forList_(self, v318, v314, @"preBNCFormatTable", v320);
      }
    }

    v322 = objc_msgSend_p_populatedMultipleChoiceListFormat_(self, v318, v321, v319, v320);
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v323, v322, 0, 1, 0, 0);
  }
}

- (void)resolveDataListKeysForCell:(id)cell cache:(id)cache suppressTransmutation:(BOOL)transmutation sourceStorageVersion:(unsigned __int8)version
{
  versionCopy = version;
  transmutationCopy = transmutation;
  v11 = objc_msgSend_stringID(cell, a2, cell, cache, transmutation);
  if (!v11)
  {
    goto LABEL_11;
  }

  v16 = v11;
  v244 = 0;
  if (cache)
  {
    v17 = objc_msgSend_stringForKey_shouldWrap_(cache, v12, v11, &v244, v15);
    v18 = v17;
  }

  else
  {
    stringDataList = self->_stringDataList;
    v17 = stringDataList;
    if (stringDataList)
    {
      objc_msgSend_stringForKey_outShouldWrap_outIsShared_(stringDataList, v12, v11, &v244, 0);
    }

    else
    {
      v17 = sub_22170A8F4(self);
      objc_msgSend_stringForKey_outShouldWrap_outIsShared_(v17, v242, v16, &v244, 0);
    }
    v18 = ;

    if (stringDataList)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  if (!v18)
  {
    objc_msgSend_p_stashBadKey_forList_(self, v19, v16, @"StringTable", v20);
  }

  objc_msgSend_setStringValue_clearingID_shouldWrap_(cell, v19, v18, 0, v244);
LABEL_11:
  v22 = objc_msgSend_formulaID(cell, v12, v13, v14, v15);
  if (!v22)
  {
    v53 = objc_msgSend_controlCellSpecID(cell, v23, v24, v25, v26);
    if (!v53)
    {
      goto LABEL_24;
    }

    v54 = v53;
    controlCellSpecDataList = self->_controlCellSpecDataList;
    v56 = controlCellSpecDataList;
    if (!controlCellSpecDataList)
    {
      v56 = sub_22170AA38(self, v38);
    }

    v57 = objc_msgSend_controlCellSpecForKey_(v56, v38, v54, v40, v41);
    v60 = v57;
    if (controlCellSpecDataList)
    {
      if (v57)
      {
LABEL_23:
        objc_msgSend_setCellSpec_clearingID_(cell, v58, v60, 0, v59);
        goto LABEL_24;
      }
    }

    else
    {

      if (v60)
      {
        goto LABEL_23;
      }
    }

    objc_msgSend_p_stashBadKey_forList_(self, v58, v54, @"ControlCellSpecTable", v59);
    goto LABEL_23;
  }

  v27 = v22;
  formulaDataList = self->_formulaDataList;
  v29 = formulaDataList;
  if (!formulaDataList)
  {
    v29 = sub_22170A990(self);
  }

  v30 = objc_msgSend_formulaForKey_(v29, v23, v27, v25, v26);
  v33 = v30;
  if (formulaDataList)
  {
    if (v30)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v33)
    {
      goto LABEL_16;
    }
  }

  objc_msgSend_p_stashBadKey_forList_(self, v31, v27, @"FormulaTable", v32);
LABEL_16:
  objc_msgSend_setCellSpec_clearingID_(cell, v31, v33, 0, v32);
  if (objc_msgSend_controlCellSpecID(cell, v34, v35, v36, v37))
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSTTableDataStore resolveDataListKeysForCell:cache:suppressTransmutation:sourceStorageVersion:]", v40, v41);
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v45, v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v48, v43, v47, 1809, 0, "This cell is corrupt. It has a key for both formula and control.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
  }

LABEL_24:
  v61 = objc_msgSend_formulaSyntaxErrorID(cell, v38, v39, v40, v41);
  if (!v61)
  {
    goto LABEL_30;
  }

  v66 = v61;
  formulaErrorDataList = self->_formulaErrorDataList;
  v68 = formulaErrorDataList;
  if (!formulaErrorDataList)
  {
    v68 = sub_22170A7F8(self);
  }

  v69 = objc_msgSend_formulaErrorForKey_(v68, v62, v66, v64, v65);
  v72 = v69;
  if (!formulaErrorDataList)
  {

    if (v72)
    {
      goto LABEL_29;
    }

LABEL_57:
    objc_msgSend_p_stashBadKey_forList_(self, v70, v66, @"FormulaErrorTable", v71);
    goto LABEL_29;
  }

  if (!v69)
  {
    goto LABEL_57;
  }

LABEL_29:
  objc_msgSend_setFormulaSyntaxError_clearingID_(cell, v70, v72, 0, v71);
LABEL_30:
  v73 = objc_msgSend_richTextID(cell, v62, v63, v64, v65);
  if (!v73)
  {
    goto LABEL_38;
  }

  v78 = v73;
  richTextDataList = self->_richTextDataList;
  v80 = richTextDataList;
  if (!richTextDataList)
  {
    v80 = sub_22170A7B0(self, v74);
  }

  v81 = objc_msgSend_richTextForKey_(v80, v74, v78, v76, v77);
  v84 = v81;
  if (richTextDataList)
  {
    if (v81)
    {
      goto LABEL_35;
    }
  }

  else
  {

    if (v84)
    {
      goto LABEL_35;
    }
  }

  objc_msgSend_p_stashBadKey_forList_(self, v82, v78, @"RichTextTable", v83);
LABEL_35:
  if (versionCopy > 4)
  {
    objc_msgSend_setRichTextValue_clearingID_convertToPlaintextIfPossible_(cell, v82, v84, 0, !transmutationCopy);
  }

  else
  {
    objc_msgSend_setRichTextValue_clearingID_convertToPlaintextIfPossible_(cell, v82, v84, 0, 0);
  }

LABEL_38:
  v85 = objc_msgSend_commentStorageID(cell, v74, v75, v76, v77);
  if (!v85)
  {
    goto LABEL_44;
  }

  v90 = v85;
  commentStorageDataList = self->_commentStorageDataList;
  v92 = commentStorageDataList;
  if (!commentStorageDataList)
  {
    v92 = sub_22170A8A0(self);
  }

  v93 = objc_msgSend_commentStorageForKey_(v92, v86, v90, v88, v89);
  v96 = v93;
  if (!commentStorageDataList)
  {

    if (v96)
    {
      goto LABEL_43;
    }

LABEL_61:
    objc_msgSend_p_stashBadKey_forList_(self, v94, v90, @"CommentTable", v95);
    goto LABEL_43;
  }

  if (!v93)
  {
    goto LABEL_61;
  }

LABEL_43:
  objc_msgSend_setCommentStorage_clearingID_(cell, v94, v96, 0, v95);
LABEL_44:
  v97 = objc_msgSend_importWarningSetID(cell, v86, v87, v88, v89);
  if (!v97)
  {
    goto LABEL_50;
  }

  v102 = v97;
  importWarningSetDataList = self->_importWarningSetDataList;
  v104 = importWarningSetDataList;
  if (!importWarningSetDataList)
  {
    v104 = sub_22170A9E4(self);
  }

  v105 = objc_msgSend_importWarningSetForKey_(v104, v98, v102, v100, v101);
  v108 = v105;
  if (!importWarningSetDataList)
  {

    if (v108)
    {
      goto LABEL_49;
    }

LABEL_91:
    objc_msgSend_p_stashBadKey_forList_(self, v106, v102, @"ImportWarningTable", v107);
    goto LABEL_49;
  }

  if (!v105)
  {
    goto LABEL_91;
  }

LABEL_49:
  objc_msgSend_setImportWarningSet_clearingID_(cell, v106, v108, 0, v107);
LABEL_50:
  v109 = objc_msgSend_cellStyleID(cell, v98, v99, v100, v101);
  if (!v109)
  {
    goto LABEL_69;
  }

  v114 = v109;
  if (!cache)
  {
    objc_opt_class();
    styleDataList = self->_styleDataList;
    v122 = styleDataList;
    if (!styleDataList)
    {
      v122 = sub_22170A75C(self);
    }

    v123 = objc_msgSend_styleForKey_(v122, v118, v114, v119, v120);
    v124 = TSUCheckedDynamicCast();

    if (!styleDataList)
    {
    }

    v117 = objc_msgSend_handleForCellStyle_(TSTCellStyleHandle, v125, v124, v126, v127);

    if (v117)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  v117 = objc_msgSend_cellStyleHandleForKey_(cache, v110, v109, v112, v113);
  if (!v117)
  {
LABEL_67:
    objc_msgSend_p_stashBadKey_forList_(self, v115, v114, @"StyleTable", v116);
  }

LABEL_68:
  objc_msgSend_setCellStyleHandle_clearingID_(cell, v115, v117, 0, v116);

LABEL_69:
  v128 = objc_msgSend_textStyleID(cell, v110, v111, v112, v113);
  if (!v128)
  {
    goto LABEL_74;
  }

  v133 = v128;
  if (!cache)
  {
    objc_opt_class();
    v233 = sub_22170A75C(self);
    v237 = objc_msgSend_styleForKey_(v233, v234, v133, v235, v236);
    v238 = TSUCheckedDynamicCast();

    v136 = objc_msgSend_handleForTextStyle_(TSTTextStyleHandle, v239, v238, v240, v241);

    if (v136)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v136 = objc_msgSend_textStyleHandleForKey_(cache, v129, v128, v131, v132);
  if (!v136)
  {
LABEL_72:
    objc_msgSend_p_stashBadKey_forList_(self, v134, v133, @"StyleTable", v135);
  }

LABEL_73:
  objc_msgSend_setTextStyleHandle_clearingID_(cell, v134, v136, 0, v135);

LABEL_74:
  v137 = objc_msgSend_conditionalStyleID(cell, v129, v130, v131, v132);
  if (v137)
  {
    v142 = v137;
    conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
    v144 = conditionalStyleSetDataList;
    if (!conditionalStyleSetDataList)
    {
      v144 = sub_22170A84C(self);
    }

    v145 = objc_msgSend_conditionalStyleSetForKey_(v144, v138, v142, v140, v141);
    v148 = v145;
    if (conditionalStyleSetDataList)
    {
      if (v145)
      {
LABEL_79:
        objc_msgSend_setConditionalStyle_clearingID_(cell, v146, v148, 0, v147);
        goto LABEL_80;
      }
    }

    else
    {

      if (v148)
      {
        goto LABEL_79;
      }
    }

    objc_msgSend_p_stashBadKey_forList_(self, v146, v142, @"ConditionalStyleTable", v147);
    goto LABEL_79;
  }

LABEL_80:
  v149 = objc_msgSend_numberFormatID(cell, v138, v139, v140, v141);
  v154 = objc_msgSend_currencyFormatID(cell, v150, v151, v152, v153);
  v159 = objc_msgSend_dateFormatID(cell, v155, v156, v157, v158);
  v164 = objc_msgSend_durationFormatID(cell, v160, v161, v162, v163);
  v169 = objc_msgSend_textFormatID(cell, v165, v166, v167, v168);
  v174 = objc_msgSend_BOOLeanFormatID(cell, v170, v171, v172, v173);
  v178 = v174;
  if (!v149 && !v154 && !v159 && !v164 && !v169 && !v174)
  {
    return;
  }

  formatDataList = self->_formatDataList;
  if (formatDataList)
  {
    if (!v149)
    {
      goto LABEL_100;
    }
  }

  else
  {
    formatDataList = sub_22170A948(self, v175);

    if (!v149)
    {
      goto LABEL_100;
    }
  }

  if (cache)
  {
    objc_msgSend_formatForKey_(cache, v175, v149, v176, v177);
  }

  else
  {
    objc_msgSend_cellFormatForKey_(formatDataList, v175, v149, v176, v177);
  }
  v179 = ;

  if (!v179)
  {
    objc_msgSend_p_stashBadKey_forList_(self, v180, v149, @"FormatTable", v183);
  }

  v184 = objc_msgSend_formatType(v179, v180, v181, v182, v183, formatDataList);
  if (sub_22121E75C(v184))
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cell, v185, v179, 0, 1, 0, 0);
  }

  else
  {
    objc_msgSend_clearFormatOfType_(cell, v185, 256, v186, v187);
  }

LABEL_100:
  if (!v154)
  {
    goto LABEL_108;
  }

  if (cache)
  {
    objc_msgSend_formatForKey_(cache, v175, v154, v176, v177);
  }

  else
  {
    objc_msgSend_cellFormatForKey_(formatDataList, v175, v154, v176, v177);
  }
  v188 = ;

  if (!v188)
  {
    objc_msgSend_p_stashBadKey_forList_(self, v189, v154, @"FormatTable", v192);
  }

  v193 = objc_msgSend_formatType(v188, v189, v190, v191, v192, formatDataList);
  if (sub_22121E75C(v193))
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cell, v194, v188, 0, 1, 0, 0);
LABEL_108:
    if (!v159)
    {
      goto LABEL_118;
    }

    goto LABEL_109;
  }

  objc_msgSend_clearFormatOfType_(cell, v194, 257, v195, v196);
  if (!v159)
  {
LABEL_118:
    if (!v164)
    {
      goto LABEL_128;
    }

    goto LABEL_119;
  }

LABEL_109:
  if (cache)
  {
    objc_msgSend_formatForKey_(cache, v175, v159, v176, v177);
  }

  else
  {
    objc_msgSend_cellFormatForKey_(formatDataList, v175, v159, v176, v177);
  }
  v197 = ;

  if (!v197)
  {
    objc_msgSend_p_stashBadKey_forList_(self, v198, v159, @"FormatTable", v201);
  }

  v202 = objc_msgSend_formatType(v197, v198, v199, v200, v201, formatDataList);
  if (sub_22121E75C(v202))
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cell, v203, v197, 0, 1, 0, 0);
    goto LABEL_118;
  }

  objc_msgSend_clearFormatOfType_(cell, v203, 261, v204, v205);
  if (!v164)
  {
LABEL_128:
    if (!v169)
    {
      goto LABEL_138;
    }

    goto LABEL_129;
  }

LABEL_119:
  if (cache)
  {
    objc_msgSend_formatForKey_(cache, v175, v164, v176, v177);
  }

  else
  {
    objc_msgSend_cellFormatForKey_(formatDataList, v175, v164, v176, v177);
  }
  v206 = ;

  if (!v206)
  {
    objc_msgSend_p_stashBadKey_forList_(self, v207, v164, @"FormatTable", v210);
  }

  v211 = objc_msgSend_formatType(v206, v207, v208, v209, v210, formatDataList);
  if (sub_22121E75C(v211))
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cell, v212, v206, 0, 1, 0, 0);
    goto LABEL_128;
  }

  objc_msgSend_clearFormatOfType_(cell, v212, 268, v213, v214);
  if (!v169)
  {
LABEL_138:
    if (!v178)
    {
      return;
    }

    goto LABEL_139;
  }

LABEL_129:
  if (cache)
  {
    objc_msgSend_formatForKey_(cache, v175, v169, v176, v177);
  }

  else
  {
    objc_msgSend_cellFormatForKey_(formatDataList, v175, v169, v176, v177);
  }
  v215 = ;

  if (!v215)
  {
    objc_msgSend_p_stashBadKey_forList_(self, v216, v169, @"FormatTable", v219);
  }

  v220 = objc_msgSend_formatType(v215, v216, v217, v218, v219, formatDataList);
  if (sub_22121E75C(v220))
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cell, v221, v215, 0, 1, 0, 0);
    goto LABEL_138;
  }

  objc_msgSend_clearFormatOfType_(cell, v221, 260, v222, v223);
  if (!v178)
  {
    return;
  }

LABEL_139:
  if (cache)
  {
    objc_msgSend_formatForKey_(cache, v175, v178, v176, v177);
  }

  else
  {
    objc_msgSend_cellFormatForKey_(formatDataList, v175, v178, v176, v177);
  }
  v224 = ;

  if (!v224)
  {
    objc_msgSend_p_stashBadKey_forList_(self, v225, v178, @"FormatTable", v228);
  }

  v229 = objc_msgSend_formatType(v224, v225, v226, v227, v228, formatDataList);
  if (sub_22121E75C(v229))
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cell, v230, v224, 0, 1, 0, 0);
  }

  else
  {
    objc_msgSend_clearFormatOfType_(cell, v230, 1, v231, v232);
  }
}

- (void)p_clearDataListEntriesInRange:(TSUCellRect)range
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2216A3A28;
  v3[3] = &unk_278468530;
  v3[4] = self;
  objc_msgSend_enumerateCellStoragesInRange_withBlock_(self, a2, *&range.origin, *&range.size, v3);
}

- (void)p_clearDataListEntriesForStorageRef:(TSTCellStorage *)ref cellID:(TSUCellCoord)d
{
  v8 = sub_221145078(ref, 8, ref, *&d, v4);
  if (v8)
  {
    v13 = v8;
    stringDataList = self->_stringDataList;
    v5 = stringDataList;
    if (!stringDataList)
    {
      v5 = sub_22170A8F4(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v5, v9, v13, 1, v12);
    if (!stringDataList)
    {
    }
  }

  v15 = sub_221145078(ref, 0x200, v10, v11, v12);
  if (v15)
  {
    v20 = v15;
    formulaDataList = self->_formulaDataList;
    v5 = formulaDataList;
    if (!formulaDataList)
    {
      v5 = sub_22170A990(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v5, v16, v20, 1, v19);
    if (!formulaDataList)
    {
    }
  }

  v22 = sub_221145078(ref, 0x400, v17, v18, v19);
  if (v22)
  {
    v27 = v22;
    controlCellSpecDataList = self->_controlCellSpecDataList;
    v5 = controlCellSpecDataList;
    if (!controlCellSpecDataList)
    {
      v5 = sub_22170AA38(self, v23);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v5, v23, v27, 1, v26);
    if (!controlCellSpecDataList)
    {
    }
  }

  v29 = sub_221145078(ref, 0x800, v24, v25, v26);
  if (v29)
  {
    v34 = v29;
    formulaErrorDataList = self->_formulaErrorDataList;
    v5 = formulaErrorDataList;
    if (!formulaErrorDataList)
    {
      v5 = sub_22170A7F8(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v5, v30, v34, 1, v33);
    if (!formulaErrorDataList)
    {
    }
  }

  v36 = sub_221145078(ref, 0x10, v31, v32, v33);
  if (v36)
  {
    v41 = v36;
    richTextDataList = self->_richTextDataList;
    v5 = richTextDataList;
    if (!richTextDataList)
    {
      v5 = sub_22170A7B0(self, v37);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v5, v37, v41, 1, v40);
    if (!richTextDataList)
    {
    }
  }

  v43 = sub_221145078(ref, 0x80000, v38, v39, v40);
  if (v43)
  {
    v48 = v43;
    commentStorageDataList = self->_commentStorageDataList;
    v5 = commentStorageDataList;
    if (!commentStorageDataList)
    {
      v5 = sub_22170A8A0(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v5, v44, v48, 1, v47);
    if (!commentStorageDataList)
    {
    }
  }

  v50 = sub_221145078(ref, 0x100000, v45, v46, v47);
  if (v50)
  {
    v55 = v50;
    importWarningSetDataList = self->_importWarningSetDataList;
    v5 = importWarningSetDataList;
    if (!importWarningSetDataList)
    {
      v5 = sub_22170A9E4(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v5, v51, v55, 1, v54);
    if (!importWarningSetDataList)
    {
    }
  }

  v57 = sub_221145078(ref, 0x20, v52, v53, v54);
  if (v57)
  {
    v62 = v57;
    styleDataList = self->_styleDataList;
    v5 = styleDataList;
    if (!styleDataList)
    {
      v5 = sub_22170A75C(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v5, v58, v62, 1, v61);
    if (!styleDataList)
    {
    }
  }

  v64 = sub_221145078(ref, 0x40, v59, v60, v61);
  if (v64)
  {
    v69 = v64;
    v70 = self->_styleDataList;
    v5 = v70;
    if (!v70)
    {
      v5 = sub_22170A75C(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v5, v65, v69, 1, v68);
    if (!v70)
    {
    }
  }

  v71 = sub_221145078(ref, 0x80, v66, v67, v68);
  if (v71)
  {
    v76 = v71;
    conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
    v5 = conditionalStyleSetDataList;
    if (!conditionalStyleSetDataList)
    {
      v5 = sub_22170A84C(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v5, v72, v76, 1, v75);
    if (!conditionalStyleSetDataList)
    {
    }
  }

  v81 = sub_221143644(&ref->var0.var0, v72, v73, v74, v75);
  for (i = 0; i != 6; ++i)
  {
    v83 = dword_2218038DC[i];
    if ((v83 & v81) != 0)
    {
      v86 = sub_221145078(ref, v83, v78, v79, v80);
      formatDataList = self->_formatDataList;
      v88 = formatDataList;
      if (!formatDataList)
      {
        v88 = sub_22170A948(self, v84);
        v5 = v88;
      }

      objc_msgSend_dropReferenceForKey_callWillModify_(v88, v84, v86, 1, v85);
      if (!formatDataList)
      {
      }
    }
  }
}

- (void)insertRows:(_NSRange)rows
{
  length = rows.length;
  location = rows.location;
  objc_msgSend_willModify(self, a2, rows.location, rows.length, v3);
  objc_msgSend_insertRowsAtIndex_count_(self->_tileStorage, v7, location, length, v8);
  rowHeaderStorage = self->_rowHeaderStorage;

  objc_msgSend_shiftIndexesForwardAtIndex_count_(rowHeaderStorage, v9, location, length, v10);
}

- (void)insertColumns:(_NSRange)columns
{
  length = columns.length;
  location = columns.location;
  objc_msgSend_willModify(self, a2, columns.location, columns.length, v3);
  objc_msgSend_insertColumnsAtIndex_count_(self->_tileStorage, v7, location, length, v8);
  columnHeaderStorage = self->_columnHeaderStorage;

  objc_msgSend_shiftIndexesForwardAtIndex_count_(columnHeaderStorage, v9, location, length, v10);
}

- (void)removeRows:(_NSRange)rows
{
  length = rows.length;
  location = rows.location;
  objc_msgSend_willModify(self, a2, rows.location, rows.length, v3);
  if (location >= 0xF4240)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 382, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (location + length >= 0xF4241)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", v8, v9);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 383, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  objc_msgSend_p_clearDataListEntriesInRange_(self, v7, location, (length << 32) | 0x3E8, v9);
  v34 = objc_msgSend_columnCellCountsOfRowsInRange_(self->_tileStorage, v32, location, length, v33);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_2216A41AC;
  v48[3] = &unk_278468558;
  v48[4] = self;
  objc_msgSend_enumerateKeysAndValuesUsingBlock_(v34, v35, v48, v36, v37);
  objc_msgSend_removeRowsAtIndex_count_(self->_tileStorage, v38, location, length, v39);
  objc_msgSend_removeIndexesAtIndex_count_(self->_rowHeaderStorage, v40, location, length, v41);
  objc_msgSend_shiftIndexesBackAtIndex_count_(self->_rowHeaderStorage, v42, (location + length), length, v43);
  self->_cellCountValid = 0;
  objc_msgSend_p_updateNumberOfPopulatedCells(self, v44, v45, v46, v47);
}

- (void)removeColumns:(_NSRange)columns
{
  length = columns.length;
  location = columns.location;
  objc_msgSend_willModify(self, a2, columns.location, columns.length, v3);
  if (location != 0x7FFFFFFFFFFFFFFFLL && location + length)
  {
    if (location >= 0x3E8)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSUCellRect TSUCellRangeFromColumnRange(NSRange, TSUColumnRowSize)", v8, v9);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v13, v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 373, 0, "out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    }

    if (location + length >= 0x3EA)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSUCellRect TSUCellRangeFromColumnRange(NSRange, TSUColumnRowSize)", v8, v9);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 374, 0, "out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }
  }

  objc_msgSend_p_clearDataListEntriesInRange_(self, v7, location << 32, length | 0xF424000000000, v9);
  v34 = objc_msgSend_removeColumnsAtIndex_count_(self->_tileStorage, v32, location, length, v33);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_2216A43FC;
  v46[3] = &unk_278468558;
  v46[4] = self;
  objc_msgSend_enumerateKeysAndValuesUsingBlock_(v34, v35, v46, v36, v37);
  objc_msgSend_removeIndexesAtIndex_count_(self->_columnHeaderStorage, v38, location, length, v39);
  objc_msgSend_shiftIndexesBackAtIndex_count_(self->_columnHeaderStorage, v40, (location + length), length, v41);
  self->_cellCountValid = 0;
  objc_msgSend_p_updateNumberOfPopulatedCells(self, v42, v43, v44, v45);
}

- (void)moveRowIndexRange:(_NSRange)range toIndex:(unsigned int)index
{
  v4 = *&index;
  length = range.length;
  location = range.location;
  objc_msgSend_willModify(self, a2, range.location, range.length, *&index);
  objc_msgSend_moveIndexRange_toIndex_(self->_rowHeaderStorage, v8, location, length, v4);
  tileStorage = self->_tileStorage;

  objc_msgSend_moveRowIndexRange_toIndex_(tileStorage, v9, location, length, v4);
}

- (void)moveColumnIndexRange:(_NSRange)range toIndex:(unsigned __int16)index
{
  indexCopy = index;
  length = range.length;
  location = range.location;
  objc_msgSend_willModify(self, a2, range.location, range.length, index);
  objc_msgSend_moveIndexRange_toIndex_(self->_columnHeaderStorage, v8, location, length, indexCopy);
  tileStorage = self->_tileStorage;

  objc_msgSend_moveColumnIndexRange_toIndex_(tileStorage, v9, location, length, indexCopy);
}

- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex
{
  v5 = *&atIndex;
  v6 = *&index;
  objc_msgSend_swapRowAtIndex_withRowAtIndex_(self->_tileStorage, a2, *&index, *&atIndex, v4);
  rowHeaderStorage = self->_rowHeaderStorage;

  MEMORY[0x2821F9670](rowHeaderStorage, sel_swapIndex_withIndex_, v6, v5, v8);
}

- (id)formulaSyntaxErrorAtCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3, v4);
  if (v6 && (v10 = sub_221145078(v6, 0x800, v7, v8, v9), v10))
  {
    v14 = v10;
    formulaErrorDataList = self->_formulaErrorDataList;
    v16 = formulaErrorDataList;
    if (!formulaErrorDataList)
    {
      v16 = sub_22170A7F8(self);
    }

    v17 = objc_msgSend_formulaErrorForKey_(v16, v11, v14, v12, v13);
    if (!formulaErrorDataList)
    {
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)formulaAtCellID:(TSUCellCoord)d
{
  v5 = objc_msgSend_formulaSpecAtCellID_(self, a2, *&d, v3, v4);
  v10 = objc_msgSend_formulaObject(v5, v6, v7, v8, v9);

  return v10;
}

- (id)formulaSpecAtCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3, v4);
  if (v6 && (v10 = sub_221145078(v6, 0x200, v7, v8, v9), v10))
  {
    v14 = v10;
    formulaDataList = self->_formulaDataList;
    v16 = formulaDataList;
    if (!formulaDataList)
    {
      v16 = sub_22170A990(self);
    }

    v17 = objc_msgSend_formulaForKey_(v16, v11, v14, v12, v13);
    v22 = objc_msgSend_asFormulaSpec(v17, v18, v19, v20, v21);

    if (!formulaDataList)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)formulaSpecForStorageRef:(TSTCellStorage *)ref
{
  if (ref && (v6 = sub_221145078(ref, 0x200, ref, v3, v4), v6))
  {
    v10 = v6;
    formulaDataList = self->_formulaDataList;
    v12 = formulaDataList;
    if (!formulaDataList)
    {
      v12 = sub_22170A990(self);
    }

    v13 = objc_msgSend_formulaForKey_(v12, v7, v10, v8, v9);
    v18 = objc_msgSend_asFormulaSpec(v13, v14, v15, v16, v17);

    if (!formulaDataList)
    {
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (vector<TSUCellRect,)mergedRects
{
  p_mergedRects = &self->_mergedRects;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  result = sub_22116C9DC(retstr, self->_mergedRects.__begin_, self->_mergedRects.__end_, self->_mergedRects.__end_ - self->_mergedRects.__begin_);
  if (p_mergedRects->__end_ != p_mergedRects->__begin_)
  {
    result = objc_msgSend_willModifyForUpgrade(self, v6, v7, v8, v9);
    p_mergedRects->__end_ = p_mergedRects->__begin_;
  }

  return result;
}

- (id)_loadDatalist:(id *)datalist forLazyReference:(id)reference completionBlock:(id)block
{
  referenceCopy = reference;
  blockCopy = block;
  v10 = *datalist;
  if (!*datalist)
  {
    v11 = referenceCopy;
    objc_sync_enter(v11);
    if (!*datalist)
    {
      if (v11)
      {
        v111 = 0;
        v15 = objc_msgSend_objectAndReturnError_(v11, v12, &v111, v13, v14);
        v16 = v111;
        v21 = v16;
        if (v15 && !v16)
        {
          v22 = v15;
          if (blockCopy)
          {
            blockCopy[2](blockCopy, v22);
          }

          v23 = *datalist;
          *datalist = v22;

          goto LABEL_9;
        }

        if (!v16)
        {
          v92 = MEMORY[0x277D81150];
          v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableDataStore _loadDatalist:forLazyReference:completionBlock:]", v19, v20);
          v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v95, v96);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v98, v93, v97, 2299, 0, "invalid nil value for '%{public}s'", "error");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v99, v100, v101, v102);
        }

        v36 = objc_msgSend_owner(self, v17, v18, v19, v20);
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v43 = objc_msgSend_domain(v21, v39, v40, v41, v42);
        v48 = objc_msgSend_code(v21, v44, v45, v46, v47);
        isRecoverable = objc_msgSend_tsp_isRecoverable(v21, v49, v50, v51, v52);
        v109 = objc_msgSend_tsp_hintsDescription(v21, v54, v55, v56, v57);
        v58 = &stru_2834BADA0;
        if (isRecoverable)
        {
          v58 = @"recoverable=YES, ";
        }

        v104 = v58;
        v103 = v48;
        TSUSetCrashReporterInfo();

        v59 = MEMORY[0x277D81150];
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "[TSTTableDataStore _loadDatalist:forLazyReference:completionBlock:]", v61, v62, "[TSTTableDataStore _loadDatalist:forLazyReference:completionBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", 2300, self, v36, v38, v43, v103, v104, v109, v21);
        v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v65, v66);
        v72 = objc_msgSend_owner(self, v68, v69, v70, v71);
        v73 = objc_opt_class();
        v110 = NSStringFromClass(v73);
        v108 = objc_msgSend_domain(v21, v74, v75, v76, v77);
        v107 = objc_msgSend_code(v21, v78, v79, v80, v81);
        v106 = objc_msgSend_tsp_isRecoverable(v21, v82, v83, v84, v85);
        v105 = objc_msgSend_tsp_hintsDescription(v21, v86, v87, v88, v89);
        if (v106)
        {
          v91 = @"recoverable=YES, ";
        }

        else
        {
          v91 = &stru_2834BADA0;
        }

        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v90, v63, v67, 2300, 1, "Failed to load a lazy datalist in TSTTableDataStore: %@ in table: %@ with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", self, v72, v110, v108, v107, v91, v105, v21);

        TSUCrashBreakpoint();
      }

      else
      {
        TSUSetCrashReporterInfo();
        v26 = MEMORY[0x277D81150];
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTTableDataStore _loadDatalist:forLazyReference:completionBlock:]", v28, v29, "[TSTTableDataStore _loadDatalist:forLazyReference:completionBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", 2295);
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v32, v33);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v35, v30, v34, 2295, 1, "Datalist reference is unexpectedly nil during load!");

        TSUCrashBreakpoint();
      }

      abort();
    }

LABEL_9:
    objc_sync_exit(v11);

    v10 = *datalist;
  }

  v24 = v10;

  return v10;
}

- (BOOL)repairStyleDatalistStylesheetIfNecessary
{
  v2 = sub_22170A75C(self);
  v7 = objc_msgSend_repairStyleDatalistStylesheetIfNecessary(v2, v3, v4, v5, v6);

  return v7;
}

- (id)p_makeALazyDatalistOfType:(int)type isNewForBNC:(BOOL)c
{
  cCopy = c;
  v5 = *&type;
  v7 = [TSTTableDataList alloc];
  v12 = objc_msgSend_owner(self, v8, v9, v10, v11);
  v17 = objc_msgSend_context(v12, v13, v14, v15, v16);
  v20 = objc_msgSend_initWithType_context_(v7, v18, v5, v17, v19);

  objc_msgSend_setIsNewForBraveNewCell_(v20, v21, cCopy, v22, v23);
  v24 = objc_alloc(MEMORY[0x277D80868]);
  v28 = objc_msgSend_initWithObject_(v24, v25, v20, v26, v27);
  objc_msgSend_setKeepObjectInMemory_(v28, v29, 1, v30, v31);

  return v28;
}

- (id)i_formatForDataListKey:(unsigned int)key
{
  v5 = *&key;
  formatDataList = self->_formatDataList;
  if (!formatDataList)
  {
    formatDataList = sub_22170A948(self, a2);
  }

  return objc_msgSend_cellFormatForKey_(formatDataList, a2, v5, v3, v4);
}

- (id)i_textStyleHandleForDataListKey:(unsigned int)key
{
  v3 = *&key;
  objc_opt_class();
  styleDataList = self->_styleDataList;
  v9 = styleDataList;
  if (!styleDataList)
  {
    v9 = sub_22170A75C(self);
  }

  v10 = objc_msgSend_styleForKey_(v9, v5, v3, v6, v7);
  v11 = TSUCheckedDynamicCast();
  v15 = objc_msgSend_handleForTextStyle_(TSTTextStyleHandle, v12, v11, v13, v14);

  if (!styleDataList)
  {
  }

  return v15;
}

- (id)i_cellStyleHandleForDataListKey:(unsigned int)key
{
  v3 = *&key;
  objc_opt_class();
  styleDataList = self->_styleDataList;
  v9 = styleDataList;
  if (!styleDataList)
  {
    v9 = sub_22170A75C(self);
  }

  v10 = objc_msgSend_styleForKey_(v9, v5, v3, v6, v7);
  v11 = TSUCheckedDynamicCast();
  v15 = objc_msgSend_handleForCellStyle_(TSTCellStyleHandle, v12, v11, v13, v14);

  if (!styleDataList)
  {
  }

  return v15;
}

- (id)i_stringForDataListKey:(unsigned int)key outShouldWrap:(BOOL *)wrap outIsShared:(BOOL *)shared
{
  v7 = *&key;
  stringDataList = self->_stringDataList;
  if (!stringDataList)
  {
    stringDataList = sub_22170A8F4(self);
  }

  return objc_msgSend_stringForKey_outShouldWrap_outIsShared_(stringDataList, a2, v7, wrap, shared);
}

- (void)resetAllColumnRowSizes
{
  v6 = objc_msgSend_populatedIndexes(self->_columnHeaderStorage, a2, v2, v3, v4);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2216A54D4;
  v19[3] = &unk_27845E958;
  v19[4] = self;
  objc_msgSend_enumerateIndexesUsingBlock_(v6, v7, v19, v8, v9);

  v14 = objc_msgSend_populatedIndexes(self->_rowHeaderStorage, v10, v11, v12, v13);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2216A54F0;
  v18[3] = &unk_27845E958;
  v18[4] = self;
  objc_msgSend_enumerateIndexesUsingBlock_(v14, v15, v18, v16, v17);
}

- (void)resetAlmostEverything
{
  objc_msgSend_willModify(self, a2, v2, v3, v4);
  objc_msgSend_willModify(self->_tileStorage, v6, v7, v8, v9);
  v10 = sub_22170A8F4(self);
  objc_msgSend_willModify(v10, v11, v12, v13, v14);

  v15 = sub_22170A75C(self);
  objc_msgSend_willModify(v15, v16, v17, v18, v19);

  v20 = sub_22170A84C(self);
  objc_msgSend_willModify(v20, v21, v22, v23, v24);

  v26 = sub_22170A948(self, v25);
  objc_msgSend_willModify(v26, v27, v28, v29, v30);

  v31 = sub_22170A990(self);
  objc_msgSend_willModify(v31, v32, v33, v34, v35);

  v37 = sub_22170AA38(self, v36);
  objc_msgSend_willModify(v37, v38, v39, v40, v41);

  v42 = sub_22170A7F8(self);
  objc_msgSend_willModify(v42, v43, v44, v45, v46);

  v48 = sub_22170A7B0(self, v47);
  objc_msgSend_willModify(v48, v49, v50, v51, v52);

  v53 = sub_22170A8A0(self);
  objc_msgSend_willModify(v53, v54, v55, v56, v57);

  v58 = sub_22170A9E4(self);
  objc_msgSend_willModify(v58, v59, v60, v61, v62);

  v67 = objc_msgSend_multipleChoiceListFormatDataList(self, v63, v64, v65, v66);
  objc_msgSend_willModify(v67, v68, v69, v70, v71);

  v72 = sub_22170AA80(self);
  objc_msgSend_willModify(v72, v73, v74, v75, v76);

  self->_cellCount = 0;
  self->_cellCountValid = 1;
  shouldUseWideRows = objc_msgSend_shouldUseWideRows(self->_tileStorage, v77, v78, v79, v80);
  v82 = [TSTTableTileStorage alloc];
  v87 = objc_msgSend_owner(self, v83, v84, v85, v86);
  v91 = objc_msgSend_initWithOwner_(v82, v88, v87, v89, v90);
  tileStorage = self->_tileStorage;
  self->_tileStorage = v91;

  objc_msgSend_setShouldUseWideRows_(self->_tileStorage, v93, shouldUseWideRows, v94, v95);
  styleDataList = self->_styleDataList;
  self->_styleDataList = 0;

  conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
  self->_conditionalStyleSetDataList = 0;

  stringDataList = self->_stringDataList;
  self->_stringDataList = 0;

  formulaDataList = self->_formulaDataList;
  self->_formulaDataList = 0;

  controlCellSpecDataList = self->_controlCellSpecDataList;
  self->_controlCellSpecDataList = 0;

  formulaErrorDataList = self->_formulaErrorDataList;
  self->_formulaErrorDataList = 0;

  richTextDataList = self->_richTextDataList;
  self->_richTextDataList = 0;

  formatDataList = self->_formatDataList;
  self->_formatDataList = 0;

  commentStorageDataList = self->_commentStorageDataList;
  self->_commentStorageDataList = 0;

  importWarningSetDataList = self->_importWarningSetDataList;
  self->_importWarningSetDataList = 0;

  preBNCFormatDataList = self->_preBNCFormatDataList;
  self->_preBNCFormatDataList = 0;

  v110 = objc_msgSend_p_makeALazyDatalistOfType_(self, v107, 1, v108, v109);
  stringTableReference = self->_stringTableReference;
  self->_stringTableReference = v110;

  v115 = objc_msgSend_p_makeALazyDatalistOfType_(self, v112, 4, v113, v114);
  styleTableReference = self->_styleTableReference;
  self->_styleTableReference = v115;

  v120 = objc_msgSend_p_makeALazyDatalistOfType_(self, v117, 9, v118, v119);
  conditionalStyleSetTableReference = self->_conditionalStyleSetTableReference;
  self->_conditionalStyleSetTableReference = v120;

  v124 = objc_msgSend_p_makeALazyDatalistOfType_isNewForBNC_(self, v122, 2, 1, v123);
  formatTableReference = self->_formatTableReference;
  self->_formatTableReference = v124;

  v129 = objc_msgSend_p_makeALazyDatalistOfType_(self, v126, 3, v127, v128);
  formulaTableReference = self->_formulaTableReference;
  self->_formulaTableReference = v129;

  v133 = objc_msgSend_p_makeALazyDatalistOfType_isNewForBNC_(self, v131, 12, 1, v132);
  controlCellSpecTableReference = self->_controlCellSpecTableReference;
  self->_controlCellSpecTableReference = v133;

  v138 = objc_msgSend_p_makeALazyDatalistOfType_(self, v135, 5, v136, v137);
  formulaErrorTableReference = self->_formulaErrorTableReference;
  self->_formulaErrorTableReference = v138;

  v143 = objc_msgSend_p_makeALazyDatalistOfType_(self, v140, 8, v141, v142);
  richTextTableReference = self->_richTextTableReference;
  self->_richTextTableReference = v143;

  v148 = objc_msgSend_p_makeALazyDatalistOfType_(self, v145, 10, v146, v147);
  commentStorageTableReference = self->_commentStorageTableReference;
  self->_commentStorageTableReference = v148;

  v153 = objc_msgSend_p_makeALazyDatalistOfType_(self, v150, 11, v151, v152);
  importWarningSetTableReference = self->_importWarningSetTableReference;
  self->_importWarningSetTableReference = v153;

  v155 = [TSTTableDataList alloc];
  v160 = objc_msgSend_owner(self, v156, v157, v158, v159);
  v165 = objc_msgSend_context(v160, v161, v162, v163, v164);
  v168 = objc_msgSend_initWithType_context_(v155, v166, 7, v165, v167);
  multipleChoiceListFormatDataList = self->_multipleChoiceListFormatDataList;
  self->_multipleChoiceListFormatDataList = v168;

  v173 = objc_msgSend_p_makeALazyDatalistOfType_(self, v170, 2, v171, v172);
  preBNCFormatTableReference = self->_preBNCFormatTableReference;
  self->_preBNCFormatTableReference = v173;

  objc_msgSend_resetAllCellCounts(self->_rowHeaderStorage, v175, v176, v177, v178);
  columnHeaderStorage = self->_columnHeaderStorage;

  objc_msgSend_resetAllCellCounts(columnHeaderStorage, v179, v180, v181, v182);
}

- (id)addPasteboardCustomFormatsToDocumentAndTableReturningBadIDs
{
  if (objc_msgSend_mightHaveCustomFormats(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_documentRoot(self, v6, v7, v8, v9);
    v15 = objc_msgSend_customFormatList(v10, v11, v12, v13, v14);

    v21 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v16, v17, v18, v19);
    formatDataList = self->_formatDataList;
    v23 = formatDataList;
    if (!formatDataList)
    {
      v23 = sub_22170A948(self, v20);
    }

    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = sub_2216A5BCC;
    v37 = &unk_2784685C8;
    v24 = v15;
    v38 = v24;
    v25 = v21;
    v39 = v25;
    objc_msgSend_replaceFormatsUsingBlock_(v23, v26, &v34, v27, v28);
    if (!formatDataList)
    {
    }

    if (!objc_msgSend_count(v25, v29, v30, v31, v32, v34, v35, v36, v37))
    {

      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)cellMapForRepairingPasteboardCustomFormats:(id)formats
{
  formatsCopy = formats;
  if (objc_msgSend_mightHaveCustomFormats(self, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_owner(self, v9, v10, v11, v12);
    v18 = objc_msgSend_context(v13, v14, v15, v16, v17);
    v22 = objc_msgSend_cellMapWithContext_(TSTCellMap, v19, v18, v20, v21);

    v23 = [TSTCell alloc];
    v28 = objc_msgSend_documentRoot(self, v24, v25, v26, v27);
    v33 = objc_msgSend_documentLocale(v28, v29, v30, v31, v32);
    v37 = objc_msgSend_initWithLocale_(v23, v34, v33, v35, v36);

    v46 = MEMORY[0x277D85DD0];
    v47 = 3221225472;
    v48 = sub_2216A6048;
    v49 = &unk_2784685F0;
    v38 = v37;
    v50 = v38;
    selfCopy = self;
    v52 = formatsCopy;
    v39 = v22;
    v53 = v39;
    objc_msgSend_enumerateCellStoragesInRange_withBlock_(self, v40, 0, 0xF4240000003E8, &v46);
    if (!objc_msgSend_count(v39, v41, v42, v43, v44, v46, v47, v48, v49))
    {

      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (BOOL)mightHaveCustomFormats
{
  formatDataList = self->_formatDataList;
  v6 = formatDataList;
  if (!formatDataList)
  {
    v6 = sub_22170A948(self, a2);
  }

  HaveCustomFormats = objc_msgSend_mightHaveCustomFormats(v6, a2, v2, v3, v4);
  if (!formatDataList)
  {
  }

  return HaveCustomFormats;
}

- (id)mapReassigningPasteboardCustomFormatKeys:(id)keys
{
  keysCopy = keys;
  if (objc_msgSend_mightHaveCustomFormats(self, v5, v6, v7, v8))
  {
    v10 = sub_22170A948(self, v9);
    v14 = objc_msgSend_reassignCustomFormatUIDForPaste_(v10, v11, keysCopy, v12, v13);

    keysCopy = v14;
  }

  return keysCopy;
}

- (void)replaceFormulasUsingBlock:(id)block
{
  blockCopy = block;
  formulaDataList = self->_formulaDataList;
  v9 = formulaDataList;
  v10 = blockCopy;
  if (!formulaDataList)
  {
    v9 = sub_22170A990(self);
    blockCopy = v10;
  }

  objc_msgSend_replaceFormulasUsingBlock_(v9, v4, blockCopy, v6, v7);
  if (!formulaDataList)
  {
  }
}

- (void)replaceConditionalStyleSetsUsingBlock:(id)block
{
  blockCopy = block;
  conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
  v9 = conditionalStyleSetDataList;
  v10 = blockCopy;
  if (!conditionalStyleSetDataList)
  {
    v9 = sub_22170A84C(self);
    blockCopy = v10;
  }

  objc_msgSend_replaceConditionalStyleSetsUsingBlock_(v9, v4, blockCopy, v6, v7);
  if (!conditionalStyleSetDataList)
  {
  }
}

- (void)replaceCommentStoragesUsingBlock:(id)block
{
  blockCopy = block;
  v4 = sub_22170A8A0(self);
  objc_msgSend_replaceCommentStoragesUsingBlock_(v4, v5, blockCopy, v6, v7);
}

- (TSTTableDataStore)initWithOwner:(id)owner
{
  ownerCopy = owner;
  v94.receiver = self;
  v94.super_class = TSTTableDataStore;
  v5 = [(TSTTableDataStore *)&v94 initWithOwner:ownerCopy];
  v6 = v5;
  if (v5)
  {
    v5->_storageVersionPreBNC = 4;
    v5->_cellCount = 0;
    v5->_cellCountValid = 1;
    v7 = [TSTTableHeaderStorage alloc];
    v11 = objc_msgSend_initWithOwner_(v7, v8, ownerCopy, v9, v10);
    rowHeaderStorage = v6->_rowHeaderStorage;
    v6->_rowHeaderStorage = v11;

    v13 = [TSTTableHeaderStorage alloc];
    v17 = objc_msgSend_initWithOwner_(v13, v14, ownerCopy, v15, v16);
    columnHeaderStorage = v6->_columnHeaderStorage;
    v6->_columnHeaderStorage = v17;

    v19 = [TSTTableTileStorage alloc];
    v23 = objc_msgSend_initWithOwner_(v19, v20, ownerCopy, v21, v22);
    tileStorage = v6->_tileStorage;
    v6->_tileStorage = v23;

    v28 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v25, 1, v26, v27);
    stringTableReference = v6->_stringTableReference;
    v6->_stringTableReference = v28;

    v33 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v30, 4, v31, v32);
    styleTableReference = v6->_styleTableReference;
    v6->_styleTableReference = v33;

    v38 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v35, 9, v36, v37);
    conditionalStyleSetTableReference = v6->_conditionalStyleSetTableReference;
    v6->_conditionalStyleSetTableReference = v38;

    v42 = objc_msgSend_p_makeALazyDatalistOfType_isNewForBNC_(v6, v40, 2, 1, v41);
    formatTableReference = v6->_formatTableReference;
    v6->_formatTableReference = v42;

    v47 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v44, 3, v45, v46);
    formulaTableReference = v6->_formulaTableReference;
    v6->_formulaTableReference = v47;

    v51 = objc_msgSend_p_makeALazyDatalistOfType_isNewForBNC_(v6, v49, 12, 1, v50);
    controlCellSpecTableReference = v6->_controlCellSpecTableReference;
    v6->_controlCellSpecTableReference = v51;

    v56 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v53, 5, v54, v55);
    formulaErrorTableReference = v6->_formulaErrorTableReference;
    v6->_formulaErrorTableReference = v56;

    v61 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v58, 8, v59, v60);
    richTextTableReference = v6->_richTextTableReference;
    v6->_richTextTableReference = v61;

    v66 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v63, 10, v64, v65);
    commentStorageTableReference = v6->_commentStorageTableReference;
    v6->_commentStorageTableReference = v66;

    v71 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v68, 11, v69, v70);
    importWarningSetTableReference = v6->_importWarningSetTableReference;
    v6->_importWarningSetTableReference = v71;

    v73 = [TSTTableDataList alloc];
    v78 = objc_msgSend_owner(v6, v74, v75, v76, v77);
    v83 = objc_msgSend_context(v78, v79, v80, v81, v82);
    v86 = objc_msgSend_initWithType_context_(v73, v84, 7, v83, v85);
    multipleChoiceListFormatDataList = v6->_multipleChoiceListFormatDataList;
    v6->_multipleChoiceListFormatDataList = v86;

    v91 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v88, 2, v89, v90);
    preBNCFormatTableReference = v6->_preBNCFormatTableReference;
    v6->_preBNCFormatTableReference = v91;
  }

  return v6;
}

- (TSTTableDataStore)initWithArchive:(const void *)archive unarchiver:(id)unarchiver owner:(id)owner
{
  unarchiverCopy = unarchiver;
  ownerCopy = owner;
  v244.receiver = self;
  v244.super_class = TSTTableDataStore;
  v14 = [(TSTTableDataStore *)&v244 initWithOwner:ownerCopy];
  if (v14)
  {
    v15 = objc_msgSend_fileFormatVersion(unarchiverCopy, v10, v11, v12, v13);
    v16 = *(archive + 4);
    v241[0] = MEMORY[0x277D85DD0];
    v241[1] = 3221225472;
    v241[2] = sub_2216A754C;
    v241[3] = &unk_278468618;
    v17 = v14;
    v242 = v17;
    v18 = ownerCopy;
    v243 = v18;
    v19 = unarchiverCopy;
    v21 = objc_opt_class();
    if (v16)
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v19, v20, v16, v21, 0, v241);
    }

    else
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v19, v20, MEMORY[0x277D80A18], v21, 0, v241);
    }

    v22 = [TSTTableHeaderStorage alloc];
    if (*(archive + 3))
    {
      v24 = objc_msgSend_initFromArchive_unarchiver_owner_(v22, v23, *(archive + 3), v19, v18);
    }

    else
    {
      v24 = objc_msgSend_initFromArchive_unarchiver_owner_(v22, v23, &TST::_HeaderStorage_default_instance_, v19, v18);
    }

    rowHeaderStorage = v17->_rowHeaderStorage;
    v17->_rowHeaderStorage = v24;

    if ((*(archive + 16) & 4) != 0)
    {
      v31 = [TSTTableTileStorage alloc];
      if (*(archive + 5))
      {
        v33 = *(archive + 5);
      }

      else
      {
        v33 = &TST::_TileStorage_default_instance_;
      }

      if (*(archive + 9))
      {
        TileID_unarchiver_owner = objc_msgSend_initWithStorageArchive_treeArchive_nextTileID_unarchiver_owner_(v31, v32, v33, *(archive + 9), *(archive + 44), v19, v18);
      }

      else
      {
        TileID_unarchiver_owner = objc_msgSend_initWithStorageArchive_treeArchive_nextTileID_unarchiver_owner_(v31, v32, v33, &TST::_TableRBTree_default_instance_, *(archive + 44), v19, v18);
      }
    }

    else
    {
      v26 = [TSTTableTileStorage alloc];
      TileID_unarchiver_owner = objc_msgSend_initWithOwner_(v26, v27, v18, v28, v29);
    }

    v205 = v14;
    v206 = v15;
    tileStorage = v17->_tileStorage;
    v17->_tileStorage = TileID_unarchiver_owner;

    v207 = objc_msgSend_archivingCompatibilityVersion(v17->_tileStorage, v35, v36, v37, v38);
    v39 = *(archive + 6);
    v239[0] = MEMORY[0x277D85DD0];
    v239[1] = 3221225472;
    v239[2] = sub_2216A75D4;
    v239[3] = &unk_278468640;
    v40 = v17;
    v240 = v40;
    v41 = v19;
    v43 = objc_opt_class();
    if (v39)
    {
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v41, v42, v39, v43, 0, v239);
    }

    else
    {
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v41, v42, MEMORY[0x277D80A18], v43, 0, v239);
    }

    if ((*(archive + 16) & 0x10) != 0)
    {
      v53 = *(archive + 7);
      v237[0] = MEMORY[0x277D85DD0];
      v237[1] = 3221225472;
      v237[2] = sub_2216A7638;
      v237[3] = &unk_278468640;
      v238 = v40;
      v54 = v41;
      v55 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v54, v56, v53, v55, 0, v237);

      styleTableReference = v238;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(v18, v44, v45, v46, v47);
      v51 = objc_msgSend_p_makeALazyDatalistOfType_(v40, v48, 4, v49, v50);
      styleTableReference = v40->_styleTableReference;
      v40->_styleTableReference = v51;
    }

    if ((*(archive + 18) & 4) != 0)
    {
      v61 = *(archive + 21);
      v235[0] = MEMORY[0x277D85DD0];
      v235[1] = 3221225472;
      v235[2] = sub_2216A769C;
      v235[3] = &unk_278468640;
      v236 = v40;
      v62 = v41;
      v63 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v62, v64, v61, v63, 0, v235);

      formatTableReference = v236;
    }

    else
    {
      v40->_missingPostBNCDatalists = 1;
      v59 = objc_msgSend_p_makeALazyDatalistOfType_isNewForBNC_(v40, v57, 2, 1, v58);
      formatTableReference = v40->_formatTableReference;
      v40->_formatTableReference = v59;
    }

    v65 = *(archive + 8);
    v233[0] = MEMORY[0x277D85DD0];
    v233[1] = 3221225472;
    v233[2] = sub_2216A7700;
    v233[3] = &unk_278468640;
    v66 = v40;
    v234 = v66;
    v67 = v41;
    v69 = objc_opt_class();
    if (v65)
    {
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v67, v68, v65, v69, 0, v233);
    }

    else
    {
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v67, v68, MEMORY[0x277D80A18], v69, 0, v233);
    }

    if ((*(archive + 18) & 2) != 0)
    {
      v74 = *(archive + 20);
      v231[0] = MEMORY[0x277D85DD0];
      v231[1] = 3221225472;
      v231[2] = sub_2216A7764;
      v231[3] = &unk_278468640;
      v232 = v66;
      v75 = v67;
      v76 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v75, v77, v74, v76, 0, v231);

      controlCellSpecTableReference = v232;
    }

    else
    {
      v66->_missingPostBNCDatalists = 1;
      v72 = objc_msgSend_p_makeALazyDatalistOfType_isNewForBNC_(v66, v70, 12, 1, v71);
      controlCellSpecTableReference = v66->_controlCellSpecTableReference;
      v66->_controlCellSpecTableReference = v72;
    }

    v82 = *(archive + 4);
    if ((v82 & 0x400) != 0)
    {
      v83 = *(archive + 13);
      v229[0] = MEMORY[0x277D85DD0];
      v229[1] = 3221225472;
      v229[2] = sub_2216A77C8;
      v229[3] = &unk_278468668;
      v230 = v66;
      v84 = v67;
      v85 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v84, v86, v83, v85, 0, v229);

      v82 = *(archive + 4);
    }

    if ((v82 & 0x200) != 0)
    {
      v92 = *(archive + 12);
      v227[0] = MEMORY[0x277D85DD0];
      v227[1] = 3221225472;
      v227[2] = sub_2216A7854;
      v227[3] = &unk_278468640;
      v228 = v66;
      v93 = v67;
      v94 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v93, v95, v92, v94, 0, v227);

      formulaErrorTableReference = v228;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(v18, v78, v79, v80, v81);
      v90 = objc_msgSend_p_makeALazyDatalistOfType_(v66, v87, 5, v88, v89);
      formulaErrorTableReference = v66->_formulaErrorTableReference;
      v66->_formulaErrorTableReference = v90;
    }

    if ((*(archive + 17) & 0x20) != 0)
    {
      v105 = *(archive + 16);
      v225[0] = MEMORY[0x277D85DD0];
      v225[1] = 3221225472;
      v225[2] = sub_2216A78B8;
      v225[3] = &unk_278468640;
      v226 = v66;
      v106 = v67;
      v107 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v106, v108, v105, v107, 0, v225);

      richTextTableReference = v226;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(v18, v96, v97, v98, v99);
      v103 = objc_msgSend_p_makeALazyDatalistOfType_(v66, v100, 8, v101, v102);
      richTextTableReference = v66->_richTextTableReference;
      v66->_richTextTableReference = v103;
    }

    if ((*(archive + 17) & 0x80) != 0)
    {
      v118 = *(archive + 18);
      v223[0] = MEMORY[0x277D85DD0];
      v223[1] = 3221225472;
      v223[2] = sub_2216A791C;
      v223[3] = &unk_278468640;
      v224 = v66;
      v119 = v67;
      v120 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v119, v121, v118, v120, 0, v223);

      commentStorageTableReference = v224;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(v18, v109, v110, v111, v112);
      v116 = objc_msgSend_p_makeALazyDatalistOfType_(v66, v113, 10, v114, v115);
      commentStorageTableReference = v66->_commentStorageTableReference;
      v66->_commentStorageTableReference = v116;
    }

    if (*(archive + 18))
    {
      v131 = *(archive + 19);
      v221[0] = MEMORY[0x277D85DD0];
      v221[1] = 3221225472;
      v221[2] = sub_2216A7980;
      v221[3] = &unk_278468640;
      v222 = v66;
      v132 = v67;
      v133 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v132, v134, v131, v133, 0, v221);

      importWarningSetTableReference = v222;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(v18, v122, v123, v124, v125);
      v129 = objc_msgSend_p_makeALazyDatalistOfType_(v66, v126, 11, v127, v128);
      importWarningSetTableReference = v66->_importWarningSetTableReference;
      v66->_importWarningSetTableReference = v129;
    }

    if ((*(archive + 17) & 0x40) != 0)
    {
      v144 = *(archive + 17);
      v219[0] = MEMORY[0x277D85DD0];
      v219[1] = 3221225472;
      v219[2] = sub_2216A79E4;
      v219[3] = &unk_278468640;
      v220 = v66;
      v145 = v67;
      v146 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v145, v147, v144, v146, 0, v219);

      conditionalStyleSetTableReference = v220;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(v18, v135, v136, v137, v138);
      v142 = objc_msgSend_p_makeALazyDatalistOfType_(v66, v139, 9, v140, v141);
      conditionalStyleSetTableReference = v66->_conditionalStyleSetTableReference;
      v66->_conditionalStyleSetTableReference = v142;
    }

    if (v207 <= 0xA000000000002)
    {
      v209 = unarchiverCopy;
      v157 = *(archive + 11);
      v217[0] = MEMORY[0x277D85DD0];
      v217[1] = 3221225472;
      v217[2] = sub_2216A7A48;
      v217[3] = &unk_278468640;
      v158 = v66;
      v218 = v158;
      v159 = v67;
      v161 = objc_opt_class();
      if (v157)
      {
        objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v159, v160, v157, v161, 0, v217);
      }

      else
      {
        objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v159, v160, MEMORY[0x277D80A18], v161, 0, v217);
      }

      if ((*(archive + 17) & 0x10) != 0)
      {
        v196 = *(archive + 15);
        v215[0] = MEMORY[0x277D85DD0];
        v215[1] = 3221225472;
        v215[2] = sub_2216A7A5C;
        v215[3] = &unk_2784685A0;
        v216 = v158;
        v197 = v159;
        unarchiverCopy = v209;
        v198 = objc_opt_class();
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v197, v199, v196, v198, 0, v215);

        v171 = v216;
      }

      else
      {
        unarchiverCopy = v209;
        objc_msgSend_willModifyForUpgrade(v18, v162, v163, v164, v165);
        v166 = [TSTTableDataList alloc];
        v171 = objc_msgSend_context(v18, v167, v168, v169, v170);
        v174 = objc_msgSend_initWithType_context_(v166, v172, 7, v171, v173);
        multipleChoiceListFormatDataList = v158->_multipleChoiceListFormatDataList;
        v158->_multipleChoiceListFormatDataList = v174;
      }

      v156 = v218;
    }

    else if ((*(archive + 17) & 0x10) != 0)
    {
      objc_msgSend_willModifyForUpgrade(v18, v148, v149, v150, v151);
      preBNCFormatDataList = v66->_preBNCFormatDataList;
      v66->_preBNCFormatDataList = 0;

      v180 = objc_msgSend_p_makeALazyDatalistOfType_(v66, v177, 2, v178, v179);
      preBNCFormatTableReference = v66->_preBNCFormatTableReference;
      v66->_preBNCFormatTableReference = v180;

      v182 = [TSTTableDataList alloc];
      v156 = objc_msgSend_owner(v66, v183, v184, v185, v186);
      v191 = objc_msgSend_context(v156, v187, v188, v189, v190);
      v194 = objc_msgSend_initWithType_context_(v182, v192, 7, v191, v193);
      v195 = v66->_multipleChoiceListFormatDataList;
      v66->_multipleChoiceListFormatDataList = v194;
    }

    else
    {
      v208 = unarchiverCopy;
      v152 = *(archive + 11);
      v213[0] = MEMORY[0x277D85DD0];
      v213[1] = 3221225472;
      v213[2] = sub_2216A7A70;
      v213[3] = &unk_278468640;
      v214 = v66;
      v153 = v67;
      v155 = objc_opt_class();
      if (v152)
      {
        objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v153, v154, v152, v155, 0, v213);
      }

      else
      {
        objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v153, v154, MEMORY[0x277D80A18], v155, 0, v213);
      }

      v156 = v214;
      unarchiverCopy = v208;
    }

    v66->_cellCount = 0;
    v66->_cellCountValid = 0;
    if ((*(archive + 4) & 0x200000) != 0)
    {
      v200 = *(archive + 184);
    }

    else
    {
      v200 = 4;
    }

    v66->_storageVersionPreBNC = v200;
    v210[0] = MEMORY[0x277D85DD0];
    v210[1] = 3221225472;
    v210[2] = sub_2216A7A84;
    v210[3] = &unk_278461DA8;
    v212 = v206;
    v211 = v66;
    objc_msgSend_addFinalizeHandler_(v67, v201, v210, v202, v203);

    v14 = v205;
  }

  return v14;
}

- (BOOL)_needToUpgradeCellStorage
{
  if (self->_missingPostBNCDatalists)
  {
    return 1;
  }

  else
  {
    return (MEMORY[0x2821F9670])(self->_tileStorage, sel_needToUpgradeCellStorage);
  }
}

- (void)upgradeDataStoreCellStorageIfNeededWithTableUID:(const TSKUIDStruct *)d conditionalStyleOwner:(id)owner fileFormatVersion:(unint64_t)version
{
  ownerCopy = owner;
  if (objc_msgSend__needToUpgradeCellStorage(self, v9, v10, v11, v12))
  {
    objc_msgSend_willModifyForUpgrade(self, v13, v14, v15, v16);
    v21 = objc_msgSend_documentRoot(self, v17, v18, v19, v20);
    v26 = objc_msgSend_calculationEngine(v21, v22, v23, v24, v25);

    v31 = objc_msgSend_upgradingFormulasMinion(v26, v27, v28, v29, v30);
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v26;
    }

    v34 = v33;

    v43 = objc_msgSend_upgradeRepairedTiles(self->_tileStorage, v35, v36, v37, v38);
    if (v43)
    {
      objc_msgSend_removeAllFormulasFromOwner_(v34, v39, d, v41, v42);
      v57[0] = objc_msgSend_ownerUID(ownerCopy, v44, v45, v46, v47);
      v57[1] = v48;
      objc_msgSend_removeAllFormulasFromOwner_(v34, v48, v57, v49, v50);
    }

    v51 = objc_msgSend_p_cellMapForUpgradingToBraveNewCell(self, v39, v40, v41, v42);
    objc_msgSend_resetAlmostEverything(self, v52, v53, v54, v55);
    objc_msgSend_setCellMap_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormulas_skipDirtyingNonFormulaCells_doRichTextDOLC_(self, v56, v51, d, v34, ownerCopy, v43 ^ 1u, 1, 1);
    self->_storageVersionPreBNC = 4;
    self->_missingPostBNCDatalists = 0;
  }

  else if (version <= 0x3000200000009)
  {
    objc_msgSend_purgePreBNCData(self->_tileStorage, v13, v14, v15, v16);
  }
}

- (id)p_cellMapForUpgradingToBraveNewCell
{
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = sub_2216A140C;
  v48[4] = sub_2216A141C;
  v49 = objc_alloc_init(MEMORY[0x277D81210]);
  v3 = sub_22170AA80(self);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_2216A7F70;
  v47[3] = &unk_278468690;
  v47[4] = self;
  v47[5] = v48;
  objc_msgSend_enumerateFormatsUsingBlock_(v3, v4, v47, v5, v6);

  v7 = [TSTCell_PreBNC alloc];
  v12 = objc_msgSend_documentRoot(self, v8, v9, v10, v11);
  v17 = objc_msgSend_documentLocale(v12, v13, v14, v15, v16);
  v21 = objc_msgSend_initWithLocale_(v7, v18, v17, v19, v20);

  v26 = objc_msgSend_owner(self, v22, v23, v24, v25);
  v31 = objc_msgSend_context(v26, v27, v28, v29, v30);
  v35 = objc_msgSend_cellMapWithContext_(TSTCellMap, v32, v31, v33, v34);

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_2216A8064;
  v42[3] = &unk_2784686B8;
  v36 = v21;
  v43 = v36;
  selfCopy = self;
  v46 = v48;
  v37 = v35;
  v45 = v37;
  objc_msgSend_p_enumerateCellStoragesRowByRowToMaxID_getPreBNC_withBlock_(self, v38, 0x3E7000F423FLL, 1, v42);
  v39 = v45;
  v40 = v37;

  _Block_object_dispose(v48, 8);

  return v40;
}

- (void)embiggenTableForUpgrade
{
  objc_msgSend_widenTilesForUpgrade(self->_tileStorage, a2, v2, v3, v4);

  objc_msgSend_purgePreBNCDatalists(self, v6, v7, v8, v9);
}

- (void)purgePreBNCDatalists
{
  preBNCFormatDataList = self->_preBNCFormatDataList;
  self->_preBNCFormatDataList = 0;

  v7 = objc_msgSend_p_makeALazyDatalistOfType_(self, v4, 2, v5, v6);
  preBNCFormatTableReference = self->_preBNCFormatTableReference;
  self->_preBNCFormatTableReference = v7;

  v9 = [TSTTableDataList alloc];
  v23 = objc_msgSend_owner(self, v10, v11, v12, v13);
  v18 = objc_msgSend_context(v23, v14, v15, v16, v17);
  v21 = objc_msgSend_initWithType_context_(v9, v19, 7, v18, v20);
  multipleChoiceListFormatDataList = self->_multipleChoiceListFormatDataList;
  self->_multipleChoiceListFormatDataList = v21;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver isInTheDocument:(BOOL)document
{
  archiverCopy = archiver;
  TileID = objc_msgSend_nextTileID(self->_tileStorage, v7, v8, v9, v10);
  v13 = *(archive + 4);
  *(archive + 4) = v13 | 0x80000;
  *(archive + 44) = TileID;
  tileStorage = self->_tileStorage;
  v15 = v13 | 0x80004;
  *(archive + 4) = v15;
  v16 = *(archive + 5);
  if (!v16)
  {
    v17 = *(archive + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = google::protobuf::Arena::CreateMaybeMessage<TST::TileStorage>(v17);
    *(archive + 5) = v16;
    v15 = *(archive + 4);
  }

  *(archive + 4) = v15 | 0x40;
  v18 = *(archive + 9);
  if (!v18)
  {
    v19 = *(archive + 1);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::CreateMaybeMessage<TST::TableRBTree>(v19);
    *(archive + 9) = v18;
  }

  objc_msgSend_saveToStorageArchive_treeArchive_archiver_(tileStorage, v12, v16, v18, archiverCopy);
  v26 = objc_msgSend_firstBucketForArchiving(self->_columnHeaderStorage, v20, v21, v22, v23);
  *(archive + 4) |= 2u;
  v27 = *(archive + 4);
  if (!v27)
  {
    v28 = *(archive + 1);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = MEMORY[0x223DA0390](v28);
    *(archive + 4) = v27;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v24, v26, v27, v25);

  rowHeaderStorage = self->_rowHeaderStorage;
  *(archive + 4) |= 1u;
  v32 = *(archive + 3);
  if (!v32)
  {
    v33 = *(archive + 1);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderStorage>(v33);
    *(archive + 3) = v32;
  }

  objc_msgSend_encodeToArchive_archiver_(rowHeaderStorage, v29, v32, archiverCopy, v30);
  stringTableReference = self->_stringTableReference;
  *(archive + 4) |= 8u;
  v37 = *(archive + 6);
  if (!v37)
  {
    v38 = *(archive + 1);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x223DA0390](v38);
    *(archive + 6) = v37;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v34, stringTableReference, v37, v35);
  styleTableReference = self->_styleTableReference;
  *(archive + 4) |= 0x10u;
  v42 = *(archive + 7);
  if (!v42)
  {
    v43 = *(archive + 1);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = MEMORY[0x223DA0390](v43);
    *(archive + 7) = v42;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v39, styleTableReference, v42, v40);
  formulaTableReference = self->_formulaTableReference;
  *(archive + 4) |= 0x20u;
  v47 = *(archive + 8);
  if (!v47)
  {
    v48 = *(archive + 1);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = MEMORY[0x223DA0390](v48);
    *(archive + 8) = v47;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v44, formulaTableReference, v47, v45);
  formulaErrorTableReference = self->_formulaErrorTableReference;
  *(archive + 4) |= 0x200u;
  v52 = *(archive + 12);
  if (!v52)
  {
    v53 = *(archive + 1);
    if (v53)
    {
      v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
    }

    v52 = MEMORY[0x223DA0390](v53);
    *(archive + 12) = v52;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v49, formulaErrorTableReference, v52, v50);
  richTextTableReference = self->_richTextTableReference;
  *(archive + 4) |= 0x2000u;
  v57 = *(archive + 16);
  if (!v57)
  {
    v58 = *(archive + 1);
    if (v58)
    {
      v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
    }

    v57 = MEMORY[0x223DA0390](v58);
    *(archive + 16) = v57;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v54, richTextTableReference, v57, v55);
  commentStorageTableReference = self->_commentStorageTableReference;
  *(archive + 4) |= 0x8000u;
  v62 = *(archive + 18);
  if (!v62)
  {
    v63 = *(archive + 1);
    if (v63)
    {
      v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
    }

    v62 = MEMORY[0x223DA0390](v63);
    *(archive + 18) = v62;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v59, commentStorageTableReference, v62, v60);
  importWarningSetTableReference = self->_importWarningSetTableReference;
  *(archive + 4) |= 0x10000u;
  v67 = *(archive + 19);
  if (!v67)
  {
    v68 = *(archive + 1);
    if (v68)
    {
      v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
    }

    v67 = MEMORY[0x223DA0390](v68);
    *(archive + 19) = v67;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v64, importWarningSetTableReference, v67, v65);
  conditionalStyleSetTableReference = self->_conditionalStyleSetTableReference;
  *(archive + 4) |= 0x4000u;
  v72 = *(archive + 17);
  if (!v72)
  {
    v73 = *(archive + 1);
    if (v73)
    {
      v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
    }

    v72 = MEMORY[0x223DA0390](v73);
    *(archive + 17) = v72;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v69, conditionalStyleSetTableReference, v72, v70);
  v78 = *(archive + 4);
  *(archive + 46) = self->_storageVersionPreBNC;
  v79 = v78 | 0x200080;
  *(archive + 4) = v78 | 0x200080;
  if (!*(archive + 10))
  {
    v80 = *(archive + 1);
    if (v80)
    {
      v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 10) = google::protobuf::Arena::CreateMaybeMessage<TST::TableRBTree>(v80);
    v79 = *(archive + 4);
  }

  *(archive + 4) = v79 | 0x100000;
  *(archive + 45) = 0;
  v83 = objc_msgSend_archivingCompatibilityVersion(self->_tileStorage, v74, v75, v76, v77);
  preBNCFormatTableReference = self->_preBNCFormatTableReference;
  *(archive + 4) |= 0x100u;
  v85 = *(archive + 11);
  if (!v85)
  {
    v86 = *(archive + 1);
    if (v86)
    {
      v86 = *(v86 & 0xFFFFFFFFFFFFFFFELL);
    }

    v85 = MEMORY[0x223DA0390](v86);
    *(archive + 11) = v85;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v81, preBNCFormatTableReference, v85, v82);
  if (v83 <= 0xA000000000002)
  {
    multipleChoiceListFormatDataList = self->_multipleChoiceListFormatDataList;
    *(archive + 4) |= 0x1000u;
    v90 = *(archive + 15);
    if (!v90)
    {
      v91 = *(archive + 1);
      if (v91)
      {
        v91 = *(v91 & 0xFFFFFFFFFFFFFFFELL);
      }

      v90 = MEMORY[0x223DA0390](v91);
      *(archive + 15) = v90;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v87, multipleChoiceListFormatDataList, v90, v88);
  }

  controlCellSpecTableReference = self->_controlCellSpecTableReference;
  *(archive + 4) |= 0x20000u;
  v93 = *(archive + 20);
  if (!v93)
  {
    v94 = *(archive + 1);
    if (v94)
    {
      v94 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
    }

    v93 = MEMORY[0x223DA0390](v94);
    *(archive + 20) = v93;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v87, controlCellSpecTableReference, v93, v88);
  formatTableReference = self->_formatTableReference;
  *(archive + 4) |= 0x40000u;
  v98 = *(archive + 21);
  if (!v98)
  {
    v99 = *(archive + 1);
    if (v99)
    {
      v99 = *(v99 & 0xFFFFFFFFFFFFFFFELL);
    }

    v98 = MEMORY[0x223DA0390](v99);
    *(archive + 21) = v98;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v95, formatTableReference, v98, v96);
}

- (unint64_t)archivingCompatibilityVersion
{
  v21[3] = *MEMORY[0x277D85DE8];
  rowHeaderStorage = self->_rowHeaderStorage;
  v21[0] = self->_tileStorage;
  v21[1] = rowHeaderStorage;
  v21[2] = self->_columnHeaderStorage;
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v21, 3, v2);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  v11 = 0x300020000000ALL;
  if (v10)
  {
    v12 = *v17;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v17 != v12)
      {
        objc_enumerationMutation(v4);
      }

      v14 = objc_msgSend_archivingCompatibilityVersion(*(*(&v16 + 1) + 8 * v13), v6, v7, v8, v9, v16);
      if (v14 > v11)
      {
        v11 = v14;
      }

      if (v14 >= 0xA000000000003)
      {
        break;
      }

      if (v10 == ++v13)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v16, v20, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v11;
}

- (id)copyWithOwner:(id)owner
{
  ownerCopy = owner;
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithOwner_(v4, v5, ownerCopy, v6, v7);

  return v8;
}

- (BOOL)confirmRefCountsReturningResult:(id *)result
{
  tileStorage = self->_tileStorage;
  if (tileStorage)
  {
    objc_msgSend_makeStorageMap(tileStorage, a2, result, v3, v4);
    v8 = v138;
  }

  else
  {
    v8 = 0;
    v138 = 0;
    v139[0] = 0;
    v139[1] = 0;
  }

  memset(v136, 0, sizeof(v136));
  v137 = 1065353216;
  memset(v134, 0, sizeof(v134));
  v135 = 1065353216;
  memset(v132, 0, sizeof(v132));
  v133 = 1065353216;
  memset(v130, 0, sizeof(v130));
  v131 = 1065353216;
  memset(v128, 0, sizeof(v128));
  v129 = 1065353216;
  memset(v126, 0, sizeof(v126));
  v127 = 1065353216;
  memset(v124, 0, sizeof(v124));
  v125 = 1065353216;
  memset(v122, 0, sizeof(v122));
  v123 = 1065353216;
  memset(v120, 0, sizeof(v120));
  v121 = 1065353216;
  v119 = 1065353216;
  memset(v118, 0, sizeof(v118));
  if (v8 != v139)
  {
    do
    {
      v9 = v8[7];
      v10 = sub_221145078(v9, 0x80, result, v3, v4);
      sub_2216A926C(v136, v10);
      v14 = sub_221145078(v9, 8, v11, v12, v13);
      sub_2216A926C(v134, v14);
      v18 = sub_221145078(v9, 0x20, v15, v16, v17);
      sub_2216A926C(v132, v18);
      v22 = sub_221145078(v9, 0x40, v19, v20, v21);
      sub_2216A926C(v132, v22);
      v26 = sub_221145078(v9, 0x200, v23, v24, v25);
      sub_2216A926C(v130, v26);
      v30 = sub_221145078(v9, 0x400, v27, v28, v29);
      sub_2216A926C(v128, v30);
      v34 = sub_221145078(v9, 0x800, v31, v32, v33);
      sub_2216A926C(v126, v34);
      v38 = sub_221145078(v9, 0x10, v35, v36, v37);
      sub_2216A926C(v124, v38);
      v42 = sub_221145078(v9, 0x2000, v39, v40, v41);
      sub_2216A926C(v122, v42);
      v46 = sub_221145078(v9, 0x4000, v43, v44, v45);
      sub_2216A926C(v122, v46);
      v50 = sub_221145078(v9, 0x8000, v47, v48, v49);
      sub_2216A926C(v122, v50);
      v54 = sub_221145078(v9, 0x10000, v51, v52, v53);
      sub_2216A926C(v122, v54);
      v58 = sub_221145078(v9, 0x20000, v55, v56, v57);
      sub_2216A926C(v122, v58);
      v62 = sub_221145078(v9, 0x40000, v59, v60, v61);
      sub_2216A926C(v122, v62);
      v66 = sub_221145078(v9, 0x80000, v63, v64, v65);
      sub_2216A926C(v120, v66);
      v70 = sub_221145078(v9, 0x100000, v67, v68, v69);
      sub_2216A926C(v118, v70);
      v71 = v8[1];
      if (v71)
      {
        do
        {
          v72 = v71;
          v71 = *v71;
        }

        while (v71);
      }

      else
      {
        do
        {
          v72 = v8[2];
          v73 = *v72 == v8;
          v8 = v72;
        }

        while (!v73);
      }

      v8 = v72;
    }

    while (v72 != v139);
  }

  LODWORD(v114) = 0;
  sub_2216AE0F4(v136, &v114);
  LODWORD(v114) = 0;
  sub_2216AE0F4(v134, &v114);
  LODWORD(v114) = 0;
  sub_2216AE0F4(v132, &v114);
  LODWORD(v114) = 0;
  sub_2216AE0F4(v130, &v114);
  LODWORD(v114) = 0;
  sub_2216AE0F4(v128, &v114);
  LODWORD(v114) = 0;
  sub_2216AE0F4(v126, &v114);
  LODWORD(v114) = 0;
  sub_2216AE0F4(v124, &v114);
  LODWORD(v114) = 0;
  sub_2216AE0F4(v122, &v114);
  LODWORD(v114) = 0;
  sub_2216AE0F4(v120, &v114);
  LODWORD(v114) = 0;
  sub_2216AE0F4(v118, &v114);
  v114 = 0;
  v115 = &v114;
  v116 = 0x2020000000;
  v117 = 0;
  v110 = 0;
  v111 = &v110;
  v112 = 0x2020000000;
  v113 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v77 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v74, &stru_2834BADA0, v75, v76);
  v98 = MEMORY[0x277D85DD0];
  v99 = 3221225472;
  v100 = sub_2216A92FC;
  v101 = &unk_278468708;
  v103 = &v110;
  v78 = v77;
  v102 = v78;
  v104 = &v114;
  v105 = &v106;
  v79 = MEMORY[0x223DA1C10](&v98);
  v80 = sub_22170A84C(self);
  (v79)[2](v79, v80, v136, @"condStyles");

  v81 = sub_22170A8F4(self);
  (v79)[2](v79, v81, v134, @"strings");

  v82 = sub_22170A75C(self);
  (v79)[2](v79, v82, v132, @"styles");

  v83 = sub_22170A990(self);
  (v79)[2](v79, v83, v130, @"cellSpecs");

  v85 = sub_22170AA38(self, v84);
  (v79)[2](v79, v85, v128, @"cellSpecs");

  v86 = sub_22170A7F8(self);
  (v79)[2](v79, v86, v126, @"f-errors");

  v88 = sub_22170A7B0(self, v87);
  (v79)[2](v79, v88, v124, @"rich text");

  v90 = sub_22170A948(self, v89);
  (v79)[2](v79, v90, v122, @"formats");

  v91 = sub_22170A8A0(self);
  (v79)[2](v79, v91, v120, @"comments");

  v92 = sub_22170A9E4(self);
  (v79)[2](v79, v92, v118, @"imp warns");

  if (result)
  {
    *result = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v93, @"DataList RefCount Audit good:%d bad:%d dead:%d\n%@", v94, v95, *(v115 + 6), *(v111 + 6), *(v107 + 6), v78, v98, v99, v100, v101);
  }

  v96 = *(v111 + 6) == 0;

  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v110, 8);
  _Block_object_dispose(&v114, 8);
  sub_2210BDEC0(v118);
  sub_2210BDEC0(v120);
  sub_2210BDEC0(v122);
  sub_2210BDEC0(v124);
  sub_2210BDEC0(v126);
  sub_2210BDEC0(v128);
  sub_2210BDEC0(v130);
  sub_2210BDEC0(v132);
  sub_2210BDEC0(v134);
  sub_2210BDEC0(v136);
  sub_2210BC9F8(&v138, v139[0]);
  return v96;
}

- (BOOL)auditDatalistDuplicationReturningResult:(id *)result
{
  v7 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, @"Datalist Duplication Audit\n", v3, v4);
  v8 = sub_22170A84C(self);
  hasDuplicatedElements = objc_msgSend_hasDuplicatedElements(v8, v9, v10, v11, v12);

  if (hasDuplicatedElements)
  {
    objc_msgSend_appendString_(v7, v14, @"Conditional Styles list has dupes.\n", v15, v16);
  }

  v17 = sub_22170A8F4(self);
  v22 = objc_msgSend_hasDuplicatedElements(v17, v18, v19, v20, v21);

  if (v22)
  {
    objc_msgSend_appendString_(v7, v23, @"Strings List has dupes.\n", v24, v25);
  }

  v26 = sub_22170A75C(self);
  v31 = objc_msgSend_hasDuplicatedElements(v26, v27, v28, v29, v30);

  if (v31)
  {
    objc_msgSend_appendString_(v7, v32, @"Styles List has dupes.\n", v33, v34);
  }

  v35 = sub_22170A990(self);
  v40 = objc_msgSend_hasDuplicatedElements(v35, v36, v37, v38, v39);

  if (v40)
  {
    objc_msgSend_appendString_(v7, v41, @"Formula List has dupes.\n", v42, v43);
  }

  v44 = sub_22170AA38(self, v41);
  v49 = objc_msgSend_hasDuplicatedElements(v44, v45, v46, v47, v48);

  if (v49)
  {
    objc_msgSend_appendString_(v7, v50, @"Control Cell Spec List has dupes.\n", v51, v52);
  }

  v53 = sub_22170A948(self, v50);
  v58 = objc_msgSend_hasDuplicatedElements(v53, v54, v55, v56, v57);

  if (v58)
  {
    objc_msgSend_appendString_(v7, v59, @"Format List has dupes.\n", v60, v61);
  }

  v62 = sub_22170A9E4(self);
  v67 = objc_msgSend_hasDuplicatedElements(v62, v63, v64, v65, v66);

  if (v67)
  {
    objc_msgSend_appendString_(v7, v68, @"Import Warnings List has dupes.\n", v69, v70);
  }

  if (result)
  {
    v71 = v7;
    *result = v7;
  }

  return 1;
}

- (BOOL)auditColumnRowCellCountsReturningResult:(id *)result hasUndercounts:(BOOL *)undercounts
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_2216A140C;
  v29 = sub_2216A141C;
  v30 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, @"ColumnRowCellCount Audit\n", undercounts, v4);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = malloc_type_calloc(0x3E8uLL, 8uLL, 0x100004000313F17uLL);
  tileStorage = self->_tileStorage;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2216A99CC;
  v20[3] = &unk_278468730;
  v20[6] = &v25;
  v20[7] = &v21;
  v20[4] = self;
  v20[5] = &v35;
  v20[8] = &v31;
  objc_msgSend_enumerateRowsWithBlock_(tileStorage, v9, v20, v10, v11);
  for (i = 0; i != 1000; ++i)
  {
    v16 = *(v22[3] + 8 * i);
    v17 = objc_msgSend_cellCountAtIndex_(self->_columnHeaderStorage, v12, i, v13, v14);
    if (v17 != v16)
    {
      objc_msgSend_appendFormat_(v26[5], v12, @"Cell count mismatch at column %d: header should have %td, has %td\n", v13, v14, i, v16, v17);
      *(v36 + 24) = 0;
      if (v17 < v16)
      {
        *(v32 + 24) = 1;
      }
    }
  }

  free(v22[3]);
  if (result)
  {
    *result = v26[5];
  }

  if (undercounts)
  {
    *undercounts = *(v32 + 24);
  }

  v18 = *(v36 + 24);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  return v18;
}

- (void)updateDataListsConcurrentlyWithConcurrentCellMap:(id)map clearImportWarnings:(BOOL)warnings
{
  mapCopy = map;
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  commentStorageDataList = self->_commentStorageDataList;
  v56 = mapCopy;
  if (commentStorageDataList)
  {
    v8 = commentStorageDataList;
  }

  else
  {
    v8 = sub_22170A8A0(self);
  }

  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = sub_2216AA400;
  v94[3] = &unk_278468758;
  selfCopy = self;
  v97 = &v98;
  v95 = v8;
  v9 = v8;
  v57 = MEMORY[0x223DA1C10](v94);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
  if (conditionalStyleSetDataList)
  {
    v11 = conditionalStyleSetDataList;
  }

  else
  {
    v11 = sub_22170A84C(self);
  }

  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = sub_2216AA5F8;
  v90[3] = &unk_278468758;
  selfCopy2 = self;
  v93 = &v98;
  v91 = v11;
  v12 = v11;
  v13 = MEMORY[0x223DA1C10](v90);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  controlCellSpecDataList = self->_controlCellSpecDataList;
  if (controlCellSpecDataList)
  {
    v16 = controlCellSpecDataList;
  }

  else
  {
    v16 = sub_22170AA38(self, v14);
  }

  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = sub_2216AA7F0;
  v86[3] = &unk_278468758;
  selfCopy3 = self;
  v89 = &v98;
  v87 = v16;
  v17 = v16;
  v18 = MEMORY[0x223DA1C10](v86);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  formulaDataList = self->_formulaDataList;
  if (formulaDataList)
  {
    v20 = formulaDataList;
  }

  else
  {
    v20 = sub_22170A990(self);
  }

  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = sub_2216AAA70;
  v82[3] = &unk_278468758;
  selfCopy4 = self;
  v85 = &v98;
  v83 = v20;
  v21 = v20;
  v22 = MEMORY[0x223DA1C10](v82);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  formulaErrorDataList = self->_formulaErrorDataList;
  if (formulaErrorDataList)
  {
    v24 = formulaErrorDataList;
  }

  else
  {
    v24 = sub_22170A7F8(self);
  }

  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = sub_2216AACFC;
  v78[3] = &unk_278468758;
  selfCopy5 = self;
  v81 = &v98;
  v79 = v24;
  v25 = v24;
  v26 = MEMORY[0x223DA1C10](v78);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  importWarningSetDataList = self->_importWarningSetDataList;
  if (importWarningSetDataList)
  {
    v28 = importWarningSetDataList;
  }

  else
  {
    v28 = sub_22170A9E4(self);
  }

  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = sub_2216AAEF4;
  v73[3] = &unk_278468780;
  selfCopy6 = self;
  v76 = &v98;
  warningsCopy = warnings;
  v74 = v28;
  v29 = v28;
  v30 = MEMORY[0x223DA1C10](v73);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  richTextDataList = self->_richTextDataList;
  v55 = v22;
  if (richTextDataList)
  {
    v33 = v30;
    v34 = v26;
    v35 = richTextDataList;
  }

  else
  {
    v35 = sub_22170A7B0(self, v31);
    v33 = v30;
    v34 = v26;
  }

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = sub_2216AB0F4;
  v69[3] = &unk_278468758;
  selfCopy7 = self;
  v72 = &v98;
  v70 = v35;
  v36 = v35;
  v37 = MEMORY[0x223DA1C10](v69);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  stringDataList = self->_stringDataList;
  v39 = v18;
  if (stringDataList)
  {
    v40 = v13;
    v41 = stringDataList;
  }

  else
  {
    v41 = sub_22170A8F4(self);
    v40 = v13;
  }

  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = sub_2216AB2EC;
  v65[3] = &unk_278468758;
  selfCopy8 = self;
  v68 = &v98;
  v66 = v41;
  v42 = v41;
  v43 = MEMORY[0x223DA1C10](v65);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  styleDataList = self->_styleDataList;
  if (styleDataList)
  {
    v45 = styleDataList;
  }

  else
  {
    v45 = sub_22170A75C(self);
  }

  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = sub_2216AB590;
  v61[3] = &unk_278468758;
  selfCopy9 = self;
  v64 = &v98;
  v62 = v45;
  v46 = v45;
  v47 = MEMORY[0x223DA1C10](v61);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  formatDataList = self->_formatDataList;
  if (formatDataList)
  {
    v50 = formatDataList;
    v51 = v57;
  }

  else
  {
    v51 = v57;
    v50 = sub_22170A948(self, v48);
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_2216AB964;
  v58[3] = &unk_2784687C8;
  v59 = v50;
  v60 = &v98;
  v52 = v50;
  v53 = MEMORY[0x223DA1C10](v58);

  _Block_object_dispose(&v98, 8);
  objc_msgSend_updateDataListsConcurrentlyUsingCommentStorageBlock_conditionalStyleSetBlock_controlCellSpecBlock_formulaBlock_formulaErrorBlock_importWarningSetBlock_richTextBlock_stringBlock_styleBlock_customFormatBlock_formatBlock_(v56, v54, v51, v40, v39, v55, v34, v33, v37, v43, v47, &unk_2834B9FC8, v53);
}

- (void)setCellsConcurrently:(id)concurrently tableUID:(const TSKUIDStruct *)d calculationEngine:(id)engine conditionalStyleOwner:(id)owner ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings
{
  concurrentlyCopy = concurrently;
  engineCopy = engine;
  ownerCopy = owner;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = sub_2216ABF74;
  v63[3] = &unk_2784687E8;
  warningsCopy = warnings;
  objc_msgSend_enumerateRowsOfCellsConcurrentlyUsingBlock_(concurrentlyCopy, v16, v63, v17, v18);
  if (engineCopy && !formula)
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = sub_2216AC290;
    v60[3] = &unk_278468810;
    v19 = engineCopy;
    v61 = v19;
    dCopy = d;
    objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(concurrentlyCopy, v20, 2, 0, v60);
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x2020000000;
    v59 = 0;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = sub_2216AC484;
    v54[3] = &unk_278468838;
    v56 = v58;
    v21 = v19;
    v55 = v21;
    dCopy2 = d;
    objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(concurrentlyCopy, v22, 4, 0, v54);
    if (ownerCopy)
    {
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = sub_2216AC540;
      v52[3] = &unk_27845E670;
      v53 = ownerCopy;
      objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(concurrentlyCopy, v27, 6, 0, v52);
    }

    if ((objc_msgSend_skipDirtyingRanges(concurrentlyCopy, v23, v24, v25, v26) & 1) == 0)
    {
      v32 = objc_msgSend_affectedBaseColumnAndRowIndexes(concurrentlyCopy, v28, v29, v30, v31);
      v37 = objc_msgSend_first(v32, v33, v34, v35, v36);
      v42 = objc_msgSend_second(v32, v38, v39, v40, v41);
      v45 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v43, v37, v42, v44);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = sub_2216AC5E0;
      v49[3] = &unk_278468860;
      dCopy3 = d;
      v50 = v21;
      objc_msgSend_enumerateCellRangesUsingBlock_(v45, v46, v49, v47, v48);
    }

    _Block_object_dispose(v58, 8);
  }
}

- (void)didApplyConcurrentCellMap:(id)map
{
  mapCopy = map;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_2216AC850;
  v42[3] = &unk_278468888;
  v42[4] = self;
  objc_msgSend_enumerateColumnCellCountDiffUsingBlock_(mapCopy, v5, v42, v6, v7);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v8 = objc_alloc(MEMORY[0x277CCAB00]);
  v10 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v8, v9, 512, 0, 4);
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = sub_2216AC898;
  v34 = &unk_2784688B0;
  selfCopy = self;
  v37 = &v38;
  v11 = v10;
  v36 = v11;
  objc_msgSend_enumerateRowCellCountDiffUsingBlock_(mapCopy, v12, &v31, v13, v14);
  if (self->_cellCountValid)
  {
    self->_cellCount += *(v39 + 6);
  }

  objc_msgSend_tsu_enumerateKeysAndObjectsUsingBlock_(v11, v15, &unk_2834B9FE8, v16, v17, v31, v32, v33, v34, selfCopy);
  v22 = objc_msgSend_affectedBaseColumnAndRowIndexes(mapCopy, v18, v19, v20, v21);
  v27 = objc_msgSend_second(v22, v23, v24, v25, v26);

  objc_msgSend_pruneTilesForRows_(self->_tileStorage, v28, v27, v29, v30);
  _Block_object_dispose(&v38, 8);
}

- (vector<TSTCell)accumulateCurrentCellsConcurrentlyInRow:(TSTTableDataStore *)self rowInfo:(SEL)info atColumns:(TSUModelRowIndex)columns usingCellCreationBlock:(id)block
{
  blockCopy = block;
  v13 = a7;
  if (blockCopy)
  {
    objc_msgSend_accumulateCurrentCellsConcurrentlyAtColumns_usingCellCreationBlock_(blockCopy, v10, a6, v13, v12);
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableDataStore accumulateCurrentCellsConcurrentlyInRow:rowInfo:atColumns:usingCellCreationBlock:]", v11, v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 3900, 0, "invalid nil value for '%{public}s'", "rowInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    retstr->__begin_ = 0;
    retstr->var0 = 0;
    retstr->var1 = 0;
  }

  return result;
}

- (id)tsceValueFromCell:(id)cell atCellID:(TSUCellCoord)d tableUID:(const TSKUIDStruct *)iD
{
  cellCopy = cell;
  v12 = objc_msgSend_valueType(cellCopy, v8, v9, v10, v11);
  if (v12 > 5)
  {
    if (v12 <= 7)
    {
      if (v12 == 6)
      {
        IsExplicitForCalcEngine = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v13, v14, v15, v16);
        v127 = objc_msgSend_BOOLValue(cellCopy, v123, v124, v125, v126);
        v62 = objc_msgSend_currentFormat(cellCopy, v128, v129, v130, v131);
        TSCEFormat::TSCEFormat(&v188, v62, IsExplicitForCalcEngine);
        v96 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v132, v127, &v188, v133);
      }

      else
      {
        v71 = objc_msgSend_currentFormat(cellCopy, v13, v14, v15, v16);
        v62 = objc_msgSend_asDurationFormat(v71, v72, v73, v74, v75);

        objc_msgSend_durationTimeIntervalValue(cellCopy, v76, v77, v78, v79);
        if (v62)
        {
          v84 = objc_msgSend_durationUnitLargestWithTimeInterval_(v62, v80, v81, v82, v83);
          v85 = sub_221387C78(v84);
          v90 = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v86, v87, v88, v89);
          objc_msgSend_durationTimeIntervalValue(cellCopy, v91, v92, v93, v94);
          TSUDecimal::operator=();
          TSCEFormat::TSCEFormat(&v188, v62, v90);
          v96 = objc_msgSend_numberWithDecimal_format_baseUnit_(TSCENumberValue, v95, &v186, &v188, v85);
        }

        else
        {
          TSUDecimal::operator=();
          v96 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v177, &v188, 6, v178);
        }
      }

      goto LABEL_37;
    }

    switch(v12)
    {
      case 8:
        v188._tskFormat = d;
        *&v188._formatType = d;
        *&v188._durationFormat = *iD;
        v62 = objc_msgSend_indirectErrorForRangeReference_hostTableUID_(TSCEError, v13, &v188, iD, v16);
        v96 = objc_msgSend_errorValue_(TSCEErrorValue, v119, v62, v120, v121);
LABEL_37:
        v70 = v96;
        goto LABEL_38;
      case 9:
        v62 = objc_msgSend_richTextValue(cellCopy, v13, v14, v15, v16);
        v185 = 0;
        v136 = objc_msgSend_errorForRichTextStorage_outValue_(TSCEError, v134, v62, &v185, v135);
        v70 = v185;
        if ((v136 & 1) == 0)
        {
          v141 = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v137, v138, v139, v140);
          v146 = objc_msgSend_currentFormat(cellCopy, v142, v143, v144, v145);
          TSCEFormat::TSCEFormat(&v188, v146, v141);
          v149 = objc_msgSend_richTextValue_format_(TSCERichTextValue, v147, v62, &v188, v148);

          v70 = v149;
        }

        goto LABEL_38;
      case 10:
        objc_msgSend_currencyDoubleValue(cellCopy, v13, v14, v15, v16);
        v18 = v17;
        v23 = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v19, v20, v21, v22);
        v28 = objc_msgSend_currentFormat(cellCopy, v24, v25, v26, v27);
        if (objc_msgSend_formatType(v28, v29, v30, v31, v32) == 257)
        {
          v37 = objc_msgSend_asCurrencyFormat(v28, v33, v34, v35, v36);
          v42 = objc_msgSend_currencyCode(v37, v38, v39, v40, v41);
        }

        else
        {
          if (objc_msgSend_formatType(v28, v33, v34, v35, v36) != 274)
          {
            v62 = 0;
            goto LABEL_35;
          }

          v37 = objc_msgSend_asCustomFormatWrapper(v28, v165, v166, v167, v168);
          v42 = objc_msgSend_currencyCodeForValue_(v37, v169, v170, v171, v172, v18);
        }

        v62 = v42;

        if (v62)
        {
          v176 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v173, v62, v174, v175);
LABEL_36:
          TSCEFormat::TSCEFormat(&v188, v28, v23);
          v186 = objc_msgSend_currencyDecimalValue(cellCopy, v179, v180, v181, v182);
          v187 = v183;
          v96 = objc_msgSend_numberWithDecimal_format_baseUnit_(TSCENumberValue, v183, &v186, &v188, v176);
          goto LABEL_37;
        }

LABEL_35:
        v176 = 0;
        goto LABEL_36;
    }

    goto LABEL_27;
  }

  if (v12 <= 2)
  {
    if (!v12)
    {
      v97 = objc_msgSend_currentFormat(cellCopy, v13, v14, v15, v16);
      v102 = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v98, v99, v100, v101);
      TSCEFormat::TSCEFormat(&v188, v97, v102);
      v56 = objc_msgSend_emptyCellValueWithFormat_(TSCEEmptyCellValue, v103, &v188, v104, v105);
      goto LABEL_28;
    }

    if (v12 == 2)
    {
      v43 = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v13, v14, v15, v16);
      v48 = objc_msgSend_currentFormat(cellCopy, v44, v45, v46, v47);
      TSCEFormat::TSCEFormat(&v188, v48, v43);
      v49 = [TSCENumberValue alloc];
      v186 = objc_msgSend_numberDecimalValue(cellCopy, v50, v51, v52, v53);
      v187 = v54;
      v56 = objc_msgSend_initWithDecimal_format_(v49, v54, &v186, &v188, v55);
LABEL_28:
      v70 = v56;
      goto LABEL_39;
    }

LABEL_27:
    v150 = MEMORY[0x277D81150];
    v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableDataStore tsceValueFromCell:atCellID:tableUID:]", v15, v16);
    v155 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v153, v154);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v156, v151, v155, 4008, 0, "unhandled table cell type found");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v157, v158, v159, v160);
    v56 = objc_msgSend_nilValue(TSCENilValue, v161, v162, v163, v164);
    goto LABEL_28;
  }

  if (v12 == 3)
  {
    v106 = objc_msgSend_stringValue(cellCopy, v13, v14, v15, v16);
    if (v106)
    {
      v62 = v106;
    }

    else
    {
      v62 = &stru_2834BADA0;
    }

    v111 = objc_msgSend_currentFormat(cellCopy, v107, v108, v109, v110);
    v116 = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v112, v113, v114, v115);
    TSCEFormat::TSCEFormat(&v188, v111, v116);
    v96 = objc_msgSend_stringValue_format_(TSCEStringValue, v117, v62, &v188, v118);
    goto LABEL_37;
  }

  if (v12 != 5)
  {
    goto LABEL_27;
  }

  v57 = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v13, v14, v15, v16);
  v62 = objc_msgSend_dateValue(cellCopy, v58, v59, v60, v61);
  v67 = objc_msgSend_currentFormat(cellCopy, v63, v64, v65, v66);
  TSCEFormat::TSCEFormat(&v188, v67, v57);
  v70 = objc_msgSend_dateValue_format_(TSCEDateValue, v68, v62, &v188, v69);

LABEL_38:
LABEL_39:

  return v70;
}

- (void)tsceValueForCellStorageRef:(TSTCellStorage *)ref cellCoord:(const TSUCellCoord *)coord hostTableUID:(const TSKUIDStruct *)d outValue:(id *)value
{
  if (!ref)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableDataStore tsceValueForCellStorageRef:cellCoord:hostTableUID:outValue:]", coord, d);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v38, v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 4020, 0, "Can't get a value from a null cell reference!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
    goto LABEL_10;
  }

  sub_22169DEF8(&ref->var0.var0, a2, ref, coord, d);
  v15 = *(&ref->var0 + 1);
  if (v15 <= 5)
  {
    if (*(&ref->var0 + 1) <= 2u)
    {
      if (v15 == 2)
      {
        v172._decimal.w[0] = sub_2216AD93C(&ref->var0.var0, v11, v12, v13, v14);
        v172._decimal.w[1] = v51;
        v171 = 0;
        v52 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v51, *coord, &v171, ref);
        TSCEFormat::TSCEFormat(&v173, v52, v171);
        v50 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v53, &v172, &v173, v54);
        goto LABEL_11;
      }

LABEL_10:
      LOBYTE(v172._decimal.w[0]) = 0;
      v46 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v11, *coord, &v172, ref);
      TSCEFormat::TSCEFormat(&v173, v46, v172._decimal.w[0]);
      v50 = objc_msgSend_emptyCellValueWithFormat_(TSCEEmptyCellValue, v47, &v173, v48, v49);
LABEL_11:
      *value = v50;
      return;
    }

    if (v15 == 3)
    {
      v112 = objc_msgSend_stringForCalcEngineAtCellID_refIfAvailable_(self, v11, *coord, ref, v14);
      LOBYTE(v172._decimal.w[0]) = 0;
      v114 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v113, *coord, &v172, ref);
      TSCEFormat::TSCEFormat(&v173, v114, v172._decimal.w[0]);
      v117 = objc_msgSend_stringValue_format_(TSCEStringValue, v115, v112, &v173, v116);
      goto LABEL_34;
    }

    if (v15 != 5)
    {
      goto LABEL_10;
    }

    LOBYTE(v172._decimal.w[0]) = 0;
    v55 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v11, *coord, &v172, ref);
    v56 = MEMORY[0x277CBEAA8];
    sub_22169DEF8(&ref->var0.var0, v57, v58, v59, v60);
    sub_22169DEF8(&ref->var0.var0, v61, v62, v63, v64);
    if (*(&ref->var0 + 1) != 5)
    {
      v69 = MEMORY[0x277D81150];
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "double TSTCellStorageRawDateValue(TSTCellStorage *)", v67, v68);
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v72, v73);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v75, v70, v74, 324, 0, "Asked for date value from non-date cell.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78, v79);
    }

    v80 = sub_2211450B8(ref, 4, v66, v67, v68);
    v85 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v56, v81, v82, v83, v84, v80);
    TSCEFormat::TSCEFormat(&v173, v55, v172._decimal.w[0]);
    v88 = objc_msgSend_dateValue_format_(TSCEDateValue, v86, v85, &v173, v87);
LABEL_27:
    *value = v88;

    return;
  }

  if (*(&ref->var0 + 1) <= 7u)
  {
    if (v15 == 6)
    {
      LOBYTE(v172._decimal.w[0]) = 0;
      v121 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v11, *coord, &v172, ref);
      TSCEFormat::TSCEFormat(&v173, v121, v172._decimal.w[0]);
      sub_22169DEF8(&ref->var0.var0, v122, v123, v124, v125);
      sub_22169DEF8(&ref->var0.var0, v126, v127, v128, v129);
      if (*(&ref->var0 + 1) != 6)
      {
        v134 = MEMORY[0x277D81150];
        v135 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, "BOOL TSTCellStorageBoolValue(TSTCellStorage *)", v132, v133);
        v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v136, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v137, v138);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v134, v140, v135, v139, 314, 0, "Asked for BOOL value from non-BOOL cell.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v141, v142, v143, v144);
      }

      if ((*(&ref->var0 + 8) & 2) != 0)
      {
        v151 = sub_2211450B8(ref, 2, v131, v132, v133) != 0.0;
        objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v152, v151, &v173, v153);
      }

      else
      {
        objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v130, 0, &v173, v133);
      }
      v50 = ;
      goto LABEL_11;
    }

    if (v15 == 7)
    {
      v171 = 0;
      v89 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v11, *coord, &v171, ref);
      if (v89)
      {
        v94 = v89;
        v95 = objc_msgSend_asDurationFormat(v89, v90, v91, v92, v93);
        v100 = sub_2216ADA3C(&ref->var0.var0, v96, v97, v98, v99);
        v105 = objc_msgSend_durationUnitLargestWithTimeInterval_(v95, v101, v102, v103, v104, v100);
        v106 = sub_221387C78(v105);

        sub_2216ADA3C(&ref->var0.var0, v107, v108, v109, v110);
        TSUDecimal::operator=();
        TSCEFormat::TSCEFormat(&v173, v94, v171);
        objc_msgSend_numberWithDecimal_format_baseUnit_(TSCENumberValue, v111, &v172, &v173, v106);
      }

      else
      {
        sub_2216ADA3C(&ref->var0.var0, v90, v91, v92, v93);
        TSUDecimal::operator=();
        objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v169, &v173, 6, v170);
      }
      v50 = ;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v15 == 8)
  {
    v173._tskFormat = *coord;
    *&v173._formatType = v173._tskFormat;
    *&v173._durationFormat = *d;
    v85 = objc_msgSend_indirectErrorForRangeReference_hostTableUID_(TSCEError, v11, &v173, d, v14);
    v88 = objc_msgSend_errorValue_(TSCEErrorValue, v118, v85, v119, v120);
    goto LABEL_27;
  }

  if (v15 == 9)
  {
    v112 = objc_msgSend_richTextStorageForCalcEngineAtCellID_refIfAvailable_(self, v11, *coord, ref, v14);
    if (objc_msgSend_errorForRichTextStorage_outValue_(TSCEError, v145, v112, value, v146))
    {
LABEL_35:

      return;
    }

    LOBYTE(v172._decimal.w[0]) = 0;
    v148 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v147, *coord, &v172, ref);
    TSCEFormat::TSCEFormat(&v173, v148, v172._decimal.w[0]);
    v117 = objc_msgSend_richTextValue_format_(TSCERichTextValue, v149, v112, &v173, v150);
LABEL_34:
    *value = v117;
    goto LABEL_35;
  }

  if (v15 != 10)
  {
    goto LABEL_10;
  }

  v172._decimal.w[0] = sub_2216AD93C(&ref->var0.var0, v11, v12, v13, v14);
  v172._decimal.w[1] = v16;
  TSUDecimal::doubleValue(&v172);
  v18 = v17;
  v171 = 0;
  v20 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v19, *coord, &v171, ref);
  if (objc_msgSend_formatType(v20, v21, v22, v23, v24) == 257)
  {
    v29 = objc_msgSend_asCurrencyFormat(v20, v25, v26, v27, v28);
    v34 = objc_msgSend_currencyCode(v29, v30, v31, v32, v33);
  }

  else
  {
    if (objc_msgSend_formatType(v20, v25, v26, v27, v28) != 274)
    {
LABEL_42:
      v167 = 0;
      v166 = 0;
      goto LABEL_43;
    }

    v29 = objc_msgSend_asCustomFormatWrapper(v20, v154, v155, v156, v157);
    v34 = objc_msgSend_currencyCodeForValue_(v29, v158, v159, v160, v161, v18);
  }

  v162 = v34;

  if (!v162)
  {
    goto LABEL_42;
  }

  v166 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v163, v162, v164, v165);
  v167 = v162;
LABEL_43:
  TSCEFormat::TSCEFormat(&v173, v20, v171);
  *value = objc_msgSend_numberWithDecimal_format_baseUnit_(TSCENumberValue, v168, &v172, &v173, v166);
}

- (TSDContainerInfo)richTextParentInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_richTextParentInfo);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)p_loadLazyDatalists
{
  v3 = sub_22170A75C(self);
  v4 = sub_22170A84C(self);
  v5 = sub_22170A8F4(self);
  v6 = sub_22170A990(self);
  v8 = sub_22170AA38(self, v7);
  v9 = sub_22170A7F8(self);
  v11 = sub_22170A7B0(self, v10);
  v13 = sub_22170A948(self, v12);
  v14 = sub_22170A8A0(self);
  v15 = sub_22170A9E4(self);
  v16 = sub_22170AA80(self);
}

@end