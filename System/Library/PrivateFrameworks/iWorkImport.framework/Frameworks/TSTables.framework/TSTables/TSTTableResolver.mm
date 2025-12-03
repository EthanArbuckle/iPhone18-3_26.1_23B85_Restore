@interface TSTTableResolver
- (BOOL)hasCellCoord:(const TSUCellCoord *)coord;
- (BOOL)hasNamesInHeaders;
- (BOOL)isCategorized;
- (BOOL)isFooterCell:(const TSUCellCoord *)cell;
- (BOOL)isHeaderCell:(const TSUCellCoord *)cell;
- (BOOL)isPivotDataModel;
- (BOOL)rangeIsWithinTable:(const TSCERangeRef *)table;
- (BOOL)rangeIsWithinTableInView:(const TSCERangeRef *)view;
- (NSString)sheetName;
- (TSCECalculationEngine)calcEngine;
- (TSCECellCoordSet)cellsModifiedInCurrentRecalcCycle;
- (TSCECellRef)allAggsInGroupRootPrecedent:(SEL)precedent;
- (TSCECellRef)groupingColumnHeadersPrecedent:(SEL)precedent;
- (TSCECellRef)groupingColumnOrderPrecedent:(SEL)precedent;
- (TSCECellRef)groupingColumnsPrecedent:(SEL)precedent;
- (TSCECellRef)groupingColumnsPrecedentForCategoryRef:(SEL)ref;
- (TSCECellRef)groupingRowOrderPrecedent:(SEL)precedent ignoreRecalc:(const TSKUIDStruct *)recalc;
- (TSCECellRef)indirectAggTypeChangePrecedent:(SEL)precedent;
- (TSCECellTractRefCore)apparentTractRefForTractRef:(SEL)ref rangeContext:(const TSCECellTractRefCore *)context;
- (TSCECoordMapper)coordMapper;
- (TSCEFormat)format:(SEL)format fromCell:(id)cell;
- (TSCERangeCoordinate)apparentRangeForRange:(const TSCERangeCoordinate *)range rangeContext:(unsigned __int8)context;
- (TSCERangeCoordinate)bodyRangeCoordinate;
- (TSCERangeCoordinate)expandCellRangeToCoverMergedCells:(const TSCERangeCoordinate *)cells;
- (TSCERangeCoordinate)footerRangeCoordinate;
- (TSCERangeCoordinate)preMergeRangeFromUidTract:(id)tract;
- (TSCERangeCoordinate)tableRangeCoordinate;
- (TSCERangeCoordinate)viewBodyRangeCoordinate;
- (TSCERangeCoordinate)viewTableRangeCoordinate;
- (TSKUIDStruct)UIDForIndex:(unsigned int)index isRows:(BOOL)rows;
- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index;
- (TSKUIDStruct)conditionalStyleFormulaOwnerUID;
- (TSKUIDStruct)convertToRelativeAncestorUid:(const TSKUIDStruct *)uid rowUid:(const TSKUIDStruct *)rowUid;
- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows;
- (TSKUIDStruct)groupByUUID;
- (TSKUIDStruct)mergeOwnerUID;
- (TSKUIDStruct)relativeAncestorGroupUid:(int)uid;
- (TSKUIDStruct)resolveRelativeAncestorUid:(const TSKUIDStruct *)uid sourceRowUID:(const TSKUIDStruct *)d;
- (TSKUIDStruct)resolverUID;
- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index;
- (TSKUIDStruct)tableUID;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForIndexes:(SEL)indexes isRows:(id)rows;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForRange:(SEL)range isRows:(_NSRange)rows;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)viewOrderedRowUids:(SEL)uids;
- (TSTTableInfo)tableInfo;
- (TSTTableResolver)initWithTableModel:(id)model;
- (TSTTableTranslator)tableTranslator;
- (TSUCellCoord)resolvedCellCoordForIntersection:(const TSCERangeCoordinate *)intersection hostCell:(const TSUCellCoord *)cell useImplicitIntersection:(BOOL)implicitIntersection;
- (TSUCellCoord)resolvedCellCoordForIntersectionRef:(id)ref hostCell:(const TSUCellCoord *)cell useImplicitIntersection:(BOOL)intersection;
- (TSUModelCellRect)mergedRangeForBaseCellCoord:(const TSUModelCellCoord *)coord;
- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows;
- (id)UIDSetForRange:(_NSRange)range isRows:(BOOL)rows;
- (id)apparentGridForRangeContext:(id)context rangeContext:(unsigned __int8)rangeContext spansAllColumns:(BOOL)columns spansAllRows:(BOOL)rows;
- (id)canonicalCellReferenceForReference:(id)reference;
- (id)cellTractRefForViewTractRef:(id)ref;
- (id)filteredCellTractRef:(id)ref hidingActionMask:(unsigned __int8)mask;
- (id)makeReferenceWithTopLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right preserveFlags:(const TSUPreserveFlags *)flags;
- (id)mutableColumnIndexesForUIDs:(const void *)ds;
- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds;
- (id)mutableIndexesForUIDs:(const void *)ds isRows:(BOOL)rows;
- (id)mutableRowIndexesForUIDs:(const void *)ds;
- (id)readValueForReference:(id)reference fromCellRef:(const TSCECellRef *)ref outValue:(id *)value readOptions:(unsigned __int16)options;
- (id)resolveCategoryRefAtRowUid:(id)uid rowUid:(const TSKUIDStruct *)rowUid containingTableUID:(const TSKUIDStruct *)d;
- (id)solveGetPivotData:(id)data functionSpec:(id)spec context:(id)context;
- (id)unpersistedFormulaStorageForCoord:(const TSUCellCoord *)coord withPrefix:(id)prefix withStyle:(id)style allowHeaderNames:(BOOL)names;
- (id)valueForCellCoord:(const TSUCellCoord *)coord fetchRichTextAttributesIfPlainText:(BOOL)text;
- (id)valueForCellUID:(const TSKUIDStructCoord *)d outGeometricPrecedent:(TSCECellRef *)precedent fetchRichTextAttributesIfPlainText:(BOOL)text;
- (id)valuesForViewTractRef:(id)ref hidingActionMask:(unsigned __int8)mask outError:(id *)error;
- (id)valuesForViewTractRef:(id)ref hidingActionMask:(unsigned __int8)mask outError:(id *)error outGeometricPrecedents:(void *)precedents forceHidingOfPivotFiltered:(BOOL)filtered;
- (id)viewTractRefForCellTractRef:(id)ref;
- (int64_t)interactionTypeForCell:(const TSUModelCellCoord *)cell;
- (unordered_set<TSKUIDStruct,)ownerUIDsInterestedInGroupByChange:()std:(std:(TSTTableResolver *)self :(SEL)a3 allocator<TSKUIDStruct>> *__return_ptr)retstr :(id)a4 equal_to<TSKUIDStruct>;
- (unsigned)columnIndexForColumnUID:(const TSKUIDStruct *)d;
- (unsigned)columnWidthInBodyOfTable:(id)table;
- (unsigned)getHidingAction:(id)action forRow:(BOOL)row;
- (unsigned)getNumberOfGroupByLevels;
- (unsigned)groupLevelForGroupUid:(const TSKUIDStruct *)uid;
- (unsigned)rowHeightInBodyOfTable:(id)table;
- (unsigned)rowIndexForRowUID:(const TSKUIDStruct *)d;
- (vector<TSUModelCellRect,)mergeRangesIntersectingCellRange:(TSTTableResolver *)self;
- (void)dirtyColumnOrderChanged;
- (void)resetAllFormulaDependenciesForCell:(const TSUCellCoord *)cell calcEngine:(id)engine;
- (void)resetDependenciesForCell:(const TSUCellCoord *)cell calcEngine:(id)engine;
- (void)upgradeStyleForFormulatextForCellCoord:(const TSUCellCoord *)coord;
- (void)willClose;
@end

@implementation TSTTableResolver

- (TSTTableResolver)initWithTableModel:(id)model
{
  modelCopy = model;
  v29.receiver = self;
  v29.super_class = TSTTableResolver;
  v6 = [(TSTTableResolver *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableModel, model);
    v12 = objc_msgSend_tableInfo(modelCopy, v8, v9, v10, v11);
    tableInfo = v7->_tableInfo;
    v7->_tableInfo = v12;

    v18 = objc_msgSend_calcEngine(modelCopy, v14, v15, v16, v17);
    v7->_calcEngine = v18;

    v23 = objc_msgSend_tableInfo(v7->_tableModel, v19, v20, v21, v22);
    v7->_isPivotTable = objc_msgSend_isAPivotTable(v23, v24, v25, v26, v27);
  }

  return v7;
}

- (TSTTableInfo)tableInfo
{
  tableInfo = self->_tableInfo;
  if (!tableInfo)
  {
    v7 = objc_msgSend_tableInfo(self->_tableModel, a2, v2, v3, v4);
    v8 = self->_tableInfo;
    self->_tableInfo = v7;

    tableInfo = self->_tableInfo;
  }

  return tableInfo;
}

- (TSCECalculationEngine)calcEngine
{
  calcEngine = self->_calcEngine;
  if (!calcEngine)
  {
    v7 = objc_msgSend_calcEngine(self->_tableModel, a2, v2, v3, v4);
    self->_calcEngine = v7;

    calcEngine = self->_calcEngine;
  }

  return calcEngine;
}

- (TSTTableTranslator)tableTranslator
{
  v5 = objc_msgSend_tableInfo(self->_tableModel, a2, v2, v3, v4);
  v10 = objc_msgSend_translator(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)isCategorized
{
  v5 = objc_msgSend_tableInfo(self->_tableModel, a2, v2, v3, v4);
  isCategorized = objc_msgSend_isCategorized(v5, v6, v7, v8, v9);

  return isCategorized;
}

- (BOOL)isPivotDataModel
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v6 = v5 == 0;

  return v6;
}

- (void)willClose
{
  objc_msgSend_willClose(self->_tableInfo, a2, v2, v3, v4);
  tableInfo = self->_tableInfo;
  self->_tableInfo = 0;

  tableModel = self->_tableModel;
  self->_tableModel = 0;
}

