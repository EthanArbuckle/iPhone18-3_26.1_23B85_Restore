@interface TSCHChartGrid
- (BOOL)contentsEqualToGrid:(id)grid;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison;
- (BOOL)p_name:(id)p_name isInArray:(id)array;
- (TSCHChartGrid)init;
- (TSCHNotifyOnModify)objectToNotify;
- (id)columnIdForColumn:(unint64_t)column;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createUUIDArrayWithCount:(unint64_t)count;
- (id)description;
- (id)extractColumnNames:(_NSRange)names returningColumnIds:(id *)ids valueColumns:(id *)columns;
- (id)extractGridValuesReturningRowNames:(id *)names rowIds:(id *)ids columnNames:(id *)columnNames columnIds:(id *)columnIds;
- (id)extractRowNames:(_NSRange)names returningRowIds:(id *)ids valueRows:(id *)rows;
- (id)getNewColumnNameForLocale:(id)locale;
- (id)getNewRowNameForLocale:(id)locale;
- (id)gridAdapterForColumn:(unint64_t)column;
- (id)gridAdapterForColumnConstant;
- (id)gridAdapterForColumnCount;
- (id)gridAdapterForRow:(unint64_t)row;
- (id)gridAdapterForRowConstant;
- (id)gridAdapterForRowCount;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)nameForColumn:(unint64_t)column;
- (id)nameForRow:(unint64_t)row;
- (id)rowIdForRow:(unint64_t)row;
- (id)valueForRow:(unint64_t)row column:(unint64_t)column;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)columnIndexForColumnId:(id)id;
- (unint64_t)noAssertNumberOfColumns;
- (unint64_t)numberOfColumns;
- (unint64_t)numberOfRows;
- (unint64_t)rowIndexForRowId:(id)id;
- (void)adjustRowAndColumnNameListLength;
- (void)generateRowColumnIdMaps;
- (void)insertColumn:(unint64_t)column withName:(id)name;
- (void)insertColumn:(unint64_t)column withName:(id)name withId:(id)id;
- (void)insertColumnNames:(id)names at:(unint64_t)at withIds:(id)ids;
- (void)insertColumnsAt:(unint64_t)at names:(id)names data:(id)data withIds:(id)ids;
- (void)insertRow:(unint64_t)row withName:(id)name;
- (void)insertRow:(unint64_t)row withName:(id)name withId:(id)id;
- (void)insertRowsAt:(unint64_t)at names:(id)names data:(id)data withIds:(id)ids;
- (void)insertRowsNames:(id)names at:(unint64_t)at withIds:(id)ids;
- (void)loadFromPreUFFArchive:(const void *)archive;
- (void)loadFromUnityArchive:(const void *)archive chartInfo:(id)info;
- (void)moveColumns:(_NSRange)columns afterColumn:(int64_t)column;
- (void)moveRows:(_NSRange)rows afterRow:(int64_t)row;
- (void)p_adjustNameListLength:(BOOL)length;
- (void)p_updateColumnIndexMap;
- (void)p_updateIdMapStartingAtIndex:(unint64_t)index isRow:(BOOL)row;
- (void)p_updateRowIndexMap;
- (void)removeColumn:(unint64_t)column;
- (void)removeRow:(unint64_t)row;
- (void)saveToUnityArchive:(void *)archive forCopy:(BOOL)copy;
- (void)setColumnIds:(id)ids;
- (void)setDirection:(int)direction;
- (void)setDirty:(BOOL)dirty;
- (void)setNameForColumn:(unint64_t)column toName:(id)name;
- (void)setNameForRow:(unint64_t)row toName:(id)name;
- (void)setRowIds:(id)ids;
- (void)setValue:(id)value forRow:(unint64_t)row column:(unint64_t)column;
- (void)takeDataFromDictionary:(id)dictionary rowIds:(id)ids columnIds:(id)columnIds;
- (void)updateRowAndColumnIndexMaps;
- (void)validateRowColumnIdMapsAndFix:(BOOL)fix;
- (void)willModify;
@end

@implementation TSCHChartGrid

- (TSCHChartGrid)init
{
  v27.receiver = self;
  v27.super_class = TSCHChartGrid;
  v2 = [(TSCHChartGrid *)&v27 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    rowNames = v2->_rowNames;
    v2->_rowNames = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    columnNames = v2->_columnNames;
    v2->_columnNames = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    values = v2->_values;
    v2->_values = v7;

    v2->_direction = 1;
    *&v2->_addingMultipleRows = 0;
    v2->_nextRowNumber = 1;
    v2->_nextColNumber = 1;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableRowIds = v2->_mutableRowIds;
    v2->_mutableRowIds = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableColumnIds = v2->_mutableColumnIds;
    v2->_mutableColumnIds = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    rowIdToIndexMap = v2->_rowIdToIndexMap;
    v2->_rowIdToIndexMap = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    columnIdToIndexMap = v2->_columnIdToIndexMap;
    v2->_columnIdToIndexMap = v15;

    v21 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, v17, v18, v19, v20);
    v2->_skipUUIDAssertions = objc_msgSend_supportsChartRangeEditingMode(v21, v22, v23, v24, v25);
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, zone);
  v15 = objc_msgSend_init(v10, v11, v12, v13, v14);
  v16 = v15;
  if (v15)
  {
    *(v15 + 8) = self->_direction;
    *(v15 + 12) = self->_dirty;
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = v16[2];
    v16[2] = v17;

    v23 = objc_msgSend_count(self->_rowNames, v19, v20, v21, v22);
    if (v23)
    {
      v28 = v23;
      for (i = 0; i != v28; ++i)
      {
        v30 = v16[2];
        v31 = objc_msgSend_objectAtIndexedSubscript_(self->_rowNames, v24, v25, v26, v27, i);
        v36 = objc_msgSend_copyWithZone_(v31, v32, v33, v34, v35, zone);
        objc_msgSend_addObject_(v30, v37, v38, v39, v40, v36);
      }
    }

    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v42 = v16[3];
    v16[3] = v41;

    v47 = objc_msgSend_count(self->_columnNames, v43, v44, v45, v46);
    if (v47)
    {
      v52 = v47;
      for (j = 0; j != v52; ++j)
      {
        v54 = v16[3];
        v55 = objc_msgSend_objectAtIndexedSubscript_(self->_columnNames, v48, v49, v50, v51, j);
        v60 = objc_msgSend_copyWithZone_(v55, v56, v57, v58, v59, zone);
        objc_msgSend_addObject_(v54, v61, v62, v63, v64, v60);
      }
    }

    v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v66 = v16[4];
    v16[4] = v65;

    v71 = objc_msgSend_count(self->_values, v67, v68, v69, v70);
    if (v71)
    {
      v76 = v71;
      for (k = 0; k != v76; ++k)
      {
        v78 = v16[4];
        v79 = objc_msgSend_objectAtIndexedSubscript_(self->_values, v72, v73, v74, v75, k);
        v84 = objc_msgSend_mutableCopyWithZone_(v79, v80, v81, v82, v83, zone);
        objc_msgSend_addObject_(v78, v85, v86, v87, v88, v84);
      }
    }

    objc_msgSend_generateRowColumnIdMaps(v16, v72, v73, v74, v75);
  }

  return v16;
}

- (BOOL)contentsEqualToGrid:(id)grid
{
  gridCopy = grid;
  v5 = gridCopy;
  if (gridCopy)
  {
    if (self == gridCopy)
    {
      v56 = 1;
      goto LABEL_19;
    }

    v6 = objc_opt_class();
    if (v6 != objc_opt_class())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          isEqualToArray = objc_msgSend_contentsEqualToGrid_(v5, v7, v8, v9, v10, self);
          goto LABEL_18;
        }
      }
    }

    if (self->_dirty == v5->_dirty && self->_direction == v5->_direction)
    {
      v11 = objc_msgSend_numberOfRows(self, v7, v8, v9, v10);
      if (v11 == objc_msgSend_numberOfRows(v5, v12, v13, v14, v15))
      {
        v20 = objc_msgSend_numberOfColumns(self, v16, v17, v18, v19);
        if (v20 == objc_msgSend_numberOfColumns(v5, v21, v22, v23, v24))
        {
          v29 = objc_msgSend_count(self->_rowNames, v25, v26, v27, v28);
          if (v29 == objc_msgSend_count(v5->_rowNames, v30, v31, v32, v33))
          {
            v38 = objc_msgSend_count(self->_columnNames, v34, v35, v36, v37);
            if (v38 == objc_msgSend_count(v5->_columnNames, v39, v40, v41, v42) && objc_msgSend_isEqualToArray_(self->_rowNames, v43, v44, v45, v46, v5->_rowNames) && objc_msgSend_isEqualToArray_(self->_columnNames, v47, v48, v49, v50, v5->_columnNames))
            {
              isEqualToArray = objc_msgSend_isEqualToArray_(self->_values, v51, v52, v53, v54, v5->_values);
LABEL_18:
              v56 = isEqualToArray;
              goto LABEL_19;
            }
          }
        }
      }
    }
  }

  v56 = 0;
LABEL_19:

  return v56;
}

- (void)willModify
{
  v9 = objc_msgSend_objectToNotify(self, a2, v2, v3, v4);
  objc_msgSend_willModify(v9, v5, v6, v7, v8);
}

- (unint64_t)noAssertNumberOfColumns
{
  v5 = objc_msgSend_lastObject(self->_values, a2, v2, v3, v4);
  v10 = objc_msgSend_count(v5, v6, v7, v8, v9);

  return v10;
}

- (unint64_t)numberOfRows
{
  v7 = objc_msgSend_noAssertNumberOfRows(self, a2, v2, v3, v4);
  if (!self->_skipUUIDAssertions && !self->_transitionLevel && v7 > objc_msgSend_count(self->_mutableRowIds, v6, v8, v9, v10))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHChartGrid numberOfRows]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 170, 0, "We do not have enough row UUIDs for the number of rows in the grid.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  return v7;
}

- (unint64_t)numberOfColumns
{
  v7 = objc_msgSend_noAssertNumberOfColumns(self, a2, v2, v3, v4);
  if (!self->_skipUUIDAssertions && !self->_transitionLevel && v7 > objc_msgSend_count(self->_mutableColumnIds, v6, v8, v9, v10))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHChartGrid numberOfColumns]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 176, 0, "We do not have enough column UUIDs for the number of columns in the grid.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  return v7;
}

