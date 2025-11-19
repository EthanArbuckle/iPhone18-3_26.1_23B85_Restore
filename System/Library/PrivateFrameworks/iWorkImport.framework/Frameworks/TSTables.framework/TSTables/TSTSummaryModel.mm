@interface TSTSummaryModel
+ (unsigned)categoryLevelForTableStyleArea:(unint64_t)a3;
- (BOOL)cellExistsAtCellCoord:(TSUModelCellCoord)a3;
- (BOOL)hasMigratableStylesInCells;
- (TSKUIDStruct)aggregateFormulaOwnerUID;
- (TSTSummaryModel)initWithContext:(id)a3 tableInfo:(id)a4;
- (TSTSummaryModel)initWithTableInfo:(id)a3;
- (TSUModelCellRect)range;
- (double)heightOfRowAtIndex:(TSUModelRowIndex)a3 isDefault:(BOOL *)a4;
- (double)widthOfColumnAtIndex:(TSUModelColumnIndex)a3 isDefault:(BOOL *)a4;
- (id).cxx_construct;
- (id)allRichTextStorages;
- (id)cellStyleAtModelCellCoord:(TSUModelCellCoord)a3 isDefault:(BOOL *)a4;
- (id)currentState;
- (id)defaultCellStyleForCellCoord:(TSUModelCellCoord)a3;
- (id)defaultTextStyleForCellCoord:(TSUModelCellCoord)a3;
- (id)explicitFormatOfKind:(unsigned __int8)a3 atModelCellCoord:(TSUModelCellCoord)a4 currencyIsMostRecentlySet:(BOOL *)a5;
- (id)mapReassigningPasteboardCustomFormatKeys:(id)a3;
- (id)metadataForColumnIndex:(TSUModelColumnIndex)a3 hidingAction:(unsigned __int8)a4;
- (id)metadataForRowIndex:(TSUModelRowIndex)a3 hidingAction:(unsigned __int8)a4;
- (id)newCell;
- (id)textStyleAtModelCellCoord:(TSUModelCellCoord)a3 isDefault:(BOOL *)a4;
- (int)getCell:(id)a3 atCellCoord:(TSUModelCellCoord)a4;
- (int)getValue:(id *)a3 atCellID:(TSUModelCellCoord)a4 fetchRichTextAttributesIfPlainText:(BOOL)a5;
- (int)insertColumnsAtIndex:(TSUModelColumnIndex)a3 metadatas:(id)a4;
- (int)p_setCategoryCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4 formulaReplacer:(id)a5;
- (int)p_setPivotCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4 formulaReplacer:(id)a5;
- (int)setCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4 formulaReplacer:(id)a5;
- (int)setFormulaResultCellsWithCellMap:(id)a3;
- (unint64_t)p_tableStyleAreaForCellCoord:(TSUModelCellCoord)a3;
- (unsigned)cellValueTypeAtSummaryModelCoord:(TSUModelCellCoord)a3;
- (unsigned)p_ColumnCategoryLevelForCellCoord:(TSUModelCellCoord)a3;
- (unsigned)p_RowCategoryLevelForCellCoord:(TSUModelCellCoord)a3 isLabel:(BOOL *)a4;
- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells;
- (void)addReferencedStylesToSet:(id)a3;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)didChangeGroupByStructure;
- (void)didCreateGroup:(id)a3;
- (void)enumerateCellsForSOSSerializationWithBlock:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_removeRows:(_NSRange)a3;
- (void)registerAllFormulasWithCalculationEngine:(id)a3 wasCrossDocumentPaste:(BOOL)a4;
- (void)removeCategoryColumnCellsForRows:(void *)a3;
- (void)removeColumnsAtSummaryIndexes:(id)a3;
- (void)replaceReferencedStylesUsingBlock:(id)a3;
- (void)resetForCategoriesWithForce:(BOOL)a3;
- (void)resetForPivotingWithRowUids:(const void *)a3 columnUids:(const void *)a4;
- (void)runChange:(id)a3 withSummaryChangeState:(id)a4 migrationHelper:(id)a5;
- (void)saveToArchiver:(id)a3;
- (void)setAggregateType:(unsigned __int8)a3 forColumnUID:(const TSKUIDStruct *)a4 atGroupLevel:(unsigned __int8)a5;
- (void)setCategoryColumnWidth:(double)a3;
- (void)setGroupSortOrder:(id)a3;
- (void)setHeight:(double)a3 ofRowAtIndex:(TSUModelRowIndex)a4;
- (void)setLabelRowHeight:(double)a3 atCategoryLevel:(unsigned __int8)a4;
- (void)setLabelRowVisibility:(unint64_t)a3 atCategoryLevel:(unsigned __int8)a4;
- (void)setSummaryRowHeight:(double)a3 atCategoryLevel:(unsigned __int8)a4;
- (void)setWidth:(double)a3 ofColumnAtIndex:(TSUModelColumnIndex)a4;
- (void)setupReceiver;
- (void)upgradeDuringDocumentUpgradeIfNeeded:(unint64_t)a3;
- (void)upgradeFormulasForGroupByUIDChange;
- (void)willRemoveGroup:(id)a3;
@end

@implementation TSTSummaryModel

- (int)getCell:(id)a3 atCellCoord:(TSUModelCellCoord)a4
{
  v6 = a3;
  objc_msgSend_clear(v6, v7, v8, v9, v10);
  if (objc_msgSend_getCell_atCellID_(self->_dataStore, v11, v6, *&a4, v12))
  {
    v13 = 0;
  }

  else
  {
    v13 = 1000;
  }

  return v13;
}

- (int)getValue:(id *)a3 atCellID:(TSUModelCellCoord)a4 fetchRichTextAttributesIfPlainText:(BOOL)a5
{
  if (a3)
  {
    v5 = a5;
    v9 = objc_msgSend_aggregateFormulaOwner(self, a2, a3, *&a4, a5);
    v14 = objc_msgSend_cellsPendingWrite(v9, v10, v11, v12, v13);
    v18 = objc_msgSend_cellAtCellID_(v14, v15, *&a4, v16, v17);

    dataStore = self->_dataStore;
    if (v18)
    {
      v24 = objc_msgSend_tableInfo(self, v19, v20, v21, v22);
      v127 = objc_msgSend_tableUID(v24, v25, v26, v27, v28);
      v128 = v29;
      *a3 = objc_msgSend_tsceValueFromCell_atCellID_tableUID_(dataStore, v29, v18, *&a4, &v127);

      v34 = objc_msgSend_valueType(v18, v30, v31, v32, v33);
      v39 = 0;
      v40 = v34 == 3;
      if (v5 && v34 == 3)
      {
        v41 = objc_msgSend_textStyle(v18, v35, v36, v37, v38);
LABEL_13:
        v39 = v41;
        v40 = 1;
      }
    }

    else
    {
      v47 = objc_msgSend_cellStorageRefAtCellID_(self->_dataStore, v19, *&a4, v21, v22);
      if (!v47)
      {
        v39 = 0;
        v42 = 1000;
LABEL_25:

        return v42;
      }

      v48 = self->_dataStore;
      v126 = a4;
      v49 = objc_msgSend_tableInfo(self, v43, v44, v45, v46);
      v127 = objc_msgSend_tableUID(v49, v50, v51, v52, v53);
      v128 = v54;
      objc_msgSend_tsceValueForCellStorageRef_cellCoord_hostTableUID_outValue_(v48, v54, v47, &v126, &v127, a3);

      v55 = *v47;
      if (v55 != 5)
      {
        v125 = MEMORY[0x277D81150];
        v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "BOOL TSTCellStorageVersionCheck(TSTCellStorage *)", v37, v38);
        v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v111, v112);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v125, v114, v109, v113, 138, 0, "Can't parse cell storage header version %d!", v55);

        objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v115, v116, v117, v118);
      }

      v39 = 0;
      v56 = v47[1];
      v40 = v56 == 3;
      if (v5 && v56 == 3)
      {
        v41 = objc_msgSend_textStyleAtCellID_(self->_dataStore, v35, *&a4, v37, v38);
        goto LABEL_13;
      }
    }

    v42 = 0;
    if (v5 && v40)
    {
      v57 = objc_msgSend_asRawString(*a3, v35, v36, v37, v38);
      if (objc_msgSend_length(v57, v58, v59, v60, v61) && v39 && objc_msgSend_isVariation(v39, v62, v63, v64, v65))
      {
        LOBYTE(v127) = 0;
        v71 = objc_msgSend_textStyleAtModelCellCoord_isDefault_(self, v66, *&a4, &v127, v67);
        if (v127 != 1 || (objc_msgSend_isEqual_(v39, v68, v71, v69, v70) & 1) == 0)
        {
          v124 = v71;
          v72 = [TSCEUnpersistedStorage alloc];
          v123 = objc_msgSend_context(v39, v73, v74, v75, v76);
          v77 = *a3;
          v122 = objc_msgSend_objectLocale(self, v78, v79, v80, v81);
          v121 = objc_msgSend_asStringWithLocale_(v77, v82, v122, v83, v84);
          v120 = objc_msgSend_stylesheet(v39, v85, v86, v87, v88);
          v119 = objc_msgSend_documentRoot(self, v89, v90, v91, v92);
          v97 = objc_msgSend_theme(v119, v93, v94, v95, v96);
          v102 = objc_msgSend_defaultListStyle(v97, v98, v99, v100, v101);
          v104 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v72, v103, v123, v121, 5, v120, v39, v102, 0, 0);

          *a3 = objc_msgSend_richTextValue_(TSCERichTextValue, v105, v104, v106, v107);

          v71 = v124;
        }
      }

      v42 = 0;
    }

    goto LABEL_25;
  }

  return 1000;
}

- (void)setCategoryColumnWidth:(double)a3
{
  if (self->_categoryColumnWidth != a3)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5);
    self->_categoryColumnWidth = a3;
  }
}

- (TSTSummaryModel)initWithTableInfo:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_context(v4, v5, v6, v7, v8);
  v12 = objc_msgSend_initWithContext_tableInfo_(self, v10, v9, v4, v11);

  return v12;
}