- (TSKUIDStruct)resolverUID
{
  v5 = objc_msgSend_tableUID(self->_tableModel, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)tableUID
{
  v5 = objc_msgSend_tableUID(self->_tableModel, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)conditionalStyleFormulaOwnerUID
{
  v5 = objc_msgSend_conditionalStyleFormulaOwnerUID(self->_tableModel, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)mergeOwnerUID
{
  v5 = objc_msgSend_mergeOwner(self->_tableModel, a2, v2, v3, v4);
  v10 = objc_msgSend_ownerUID(v5, v6, v7, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (TSCERangeCoordinate)tableRangeCoordinate
{
  v5 = objc_msgSend_range(self->_tableModel, a2, v2, v3, v4);

  v7 = j__TSUCellRectToTSCERangeCoordinate(v5, v6);
  result._bottomRight = v8;
  result._topLeft = v7;
  return result;
}

- (TSCERangeCoordinate)bodyRangeCoordinate
{
  v5 = objc_msgSend_bodyRange(self->_tableModel, a2, v2, v3, v4);

  v7 = j__TSUCellRectToTSCERangeCoordinate(v5, v6);
  result._bottomRight = v8;
  result._topLeft = v7;
  return result;
}

- (TSCERangeCoordinate)footerRangeCoordinate
{
  v5 = objc_msgSend_footerRowRange(self->_tableModel, a2, v2, v3, v4);

  v7 = j__TSUCellRectToTSCERangeCoordinate(v5, v6);
  result._bottomRight = v8;
  result._topLeft = v7;
  return result;
}

- (TSCERangeCoordinate)viewTableRangeCoordinate
{
  v5 = objc_msgSend_range(self->_tableInfo, a2, v2, v3, v4);

  v7 = j__TSUCellRectToTSCERangeCoordinate(v5, v6);
  result._bottomRight = v8;
  result._topLeft = v7;
  return result;
}

- (TSCERangeCoordinate)viewBodyRangeCoordinate
{
  v5 = objc_msgSend_bodyRange(self->_tableInfo, a2, v2, v3, v4);

  v7 = j__TSUCellRectToTSCERangeCoordinate(v5, v6);
  result._bottomRight = v8;
  result._topLeft = v7;
  return result;
}

- (NSString)sheetName
{
  v6 = objc_msgSend_documentRoot(self->_tableModel, a2, v2, v3, v4);
  v7 = TSUProtocolCast();

  v11 = objc_msgSend_resolverContainerNameForResolver_(v7, v8, self->_tableModel, v9, v10, &unk_283599058);

  return v11;
}

- (id)unpersistedFormulaStorageForCoord:(const TSUCellCoord *)coord withPrefix:(id)prefix withStyle:(id)style allowHeaderNames:(BOOL)names
{
  namesCopy = names;
  prefixCopy = prefix;
  styleCopy = style;
  v15 = objc_msgSend_context(self->_tableModel, v11, v12, v13, v14);
  v16 = *coord;
  v21 = objc_msgSend_stylesheet(styleCopy, v17, v18, v19, v20);
  v26 = objc_msgSend_documentRoot(self->_tableModel, v22, v23, v24, v25);
  v31 = objc_msgSend_documentLocale(v26, v27, v28, v29, v30);
  isLanguageFormulasDirectionRightToLeft = objc_msgSend_isLanguageFormulasDirectionRightToLeft(v31, v32, v33, v34, v35);

  v37 = [TSCEUnpersistedStorage alloc];
  v42 = objc_msgSend_defaultListStyle(v21, v38, v39, v40, v41);
  v44 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(v37, v43, v15, prefixCopy, 5, v21, styleCopy, v42, 0, 0, isLanguageFormulasDirectionRightToLeft);

  v48 = objc_msgSend_formulaAtBaseCellCoord_(self->_tableModel, v45, v16, v46, v47);
  if (objc_msgSend_isSpillFormula(v48, v49, v50, v51, v52))
  {
  }

  else if (v48)
  {
    v57 = objc_msgSend_calcEngine(self->_tableModel, v53, v54, v55, v56);
    v81[0] = objc_msgSend_tableUID(self->_tableModel, v58, v59, v60, v61);
    v81[1] = v62;
    v63 = [TSTFormula alloc];
    v65 = objc_msgSend_initWithContext_calculationEngine_baseHostCell_formula_ownerUID_suppressAutomaticNamedReferenceInvalidation_(v63, v64, v15, v57, v16, v48, v81, 1);
    v68 = v65;
    if (namesCopy)
    {
      objc_msgSend_insertFormulaTextNonRecursive_printingOptions_(v65, v66, v44, 1, v67);
    }

    else
    {
      objc_msgSend_insertFormulaTextNonRecursive_printingOptions_(v65, v66, v44, 3, v67);
    }

    if (!v44)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v76 = objc_msgSend_formulaSyntaxErrorAtBaseCellCoord_(self->_tableModel, v53, v16, v55, v56);
  if (v76)
  {
    v77 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v73, v76, v74, v75);

    if (v77)
    {
      objc_msgSend_insertString_atCharIndex_undoTransaction_(v77, v78, prefixCopy, 0, 0);
    }
  }

  else
  {

    v77 = 0;
  }

  v48 = 0;
  v44 = v77;
  if (v77)
  {
LABEL_14:
    objc_msgSend_detokenizeEntireStorage(v44, v69, v70, v71, v72);
  }

LABEL_15:

  return v44;
}

- (BOOL)hasNamesInHeaders
{
  v6 = objc_msgSend_bodyRange(self->_tableModel, a2, v2, v3, v4);
  v8 = v7;
  v12 = objc_msgSend_range(self->_tableModel, v7, v9, v10, v11);
  if (v6 != v12)
  {
    return 1;
  }

  return ((v12 ^ v6) & 0x101FFFF00000000) != 0 || v8 != v13;
}

- (BOOL)isHeaderCell:(const TSUCellCoord *)cell
{
  v6 = *cell;
  v17.origin = objc_msgSend_headerRowRange(self->_tableModel, a2, cell, v3, v4);
  v17.size = v7;
  v8 = v6;
  if (TSUCellRect::contains(&v17, v8))
  {
    return 1;
  }

  v16.origin = objc_msgSend_headerColumnRange(self->_tableModel, v9, v10, v11, v12);
  v16.size = v14;
  v15 = v6;
  return TSUCellRect::contains(&v16, v15);
}

- (BOOL)isFooterCell:(const TSUCellCoord *)cell
{
  v5 = *cell;
  v9.origin = objc_msgSend_footerRowRange(self->_tableModel, a2, cell, v3, v4);
  v9.size = v6;
  v7 = v5;
  return TSUCellRect::contains(&v9, v7);
}

- (BOOL)hasCellCoord:(const TSUCellCoord *)coord
{
  v9.origin = objc_msgSend_range(self->_tableModel, a2, coord, v3, v4);
  v9.size = v6;
  v7 = *coord;
  return TSUCellRect::contains(&v9, v7);
}

- (id)makeReferenceWithTopLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right preserveFlags:(const TSUPreserveFlags *)flags
{
  v9 = objc_msgSend_calcEngine(self, a2, left, right, flags);
  v20[0] = objc_msgSend_tableUID(self, v10, v11, v12, v13);
  v20[1] = v14;
  v17 = objc_msgSend_tableResolverWrapperForTableUID_(v9, v14, v20, v15, v16);

  if (v17)
  {
    v18 = TSCETableResolverWrapper::makeReferenceWithTopLeft(v17, left, right, flags);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)rangeIsWithinTable:(const TSCERangeRef *)table
{
  v7 = objc_msgSend_tableRangeCoordinate(self, a2, table, v3, v4);
  v9 = v8;
  if (!objc_msgSend_isPivotTable(self, v8, v10, v11, v12))
  {
    topLeft = table->range._topLeft;
    bottomRight = table->range._bottomRight;
    v19 = *&table->range._topLeft;
    v20 = *&table->range._topLeft & 0xFFFF00000000;
    if (v19 == 0x7FFFFFFF || v20 == 0x7FFF00000000)
    {
      v22 = *&bottomRight & 0xFFFF00000000;
    }

    else
    {
      v22 = *&bottomRight & 0xFFFF00000000;
      if (bottomRight.row != 0x7FFFFFFF && v22 != 0x7FFF00000000 && WORD2(*&table->range._topLeft) <= bottomRight.column && topLeft.row <= bottomRight.row)
      {
        goto LABEL_31;
      }
    }

    v23 = v19 != 0x7FFFFFFF && v20 == 0x7FFF00000000;
    result = 0;
    if (v23 && v22 == 0x7FFF00000000)
    {
      if (bottomRight.row == 0x7FFFFFFF || topLeft.row > bottomRight.row)
      {
        return result;
      }
    }

    else
    {
      if (v19 != 0x7FFFFFFF)
      {
        return result;
      }

      if (v20 == 0x7FFF00000000)
      {
        return result;
      }

      if (v22 == 0x7FFF00000000)
      {
        return result;
      }

      result = 0;
      if (bottomRight.row != 0x7FFFFFFF || WORD2(*&table->range._topLeft) > WORD2(*&table->range._bottomRight))
      {
        return result;
      }
    }

LABEL_31:
    v25 = v7 & 0xFFFF00000000;
    if (v7 == 0x7FFFFFFFLL || v25 == 0x7FFF00000000)
    {
      v26 = v9 & 0xFFFF00000000;
    }

    else
    {
      v26 = v9 & 0xFFFF00000000;
      if (v9 != 0x7FFFFFFF && v26 != 0x7FFF00000000)
      {
        v27 = WORD2(v7);
        if (WORD2(v7) <= WORD2(v9) && v7 <= v9)
        {
          goto LABEL_50;
        }
      }
    }

    if (v7 != 0x7FFFFFFFLL && v25 == 0x7FFF00000000 && v26 == 0x7FFF00000000)
    {
      result = 1;
      if (v9 == 0x7FFFFFFF || v7 > v9)
      {
        return result;
      }

      v27 = 0x7FFF;
    }

    else
    {
      result = 1;
      if (v7 != 0x7FFFFFFFLL)
      {
        return result;
      }

      if (v25 == 0x7FFF00000000)
      {
        return result;
      }

      if (v26 == 0x7FFF00000000)
      {
        return result;
      }

      if (v9 != 0x7FFFFFFF)
      {
        return result;
      }

      v27 = WORD2(v7);
      if (WORD2(v7) > WORD2(v9))
      {
        return result;
      }
    }

LABEL_50:
    if (v27 <= topLeft.column && bottomRight.column <= WORD2(v9))
    {
      result = 1;
    }

    else
    {
      result = 0;
      if (v7 != 0x7FFFFFFFLL && v25 == 0x7FFF00000000 && (v9 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        result = v9 != 0x7FFFFFFF;
      }
    }

    if (v7 > topLeft.row || bottomRight.row > v9)
    {
      v28 = 0;
      if (v7 == 0x7FFFFFFFLL && v25 != 0x7FFF00000000 && (v9 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v28 = v9 == 0x7FFFFFFF;
      }
    }

    else
    {
      v28 = 1;
    }

    v29 = *&topLeft & 0xFFFF00000000;
    v30 = *&bottomRight & 0xFFFF00000000;
    if (topLeft.row != 0x7FFFFFFFLL || v29 == 0x7FFF00000000 || v30 == 0x7FFF00000000)
    {
      if (topLeft.row != 0x7FFFFFFFLL && v29 == 0x7FFF00000000 && v30 == 0x7FFF00000000)
      {
        if (bottomRight.row == 0x7FFFFFFF)
        {
          return result && v28;
        }

        else
        {
          return v28;
        }
      }
    }

    else if (bottomRight.row == 0x7FFFFFFF)
    {
      return result;
    }

    return result && v28;
  }

  return objc_msgSend_rangeIsWithinTableInView_(self, v13, table, v14, v15);
}

- (BOOL)rangeIsWithinTableInView:(const TSCERangeRef *)view
{
  v6 = objc_msgSend_range(self->_tableInfo, a2, view, v3, v4);
  v8 = j__TSUCellRectToTSCERangeCoordinate(v6, v7);
  topLeft = view->range._topLeft;
  bottomRight = view->range._bottomRight;
  v12 = *&view->range._topLeft;
  v13 = *&view->range._topLeft & 0xFFFF00000000;
  if (v12 == 0x7FFFFFFF || v13 == 0x7FFF00000000)
  {
    v15 = *&bottomRight & 0xFFFF00000000;
  }

  else
  {
    v15 = *&bottomRight & 0xFFFF00000000;
    if (bottomRight.row != 0x7FFFFFFF && v15 != 0x7FFF00000000 && WORD2(*&view->range._topLeft) <= bottomRight.column && topLeft.row <= bottomRight.row)
    {
      goto LABEL_27;
    }
  }

  if (v12 != 0x7FFFFFFF && v13 == 0x7FFF00000000 && v15 == 0x7FFF00000000)
  {
    v18 = 0;
    if (bottomRight.row == 0x7FFFFFFF || topLeft.row > bottomRight.row)
    {
      return v18;
    }
  }

  else
  {
    v18 = 0;
    if (v12 != 0x7FFFFFFF)
    {
      return v18;
    }

    if (v13 == 0x7FFF00000000)
    {
      return v18;
    }

    if (v15 == 0x7FFF00000000)
    {
      return v18;
    }

    v18 = 0;
    if (bottomRight.row != 0x7FFFFFFF || WORD2(*&view->range._topLeft) > WORD2(*&view->range._bottomRight))
    {
      return v18;
    }
  }

LABEL_27:
  v19 = v8 & 0xFFFF00000000;
  if (v8 == 0x7FFFFFFFLL || v19 == 0x7FFF00000000)
  {
    v20 = v9 & 0xFFFF00000000;
    goto LABEL_35;
  }

  v20 = v9 & 0xFFFF00000000;
  if (v9 == 0x7FFFFFFF || v20 == 0x7FFF00000000 || (v21 = WORD2(v8), WORD2(v8) > WORD2(v9)) || v8 > v9)
  {
LABEL_35:
    if (v8 != 0x7FFFFFFFLL && v19 == 0x7FFF00000000 && v20 == 0x7FFF00000000)
    {
      v18 = 1;
      if (v9 == 0x7FFFFFFF || v8 > v9)
      {
        return v18;
      }

      v21 = 0x7FFF;
    }

    else
    {
      v18 = 1;
      if (v8 != 0x7FFFFFFFLL)
      {
        return v18;
      }

      if (v19 == 0x7FFF00000000)
      {
        return v18;
      }

      if (v20 == 0x7FFF00000000)
      {
        return v18;
      }

      if (v9 != 0x7FFFFFFF)
      {
        return v18;
      }

      v21 = WORD2(v8);
      if (WORD2(v8) > WORD2(v9))
      {
        return v18;
      }
    }
  }

  if (v21 <= topLeft.column && bottomRight.column <= WORD2(v9))
  {
    v18 = 1;
  }

  else
  {
    v18 = 0;
    if (v8 != 0x7FFFFFFFLL && v19 == 0x7FFF00000000 && (v9 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v18 = v9 != 0x7FFFFFFF;
    }
  }

  if (v8 > topLeft.row || bottomRight.row > v9)
  {
    v22 = 0;
    if (v8 == 0x7FFFFFFFLL && v19 != 0x7FFF00000000 && (v9 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v22 = v9 == 0x7FFFFFFF;
    }
  }

  else
  {
    v22 = 1;
  }

  v23 = *&topLeft & 0xFFFF00000000;
  v24 = *&bottomRight & 0xFFFF00000000;
  if (topLeft.row == 0x7FFFFFFFLL && v23 != 0x7FFF00000000 && v24 != 0x7FFF00000000)
  {
    if (bottomRight.row == 0x7FFFFFFF)
    {
      return v18;
    }

    return v18 & v22;
  }

  if (topLeft.row == 0x7FFFFFFFLL || v23 != 0x7FFF00000000 || v24 != 0x7FFF00000000)
  {
    return v18 & v22;
  }

  v18 &= v22;
  if (bottomRight.row != 0x7FFFFFFF)
  {
    return v22;
  }

  return v18;
}

- (unsigned)rowHeightInBodyOfTable:(id)table
{
  tableCopy = table;
  v9 = objc_msgSend_bodyRowRange(self->_tableModel, v5, v6, v7, v8);
  v11 = j__TSUCellRectToTSCERangeCoordinate(v9, v10);
  v13 = v12;
  if (objc_msgSend_isAPivotTable(self->_tableInfo, v12, v14, v15, v16))
  {
    v21 = objc_msgSend_bodyRowRange(self->_tableInfo, v17, v18, v19, v20);
    v11 = j__TSUCellRectToTSCERangeCoordinate(v21, v22);
    v13 = v17;
  }

  if (objc_msgSend_spansAllRows(tableCopy, v17, v18, v19, v20))
  {
    v23 = v13 - v11 + 1;
  }

  else
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x5012000000;
    v32 = sub_221589234;
    v33 = sub_221589258;
    v34 = &unk_22188E88F;
    TSUIndexSet::TSUIndexSet(&v35);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_221589260;
    v28[3] = &unk_278467068;
    v28[5] = v11;
    v28[6] = v13;
    v28[4] = &v29;
    objc_msgSend_foreachRangeRef_(tableCopy, v24, v28, v25, v26);
    v23 = TSUIndexSet::count((v30 + 6));
    _Block_object_dispose(&v29, 8);
    TSUIndexSet::~TSUIndexSet(&v35);
  }

  return v23;
}

- (unsigned)columnWidthInBodyOfTable:(id)table
{
  tableCopy = table;
  v9 = objc_msgSend_bodyColumnRange(self->_tableModel, v5, v6, v7, v8);
  v11 = j__TSUCellRectToTSCERangeCoordinate(v9, v10);
  v13 = v12;
  if (objc_msgSend_isAPivotTable(self->_tableInfo, v12, v14, v15, v16))
  {
    v21 = objc_msgSend_bodyColumnRange(self->_tableInfo, v17, v18, v19, v20);
    v11 = j__TSUCellRectToTSCERangeCoordinate(v21, v22);
    v13 = v17;
  }

  if (objc_msgSend_spansAllColumns(tableCopy, v17, v18, v19, v20))
  {
    v23 = WORD2(v13) - WORD2(v11) + 1;
  }

  else
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x5012000000;
    v32 = sub_221589234;
    v33 = sub_221589258;
    v34 = &unk_22188E88F;
    TSUIndexSet::TSUIndexSet(&v35);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_221589850;
    v28[3] = &unk_278467068;
    v28[5] = v11;
    v28[6] = v13;
    v28[4] = &v29;
    objc_msgSend_foreachRangeRef_(tableCopy, v24, v28, v25, v26);
    v23 = TSUIndexSet::count((v30 + 6));
    _Block_object_dispose(&v29, 8);
    TSUIndexSet::~TSUIndexSet(&v35);
  }

  return v23;
}

- (void)upgradeStyleForFormulatextForCellCoord:(const TSUCellCoord *)coord
{
  if ((*coord & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    v9 = objc_msgSend_cellsPendingWrite(self->_tableModel, a2, coord, v3, v4);
    objc_msgSend_upgradeStyleForFormulatextForCellCoord_(v9, v6, coord, v7, v8);
  }
}

- (TSCECoordMapper)coordMapper
{
  v5 = objc_msgSend_translator(self->_tableInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_coordinateMapper(v5, v6, v7, v8, v9);

  return v10;
}

- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index
{
  v5 = *&index;
  v6 = objc_msgSend_columnRowUIDMap(self->_tableModel, a2, *&index, v3, v4);
  v10 = objc_msgSend_rowUIDForRowIndex_(v6, v7, v5, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (unsigned)rowIndexForRowUID:(const TSKUIDStruct *)d
{
  dCopy = d;
  v6 = objc_msgSend_columnRowUIDMap(self->_tableModel, a2, d, v3, v4);
  LODWORD(dCopy) = objc_msgSend_rowIndexForRowUID_(v6, v7, dCopy->_lower, dCopy->_upper, v8);

  return dCopy;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)indexes
{
  v16 = a4;
  v10 = objc_msgSend_columnRowUIDMap(self->_tableModel, v6, v7, v8, v9);
  v14 = v10;
  if (v10)
  {
    objc_msgSend_rowUIDsForRowIndexes_(v10, v11, v16, v12, v13);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (id)mutableRowIndexesForUIDs:(const void *)ds
{
  v6 = objc_msgSend_columnRowUIDMap(self->_tableModel, a2, ds, v3, v4);
  v10 = objc_msgSend_mutableRowIndexesForUIDs_(v6, v7, ds, v8, v9);

  return v10;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range
{
  length = a4.length;
  location = a4.location;
  v8 = objc_msgSend_columnRowUIDMap(self->_tableModel, range, a4.location, a4.length, v4);
  v12 = v8;
  if (v8)
  {
    objc_msgSend_rowUIDsForRowRange_(v8, v9, location, length, v10);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)viewOrderedRowUids:(SEL)uids
{
  v8 = objc_msgSend_rowIndexesForUIDs_(self->_tableInfo, uids, a4, v4, v5);
  tableInfo = self->_tableInfo;
  v13 = v8;
  if (tableInfo)
  {
    objc_msgSend_rowUIDsForRowIndexes_(tableInfo, v8, v8, v9, v10);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index
{
  indexCopy = index;
  v6 = objc_msgSend_columnRowUIDMap(self->_tableModel, a2, index, v3, v4);
  v10 = objc_msgSend_columnUIDForColumnIndex_(v6, v7, indexCopy, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (unsigned)columnIndexForColumnUID:(const TSKUIDStruct *)d
{
  dCopy = d;
  v6 = objc_msgSend_columnRowUIDMap(self->_tableModel, a2, d, v3, v4);
  LOWORD(dCopy) = objc_msgSend_columnIndexForColumnUID_(v6, v7, dCopy->_lower, dCopy->_upper, v8);

  return dCopy;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes
{
  v16 = a4;
  v10 = objc_msgSend_columnRowUIDMap(self->_tableModel, v6, v7, v8, v9);
  v14 = v10;
  if (v10)
  {
    objc_msgSend_columnUIDsForColumnIndexes_(v10, v11, v16, v12, v13);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (id)mutableColumnIndexesForUIDs:(const void *)ds
{
  v6 = objc_msgSend_columnRowUIDMap(self->_tableModel, a2, ds, v3, v4);
  v10 = objc_msgSend_mutableColumnIndexesForUIDs_(v6, v7, ds, v8, v9);

  return v10;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range
{
  length = a4.length;
  location = a4.location;
  v8 = objc_msgSend_columnRowUIDMap(self->_tableModel, range, a4.location, a4.length, v4);
  v12 = v8;
  if (v8)
  {
    objc_msgSend_columnUIDsForColumnRange_(v8, v9, location, length, v10);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStruct)UIDForIndex:(unsigned int)index isRows:(BOOL)rows
{
  if (rows)
  {
    v5 = objc_msgSend_rowUIDForRowIndex_(self, a2, *&index, rows, v4);
  }

  else
  {
    v5 = objc_msgSend_columnUIDForColumnIndex_(self, a2, index, rows, v4);
  }

  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForIndexes:(SEL)indexes isRows:(id)rows
{
  v5 = a5;
  rowsCopy = rows;
  v11 = rowsCopy;
  if (v5)
  {
    objc_msgSend_rowUIDsForRowIndexes_(self, rowsCopy, rowsCopy, v8, v9);
  }

  else
  {
    objc_msgSend_columnUIDsForColumnIndexes_(self, rowsCopy, rowsCopy, v8, v9);
  }

  return result;
}

- (id)mutableIndexesForUIDs:(const void *)ds isRows:(BOOL)rows
{
  if (rows)
  {
    objc_msgSend_mutableRowIndexesForUIDs_(self, a2, ds, rows, v4);
  }

  else
  {
    objc_msgSend_mutableColumnIndexesForUIDs_(self, a2, ds, rows, v4);
  }
  v5 = ;

  return v5;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForRange:(SEL)range isRows:(_NSRange)rows
{
  if (a5)
  {
    return objc_msgSend_rowUIDsForRowRange_(self, range, rows.location, rows.length, a5);
  }

  else
  {
    return objc_msgSend_columnUIDsForColumnRange_(self, range, rows.location, rows.length, a5);
  }
}

- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows
{
  rowsCopy = rows;
  indexesCopy = indexes;
  v11 = objc_msgSend_columnRowUIDMap(self->_tableModel, v7, v8, v9, v10);
  v14 = objc_msgSend_UIDSetForIndexes_isRows_(v11, v12, indexesCopy, rowsCopy, v13);

  return v14;
}

- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds
{
  rowsCopy = rows;
  setCopy = set;
  dsCopy = ds;
  v14 = objc_msgSend_columnRowUIDMap(self->_tableModel, v10, v11, v12, v13);
  v16 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(v14, v15, setCopy, rowsCopy, dsCopy);

  return v16;
}

- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows
{
  rowsCopy = rows;
  setCopy = set;
  v11 = objc_msgSend_columnRowUIDMap(self->_tableModel, v7, v8, v9, v10);
  isRows = objc_msgSend_firstUidFromUIDSet_isRows_(v11, v12, setCopy, rowsCopy, v13);
  v16 = v15;

  v17 = isRows;
  v18 = v16;
  result._upper = v18;
  result._lower = v17;
  return result;
}

- (id)UIDSetForRange:(_NSRange)range isRows:(BOOL)rows
{
  rowsCopy = rows;
  v6 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a2, range.location, range.length, rows);
  v9 = objc_msgSend_UIDSetForIndexes_isRows_(self, v7, v6, rowsCopy, v8);

  return v9;
}

- (TSCERangeCoordinate)expandCellRangeToCoverMergedCells:(const TSCERangeCoordinate *)cells
{
  topLeft = cells->_topLeft;
  bottomRight = cells->_bottomRight;
  v8 = objc_msgSend_range(self->_tableModel, a2, cells, v3, v4);
  v9 = __C(topLeft, bottomRight, v8);
  v11 = v10;
  v15 = objc_msgSend_mergeOwner(self->_tableModel, v10, v12, v13, v14);
  v18 = objc_msgSend_expandBaseCellRectToCoverMergedCells_(v15, v16, v9, v11, v17);
  v20 = v19;

  v21 = j__TSUCellRectToTSCERangeCoordinate(v18, v20);
  result._bottomRight = v22;
  result._topLeft = v21;
  return result;
}

- (vector<TSUModelCellRect,)mergeRangesIntersectingCellRange:(TSTTableResolver *)self
{
  topLeft = a4->_topLeft;
  bottomRight = a4->_bottomRight;
  v10 = objc_msgSend_range(self->_tableModel, a3, a4, v4, v5);
  v11 = __C(topLeft, bottomRight, v10);
  v13 = v12;
  v17 = objc_msgSend_mergeOwner(self->_tableModel, v12, v14, v15, v16);
  v21 = v17;
  if (v17)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRect_(v17, v18, v11, v13, v19);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (TSUModelCellRect)mergedRangeForBaseCellCoord:(const TSUModelCellCoord *)coord
{
  v5 = objc_msgSend_mergedRangeForBaseCellCoord_(self->_tableModel, a2, *coord, v3, v4);
  result.var0.size = v6;
  result.var0.origin = v5;
  return result;
}

- (id)canonicalCellReferenceForReference:(id)reference
{
  referenceCopy = reference;
  v8 = objc_msgSend_rangeCoord(referenceCopy, v4, v5, v6, v7);
  v31._topLeft = v8;
  v31._bottomRight = v9;
  if (v8 == 0x7FFFFFFF || (v8 & 0xFFFF00000000) == 0x7FFF00000000 || v9.row == 0x7FFFFFFF || (*&v9 & 0xFFFF00000000) == 0x7FFF00000000 || WORD2(v8) > v9.column || v8 > v9.row || !TSCERangeCoordinate::isSingleCell(&v31) || (v18 = objc_msgSend_tableResolver(referenceCopy, v10, v11, v12, v13)) == 0 || (v30.origin = objc_msgSend_topLeft(referenceCopy, v14, v15, v16, v17), v30.origin = TSCETableResolverWrapper::mergedRangeForBaseCellCoord(v18, &v30, v19, v20, v21), v30.size = v22, !TSUCellRect::isValid(&v30)))
  {
    v25 = referenceCopy;
  }

  else
  {
    origin = v30.origin;
    v23 = [TSCEEvalRef alloc];
    v28 = 0;
    v25 = objc_msgSend_initWithTableResolver_topLeft_bottomRight_preserveFlags_(v23, v24, v18, &origin, &origin, &v28);
  }

  v26 = v25;

  return v26;
}

- (TSCERangeCoordinate)preMergeRangeFromUidTract:(id)tract
{
  tractCopy = tract;
  v9 = tractCopy;
  if (!tractCopy)
  {
    goto LABEL_7;
  }

  v10 = objc_msgSend_columnUids(tractCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_mutableColumnIndexesForUIDs_(self, v11, v10, v12, v13);
  v19 = objc_msgSend_rowUids(v9, v15, v16, v17, v18);
  v23 = objc_msgSend_mutableRowIndexesForUIDs_(self, v20, v19, v21, v22);
  if (!objc_msgSend_count(v23, v24, v25, v26, v27) || !objc_msgSend_count(v14, v28, v29, v30, v31))
  {

    goto LABEL_7;
  }

  Index = objc_msgSend_firstIndex(v14, v32, v33, v34, v35);
  v41 = objc_msgSend_firstIndex(v23, v37, v38, v39, v40);
  v46 = objc_msgSend_lastIndex(v14, v42, v43, v44, v45);
  v51 = objc_msgSend_lastIndex(v23, v47, v48, v49, v50);
  v55 = v41 | (Index << 32);
  v56 = v51;
  v57 = v51 | (v46 << 32);
  if (v55 != 0x7FFF7FFFFFFFLL)
  {
    v59 = Index;
    if (v57 == 0x7FFF7FFFFFFFLL)
    {
LABEL_10:
      v58 = 0x100000001;
      v56 = v41;
      goto LABEL_47;
    }

    if (Index == 0x7FFFLL || v41 != 0x7FFFFFFFLL)
    {
      v64 = Index != 0x7FFFLL && v41 == 0x7FFFFFFF;
      if (v41 <= v51)
      {
        v64 = 1;
      }

      if (v41 < v51 || !v64)
      {
        goto LABEL_32;
      }

      if (Index == 0x7FFFLL && v41 != 0x7FFFFFFFLL)
      {
        v58 = 0x100000001;
        v56 = v41;
        v59 = 0x7FFFLL;
        goto LABEL_47;
      }
    }

    if (Index <= v46)
    {
      v62 = Index == 0x7FFFLL ? 0x7FFF : Index;
      if (v62 >= v46)
      {
        goto LABEL_10;
      }
    }

LABEL_32:
    if (Index >= v46)
    {
      v65 = v46;
    }

    else
    {
      v65 = Index;
    }

    if (Index == 0x7FFFLL)
    {
      v66 = 0x7FFF;
    }

    else
    {
      v66 = Index;
    }

    if (v46 > v66)
    {
      v66 = v46;
    }

    if (v41 >= v51)
    {
      v56 = v51;
    }

    else
    {
      v56 = v41;
    }

    if (v41 <= v51)
    {
      v67 = v51;
    }

    else
    {
      v67 = v41;
    }

    v58 = (((v66 - v65 + 1) | ((v67 - v56) << 32)) + 0x100000000);
    v59 = v65;
    goto LABEL_47;
  }

  v58 = 0x100000001;
  v59 = v46;
LABEL_47:
  v71.origin = (v56 | (v59 << 32));
  v71.size = v58;
  v70.origin = objc_msgSend_mergedRangeForBaseCellCoord_(self->_tableModel, v52, *&v71.origin, v53, v54);
  v70.size = v68;
  if (TSUCellRect::isValid(&v70) & 1) == 0 || TSUCellRect::isSingleCell(&v71) && v71.origin.row == v70.origin.row && ((*&v70.origin ^ *&v71.origin) & 0x101FFFF00000000) == 0 || (TSUCellRect::contains(&v71, &v70))
  {

    goto LABEL_8;
  }

  v69 = TSUCellRect::contains(&v70, &v71);

  if (!v69)
  {
    goto LABEL_8;
  }

LABEL_7:
  v55 = 0x7FFF7FFFFFFFLL;
  v57 = 0x7FFF7FFFFFFFLL;
LABEL_8:

  v60 = v55;
  v61 = v57;
  result._bottomRight = v61;
  result._topLeft = v60;
  return result;
}

- (TSCERangeCoordinate)apparentRangeForRange:(const TSCERangeCoordinate *)range rangeContext:(unsigned __int8)context
{
  contextCopy = context;
  v8 = 0x7FFF7FFFFFFFLL;
  v9 = objc_msgSend_bodyRange(self->_tableModel, a2, range, context, v4);
  v11 = j__TSUCellRectToTSCERangeCoordinate(v9, v10);
  v13 = v12;
  v17 = objc_msgSend_range(self->_tableModel, v12, v14, v15, v16);
  v19 = j__TSUCellRectToTSCERangeCoordinate(v17, v18);
  v21 = v20;
  topLeft = range->_topLeft;
  bottomRight = range->_bottomRight;
  v24 = WORD2(*&range->_topLeft);
  v30 = v24 >= WORD2(v19) && topLeft <= v21 && topLeft >= v19 && v24 <= WORD2(v21) && WORD2(bottomRight) >= WORD2(v19) && bottomRight <= v21 && bottomRight >= v19;
  v31 = topLeft & 0xFFFF00000000;
  if (v30 && WORD2(bottomRight) <= WORD2(v21))
  {
    v35 = bottomRight & 0xFFFF00000000;
    v36 = topLeft;
    goto LABEL_34;
  }

  v33 = bottomRight & 0xFFFF00000000;
  v36 = topLeft;
  if (topLeft == 0x7FFFFFFFLL && v31 != 0x7FFF00000000 && v33 != 0x7FFF00000000)
  {
    v36 = 0x7FFFFFFFLL;
    if (bottomRight == 0x7FFFFFFF)
    {
      v35 = bottomRight & 0xFFFF00000000;
      goto LABEL_42;
    }

LABEL_33:
    v34 = 0x7FFF7FFFFFFFLL;
    goto LABEL_55;
  }

  if (topLeft == 0x7FFFFFFFLL)
  {
    goto LABEL_33;
  }

  v35 = 0x7FFF00000000;
  if (v31 != 0x7FFF00000000)
  {
    goto LABEL_33;
  }

  v31 = 0x7FFF00000000;
  if (v33 != 0x7FFF00000000 || bottomRight == 0x7FFFFFFFLL)
  {
    goto LABEL_33;
  }

LABEL_34:
  if (v36 != 0x7FFFFFFF && v31 == 0x7FFF00000000 && v35 == 0x7FFF00000000)
  {
    if (bottomRight != 0x7FFFFFFF)
    {
      v34 = 0x7FFF7FFFFFFFLL;
      if (bottomRight <= v21)
      {
        if (contextCopy != 1)
        {
          if ((contextCopy & 0xFFFFFFFD) == 0)
          {
            v13 = v13 & 0xFFFFFFFF00000000 | v21;
            v19 = v11 & 0xFFFFFFFF00000000;
LABEL_52:
            v21 = v13;
            goto LABEL_53;
          }

          goto LABEL_54;
        }

        goto LABEL_53;
      }

      goto LABEL_55;
    }

LABEL_50:
    if (contextCopy == 2)
    {
      v19 = v11;
      goto LABEL_52;
    }

    goto LABEL_54;
  }

LABEL_42:
  if (v36 != 0x7FFFFFFF || v31 == 0x7FFF00000000 || v35 == 0x7FFF00000000 || bottomRight != 0x7FFFFFFFLL)
  {
    goto LABEL_50;
  }

  v34 = 0x7FFF7FFFFFFFLL;
  if (WORD2(bottomRight) <= WORD2(v21))
  {
    if (contextCopy != 1)
    {
      if ((contextCopy & 0xFFFFFFFD) == 0)
      {
        v13 = v13 & 0xFFFF0000FFFFFFFFLL | (WORD2(v21) << 32);
        v19 = v11 & 0xFFFF0000FFFFFFFFLL;
        goto LABEL_52;
      }

LABEL_54:
      v8 = topLeft;
      v34 = bottomRight;
      goto LABEL_55;
    }

LABEL_53:
    topLeft = sub_22158AA80(topLeft, bottomRight, v19, v21);
    goto LABEL_54;
  }

LABEL_55:
  v37 = v8;
  v38 = v34;
  result._bottomRight = v38;
  result._topLeft = v37;
  return result;
}

- (TSCECellTractRefCore)apparentTractRefForTractRef:(SEL)ref rangeContext:(const TSCECellTractRefCore *)context
{
  v5 = a5;
  sub_2210F0C3C(retstr);
  v50.origin = objc_msgSend_range(self->_tableModel, v9, v10, v11, v12);
  v50.size = v13;
  v14 = TSCECellTractRefCore::topLeft(context);
  v15 = TSCECellTractRefCore::bottomRight(context);
  v49.origin = v14;
  v49.size = (((WORD2(v15) - WORD2(v14) + 1) | ((v15 - v14) << 32)) + 0x100000000);
  isPivotTable = objc_msgSend_isPivotTable(self, v16, v17, v18, v19);
  if (isPivotTable)
  {
    v50.origin = objc_msgSend_range(self->_tableInfo, v20, v21, v22, v23);
    v50.size = v25;
  }

  if ((TSUCellRect::contains(&v50, &v49) & 1) != 0 || (result = TSUCellRect::isSpanning(&v49), result))
  {
    spanType = context->_spanType;
    if (spanType != 2)
    {
      if (spanType != 1)
      {
        if (v5 == 2)
        {
          TSUIndexSet::operator=();
          TSUIndexSet::operator=();
          retstr->_tableUID = context->_tableUID;
          *(&retstr->_tableUID._upper + 5) = *(&context->_tableUID._upper + 5);
          if (isPivotTable)
          {
            v48.origin = objc_msgSend_bodyRange(self->_tableInfo, v39, v40, v41, v42);
            v48.size = v43;
            return TSCECellTractRefCore::intersectWithCellRect(retstr, &v48);
          }

          else
          {
            v48.origin = objc_msgSend_bodyRange(self->_tableModel, v39, v40, v41, v42);
            v48.size = v44;
            return TSCECellTractRefCore::intersectWithCellRect(retstr, &v48);
          }
        }

        else
        {
          TSUIndexSet::operator=();
          result = TSUIndexSet::operator=();
          retstr->_tableUID = context->_tableUID;
          *(&retstr->_tableUID._upper + 5) = *(&context->_tableUID._upper + 5);
        }

        return result;
      }

      v28 = TSUCellRect::lastRow(&v50);
      result = TSUCellRect::lastRow(&v49);
      if (v28 < result)
      {
        return result;
      }

      TSUIndexSet::operator=();
      result = TSUIndexSet::operator=();
      retstr->_tableUID = context->_tableUID;
      *(&retstr->_tableUID._upper + 5) = *(&context->_tableUID._upper + 5);
      if (v5 != 1)
      {
        if ((v5 & 0xFFFFFFFD) == 0)
        {
          if (isPivotTable)
          {
            v48.origin = objc_msgSend_bodyColumnRange(self->_tableInfo, v29, v30, v31, v32);
            v48.size = v33;
            return TSCECellTractRefCore::intersectWithCellRect(retstr, &v48);
          }

          else
          {
            v48.origin = objc_msgSend_bodyColumnRange(self->_tableModel, v29, v30, v31, v32);
            v48.size = v46;
            return TSCECellTractRefCore::intersectWithCellRect(retstr, &v48);
          }
        }

        return result;
      }

      return TSCECellTractRefCore::intersectWithCellRect(retstr, &v50);
    }

    v34 = TSUCellRect::lastColumn(&v50);
    result = TSUCellRect::lastColumn(&v49);
    if (v34 < result)
    {
      return result;
    }

    TSUIndexSet::operator=();
    result = TSUIndexSet::operator=();
    retstr->_tableUID = context->_tableUID;
    *(&retstr->_tableUID._upper + 5) = *(&context->_tableUID._upper + 5);
    if (v5 == 1)
    {
      return TSCECellTractRefCore::intersectWithCellRect(retstr, &v50);
    }

    if ((v5 & 0xFFFFFFFD) == 0)
    {
      if (isPivotTable)
      {
        v48.origin = objc_msgSend_bodyRowRange(self->_tableInfo, v35, v36, v37, v38);
        v48.size = v45;
        return TSCECellTractRefCore::intersectWithCellRect(retstr, &v48);
      }

      else
      {
        v48.origin = objc_msgSend_bodyRowRange(self->_tableModel, v35, v36, v37, v38);
        v48.size = v47;
        return TSCECellTractRefCore::intersectWithCellRect(retstr, &v48);
      }
    }
  }

  return result;
}

- (id)apparentGridForRangeContext:(id)context rangeContext:(unsigned __int8)rangeContext spansAllColumns:(BOOL)columns spansAllRows:(BOOL)rows
{
  rowsCopy = rows;
  columnsCopy = columns;
  rangeContextCopy = rangeContext;
  contextCopy = context;
  v68.origin = objc_msgSend_range(self->_tableModel, v11, v12, v13, v14);
  v68.size = v15;
  v19 = objc_msgSend_topLeftCoord(contextCopy, v15, v16, v17, v18);
  v24 = objc_msgSend_topLeftCoord(contextCopy, v20, v21, v22, v23);
  v29 = objc_msgSend_dimensions(contextCopy, v25, v26, v27, v28);
  v34 = objc_msgSend_dimensions(contextCopy, v30, v31, v32, v33);
  *(&v35 + 1) = v19;
  *&v35 = v24;
  isPivotTable = objc_msgSend_isPivotTable(self, v36, v37, v38, v39, (v35 >> 32) & 0xFFFFFFFFFFFFLL, v34 & 0xFFFFFFFF00000000 | v29);
  if (isPivotTable)
  {
    v68.origin = objc_msgSend_range(self->_tableInfo, v40, v41, v42, v43);
    v68.size = v45;
  }

  if (TSUCellRect::contains(&v68, &v67))
  {
    if (columnsCopy)
    {
      if (rangeContextCopy != 1)
      {
        if ((rangeContextCopy & 0xFFFFFFFD) == 0)
        {
          if (isPivotTable)
          {
            v50 = objc_msgSend_bodyColumnRange(self->_tableInfo, v46, v47, v48, v49);
LABEL_22:
            objc_msgSend_intersectionWithCellRect_(contextCopy, v51, v50, v51, v52);
            goto LABEL_23;
          }

          v59 = objc_msgSend_bodyColumnRange(self->_tableModel, v46, v47, v48, v49);
          v58 = objc_msgSend_intersectionWithCellRect_(contextCopy, v60, v59, v60, v61);
          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (!rowsCopy)
      {
        if (rangeContextCopy == 2)
        {
          if (isPivotTable)
          {
            v50 = objc_msgSend_bodyRange(self->_tableInfo, v46, v47, v48, v49);
            goto LABEL_22;
          }

          v55 = objc_msgSend_bodyRange(self->_tableModel, v46, v47, v48, v49);
          v58 = objc_msgSend_intersectionWithCellRect_(contextCopy, v56, v55, v56, v57);
LABEL_24:
          v54 = v58;
          goto LABEL_25;
        }

LABEL_17:
        v54 = 0;
LABEL_25:
        if (v54)
        {
          v62 = v54;
        }

        else
        {
          v62 = contextCopy;
        }

        v53 = v62;

        goto LABEL_29;
      }

      if (rangeContextCopy != 1)
      {
        if ((rangeContextCopy & 0xFFFFFFFD) == 0)
        {
          if (!isPivotTable)
          {
            v64 = objc_msgSend_bodyRowRange(self->_tableModel, v46, v47, v48, v49);
            v58 = objc_msgSend_intersectionWithCellRect_(contextCopy, v65, v64, v65, v66);
            goto LABEL_24;
          }

          v50 = objc_msgSend_bodyRowRange(self->_tableInfo, v46, v47, v48, v49);
          goto LABEL_22;
        }

        goto LABEL_17;
      }
    }

    objc_msgSend_intersectionWithCellRect_(contextCopy, v46, *&v68.origin, *&v68.size, v49);
    v58 = LABEL_23:;
    goto LABEL_24;
  }

  v53 = objc_opt_new();
LABEL_29:

  return v53;
}

- (TSCECellCoordSet)cellsModifiedInCurrentRecalcCycle
{
  result = self->_tableModel;
  if (result)
  {
    return (MEMORY[0x2821F9670])(result, sel_cellsModifiedInCurrentRecalcCycle);
  }

  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation = 0u;
  *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
  return result;
}

- (void)resetDependenciesForCell:(const TSUCellCoord *)cell calcEngine:(id)engine
{
  engineCopy = engine;
  v6 = *cell;
  v11 = objc_msgSend_formulaSpecAtBaseCellCoord_(self->_tableModel, v7, *cell, v8, v9);
  if (v11)
  {
    objc_msgSend_updateCalculationEngineForFormula_inBaseCellCoord_usingCalcEngine_(self->_tableModel, v10, v11, v6, engineCopy);
  }
}

- (void)resetAllFormulaDependenciesForCell:(const TSUCellCoord *)cell calcEngine:(id)engine
{
  engineCopy = engine;
  v7 = *cell;
  if (!objc_msgSend_cellExistsAtBaseCellCoord_(self->_tableModel, v8, *cell, v9, v10))
  {
    goto LABEL_4;
  }

  v15 = objc_msgSend_newCell(self->_tableModel, v11, v12, v13, v14);
  if (objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self->_tableModel, v16, v15, v7, 1))
  {

LABEL_4:
    v59 = objc_msgSend_tableUID(self->_tableModel, v11, v12, v13, v14);
    v60 = v17;
    objc_msgSend_removeFormulaAt_inOwner_(engineCopy, v17, cell, &v59, v18);
    v23 = objc_msgSend_conditionalStyleFormulaOwner(self->_tableModel, v19, v20, v21, v22);
    objc_msgSend_removeFormulaAtCellID_(v23, v24, *cell, v25, v26);
    v15 = v23;
    goto LABEL_5;
  }

  if (!v15)
  {
    goto LABEL_4;
  }

  if (objc_msgSend_hasFormula(v15, v11, v12, v13, v14))
  {
    v31 = objc_msgSend_cellSpec(v15, v27, v28, v29, v30);
    v36 = objc_msgSend_asFormulaSpec(v31, v32, v33, v34, v35);

    if (v36)
    {
      objc_msgSend_updateCalculationEngineForFormula_inBaseCellCoord_usingCalcEngine_(self->_tableModel, v37, v36, v7, engineCopy);
    }
  }

  else
  {
    v59 = objc_msgSend_tableUID(self->_tableModel, v27, v28, v29, v30);
    v60 = v42;
    objc_msgSend_removeFormulaAt_inOwner_(engineCopy, v42, cell, &v59, v43);
  }

  if (objc_msgSend_hasConditionalStyle(v15, v38, v39, v40, v41))
  {
    v48 = objc_msgSend_conditionalStyle(v15, v44, v45, v46, v47);
    v53 = objc_msgSend_conditionalStyleFormulaOwner(self->_tableModel, v49, v50, v51, v52);
    objc_msgSend_replaceFormulaForConditionalStyle_atCellID_(v53, v54, v48, *cell, v55);
  }

  else
  {
    v48 = objc_msgSend_conditionalStyleFormulaOwner(self->_tableModel, v44, v45, v46, v47);
    objc_msgSend_removeFormulaAtCellID_(v48, v56, *cell, v57, v58);
  }

LABEL_5:
}

- (TSUCellCoord)resolvedCellCoordForIntersectionRef:(id)ref hostCell:(const TSUCellCoord *)cell useImplicitIntersection:(BOOL)intersection
{
  intersectionCopy = intersection;
  refCopy = ref;
  v12 = objc_msgSend_rangeCoord(refCopy, v8, v9, v10, v11);
  if (objc_msgSend_tableResolver(refCopy, v13, v14, v15, v16, v12, v13))
  {
    v21 = objc_msgSend_tableResolver(refCopy, v17, v18, v19, v20);
    v12 = TSCETableResolverWrapper::resolvedCellCoordForIntersection(v21, &v23, cell, intersectionCopy);
  }

  return v12;
}

- (TSUCellCoord)resolvedCellCoordForIntersection:(const TSCERangeCoordinate *)intersection hostCell:(const TSUCellCoord *)cell useImplicitIntersection:(BOOL)implicitIntersection
{
  implicitIntersectionCopy = implicitIntersection;
  topLeft = intersection->_topLeft;
  bottomRight = intersection->_bottomRight;
  if (bottomRight.row == *&intersection->_topLeft && ((*&intersection->_topLeft ^ *&bottomRight) & 0x101FFFF00000000) == 0)
  {
    v28 = *&topLeft & 0xFFFF00000000;
    v29 = *&bottomRight & 0xFFFF00000000;
    if (topLeft.row != 0x7FFFFFFFLL || v29 == 0x7FFF00000000 || v28 == 0x7FFF00000000)
    {
      if (bottomRight.row == 0x7FFFFFFF || topLeft.row == 0x7FFFFFFFLL || v29 != 0x7FFF00000000 || v28 != 0x7FFF00000000)
      {
        return topLeft;
      }
    }

    else if (bottomRight.row != 0x7FFFFFFF)
    {
      return topLeft;
    }
  }

  v12 = objc_msgSend_apparentRangeForRange_rangeContext_(self, a2, intersection, 0, implicitIntersection);
  v13 = v12;
  v15 = v14;
  v16 = HIDWORD(v12);
  v17 = WORD2(v12);
  v18 = v12 & 0xFFFF000000000000;
  v23 = objc_msgSend_bodyRangeCoordinate(self, v14, v19, v20, v21);
  v24 = v18 & 0xFFFF0000FFFFFFFFLL | (v16 << 32);
  if (v13 == v15 && ((v24 ^ v15) & 0x101FFFF00000000) == 0)
  {
    v32 = v13 == 0x7FFFFFFFLL || v17 == 0x7FFF;
    if (v32)
    {
      topLeft = 0x7FFF7FFFFFFFLL;
    }

    else
    {
      topLeft = (v24 & 0xFFFFFFFF00000000 | v13);
    }

    if (!v32 || !implicitIntersectionCopy)
    {
      return topLeft;
    }
  }

  else if (!implicitIntersectionCopy)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  if (v13 == v15 && v13 != 0x7FFFFFFF)
  {
    column = cell->column;
    topLeft = (v13 | (column << 32));
    v26 = v15 & 0xFFFF00000000;
    if (v13 != 0x7FFFFFFFLL && v17 == 0x7FFF && v26 == 0x7FFF00000000)
    {
      if (v15 != 0x7FFFFFFF)
      {
        return topLeft;
      }
    }

    else if (v13 == 0x7FFFFFFFLL && v17 != 0x7FFF && v26 != 0x7FFF00000000 && v15 == 0x7FFFFFFFLL)
    {
      if (column != 0x7FFF && WORD2(v24) <= column)
      {
LABEL_49:
        if (WORD2(v15) >= column)
        {
          return topLeft;
        }
      }

LABEL_50:
      v33.i64[0] = 0xFFFFFFFFLL;
      v33.i64[1] = 0xFFFFFFFFLL;
      v34.i64[0] = 0xFFFF00000000;
      v34.i64[1] = 0xFFFF00000000;
      v35 = vmovn_s64(vceqq_s64(vandq_s8(*intersection, v34), vdupq_n_s64(0x7FFF00000000uLL)));
      v36 = vuzp1_s16(v35, v35);
      v36.i32[1] = vuzp1_s16(v36, vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(*intersection, v33), vdupq_n_s64(0x7FFFFFFFuLL))))).i32[1];
      if ((vminv_u16(v36) & (column < WORD2(v23))) == 0)
      {
        return 0x7FFF7FFFFFFFLL;
      }

      return topLeft;
    }

    if (column >= WORD2(v24))
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  if (v17 != WORD2(v15) || v17 == 0x7FFF)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  row = cell->row;
  topLeft = ((v17 << 32) | row);
  if (v13 == 0x7FFFFFFFLL && (v15 & 0xFFFF00000000) != 0x7FFF00000000 && v15 == 0x7FFFFFFFLL)
  {
    if (v17 >= WORD2(v24) && WORD2(v15) >= v17)
    {
      return topLeft;
    }
  }

  else if (v17 >= WORD2(v24) && row <= v15 && WORD2(v15) >= v17 && row >= v13)
  {
    return topLeft;
  }

  if (*&intersection->_topLeft != 0x7FFFFFFF)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  if ((*&intersection->_topLeft & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  v37 = intersection->_bottomRight;
  if ((*&v37 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  v38 = row < v23 || row > v22;
  v39 = v38;
  if (v37.row != 0x7FFFFFFF || !v39)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  return topLeft;
}

- (id)valueForCellCoord:(const TSUCellCoord *)coord fetchRichTextAttributesIfPlainText:(BOOL)text
{
  if (coord->row == 0x7FFFFFFF || (*coord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v6 = objc_msgSend_invalidReferenceError(TSCEError, a2, coord, text, v4);
    v10 = objc_msgSend_errorValue_(TSCEErrorValue, v7, v6, v8, v9);
  }

  else
  {
    textCopy = text;
    if (objc_msgSend_isPivotTable(self, a2, coord, text, v4))
    {
      tableInfo = self->_tableInfo;
      v45 = 0;
      v17 = &v45;
      RichTextAttributesIfPlainText = objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(tableInfo, v15, &v45, *coord, textCopy);
    }

    else
    {
      v19 = *coord;
      tableModel = self->_tableModel;
      v44 = 0;
      v17 = &v44;
      RichTextAttributesIfPlainText = objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(tableModel, v15, &v44, v19, textCopy);
    }

    v21 = RichTextAttributesIfPlainText;
    v10 = *v17;
    if (v21)
    {
      if (v21 == 3)
      {
        v26 = objc_msgSend_invalidReferenceError(TSCEError, v22, v23, v24, v25);
        v30 = objc_msgSend_errorValue_(TSCEErrorValue, v27, v26, v28, v29);

        v10 = v30;
      }

      else
      {
        if (v21 != 1000)
        {
          v31 = MEMORY[0x277D81150];
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTTableResolver valueForCellCoord:fetchRichTextAttributesIfPlainText:]", v24, v25);
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v34, v35);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 866, 0, "something went wrong fetching data from the table.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
        }

        v42 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v22, v23, v24, v25);

        v10 = v42;
      }
    }
  }

  return v10;
}

- (id)valueForCellUID:(const TSKUIDStructCoord *)d outGeometricPrecedent:(TSCECellRef *)precedent fetchRichTextAttributesIfPlainText:(BOOL)text
{
  if (*&d->_column == 0 || *&d->_row == 0)
  {
    v29 = objc_msgSend_invalidReferenceError(TSCEError, a2, d, precedent, text);
    v18 = objc_msgSend_errorValue_(TSCEErrorValue, v30, v29, v31, v32);

    goto LABEL_8;
  }

  textCopy = text;
  tableInfo = self->_tableInfo;
  if (!tableInfo)
  {
    v34 = objc_msgSend_identityTranslator(self->_tableModel, a2, d, precedent, text);
    row = d->_row;
    column = d->_column;
    v70 = row;
    v39 = objc_msgSend_baseCellCoordForCellUID_(v34, v36, &column, v37, v38);

    v44 = objc_msgSend_tableUID(self->_tableModel, v40, v41, v42, v43, v39);
    precedent->coordinate = v39;
    precedent->_tableUID._lower = v44;
    precedent->_tableUID._upper = v45;
    v18 = objc_msgSend_valueForCellCoord_fetchRichTextAttributesIfPlainText_(self, v45, &v67, textCopy, v46);
    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  v10 = objc_msgSend_translator(tableInfo, a2, d, precedent, text);
  v11 = d->_row;
  column = d->_column;
  v70 = v11;
  v15 = objc_msgSend_viewCellCoordForCellUID_(v10, v12, &column, v13, v14);
  v16 = self->_tableInfo;
  v68 = 0;
  objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(v16, v17, &v68, v15, textCopy);
  v18 = v68;
  v26 = objc_msgSend_baseCellCoordForViewCellCoord_(v10, v19, v15, v20, v21);
  if (v26 == 0x7FFFFFFF || (v26 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v51 = objc_msgSend_coordinateMapper(v10, v22, v23, v24, v25);
    v55 = objc_msgSend_summaryCellCoordForViewCellCoord_(v51, v52, v15, v53, v54);

    if (v55 != 0x7FFFFFFF && (v55 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v60 = objc_msgSend_summaryModel(self->_tableInfo, v56, v57, v58, v59);
      v65 = objc_msgSend_aggregateFormulaOwnerUID(v60, v61, v62, v63, v64);
      precedent->coordinate = v55;
      precedent->_tableUID._lower = v65;
      precedent->_tableUID._upper = v66;
    }
  }

  else
  {
    v27 = objc_msgSend_tableUID(self->_tableInfo, v22, v23, v24, v25);
    precedent->coordinate = v26;
    precedent->_tableUID._lower = v27;
    precedent->_tableUID._upper = v28;
  }

  if (!v18)
  {
LABEL_17:
    v18 = objc_msgSend_nilValue(TSCENilValue, v47, v48, v49, v50);
  }

LABEL_8:

  return v18;
}

- (id)readValueForReference:(id)reference fromCellRef:(const TSCECellRef *)ref outValue:(id *)value readOptions:(unsigned __int16)options
{
  optionsCopy = options;
  referenceCopy = reference;
  coordinate = ref->coordinate;
  v15 = objc_msgSend_tableResolver(referenceCopy, v11, v12, v13, v14);
  v20 = v15;
  if (v15)
  {
    v25 = TSCETableResolverWrapper::tableUID(v15, v16, v17, v18, v19) == ref->_tableUID._lower && v21 == ref->_tableUID._upper;
    goto LABEL_9;
  }

  v26 = objc_msgSend_tableUID(referenceCopy, v16, v17, v18, v19);
  v25 = (v26 | v27) == 0;
  if (v26 | v27)
  {
    v31 = objc_msgSend_calcEngine(self, v27, v28, v29, v30);
    *&v157._columns = objc_msgSend_tableUID(referenceCopy, v40, v41, v42, v43);
    v157._columns._singleRange._begin = v44;
    v39 = objc_msgSend_tableResolverWrapperForTableUID_(v31, v44, &v157, v45, v46);
  }

  else
  {
    v31 = objc_msgSend_calcEngine(self, v27, v28, v29, v30);
    *&v157._columns = objc_msgSend_tableUID(self, v32, v33, v34, v35);
    v157._columns._singleRange._begin = v36;
    v39 = objc_msgSend_tableResolverWrapperForTableUID_(v31, v36, &v157, v37, v38);
  }

  v20 = v39;

  if (v20)
  {
LABEL_9:
    v47 = objc_msgSend_tractRef(referenceCopy, v21, v22, v23, v24);
    *&v157._columns |= 3u;
    *&v48.f64[0] = 0x8000000080000000;
    *&v48.f64[1] = 0x8000000080000000;
    v150 = vnegq_f64(v48);
    v157._columns._singleRange = v150;
    v157._columns._multipleRanges = 0;
    TSUIndexSet::operator=();
    *&v157._rows |= 3u;
    v157._rows._singleRange = v150;
    v157._rows._multipleRanges = 0;
    TSUIndexSet::operator=();
    v49 = *(v47 + 64);
    *(&v157._tableUID._upper + 5) = *(v47 + 77);
    v157._tableUID = v49;
    if ((sub_2210EE8F8(&v157._columns) & 1) == 0)
    {
      v70 = objc_msgSend_invalidReferenceError(TSCEError, v50, v51, v52, v53);
      *value = objc_msgSend_errorValue_(TSCEErrorValue, v71, v70, v72, v73);
      v74 = v70;
      v75 = 0;
      optionsCopy = v74;
      goto LABEL_53;
    }

    if (TSCECellTractRefCore::isSingleCell(&v157) && v157._spanType != 2)
    {
      if ((optionsCopy & 4) == 0 || v157._spanType != 1)
      {
LABEL_13:
        *&v153 = TSCETableResolverWrapper::tableUID(v20, v54, v55, v56, v57);
        v153._singleRange._begin = v58;
        v59 = objc_msgSend_resolvedCellCoordForIntersectionRef_hostCell_useImplicitIntersection_(self, v58, referenceCopy, &coordinate, (optionsCopy & 4) == 0);
        v152 = v59;
        if (v25 && v59 == coordinate.row && ((*&coordinate ^ v59) & 0x101FFFF00000000) == 0)
        {
          v152 = 0x7FFF7FFFFFFFLL;
        }

        else if (v59 != 0x7FFFFFFF && (v59 & 0xFFFF00000000) != 0x7FFF00000000)
        {
          *&v156._columns = v59;
          v151.origin = TSCETableResolverWrapper::mergedRangeForBaseCellCoord(v20, &v156, v61, v62, v63);
          v151.size = v64;
          if (!TSUCellRect::isValid(&v151) || v151.origin.row == v152.row && ((*&v152 ^ *&v151.origin) & 0x101FFFF00000000) == 0)
          {
            v69 = TSCETableResolverWrapper::valueForCellCoord(v20, &v152, (optionsCopy >> 1) & 1, v67, v68);
            goto LABEL_44;
          }

          if (optionsCopy)
          {
            v69 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v65, v66, v67, v68);
LABEL_44:
            v75 = 0;
            v74 = 0;
            optionsCopy = 0;
            *value = v69;
            goto LABEL_53;
          }

          *&v156._columns = v152;
          v156._columns._singleRange._begin = v152;
          *&v156._columns._singleRange._end = v153;
          v74 = objc_msgSend_invalidMergeReference_contextEntityUID_(TSCEError, v65, &v156, &v153, v68);
          v145 = objc_msgSend_errorValue_(TSCEErrorValue, v147, v74, v148, v149);
          goto LABEL_51;
        }

        *&v156._columns = objc_msgSend_rangeCoord(referenceCopy, v60, v61, v62, v63, v150);
        v156._columns._singleRange._begin = v137;
        *&v156._columns._singleRange._end = v153;
        if (v25 && TSCERangeRef::containsCellRef(&v156, ref))
        {
          v141 = objc_msgSend_circularReferenceError(TSCEError, v137, v140, v138, v139);
        }

        else
        {
          v141 = objc_msgSend_invalidRangeUsageErrorForReference_(TSCEError, v137, &v156, v138, v139);
        }

        v74 = v141;
        v145 = objc_msgSend_errorValue_(TSCEErrorValue, v142, v141, v143, v144);
LABEL_51:
        *value = v145;
        optionsCopy = 0;
LABEL_52:
        v75 = 1;
LABEL_53:
        TSUIndexSet::~TSUIndexSet(&v157._rows);
        TSUIndexSet::~TSUIndexSet(&v157._columns);
        if ((v75 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }
    }

    else if ((optionsCopy & 4) == 0)
    {
      goto LABEL_13;
    }

    v98 = objc_msgSend_rangeContextOverride(referenceCopy, v54, v55, v56, v57, v150);
    if (v98 == 3)
    {
      v99 = 1;
    }

    else
    {
      v99 = objc_msgSend_rangeContextOverride(referenceCopy, v94, v95, v96, v97);
    }

    *&v156._columns = -1;
    *&v100.f64[0] = 0x8000000080000000;
    *&v100.f64[1] = 0x8000000080000000;
    v156._columns._singleRange = vnegq_f64(v100);
    v156._columns._multipleRanges = 0;
    TSUIndexSet::operator=();
    *&v156._rows |= 3u;
    v156._rows._singleRange = v156._columns._singleRange;
    v156._rows._multipleRanges = 0;
    TSUIndexSet::operator=();
    v156._tableUID = v157._tableUID;
    *(&v156._tableUID._upper + 5) = *(&v157._tableUID._upper + 5);
    if (v99 != 1)
    {
      TSCETableResolverWrapper::apparentTractRefForTractRef(v20, &v156, v99, v101, &v153);
      TSUIndexSet::operator=();
      TSUIndexSet::operator=();
      v156._tableUID = *v155;
      *(&v156._tableUID._upper + 5) = *&v155[13];
      TSUIndexSet::~TSUIndexSet(&v154);
      TSUIndexSet::~TSUIndexSet(&v153);
    }

    if (v25 && TSCECellTractRefCore::containsCoord(&v156, &coordinate))
    {
      v106 = objc_msgSend_circularReferenceError(TSCEError, v102, v103, v104, v105);
      *value = objc_msgSend_errorValue_(TSCEErrorValue, v107, v106, v108, v109);
      v74 = v106;
      v110 = 0;
      optionsCopy = v74;
    }

    else
    {
      if (v157._spanType - 1 > 1)
      {
        v126 = [TSCEReferenceValue alloc];
        *&v153 = 0;
        isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v126, v127, referenceCopy, &coordinate, &v153, optionsCopy & 1, 0);
        v128 = [TSCEReferenceBackedGrid alloc];
        inited = objc_msgSend_initWitRefValue_rangeContext_(v128, v129, isOutputOfAFunction, v99, v130);
      }

      else
      {
        v111 = [TSCEEvalRef alloc];
        v114 = objc_msgSend_initWithTableResolver_tractRefCore_(v111, v112, v20, &v156, v113);
        isOutputOfAFunction = v114;
        if (v98 != 3)
        {
          objc_msgSend_setRangeContextOverride_(v114, v115, v99, v116, v117);
        }

        v119 = [TSCEReferenceValue alloc];
        *&v153 = 0;
        v121 = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v119, v120, isOutputOfAFunction, &coordinate, &v153, optionsCopy & 1, 0);
        v122 = [TSCEReferenceBackedGrid alloc];
        inited = objc_msgSend_initWitRefValue_rangeContext_(v122, v123, v121, v99, v124);
      }

      objc_msgSend_setPermitsAccessInsideMergeRegions_(inited, v131, optionsCopy & 1, v132, v133);
      *value = objc_msgSend_gridValue_(TSCEGridValue, v134, inited, v135, v136);

      v74 = 0;
      v110 = 1;
    }

    TSUIndexSet::~TSUIndexSet(&v156._rows);
    TSUIndexSet::~TSUIndexSet(&v156._columns);
    if ((v110 & 1) == 0)
    {
      v75 = 0;
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v76 = MEMORY[0x277D81150];
  v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTTableResolver readValueForReference:fromCellRef:outValue:readOptions:]", v23, v24);
  v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v79, v80);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v82, v77, v81, 1041, 0, "Invalid table pointer in a reference to be resolved. Returning a bogus value. Please file a bug.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85, v86);
  *value = objc_msgSend_nilValue(TSCENilValue, v87, v88, v89, v90);
  v74 = objc_msgSend_errorForErrorType_(TSCEError, v91, 17, v92, v93);
LABEL_54:
  v74 = v74;
  optionsCopy = v74;
LABEL_55:

  return optionsCopy;
}

- (TSCEFormat)format:(SEL)format fromCell:(id)cell
{
  cellCopy = cell;
  v10 = objc_msgSend_resolvedCellCoordForIntersectionRef_hostCell_useImplicitIntersection_(self, v9, cellCopy, a5, 1);
  v22 = 0;
  v15 = objc_msgSend_tableResolver(cellCopy, v11, v12, v13, v14);
  v21 = v10;
  if (v15)
  {
    v18 = TSCETableResolverWrapper::formatAtBaseCellCoord(v15, &v21, &v22, v16, v17);
    v19 = v22;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  TSCEFormat::TSCEFormat(retstr, v18, v19);

  return result;
}

- (int64_t)interactionTypeForCell:(const TSUModelCellCoord *)cell
{
  v7 = objc_msgSend_newCell(self->_tableModel, a2, cell, v3, v4);
  objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self->_tableModel, v8, v7, *cell, 1);
  v13 = objc_msgSend_interactionType(v7, v9, v10, v11, v12);

  return v13;
}

- (unsigned)getHidingAction:(id)action forRow:(BOOL)row
{
  rowCopy = row;
  actionCopy = action;
  v10 = objc_msgSend_topLeft(actionCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_bottomRight(actionCopy, v11, v12, v13, v14);
  if (v10 != v15 || ((v15 ^ v10) & 0x101FFFF00000000) != 0)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTTableResolver getHidingAction:forRow:]", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 1079, 0, "can't get hiding action of a range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_tableResolver(actionCopy, v16, v17, v18, v19);
  if (v31)
  {
    v36 = TSCETableResolverWrapper::tableModel(v31, v32, v33, v34, v35);
    objc_msgSend_tableInfo(v36, v37, v38, v39, v40);
  }

  else
  {
    v36 = 0;
    objc_msgSend_tableInfo(0, v32, v33, v34, v35);
  }
  v41 = ;
  v46 = objc_msgSend_hiddenStates(v41, v42, v43, v44, v45);

  v51 = objc_msgSend_topLeft(actionCopy, v47, v48, v49, v50);
  if (rowCopy)
  {
    v55 = objc_msgSend_hidingActionForBaseRowAtIndex_(v46, v52, v51, v53, v54);
  }

  else
  {
    v55 = objc_msgSend_hidingActionForBaseColumnAtIndex_(v46, v52, WORD2(v51), v53, v54);
  }

  v56 = sub_221387F28(v55);

  return v56;
}

- (unordered_set<TSKUIDStruct,)ownerUIDsInterestedInGroupByChange:()std:(std:(TSTTableResolver *)self :(SEL)a3 allocator<TSKUIDStruct>> *__return_ptr)retstr :(id)a4 equal_to<TSKUIDStruct>
{
  retstr->__table_.__bucket_list_ = 0u;
  *&retstr->__table_.__first_node_.__next_ = 0u;
  retstr->__table_.__max_load_factor_ = 1.0;
  v7 = objc_msgSend_tableInfo(self->_tableModel, a3, a4, v4, v5);
  v12 = objc_msgSend_hiddenStates(v7, v8, v9, v10, v11);

  if (objc_msgSend_hasCollapsedRows(v12, v13, v14, v15, v16))
  {
    v23[0] = objc_msgSend_hiddenStateOwnerForRowsUID(v12, v17, v18, v19, v20);
    v23[1] = v21;
    sub_2211D6484(retstr, v23);
  }

  return result;
}

- (TSKUIDStruct)resolveRelativeAncestorUid:(const TSKUIDStruct *)uid sourceRowUID:(const TSKUIDStruct *)d
{
  v7 = objc_msgSend_tableInfo(self->_tableModel, a2, uid, d, v4);
  v12 = objc_msgSend_groupBy(v7, v8, v9, v10, v11);

  v15 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(v12, v13, uid, d, v14);
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result._upper = v19;
  result._lower = v18;
  return result;
}

- (TSKUIDStruct)convertToRelativeAncestorUid:(const TSKUIDStruct *)uid rowUid:(const TSKUIDStruct *)rowUid
{
  v7 = objc_msgSend_tableInfo(self->_tableModel, a2, uid, rowUid, v4);
  v12 = objc_msgSend_groupBy(v7, v8, v9, v10, v11);

  v15 = objc_msgSend_convertToRelativeAncestorUid_atRowUid_(v12, v13, uid, rowUid, v14);
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result._upper = v19;
  result._lower = v18;
  return result;
}

- (TSKUIDStruct)groupByUUID
{
  v5 = objc_msgSend_tableInfo(self->_tableModel, a2, v2, v3, v4);
  v10 = objc_msgSend_groupBy(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_groupByUid(v10, v11, v12, v13, v14);
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result._upper = v19;
  result._lower = v18;
  return result;
}

- (id)resolveCategoryRefAtRowUid:(id)uid rowUid:(const TSKUIDStruct *)rowUid containingTableUID:(const TSKUIDStruct *)d
{
  uidCopy = uid;
  v13 = objc_msgSend_tableInfo(self->_tableModel, v9, v10, v11, v12);
  v18 = objc_msgSend_groupBy(v13, v14, v15, v16, v17);

  v20 = objc_msgSend_resolveCategoryRef_atRowUid_inHostTable_(v18, v19, uidCopy, rowUid, d);

  return v20;
}

- (unsigned)groupLevelForGroupUid:(const TSKUIDStruct *)uid
{
  v6 = objc_msgSend_tableInfo(self->_tableModel, a2, uid, v3, v4);
  v11 = objc_msgSend_groupBy(v6, v7, v8, v9, v10);

  LOBYTE(v6) = objc_msgSend_groupLevelForGroupUid_(v11, v12, uid->_lower, uid->_upper, v13);
  return v6;
}

- (unsigned)getNumberOfGroupByLevels
{
  v5 = objc_msgSend_tableInfo(self->_tableModel, a2, v2, v3, v4);
  v10 = objc_msgSend_groupBy(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_numberOfLevels(v10, v11, v12, v13, v14);

  return v15;
}

- (TSKUIDStruct)relativeAncestorGroupUid:(int)uid
{
  v5 = objc_msgSend_relativeAncestorGroupUid_(TSTGroupBy, a2, *&uid, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSCECellRef)indirectAggTypeChangePrecedent:(SEL)precedent
{
  v17 = objc_msgSend_calcEngine(self->_tableModel, precedent, a4, v4, v5);
  v9 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v8, a4->_lower, a4->_upper, v17);
  v14 = v9;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  if (v9)
  {
    v15 = objc_msgSend_indirectAggTypeChangeFormulaCoord(v9, v10, v11, v12, v13);
    retstr->_tableUID = *a4;
    retstr->coordinate = v15;
  }

  return result;
}

- (TSCECellRef)groupingColumnsPrecedent:(SEL)precedent
{
  v17 = objc_msgSend_calcEngine(self->_tableModel, precedent, a4, v4, v5);
  v9 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v8, a4->_lower, a4->_upper, v17);
  v14 = v9;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  if (v9)
  {
    v15 = objc_msgSend_groupingColumnsFormulaCoord(v9, v10, v11, v12, v13);
    retstr->_tableUID = *a4;
    retstr->coordinate = v15;
  }

  return result;
}

- (TSCECellRef)groupingColumnsPrecedentForCategoryRef:(SEL)ref
{
  v6 = a4;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  if (objc_msgSend_refersToPivotTable(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_calcEngine(self, v11, v12, v13, v14);
    v18 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v16, v6, v15, v17);

    if (v18)
    {
      v30 = objc_msgSend_groupByUid(v18, v19, v20, v21, v22);
      v31 = v23;
      objc_msgSend_groupingColumnsPrecedent_(self, v23, &v30, v24, v25);
      *&retstr->coordinate.row = v32;
      retstr->_tableUID._upper = v33;
    }
  }

  else
  {
    v30 = objc_msgSend_groupByUid(v6, v11, v12, v13, v14);
    v31 = v26;
    objc_msgSend_groupingColumnsPrecedent_(self, v26, &v30, v27, v28);
    *&retstr->coordinate.row = v32;
    retstr->_tableUID._upper = v33;
  }

  return result;
}

- (TSCECellRef)groupingColumnHeadersPrecedent:(SEL)precedent
{
  v17 = objc_msgSend_calcEngine(self->_tableModel, precedent, a4, v4, v5);
  v9 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v8, a4->_lower, a4->_upper, v17);
  v14 = v9;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  if (v9)
  {
    v15 = objc_msgSend_groupingColumnHeadersFormulaCoord(v9, v10, v11, v12, v13);
    retstr->_tableUID = *a4;
    retstr->coordinate = v15;
  }

  return result;
}

- (TSCECellRef)allAggsInGroupRootPrecedent:(SEL)precedent
{
  v17 = objc_msgSend_calcEngine(self->_tableModel, precedent, a4, v4, v5);
  v9 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v8, a4->_lower, a4->_upper, v17);
  v14 = v9;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  if (v9)
  {
    v15 = objc_msgSend_allAggsInGroupRootFormulaCoord(v9, v10, v11, v12, v13);
    retstr->_tableUID = *a4;
    retstr->coordinate = v15;
  }

  return result;
}

- (TSCECellRef)groupingColumnOrderPrecedent:(SEL)precedent
{
  v8 = objc_msgSend_calcEngine(self->_tableModel, precedent, a4, v4, v5);
  v10 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v9, a4->_lower, a4->_upper, v8);
  v15 = v10;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  if (v10)
  {
    objc_msgSend_columnOrderChangedPrecedent(v10, v11, v12, v13, v14);
    *&retstr->coordinate.row = v17;
    retstr->_tableUID._upper = v18;
  }

  return result;
}

- (TSCECellRef)groupingRowOrderPrecedent:(SEL)precedent ignoreRecalc:(const TSKUIDStruct *)recalc
{
  v6 = a5;
  v9 = objc_msgSend_calcEngine(self->_tableModel, precedent, recalc, a5, v5);
  v11 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v10, recalc->_lower, recalc->_upper, v9);
  v16 = v11;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  if (v11)
  {
    if (v6)
    {
      objc_msgSend_rowOrderChangedPrecedentIgnoringRecalc(v11, v12, v13, v14, v15);
    }

    else
    {
      objc_msgSend_rowOrderChangedPrecedent(v11, v12, v13, v14, v15);
    }

    *&retstr->coordinate.row = v18;
    retstr->_tableUID._upper = v19;
  }

  return result;
}

- (void)dirtyColumnOrderChanged
{
  v6 = objc_msgSend_calcEngine(self->_tableModel, a2, v2, v3, v4);
  v11 = objc_msgSend_groupBy(self->_tableInfo, v7, v8, v9, v10);
  v16 = v11;
  if (v11)
  {
    objc_msgSend_columnOrderChangedPrecedent(v11, v12, v13, v14, v15);
    objc_msgSend_markCellRefAsDirty_(v6, v17, v20, v18, v19);
  }
}

- (id)valuesForViewTractRef:(id)ref hidingActionMask:(unsigned __int8)mask outError:(id *)error outGeometricPrecedents:(void *)precedents forceHidingOfPivotFiltered:(BOOL)filtered
{
  filteredCopy = filtered;
  maskCopy = mask;
  refCopy = ref;
  v14 = objc_msgSend_tableUID(refCopy, v10, v11, v12, v13);
  if (!(v14 | v15))
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableResolver valuesForViewTractRef:hidingActionMask:outError:outGeometricPrecedents:forceHidingOfPivotFiltered:]", v16, v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 1255, 0, "Need a tableUID set to use this interface");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v242 = self->_tableModel;
  if (v242 && objc_msgSend_isValidOrSpanning(refCopy, v29, v30, v31, v32))
  {
    v244 = objc_msgSend_tableInfo(v242, v29, v30, v31, v32);
    v37 = objc_msgSend_spansAllColumns(refCopy, v33, v34, v35, v36);
    v42 = objc_msgSend_spansAllRows(refCopy, v38, v39, v40, v41);
    if (objc_msgSend_isFixedAtZeroRef(refCopy, v43, v44, v45, v46))
    {
      v55 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v47, 0, v49, v50);
      v56 = v55;
    }

    else
    {
      v58 = objc_msgSend_tract(refCopy, v47, v48, v49, v50);
      v63 = objc_msgSend_columnUids(v58, v59, v60, v61, v62);

      v68 = objc_msgSend_tract(refCopy, v64, v65, v66, v67);
      v73 = objc_msgSend_rowUids(v68, v69, v70, v71, v72);

      if ((v37 & v42) == 1)
      {
        v78 = MEMORY[0x277CCAA78];
        v271.origin = objc_msgSend_bodyRange(v244, v74, v75, v76, v77);
        v271.size = v79;
        v80 = TSUCellRect::columns(&v271);
        v56 = objc_msgSend_indexSetWithIndexesInRange_(v78, v81, v80, v81, v82);
        v83 = MEMORY[0x277CCAA78];
        v271.origin = objc_msgSend_bodyRange(v244, v84, v85, v86, v87);
        v271.size = v88;
        v89 = TSUCellRect::rows(&v271);
        v92 = objc_msgSend_indexSetWithIndexesInRange_(v83, v90, v89, v90, v91);
      }

      else
      {
        if (v37)
        {
          v93 = MEMORY[0x277CCAA78];
          v271.origin = objc_msgSend_range(v244, v74, v75, v76, v77);
          v271.size = v94;
          v95 = TSUCellRect::columns(&v271);
          v98 = objc_msgSend_indexSetWithIndexesInRange_(v93, v96, v95, v96, v97);
        }

        else
        {
          v98 = objc_msgSend_columnIndexesForUIDs_(v244, v74, v63, v76, v77);
        }

        v56 = v98;
        if (v42)
        {
          v103 = MEMORY[0x277CCAA78];
          v271.origin = objc_msgSend_range(v244, v99, v100, v101, v102);
          v271.size = v104;
          v105 = TSUCellRect::rows(&v271);
          objc_msgSend_indexSetWithIndexesInRange_(v103, v106, v105, v106, v107);
        }

        else
        {
          objc_msgSend_rowIndexesForUIDs_(v244, v99, v73, v101, v102);
        }
        v92 = ;
      }

      v55 = v92;
    }

    if (objc_msgSend_isAPivotTable(v244, v51, v52, v53, v54))
    {
      v112 = objc_msgSend_pivotOwner(v242, v108, v109, v110, v111);
      v117 = objc_msgSend_groupBySet(v112, v113, v114, v115, v116);

      v122 = objc_msgSend_columnGroupLevel(refCopy, v118, v119, v120, v121);
      v124 = objc_msgSend_restrictColumnIndexes_toColumnGroupLevel_forPivotTable_(v117, v123, v56, v122, v244);

      v129 = objc_msgSend_rowGroupLevel(refCopy, v125, v126, v127, v128);
      v131 = objc_msgSend_restrictRowIndexes_toRowGroupLevel_forPivotTable_(v117, v130, v55, v129, v244);

      v136 = objc_msgSend_aggregateIndexLevel(refCopy, v132, v133, v134, v135);
      v56 = objc_msgSend_restrictColumnIndexes_forAggrIndexLevel_forPivotTable_(v117, v137, v124, v136, v244);

      v55 = objc_msgSend_restrictRowIndexes_forAggrIndexLevel_forPivotTable_(v117, v138, v131, v136, v244);

      v139 = maskCopy;
      if (filteredCopy)
      {
        v139 = maskCopy | 2;
      }

      maskCopy = v139;
    }

    else if (objc_msgSend_isCategorized(v244, v108, v109, v110, v111))
    {
      v144 = MEMORY[0x277D81150];
      v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, "[TSTTableResolver valuesForViewTractRef:hidingActionMask:outError:outGeometricPrecedents:forceHidingOfPivotFiltered:]", v142, v143);
      v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v147, v148);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v144, v150, v145, v149, 1313, 0, "Need to implement group level restrictions for categorized tables");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v151, v152, v153, v154);
    }

    Index = objc_msgSend_firstIndex(v56, v140, v141, v142, v143);
    v160 = objc_msgSend_lastIndex(v56, v156, v157, v158, v159);
    v165 = objc_msgSend_firstIndex(v56, v161, v162, v163, v164);
    v170 = objc_msgSend_firstIndex(v55, v166, v167, v168, v169);
    v175 = objc_msgSend_lastIndex(v55, v171, v172, v173, v174);
    v180 = objc_msgSend_firstIndex(v55, v176, v177, v178, v179);
    if (objc_msgSend_count(v56, v181, v182, v183, v184) && objc_msgSend_count(v55, v185, v186, v187, v188))
    {
      v189 = [TSCEValueGrid alloc];
      v191 = objc_msgSend_initWithColumnRange_rowRange_(v189, v190, Index, v160 - v165 + 1, v170, v175 - v180 + 1);
    }

    else
    {
      v191 = objc_opt_new();
    }

    v196 = v191;
    if (precedents)
    {
      v239 = v191;
      v197 = objc_msgSend_coordMapper(self, v192, v193, v194, v195);
      v271.origin = 0;
      v271.size = &v271;
      v272 = 0x5812000000;
      v273 = sub_22158DD70;
      v274 = sub_22158DD7C;
      v275 = &unk_22188E88F;
      v279[0] = 0;
      v279[1] = 0;
      v276 = 0;
      v277 = 0;
      v278 = v279;
      v261 = 0;
      v262 = &v261;
      v263 = 0x5812000000;
      v264 = sub_22158DD70;
      v265 = sub_22158DD7C;
      v266 = &unk_22188E88F;
      v270[0] = 0;
      v270[1] = 0;
      v267 = 0;
      v268 = 0;
      v269 = v270;
      v256[0] = MEMORY[0x277D85DD0];
      v256[1] = 3221225472;
      v256[2] = sub_22158DD88;
      v256[3] = &unk_2784670B8;
      v257 = v55;
      v198 = v197;
      v258 = v198;
      v259 = &v261;
      v260 = &v271;
      objc_msgSend_enumerateIndexesUsingBlock_(v56, v199, v256, v200, v201);
      v255._lower = objc_msgSend_tableUID(v244, v202, v203, v204, v205);
      v255._upper = v206;
      TSCECellRefSet::addCellRefs(precedents, &v255, (*&v271.size + 48));
      v211 = objc_msgSend_summaryModel(v244, v207, v208, v209, v210);
      v255._lower = objc_msgSend_aggregateFormulaOwnerUID(v211, v212, v213, v214, v215);
      v255._upper = v216;
      TSCECellRefSet::addCellRefs(precedents, &v255, (v262 + 6));

      _Block_object_dispose(&v261, 8);
      sub_22107C860(&v269, v270[0]);
      _Block_object_dispose(&v271, 8);
      sub_22107C860(&v278, v279[0]);

      v196 = v239;
    }

    if (maskCopy)
    {
      v217 = objc_msgSend_hiddenStates(v244, v192, v193, v194, v195);
    }

    else
    {
      v217 = 0;
    }

    v246[0] = MEMORY[0x277D85DD0];
    v246[1] = 3221225472;
    v246[2] = sub_22158DEF0;
    v246[3] = &unk_278467108;
    v218 = v56;
    v247 = v218;
    v253 = maskCopy != 0;
    v219 = v217;
    v248 = v219;
    v254 = maskCopy;
    v220 = v244;
    v249 = v220;
    selfCopy = self;
    precedentsCopy = precedents;
    v57 = v196;
    v251 = v57;
    objc_msgSend_enumerateIndexesUsingBlock_(v55, v221, v246, v222, v223);
    v228 = objc_msgSend_count(v57, v224, v225, v226, v227);
    if (error && v228 == 1)
    {
      v245[0] = MEMORY[0x277D85DD0];
      v245[1] = 3221225472;
      v245[2] = sub_22158E200;
      v245[3] = &unk_278467128;
      v245[4] = error;
      objc_msgSend_enumerateValuesUsingBlock_(v57, v229, v245, v231, v232);
    }

    else
    {
      v233 = objc_msgSend_count(v57, v229, v230, v231, v232);
      if (error && !v233)
      {
        *error = objc_msgSend_invalidReferenceError(TSCEError, v234, v235, v236, v237);

        v57 = 0;
      }
    }
  }

  else if (error)
  {
    objc_msgSend_invalidReferenceError(TSCEError, v29, v30, v31, v32);
    *error = v57 = 0;
  }

  else
  {
    v57 = 0;
  }

  return v57;
}

- (id)valuesForViewTractRef:(id)ref hidingActionMask:(unsigned __int8)mask outError:(id *)error
{
  v5 = objc_msgSend_valuesForViewTractRef_hidingActionMask_outError_outGeometricPrecedents_forceHidingOfPivotFiltered_(self, a2, ref, mask, error, 0, 0);

  return v5;
}

- (id)filteredCellTractRef:(id)ref hidingActionMask:(unsigned __int8)mask
{
  maskCopy = mask;
  refCopy = ref;
  v7 = refCopy;
  if (maskCopy)
  {
    v12 = self->_tableModel;
    v7 = refCopy;
    if (v12)
    {
      v7 = refCopy;
      if (objc_msgSend_isValid(refCopy, v8, v9, v10, v11))
      {
        v17 = objc_msgSend_tableInfo(v12, v13, v14, v15, v16);
        v91 = v17;
        v92 = objc_msgSend_hiddenStates(v17, v18, v19, v20, v21);
        v26 = objc_msgSend_spansAllColumns(refCopy, v22, v23, v24, v25);
        v31 = objc_msgSend_spansAllRows(refCopy, v27, v28, v29, v30);
        v36 = objc_msgSend_columns(refCopy, v32, v33, v34, v35);
        v37 = TSUIndexSet::asNSIndexSet(v36);
        v42 = objc_msgSend_rows(refCopy, v38, v39, v40, v41);
        v47 = TSUIndexSet::asNSIndexSet(v42);
        if (v26)
        {
          v48 = MEMORY[0x277CCAA78];
          v106.origin = objc_msgSend_range(v17, v43, v44, v45, v46);
          v106.size = v49;
          v50 = TSUCellRect::columns(&v106);
          v53 = objc_msgSend_indexSetWithIndexesInRange_(v48, v51, v50, v51, v52);

          v37 = v53;
        }

        if (v31)
        {
          v54 = MEMORY[0x277CCAA78];
          v106.origin = objc_msgSend_range(v17, v43, v44, v45, v46);
          v106.size = v55;
          v56 = TSUCellRect::rows(&v106);
          v59 = objc_msgSend_indexSetWithIndexesInRange_(v54, v57, v56, v57, v58);

          v47 = v59;
        }

        v106.origin = 0;
        v106.size = &v106;
        v107 = 0x2020000000;
        v108 = 0;
        v90 = objc_msgSend_mutableCopy(v37, v43, v44, v45, v46);
        v64 = objc_msgSend_mutableCopy(v47, v60, v61, v62, v63);
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = sub_22158E740;
        v101[3] = &unk_278467150;
        v65 = v92;
        v102 = v65;
        v105 = maskCopy;
        v66 = v64;
        v103 = v66;
        v104 = &v106;
        objc_msgSend_enumerateIndexesUsingBlock_(v47, v67, v101, v68, v69);
        v96[0] = MEMORY[0x277D85DD0];
        v96[1] = 3221225472;
        v96[2] = sub_22158E798;
        v96[3] = &unk_278467150;
        v70 = v65;
        v97 = v70;
        v100 = maskCopy;
        v71 = v90;
        v98 = v71;
        v99 = &v106;
        objc_msgSend_enumerateIndexesUsingBlock_(v37, v72, v96, v73, v74);
        v7 = refCopy;
        if (*(*&v106.size + 24) == 1)
        {
          v75 = [TSCECellTractRef alloc];
          MEMORY[0x223D9F7A0](&v95, v71);
          MEMORY[0x223D9F7A0](&v94, v66);
          v93[0] = objc_msgSend_tableUID(refCopy, v76, v77, v78, v79);
          v93[1] = v80;
          v7 = objc_msgSend_initWithColumns_rows_tableUID_(v75, v80, &v95, &v94, v93);

          TSUIndexSet::~TSUIndexSet(&v94);
          TSUIndexSet::~TSUIndexSet(&v95);
          v85 = objc_msgSend_preserveFlags(refCopy, v81, v82, v83, v84);
          objc_msgSend_setPreserveFlags_(v7, v86, v85, v87, v88);
        }

        _Block_object_dispose(&v106, 8);
      }
    }
  }

  return v7;
}

- (id)solveGetPivotData:(id)data functionSpec:(id)spec context:(id)context
{
  dataCopy = data;
  specCopy = spec;
  contextCopy = context;
  v14 = objc_msgSend_nilValue(TSCENilValue, v10, v11, v12, v13);
  v212 = objc_msgSend_pivotOwner(self->_tableModel, v15, v16, v17, v18);
  v27 = objc_msgSend_groupBySet(v212, v19, v20, v21, v22);
  if (v27)
  {
    v211 = specCopy;
    v28 = objc_msgSend_calcEngine(self, v23, v24, v25, v26);
    v214 = objc_msgSend_documentLocale(v28, v29, v30, v31, v32);

    v210 = objc_msgSend_aggregateFieldName(dataCopy, v33, v34, v35, v36);
    v43 = objc_msgSend_aggregateIndexForAggName_locale_(v27, v37, v210, v214, v38);
    if (v43 == 0xFFFF)
    {
      v58 = objc_msgSend_functionName(specCopy, v39, v40, v41, v42);
      v61 = objc_msgSend_invalidAggregateColumnErrorForFunctionName_argumentNumber_(TSCEError, v59, v58, 1, v60);
      v65 = objc_msgSend_errorValue_(TSCEErrorValue, v62, v61, v63, v64);

      v14 = v65;
LABEL_33:
      specCopy = v211;

      goto LABEL_34;
    }

    v235 = 0;
    v236 = &v235;
    v237 = 0x2020000000;
    v238 = 0;
    v227 = 0;
    v228 = &v227;
    v229 = 0x5812000000;
    v230 = sub_22158F0AC;
    v231 = sub_22158F0B8;
    v232 = &unk_22188E88F;
    memset(v233, 0, sizeof(v233));
    v234 = 1065353216;
    v221[0] = MEMORY[0x277D85DD0];
    v221[1] = 3221225472;
    v221[2] = sub_22158F0C0;
    v221[3] = &unk_278467178;
    v44 = v27;
    v222 = v44;
    v225 = &v227;
    v223 = v214;
    v45 = dataCopy;
    v224 = v45;
    v226 = &v235;
    objc_msgSend_enumerateDataKeyValuePairsUsingBlock_(v45, v46, v221, v47, v48);
    if (*(v236 + 24) == 1)
    {
      v53 = objc_msgSend_invalidReferenceError(TSCEError, v49, v50, v51, v52);
      v57 = objc_msgSend_errorValue_(TSCEErrorValue, v54, v53, v55, v56);

      v14 = v57;
LABEL_32:

      _Block_object_dispose(&v227, 8);
      sub_221087B80(v233);
      _Block_object_dispose(&v235, 8);
      goto LABEL_33;
    }

    v220[0] = 0;
    v220[1] = 0;
    v219 = v220;
    v218 = 0uLL;
    v217 = 0uLL;
    if (objc_msgSend_keyValuePairCount(v45, v49, v50, v51, v52))
    {
      v209 = dataCopy;
      v70 = objc_msgSend_groupByForColumnGroups(v44, v66, v67, v68, v69);
      v71 = v228;
      v76 = objc_msgSend_columnGroupings(v44, v72, v73, v74, v75);
      v81 = objc_msgSend_count(v76, v77, v78, v79, v80);
      v83 = objc_msgSend_findExistingGroupNodeInGroupBy_usingValues_upToLevel_coerceForDateFields_(v44, v82, v70, (v71 + 6), v81, 0);

      v88 = objc_msgSend_groupByForRowGroups(v44, v84, v85, v86, v87);
      v89 = v228;
      v94 = objc_msgSend_rowGroupings(v44, v90, v91, v92, v93);
      v99 = objc_msgSend_count(v94, v95, v96, v97, v98);
      v101 = objc_msgSend_findExistingGroupNodeInGroupBy_usingValues_upToLevel_coerceForDateFields_(v44, v100, v88, (v89 + 6), v99, 0);

      if (!v83)
      {
        v106 = objc_msgSend_groupByForColumnGroups(v44, v102, v103, v104, v105);
        v107 = v228;
        v112 = objc_msgSend_columnGroupings(v44, v108, v109, v110, v111);
        v117 = objc_msgSend_count(v112, v113, v114, v115, v116);
        v83 = objc_msgSend_findExistingGroupNodeInGroupBy_usingValues_upToLevel_coerceForDateFields_(v44, v118, v106, (v107 + 6), v117, 1);
      }

      if (!v101)
      {
        v119 = objc_msgSend_groupByForRowGroups(v44, v102, v103, v104, v105);
        v120 = v228;
        v125 = objc_msgSend_rowGroupings(v44, v121, v122, v123, v124);
        v130 = objc_msgSend_count(v125, v126, v127, v128, v129);
        v101 = objc_msgSend_findExistingGroupNodeInGroupBy_usingValues_upToLevel_coerceForDateFields_(v44, v131, v119, (v120 + 6), v130, 1);
      }

      dataCopy = v209;
      if (v83)
      {
        if (v101)
        {
          v132 = objc_msgSend_groupLevel(v83, v102, v103, v104, v105);
          v137 = objc_msgSend_groupLevel(v101, v133, v134, v135, v136);
          v142 = objc_msgSend_keyValuePairCount(v45, v138, v139, v140, v141);
          v147 = v137 + v132;
          dataCopy = v209;
          if (v147 == v142)
          {
            *&v218 = objc_msgSend_groupUid(v83, v143, v144, v145, v146);
            *(&v218 + 1) = v148;
            *&v217 = objc_msgSend_groupUid(v101, v148, v149, v150, v151);
            *(&v217 + 1) = v152;
          }
        }
      }
    }

    else
    {
      v153 = objc_msgSend_groupByForRowGroups(v44, v66, v67, v68, v69);
      *&v218 = objc_msgSend_topLevelGroupUid(v153, v154, v155, v156, v157);
      *(&v218 + 1) = v158;

      v83 = objc_msgSend_groupByForRowGroups(v44, v159, v160, v161, v162);
      *&v217 = objc_msgSend_topLevelGroupUid(v83, v163, v164, v165, v166);
      *(&v217 + 1) = v167;
    }

    if (v218 == 0 || v217 == 0)
    {
      v177 = objc_msgSend_invalidReferenceError(TSCEError, v168, v169, v170, v171);
      objc_msgSend_errorValue_(TSCEErrorValue, v178, v177, v179, v180);
      v14 = v181 = v14;
LABEL_31:

      sub_22107C800(&v219, v220[0]);
      goto LABEL_32;
    }

    if (v43)
    {
      if (objc_msgSend_activeFlatteningDimension(v44, v168, v169, v170, v171) == 1)
      {
        *&v218 = sub_2211A8E7C(&v218, v43, v173, v174, v175);
        *(&v218 + 1) = v176;
      }

      else if (!objc_msgSend_activeFlatteningDimension(v44, v172, v173, v174, v175))
      {
        *&v217 = sub_2211A8E7C(&v217, v43, v182, v183, v184);
        *(&v217 + 1) = v185;
      }
    }

    v186 = [TSCEUndoTract alloc];
    v177 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v186, v187, v218, *(&v218 + 1), v217, *(&v217 + 1), 4);
    v188 = [TSCEViewTractRef alloc];
    v216[0] = objc_msgSend_tableUID(self, v189, v190, v191, v192);
    v216[1] = v193;
    v181 = objc_msgSend_initWithTract_tableUID_preserveFlags_(v188, v193, v177, v216, 0);
    v215 = 0;
    v198 = objc_msgSend_isForChartFormulas(contextCopy, v194, v195, v196, v197);
    v200 = objc_msgSend_valuesForViewTractRef_hidingActionMask_outError_outGeometricPrecedents_forceHidingOfPivotFiltered_(self, v199, v181, 0, &v215, &v219, v198 ^ 1u);
    v205 = v215;
    if (v205)
    {
      v206 = objc_msgSend_errorValue_(TSCEErrorValue, v201, v205, v203, v204);
    }

    else
    {
      if (!v200)
      {
LABEL_30:
        objc_msgSend_addCalculatedPrecedents_(contextCopy, v201, &v219, v203, v204);

        goto LABEL_31;
      }

      v206 = objc_msgSend_firstValue(v200, v201, v202, v203, v204);
    }

    v207 = v206;

    v14 = v207;
    goto LABEL_30;
  }

LABEL_34:

  return v14;
}

- (id)cellTractRefForViewTractRef:(id)ref
{
  refCopy = ref;
  v151[0] = objc_msgSend_tableUID(refCopy, v5, v6, v7, v8);
  v151[1] = v9;
  if (!(v151[0] | v9))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableResolver cellTractRefForViewTractRef:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1613, 0, "Need a tableUID set to use this interface");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v27 = self->_tableModel;
  if (v27 && objc_msgSend_isValidOrSpanning(refCopy, v23, v24, v25, v26))
  {
    v32 = objc_msgSend_tableInfo(v27, v28, v29, v30, v31);
    v37 = objc_msgSend_spansAllColumns(refCopy, v33, v34, v35, v36);
    v42 = objc_msgSend_spansAllRows(refCopy, v38, v39, v40, v41);
    if (objc_msgSend_isFixedAtZeroRef(refCopy, v43, v44, v45, v46))
    {
      v55 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v47, 0, v49, v50);
      v56 = v55;
    }

    else
    {
      v58 = objc_msgSend_tract(refCopy, v47, v48, v49, v50);
      v63 = objc_msgSend_columnUids(v58, v59, v60, v61, v62);

      v68 = objc_msgSend_tract(refCopy, v64, v65, v66, v67);
      v73 = objc_msgSend_rowUids(v68, v69, v70, v71, v72);

      if (v37)
      {
        v78 = MEMORY[0x277CCAA78];
        *&v150 = objc_msgSend_bodyColumnRange(v32, v74, v75, v76, v77);
        v150._singleRange._begin = v79;
        v80 = TSUCellRect::columns(&v150);
        v83 = objc_msgSend_indexSetWithIndexesInRange_(v78, v81, v80, v81, v82);
      }

      else
      {
        v83 = objc_msgSend_columnIndexesForUIDs_(v32, v74, v63, v76, v77);
      }

      v56 = v83;
      if (v42)
      {
        v88 = MEMORY[0x277CCAA78];
        *&v150 = objc_msgSend_bodyRowRange(v32, v84, v85, v86, v87);
        v150._singleRange._begin = v89;
        v90 = TSUCellRect::rows(&v150);
        objc_msgSend_indexSetWithIndexesInRange_(v88, v91, v90, v91, v92);
      }

      else
      {
        objc_msgSend_rowIndexesForUIDs_(v32, v84, v73, v86, v87);
      }
      v55 = ;
    }

    if (objc_msgSend_isAPivotTable(v32, v51, v52, v53, v54))
    {
      v97 = objc_msgSend_pivotOwner(v27, v93, v94, v95, v96);
      v102 = objc_msgSend_groupBySet(v97, v98, v99, v100, v101);

      v107 = objc_msgSend_columnGroupLevel(refCopy, v103, v104, v105, v106);
      v109 = objc_msgSend_restrictColumnIndexes_toColumnGroupLevel_forPivotTable_(v102, v108, v56, v107, v32);

      v114 = objc_msgSend_rowGroupLevel(refCopy, v110, v111, v112, v113);
      v116 = objc_msgSend_restrictRowIndexes_toRowGroupLevel_forPivotTable_(v102, v115, v55, v114, v32);

      v121 = objc_msgSend_aggregateIndexLevel(refCopy, v117, v118, v119, v120);
      v56 = objc_msgSend_restrictColumnIndexes_forAggrIndexLevel_forPivotTable_(v102, v122, v109, v121, v32);

      v55 = objc_msgSend_restrictRowIndexes_forAggrIndexLevel_forPivotTable_(v102, v123, v116, v121, v32);
    }

    else if (objc_msgSend_isCategorized(v32, v93, v94, v95, v96))
    {
      v127 = MEMORY[0x277D81150];
      v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, "[TSTTableResolver cellTractRefForViewTractRef:]", v125, v126);
      v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v130, v131);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v127, v133, v128, v132, 1659, 0, "Need to implement group level restrictions for categorized tables");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v134, v135, v136, v137);
    }

    v138 = [TSCECellTractRef alloc];
    MEMORY[0x223D9F7A0](&v150, v56);
    MEMORY[0x223D9F7A0](&v149, v55);
    v57 = objc_msgSend_initWithColumns_rows_tableUID_(v138, v139, &v150, &v149, v151);
    TSUIndexSet::~TSUIndexSet(&v149);
    TSUIndexSet::~TSUIndexSet(&v150);
    v144 = objc_msgSend_preserveFlags(refCopy, v140, v141, v142, v143);
    objc_msgSend_setPreserveFlags_(v57, v145, v144, v146, v147);
  }

  else
  {
    v57 = 0;
  }

  return v57;
}

- (id)viewTractRefForCellTractRef:(id)ref
{
  refCopy = ref;
  v9 = objc_msgSend_translator(self->_tableInfo, v5, v6, v7, v8);
  v14 = objc_msgSend_viewMap(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_uidRectRefForCellTractRef_(v14, v15, refCopy, v16, v17);

  if (v18)
  {
    objc_msgSend_uidRange(v18, v19, v20, v21, v22);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    sub_221086EBC(&v52, v55, v56, (v56 - v55) >> 4);
    __p = 0;
    v50 = 0;
    v51 = 0;
    sub_221086EBC(&__p, v57, v58, (v58 - v57) >> 4);
    if (objc_msgSend_spansAllRows(refCopy, v23, v24, v25, v26))
    {
      operator new();
    }

    if (objc_msgSend_spansAllColumns(refCopy, v27, v28, v29, v30))
    {
      operator new();
    }

    v32 = [TSCEUndoTract alloc];
    v34 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v32, v33, &v52, &__p, 4);
    v35 = [TSCEViewTractRef alloc];
    v40 = objc_msgSend_tableUID(self->_tableInfo, v36, v37, v38, v39);
    v45 = objc_msgSend_preserveFlags(refCopy, v41, v42, v43, v44, v40, v41);
    v31 = objc_msgSend_initWithTract_tableUID_preserveFlags_(v35, v46, v34, &v48, v45);

    if (__p)
    {
      v50 = __p;
      operator delete(__p);
    }

    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

@end