- (id)nameForRow:(unint64_t)row
{
  if (objc_msgSend_count(self->_rowNames, a2, v3, v4, v5) <= row)
  {
    v12 = &stru_288528678;
  }

  else
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(self->_rowNames, v8, v9, v10, v11, row);
  }

  return v12;
}

- (id)nameForColumn:(unint64_t)column
{
  if (objc_msgSend_count(self->_columnNames, a2, v3, v4, v5) <= column)
  {
    v12 = &stru_288528678;
  }

  else
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(self->_columnNames, v8, v9, v10, v11, column);
  }

  return v12;
}

- (id)valueForRow:(unint64_t)row column:(unint64_t)column
{
  if (objc_msgSend_count(self->_values, a2, v4, v5, v6) <= row)
  {
    v14 = 0;
    v19 = objc_msgSend_count(0, v10, v11, v12, v13);
  }

  else
  {
    v14 = objc_msgSend_objectAtIndexedSubscript_(self->_values, v10, v11, v12, v13, row);
    v19 = objc_msgSend_count(v14, v15, v16, v17, v18);
  }

  if (v19 <= column)
  {
    v24 = 0;
  }

  else
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(v14, v20, v21, v22, v23, column);
  }

  v25 = objc_msgSend_null(MEMORY[0x277CBEB68], v20, v21, v22, v23);
  if (v24 == v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26;

  return v26;
}

- (id)rowIdForRow:(unint64_t)row
{
  if (objc_msgSend_numberOfRows(self, a2, v3, v4, v5) <= row)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHChartGrid rowIdForRow:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
    v23 = objc_msgSend_numberOfRows(self, v19, v20, v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v24, v25, v26, v27, v13, v18, 196, 0, "Index passed %lu is greater than number of rows %lu", row, v23);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  if (objc_msgSend_count(self->_mutableRowIds, v8, v9, v10, v11) <= row)
  {
    v37 = 0;
  }

  else
  {
    objc_opt_class();
    v36 = objc_msgSend_objectAtIndexedSubscript_(self->_mutableRowIds, v32, v33, v34, v35, row);
    v37 = TSUCheckedDynamicCast();
  }

  return v37;
}

- (id)columnIdForColumn:(unint64_t)column
{
  if (objc_msgSend_numberOfColumns(self, a2, v3, v4, v5) <= column)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHChartGrid columnIdForColumn:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
    v23 = objc_msgSend_numberOfColumns(self, v19, v20, v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v24, v25, v26, v27, v13, v18, 201, 0, "Index passed %lu is greater than number of columns %lu", column, v23);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  if (objc_msgSend_count(self->_mutableColumnIds, v8, v9, v10, v11) <= column)
  {
    v37 = 0;
  }

  else
  {
    objc_opt_class();
    v36 = objc_msgSend_objectAtIndexedSubscript_(self->_mutableColumnIds, v32, v33, v34, v35, column);
    v37 = TSUCheckedDynamicCast();
  }

  return v37;
}

- (unint64_t)rowIndexForRowId:(id)id
{
  if (!id)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(self->_rowIdToIndexMap, a2, v3, v4, v5);
  v11 = v6;
  if (v6)
  {
    v12 = objc_msgSend_unsignedIntegerValue(v6, v7, v8, v9, v10);
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (unint64_t)columnIndexForColumnId:(id)id
{
  if (!id)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(self->_columnIdToIndexMap, a2, v3, v4, v5);
  v11 = v6;
  if (v6)
  {
    v12 = objc_msgSend_unsignedIntegerValue(v6, v7, v8, v9, v10);
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v62.receiver = self;
  v62.super_class = TSCHChartGrid;
  v4 = [(TSCHChartGrid *)&v62 description];
  v9 = objc_msgSend_numberOfColumns(self, v5, v6, v7, v8);
  v14 = objc_msgSend_numberOfRows(self, v10, v11, v12, v13);
  v19 = objc_msgSend_stringWithFormat_(v3, v15, v16, v17, v18, @"%@ Cols: %lu Rows: %lu\n", v4, v9, v14);

  v61 = objc_msgSend_componentsJoinedByString_(self->_columnNames, v20, v21, v22, v23, @", ");
  objc_msgSend_appendFormat_(v19, v24, v25, v26, v27, @"\t<Column names: %@>\n", v61);
  v32 = objc_msgSend_count(self->_values, v28, v29, v30, v31);
  v37 = objc_msgSend_count(self->_rowNames, v33, v34, v35, v36);
  if (v32)
  {
    v42 = v37;
    for (i = 0; i != v32; ++i)
    {
      v44 = @"(missing)";
      if (i < v42)
      {
        v44 = objc_msgSend_objectAtIndexedSubscript_(self->_rowNames, v38, v39, v40, v41, i);
      }

      objc_msgSend_appendFormat_(v19, v38, v39, v40, v41, @"\t<Row %lu %@: ", i, v44);
      v49 = objc_msgSend_objectAtIndexedSubscript_(self->_values, v45, v46, v47, v48, i);
      v54 = objc_msgSend_componentsJoinedByString_(v49, v50, v51, v52, v53, @", ");
      objc_msgSend_appendFormat_(v19, v55, v56, v57, v58, @"%@>\n", v54);
    }
  }

  v59 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v38, v39, v40, v41, v19);

  return v59;
}

- (BOOL)p_name:(id)p_name isInArray:(id)array
{
  v24 = *MEMORY[0x277D85DE8];
  p_nameCopy = p_name;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  arrayCopy = array;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v7, v8, v9, v10, &v19, v23, 16);
  if (v12)
  {
    v16 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(arrayCopy);
        }

        if (objc_msgSend_isEqualToString_(*(*(&v19 + 1) + 8 * i), v11, v13, v14, v15, p_nameCopy, v19))
        {
          LOBYTE(v12) = 1;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v11, v13, v14, v15, &v19, v23, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v12;
}

- (id)getNewColumnNameForLocale:(id)locale
{
  if (self->_addingMultipleCols)
  {
    nextColNumber = self->_nextColNumber;
  }

  else
  {
    nextColNumber = 1;
  }

  v9 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, v3, v4, v5, @"Untitled %ld", &stru_288528678, @"TSCharts");
  v13 = 0;
  do
  {
    v14 = nextColNumber;
    v15 = v13;
    ++nextColNumber;
    v13 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v8, v10, v11, v12, v9, v14);
  }

  while ((objc_msgSend_p_name_isInArray_(self, v16, v17, v18, v19, v13, self->_columnNames) & 1) != 0);
  self->_nextColNumber = nextColNumber;

  return v13;
}

- (id)getNewRowNameForLocale:(id)locale
{
  if (self->_addingMultipleRows)
  {
    nextRowNumber = self->_nextRowNumber;
  }

  else
  {
    nextRowNumber = 1;
  }

  v9 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, v3, v4, v5, @"Untitled %ld", &stru_288528678, @"TSCharts");
  v13 = 0;
  do
  {
    v14 = nextRowNumber;
    v15 = v13;
    ++nextRowNumber;
    v13 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v8, v10, v11, v12, v9, v14);
  }

  while ((objc_msgSend_p_name_isInArray_(self, v16, v17, v18, v19, v13, self->_rowNames) & 1) != 0);
  self->_nextRowNumber = nextRowNumber;

  return v13;
}

- (void)p_adjustNameListLength:(BOOL)length
{
  if (length)
  {
    v8 = objc_msgSend_noAssertNumberOfRows(self, a2, v3, v4, v5);
    v12 = 16;
  }

  else
  {
    v8 = objc_msgSend_noAssertNumberOfColumns(self, a2, v3, v4, v5);
    v12 = 24;
  }

  v13 = objc_msgSend_count(*(&self->super.isa + v12), v7, v9, v10, v11);
  v14 = *(&self->super.isa + v12);
  v20 = v14;
  if (v8 >= v13)
  {
    if (v8 > v13 && v13 < v8 - v13)
    {
      v19 = v8 - 2 * v13;
      do
      {
        objc_msgSend_addObject_(v20, v15, v16, v17, v18, &stru_288528678);
        v14 = v20;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    objc_msgSend_removeObjectsInRange_(v14, v15, v16, v17, v18, v8, v13 - v8);
    v14 = v20;
  }
}

- (void)adjustRowAndColumnNameListLength
{
  objc_msgSend_p_adjustNameListLength_(self, a2, v2, v3, v4, 0);

  objc_msgSend_p_adjustNameListLength_(self, v6, v7, v8, v9, 1);
}

- (void)generateRowColumnIdMaps
{
  v6 = objc_msgSend_noAssertNumberOfRows(self, a2, v2, v3, v4);
  v11 = objc_msgSend_createUUIDArrayWithCount_(self, v7, v8, v9, v10, v6);
  v16 = objc_msgSend_mutableCopy(v11, v12, v13, v14, v15);
  mutableRowIds = self->_mutableRowIds;
  self->_mutableRowIds = v16;

  v22 = objc_msgSend_noAssertNumberOfColumns(self, v18, v19, v20, v21);
  v27 = objc_msgSend_createUUIDArrayWithCount_(self, v23, v24, v25, v26, v22);
  v32 = objc_msgSend_mutableCopy(v27, v28, v29, v30, v31);
  mutableColumnIds = self->_mutableColumnIds;
  self->_mutableColumnIds = v32;

  rowIdToIndexMap = self->_rowIdToIndexMap;
  self->_rowIdToIndexMap = 0;

  columnIdToIndexMap = self->_columnIdToIndexMap;
  self->_columnIdToIndexMap = 0;

  objc_msgSend_updateRowAndColumnIndexMaps(self, v36, v37, v38, v39);
}

- (void)validateRowColumnIdMapsAndFix:(BOOL)fix
{
  fixCopy = fix;
  v8 = objc_msgSend_noAssertNumberOfRows(self, a2, v3, v4, v5);
  v13 = objc_msgSend_noAssertNumberOfColumns(self, v9, v10, v11, v12);
  if (v8 != objc_msgSend_count(self->_mutableRowIds, v14, v15, v16, v17) || v13 != objc_msgSend_count(self->_mutableColumnIds, v18, v19, v20, v21))
  {
    if (self->_skipUUIDAssertions || fixCopy)
    {

      objc_msgSend_generateRowColumnIdMaps(self, v18, v19, v20, v21);
    }

    else
    {
      if (v8 > objc_msgSend_count(self->_mutableRowIds, v18, v19, v20, v21) && v8 > objc_msgSend_count(self->_mutableRowIds, v22, v23, v24, v25))
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "[TSCHChartGrid validateRowColumnIdMapsAndFix:]");
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 333, 0, "DataRow count is greater than row Ids count");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
      }

      if (v13 > objc_msgSend_count(self->_mutableColumnIds, v22, v23, v24, v25) && v13 > objc_msgSend_count(self->_mutableColumnIds, v41, v42, v43, v44))
      {
        v45 = MEMORY[0x277D81150];
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "[TSCHChartGrid validateRowColumnIdMapsAndFix:]");
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v52, v53, v54, v55, v46, v51, 337, 0, "DataColumn count is not greater than column Ids count");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
      }

      objc_msgSend_count(self->_mutableRowIds, v41, v42, v43, v44);
      mutableColumnIds = self->_mutableColumnIds;

      objc_msgSend_count(mutableColumnIds, v60, v61, v62, v63);
    }
  }
}