- (TSTSummaryModel)initWithContext:(id)a3 tableInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v58.receiver = self;
  v58.super_class = TSTSummaryModel;
  v12 = [(TSTSummaryModel *)&v58 initWithContext:v6];
  if (v12)
  {
    v13 = objc_msgSend_baseTableModel(v7, v8, v9, v10, v11);
    v12->_tableInfo = v7;
    v14 = [TSTTableDataStore alloc];
    v18 = objc_msgSend_initWithOwner_(v14, v15, v12, v16, v17);
    dataStore = v12->_dataStore;
    v12->_dataStore = v18;

    v20 = [TSTColumnRowUIDMap alloc];
    memset(v57, 0, sizeof(v57));
    __p = 0;
    v55 = 0;
    v56 = 0;
    v22 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v20, v21, v6, v57, &__p);
    columnRowUIDMap = v12->_columnRowUIDMap;
    v12->_columnRowUIDMap = v22;

    if (__p)
    {
      v55 = __p;
      operator delete(__p);
    }

    if (v57[0])
    {
      v57[1] = v57[0];
      operator delete(v57[0]);
    }

    v24 = [TSTSummaryCellVendor alloc];
    v28 = objc_msgSend_initWithTableInfo_(v24, v25, v7, v26, v27);
    summaryCellVendor = v12->_summaryCellVendor;
    v12->_summaryCellVendor = v28;

    v57[0] = objc_msgSend_tableUID(v13, v30, v31, v32, v33);
    v57[1] = v34;
    v12->_aggregateFormulaOwnerUID._lower = sub_2212C4930(v57, 9, v35, v36, v37);
    v12->_aggregateFormulaOwnerUID._upper = v38;
    v39 = [TSTCategoryAggregateFormulaOwner alloc];
    v57[0] = objc_msgSend_tableUID(v13, v40, v41, v42, v43);
    v57[1] = v44;
    v46 = objc_msgSend_initWithTableUID_ownerUID_(v39, v44, v57, &v12->_aggregateFormulaOwnerUID, v45);
    aggregateFormulaOwner = v12->_aggregateFormulaOwner;
    v12->_aggregateFormulaOwner = v46;

    v12->_categoryColumnWidth = 50.0;
    v57[0] = 0;
    sub_22129BBC4(&v12->_summaryRowHeightList.__begin_, 6uLL, v57);
    v57[0] = 0;
    sub_22129BBC4(&v12->_labelRowHeightList.__begin_, 6uLL, v57);
    LODWORD(v57[0]) = 0;
    sub_22129BDB8(&v12->_labelRowVisibilityList.__begin_, 6uLL, v57);
    v48 = [TSTTableGroupSortOrderUID alloc];
    v51 = objc_msgSend_initWithGroupRules_withTableInfo_(v48, v49, MEMORY[0x277CBEBF8], v7, v50);
    groupSortOrder = v12->_groupSortOrder;
    v12->_groupSortOrder = v51;
  }

  return v12;
}

- (void)setupReceiver
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v26 = objc_msgSend_groupBy(v6, v7, v8, v9, v10);

  if (objc_msgSend_numberOfLevels(v26, v11, v12, v13, v14))
  {
    v19 = objc_msgSend_groupByChangeDistributor(v26, v15, v16, v17, v18);
    objc_msgSend_addReceiver_(v19, v20, self, v21, v22);
  }

  else
  {
    v19 = objc_msgSend_groupByChangeDistributor(v26, v15, v16, v17, v18);
    objc_msgSend_removeReceiver_(v19, v23, self, v24, v25);
  }
}

- (void)resetForPivotingWithRowUids:(const void *)a3 columnUids:(const void *)a4
{
  v8 = objc_msgSend_tableInfo(self, a2, a3, a4, v4);
  isAPivotTable = objc_msgSend_isAPivotTable(v8, v9, v10, v11, v12);

  if ((isAPivotTable & 1) == 0)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTSummaryModel resetForPivotingWithRowUids:columnUids:]", v16, v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 289, 0, "Resetting a categories summary model for pivoting");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  objc_msgSend_willModify(self, v14, v15, v16, v17);
  objc_msgSend_replaceRowsWithUids_(self->_columnRowUIDMap, v29, a3, v30, v31);
  objc_msgSend_replaceColumnsWithUids_(self->_columnRowUIDMap, v32, a4, v33, v34);
  v39 = objc_msgSend_tableInfo(self, v35, v36, v37, v38);
  v44 = objc_msgSend_calcEngine(v39, v40, v41, v42, v43);
  objc_msgSend_removeAllFormulasFromOwner_(v44, v45, &self->_aggregateFormulaOwnerUID, v46, v47);

  objc_msgSend_resetAlmostEverything(self->_dataStore, v48, v49, v50, v51);
  dataStore = self->_dataStore;

  objc_msgSend_resetAllColumnRowSizes(dataStore, v52, v53, v54, v55);
}

- (void)resetForCategoriesWithForce:(BOOL)a3
{
  v306 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_tableInfo(self, a2, a3, v3, v4);
  isAPivotTable = objc_msgSend_isAPivotTable(v7, v8, v9, v10, v11);

  if (isAPivotTable)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTSummaryModel resetForCategoriesWithForce:]", v15, v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 304, 0, "Resetting a pivoting summary model for categories");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_tableInfo(self, v13, v14, v15, v16);
  v33 = objc_msgSend_groupBy(v28, v29, v30, v31, v32);

  v284 = v33;
  v288 = objc_msgSend_columnRowUIDMap(self, v34, v35, v36, v37);
  v42 = objc_msgSend_tableInfo(self, v38, v39, v40, v41);
  v47 = objc_msgSend_baseTableModel(v42, v43, v44, v45, v46);
  v287 = objc_msgSend_columnRowUIDMap(v47, v48, v49, v50, v51);

  if (!objc_msgSend_numberOfLevels(v33, v52, v53, v54, v55))
  {
    v114 = objc_msgSend_tableInfo(self, v56, v57, v58, v59);
    v119 = objc_msgSend_groupBy(v114, v115, v116, v117, v118);
    v124 = objc_msgSend_groupByChangeDistributor(v119, v120, v121, v122, v123);
    objc_msgSend_removeReceiver_(v124, v125, self, v126, v127);

    objc_msgSend_willModify(self, v128, v129, v130, v131);
    v136 = objc_msgSend_tableInfo(self, v132, v133, v134, v135);
    v141 = objc_msgSend_calcEngine(v136, v137, v138, v139, v140);
    objc_msgSend_removeAllFormulasFromOwner_(v141, v142, &self->_aggregateFormulaOwnerUID, v143, v144);

    objc_msgSend_resetAlmostEverything(self->_dataStore, v145, v146, v147, v148);
    objc_msgSend_reset(self->_columnRowUIDMap, v149, v150, v151, v152);
    goto LABEL_78;
  }

  v60 = objc_msgSend_columnUIDs(v287, v56, v57, v58, v59);
  v302 = 0;
  v303 = 0;
  v304 = 0;
  sub_221086EBC(&v302, *v60, v60[1], (v60[1] - *v60) >> 4);
  sub_22129CE20(&v302, v302, "category column");
  if ((v303 - v302) >= 0x3E81)
  {
    sub_22129CFF4(&v302, 0x3E8uLL);
  }

  v65 = objc_msgSend_columnUIDs(v288, v61, v62, v63, v64);
  v70 = v302;
  v71 = *v65;
  if (v303 - v302 == *(v65 + 8) - *v65)
  {
    while (v70 != v303)
    {
      if (v70->n128_u64[0] != *v71 || v70->n128_u64[1] != v71[1])
      {
        goto LABEL_14;
      }

      ++v70;
      v71 += 2;
    }

    goto LABEL_52;
  }

LABEL_14:
  objc_msgSend_willModify(self, v66, v67, v68, v69);
  v77 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v73, v74, v75, v76);
  v82 = objc_msgSend_columnUIDs(v288, v78, v79, v80, v81);
  v87 = *v82;
  v88 = *(v82 + 8);
  if (*v82 != v88)
  {
    v89 = 0;
    do
    {
      if (objc_msgSend_columnIndexForColumnUID_(v287, v83, *v87, v87[1], v86) == 0x7FFF && (*v87 != *"category column" || v87[1] != *" column"))
      {
        objc_msgSend_addIndex_(v77, v83, v89, v85, v86);
      }

      ++v89;
      v87 += 2;
    }

    while (v87 != v88);
  }

  v93 = objc_msgSend_count(v77, v83, v84, v85, v86);
  v94 = v93 != 0;
  if (v93)
  {
    objc_msgSend_removeColumnsAtSummaryIndexes_(self, v90, v77, v91, v92);
  }

  v299 = 0;
  v300 = 0;
  v301 = 0;
  v95 = v302;
  v96 = v303;
  if (v302 == v303)
  {

    if (!v93)
    {
LABEL_52:
      v166 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v97 = 0;
    do
    {
      v98 = objc_msgSend_columnIndexForColumnUID_(v288, v90, v95->n128_u64[0], v95->n128_i64[1], v92);
      if (v98 != v97)
      {
        if (v98 == 0x7FFF)
        {
          v305 = *v95;
          v297 = 0;
          v298 = 0;
          __p = 0;
          sub_2212A3CC4(&__p, &v305, &v306, 1uLL);
          objc_msgSend_insertColumnsWithUIDs_atIndex_(v288, v99, &__p, v97, v100);
          if (__p)
          {
            v297 = __p;
            operator delete(__p);
          }

          objc_msgSend_insertColumns_(self->_dataStore, v101, v97, 1, v102);
          v103 = v300;
          if (v300 >= v301)
          {
            v107 = (v300 - v299) >> 4;
            v108 = v107 + 1;
            if ((v107 + 1) >> 60)
            {
              sub_22107C148();
            }

            v109 = v301 - v299;
            if ((v301 - v299) >> 3 > v108)
            {
              v108 = v109 >> 3;
            }

            if (v109 >= 0x7FFFFFFFFFFFFFF0)
            {
              v110 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v110 = v108;
            }

            if (v110)
            {
              sub_221086F74(&v299, v110);
            }

            v111 = (16 * v107);
            *v111 = *v95;
            v104 = 16 * v107 + 16;
            v112 = (16 * v107 - (v300 - v299));
            memcpy(v111 - (v300 - v299), v299, v300 - v299);
            v113 = v299;
            v299 = v112;
            v300 = v104;
            v301 = 0;
            if (v113)
            {
              operator delete(v113);
            }

            v33 = v284;
          }

          else
          {
            *v300 = *v95;
            v104 = (v103 + 16);
          }

          v300 = v104;
        }

        else
        {
          v105 = v98;
          objc_msgSend_moveColumnIndexRange_toIndex_(v288, v90, v98, 1, v97);
          objc_msgSend_moveColumnIndexRange_toIndex_(self->_dataStore, v106, v105, 1, v97);
        }

        v94 = 1;
      }

      ++v97;
      ++v95;
    }

    while (v95 != v96);
    if (v299)
    {
      v300 = v299;
      operator delete(v299);
    }

    if (!v94)
    {
      goto LABEL_52;
    }
  }

  v153 = objc_msgSend_tableInfo(self, v66, v67, v68, v69);
  v158 = objc_msgSend_calcEngine(v153, v154, v155, v156, v157);
  v299 = objc_msgSend_aggregateFormulaOwnerUID(self, v159, v160, v161, v162);
  v300 = v163;
  objc_msgSend_removeAllFormulasFromOwner_(v158, v163, &v299, v164, v165);

  v166 = 1;
LABEL_53:
  v167 = objc_msgSend_topLevelGroupNode(v33, v66, v67, v68, v69);
  v285 = objc_msgSend_childGroupUids(v167, v168, v169, v170, v171);

  v176 = objc_msgSend_rowUIDs(self->_columnRowUIDMap, v172, v173, v174, v175);
  v299 = 0;
  v300 = 0;
  v301 = 0;
  sub_221086EBC(&v299, *v176, v176[1], (v176[1] - *v176) >> 4);
  v181 = objc_msgSend_mutableCopy(v285, v177, v178, v179, v180);
  v185 = v181;
  if (!a3)
  {
    objc_msgSend_removeUuidsFromVector_(v181, v182, &v299, v183, v184);
  }

  v186 = [TSCEMutableUIDSet alloc];
  v190 = objc_msgSend_initWithUUIDVector_(v186, v187, &v299, v188, v189);
  v194 = v190;
  if (!a3)
  {
    objc_msgSend_removeUuidsFromSet_(v190, v191, v285, v192, v193);
  }

  v286 = objc_msgSend_mutableIndexesForUIDSet_isRows_(self->_columnRowUIDMap, v191, v194, 1, v193);
  if (objc_msgSend_count(v194, v195, v196, v197, v198) || objc_msgSend_count(v185, v199, v200, v201, v202))
  {
    objc_msgSend_willModify(self, v199, v200, v201, v202);
  }

  v207 = objc_msgSend_count(v194, v199, v200, v201, v202);
  if (((v207 != 0) & ~v166) != 0 || objc_msgSend_needsFormulaReset(self, v203, v204, v205, v206))
  {
    v208 = objc_msgSend_tableInfo(self, v203, v204, v205, v206);
    v213 = objc_msgSend_calcEngine(v208, v209, v210, v211, v212);
    __p = objc_msgSend_aggregateFormulaOwnerUID(self, v214, v215, v216, v217);
    v297 = v218;
    objc_msgSend_removeAllFormulasFromOwner_(v213, v218, &__p, v219, v220);
  }

  v221 = objc_msgSend_tableInfo(self, v203, v204, v205, v206);
  v226 = objc_msgSend_calcEngine(v221, v222, v223, v224, v225);

  objc_msgSend_beginBatchingGroupCellDirtying(v226, v227, v228, v229, v230);
  v294[0] = MEMORY[0x277D85DD0];
  v294[1] = 3221225472;
  v294[2] = sub_22129D024;
  v294[3] = &unk_27845EBE8;
  v294[4] = self;
  v231 = v226;
  v295 = v231;
  objc_msgSend_enumerateRangesWithOptions_usingBlock_(v286, v232, 2, v294, v233);
  objc_msgSend_endBatchingGroupCellDirtying(v231, v234, v235, v236, v237);
  objc_msgSend_removeRowsAtIndexes_(self->_columnRowUIDMap, v238, v286, v239, v240);
  columnRowUIDMap = self->_columnRowUIDMap;
  if (v185)
  {
    objc_msgSend_uuidsAsVector(v185, v241, v242, v243, v244);
    v250 = objc_msgSend_numberOfRows(self->_columnRowUIDMap, v246, v247, v248, v249);
  }

  else
  {
    __p = 0;
    v297 = 0;
    v298 = 0;
    v250 = objc_msgSend_numberOfRows(columnRowUIDMap, v241, v242, v243, v244);
  }

  objc_msgSend_insertRowsWithUIDs_atIndex_(columnRowUIDMap, v251, &__p, v250, v252);
  if (__p)
  {
    v297 = __p;
    operator delete(__p);
  }

  v290[0] = MEMORY[0x277D85DD0];
  v290[1] = 3221225472;
  v290[2] = sub_22129D230;
  v290[3] = &unk_27845D948;
  v291 = v33;
  v292 = self;
  v293 = v288;
  objc_msgSend_foreachUuid_(v185, v253, v290, v254, v255);
  if (v207)
  {
    v260 = 1;
  }

  else
  {
    v260 = v166;
  }

  if ((v260 & 1) != 0 || objc_msgSend_needsFormulaReset(self, v256, v257, v258, v259))
  {
    objc_msgSend_setNeedsFormulaReset_(self, v256, 0, v258, v259);
    v266 = objc_msgSend_summaryCellVendor(self, v262, v263, v264, v265);
    v289[0] = MEMORY[0x277D85DD0];
    v289[1] = 3221225472;
    v289[2] = sub_22129D538;
    v289[3] = &unk_278462710;
    v289[4] = self;
    objc_msgSend_enumerateCellsUsingBlock_(v266, v267, v289, v268, v269);
  }

  v270 = objc_msgSend_tableInfo(self, v256, v261, v258, v259);
  v275 = objc_msgSend_groupBy(v270, v271, v272, v273, v274);
  v280 = objc_msgSend_groupByChangeDistributor(v275, v276, v277, v278, v279);
  objc_msgSend_addReceiverIfMissing_(v280, v281, self, v282, v283);

  if (v299)
  {
    v300 = v299;
    operator delete(v299);
  }

  if (v302)
  {
    v303 = v302;
    operator delete(v302);
  }

LABEL_78:
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  if (objc_msgSend_fileFormatVersion(v4, v5, v6, v7, v8) == 0x300020000000ALL)
  {
    objc_msgSend_willModifyForUpgrade(self, v9, v10, v11, v12);
  }

  v13 = v4;
  google::protobuf::internal::AssignDescriptors();
  v17 = objc_msgSend_messageWithDescriptor_(v13, v14, off_2812E4498[86], v15, v16);

  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 72);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_22129DCF8;
    v75[3] = &unk_278462738;
    v75[4] = self;
    v20 = v13;
    v21 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v20, v22, v19, v21, 0, v75);

    v18 = *(v17 + 16);
  }

  if ((v18 & 2) != 0)
  {
    v28 = [TSTTableDataStore alloc];
    if (*(v17 + 80))
    {
      v27 = objc_msgSend_initWithArchive_unarchiver_owner_(v28, v29, *(v17 + 80), v13, self);
    }

    else
    {
      v27 = objc_msgSend_initWithArchive_unarchiver_owner_(v28, v29, &TST::_DataStore_default_instance_, v13, self);
    }
  }

  else
  {
    v23 = [TSTTableDataStore alloc];
    v27 = objc_msgSend_initWithOwner_(v23, v24, self, v25, v26);
  }

  dataStore = self->_dataStore;
  self->_dataStore = v27;

  if ((*(v17 + 16) & 4) != 0)
  {
    v41 = *(v17 + 88);
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = sub_22129DD0C;
    v74[3] = &unk_27845E0B8;
    v74[4] = self;
    v42 = v13;
    v43 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v42, v44, v41, v43, 0, v74);
  }

  else
  {
    v31 = [TSTColumnRowUIDMap alloc];
    v36 = objc_msgSend_context(self, v32, v33, v34, v35);
    v71 = 0;
    v72 = 0;
    v73 = 0;
    __p = 0;
    v69 = 0;
    v70 = 0;
    v38 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v31, v37, v36, &v71, &__p);
    columnRowUIDMap = self->_columnRowUIDMap;
    self->_columnRowUIDMap = v38;

    if (__p)
    {
      v69 = __p;
      operator delete(__p);
    }

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }
  }

  if ((*(v17 + 16) & 0x10) != 0)
  {
    v45 = *(v17 + 104);
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = sub_22129DD20;
    v67[3] = &unk_278462760;
    v67[4] = self;
    v46 = v13;
    v47 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v46, v48, v45, v47, 0, v67);
  }

  if (*(v17 + 96))
  {
    v49 = *(v17 + 96);
  }

  else
  {
    v49 = MEMORY[0x277D809E0];
  }

  self->_aggregateFormulaOwnerUID._lower = TSKUIDStruct::loadFromMessage(v49, v40);
  self->_aggregateFormulaOwnerUID._upper = v50;
  self->_categoryColumnWidth = *(v17 + 120);
  v51 = *(v17 + 24);
  if (v51)
  {
    sub_2212A3F50(&self->_summaryRowHeightList.__begin_, *(v17 + 32), (*(v17 + 32) + 8 * v51), v51);
  }

  else
  {
    v71 = 0;
    sub_22129BBC4(&self->_summaryRowHeightList.__begin_, 6uLL, &v71);
  }

  v52 = *(v17 + 40);
  if (v52)
  {
    sub_2212A3F50(&self->_labelRowHeightList.__begin_, *(v17 + 48), (*(v17 + 48) + 8 * v52), v52);
  }

  else
  {
    v71 = 0;
    sub_22129BBC4(&self->_labelRowHeightList.__begin_, 6uLL, &v71);
  }

  v53 = *(v17 + 56);
  if (v53)
  {
    sub_221287820(&self->_labelRowVisibilityList.__begin_, *(v17 + 64), (*(v17 + 64) + 4 * v53), v53);
  }

  else
  {
    LODWORD(v71) = 0;
    sub_22129BDB8(&self->_labelRowVisibilityList.__begin_, 6uLL, &v71);
  }

  if ((*(v17 + 16) & 0x20) != 0)
  {
    v58 = [TSTTableGroupSortOrderUID alloc];
    if (*(v17 + 112))
    {
      v57 = objc_msgSend_initFromArchive_(v58, v59, *(v17 + 112), v60, v61);
    }

    else
    {
      v57 = objc_msgSend_initFromArchive_(v58, v59, &TST::_TableGroupSortOrderUIDArchive_default_instance_, v60, v61);
    }
  }

  else
  {
    v54 = [TSTTableGroupSortOrderUID alloc];
    v57 = objc_msgSend_initWithGroupRules_withTableInfo_(v54, v55, MEMORY[0x277CBEBF8], 0, v56);
  }

  groupSortOrder = self->_groupSortOrder;
  self->_groupSortOrder = v57;

  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_22129DD34;
  v66[3] = &unk_27845E3F8;
  v66[4] = self;
  objc_msgSend_addFinalizeHandler_(v13, v63, v66, v64, v65);
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  objc_msgSend_setMessageVersion_(v4, v5, 0x300020000000ALL, v6, v7);
  v8 = v4;
  google::protobuf::internal::AssignDescriptors();
  v11 = objc_msgSend_messageWithNewFunction_descriptor_(v8, v9, sub_2212A4084, off_2812E4498[86], v10);

  tableInfo = self->_tableInfo;
  if (tableInfo)
  {
    *(v11 + 16) |= 1u;
    v17 = *(v11 + 72);
    if (!v17)
    {
      v18 = *(v11 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x223DA0390](v18);
      *(v11 + 72) = v17;
    }

    objc_msgSend_setWeakReference_message_(v8, v12, tableInfo, v17, v15);
  }

  dataStore = self->_dataStore;
  if (dataStore)
  {
    *(v11 + 16) |= 2u;
    v20 = *(v11 + 80);
    if (!v20)
    {
      v21 = *(v11 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = google::protobuf::Arena::CreateMaybeMessage<TST::DataStore>(v21);
      *(v11 + 80) = v20;
    }

    v22 = objc_msgSend_tsp_isInDocument(self, v12, v13, v14, v15);
    objc_msgSend_saveToArchive_archiver_isInTheDocument_(dataStore, v23, v20, v8, v22);
  }

  columnRowUIDMap = self->_columnRowUIDMap;
  if (columnRowUIDMap)
  {
    *(v11 + 16) |= 4u;
    v25 = *(v11 + 88);
    if (!v25)
    {
      v26 = *(v11 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x223DA0390](v26);
      *(v11 + 88) = v25;
    }

    objc_msgSend_setStrongReference_message_(v8, v12, columnRowUIDMap, v25, v15);
  }

  summaryCellVendor = self->_summaryCellVendor;
  if (summaryCellVendor)
  {
    *(v11 + 16) |= 0x10u;
    v28 = *(v11 + 104);
    if (!v28)
    {
      v29 = *(v11 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x223DA0390](v29);
      *(v11 + 104) = v28;
    }

    objc_msgSend_setStrongReference_message_(v8, v12, summaryCellVendor, v28, v15);
  }

  groupSortOrder = self->_groupSortOrder;
  if (groupSortOrder)
  {
    *(v11 + 16) |= 0x20u;
    v31 = *(v11 + 112);
    if (!v31)
    {
      v32 = *(v11 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = google::protobuf::Arena::CreateMaybeMessage<TST::TableGroupSortOrderUIDArchive>(v32);
      *(v11 + 112) = v31;
    }

    objc_msgSend_encodeToArchive_(groupSortOrder, v12, v31, v14, v15);
  }

  *(v11 + 16) |= 8u;
  v33 = *(v11 + 96);
  if (!v33)
  {
    v34 = *(v11 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = MEMORY[0x223DA0360](v34);
    *(v11 + 96) = v33;
  }

  TSKUIDStruct::saveToMessage(&self->_aggregateFormulaOwnerUID, v33);
  categoryColumnWidth = self->_categoryColumnWidth;
  *(v11 + 16) |= 0x40u;
  *(v11 + 120) = categoryColumnWidth;
  begin = self->_summaryRowHeightList.__begin_;
  end = self->_summaryRowHeightList.__end_;
  v40 = (v11 + 24);
  while (begin != end)
  {
    sub_2212A40F0(&v40, begin++);
  }

  v38 = self->_labelRowHeightList.__begin_;
  v39 = self->_labelRowHeightList.__end_;
  v40 = (v11 + 40);
  while (v38 != v39)
  {
    sub_2212A40F0(&v40, v38++);
  }

  sub_2212A4164(&v40, self->_labelRowVisibilityList.__begin_, self->_labelRowVisibilityList.__end_, (v11 + 56));
}

- (void)upgradeDuringDocumentUpgradeIfNeeded:(unint64_t)a3
{
  objc_msgSend_setUpgrading_(self->_dataStore, a2, 1, v3, v4);
  objc_msgSend_loadAllLazyReferences(self->_dataStore, v7, v8, v9, v10);
  objc_msgSend_upgradeDataStoreCellStorageIfNeededWithTableUID_conditionalStyleOwner_fileFormatVersion_(self->_dataStore, v11, &self->_aggregateFormulaOwnerUID, 0, a3);
  if (a3 <= 0xE000400000000)
  {
    v67 = 0;
    v68 = &v67;
    v69 = 0x5812000000;
    v70 = sub_22129E4C8;
    v71 = sub_22129E4D4;
    v72 = &unk_22188E88F;
    v76[0] = 0;
    v76[1] = 0;
    v73 = 0;
    v74 = 0;
    v75 = v76;
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = sub_22129E4E0;
    v65 = sub_22129E4F0;
    v66 = 0;
    v16 = objc_msgSend_tableInfo(self, v12, v13, v14, v15);
    v21 = objc_msgSend_newCell(v16, v17, v18, v19, v20);

    summaryCellVendor = self->_summaryCellVendor;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_22129E4F8;
    v55[3] = &unk_2784627B0;
    v23 = v21;
    v56 = v23;
    v57 = self;
    v58 = &v61;
    v59 = &v67;
    v60 = a3;
    objc_msgSend_enumerateCellsUsingBlock_(summaryCellVendor, v24, v55, v25, v26);
    v30 = v62[5];
    if (v30)
    {
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = sub_22129EAF4;
      v54[3] = &unk_2784621C0;
      v54[4] = self;
      objc_msgSend_enumerateCellsWithUIDsUsingBlock_(v30, v27, v54, v28, v29);
    }

    if (!TSCECellCoordSet::isEmpty((v68 + 6)))
    {
      v35 = objc_msgSend_tableInfo(self, v31, v32, v33, v34);
      v40 = objc_msgSend_calcEngine(v35, v36, v37, v38, v39);
      objc_msgSend_markCoordsDirty_inOwner_(v40, v41, (v68 + 6), &self->_aggregateFormulaOwnerUID, v42);
    }

    _Block_object_dispose(&v61, 8);
    _Block_object_dispose(&v67, 8);
    sub_22107C860(&v75, v76[0]);
  }

  if (UnsafePointer() > a3 && (objc_msgSend_shouldUseWideRows(self->_dataStore, v43, v44, v45, v46) & 1) == 0)
  {
    v48 = objc_msgSend_tableInfo(self, v43, v47, v45, v46);
    v53 = objc_msgSend_tableSizeClass(v48, v49, v50, v51, v52);

    if (v53 >= 2)
    {
      objc_msgSend_setShouldUseWideRows_(self->_dataStore, v43, 1, v45, v46);
    }
  }

  objc_msgSend_setUpgrading_(self->_dataStore, v43, 0, v45, v46);
}

- (void)upgradeFormulasForGroupByUIDChange
{
  objc_msgSend_willModifyForUpgrade(self, a2, v2, v3, v4);
  objc_msgSend_setUpgradingToSubOwnerUIDs_(self->_summaryCellVendor, v6, 1, v7, v8);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_22129E4E0;
  v23 = sub_22129E4F0;
  v24 = 0;
  summaryCellVendor = self->_summaryCellVendor;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22129EC74;
  v18[3] = &unk_2784627D8;
  v18[4] = self;
  v18[5] = &v19;
  objc_msgSend_enumerateCellsUsingBlock_(summaryCellVendor, v10, v18, v11, v12);
  v16 = v20[5];
  if (v16)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22129EDE8;
    v17[3] = &unk_2784621C0;
    v17[4] = self;
    objc_msgSend_enumerateCellsWithUIDsUsingBlock_(v16, v13, v17, v14, v15);
  }

  objc_msgSend_setUpgradingToSubOwnerUIDs_(self->_summaryCellVendor, v13, 0, v14, v15);
  _Block_object_dispose(&v19, 8);
}

- (void)registerAllFormulasWithCalculationEngine:(id)a3 wasCrossDocumentPaste:(BOOL)a4
{
  v5 = a3;
  v10 = objc_msgSend_tableInfo(self, v6, v7, v8, v9);
  isAPivotTable = objc_msgSend_isAPivotTable(v10, v11, v12, v13, v14);

  if (isAPivotTable)
  {
    objc_msgSend_removeAllFormulasFromOwner_(v5, v16, &self->_aggregateFormulaOwnerUID, v17, v18);
    for (i = 0; i < objc_msgSend_numberOfRows(self, v19, v20, v21, v22); ++i)
    {
      v28 = 0;
      v29 = i;
      while (v28 < objc_msgSend_numberOfColumns(self, v24, v25, v26, v27))
      {
        v46 = v29;
        v31 = objc_msgSend_formulaSpecAtCellID_(self->_dataStore, v19, v29, v21, v22);
        if (v31)
        {
          objc_msgSend_replaceFormula_atCellCoord_inOwner_(v5, v30, v31, &v46, &self->_aggregateFormulaOwnerUID);
        }

        ++v28;
        v29 += 0x100000000;
      }
    }
  }

  else
  {
    objc_msgSend_resetForCategoriesWithForce_(self, v16, 1, v17, v18);
    v36 = objc_msgSend_tableInfo(self, v32, v33, v34, v35);
    v41 = objc_msgSend_groupBy(v36, v37, v38, v39, v40);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_22129EFC0;
    v45[3] = &unk_278462800;
    v45[4] = self;
    objc_msgSend_enumerateAggregates_(v41, v42, v45, v43, v44);
  }
}

- (int)p_setCategoryCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4 formulaReplacer:(id)a5
{
  v8 = a3;
  v9 = a5;
  row = a4->_row;
  column = a4->_column;
  v56 = row;
  v13 = sub_2211A8FF4(&column);
  if (v13 == 255)
  {
    if (a4->_column._lower == *"category column" && a4->_column._upper == *" column")
    {
      objc_msgSend_setCell_atCellUID_(self->_summaryCellVendor, v11, v8, a4, v12);
    }
  }

  else
  {
    objc_msgSend_setCell_atCellUID_(self->_summaryCellVendor, v11, v8, a4, v12);
    v18 = objc_msgSend_newCell(self->_tableInfo, v14, v15, v16, v17);
    v23 = objc_msgSend_newCell(self->_tableInfo, v19, v20, v21, v22);
    v30 = objc_msgSend_columnIndexForColumnUID_(self->_columnRowUIDMap, v24, a4->_column._lower, a4->_column._upper, v25);
    if (v9)
    {
      v31 = v9;
    }

    else
    {
      v31 = objc_msgSend_calcEngine(self->_tableInfo, v26, v27, v28, v29);
    }

    v32 = v31;
    v33 = a4->_row;
    column = a4->_column;
    v56 = v33;
    v34 = sub_2211A9038(&column);
    if (v30 != 0x7FFF && v34)
    {
      column._lower = 0;
      column._upper = &column;
      v56._lower = 0x2020000000;
      LOBYTE(v56._upper) = 0;
      v40 = objc_msgSend_groupBy(self->_tableInfo, v35, v36, v37, v38);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_22129F2D4;
      v48[3] = &unk_278462828;
      v54 = v30;
      v48[4] = self;
      v53 = a4;
      v49 = v18;
      v50 = v23;
      p_column = &column;
      v51 = v32;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v40, v41, v13, v48, v42);
      objc_msgSend_markAllAggregatesAsDirty(v40, v43, v44, v45, v46);

      _Block_object_dispose(&column, 8);
    }
  }

  return 0;
}