- (id)createUUIDArrayWithCount:(unint64_t)count
{
  for (i = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, v3, v4, v5);
  {
    v13 = objc_msgSend_createUUID(self, v8, v10, v11, v12);
    objc_msgSend_addObject_(i, v14, v15, v16, v17, v13);
  }

  v18 = objc_msgSend_copy(i, v8, v10, v11, v12);

  return v18;
}

- (void)updateRowAndColumnIndexMaps
{
  objc_msgSend_p_updateRowIndexMap(self, a2, v2, v3, v4);

  MEMORY[0x2821F9670](self, sel_p_updateColumnIndexMap, v6, v7, v8);
}

- (void)p_updateRowIndexMap
{
  if (!self->_rowIdToIndexMap)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    rowIdToIndexMap = self->_rowIdToIndexMap;
    self->_rowIdToIndexMap = v6;
  }

  objc_msgSend_p_updateRowMapStartingAtIndex_(self, a2, v2, v3, v4, 0);
}

- (void)p_updateColumnIndexMap
{
  if (!self->_columnIdToIndexMap)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    columnIdToIndexMap = self->_columnIdToIndexMap;
    self->_columnIdToIndexMap = v6;
  }

  objc_msgSend_p_updateColumnMapStartingAtIndex_(self, a2, v2, v3, v4, 0);
}

- (void)p_updateIdMapStartingAtIndex:(unint64_t)index isRow:(BOOL)row
{
  v6 = 48;
  if (row)
  {
    v6 = 40;
  }

  v7 = *(&self->super.isa + v6);
  if (row)
  {
    v8 = 72;
  }

  else
  {
    v8 = 80;
  }

  v32 = v7;
  v9 = *(&self->super.isa + v8);
  if (objc_msgSend_count(v32, v10, v11, v12, v13) > index)
  {
    do
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(v32, v14, v15, v16, v17, index);
      v23 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v19, v20, v21, v22, index);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v24, v25, v26, v27, v23, v18);

      ++index;
    }

    while (index < objc_msgSend_count(v32, v28, v29, v30, v31));
  }
}

- (void)setRowIds:(id)ids
{
  v7 = objc_msgSend_mutableCopy(ids, a2, v3, v4, v5);
  mutableRowIds = self->_mutableRowIds;
  self->_mutableRowIds = v7;

  rowIdToIndexMap = self->_rowIdToIndexMap;
  self->_rowIdToIndexMap = 0;

  objc_msgSend_p_updateRowIndexMap(self, v10, v11, v12, v13);
}

- (void)setColumnIds:(id)ids
{
  v7 = objc_msgSend_mutableCopy(ids, a2, v3, v4, v5);
  mutableColumnIds = self->_mutableColumnIds;
  self->_mutableColumnIds = v7;

  columnIdToIndexMap = self->_columnIdToIndexMap;
  self->_columnIdToIndexMap = 0;

  MEMORY[0x2821F9670](self, sel_p_updateColumnIndexMap, v10, v11, v12);
}

- (void)setDirection:(int)direction
{
  if (self->_direction != direction)
  {
    objc_msgSend_willModify(self, a2, v4, v5, v6);
    self->_direction = direction;

    objc_msgSend_setDirty_(self, v9, v10, v11, v12, 1);
  }
}

- (void)setDirty:(BOOL)dirty
{
  if (self->_dirty != dirty)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5);
    self->_dirty = dirty;
  }
}

- (void)insertRow:(unint64_t)row withName:(id)name withId:(id)id
{
  nameCopy = name;
  idCopy = id;
  if (!idCopy)
  {
    if (!self->_skipUUIDAssertions)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartGrid insertRow:withName:withId:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 455, 0, "Invalid nil UUID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    }

    idCopy = objc_msgSend_createUUID(self, v8, v10, v11, v12);
  }

  v28 = objc_msgSend_numberOfColumns(self, v8, v10, v11, v12);
  v33 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30, v31, v32);
  for (i = objc_msgSend_null(MEMORY[0x277CBEB68], v34, v35, v36, v37);
  {
    objc_msgSend_addObject_(v33, v38, v40, v41, v42, i);
  }

  objc_msgSend_willModify(self, v38, v40, v41, v42);
  objc_msgSend_insertObject_atIndex_(self->_values, v43, v44, v45, v46, v33, row);
  objc_msgSend_insertObject_atIndex_(self->_rowNames, v47, v48, v49, v50, nameCopy, row);
  mutableRowIds = self->_mutableRowIds;
  objc_opt_class();
  v52 = TSUCheckedDynamicCast();
  objc_msgSend_insertObject_atIndex_(mutableRowIds, v53, v54, v55, v56, v52, row);

  objc_msgSend_p_updateRowMapStartingAtIndex_(self, v57, v58, v59, v60, row);
  objc_msgSend_setDirty_(self, v61, v62, v63, v64, 1);
}

- (void)insertColumn:(unint64_t)column withName:(id)name withId:(id)id
{
  v70 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  idCopy = id;
  if (!idCopy)
  {
    if (!self->_skipUUIDAssertions)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCHChartGrid insertColumn:withName:withId:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 478, 0, "Invalid nil UUID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }

    idCopy = objc_msgSend_createUUID(self, v9, v11, v12, v13);
  }

  objc_msgSend_willModify(self, v9, v11, v12, v13);
  v33 = objc_msgSend_null(MEMORY[0x277CBEB68], v29, v30, v31, v32);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v34 = self->_values;
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, v36, v37, v38, &v65, v69, 16);
  if (v39)
  {
    v44 = v39;
    v45 = *v66;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v66 != v45)
        {
          objc_enumerationMutation(v34);
        }

        objc_msgSend_insertObject_atIndex_(*(*(&v65 + 1) + 8 * i), v40, v41, v42, v43, v33, column, v65);
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v40, v41, v42, v43, &v65, v69, 16);
    }

    while (v44);
  }

  objc_msgSend_insertObject_atIndex_(self->_columnNames, v47, v48, v49, v50, nameCopy, column);
  mutableColumnIds = self->_mutableColumnIds;
  objc_opt_class();
  v52 = TSUCheckedDynamicCast();
  objc_msgSend_insertObject_atIndex_(mutableColumnIds, v53, v54, v55, v56, v52, column);

  objc_msgSend_p_updateColumnMapStartingAtIndex_(self, v57, v58, v59, v60, column);
  objc_msgSend_setDirty_(self, v61, v62, v63, v64, 1);
}

- (void)setNameForRow:(unint64_t)row toName:(id)name
{
  nameCopy = name;
  if (objc_msgSend_count(self->_rowNames, v6, v7, v8, v9) <= row)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartGrid setNameForRow:toName:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
    v25 = objc_msgSend_count(self->_rowNames, v21, v22, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v26, v27, v28, v29, v15, v20, 496, 0, "invalid row index %lu to array of count %lu", row, v25);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  if (objc_msgSend_count(self->_rowNames, v10, v11, v12, v13) > row)
  {
    objc_msgSend_willModify(self, v34, v35, v36, v37);
    objc_msgSend_replaceObjectAtIndex_withObject_(self->_rowNames, v38, v39, v40, v41, row, nameCopy);
    objc_msgSend_setDirty_(self, v42, v43, v44, v45, 1);
  }
}

- (void)setNameForColumn:(unint64_t)column toName:(id)name
{
  nameCopy = name;
  if (objc_msgSend_count(self->_columnNames, v6, v7, v8, v9) <= column)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartGrid setNameForColumn:toName:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
    v25 = objc_msgSend_count(self->_columnNames, v21, v22, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v26, v27, v28, v29, v15, v20, 505, 0, "invalid column index %lu to array of count %lu", column, v25);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  if (objc_msgSend_count(self->_columnNames, v10, v11, v12, v13) > column)
  {
    objc_msgSend_willModify(self, v34, v35, v36, v37);
    objc_msgSend_replaceObjectAtIndex_withObject_(self->_columnNames, v38, v39, v40, v41, column, nameCopy);
    objc_msgSend_setDirty_(self, v42, v43, v44, v45, 1);
  }
}

- (void)removeRow:(unint64_t)row
{
  objc_msgSend_willModify(self, a2, v3, v4, v5);
  if (objc_msgSend_count(self->_mutableRowIds, v8, v9, v10, v11) > row)
  {
    objc_msgSend_removeObjectAtIndex_(self->_values, v12, v13, v14, v15, row);
    objc_msgSend_removeObjectAtIndex_(self->_rowNames, v16, v17, v18, v19, row);
    rowIdToIndexMap = self->_rowIdToIndexMap;
    objc_opt_class();
    v25 = objc_msgSend_objectAtIndexedSubscript_(self->_mutableRowIds, v21, v22, v23, v24, row);
    v26 = TSUCheckedDynamicCast();
    objc_msgSend_setObject_forKeyedSubscript_(rowIdToIndexMap, v27, v28, v29, v30, 0, v26);

    objc_msgSend_removeObjectAtIndex_(self->_mutableRowIds, v31, v32, v33, v34, row);
    objc_msgSend_p_updateRowMapStartingAtIndex_(self, v35, v36, v37, v38, row);
  }

  objc_msgSend_setDirty_(self, v12, v13, v14, v15, 1);
}