- (int)p_setPivotCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4 formulaReplacer:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14 = v9;
  if (v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = objc_msgSend_calcEngine(self->_tableInfo, v10, v11, v12, v13);
  }

  v19 = v15;
  columnRowUIDMap = self->_columnRowUIDMap;
  row = a4->_row;
  v44[0] = a4->_column;
  v44[1] = row;
  v26 = objc_msgSend_cellIDForCellUID_(columnRowUIDMap, v16, v44, v17, v18);
  if (v26 == 0x7FFFFFFF || (v26 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTSummaryModel p_setPivotCell:atCellUID:formulaReplacer:]", v24, v25);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v31, v32);
    v34 = TSKUIDStructCoord::description(a4);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v29, v33, 893, 0, "Attempting to set cell at illegal summary model cell UID:%{public}@", v34);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
  }

  else
  {
    dataStore = self->_dataStore;
    HIBYTE(v43) = objc_msgSend_tsp_isInDocument(self, v22, v23, v24, v25);
    LOBYTE(v43) = 0;
    objc_msgSend_setCell_atCellID_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormula_clearImportWarnings_doRichTextDOLC_(dataStore, v41, v8, v26, &self->_aggregateFormulaOwnerUID, v19, 0, 0, v43);
  }

  return 0;
}