- (void)removeColumn:(unint64_t)column
{
  v53 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, v3, v4, v5);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = self->_values;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v48, v52, 16);
  if (v13)
  {
    v18 = v13;
    v19 = *v49;
    do
    {
      v20 = 0;
      do
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_removeObjectAtIndex_(*(*(&v48 + 1) + 8 * v20++), v14, v15, v16, v17, column, v48);
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, v15, v16, v17, &v48, v52, 16);
    }

    while (v18);
  }

  if (objc_msgSend_count(self->_mutableColumnIds, v21, v22, v23, v24) > column)
  {
    objc_msgSend_removeObjectAtIndex_(self->_columnNames, v25, v26, v27, v28, column);
    columnIdToIndexMap = self->_columnIdToIndexMap;
    objc_opt_class();
    v34 = objc_msgSend_objectAtIndexedSubscript_(self->_mutableColumnIds, v30, v31, v32, v33, column);
    v35 = TSUCheckedDynamicCast();
    objc_msgSend_setObject_forKeyedSubscript_(columnIdToIndexMap, v36, v37, v38, v39, 0, v35);

    objc_msgSend_removeObjectAtIndex_(self->_mutableColumnIds, v40, v41, v42, v43, column);
    objc_msgSend_p_updateColumnMapStartingAtIndex_(self, v44, v45, v46, v47, column);
  }

  objc_msgSend_setDirty_(self, v25, v26, v27, v28, 1, v48);
}

- (void)setValue:(id)value forRow:(unint64_t)row column:(unint64_t)column
{
  valueCopy = value;
  objc_msgSend_willModify(self, v8, v9, v10, v11);
  if (valueCopy)
  {
    v16 = valueCopy;
  }

  else
  {
    v16 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13, v14, v15);
  }

  v21 = v16;
  v22 = objc_msgSend_objectAtIndexedSubscript_(self->_values, v17, v18, v19, v20, row);
  objc_msgSend_replaceObjectAtIndex_withObject_(v22, v23, v24, v25, v26, column, v21);

  objc_msgSend_setDirty_(self, v27, v28, v29, v30, 1);
}

- (void)moveRows:(_NSRange)rows afterRow:(int64_t)row
{
  length = rows.length;
  location = rows.location;
  v11 = objc_msgSend_p_uuidsForRows_(self, a2, v4, v5, v6);
  v23 = 0;
  v16 = objc_msgSend_extractRowNames_returningRowIds_valueRows_(self, v12, v13, v14, v15, location, length, 0, &v23);
  v18 = v23;
  v22 = 1 - length;
  if (location >= row)
  {
    v22 = 1;
  }

  objc_msgSend_insertRowsAt_names_data_withIds_(self, v17, v19, v20, v21, v22 + row, v16, v18, v11);
}

- (void)moveColumns:(_NSRange)columns afterColumn:(int64_t)column
{
  length = columns.length;
  location = columns.location;
  v11 = objc_msgSend_p_uuidsForColumns_(self, a2, v4, v5, v6);
  v23 = 0;
  v16 = objc_msgSend_extractColumnNames_returningColumnIds_valueColumns_(self, v12, v13, v14, v15, location, length, 0, &v23);
  v18 = v23;
  v22 = 1 - length;
  if (location >= column)
  {
    v22 = 1;
  }

  objc_msgSend_insertColumnsAt_names_data_withIds_(self, v17, v19, v20, v21, v22 + column, v16, v18, v11);
}

- (id)extractRowNames:(_NSRange)names returningRowIds:(id *)ids valueRows:(id *)rows
{
  length = names.length;
  location = names.location;
  v14 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v5, v6, v7);
  if (ids)
  {
    v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v15, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  rowsCopy = rows;
  if (rows)
  {
    rows = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v15, v16, v17);
  }

  objc_msgSend_willModify(self, v13, v15, v16, v17);
  for (; length; --length)
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(self->_rowNames, v19, v20, v21, v22, location);
    objc_msgSend_addObject_(v14, v24, v25, v26, v27, v23);

    objc_opt_class();
    v32 = objc_msgSend_objectAtIndexedSubscript_(self->_mutableRowIds, v28, v29, v30, v31, location);
    v33 = TSUCheckedDynamicCast();
    objc_msgSend_addObject_(v18, v34, v35, v36, v37, v33);

    v42 = objc_msgSend_objectAtIndexedSubscript_(self->_values, v38, v39, v40, v41, location);
    objc_msgSend_addObject_(rows, v43, v44, v45, v46, v42);

    objc_msgSend_removeObjectAtIndex_(self->_rowNames, v47, v48, v49, v50, location);
    objc_msgSend_removeObjectAtIndex_(self->_values, v51, v52, v53, v54, location);
    rowIdToIndexMap = self->_rowIdToIndexMap;
    objc_opt_class();
    v60 = objc_msgSend_objectAtIndexedSubscript_(self->_mutableRowIds, v56, v57, v58, v59, location);
    v61 = TSUCheckedDynamicCast();
    objc_msgSend_setObject_forKeyedSubscript_(rowIdToIndexMap, v62, v63, v64, v65, 0, v61);

    objc_msgSend_removeObjectAtIndex_(self->_mutableRowIds, v66, v67, v68, v69, location);
  }

  objc_msgSend_p_updateRowMapStartingAtIndex_(self, v19, v20, v21, v22, location);
  objc_msgSend_setDirty_(self, v70, v71, v72, v73, 1);
  if (ids)
  {
    if (*ids)
    {
      v78 = MEMORY[0x277D81150];
      v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, v75, v76, v77, "[TSCHChartGrid extractRowNames:returningRowIds:valueRows:]");
      v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v81, v82, v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v85, v86, v87, v88, v79, v84, 607, 0, "expected nil value for '%{public}s'", "*outRowIds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90, v91, v92);
    }

    v93 = v18;
    *ids = v18;
  }

  if (rowsCopy)
  {
    if (*rowsCopy)
    {
      v94 = MEMORY[0x277D81150];
      v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, v75, v76, v77, "[TSCHChartGrid extractRowNames:returningRowIds:valueRows:]");
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, v97, v98, v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v94, v101, v102, v103, v104, v95, v100, 612, 0, "expected nil value for '%{public}s'", "*outValueRows");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v106, v107, v108);
    }

    rowsCopy2 = rows;
    *rowsCopy = rows;
  }

  return v14;
}

- (id)extractColumnNames:(_NSRange)names returningColumnIds:(id *)ids valueColumns:(id *)columns
{
  length = names.length;
  location = names.location;
  v142 = *MEMORY[0x277D85DE8];
  v14 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v5, v6, v7);
  if (ids)
  {
    v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v15, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  selfCopy = self;
  if (!columns)
  {
    objc_msgSend_willModify(self, v13, v15, v16, v17);
LABEL_19:
    v136 = 0;
    if (!length)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v19 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v15, v16, v17);
  objc_msgSend_willModify(self, v20, v21, v22, v23);
  v136 = v19;
  if (!v19)
  {
    goto LABEL_19;
  }

  idsCopy = ids;
  v132 = v18;
  columnsCopy = columns;
  v134 = v14;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v28 = self->_values;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, v30, v31, v32, &v137, v141, 16);
  if (v33)
  {
    v38 = v33;
    v39 = *v138;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v138 != v39)
        {
          objc_enumerationMutation(v28);
        }

        v41 = *(*(&v137 + 1) + 8 * i);
        v43 = objc_msgSend_array(MEMORY[0x277CBEB18], v34, v35, v36, v37);
        if (length)
        {
          v47 = length;
          do
          {
            v48 = objc_msgSend_objectAtIndexedSubscript_(v41, v42, v44, v45, v46, location);
            objc_msgSend_addObject_(v43, v49, v50, v51, v52, v48);

            objc_msgSend_removeObjectAtIndex_(v41, v53, v54, v55, v56, location);
            --v47;
          }

          while (v47);
        }

        objc_msgSend_addObject_(v136, v42, v44, v45, v46, v43);
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v34, v35, v36, v37, &v137, v141, 16);
    }

    while (v38);
  }

  columns = columnsCopy;
  v14 = v134;
  ids = idsCopy;
  v18 = v132;
  for (self = selfCopy; length; --length)
  {
LABEL_20:
    v57 = objc_msgSend_objectAtIndexedSubscript_(self->_columnNames, v24, v25, v26, v27, location);
    objc_msgSend_addObject_(v14, v58, v59, v60, v61, v57);

    objc_msgSend_removeObjectAtIndex_(self->_columnNames, v62, v63, v64, v65, location);
    objc_opt_class();
    v70 = objc_msgSend_objectAtIndexedSubscript_(self->_mutableColumnIds, v66, v67, v68, v69, location);
    v71 = TSUCheckedDynamicCast();
    objc_msgSend_addObject_(v18, v72, v73, v74, v75, v71);

    columnIdToIndexMap = selfCopy->_columnIdToIndexMap;
    objc_opt_class();
    v81 = objc_msgSend_objectAtIndexedSubscript_(selfCopy->_mutableColumnIds, v77, v78, v79, v80, location);
    v82 = TSUCheckedDynamicCast();
    objc_msgSend_setObject_forKeyedSubscript_(columnIdToIndexMap, v83, v84, v85, v86, 0, v82);

    self = selfCopy;
    objc_msgSend_removeObjectAtIndex_(selfCopy->_mutableColumnIds, v87, v88, v89, v90, location);
  }

LABEL_21:
  objc_msgSend_p_updateColumnMapStartingAtIndex_(self, v24, v25, v26, v27, location);
  objc_msgSend_setDirty_(self, v91, v92, v93, v94, 1);
  if (ids)
  {
    if (*ids)
    {
      v99 = MEMORY[0x277D81150];
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v96, v97, v98, "[TSCHChartGrid extractColumnNames:returningColumnIds:valueColumns:]");
      v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, v102, v103, v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v106, v107, v108, v109, v100, v105, 652, 0, "expected nil value for '%{public}s'", "*outColumnIds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v110, v111, v112, v113);
    }

    v114 = v18;
    *ids = v18;
  }

  if (columns)
  {
    if (*columns)
    {
      v115 = MEMORY[0x277D81150];
      v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v96, v97, v98, "[TSCHChartGrid extractColumnNames:returningColumnIds:valueColumns:]");
      v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, v118, v119, v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v122, v123, v124, v125, v116, v121, 657, 0, "expected nil value for '%{public}s'", "*outValueColumns");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v126, v127, v128, v129);
    }

    *columns = v136;
  }

  return v14;
}

- (id)extractGridValuesReturningRowNames:(id *)names rowIds:(id *)ids columnNames:(id *)columnNames columnIds:(id *)columnIds
{
  objc_msgSend_willModify(self, a2, v6, v7, v8);
  if (names)
  {
    if (*names)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCHChartGrid extractGridValuesReturningRowNames:rowIds:columnNames:columnIds:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 668, 0, "expected nil value for '%{public}s'", "*outRowNames");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }

    *names = objc_msgSend_copy(self->_rowNames, v14, v15, v16, v17);
  }

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  rowNames = self->_rowNames;
  self->_rowNames = v33;

  if (ids)
  {
    if (*ids)
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "[TSCHChartGrid extractGridValuesReturningRowNames:rowIds:columnNames:columnIds:]");
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 674, 0, "expected nil value for '%{public}s'", "*outRowIds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
    }

    *ids = objc_msgSend_copy(self->_mutableRowIds, v35, v36, v37, v38);
  }

  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mutableRowIds = self->_mutableRowIds;
  self->_mutableRowIds = v54;

  v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
  rowIdToIndexMap = self->_rowIdToIndexMap;
  self->_rowIdToIndexMap = v56;

  if (columnNames)
  {
    if (*columnNames)
    {
      v62 = MEMORY[0x277D81150];
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "[TSCHChartGrid extractGridValuesReturningRowNames:rowIds:columnNames:columnIds:]");
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v69, v70, v71, v72, v63, v68, 682, 0, "expected nil value for '%{public}s'", "*outColumnNames");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
    }

    *columnNames = objc_msgSend_copy(self->_columnNames, v58, v59, v60, v61);
  }

  v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
  columnNames = self->_columnNames;
  self->_columnNames = v77;

  if (columnIds)
  {
    if (*columnIds)
    {
      v83 = MEMORY[0x277D81150];
      v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v80, v81, v82, "[TSCHChartGrid extractGridValuesReturningRowNames:rowIds:columnNames:columnIds:]");
      v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, v86, v87, v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v90, v91, v92, v93, v84, v89, 688, 0, "expected nil value for '%{public}s'", "*outColumnIds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95, v96, v97);
    }

    *columnIds = objc_msgSend_copy(self->_mutableColumnIds, v79, v80, v81, v82);
  }

  v98 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mutableColumnIds = self->_mutableColumnIds;
  self->_mutableColumnIds = v98;

  v100 = objc_alloc_init(MEMORY[0x277CBEB38]);
  columnIdToIndexMap = self->_columnIdToIndexMap;
  self->_columnIdToIndexMap = v100;

  v106 = objc_msgSend_copy(self->_values, v102, v103, v104, v105);
  v107 = objc_alloc_init(MEMORY[0x277CBEB18]);
  values = self->_values;
  self->_values = v107;

  objc_msgSend_setDirty_(self, v109, v110, v111, v112, 1);

  return v106;
}

- (void)insertRowsAt:(unint64_t)at names:(id)names data:(id)data withIds:(id)ids
{
  namesCopy = names;
  dataCopy = data;
  idsCopy = ids;
  if (!objc_msgSend_count(idsCopy, v12, v13, v14, v15))
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHChartGrid insertRowsAt:names:data:withIds:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 704, 0, "No UUIDS for rows");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  objc_msgSend_willModify(self, v16, v17, v18, v19);
  v39 = objc_msgSend_count(namesCopy, v35, v36, v37, v38);
  if (v39 >= 1)
  {
    v44 = v39 + 1;
    do
    {
      if (dataCopy)
      {
        objc_opt_class();
        v49 = objc_msgSend_objectAtIndexedSubscript_(dataCopy, v45, v46, v47, v48, v44 - 2);
        v50 = TSUCheckedDynamicCast();
      }

      else
      {
        v50 = objc_msgSend_array(MEMORY[0x277CBEB18], v40, v41, v42, v43);
      }

      objc_msgSend_insertObject_atIndex_(self->_values, v51, v52, v53, v54, v50, at);
      rowNames = self->_rowNames;
      v60 = objc_msgSend_objectAtIndexedSubscript_(namesCopy, v56, v57, v58, v59, v44 - 2);
      objc_msgSend_insertObject_atIndex_(rowNames, v61, v62, v63, v64, v60, at);

      mutableRowIds = self->_mutableRowIds;
      objc_opt_class();
      v70 = objc_msgSend_objectAtIndexedSubscript_(idsCopy, v66, v67, v68, v69, v44 - 2);
      v71 = TSUCheckedDynamicCast();
      objc_msgSend_insertObject_atIndex_(mutableRowIds, v72, v73, v74, v75, v71, at);

      --v44;
    }

    while (v44 > 1);
  }

  objc_msgSend_p_updateRowMapStartingAtIndex_(self, v40, v41, v42, v43, at);
  objc_msgSend_setDirty_(self, v76, v77, v78, v79, 1);
}

- (void)insertColumnsAt:(unint64_t)at names:(id)names data:(id)data withIds:(id)ids
{
  namesCopy = names;
  dataCopy = data;
  idsCopy = ids;
  if (!objc_msgSend_count(idsCopy, v11, v12, v13, v14))
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCHChartGrid insertColumnsAt:names:data:withIds:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 722, 0, "No UUIDS for columns");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  objc_msgSend_willModify(self, v15, v16, v17, v18, dataCopy);
  v38 = objc_msgSend_count(namesCopy, v34, v35, v36, v37);
  v43 = v38 - 1;
  if (v38 - 1 >= 0)
  {
    v44 = v38 - 1;
    do
    {
      columnNames = self->_columnNames;
      v46 = objc_msgSend_objectAtIndexedSubscript_(namesCopy, v39, v40, v41, v42, v44);
      objc_msgSend_insertObject_atIndex_(columnNames, v47, v48, v49, v50, v46, at);

      mutableColumnIds = self->_mutableColumnIds;
      objc_opt_class();
      v56 = objc_msgSend_objectAtIndexedSubscript_(idsCopy, v52, v53, v54, v55, v44);
      v57 = TSUCheckedDynamicCast();
      objc_msgSend_insertObject_atIndex_(mutableColumnIds, v58, v59, v60, v61, v57, at);

      --v44;
    }

    while (v44 != -1);
  }

  objc_msgSend_p_updateColumnMapStartingAtIndex_(self, v39, v40, v41, v42, at);
  v66 = objc_msgSend_numberOfRows(self, v62, v63, v64, v65);
  if (v66)
  {
    v71 = v66;
    for (i = 0; i != v71; ++i)
    {
      v73 = objc_msgSend_objectAtIndexedSubscript_(self->_values, v67, v68, v69, v70, i);
      v79 = objc_msgSend_objectAtIndex_(v90, v74, v75, v76, v77, i);
      v83 = v43;
      if ((v43 & 0x8000000000000000) == 0)
      {
        do
        {
          v84 = objc_msgSend_objectAtIndexedSubscript_(v79, v78, v80, v81, v82, v83);
          objc_msgSend_insertObject_atIndex_(v73, v85, v86, v87, v88, v84, at);

          --v83;
        }

        while (v83 != -1);
      }
    }
  }

  objc_msgSend_setDirty_(self, v67, v68, v69, v70, 1);
}

- (void)insertRowsNames:(id)names at:(unint64_t)at withIds:(id)ids
{
  namesCopy = names;
  idsCopy = ids;
  if (!objc_msgSend_count(idsCopy, v9, v10, v11, v12))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCHChartGrid insertRowsNames:at:withIds:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 749, 0, "No UUIDS for rows");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  objc_msgSend_willModify(self, v13, v14, v15, v16);
  v36 = objc_msgSend_count(namesCopy, v32, v33, v34, v35);
  if (v36 >= 1)
  {
    v41 = v36 + 1;
    do
    {
      values = self->_values;
      v43 = objc_msgSend_array(MEMORY[0x277CBEB18], v37, v38, v39, v40);
      objc_msgSend_insertObject_atIndex_(values, v44, v45, v46, v47, v43, at);

      rowNames = self->_rowNames;
      v53 = objc_msgSend_objectAtIndexedSubscript_(namesCopy, v49, v50, v51, v52, v41 - 2);
      objc_msgSend_insertObject_atIndex_(rowNames, v54, v55, v56, v57, v53, at);

      mutableRowIds = self->_mutableRowIds;
      objc_opt_class();
      v63 = objc_msgSend_objectAtIndexedSubscript_(idsCopy, v59, v60, v61, v62, v41 - 2);
      v64 = TSUCheckedDynamicCast();
      objc_msgSend_insertObject_atIndex_(mutableRowIds, v65, v66, v67, v68, v64, at);

      --v41;
    }

    while (v41 > 1);
  }

  objc_msgSend_p_updateRowMapStartingAtIndex_(self, v37, v38, v39, v40, at);
  objc_msgSend_setDirty_(self, v69, v70, v71, v72, 1);
}

- (void)insertColumnNames:(id)names at:(unint64_t)at withIds:(id)ids
{
  namesCopy = names;
  idsCopy = ids;
  v13 = objc_msgSend_count(namesCopy, v9, v10, v11, v12);
  if (v13 != objc_msgSend_count(idsCopy, v14, v15, v16, v17))
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCHChartGrid insertColumnNames:at:withIds:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
    v33 = objc_msgSend_count(idsCopy, v29, v30, v31, v32);
    v38 = objc_msgSend_count(namesCopy, v34, v35, v36, v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v39, v40, v41, v42, v23, v28, 765, 0, "UUIDs count mismatch %lu expects %lu", v33, v38);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  objc_msgSend_willModify(self, v18, v19, v20, v21);
  v52 = objc_msgSend_count(namesCopy, v47, v48, v49, v50) - 1;
  if (v52 >= 0)
  {
    do
    {
      columnNames = self->_columnNames;
      v57 = objc_msgSend_objectAtIndexedSubscript_(namesCopy, v51, v53, v54, v55, v52);
      objc_msgSend_insertObject_atIndex_(columnNames, v58, v59, v60, v61, v57, at);

      mutableColumnIds = self->_mutableColumnIds;
      objc_opt_class();
      v67 = objc_msgSend_objectAtIndexedSubscript_(idsCopy, v63, v64, v65, v66, v52);
      v68 = TSUCheckedDynamicCast();
      objc_msgSend_insertObject_atIndex_(mutableColumnIds, v69, v70, v71, v72, v68, at);

      --v52;
    }

    while (v52 != -1);
  }

  objc_msgSend_p_updateColumnMapStartingAtIndex_(self, v51, v53, v54, v55, at);
  objc_msgSend_setDirty_(self, v73, v74, v75, v76, 1);
}