- (int)setCell:(id)a3 atCellUID:(const TSKUIDStructCoord *)a4 formulaReplacer:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (objc_msgSend_isAPivotTable(self->_tableInfo, v10, v11, v12, v13))
  {
    v15 = objc_msgSend_p_setPivotCell_atCellUID_formulaReplacer_(self, v14, v8, a4, v9);
  }

  else
  {
    v15 = objc_msgSend_p_setCategoryCell_atCellUID_formulaReplacer_(self, v14, v8, a4, v9);
  }

  v16 = v15;

  return v16;
}

- (int)setFormulaResultCellsWithCellMap:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_tableInfo(self, v5, v6, v7, v8);
  v14 = objc_msgSend_calcEngine(v9, v10, v11, v12, v13);
  v19 = v14;
  if (v14)
  {
    v20 = v14;
  }

  else
  {
    v21 = objc_msgSend_context(self, v15, v16, v17, v18);
    v26 = objc_msgSend_documentRoot(v21, v22, v23, v24, v25);
    v20 = objc_msgSend_calculationEngine(v26, v27, v28, v29, v30);
  }

  objc_msgSend_willModify(self, v31, v32, v33, v34);
  dataStore = self->_dataStore;
  v42 = objc_msgSend_tsp_isInDocument(self, v36, v37, v38, v39);
  objc_msgSend_setCellMap_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormulas_skipDirtyingNonFormulaCells_doRichTextDOLC_(dataStore, v40, v4, &self->_aggregateFormulaOwnerUID, v20, 0, 1, 0, v42);

  return 0;
}

- (void)setGroupSortOrder:(id)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  groupSortOrder = self->_groupSortOrder;
  self->_groupSortOrder = v4;
}

- (int)insertColumnsAtIndex:(TSUModelColumnIndex)a3 metadatas:(id)a4
{
  v99 = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_msgSend_willModify(self, v7, v8, v9, v10);
  dataStore = self->_dataStore;
  v16 = objc_msgSend_count(v6, v12, v13, v14, v15);
  objc_msgSend_insertColumns_(dataStore, v17, a3._column, v16, v18);
  column = a3._column;
  __src = 0;
  v96 = 0;
  v97 = 0;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v88 = v6;
  v19 = v6;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v91, v98, 16);
  if (v25)
  {
    v26 = *v92;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v92 != v26)
        {
          objc_enumerationMutation(v19);
        }

        v28 = objc_msgSend_columnRowUID(*(*(&v91 + 1) + 8 * i), v21, v22, v23, v24);
        v29 = v21;
        v30 = v96;
        if (v96 >= v97)
        {
          v32 = __src;
          v33 = v96 - __src;
          v34 = (v96 - __src) >> 4;
          v35 = v34 + 1;
          if ((v34 + 1) >> 60)
          {
            sub_22107C148();
          }

          v36 = v97 - __src;
          if ((v97 - __src) >> 3 > v35)
          {
            v35 = v36 >> 3;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFF0)
          {
            v37 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v35;
          }

          if (v37)
          {
            sub_221086F74(&__src, v37);
          }

          v38 = (v96 - __src) >> 4;
          v39 = (16 * v34);
          *v39 = v28;
          v39[1] = v29;
          v31 = 16 * v34 + 16;
          v40 = &v39[-2 * v38];
          memcpy(v40, v32, v33);
          v41 = __src;
          __src = v40;
          v96 = v31;
          v97 = 0;
          if (v41)
          {
            operator delete(v41);
          }
        }

        else
        {
          *v96 = v28;
          *(v30 + 1) = v21;
          v31 = (v30 + 16);
        }

        v96 = v31;
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v91, v98, 16);
    }

    while (v25);
  }

  objc_msgSend_insertColumnsWithUIDs_atIndex_(self->_columnRowUIDMap, v42, &__src, column, v43);
  objc_msgSend_setNeedsFormulaReset_(self, v44, 1, v45, v46);
  v51 = objc_msgSend_tableInfo(self, v47, v48, v49, v50);
  v56 = objc_msgSend_tableSizeClass(v51, v52, v53, v54, v55) > 1;

  if (v56)
  {
    objc_msgSend_setShouldUseWideRows_(self->_dataStore, v57, 1, v59, v60);
  }

  v61 = objc_msgSend_tableInfo(self, v57, v58, v59, v60);
  v66 = objc_msgSend_calcEngine(v61, v62, v63, v64, v65);
  v71 = objc_msgSend_count(v19, v67, v68, v69, v70);
  v90[0] = objc_msgSend_aggregateFormulaOwnerUID(self, v72, v73, v74, v75);
  v90[1] = v76;
  v80 = objc_msgSend_range(self, v76, v77, v78, v79);
  v82 = j__TSUCellRectToTSCERangeCoordinate(v80, v81);
  v84 = v83;
  v85 = j__TSUCellRectToTSCERangeCoordinate(0x7FFF7FFFFFFFLL, 0);
  objc_msgSend_dirtyCellsForInsertionOfColumns_forTable_tableRange_headerRange_(v66, v86, column, v71, v90, v82, v84, v85, v86, v88);

  if (__src)
  {
    v96 = __src;
    operator delete(__src);
  }

  return 0;
}

- (void)removeColumnsAtSummaryIndexes:(id)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  v13 = objc_msgSend_tableInfo(self, v9, v10, v11, v12);
  v18 = objc_msgSend_calcEngine(v13, v14, v15, v16, v17);

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_22129FD7C;
  v32[3] = &unk_27845EBE8;
  v32[4] = self;
  v19 = v18;
  v33 = v19;
  objc_msgSend_enumerateRangesWithOptions_usingBlock_(v4, v20, 2, v32, v21);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22129FF84;
  v31[3] = &unk_27845E958;
  v31[4] = self;
  objc_msgSend_enumerateIndexesUsingBlock_(v4, v22, v31, v23, v24);
  objc_msgSend_removeColumnsAtIndexes_(self->_columnRowUIDMap, v25, v4, v26, v27);
  objc_msgSend_setNeedsFormulaReset_(self, v28, 1, v29, v30);
}

- (void)removeCategoryColumnCellsForRows:(void *)a3
{
  v3 = *a3;
  v4 = *(a3 + 1);
  if (*a3 != v4)
  {
    do
    {
      memset(v13, 0, sizeof(v13));
      TSTMakeCellUID(v13);
      v10 = objc_msgSend_summaryCellVendor(self, v6, v7, v8, v9);
      objc_msgSend_setCell_atCellUID_(v10, v11, 0, v13, v12);

      v3 += 16;
    }

    while (v3 != v4);
  }
}

- (void)p_removeRows:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  objc_msgSend_willModify(self, a2, a3.location, a3.length, v3);
  objc_msgSend_removeRows_(self->_dataStore, v7, location, length, v8);
  columnRowUIDMap = self->_columnRowUIDMap;
  v15 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v10, location, length, v11);
  objc_msgSend_removeRowsAtIndexes_(columnRowUIDMap, v12, v15, v13, v14);
}

- (void)setAggregateType:(unsigned __int8)a3 forColumnUID:(const TSKUIDStruct *)a4 atGroupLevel:(unsigned __int8)a5
{
  v5 = a5;
  v7 = a3;
  objc_msgSend_willModify(self, a2, a3, a4, a5);
  v13 = objc_msgSend_summaryCellVendor(self, v9, v10, v11, v12);
  objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(v13, v14, v7, a4->_lower, a4->_upper, v5);

  v19 = objc_msgSend_tableInfo(self, v15, v16, v17, v18);
  v24 = objc_msgSend_calcEngine(v19, v20, v21, v22, v23);

  v29 = objc_msgSend_tableInfo(self, v25, v26, v27, v28);
  v34 = objc_msgSend_groupBy(v29, v30, v31, v32, v33);
  isEnabled = objc_msgSend_isEnabled(v34, v35, v36, v37, v38);

  v44 = objc_msgSend_tableInfo(self, v40, v41, v42, v43);
  v49 = objc_msgSend_groupBy(v44, v45, v46, v47, v48);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_2212A02D8;
  v53[3] = &unk_278462850;
  v55 = a4;
  v53[4] = self;
  v50 = v24;
  v54 = v50;
  v56 = isEnabled;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v49, v51, v5, v53, v52);
}