- (void)takeDataFromDictionary:(id)dictionary rowIds:(id)ids columnIds:(id)columnIds
{
  v187 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  idsCopy = ids;
  columnIdsCopy = columnIds;
  objc_msgSend_willModify(self, v9, v10, v11, v12);
  if (!objc_msgSend_count(idsCopy, v13, v14, v15, v16))
  {
    v21 = objc_msgSend_rowIds(self, v17, v18, v19, v20);
    v26 = objc_msgSend_copy(v21, v22, v23, v24, v25);

    idsCopy = v26;
  }

  if (!objc_msgSend_count(columnIdsCopy, v17, v18, v19, v20))
  {
    v31 = objc_msgSend_columnIds(self, v27, v28, v29, v30);
    v36 = objc_msgSend_copy(v31, v32, v33, v34, v35);

    columnIdsCopy = v36;
  }

  v37 = objc_msgSend_numberOfColumns(self, v27, v28, v29, v30);
  v43 = objc_msgSend_numberOfRows(self, v38, v39, v40, v41);
  if (v37)
  {
    v47 = v37 - 1;
    do
    {
      objc_msgSend_removeColumn_(self, v42, v44, v45, v46, v47--);
    }

    while (v47 != -1);
  }

  if (v43)
  {
    v48 = v43 - 1;
    do
    {
      objc_msgSend_removeRow_(self, v42, v44, v45, v46, v48--);
    }

    while (v48 != -1);
  }

  v174 = idsCopy;
  objc_msgSend_objectForKey_(dictionaryCopy, v42, v44, v45, v46, @"_LOCALIZABLE_");
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v170 = v184 = 0u;
  v52 = objc_msgSend_objectForKey_(v170, v49, 0.0, v50, v51, @"RowNames");
  v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, v54, v55, v56, &v181, v186, 16);
  selfCopy = self;
  if (v57)
  {
    v62 = v57;
    v63 = 0;
    v64 = 0;
    v65 = *v182;
    do
    {
      v66 = 0;
      v67 = v64;
      do
      {
        if (*v182 != v65)
        {
          objc_enumerationMutation(v52);
        }

        v68 = *(*(&v181 + 1) + 8 * v66);
        if (v63 >= objc_msgSend_count(v174, v58, v59, v60, v61))
        {
          v78 = 0;
        }

        else
        {
          objc_opt_class();
          v77 = objc_msgSend_objectAtIndexedSubscript_(v174, v73, v74, v75, v76, v63);
          v78 = TSUCheckedDynamicCast();

          self = selfCopy;
        }

        v64 = v67 + 1;
        objc_msgSend_insertRow_withName_withId_(self, v69, v70, v71, v72, v67, v68, v78);
        ++v63;

        ++v66;
        ++v67;
      }

      while (v62 != v66);
      v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v58, v59, v60, v61, &v181, v186, 16);
    }

    while (v62);
  }

  else
  {
    v64 = 0;
  }

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  obj = objc_msgSend_objectForKey_(v170, v79, 0.0, v80, v81, @"ColumnNames");
  v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, v83, v84, v85, &v177, v185, 16);
  if (v86)
  {
    v91 = v86;
    v92 = 0;
    v93 = 0;
    v94 = *v178;
    do
    {
      v95 = 0;
      v96 = v93;
      do
      {
        if (*v178 != v94)
        {
          objc_enumerationMutation(obj);
        }

        v97 = *(*(&v177 + 1) + 8 * v95);
        if (v92 >= objc_msgSend_count(columnIdsCopy, v87, v88, v89, v90))
        {
          v107 = 0;
        }

        else
        {
          objc_opt_class();
          v106 = objc_msgSend_objectAtIndexedSubscript_(columnIdsCopy, v102, v103, v104, v105, v92);
          v107 = TSUCheckedDynamicCast();

          self = selfCopy;
        }

        v93 = v96 + 1;
        objc_msgSend_insertColumn_withName_withId_(self, v98, v99, v100, v101, v96, v97, v107);
        ++v92;

        ++v95;
        ++v96;
      }

      while (v91 != v95);
      v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v87, v88, v89, v90, &v177, v185, 16);
    }

    while (v91);
  }

  else
  {
    v93 = 0;
  }

  if (v64)
  {
    v112 = 0;
    v113 = &selRef_applicationDidBecomeActive;
    do
    {
      v114 = objc_msgSend_objectForKey_(dictionaryCopy, v108, v109, v110, v111, @"Values");
      v119 = objc_msgSend_objectAtIndex_(v114, v115, v116, v117, v118, v112);

      if (v93)
      {
        v124 = 0;
        v172 = v119;
        do
        {
          v125 = objc_msgSend_objectAtIndexedSubscript_(v119, v120, v121, v122, v123, v124);
          if (v125)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (objc_opt_respondsToSelector())
              {
                if ((objc_msgSend_conformsToProtocol_(v125, v126, v127, v128, v129, v113[250]) & 1) == 0)
                {
                  objc_msgSend_doubleValue(v125, v130, v131, v132, v133);
                  v138 = objc_msgSend_numberValueWithDouble_(TSCHChartGridValue, v134, v135, v136, v137);

                  v125 = v138;
                  v119 = v172;
                }
              }

              else
              {
                v139 = MEMORY[0x277D81150];
                v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, v127, v128, v129, "[TSCHChartGrid takeDataFromDictionary:rowIds:columnIds:]");
                objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v141, v142, v143, v144, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
                v146 = v145 = v113;
                v147 = objc_opt_class();
                v148 = NSStringFromClass(v147);
                v149 = v139;
                v119 = v172;
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v149, v150, v151, v152, v153, v140, v146, 835, 0, "Unknown value type (%@) populating default chart data.", v148);

                v113 = v145;
                self = selfCopy;
                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v154, v155, v156, v157);
              }
            }
          }

          v169 = v113[250];
          v158 = TSUProtocolCast();
          objc_msgSend_setValue_forRow_column_(self, v159, v160, v161, v162, v158, v112, v124, v169);

          ++v124;
        }

        while (v93 != v124);
      }

      ++v112;
    }

    while (v112 != v64);
  }

  v163 = objc_msgSend_objectForKey_(dictionaryCopy, v108, v109, v110, v111, @"Direction");
  if (objc_msgSend_isEqualToString_(v163, v164, v165, v166, v167, @"ByColumn"))
  {
    v168 = 2;
  }

  else
  {
    v168 = 1;
  }

  self->_direction = v168;
}

- (id)gridAdapterForRow:(unint64_t)row
{
  v5 = [TSCHChartGridRowAdapter alloc];
  v10 = objc_msgSend_initWithChartGrid_index_(v5, v6, v7, v8, v9, self, row);

  return v10;
}

- (id)gridAdapterForColumn:(unint64_t)column
{
  v5 = [TSCHChartGridColumnAdapter alloc];
  v10 = objc_msgSend_initWithChartGrid_index_(v5, v6, v7, v8, v9, self, column);

  return v10;
}

- (id)gridAdapterForRowCount
{
  v3 = [TSCHChartGridCountAdapter alloc];
  v8 = objc_msgSend_numberOfRows(self, v4, v5, v6, v7);
  v13 = objc_msgSend_initWithCount_(v3, v9, v10, v11, v12, v8);

  return v13;
}

- (id)gridAdapterForColumnCount
{
  v3 = [TSCHChartGridCountAdapter alloc];
  v8 = objc_msgSend_numberOfColumns(self, v4, v5, v6, v7);
  v13 = objc_msgSend_initWithCount_(v3, v9, v10, v11, v12, v8);

  return v13;
}

- (id)gridAdapterForRowConstant
{
  v3 = [TSCHChartGridConstantAdapter alloc];
  v8 = objc_msgSend_numberOfRows(self, v4, v5, v6, v7);
  v13 = objc_msgSend_initWithCount_(v3, v9, v10, v11, v12, v8);

  return v13;
}

- (id)gridAdapterForColumnConstant
{
  v3 = [TSCHChartGridConstantAdapter alloc];
  v8 = objc_msgSend_numberOfColumns(self, v4, v5, v6, v7);
  v13 = objc_msgSend_initWithCount_(v3, v9, v10, v11, v12, v8);

  return v13;
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison
{
  if (self == comparison)
  {
    return 1;
  }

  comparisonCopy = comparison;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v10 = objc_msgSend_contentsEqualToGrid_(self, v6, v7, v8, v9, v5);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCHChartGrid mixingTypeWithObject:context:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartGrid.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 893, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_direction(self, v7, v8, v9, v10);
  if (v26 == objc_msgSend_direction(v6, v27, v28, v29, v30) && (v35 = objc_msgSend_numberOfColumns(self, v31, v32, v33, v34), v35 == objc_msgSend_numberOfColumns(v6, v36, v37, v38, v39)) && (v40 = objc_msgSend_numberOfRows(self, v31, v32, v33, v34), v40 == objc_msgSend_numberOfRows(v6, v41, v42, v43, v44)) && objc_msgSend_isEqualToArray_(self->_columnNames, v31, v32, v33, v34, v6[3]) && (objc_msgSend_isEqualToArray_(self->_rowNames, v31, v32, v33, v34, v6[2]) & 1) != 0)
  {
    v45 = 4;
    v46 = 3;
  }

  else
  {
    v46 = 2;
    v45 = 2;
  }

  if (objc_msgSend_isEqualToArray_(self->_values, v31, v32, v33, v34, v6[4]))
  {
    v47 = v45;
  }

  else
  {
    v47 = v46;
  }

  return v47;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v8 = objc_alloc_init(TSCHChartGrid);
  v13 = objc_msgSend_direction(self, v9, v10, v11, v12);
  objc_msgSend_setDirection_(v8, v14, v15, v16, v17, v13);
  if (objc_msgSend_numberOfRows(self, v18, v19, v20, v21))
  {
    v26 = 0;
    do
    {
      v27 = objc_msgSend_nameForRow_(self, v22, v23, v24, v25, v26);
      v32 = objc_msgSend_createUUID(self, v28, v29, v30, v31);
      objc_msgSend_insertRow_withName_withId_(v8, v33, v34, v35, v36, v26, v27, v32);

      ++v26;
    }

    while (v26 < objc_msgSend_numberOfRows(self, v37, v38, v39, v40));
  }

  if (objc_msgSend_numberOfColumns(self, v22, v23, v24, v25))
  {
    v45 = 0;
    do
    {
      v46 = objc_msgSend_nameForColumn_(self, v41, v42, v43, v44, v45);
      v51 = objc_msgSend_createUUID(self, v47, v48, v49, v50);
      objc_msgSend_insertColumn_withName_withId_(v8, v52, v53, v54, v55, v45, v46, v51);

      ++v45;
    }

    while (v45 < objc_msgSend_numberOfColumns(self, v56, v57, v58, v59));
  }

  if (objc_msgSend_numberOfColumns(self, v41, v42, v43, v44))
  {
    v64 = 0;
    do
    {
      if (objc_msgSend_numberOfRows(self, v60, v61, v62, v63))
      {
        v69 = 0;
        do
        {
          v70 = objc_msgSend_valueForRow_column_(self, v65, v66, v67, v68, v69, v64);
          v75 = objc_msgSend_valueForRow_column_(v7, v71, v72, v73, v74, v69, v64);
          v79 = objc_msgSend_mixedObjectWithFraction_ofObject_(v70, v76, fraction, v77, v78, v75);
          objc_msgSend_setValue_forRow_column_(v8, v80, v81, v82, v83, v79, v69, v64);

          ++v69;
        }

        while (v69 < objc_msgSend_numberOfRows(self, v84, v85, v86, v87));
      }

      ++v64;
    }

    while (v64 < objc_msgSend_numberOfColumns(self, v65, v66, v67, v68));
  }

  return v8;
}

- (TSCHNotifyOnModify)objectToNotify
{
  WeakRetained = objc_loadWeakRetained(&self->_objectToNotify);

  return WeakRetained;
}

- (void)loadFromPreUFFArchive:(const void *)archive
{
  self->_direction = *(archive + 24);
  v5 = *(archive + 8);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  rowNames = self->_rowNames;
  self->_rowNames = v6;

  if (v5 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = self->_rowNames;
      v14 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v8, v9, v10, v11, *(*(archive + 5) + v12));
      objc_msgSend_addObject_(v13, v15, v16, v17, v18, v14);

      v12 += 8;
      --v5;
    }

    while (v5);
  }

  v19 = *(archive + 14);
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  columnNames = self->_columnNames;
  self->_columnNames = v20;

  if (v19 >= 1)
  {
    v26 = 8;
    do
    {
      v27 = self->_columnNames;
      v28 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v22, v23, v24, v25, *(*(archive + 8) + v26));
      objc_msgSend_addObject_(v27, v29, v30, v31, v32, v28);

      v26 += 8;
      --v19;
    }

    while (v19);
  }

  v33 = *(archive + 20);
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  values = self->_values;
  self->_values = v34;

  v56 = v33;
  if (v33 >= 1)
  {
    v40 = 0;
    do
    {
      v41 = *(*(archive + 11) + 8 * v40 + 8);
      v42 = *(v41 + 16);
      v44 = objc_msgSend_array(MEMORY[0x277CBEB18], v36, v37, v38, v39);
      if (v42 >= 1)
      {
        v48 = 0;
        v49 = 8 * v42;
        do
        {
          v50 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v43, *(*(v41 + 24) + v48), v46, v47);
          objc_msgSend_addObject_(v44, v51, v52, v53, v54, v50);

          v48 += 8;
        }

        while (v49 != v48);
      }

      objc_msgSend_addObject_(self->_values, v43, v45, v46, v47, v44);

      ++v40;
    }

    while (v40 != v56);
  }

  v55 = *(archive + 100);

  objc_msgSend_setDirty_(self, v36, v37, v38, v39, v55);
}

- (void)insertRow:(unint64_t)row withName:(id)name
{
  nameCopy = name;
  v10 = objc_msgSend_createUUID(self, v6, v7, v8, v9);
  objc_msgSend_insertRow_withName_withId_(self, v11, v12, v13, v14, row, nameCopy, v10);
}

- (void)insertColumn:(unint64_t)column withName:(id)name
{
  nameCopy = name;
  v10 = objc_msgSend_createUUID(self, v6, v7, v8, v9);
  objc_msgSend_insertColumn_withName_withId_(self, v11, v12, v13, v14, column, nameCopy, v10);
}

- (void)loadFromUnityArchive:(const void *)archive chartInfo:(id)info
{
  infoCopy = info;
  if (*(archive + 26))
  {
    v6 = *(archive + 26);
  }

  else
  {
    v6 = &TSCH::_ChartGridArchive_default_instance_;
  }

  archiveCopy = archive;
  self->_direction = *(archive + 72);
  v7 = *(v6 + 8);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  rowNames = self->_rowNames;
  self->_rowNames = v8;

  if (v7 >= 1)
  {
    v14 = 8;
    do
    {
      v15 = self->_rowNames;
      v16 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v10, v11, v12, v13, *(v6[5] + v14), archiveCopy);
      objc_msgSend_addObject_(v15, v17, v18, v19, v20, v16);

      v14 += 8;
      --v7;
    }

    while (v7);
  }

  v21 = *(v6 + 14);
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  columnNames = self->_columnNames;
  self->_columnNames = v22;

  if (v21 >= 1)
  {
    v28 = 8;
    do
    {
      v29 = self->_columnNames;
      v30 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v24, v25, v26, v27, *(v6[8] + v28), archiveCopy);
      objc_msgSend_addObject_(v29, v31, v32, v33, v34, v30);

      v28 += 8;
      --v21;
    }

    while (v21);
  }

  v35 = *(v6 + 20);
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  values = self->_values;
  self->_values = v36;

  if (v35 >= 1)
  {
    v42 = 8;
    do
    {
      v43 = sub_276381840(*(v6[11] + v42), v38, v39, v40, v41);
      objc_msgSend_addObject_(self->_values, v44, v45, v46, v47, v43);

      v42 += 8;
      --v35;
    }

    while (v35);
  }

  v48 = archiveCopy;
  if ((v6[2] & 1) == 0)
  {
    LOBYTE(v49) = 0;
    goto LABEL_43;
  }

  v50 = v6[12];
  v51 = *(v50 + 24);
  v52 = objc_alloc(MEMORY[0x277CBEB18]);
  v53 = v51;
  v58 = objc_msgSend_initWithCapacity_(v52, v54, v55, v56, v57, v51);
  mutableRowIds = self->_mutableRowIds;
  self->_mutableRowIds = v58;

  if (v51 < 1)
  {
LABEL_24:
    v91 = self->_mutableRowIds;
    v73 = objc_msgSend_null(MEMORY[0x277CBEB68], v60, v61, v62, v63, archiveCopy);
    v49 = objc_msgSend_indexOfObject_(v91, v92, v93, v94, v95, v73) == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v64 = v51;
    do
    {
      v65 = self->_mutableRowIds;
      v66 = objc_msgSend_null(MEMORY[0x277CBEB68], v60, v61, v62, v63, archiveCopy);
      objc_msgSend_addObject_(v65, v67, v68, v69, v70, v66);

      --v64;
    }

    while (v64);
    v71 = 0;
    while (1)
    {
      v72 = *(*(v50 + 32) + 8 * v71 + 8);
      v73 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v60, v61, v62, v63, *(v72 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v74 = *(v72 + 32);
      if (objc_msgSend_noAssertNumberOfRows(self, v75, v76, v77, v78) <= v74 || v73 == 0)
      {
        break;
      }

      v80 = self->_mutableRowIds;
      v81 = objc_alloc(MEMORY[0x277CCAD78]);
      v86 = objc_msgSend_initWithUUIDString_(v81, v82, v83, v84, v85, v73);
      objc_msgSend_replaceObjectAtIndex_withObject_(v80, v87, v88, v89, v90, v74, v86);

      if (++v71 >= v53)
      {
        goto LABEL_24;
      }
    }

    v49 = 0;
  }

  v96 = *(v50 + 48);
  v97 = objc_alloc(MEMORY[0x277CBEB18]);
  v98 = v96;
  v103 = objc_msgSend_initWithCapacity_(v97, v99, v100, v101, v102, v96);
  mutableColumnIds = self->_mutableColumnIds;
  self->_mutableColumnIds = v103;

  if (v96 < 1)
  {
    if (v49)
    {
LABEL_36:
      v135 = self->_mutableColumnIds;
      objc_msgSend_null(MEMORY[0x277CBEB68], v105, v106, v107, v108);
      v117 = v48 = archiveCopy;
      LOBYTE(v49) = objc_msgSend_indexOfObject_(v135, v136, v137, v138, v139, v117) == 0x7FFFFFFFFFFFFFFFLL;
LABEL_41:

      goto LABEL_42;
    }

    LOBYTE(v49) = 0;
  }

  else
  {
    do
    {
      v109 = self->_mutableColumnIds;
      v110 = objc_msgSend_null(MEMORY[0x277CBEB68], v105, v106, v107, v108);
      objc_msgSend_addObject_(v109, v111, v112, v113, v114, v110);

      --v96;
    }

    while (v96);
    if (v49)
    {
      v115 = 0;
      while (1)
      {
        v116 = *(*(v50 + 56) + 8 * v115 + 8);
        v117 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v105, v106, v107, v108, *(v116 + 24) & 0xFFFFFFFFFFFFFFFELL);
        v118 = *(v116 + 32);
        if (objc_msgSend_noAssertNumberOfColumns(self, v119, v120, v121, v122) <= v118 || v117 == 0)
        {
          break;
        }

        v124 = self->_mutableColumnIds;
        v125 = objc_alloc(MEMORY[0x277CCAD78]);
        v130 = objc_msgSend_initWithUUIDString_(v125, v126, v127, v128, v129, v117);
        objc_msgSend_replaceObjectAtIndex_withObject_(v124, v131, v132, v133, v134, v118, v130);

        if (++v115 >= v98)
        {
          goto LABEL_36;
        }
      }

      LOBYTE(v49) = 0;
      v48 = archiveCopy;
      goto LABEL_41;
    }
  }

  v48 = archiveCopy;
LABEL_42:
  objc_msgSend_updateRowAndColumnIndexMaps(self, v105, v106, v107, v108);
LABEL_43:
  objc_msgSend_adjustRowAndColumnNameListLength(self, v38, v39, v40, v41, archiveCopy);
  if (!v49)
  {
    objc_msgSend_generateRowColumnIdMaps(self, v140, v141, v142, v143);
  }

  if (v48[42])
  {
    LOBYTE(v144) = v48[294];
  }

  else
  {
    v144 = objc_msgSend_gridEqualToDefaultGrid(infoCopy, v140, v141, v142, v143) ^ 1;
  }

  objc_msgSend_setDirty_(self, v140, v141, v142, v143, v144 & 1);
}