- (unsigned)cellValueTypeAtSummaryModelCoord:(TSUModelCellCoord)a3
{
  v14.origin = objc_msgSend_range(self, a2, *&a3, v3, v4);
  v14.size = v7;
  coord = a3._coord;
  v9 = TSUCellRect::contains(&v14, coord);
  if (v9)
  {
    LOBYTE(v9) = objc_msgSend_valueTypeAtCellID_(self->_dataStore, v10, *&a3, v11, v12);
  }

  return v9;
}

- (id)explicitFormatOfKind:(unsigned __int8)a3 atModelCellCoord:(TSUModelCellCoord)a4 currencyIsMostRecentlySet:(BOOL *)a5
{
  v7 = a3;
  v9 = objc_msgSend_newCell(self, a2, a3, *&a4, a5);
  if (!objc_msgSend_getCell_atCellID_(self->_dataStore, v10, v9, *&a4, v11))
  {
    v19 = 0;
    goto LABEL_8;
  }

  v21 = 0;
  v14 = objc_msgSend_formatOfCellFormatKind_isExplicit_(v9, v12, v7, &v21, v13);
  if ((v21 & 1) == 0)
  {

    v19 = 0;
    if (!a5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v19 = v14;
  if (a5)
  {
LABEL_7:
    *a5 = objc_msgSend_currencyIsMostRecentlySet(v9, v15, v16, v17, v18);
  }

LABEL_8:

  return v19;
}

- (BOOL)cellExistsAtCellCoord:(TSUModelCellCoord)a3
{
  v14.origin = objc_msgSend_range(self, a2, *&a3, v3, v4);
  v14.size = v7;
  coord = a3._coord;
  v9 = TSUCellRect::contains(&v14, coord);
  if (v9)
  {
    LOBYTE(v9) = objc_msgSend_cellExistsAtCellID_(self->_dataStore, v10, *&a3, v11, v12);
  }

  return v9;
}

- (TSUModelCellRect)range
{
  v6 = objc_msgSend_numberOfColumns(self->_columnRowUIDMap, a2, v2, v3, v4);
  v11 = v6 | (objc_msgSend_numberOfRows(self->_columnRowUIDMap, v7, v8, v9, v10) << 32);
  v12 = 0;
  result.var0.size = v11;
  result.var0.origin = v12;
  return result;
}

- (id)allRichTextStorages
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTSummaryModel allRichTextStorages]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 1083, 0, "TODO");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  v19 = MEMORY[0x277CBEB98];

  return objc_msgSend_set(v19, v15, v16, v17, v18);
}

- (id)metadataForRowIndex:(TSUModelRowIndex)a3 hidingAction:(unsigned __int8)a4
{
  v5 = *&a3._row;
  if (a3._row == 0x7FFFFFFF)
  {
    v6 = 0;
  }

  else
  {
    v7 = a4;
    v9 = objc_msgSend_rowUIDForRowIndex_(self->_columnRowUIDMap, a2, *&a3._row, a4, v4);
    v6 = objc_msgSend_metadataForRowIndex_hidingAction_uuid_(self->_dataStore, v10, v5, v7, v9, v10);
  }

  return v6;
}

- (id)metadataForColumnIndex:(TSUModelColumnIndex)a3 hidingAction:(unsigned __int8)a4
{
  if (a3._column == 0x7FFF)
  {
    v6 = 0;
  }

  else
  {
    v7 = a4;
    v9 = objc_msgSend_columnUIDForColumnIndex_(self->_columnRowUIDMap, a2, a3._column, a4, v4);
    v6 = objc_msgSend_metadataForColumnIndex_hidingAction_uuid_(self->_dataStore, v10, a3._column, v7, v9, v10);
  }

  return v6;
}

- (id)newCell
{
  v5 = objc_msgSend_baseTableModel(self->_tableInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_newCell(v5, v6, v7, v8, v9);

  return v10;
}

- (void)enumerateCellsForSOSSerializationWithBlock:(id)a3
{
  v4 = a3;
  v21.origin = objc_msgSend_range(self, v5, v6, v7, v8);
  v21.size = v9;
  if (TSUCellRect::isValid(&v21))
  {
    dataStore = self->_dataStore;
    v15 = objc_msgSend_range(self, v10, v11, v12, v13);
    v17 = v16;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2212A0998;
    v19[3] = &unk_278462878;
    v19[4] = self;
    v20 = v4;
    objc_msgSend_enumerateCellStoragesInRange_withBlock_(dataStore, v18, v15, v17, v19);
  }
}

- (BOOL)hasMigratableStylesInCells
{
  isAPivotTable = objc_msgSend_isAPivotTable(self->_tableInfo, a2, v2, v3, v4);
  if (isAPivotTable)
  {
    dataStore = self->_dataStore;

    LOBYTE(isAPivotTable) = objc_msgSend_hasMigratableStylesInCells(dataStore, v7, v8, v9, v10);
  }

  return isAPivotTable;
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v8, v9, v10, v11);
  v17 = objc_msgSend_supportsInlineAttachments(v12, v13, v14, v15, v16);

  if (objc_msgSend_isAPivotTable(self->_tableInfo, v18, v19, v20, v21))
  {
    v62.origin = objc_msgSend_range(self, v22, v23, v24, v25);
    v62.size = v26;
    if (TSUCellRect::isValid(&v62))
    {
      objc_msgSend_adoptStylesheet_withMapper_ownerUID_conditionalStyleOwner_(self->_dataStore, v27, v6, v7, &self->_aggregateFormulaOwnerUID, 0);
    }
  }

  else
  {
    v28 = objc_msgSend_context(self, v22, v23, v24, v25);
    v32 = objc_msgSend_uuidBasedCellMapWithContext_(TSTCellMap, v29, v28, v30, v31);

    v37 = objc_msgSend_newCell(self, v33, v34, v35, v36);
    v42 = objc_msgSend_summaryCellVendor(self, v38, v39, v40, v41);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_2212A0D5C;
    v56[3] = &unk_2784628A0;
    v43 = v37;
    v57 = v43;
    v58 = v6;
    v59 = v7;
    v61 = v17;
    v44 = v32;
    v60 = v44;
    objc_msgSend_enumerateCellsUsingBlock_(v42, v45, v56, v46, v47);

    if (objc_msgSend_count(v44, v48, v49, v50, v51))
    {
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = sub_2212A0E38;
      v55[3] = &unk_2784621C0;
      v55[4] = self;
      objc_msgSend_enumerateCellsWithUIDsUsingBlock_(v44, v52, v55, v53, v54);
    }
  }
}

- (void)addReferencedStylesToSet:(id)a3
{
  v4 = a3;
  if (!objc_msgSend_isAPivotTable(self->_tableInfo, v5, v6, v7, v8))
  {
    v18 = objc_msgSend_summaryCellVendor(self, v9, v10, v11, v12);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2212A1010;
    v22[3] = &unk_278462710;
    v23 = v4;
    objc_msgSend_enumerateCellsUsingBlock_(v18, v19, v22, v20, v21);
    v17 = &v23;

    goto LABEL_5;
  }

  if (objc_msgSend_hasCellOrTextStyles(self->_dataStore, v9, v10, v11, v12))
  {
    dataStore = self->_dataStore;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2212A0FB8;
    v24[3] = &unk_27845E4B8;
    v25 = v4;
    objc_msgSend_replaceStylesUsingBlock_(dataStore, v14, v24, v15, v16);
    v17 = &v25;
LABEL_5:
  }
}

- (void)replaceReferencedStylesUsingBlock:(id)a3
{
  v4 = a3;
  if (!objc_msgSend_isAPivotTable(self->_tableInfo, v5, v6, v7, v8))
  {
    v50 = objc_msgSend_context(self, v9, v10, v11, v12);
    v54 = objc_msgSend_uuidBasedCellMapWithContext_(TSTCellMap, v51, v50, v52, v53);

    v59 = objc_msgSend_newCell(self, v55, v56, v57, v58);
    v64 = objc_msgSend_summaryCellVendor(self, v60, v61, v62, v63);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = sub_2212A1744;
    v77[3] = &unk_2784628F0;
    v77[4] = self;
    v65 = v59;
    v78 = v65;
    v80 = v4;
    v49 = v54;
    v79 = v49;
    objc_msgSend_enumerateCellsUsingBlock_(v64, v66, v77, v67, v68);

    if (objc_msgSend_count(v49, v69, v70, v71, v72))
    {
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = sub_2212A1A0C;
      v76[3] = &unk_2784621C0;
      v76[4] = self;
      objc_msgSend_enumerateCellsWithUIDsUsingBlock_(v49, v73, v76, v74, v75);
    }

    goto LABEL_9;
  }

  if (objc_msgSend_hasCellOrTextStyles(self->_dataStore, v9, v10, v11, v12))
  {
    dataStore = self->_dataStore;
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = sub_2212A1518;
    v86[3] = &unk_27845E4E0;
    v87 = v4;
    objc_msgSend_replaceStylesUsingBlock_(dataStore, v14, v86, v15, v16);
    v21 = objc_msgSend_context(self, v17, v18, v19, v20);
    v25 = objc_msgSend_uuidBasedCellMapWithContext_(TSTCellMap, v22, v21, v23, v24);

    v30 = objc_msgSend_newCell(self, v26, v27, v28, v29);
    v31 = self->_dataStore;
    v36 = objc_msgSend_range(self, v32, v33, v34, v35);
    v38 = v37;
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = sub_2212A1550;
    v82[3] = &unk_2784628C8;
    v39 = v30;
    v83 = v39;
    v84 = self;
    v40 = v25;
    v85 = v40;
    objc_msgSend_enumerateCellStoragesInRange_withBlock_(v31, v41, v36, v38, v82);
    if (objc_msgSend_count(v40, v42, v43, v44, v45))
    {
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = sub_2212A1738;
      v81[3] = &unk_2784621C0;
      v81[4] = self;
      objc_msgSend_enumerateCellsWithUIDsUsingBlock_(v40, v46, v81, v47, v48);
    }

    v49 = v87;
LABEL_9:
  }
}