- (void)saveToUnityArchive:(void *)archive forCopy:(BOOL)copy
{
  copyCopy = copy;
  *(archive + 10) |= 4u;
  v7 = *(archive + 26);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartGridArchive>(v8);
    *(archive + 26) = v7;
  }

  v157 = objc_getAssociatedObject(self, qword_280A462E8);
  v13 = objc_msgSend_unsignedIntegerValue(v157, v9, v10, v11, v12);
  if (copyCopy && (direction = v13) != 0 && self->_direction != v13)
  {
    v160 = self->_columnNames;
    v159 = self->_rowNames;
    v162 = self->_mutableColumnIds;
    v161 = self->_mutableRowIds;
    v19 = 1;
  }

  else
  {
    v160 = self->_rowNames;
    v159 = self->_columnNames;
    v162 = self->_mutableRowIds;
    v161 = self->_mutableColumnIds;
    v19 = 0;
    direction = self->_direction;
  }

  *(archive + 10) |= 0x2000u;
  *(archive + 72) = direction;
  v21 = objc_msgSend_count(v160, v15, v16, v17, v18);
  if (v21 >= 1)
  {
    v25 = 0;
    while (1)
    {
      v26 = objc_msgSend_objectAtIndexedSubscript_(v160, v20, v22, v23, v24, v25);
      v31 = objc_msgSend_tsp_protobufString(v26, v27, v28, v29, v30);
      v32 = *(v7 + 40);
      if (!v32)
      {
        goto LABEL_17;
      }

      v33 = *(v7 + 32);
      v34 = *v32;
      if (v33 >= *v32)
      {
        break;
      }

      *(v7 + 32) = v33 + 1;
      v35 = *&v32[2 * v33 + 2];
LABEL_19:
      MEMORY[0x277C98540](v35, v31);

      if (v21 == ++v25)
      {
        goto LABEL_20;
      }
    }

    if (v34 == *(v7 + 36))
    {
LABEL_17:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 24));
      v32 = *(v7 + 40);
      v34 = *v32;
    }

    *v32 = v34 + 1;
    v35 = sub_276380DF4(*(v7 + 24));
    v36 = *(v7 + 32);
    v37 = *(v7 + 40) + 8 * v36;
    *(v7 + 32) = v36 + 1;
    *(v37 + 8) = v35;
    goto LABEL_19;
  }

LABEL_20:
  v39 = objc_msgSend_count(v159, v20, v22, v23, v24);
  if (v39 >= 1)
  {
    v43 = 0;
    while (1)
    {
      v44 = objc_msgSend_objectAtIndexedSubscript_(v159, v38, v40, v41, v42, v43);
      v49 = objc_msgSend_tsp_protobufString(v44, v45, v46, v47, v48);
      v50 = *(v7 + 64);
      if (!v50)
      {
        goto LABEL_27;
      }

      v51 = *(v7 + 56);
      v52 = *v50;
      if (v51 >= *v50)
      {
        break;
      }

      *(v7 + 56) = v51 + 1;
      v53 = *&v50[2 * v51 + 2];
LABEL_29:
      MEMORY[0x277C98540](v53, v49);

      if (v39 == ++v43)
      {
        goto LABEL_30;
      }
    }

    if (v52 == *(v7 + 60))
    {
LABEL_27:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 48));
      v50 = *(v7 + 64);
      v52 = *v50;
    }

    *v50 = v52 + 1;
    v53 = sub_276380DF4(*(v7 + 48));
    v54 = *(v7 + 56);
    v55 = *(v7 + 64) + 8 * v54;
    *(v7 + 56) = v54 + 1;
    *(v55 + 8) = v53;
    goto LABEL_29;
  }

LABEL_30:
  values = self->_values;
  if ((v19 & 1) == 0)
  {
    v94 = objc_msgSend_count(values, v38, v40, v41, v42);
    if (v94 < 1)
    {
      goto LABEL_62;
    }

    v95 = 0;
    while (1)
    {
      v96 = objc_msgSend_objectAtIndexedSubscript_(self->_values, v68, v69, v70, v71, v95);
      v97 = *(v7 + 88);
      if (!v97)
      {
        goto LABEL_59;
      }

      v98 = *(v7 + 80);
      v99 = *v97;
      if (v98 >= *v97)
      {
        break;
      }

      *(v7 + 80) = v98 + 1;
      v100 = *&v97[2 * v98 + 2];
LABEL_61:
      sub_2763818F4(v96, v100);

      if (v94 == ++v95)
      {
        goto LABEL_62;
      }
    }

    if (v99 == *(v7 + 84))
    {
LABEL_59:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 72));
      v97 = *(v7 + 88);
      v99 = *v97;
    }

    *v97 = v99 + 1;
    v100 = sub_276407088(*(v7 + 72));
    v101 = *(v7 + 80);
    v102 = *(v7 + 88) + 8 * v101;
    *(v7 + 80) = v101 + 1;
    *(v102 + 8) = v100;
    goto LABEL_61;
  }

  v57 = objc_msgSend_count(values, v38, v40, v41, v42);
  v62 = objc_msgSend_lastObject(self->_values, v58, v59, v60, v61);
  v67 = objc_msgSend_count(v62, v63, v64, v65, v66);

  if (v67 >= 1)
  {
    v72 = 0;
    v158 = v67;
    do
    {
      v73 = *(v7 + 88);
      if (!v73)
      {
        goto LABEL_38;
      }

      v74 = *(v7 + 80);
      v75 = *v73;
      if (v74 < *v73)
      {
        *(v7 + 80) = v74 + 1;
        v76 = *&v73[2 * v74 + 2];
        goto LABEL_40;
      }

      if (v75 == *(v7 + 84))
      {
LABEL_38:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 72));
        v73 = *(v7 + 88);
        v75 = *v73;
      }

      *v73 = v75 + 1;
      v76 = sub_276407088(*(v7 + 72));
      v77 = *(v7 + 80);
      v78 = *(v7 + 88) + 8 * v77;
      *(v7 + 80) = v77 + 1;
      *(v78 + 8) = v76;
LABEL_40:
      if (v57 >= 1)
      {
        v79 = 0;
        while (1)
        {
          selfCopy = self;
          v81 = objc_msgSend_objectAtIndexedSubscript_(self->_values, v68, v69, v70, v71, v79, v156);
          v86 = objc_msgSend_objectAtIndex_(v81, v82, v83, v84, v85, v72);
          v156 = &unk_2885724B0;
          v87 = TSUProtocolCast();

          v88 = *(v76 + 32);
          if (!v88)
          {
            break;
          }

          v89 = *(v76 + 24);
          v90 = *v88;
          self = selfCopy;
          if (v89 >= *v88)
          {
            if (v90 == *(v76 + 28))
            {
LABEL_47:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v76 + 16));
              v88 = *(v76 + 32);
              v90 = *v88;
            }

            *v88 = v90 + 1;
            v91 = sub_276407010(*(v76 + 16));
            v92 = *(v76 + 24);
            v93 = *(v76 + 32) + 8 * v92;
            *(v76 + 24) = v92 + 1;
            *(v93 + 8) = v91;
            goto LABEL_49;
          }

          *(v76 + 24) = v89 + 1;
          v91 = *&v88[2 * v89 + 2];
LABEL_49:
          sub_276381784(v87, v91);

          if (v57 == ++v79)
          {
            goto LABEL_50;
          }
        }

        self = selfCopy;
        goto LABEL_47;
      }

LABEL_50:
      ++v72;
    }

    while (v72 != v158);
  }

LABEL_62:
  *(v7 + 16) |= 1u;
  v103 = *(v7 + 96);
  if (!v103)
  {
    v104 = *(v7 + 8);
    if (v104)
    {
      v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
    }

    v103 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartGridArchive_ChartGridRowColumnIdMap>(v104);
    *(v7 + 96) = v103;
  }

  for (i = 0; i < objc_msgSend_count(v162, v68, v69, v70, v71, v156); ++i)
  {
    objc_opt_class();
    v114 = objc_msgSend_objectAtIndexedSubscript_(v162, v110, v111, v112, v113, i);
    v115 = TSUCheckedDynamicCast();

    v120 = *(v103 + 32);
    if (!v120)
    {
      goto LABEL_73;
    }

    v121 = *(v103 + 24);
    v122 = *v120;
    if (v121 < *v120)
    {
      *(v103 + 24) = v121 + 1;
      v123 = *&v120[2 * v121 + 2];
      goto LABEL_75;
    }

    if (v122 == *(v103 + 28))
    {
LABEL_73:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v103 + 16));
      v120 = *(v103 + 32);
      v122 = *v120;
    }

    *v120 = v122 + 1;
    v123 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry>(*(v103 + 16));
    v124 = *(v103 + 24);
    v125 = *(v103 + 32) + 8 * v124;
    *(v103 + 24) = v124 + 1;
    *(v125 + 8) = v123;
LABEL_75:
    v126 = objc_msgSend_UUIDString(v115, v116, v117, v118, v119);
    v131 = objc_msgSend_tsp_protobufString(v126, v127, v128, v129, v130);
    *(v123 + 16) |= 1u;
    sub_2762F3BA4(__p, v131);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    *(v123 + 16) |= 2u;
    *(v123 + 32) = i;
  }

  for (j = 0; j < objc_msgSend_count(v161, v106, v107, v108, v109); ++j)
  {
    objc_opt_class();
    v137 = objc_msgSend_objectAtIndexedSubscript_(v161, v133, v134, v135, v136, j);
    v138 = TSUCheckedDynamicCast();

    v143 = *(v103 + 56);
    if (!v143)
    {
      goto LABEL_85;
    }

    v144 = *(v103 + 48);
    v145 = *v143;
    if (v144 < *v143)
    {
      *(v103 + 48) = v144 + 1;
      v146 = *&v143[2 * v144 + 2];
      goto LABEL_87;
    }

    if (v145 == *(v103 + 52))
    {
LABEL_85:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v103 + 40));
      v143 = *(v103 + 56);
      v145 = *v143;
    }

    *v143 = v145 + 1;
    v146 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry>(*(v103 + 40));
    v147 = *(v103 + 48);
    v148 = *(v103 + 56) + 8 * v147;
    *(v103 + 48) = v147 + 1;
    *(v148 + 8) = v146;
LABEL_87:
    v149 = objc_msgSend_UUIDString(v138, v139, v140, v141, v142);
    v154 = objc_msgSend_tsp_protobufString(v149, v150, v151, v152, v153);
    *(v146 + 16) |= 1u;
    sub_2762F3BA4(__p, v154);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v164 < 0)
    {
      operator delete(__p[0]);
    }

    *(v146 + 16) |= 2u;
    *(v146 + 32) = j;
  }

  dirty = self->_dirty;
  *(archive + 10) |= 0x10000u;
  *(archive + 294) = dirty;
  objc_setAssociatedObject(self, qword_280A462E8, 0, 0x303);
}

@end