- (unsigned)p_RowCategoryLevelForCellCoord:(TSUModelCellCoord)a3 isLabel:(BOOL *)a4
{
  v8 = objc_msgSend_translator(self->_tableInfo, a2, *&a3, a4, v4);
  v12 = objc_msgSend_viewCellCoordForSummaryCellCoord_(v8, v9, *&a3, v10, v11);
  v20 = objc_msgSend_groupLevelAtSummaryRow_(v8, v13, v12, v14, v15);
  if (v20 != 255)
  {
    v21 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((objc_msgSend_isAPivotTable(self->_tableInfo, v16, v17, v18, v19) & 1) == 0)
  {
    v20 = objc_msgSend_groupLevelAtLabelRow_(v8, v22, v12, v23, v24);
    v21 = v20 != 255;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v21 = 0;
  LOBYTE(v20) = -1;
  if (a4)
  {
LABEL_6:
    *a4 = v21;
  }

LABEL_7:

  return v20;
}

- (unsigned)p_ColumnCategoryLevelForCellCoord:(TSUModelCellCoord)a3
{
  v5 = a3;
  v6 = objc_msgSend_translator(self->_tableInfo, a2, *&a3, v3, v4);
  v10 = objc_msgSend_viewCellCoordForSummaryCellCoord_(v6, v7, *&v5, v8, v9);
  LOBYTE(v5._coord.row) = objc_msgSend_groupLevelAtSummaryColumn_(v6, v11, WORD2(v10), v12, v13);

  return v5._coord.row;
}

- (unint64_t)p_tableStyleAreaForCellCoord:(TSUModelCellCoord)a3
{
  v7 = objc_msgSend_tableInfo(self, a2, *&a3, v3, v4);
  v12 = objc_msgSend_translator(v7, v8, v9, v10, v11);
  v16 = objc_msgSend_viewCellCoordForSummaryCellCoord_(v12, v13, *&a3, v14, v15);

  v21 = objc_msgSend_tableInfo(self, v17, v18, v19, v20);
  v26 = objc_msgSend_translator(v21, v22, v23, v24, v25);
  v30 = objc_msgSend_tableStyleAreaForCellID_(v26, v27, v16, v28, v29);

  return v30;
}

- (id)defaultCellStyleForCellCoord:(TSUModelCellCoord)a3
{
  v7 = objc_msgSend_tableInfo(self, a2, *&a3, v3, v4);
  v11 = objc_msgSend_p_tableStyleAreaForCellCoord_(self, v8, *&a3, v9, v10);
  v15 = objc_msgSend_defaultCellStyleForTableStyleArea_(v7, v12, v11, v13, v14);

  return v15;
}

- (id)defaultTextStyleForCellCoord:(TSUModelCellCoord)a3
{
  v7 = objc_msgSend_tableInfo(self, a2, *&a3, v3, v4);
  v11 = objc_msgSend_p_tableStyleAreaForCellCoord_(self, v8, *&a3, v9, v10);
  v15 = objc_msgSend_defaultTextStyleForTableStyleArea_(v7, v12, v11, v13, v14);

  return v15;
}

- (id)cellStyleAtModelCellCoord:(TSUModelCellCoord)a3 isDefault:(BOOL *)a4
{
  v6 = 0;
  if (a3._coord.row != 0x7FFFFFFF && (*&a3 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v9 = objc_msgSend_cellStyleAtCellID_(self->_dataStore, a2, *&a3, a4, v4);
    v6 = v9;
    if (a4 || !v9)
    {
      v13 = objc_msgSend_defaultCellStyleForCellCoord_(self, v10, *&a3, v11, v12);
      if (a4)
      {
        if (v6)
        {
          v14 = v13 == v6;
        }

        else
        {
          v14 = 1;
        }

        v15 = v14;
        *a4 = v15;
      }

      if (!v6)
      {
        v13 = v13;
        v6 = v13;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v6;
}

- (id)textStyleAtModelCellCoord:(TSUModelCellCoord)a3 isDefault:(BOOL *)a4
{
  v6 = 0;
  if (a3._coord.row != 0x7FFFFFFF && (*&a3 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v9 = objc_msgSend_textStyleAtCellID_(self->_dataStore, a2, *&a3, a4, v4);
    v6 = v9;
    if (a4 || !v9)
    {
      v13 = objc_msgSend_defaultTextStyleForCellCoord_(self, v10, *&a3, v11, v12);
      if (a4)
      {
        if (v6)
        {
          v14 = v13 == v6;
        }

        else
        {
          v14 = 1;
        }

        v15 = v14;
        *a4 = v15;
      }

      if (!v6)
      {
        v13 = v13;
        v6 = v13;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v6;
}

- (double)heightOfRowAtIndex:(TSUModelRowIndex)a3 isDefault:(BOOL *)a4
{
  v6 = *&a3._row;
  if ((objc_msgSend_isAPivotTable(self->_tableInfo, a2, *&a3._row, a4, v4) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTSummaryModel heightOfRowAtIndex:isDefault:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1398, 0, "Individual row heights can only be used for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  if (v6 == 0x7FFFFFFF)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTSummaryModel heightOfRowAtIndex:isDefault:]", v9, v10);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 1399, 0, "Bad row index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  objc_msgSend_heightOfRowAtIndex_(self->_dataStore, v8, v6, v9, v10);
  v38 = v37;
  v39 = v37;
  if (v37 >= 0.0 && v37 <= 0.0)
  {
    v40 = objc_msgSend_baseTableModel(self->_tableInfo, v33, v34, v35, v36);
    objc_msgSend_defaultRowHeight(v40, v41, v42, v43, v44);
    v39 = v45;
  }

  if (a4)
  {
    *a4 = v38 == 0.0;
  }

  return v39;
}

- (double)widthOfColumnAtIndex:(TSUModelColumnIndex)a3 isDefault:(BOOL *)a4
{
  if ((objc_msgSend_isAPivotTable(self->_tableInfo, a2, *&a3._column, a4, v4) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTSummaryModel widthOfColumnAtIndex:isDefault:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1416, 0, "Individual column widths can only be used for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  if (a3._column == 0x7FFF)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTSummaryModel widthOfColumnAtIndex:isDefault:]", v9, v10);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 1417, 0, "Bad column index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  objc_msgSend_widthOfColumnAtIndex_(self->_dataStore, v8, a3._column, v9, v10);
  v38 = v37;
  v39 = v37;
  if (v37 >= 0.0 && v37 <= 0.0)
  {
    v40 = objc_msgSend_baseTableModel(self->_tableInfo, v33, v34, v35, v36);
    objc_msgSend_defaultColumnWidth(v40, v41, v42, v43, v44);
    v39 = v45;
  }

  if (a4)
  {
    *a4 = v38 == 0.0;
  }

  return v39;
}

- (void)setHeight:(double)a3 ofRowAtIndex:(TSUModelRowIndex)a4
{
  v6 = *&a4._row;
  if ((objc_msgSend_isAPivotTable(self->_tableInfo, a2, *&a4._row, v4, v5) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTSummaryModel setHeight:ofRowAtIndex:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1434, 0, "Individual row heights can only be used for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  if (v6 == 0x7FFFFFFF)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTSummaryModel setHeight:ofRowAtIndex:]", v9, v10);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 1435, 0, "Bad row index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  dataStore = self->_dataStore;

  objc_msgSend_setHeight_ofRowAtIndex_(dataStore, v8, v6, v9, v10);
}

- (void)setWidth:(double)a3 ofColumnAtIndex:(TSUModelColumnIndex)a4
{
  if ((objc_msgSend_isAPivotTable(self->_tableInfo, a2, *&a4._column, v4, v5) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTSummaryModel setWidth:ofColumnAtIndex:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1448, 0, "Individual column widths can only be used for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  if (a4._column == 0x7FFF)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTSummaryModel setWidth:ofColumnAtIndex:]", v9, v10);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 1449, 0, "Bad column index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  dataStore = self->_dataStore;

  objc_msgSend_setWidth_ofColumnAtIndex_(dataStore, v8, a4._column, v9, v10);
}

- (void)setSummaryRowHeight:(double)a3 atCategoryLevel:(unsigned __int8)a4
{
  v6 = a4;
  objc_msgSend_willModify(self, a2, a4, v4, v5);
  self->_summaryRowHeightList.__begin_[v6] = a3;
}

- (void)setLabelRowHeight:(double)a3 atCategoryLevel:(unsigned __int8)a4
{
  v6 = a4;
  objc_msgSend_willModify(self, a2, a4, v4, v5);
  self->_labelRowHeightList.__begin_[v6] = a3;
}

- (void)setLabelRowVisibility:(unint64_t)a3 atCategoryLevel:(unsigned __int8)a4
{
  v5 = a4;
  v6 = a3;
  objc_msgSend_willModify(self, a2, a3, a4, v4);
  if (v6 >= 0x80000000)
  {
    v11 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTSummaryModel setLabelRowVisibility:atCategoryLevel:]", v9, v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v6, v15, 1481, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    LODWORD(v6) = 0x7FFFFFFF;
  }

  self->_labelRowVisibilityList.__begin_[v5] = v6;
}

- (id)currentState
{
  v3 = objc_opt_new();
  v8 = objc_msgSend_summaryRowHeightList(v3, v4, v5, v6, v7);
  sub_2212A41CC(v8, self->_summaryRowHeightList.__begin_, self->_summaryRowHeightList.__end_, self->_summaryRowHeightList.__end_ - self->_summaryRowHeightList.__begin_);
  v13 = objc_msgSend_labelRowHeightList(v3, v9, v10, v11, v12);
  sub_2212A41CC(v13, self->_labelRowHeightList.__begin_, self->_labelRowHeightList.__end_, self->_labelRowHeightList.__end_ - self->_labelRowHeightList.__begin_);
  v18 = objc_msgSend_labelRowVisibilityList(v3, v14, v15, v16, v17);
  sub_2212A42F8(v18, self->_labelRowVisibilityList.__begin_, self->_labelRowVisibilityList.__end_, self->_labelRowVisibilityList.__end_ - self->_labelRowVisibilityList.__begin_);
  v23 = objc_msgSend_summaryCellVendor(self, v19, v20, v21, v22);
  v28 = objc_msgSend_cellMapForWildcardCells(v23, v24, v25, v26, v27);
  objc_msgSend_setCellMap_(v3, v29, v28, v30, v31);

  return v3;
}

- (void)runChange:(id)a3 withSummaryChangeState:(id)a4 migrationHelper:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!objc_msgSend_changeType(v8, v11, v12, v13, v14))
  {
    goto LABEL_23;
  }

  objc_msgSend_willModify(self, v15, v16, v17, v18);
  p_summaryRowHeightList = &self->_summaryRowHeightList;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  sub_2212A4424(&v63, self->_summaryRowHeightList.__begin_, self->_summaryRowHeightList.__end_, self->_summaryRowHeightList.__end_ - self->_summaryRowHeightList.__begin_);
  p_labelRowHeightList = &self->_labelRowHeightList;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  sub_2212A4424(&v60, self->_labelRowHeightList.__begin_, self->_labelRowHeightList.__end_, self->_labelRowHeightList.__end_ - self->_labelRowHeightList.__begin_);
  p_labelRowVisibilityList = &self->_labelRowVisibilityList;
  v58 = 0;
  v59 = 0;
  __p = 0;
  sub_2212A44A0(&__p, self->_labelRowVisibilityList.__begin_, self->_labelRowVisibilityList.__end_, self->_labelRowVisibilityList.__end_ - self->_labelRowVisibilityList.__begin_);
  v26 = objc_msgSend_groupingColumnChanges(v8, v22, v23, v24, v25);
  v31 = *v26;
  v32 = *(v26 + 8);
  while (v31 != v32)
  {
    v33 = *v31;
    if (v33 != 255)
    {
      begin = p_summaryRowHeightList->__begin_;
      p_summaryRowHeightList->__begin_[v33] = 0.0;
      v35 = p_labelRowHeightList->__begin_;
      p_labelRowHeightList->__begin_[v33] = 0.0;
      v36 = p_labelRowVisibilityList->__begin_;
      p_labelRowVisibilityList->__begin_[v33] = 0;
      v37 = v31[1];
      if (v37 != 255)
      {
        begin[v37] = 0.0;
        v35[v37] = 0.0;
        v36[v37] = 0;
      }
    }

    v31 += 2;
  }

  v38 = objc_msgSend_groupingColumnChanges(v8, v27, v28, v29, v30);
  v43 = *v38;
  v44 = *(v38 + 8);
  while (v43 != v44)
  {
    v45 = v43[1];
    if (v45 == 255)
    {
      goto LABEL_16;
    }

    v46 = *v43;
    if (v46 == 255)
    {
      if (!v9)
      {
        goto LABEL_16;
      }

      p_summaryRowHeightList->__begin_[v43[1]] = *(*objc_msgSend_summaryRowHeightList(v9, v39, v40, v41, v42) + 8 * v43[1]);
      p_labelRowHeightList->__begin_[v43[1]] = *(*objc_msgSend_labelRowHeightList(v9, v48, v49, v50, v51) + 8 * v43[1]);
      v56 = objc_msgSend_labelRowVisibilityList(v9, v52, v53, v54, v55);
      v45 = v43[1];
      v47 = (*v56 + 4 * v45);
    }

    else
    {
      p_summaryRowHeightList->__begin_[v45] = *(v63 + v46);
      p_labelRowHeightList->__begin_[v45] = *(v60 + v46);
      v47 = (__p + 4 * v46);
    }

    p_labelRowVisibilityList->__begin_[v45] = *v47;
LABEL_16:
    v43 += 2;
  }

  objc_msgSend_resetForCategoriesWithForce_(self, v39, 1, v41, v42);
  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

LABEL_23:
}

- (void)didCreateGroup:(id)a3
{
  v62[1] = *MEMORY[0x277D85DE8];
  v56 = a3;
  v58 = objc_msgSend_groupUid(v56, v4, v5, v6, v7);
  v9 = v8;
  v13 = objc_msgSend_numberOfRows(self, v8, v10, v11, v12);
  objc_msgSend_willModify(self, v14, v15, v16, v17);
  columnRowUIDMap = self->_columnRowUIDMap;
  v60 = v58;
  v61 = v9;
  memset(__p, 0, 24);
  sub_2212A3CC4(__p, &v60, v62, 1uLL);
  objc_msgSend_insertRowsWithUIDs_atIndex_(columnRowUIDMap, v19, __p, v13, v20);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v25 = objc_msgSend_columnUIDs(self->_columnRowUIDMap, v21, v22, v23, v24);
  v60 = 0;
  v61 = 0;
  v62[0] = 0;
  sub_221086EBC(&v60, *v25, v25[1], (v25[1] - *v25) >> 4);
  v30 = objc_msgSend_tableInfo(self, v26, v27, v28, v29);
  v35 = objc_msgSend_newCell(v30, v31, v32, v33, v34);

  v40 = v60;
  v41 = v61;
  if (v60 != v61)
  {
    v42 = 0;
    v57 = v13;
    do
    {
      v43 = objc_msgSend_summaryCellVendor(self, v36, v37, v38, v39);
      TSTMakeCellUID(__p);
      v46 = objc_msgSend_getCell_atCellUID_(v43, v44, v35, __p, v45) == 0;

      if (v46)
      {
        dataStore = self->_dataStore;
        v48 = objc_msgSend_tableInfo(self, v36, v37, v38, v39);
        v53 = objc_msgSend_calcEngine(v48, v49, v50, v51, v52);
        LOBYTE(v55) = 0;
        objc_msgSend_setCell_atCellID_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormula_clearImportWarnings_(dataStore, v54, v35, v57 | (v42 << 32), &self->_aggregateFormulaOwnerUID, v53, 0, 0, v55);
      }

      ++v42;
      v40 += 16;
    }

    while (v40 != v41);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }
}

- (void)willRemoveGroup:(id)a3
{
  v100 = *MEMORY[0x277D85DE8];
  v92 = a3;
  v8 = objc_msgSend_groupUid(v92, v4, v5, v6, v7);
  v15 = objc_msgSend_rowIndexForRowUID_(self->_columnRowUIDMap, v9, v8, v9, v10);
  if (v15 == 0x7FFFFFFF)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTSummaryModel willRemoveGroup:]", v13, v14);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 1616, 0, "GroupBy tried to remove a summaryRow that doesn't exist in the summaryModel.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  else
  {
    objc_msgSend_willModify(self, v11, v12, v13, v14);
    v31 = objc_msgSend_tableInfo(self, v27, v28, v29, v30);
    v36 = objc_msgSend_calcEngine(v31, v32, v33, v34, v35);
    objc_msgSend_removeAllFormulasFromOwner_(v36, v37, &self->_aggregateFormulaOwnerUID, v38, v39);

    objc_msgSend_p_removeRows_(self, v40, v15, 1, v41);
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v46 = objc_msgSend_tableInfo(self, v42, v43, v44, v45);
    v51 = objc_msgSend_groupBy(v46, v47, v48, v49, v50);
    v56 = objc_msgSend_aggregators(v51, v52, v53, v54, v55);

    v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v95, v99, 16);
    if (v62)
    {
      v93 = *v96;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v96 != v93)
          {
            objc_enumerationMutation(v56);
          }

          v64 = *(*(&v95 + 1) + 8 * i);
          v65 = objc_msgSend_columnRowUIDMap(self, v58, v59, v60, v61);
          v70 = objc_msgSend_columnUid(v64, v66, v67, v68, v69);
          v73 = objc_msgSend_columnIndexForColumnUID_(v65, v71, v70, v71, v72);

          v78 = 0;
          v79 = v73 << 32;
          while (v78 < objc_msgSend_numberOfRows(self, v74, v75, v76, v77))
          {
            v94 = v79;
            v84 = objc_msgSend_formulaSpecAtCellID_(self->_dataStore, v58, v79, v60, v61);
            if (v84)
            {
              v85 = objc_msgSend_tableInfo(self, v80, v81, v82, v83);
              v90 = objc_msgSend_calcEngine(v85, v86, v87, v88, v89);
              objc_msgSend_replaceFormula_atCellCoord_inOwner_(v90, v91, v84, &v94, &self->_aggregateFormulaOwnerUID);
            }

            ++v78;
            ++v79;
          }
        }

        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v58, &v95, v99, 16);
      }

      while (v62);
    }
  }
}

- (void)didChangeGroupByStructure
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  isAPivotTable = objc_msgSend_isAPivotTable(v6, v7, v8, v9, v10);

  if ((isAPivotTable & 1) == 0)
  {

    objc_msgSend_resetForCategories(self, v12, v13, v14, v15);
  }
}

+ (unsigned)categoryLevelForTableStyleArea:(unint64_t)a3
{
  if (a3 - 5 < 0xA)
  {
    return byte_2217E0F80[a3 - 5];
  }

  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTSummaryModel categoryLevelForTableStyleArea:]", v3, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryModel.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 1654, 0, "Calling categoryLevelForTableStyleArea with an invalid style area");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return -1;
}

- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells
{
  if (objc_msgSend_isAPivotTable(self->_tableInfo, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_addPasteboardCustomFormatsToDocumentAndTableReturningBadIDs(self->_dataStore, v6, v7, v8, v9);
    if (objc_msgSend_count(v10, v11, v12, v13, v14))
    {
      v18 = objc_msgSend_cellMapForRepairingPasteboardCustomFormats_(self->_dataStore, v15, v10, v16, v17);
      v23 = v18;
      if (v18)
      {
        if (objc_msgSend_count(v18, v19, v20, v21, v22))
        {
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = sub_2212A33CC;
          v28[3] = &unk_27845DE10;
          v28[4] = self;
          objc_msgSend_enumerateCellsWithIDsUsingBlock_(v23, v24, v28, v25, v26);
        }
      }
    }
  }

  else
  {
    summaryCellVendor = self->_summaryCellVendor;

    objc_msgSend_addPasteboardCustomFormatsToDocumentAndUpdateCells(summaryCellVendor, v6, v7, v8, v9);
  }
}

- (id)mapReassigningPasteboardCustomFormatKeys:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_mapReassigningPasteboardCustomFormatKeys_(self->_summaryCellVendor, v5, v4, v6, v7);

  v12 = objc_msgSend_mapReassigningPasteboardCustomFormatKeys_(self->_dataStore, v9, v8, v10, v11);

  return v12;
}

- (TSKUIDStruct)aggregateFormulaOwnerUID
{
  p_aggregateFormulaOwnerUID = &self->_aggregateFormulaOwnerUID;
  lower = self->_aggregateFormulaOwnerUID._lower;
  upper = p_aggregateFormulaOwnerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 18) = 0;
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 21) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 24) = 0;
  return self;
}

@end