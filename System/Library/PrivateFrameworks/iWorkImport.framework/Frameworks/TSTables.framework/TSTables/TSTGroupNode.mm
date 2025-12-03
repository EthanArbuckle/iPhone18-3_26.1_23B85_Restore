@interface TSTGroupNode
+ (BOOL)needFormulasForAggregateType:(unsigned __int8)type;
+ (id)localizedStringForCellValue:(id)value categoryLevel:(unsigned __int8)level groupBy:(id)by;
+ (id)normalizedStringForCompare:(id)compare;
- (BOOL)containsAnyRowUidInRowUidSet:(id)set;
- (BOOL)containsRowUid:(const TSKUIDStruct *)uid;
- (BOOL)hasUnfilteredRows;
- (BOOL)isBlankNode;
- (BOOL)isErrorNode;
- (BOOL)updateGroupCellValueIfKeyMatches:(id)matches;
- (NSUUID)groupValueUuid;
- (TSCEUIDSet)childGroupUids;
- (TSCEUIDSet)directChildGroupUids;
- (TSCEUIDSet)unfilteredChildGroupUids;
- (TSCEUIDSet)unfilteredDirectChildGroupUids;
- (TSKUIDStruct)firstVisibleNodeUsingColumnRowUIDMap:(id)map forDimension:(int64_t)dimension leafLevel:(unsigned __int8)level pivotTableHiddenExtent:(id)extent;
- (TSKUIDStruct)groupUid;
- (TSKUIDStruct)groupValueUid;
- (TSKUIDStruct)labelUid;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)nodePath;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUidsAsVector;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)unfilteredRowUidsAsVector;
- (TSTGroupNode)initWithArchive:(const void *)archive forGroupBy:(id)by;
- (TSTGroupNode)initWithGroupCellValue:(id)value context:(id)context atLevel:(unsigned __int8)level groupUid:(TSKUIDStruct)uid children:(id)children;
- (TSTGroupNode)initWithGroupCellValue:(id)value groupBy:(id)by atLevel:(unsigned __int8)level groupUid:(TSKUIDStruct)uid children:(id)children;
- (TSTGroupValueTuple)groupValueTuple;
- (TSUIndexSet)pivotOnlyRowIndexes;
- (id).cxx_construct;
- (id)aggNodeForColumnUid:(const TSKUIDStruct *)uid;
- (id)aggregateRefForType:(unsigned __int8)type atLevel:(unsigned __int8)level forColumnUid:(const TSKUIDStruct *)uid;
- (id)canonicalKeyStringAtLevel:(unsigned __int8)level;
- (id)computedGroupValueTuple;
- (id)findGroupNodeForDisplayValuesFromSplitter:(id)splitter atLevel:(unsigned __int8)level startAtComponent:(unint64_t)component startAtWord:(unint64_t)word preserveFlags:(TSUPreserveFlags *)flags;
- (id)findGroupNodeForValue:(id)value atLevel:(unsigned __int8)level locale:(id)locale;
- (id)groupHierarchyTreeAsFiltered:(BOOL)filtered usingOrder:(id)order forDimension:(int64_t)dimension;
- (id)groupNodeForGroupUid:(const TSKUIDStruct *)uid;
- (id)groupNodeForRowUid:(const TSKUIDStruct *)uid atLevel:(unsigned __int8)level;
- (id)groupValueAtLevel:(unsigned __int8)level;
- (id)groupValueCellValue;
- (id)groupValueCellValueForGroupBySet:(id)set aggIndex:(unsigned __int16)index appendAggregateName:(BOOL)name;
- (id)groupValueHierarchyForChart:(BOOL)chart;
- (id)groupValueHierarchyForChart:(BOOL)chart groupBySet:(id)set aggIndex:(unsigned __int16)index appendAggregateName:(BOOL)name;
- (id)groupValueHierarchyRefAtLevel:(unsigned __int8)level;
- (id)groupValueHierarchyStringWithDelimiterString:(id)string;
- (id)groupValueHierarchyStringWithDelimiterString:(id)string namingContext:(id)context;
- (id)groupValueRefAtLevel:(unsigned __int8)level;
- (id)initAsRootNodeForContext:(id)context;
- (id)initAsRootNodeForGroupBy:(id)by;
- (id)insertRowUid:(const TSKUIDStruct *)uid atRowIndex:(unsigned int)index forGroupValueTuple:(id)tuple atLevel:(unsigned __int8)level withLocale:(id)locale createdGroupNodeCount:(unint64_t *)count;
- (id)rawGroupValueCellValue;
- (id)safeOrderedChildrenForArchiving;
- (unsigned)rowCount;
- (void)addAggNode:(id)node;
- (void)addChangesTo:(id)to forDemotingValueAtLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel;
- (void)addChangesTo:(id)to forPromotingValueAtLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel;
- (void)addChangesTo:(id)to forRemovingValueAtLevel:(unsigned __int8)level;
- (void)addChangesTo:(id)to forReplacingValue:(id)value atLevel:(unsigned __int8)level;
- (void)addChild:(id)child withKey:(id)key;
- (void)addRowUid:(const TSKUIDStruct *)uid;
- (void)clearAllGroupNodes;
- (void)clearEmptyNodes;
- (void)dealloc;
- (void)encodeToArchive:(void *)archive backwardCompatOptions:(unint64_t)options archiver:(id)archiver;
- (void)enumerateAllGroupsWithStop:(BOOL *)stop withBlock:(id)block;
- (void)enumerateDirectChildren:(id)children;
- (void)enumerateGroupsBetweenLevel:(unsigned __int8)level andLevel:(unsigned __int8)andLevel withStop:(BOOL *)stop withBlock:(id)block;
- (void)enumerateRowUidsWithBlock:(id)block;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver forGroupBy:(id)by;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)markAsDirtyWithCalcEngine:(id)engine;
- (void)markDependentsAsDirtyWithCalcEngine:(id)engine;
- (void)p_addChildGroupUidsIntoSet:(id)set recursively:(BOOL)recursively skipFiltered:(BOOL)filtered;
- (void)p_refreshGroupValue;
- (void)rebuildFormulasForAggNode:(id)node;
- (void)removeAllRowUids;
- (void)removeChildForKey:(id)key;
- (void)removeRowUid:(const TSKUIDStruct *)uid forGroupValueTuple:(id)tuple atLevel:(unsigned __int8)level withLocale:(id)locale;
- (void)removeRowUids:(id)uids;
- (void)saveToArchiver:(id)archiver;
- (void)setGroupBy:(id)by;
- (void)setupWithGroupCellValue:(id)value groupBy:(id)by atLevel:(unsigned __int8)level groupUid:(TSKUIDStruct)uid children:(id)children;
- (void)unpackAfterUnarchiveForGroupBy:(id)by atLevel:(unsigned __int8)level;
- (void)updateWithDocumentRoot:(id)root;
@end

@implementation TSTGroupNode

- (TSKUIDStruct)groupValueUid
{
  if (self->_groupLevel)
  {
    v5 = objc_msgSend_canonicalKeyString(self->_groupCellValue, a2, v2, v3, v4);
    v6 = v5;
    v11 = objc_msgSend_UTF8String(v6, v7, v8, v9, v10);
    v12 = sub_2211A9368(v11);
    v14 = v13;

    v15 = v12;
    v16 = v14;
  }

  else
  {

    v15 = objc_msgSend_groupByRootUid(TSCECategoryRef, a2, v2, v3, v4);
  }

  result._upper = v16;
  result._lower = v15;
  return result;
}

- (NSUUID)groupValueUuid
{
  v8._lower = objc_msgSend_groupValueUid(self, a2, v2, v3, v4);
  v8._upper = v5;
  v6 = TSKUIDStruct::NSUUIDValue(&v8);

  return v6;
}

- (unsigned)rowCount
{
  if (self->_groupBy)
  {
    return TSUIndexSet::count(&self->_rowUidsIndexSet);
  }

  else
  {
    return objc_msgSend_count(self->_disconnectedRowUids, a2, v2, v3, v4);
  }
}

- (TSKUIDStruct)labelUid
{
  v2 = self->_parentNode;
  v7 = v2;
  if (v2)
  {
    v8 = objc_msgSend_groupUid(v2, v3, v4, v5, v6);
    v10 = sub_2211A8DF4(v8, v9);
    v12 = v11;
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (id)computedGroupValueTuple
{
  parentNode = self->_parentNode;
  if (parentNode)
  {
    v7 = objc_msgSend_groupValueTuple(parentNode, a2, v2, v3, v4);
    v11 = objc_msgSend_groupValueTupleByAppendingValue_(v7, v8, self->_groupCellValue, v9, v10);
  }

  else
  {
    if (self->_groupLevel)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupNode computedGroupValueTuple]", v3, v4);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v15, v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 164, 0, "Only the root groupNode should have no parentNode pointer");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    }

    v23 = [TSTGroupValueTuple alloc];
    v11 = objc_msgSend_initWithValueArray_(v23, v24, MEMORY[0x277CBEBF8], v25, v26);
  }

  return v11;
}

- (TSTGroupValueTuple)groupValueTuple
{
  v3 = self->_cachedGroupValueTuple;
  if (!v3)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    cachedGroupValueTuple = self->_cachedGroupValueTuple;
    if (!cachedGroupValueTuple)
    {
      v10 = objc_msgSend_computedGroupValueTuple(selfCopy, v5, v6, v7, v8);
      v11 = self->_cachedGroupValueTuple;
      self->_cachedGroupValueTuple = v10;

      cachedGroupValueTuple = self->_cachedGroupValueTuple;
    }

    v3 = cachedGroupValueTuple;
    objc_sync_exit(selfCopy);
  }

  return v3;
}

- (BOOL)hasUnfilteredRows
{
  selfCopy = self;
  v6 = objc_msgSend_groupBy(self, a2, v2, v3, v4);
  if (!objc_msgSend_isForPivotTable(v6, v7, v8, v9, v10))
  {
    goto LABEL_7;
  }

  v15 = objc_msgSend_hiddenStates(v6, v11, v12, v13, v14);
  v20 = objc_msgSend_rowHiddenStateExtent(v15, v16, v17, v18, v19);

  if (!v20 || !objc_msgSend_hasActiveFilters(v20, v21, v22, v23, v24) || !TSUIndexSet::count(&selfCopy->_pivotOnlyRowIndexes))
  {

LABEL_7:
    LOBYTE(selfCopy) = objc_msgSend_rowCount(selfCopy, v11, v12, v13, v14) != 0;
    goto LABEL_8;
  }

  v29 = objc_msgSend_mutableFilteredIndexes(v20, v25, v26, v27, v28);
  v30 = TSUIndexSet::asNSIndexSet(&selfCopy->_pivotOnlyRowIndexes);
  LODWORD(selfCopy) = objc_msgSend_containsIndexes_(v29, v31, v30, v32, v33) ^ 1;

LABEL_8:
  return selfCopy;
}

- (void)setupWithGroupCellValue:(id)value groupBy:(id)by atLevel:(unsigned __int8)level groupUid:(TSKUIDStruct)uid children:(id)children
{
  upper = uid._upper;
  lower = uid._lower;
  levelCopy = level;
  v66 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  byCopy = by;
  childrenCopy = children;
  self->_childrenLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
  self->_groupBy = byCopy;
  objc_storeStrong(&self->_groupCellValue, value);
  self->_groupUid._lower = lower;
  self->_groupUid._upper = upper;
  self->_groupLevel = levelCopy;
  objc_storeStrong(&self->_children, children);
  if (valueCopy && !levelCopy)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTGroupNode setupWithGroupCellValue:groupBy:atLevel:groupUid:children:]", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 217, 0, "Root node shouldn't have a cellValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v30 = self->_children;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v61, v65, 16);
  if (v35)
  {
    v36 = *v62;
    do
    {
      v37 = 0;
      do
      {
        if (*v62 != v36)
        {
          objc_enumerationMutation(v30);
        }

        v38 = objc_msgSend_objectForKey_(self->_children, v32, *(*(&v61 + 1) + 8 * v37), v33, v34);
        objc_msgSend_setParentNode_(v38, v39, self, v40, v41);

        ++v37;
      }

      while (v35 != v37);
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v61, v65, 16);
    }

    while (v35);
  }

  v42 = [TSTGroupNodeFormatManager alloc];
  v46 = objc_msgSend_initWithCellValue_(v42, v43, self->_groupCellValue, v44, v45);
  formatManager = self->_formatManager;
  self->_formatManager = v46;

  v52 = objc_msgSend_cellValue(self->_formatManager, v48, v49, v50, v51);
  v53 = v52 == self->_groupCellValue;

  if (!v53)
  {
    v58 = objc_msgSend_cellValue(self->_formatManager, v54, v55, v56, v57);
    groupCellValue = self->_groupCellValue;
    self->_groupCellValue = v58;
  }
}

- (TSTGroupNode)initWithGroupCellValue:(id)value groupBy:(id)by atLevel:(unsigned __int8)level groupUid:(TSKUIDStruct)uid children:(id)children
{
  upper = uid._upper;
  lower = uid._lower;
  levelCopy = level;
  valueCopy = value;
  byCopy = by;
  childrenCopy = children;
  v20 = objc_msgSend_context(byCopy, v16, v17, v18, v19);
  v24.receiver = self;
  v24.super_class = TSTGroupNode;
  v21 = [(TSTGroupNode *)&v24 initWithContext:v20];

  if (v21)
  {
    objc_msgSend_setupWithGroupCellValue_groupBy_atLevel_groupUid_children_(v21, v22, valueCopy, byCopy, levelCopy, lower, upper, childrenCopy);
  }

  return v21;
}

- (TSTGroupNode)initWithGroupCellValue:(id)value context:(id)context atLevel:(unsigned __int8)level groupUid:(TSKUIDStruct)uid children:(id)children
{
  upper = uid._upper;
  lower = uid._lower;
  levelCopy = level;
  valueCopy = value;
  contextCopy = context;
  childrenCopy = children;
  v20.receiver = self;
  v20.super_class = TSTGroupNode;
  v16 = [(TSTGroupNode *)&v20 initWithContext:contextCopy];
  v18 = v16;
  if (v16)
  {
    objc_msgSend_setupWithGroupCellValue_groupBy_atLevel_groupUid_children_(v16, v17, valueCopy, 0, levelCopy, lower, upper, childrenCopy);
  }

  return v18;
}

- (id)initAsRootNodeForGroupBy:(id)by
{
  byCopy = by;
  v9 = objc_msgSend_groupByRootUid(TSCECategoryRef, v5, v6, v7, v8);
  v11 = objc_msgSend_initWithGroupCellValue_groupBy_atLevel_groupUid_children_(self, v10, 0, byCopy, 0, v9, v10, 0);

  return v11;
}

- (id)initAsRootNodeForContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = TSTGroupNode;
  v9 = [(TSTGroupNode *)&v13 initWithContext:contextCopy];
  if (v9)
  {
    v10 = objc_msgSend_groupByRootUid(TSCECategoryRef, v5, v6, v7, v8);
    objc_msgSend_setupWithGroupCellValue_groupBy_atLevel_groupUid_children_(v9, v11, 0, 0, 0, v10, v11, 0);
  }

  return v9;
}

- (TSTGroupNode)initWithArchive:(const void *)archive forGroupBy:(id)by
{
  byCopy = by;
  v11 = objc_msgSend_context(byCopy, v7, v8, v9, v10);
  v15.receiver = self;
  v15.super_class = TSTGroupNode;
  v12 = [(TSTGroupNode *)&v15 initWithContext:v11];

  if (v12)
  {
    objc_msgSend_loadFromArchive_unarchiver_forGroupBy_(v12, v13, archive, 0, byCopy);
  }

  return v12;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver forGroupBy:(id)by
{
  unarchiverCopy = unarchiver;
  byCopy = by;
  v15 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v9, v10, v11, v12);
  v109 = v15;
  if ((*(archive + 16) & 4) != 0)
  {
    v16 = objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v13, *(archive + 17), v15, v14);
  }

  else
  {
    v16 = 0;
  }

  if (*(archive + 15))
  {
    v17 = *(archive + 15);
  }

  else
  {
    v17 = MEMORY[0x277D809E0];
  }

  v18 = TSKUIDStruct::loadFromMessage(v17, v13);
  objc_msgSend_setupWithGroupCellValue_groupBy_atLevel_groupUid_children_(self, v19, v16, byCopy, 255, v18, v19, 0);
  if ((*(archive + 16) & 0x10) != 0)
  {
    sub_22126A778(*(archive + 19), &v114);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v114);
    v113[5] = MEMORY[0x277D85DD0];
    v113[6] = 3221225472;
    v113[7] = sub_22107DAF8;
    v113[8] = &unk_27845D888;
    v113[9] = self;
    TSUIndexSet::enumerateIndexesUsingBlock();
  }

  else
  {
    v23 = *(archive + 14);
    if (v23 >= 1)
    {
      v24 = 8;
      do
      {
        *&v114 = 0;
        v114._singleRange._begin = 0;
        *&v114 = TSKUIDStruct::loadFromMessage(*(*(archive + 8) + v24), v20);
        v114._singleRange._begin = v25;
        objc_msgSend_addRowUid_(self, v25, &v114, v26, v27);
        v24 += 8;
        --v23;
      }

      while (v23);
    }
  }

  if ((*(archive + 16) & 8) != 0)
  {
    sub_22126A778(*(archive + 18), &v114);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v114);
  }

  if (*(archive + 26) < 1)
  {
    if (byCopy)
    {
      v74 = *(archive + 8);
      if (v74 >= 1)
      {
        v75 = objc_alloc(MEMORY[0x277CBEB38]);
        v79 = objc_msgSend_initWithCapacity_(v75, v76, v74, v77, v78);
        children = self->_children;
        self->_children = v79;

        v81 = 8;
        do
        {
          v82 = [TSTGroupNode alloc];
          v85 = objc_msgSend_initWithArchive_forGroupBy_(v82, v83, *(*(archive + 5) + v81), byCopy, v84);
          objc_msgSend_setParentNode_(v85, v86, self, v87, v88);
          v93 = objc_msgSend_groupCellValue(v85, v89, v90, v91, v92);
          v98 = objc_msgSend_canonicalKeyString(v93, v94, v95, v96, v97);

          if (v98)
          {
            v101 = v98;
          }

          else
          {
            v101 = &stru_2834BADA0;
          }

          v102 = self->_children;
          if (!v102)
          {
            v103 = objc_opt_new();
            v104 = self->_children;
            self->_children = v103;

            v102 = self->_children;
          }

          objc_msgSend_setObject_forKey_(v102, v99, v85, v101, v100);
          v111[0] = MEMORY[0x277D85DD0];
          v111[1] = 3221225472;
          v111[2] = sub_22107DDE4;
          v111[3] = &unk_27845D8B0;
          v111[4] = self;
          v105 = v85;
          v112 = v105;
          objc_msgSend_enumerateRowUidsWithBlock_(v105, v106, v111, v107, v108);

          v81 += 8;
          --v74;
        }

        while (v74);
      }
    }
  }

  else
  {
    if (!unarchiverCopy)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTGroupNode loadFromArchive:unarchiver:forGroupBy:]", v21, v22);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v31, v32);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 308, 0, "invalid nil value for '%{public}s'", "unarchiver");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    }

    v113[0] = MEMORY[0x277D85DD0];
    v113[1] = 3221225472;
    v113[2] = sub_22107DB10;
    v113[3] = &unk_27845D8D8;
    v113[4] = self;
    v39 = unarchiverCopy;
    v40 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v39, v41, archive + 96, v40, 0, v113);
  }

  v42 = *(archive + 20);
  if (v42 >= 1)
  {
    v43 = 8;
    do
    {
      v44 = sub_2212697C0(*(*(archive + 11) + v43));
      p_aggNodeCoordsToUnpack = &self->_aggNodeCoordsToUnpack;
      end = self->_aggNodeCoordsToUnpack.__end_;
      cap = self->_aggNodeCoordsToUnpack.__cap_;
      if (end >= cap)
      {
        v49 = end - p_aggNodeCoordsToUnpack->__begin_;
        if ((v49 + 1) >> 61)
        {
          sub_22107C148();
        }

        v50 = cap - p_aggNodeCoordsToUnpack->__begin_;
        v51 = v50 >> 2;
        if (v50 >> 2 <= (v49 + 1))
        {
          v51 = v49 + 1;
        }

        if (v50 >= 0x7FFFFFFFFFFFFFF8)
        {
          v52 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v51;
        }

        if (v52)
        {
          sub_2210874C4(&self->_aggNodeCoordsToUnpack, v52);
        }

        v53 = (8 * v49);
        *v53 = v44;
        v48 = (8 * v49 + 8);
        v54 = self->_aggNodeCoordsToUnpack.__end_ - self->_aggNodeCoordsToUnpack.__begin_;
        v55 = (v53 - v54);
        memcpy(v53 - v54, p_aggNodeCoordsToUnpack->__begin_, v54);
        begin = p_aggNodeCoordsToUnpack->__begin_;
        p_aggNodeCoordsToUnpack->__begin_ = v55;
        self->_aggNodeCoordsToUnpack.__end_ = v48;
        self->_aggNodeCoordsToUnpack.__cap_ = 0;
        if (begin)
        {
          operator delete(begin);
        }
      }

      else
      {
        *end = v44;
        v48 = end + 1;
      }

      self->_aggNodeCoordsToUnpack.__end_ = v48;
      v43 += 8;
      --v42;
    }

    while (v42);
  }

  v57 = *(archive + 4);
  if ((v57 & 2) != 0)
  {
    v58 = [TSTGroupNodeFormatManager alloc];
    if (*(archive + 16))
    {
      v62 = objc_msgSend_initWithArchive_(v58, v59, *(archive + 16), v60, v61);
    }

    else
    {
      v62 = objc_msgSend_initWithArchive_(v58, v59, &TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_default_instance_, v60, v61);
    }

    formatManager = self->_formatManager;
    self->_formatManager = v62;

    v57 = *(archive + 4);
  }

  if ((v57 & 2) != 0)
  {
    v69 = [TSTGroupNodeFormatManager alloc];
    if (*(archive + 16))
    {
      v68 = objc_msgSend_initWithArchive_(v69, v70, *(archive + 16), v71, v72);
    }

    else
    {
      v68 = objc_msgSend_initWithArchive_(v69, v70, &TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_default_instance_, v71, v72);
    }
  }

  else
  {
    v64 = [TSTGroupNodeFormatManager alloc];
    v68 = objc_msgSend_initWithCellValue_(v64, v65, self->_groupCellValue, v66, v67);
  }

  v73 = self->_formatManager;
  self->_formatManager = v68;
}

- (void)unpackAfterUnarchiveForGroupBy:(id)by atLevel:(unsigned __int8)level
{
  v47 = *MEMORY[0x277D85DE8];
  byCopy = by;
  self->_childrenLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
  self->_groupBy = byCopy;
  self->_groupLevel = level;
  v11 = objc_msgSend_groupNodesByGroupUid(byCopy, v7, v8, v9, v10);
  p_groupUid = &self->_groupUid;
  v12 = sub_221086FBC(v11, &self->_groupUid._lower);
  objc_storeStrong(v12 + 4, self);
  objc_msgSend_unpackAfterUnarchiveForGroupBy_(self->_formatManager, v13, byCopy, v14, v15);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v16 = self->_children;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v41, v46, 16);
  if (v21)
  {
    v22 = *v42;
    v23 = level + 1;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v25 = objc_msgSend_objectForKey_(self->_children, v18, *(*(&v41 + 1) + 8 * i), v19, v20, v41);
        objc_msgSend_unpackAfterUnarchiveForGroupBy_atLevel_(v25, v26, byCopy, v23, v27);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v41, v46, 16);
    }

    while (v21);
  }

  begin = self->_aggNodeCoordsToUnpack.__begin_;
  end = self->_aggNodeCoordsToUnpack.__end_;
  if (begin != end)
  {
    do
    {
      p_groupUid = *begin;
      v33 = objc_msgSend_aggNodeForAggFormulaCoord_(byCopy, v28, &p_groupUid, v29, v30, v41);
      v37 = v33;
      if (v33)
      {
        objc_msgSend_setGroupNode_(v33, v34, self, v35, v36);
        objc_msgSend_addAggNode_(self, v38, v37, v39, v40);
      }

      ++begin;
    }

    while (begin != end);
    begin = self->_aggNodeCoordsToUnpack.__begin_;
  }

  self->_aggNodeCoordsToUnpack.__end_ = begin;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[272], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_forGroupBy_(self, v8, v7, unarchiverCopy, 0);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22108750C, off_2812E4498[272], v5);

  objc_msgSend_encodeToArchive_backwardCompatOptions_archiver_(self, v7, v6, 0, archiverCopy);
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_children;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v16, v20, 16);
  if (v8)
  {
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = objc_msgSend_objectForKey_(self->_children, v5, *(*(&v16 + 1) + 8 * v10), v6, v7);
        objc_msgSend_setParentNode_(v11, v12, 0, v13, v14);

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v16, v20, 16);
    }

    while (v8);
  }

  v15.receiver = self;
  v15.super_class = TSTGroupNode;
  [(TSTGroupNode *)&v15 dealloc];
}

- (void)addChild:(id)child withKey:(id)key
{
  childCopy = child;
  keyCopy = key;
  if (childCopy)
  {
    objc_msgSend_willModify(self, v7, v8, v9, v10);
    if (!keyCopy)
    {
      keyCopy = &stru_2834BADA0;
    }

    os_unfair_lock_lock(&self->_childrenLock);
    children = self->_children;
    if (!children)
    {
      v15 = objc_opt_new();
      v16 = self->_children;
      self->_children = v15;

      children = self->_children;
    }

    objc_msgSend_setObject_forKey_(children, v12, childCopy, keyCopy, v13);
    os_unfair_lock_unlock(&self->_childrenLock);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_22107E4FC;
    v20[3] = &unk_27845D8B0;
    v20[4] = self;
    v21 = childCopy;
    objc_msgSend_enumerateRowUidsWithBlock_(v21, v17, v20, v18, v19);
  }
}

- (void)removeChildForKey:(id)key
{
  keyCopy = key;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  if (!keyCopy)
  {
    keyCopy = &stru_2834BADA0;
  }

  os_unfair_lock_lock(&self->_childrenLock);
  v12 = objc_msgSend_objectForKey_(self->_children, v9, keyCopy, v10, v11);
  objc_msgSend_removeObjectForKey_(self->_children, v13, keyCopy, v14, v15);
  os_unfair_lock_unlock(&self->_childrenLock);
  if (v12)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22107E67C;
    v19[3] = &unk_27845D900;
    v19[4] = self;
    objc_msgSend_enumerateRowUidsWithBlock_(v12, v16, v19, v17, v18);
  }
}

- (id)safeOrderedChildrenForArchiving
{
  v44 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_childrenLock);
  v7 = objc_msgSend_copy(self->_children, v3, v4, v5, v6);
  os_unfair_lock_unlock(&self->_childrenLock);
  v8 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = v7;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v38, v43, 16);
  if (v14)
  {
    v15 = *v39;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_addObject_(v8, v11, *(*(&v38 + 1) + 8 * i), v12, v13);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v38, v43, 16);
    }

    while (v14);
  }

  objc_msgSend_sortUsingSelector_(v8, v17, sel_compare_, v18, v19);
  v20 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = v8;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v34, v42, 16);
  if (v26)
  {
    v27 = *v35;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v21);
        }

        v32 = objc_msgSend_objectForKey_(v9, v23, *(*(&v34 + 1) + 8 * j), v24, v25, v34);
        if (v32)
        {
          objc_msgSend_addObject_(v20, v29, v32, v30, v31);
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v34, v42, 16);
    }

    while (v26);
  }

  return v20;
}

- (void)encodeToArchive:(void *)archive backwardCompatOptions:(unint64_t)options archiver:(id)archiver
{
  v83 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v73 = objc_msgSend_groupBy(self, v9, v10, v11, v12);
  *(archive + 4) |= 1u;
  v13 = *(archive + 15);
  if (!v13)
  {
    v14 = *(archive + 1);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x223DA0360](v14);
    *(archive + 15) = v13;
  }

  TSKUIDStruct::saveToMessage(&self->_groupUid, v13);
  v19 = self->_groupCellValue;
  if (v19)
  {
    *(archive + 4) |= 4u;
    v20 = *(archive + 17);
    if (!v20)
    {
      v21 = *(archive + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v21);
      *(archive + 17) = v20;
    }

    objc_msgSend_encodeCellValueToArchive_(v19, v15, v20, v17, v18);
  }

  else if (self->_groupLevel)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTGroupNode encodeToArchive:backwardCompatOptions:archiver:]", v17, v18);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 510, 0, "Only the root node has a nil groupCellValue?!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  if (v73)
  {
    v33 = 0;
    if ((options & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    if (!v33)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v33 = objc_msgSend_count(self->_disconnectedRowUids, v15, v16, v17, v18) != 0;
  if ((options & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = sub_22107EF30;
  v81[3] = &unk_27845D920;
  v81[4] = archive;
  objc_msgSend_enumerateRowUidsWithBlock_(self, v15, v81, v17, v18);
LABEL_19:
  if (TSUIndexSet::count(&self->_rowUidsIndexSet))
  {
    *(archive + 4) |= 0x10u;
    if (!*(archive + 19))
    {
      v34 = *(archive + 1);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(archive + 19) = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v34);
    }

    sub_22126A644();
  }

  if (TSUIndexSet::count(&self->_pivotOnlyRowIndexes))
  {
    *(archive + 4) |= 8u;
    if (!*(archive + 18))
    {
      v39 = *(archive + 1);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(archive + 18) = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v39);
    }

    sub_22126A644();
  }

  if (options - 1 < 3)
  {
    objc_msgSend_safeOrderedChildrenForArchiving(self, v35, v36, v37, v38);
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v40 = v78 = 0u;
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v77, v82, 16);
    if (!v43)
    {
      goto LABEL_46;
    }

    v44 = *v78;
    while (1)
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v78 != v44)
        {
          objc_enumerationMutation(v40);
        }

        v46 = *(*(&v77 + 1) + 8 * i);
        v47 = *(archive + 5);
        if (!v47)
        {
          goto LABEL_42;
        }

        v48 = *(archive + 8);
        v49 = *v47;
        if (v48 < *v47)
        {
          *(archive + 8) = v48 + 1;
          objc_msgSend_encodeToArchive_backwardCompatOptions_archiver_(v46, v42, *&v47[2 * v48 + 2], options, archiverCopy);
          continue;
        }

        if (v49 == *(archive + 9))
        {
LABEL_42:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v47 = *(archive + 5);
          v49 = *v47;
        }

        *v47 = v49 + 1;
        v50 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive>(*(archive + 3));
        v51 = *(archive + 8);
        v52 = *(archive + 5) + 8 * v51;
        *(archive + 8) = v51 + 1;
        *(v52 + 8) = v50;
        objc_msgSend_encodeToArchive_backwardCompatOptions_archiver_(v46, v53, v50, options, archiverCopy);
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v42, &v77, v82, 16);
      if (!v43)
      {
LABEL_46:

        goto LABEL_49;
      }
    }
  }

  if (!options)
  {
    v40 = objc_msgSend_safeOrderedChildrenForArchiving(self, v35, v36, v37, v38);
    objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v54, v40, archive + 96, v55);
LABEL_49:
  }

  v56 = objc_msgSend_aggNodes(self, v35, v36, v37, v38);
  sub_2210877BC(v75, v56);
  v58 = v76;
  if (v76)
  {
    while (1)
    {
      v59 = v58[4];
      v74 = 0;
      v74 = objc_msgSend_formulaCoord(v59, v60, v61, v62, v63);
      v64 = *(archive + 11);
      if (!v64)
      {
        goto LABEL_56;
      }

      v65 = *(archive + 20);
      v66 = *v64;
      if (v65 >= *v64)
      {
        break;
      }

      *(archive + 20) = v65 + 1;
      v67 = *&v64[2 * v65 + 2];
LABEL_58:
      sub_221269820(&v74, v67);

      v58 = *v58;
      if (!v58)
      {
        goto LABEL_59;
      }
    }

    if (v66 == *(archive + 21))
    {
LABEL_56:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 72));
      v64 = *(archive + 11);
      v66 = *v64;
    }

    *v64 = v66 + 1;
    v67 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(archive + 9));
    v68 = *(archive + 20);
    v69 = *(archive + 11) + 8 * v68;
    *(archive + 20) = v68 + 1;
    *(v69 + 8) = v67;
    goto LABEL_58;
  }

LABEL_59:
  formatManager = self->_formatManager;
  if (formatManager)
  {
    *(archive + 4) |= 2u;
    v71 = *(archive + 16);
    if (!v71)
    {
      v72 = *(archive + 1);
      if (v72)
      {
        v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
      }

      v71 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive>(v72);
      *(archive + 16) = v71;
    }

    objc_msgSend_encodeToArchive_forGroupBy_backwardCompat_(formatManager, v57, v71, v73, (options >> 1) & 1);
  }

  sub_221087AA4(v75);
}

- (BOOL)isBlankNode
{
  if (!self->_groupLevel)
  {
    return 0;
  }

  groupCellValue = self->_groupCellValue;
  return !groupCellValue || objc_msgSend_valueType(groupCellValue, a2, v2, v3, v4) == 10 || objc_msgSend_valueType(self->_groupCellValue, v7, v8, v9, v10) == 0;
}

- (BOOL)isErrorNode
{
  if (!self->_groupLevel)
  {
    return 0;
  }

  groupCellValue = self->_groupCellValue;
  return !groupCellValue || objc_msgSend_valueType(groupCellValue, a2, v2, v3, v4) == 9;
}

- (void)setGroupBy:(id)by
{
  v30 = *MEMORY[0x277D85DE8];
  byCopy = by;
  v5 = byCopy;
  self->_groupBy = byCopy;
  if (byCopy)
  {
    disconnectedRowUids = self->_disconnectedRowUids;
    if (disconnectedRowUids)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_22107F2D4;
      v27[3] = &unk_27845D8B0;
      v27[4] = self;
      v28 = byCopy;
      objc_msgSend_foreachUuid_(disconnectedRowUids, v7, v27, v8, v9);
      v10 = self->_disconnectedRowUids;
      self->_disconnectedRowUids = 0;
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = self->_children;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v23, v29, 16);
  if (v16)
  {
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = objc_msgSend_objectForKey_(self->_children, v13, *(*(&v23 + 1) + 8 * v18), v14, v15, v23);
        objc_msgSend_setGroupBy_(v19, v20, v5, v21, v22);

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v23, v29, 16);
    }

    while (v16);
  }
}

- (void)updateWithDocumentRoot:(id)root
{
  v111 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v100 = rootCopy;
  if (rootCopy)
  {
    v9 = rootCopy;
    v10 = objc_msgSend_documentLocale(rootCopy, v5, v6, v7, v8);
    objc_msgSend_setLocale_(self->_groupCellValue, v11, v10, v12, v13);

    groupCellValue = self->_groupCellValue;
    v19 = objc_msgSend_customFormatList(v9, v15, v16, v17, v18);
    objc_msgSend_updateWithCustomFormatList_(groupCellValue, v20, v19, v21, v22);

    objc_msgSend_updateWithDocumentRoot_(self->_formatManager, v23, v9, v24, v25);
  }

  else
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupNode updateWithDocumentRoot:]", v7, v8);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 614, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v37 = self->_children;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v105, v110, 16);
  if (!v42)
  {
LABEL_26:

    goto LABEL_27;
  }

  LOBYTE(v43) = 0;
  v44 = *v106;
  do
  {
    for (i = 0; i != v42; ++i)
    {
      if (*v106 != v44)
      {
        objc_enumerationMutation(v37);
      }

      v46 = *(*(&v105 + 1) + 8 * i);
      v47 = objc_msgSend_objectForKey_(self->_children, v39, v46, v40, v41);
      objc_msgSend_updateWithDocumentRoot_(v47, v48, v100, v49, v50);
      if (v43)
      {
        v43 = 1;
      }

      else
      {
        v55 = objc_msgSend_groupCellValue(v47, v51, v52, v53, v54);
        v60 = objc_msgSend_canonicalKeyString(v55, v56, v57, v58, v59);

        if (v60)
        {
          v64 = v60;
          isEqualToString = objc_msgSend_isEqualToString_(v60, v61, v46, v62, v63);
        }

        else
        {
          v64 = &stru_2834BADA0;
          isEqualToString = objc_msgSend_isEqualToString_(&stru_2834BADA0, v61, v46, v62, v63);
        }

        v66 = isEqualToString;

        v43 = v66 ^ 1;
      }
    }

    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v105, v110, 16);
  }

  while (v42);

  if (v43)
  {
    objc_msgSend_willModify(self, v67, v68, v69, v70);
    v75 = objc_msgSend_copy(self->_children, v71, v72, v73, v74);
    objc_msgSend_removeAllObjects(self->_children, v76, v77, v78, v79);
    sub_221087B24(&self->_childNodesByRowUid);
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v37 = v75;
    v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v80, &v101, v109, 16);
    if (v84)
    {
      v85 = *v102;
      do
      {
        for (j = 0; j != v84; ++j)
        {
          if (*v102 != v85)
          {
            objc_enumerationMutation(v37);
          }

          v87 = objc_msgSend_objectForKey_(v37, v81, *(*(&v101 + 1) + 8 * j), v82, v83);
          v92 = objc_msgSend_groupCellValue(v87, v88, v89, v90, v91);
          v97 = objc_msgSend_canonicalKeyString(v92, v93, v94, v95, v96);

          objc_msgSend_addChild_withKey_(self, v98, v87, v97, v99);
        }

        v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v81, &v101, v109, 16);
      }

      while (v84);
    }

    goto LABEL_26;
  }

LABEL_27:
}

- (void)p_addChildGroupUidsIntoSet:(id)set recursively:(BOOL)recursively skipFiltered:(BOOL)filtered
{
  filteredCopy = filtered;
  recursivelyCopy = recursively;
  v32 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = self->_children;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v27, v31, 16);
  if (v14)
  {
    v15 = *v28;
    do
    {
      v16 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = objc_msgSend_objectForKey_(self->_children, v11, *(*(&v27 + 1) + 8 * v16), v12, v13, v27);
        v22 = v17;
        if (!filteredCopy || objc_msgSend_hasUnfilteredRows(v17, v18, v19, v20, v21))
        {
          v23 = objc_msgSend_groupUid(v22, v18, v19, v20, v21);
          objc_msgSend_addUUID_(setCopy, v24, v23, v24, v25);
          if (recursivelyCopy)
          {
            objc_msgSend_p_addChildGroupUidsIntoSet_recursively_skipFiltered_(v22, v26, setCopy, 1, filteredCopy);
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v27, v31, 16);
    }

    while (v14);
  }
}

- (TSCEUIDSet)childGroupUids
{
  v3 = objc_opt_new();
  objc_msgSend_p_addChildGroupUidsIntoSet_recursively_skipFiltered_(self, v4, v3, 1, 0);

  return v3;
}

- (TSCEUIDSet)unfilteredChildGroupUids
{
  v3 = objc_opt_new();
  objc_msgSend_p_addChildGroupUidsIntoSet_recursively_skipFiltered_(self, v4, v3, 1, 1);

  return v3;
}

- (TSCEUIDSet)directChildGroupUids
{
  v3 = objc_opt_new();
  objc_msgSend_p_addChildGroupUidsIntoSet_recursively_skipFiltered_(self, v4, v3, 0, 0);

  return v3;
}

- (TSCEUIDSet)unfilteredDirectChildGroupUids
{
  v3 = objc_opt_new();
  objc_msgSend_p_addChildGroupUidsIntoSet_recursively_skipFiltered_(self, v4, v3, 0, 1);

  return v3;
}

- (id)aggregateRefForType:(unsigned __int8)type atLevel:(unsigned __int8)level forColumnUid:(const TSKUIDStruct *)uid
{
  levelCopy = level;
  typeCopy = type;
  v9 = [TSCECategoryRef alloc];
  v14 = objc_msgSend_groupBy(self, v10, v11, v12, v13);
  v27[0] = objc_msgSend_groupByUid(v14, v15, v16, v17, v18);
  v27[1] = v19;
  v26[0] = objc_msgSend_groupUid(self, v19, v20, v21, v22);
  v26[1] = v23;
  v24 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v9, v23, v27, v26, uid, typeCopy, levelCopy);

  return v24;
}

- (id)groupValueRefAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v5 = [TSCECategoryRef alloc];
  v10 = objc_msgSend_groupBy(self, v6, v7, v8, v9);
  v24[0] = objc_msgSend_groupByUid(v10, v11, v12, v13, v14);
  v24[1] = v15;
  v23[0] = objc_msgSend_groupUid(self, v15, v16, v17, v18);
  v23[1] = v19;
  v22[0] = 0;
  v22[1] = 0;
  v20 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v5, v19, v24, v23, v22, 9, levelCopy);

  return v20;
}

- (id)groupValueHierarchyRefAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v5 = [TSCECategoryRef alloc];
  v10 = objc_msgSend_groupBy(self, v6, v7, v8, v9);
  v24[0] = objc_msgSend_groupByUid(v10, v11, v12, v13, v14);
  v24[1] = v15;
  v23[0] = objc_msgSend_groupUid(self, v15, v16, v17, v18);
  v23[1] = v19;
  v22[0] = 0;
  v22[1] = 0;
  v20 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v5, v19, v24, v23, v22, 8, levelCopy);

  return v20;
}

- (id)findGroupNodeForValue:(id)value atLevel:(unsigned __int8)level locale:(id)locale
{
  levelCopy = level;
  valueCopy = value;
  localeCopy = locale;
  if (objc_msgSend_groupLevel(self, v10, v11, v12, v13) == levelCopy)
  {
    selfCopy = self;
  }

  else if (objc_msgSend_groupLevel(self, v14, v15, v16, v17) >= levelCopy)
  {
    selfCopy = 0;
  }

  else
  {
    v23 = objc_msgSend_groupLevel(self, v19, v20, v21, v22);
    v30 = objc_msgSend_canonicalKeyStringAtLevel_(valueCopy, v24, (v23 + 1), v25, v26);
    if (v30)
    {
      v31 = objc_msgSend_objectForKey_(self->_children, v27, v30, v28, v29);
      selfCopy = objc_msgSend_findGroupNodeForValue_atLevel_locale_(v31, v32, valueCopy, levelCopy, localeCopy);
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)findGroupNodeForDisplayValuesFromSplitter:(id)splitter atLevel:(unsigned __int8)level startAtComponent:(unint64_t)component startAtWord:(unint64_t)word preserveFlags:(TSUPreserveFlags *)flags
{
  levelCopy = level;
  v172 = *MEMORY[0x277D85DE8];
  splitterCopy = splitter;
  v165 = self->_groupBy;
  if (!v165 || self->_disconnectedRowUids)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTGroupNode findGroupNodeForDisplayValuesFromSplitter:atLevel:startAtComponent:startAtWord:preserveFlags:]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 749, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v161 = objc_msgSend_componentAtIndex_(splitterCopy, v10, component, v11, v12);
  if (objc_msgSend_groupLevel(self, v24, v25, v26, v27) == levelCopy)
  {
    selfCopy = self;
    goto LABEL_43;
  }

  if (objc_msgSend_groupLevel(self, v28, v29, v30, v31) >= levelCopy)
  {
    selfCopy = 0;
    goto LABEL_43;
  }

  v157 = objc_msgSend_wordAtIndex_(v161, v33, word, v34, v35);
  if (objc_msgSend_hasPreserveFlag(v157, v36, v37, v38, v39))
  {
    flags->_flags |= 2u;
  }

  v43 = objc_msgSend_trimmedStringStartingAtWord_(v161, v40, word, v41, v42);
  v48 = objc_msgSend_localizedBlankGroupName(splitterCopy, v44, v45, v46, v47);
  v52 = objc_msgSend_caseInsensitiveCompare_(v43, v49, v48, v50, v51);

  if (!v52)
  {
    v104 = @"nil";
    goto LABEL_25;
  }

  v57 = objc_msgSend_localizedErrorGroupName(splitterCopy, v53, v54, v55, v56);
  v61 = objc_msgSend_caseInsensitiveCompare_(v43, v58, v57, v59, v60);

  if (!v61)
  {
    v104 = @"err";
    goto LABEL_25;
  }

  v63 = objc_msgSend_localizedTrueGroupName(splitterCopy, v53, v62, v55, v56);
  if (!objc_msgSend_caseInsensitiveCompare_(v43, v64, v63, v65, v66))
  {
    v102 = @"boo_TRUE";
LABEL_22:
    v103 = 1;
    goto LABEL_23;
  }

  v71 = objc_msgSend_localizedTrueGroupNameForColumn(splitterCopy, v67, v68, v69, v70);
  v75 = objc_msgSend_caseInsensitiveCompare_(v43, v72, v71, v73, v74);

  if (!v75)
  {
    v104 = @"boo_TRUE";
    goto LABEL_25;
  }

  v63 = objc_msgSend_localizedFalseGroupName(splitterCopy, v53, v76, v55, v56);
  if (!objc_msgSend_caseInsensitiveCompare_(v43, v77, v63, v78, v79))
  {
    v102 = @"boo_FALSE";
    goto LABEL_22;
  }

  v84 = objc_msgSend_localizedFalseGroupNameForColumn(splitterCopy, v80, v81, v82, v83);
  v88 = objc_msgSend_caseInsensitiveCompare_(v43, v85, v84, v86, v87);

  if (v88)
  {
    v63 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v53, @"str_%@", v55, v56, v43);
    v93 = objc_msgSend_locale(v165, v89, v90, v91, v92);
    v98 = objc_msgSend_locale(v93, v94, v95, v96, v97);
    v102 = objc_msgSend_lowercaseStringWithLocale_(v63, v99, v98, v100, v101);

    v103 = 0;
LABEL_23:

    v104 = v102;
    goto LABEL_26;
  }

  v104 = @"boo_FALSE";
LABEL_25:
  v103 = 1;
LABEL_26:
  v156 = v104;
  v158 = objc_msgSend_objectForKey_(self->_children, v53, v104, v55, v56);
  if (!v158)
  {
    goto LABEL_31;
  }

  if (!v103)
  {
    v163 = objc_msgSend_normalizedStringForCompare_(TSTGroupNode, v105, v43, v106, v107);

    v114 = objc_msgSend_groupCellValue(v158, v110, v111, v112, v113);
    v119 = objc_msgSend_groupLevel(v158, v115, v116, v117, v118);
    v121 = objc_msgSend_localizedStringForCellValue_categoryLevel_groupBy_(TSTGroupNode, v120, v114, v119, v165);
    v125 = objc_msgSend_normalizedStringForCompare_(TSTGroupNode, v122, v121, v123, v124);

    if (!objc_msgSend_caseInsensitiveCompare_(v125, v126, v163, v127, v128))
    {
      v109 = v158;

LABEL_41:
      v43 = v163;
      goto LABEL_42;
    }

    v43 = v163;
LABEL_31:
    v163 = objc_msgSend_normalizedStringForCompare_(TSTGroupNode, v105, v43, v106, v107);

    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    obj = self->_children;
    v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v129, &v167, v171, 16);
    if (v133)
    {
      v134 = *v168;
LABEL_33:
      v135 = 0;
      while (1)
      {
        if (*v168 != v134)
        {
          objc_enumerationMutation(obj);
        }

        v109 = objc_msgSend_objectForKey_(self->_children, v130, *(*(&v167 + 1) + 8 * v135), v131, v132);
        v140 = objc_msgSend_groupCellValue(v109, v136, v137, v138, v139);
        v145 = objc_msgSend_groupLevel(v109, v141, v142, v143, v144);
        v147 = objc_msgSend_localizedStringForCellValue_categoryLevel_groupBy_(TSTGroupNode, v146, v140, v145, v165);
        v151 = objc_msgSend_normalizedStringForCompare_(TSTGroupNode, v148, v147, v149, v150);

        LOBYTE(v147) = objc_msgSend_isEqualToString_(v151, v152, v163, v153, v154);
        if (v147)
        {
          break;
        }

        if (v133 == ++v135)
        {
          v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v130, &v167, v171, 16);
          if (v133)
          {
            goto LABEL_33;
          }

          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_39:
      v109 = 0;
    }

    goto LABEL_41;
  }

  v109 = v158;
LABEL_42:
  v166 = 0;
  selfCopy = objc_msgSend_findGroupNodeForDisplayValuesFromSplitter_atLevel_startAtComponent_startAtWord_preserveFlags_(v109, v108, splitterCopy, levelCopy, component + 1, 0, &v166);

LABEL_43:

  return selfCopy;
}

- (void)addChangesTo:(id)to forReplacingValue:(id)value atLevel:(unsigned __int8)level
{
  levelCopy = level;
  v45 = *MEMORY[0x277D85DE8];
  toCopy = to;
  valueCopy = value;
  v14 = objc_msgSend_groupValueTuple(self, v10, v11, v12, v13);
  v37 = objc_msgSend_groupValueTupleByReplacingValue_atLevel_(v14, v15, valueCopy, levelCopy, v16);

  v43[0] = objc_msgSend_groupUid(self, v17, v18, v19, v20);
  v43[1] = v21;
  v42[0] = objc_msgSend_groupValueUid(v37, v21, v22, v23, v24);
  v42[1] = v25;
  objc_msgSend_mapPreviousGroupNodeUid_toUpdatedGroupNodeUid_(toCopy, v25, v43, v42, v26);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v27 = self->_children;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v38, v44, 16);
  if (v32)
  {
    v33 = *v39;
    do
    {
      v34 = 0;
      do
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(v27);
        }

        v35 = objc_msgSend_objectForKey_(self->_children, v29, *(*(&v38 + 1) + 8 * v34), v30, v31);
        objc_msgSend_addChangesTo_forReplacingValue_atLevel_(v35, v36, toCopy, valueCopy, levelCopy);

        ++v34;
      }

      while (v32 != v34);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v38, v44, 16);
    }

    while (v32);
  }
}

- (void)addChangesTo:(id)to forRemovingValueAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v48 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v11 = objc_msgSend_groupValueTuple(self, v7, v8, v9, v10);
  v15 = objc_msgSend_groupValueTupleByRemovingValueAtLevel_(v11, v12, levelCopy, v13, v14);

  if (objc_msgSend_numberOfLevels(v15, v16, v17, v18, v19))
  {
    v46[0] = objc_msgSend_groupUid(self, v20, v21, v22, v23);
    v46[1] = v24;
    v45[0] = objc_msgSend_groupValueUid(v15, v24, v25, v26, v27);
    v45[1] = v28;
    objc_msgSend_mapPreviousGroupNodeUid_toUpdatedGroupNodeUid_(toCopy, v28, v46, v45, v29);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v30 = self->_children;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v41, v47, 16);
  if (v35)
  {
    v36 = *v42;
    do
    {
      v37 = 0;
      do
      {
        if (*v42 != v36)
        {
          objc_enumerationMutation(v30);
        }

        v38 = objc_msgSend_objectForKey_(self->_children, v32, *(*(&v41 + 1) + 8 * v37), v33, v34, v41);
        objc_msgSend_addChangesTo_forRemovingValueAtLevel_(v38, v39, toCopy, levelCopy, v40);

        ++v37;
      }

      while (v35 != v37);
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v41, v47, 16);
    }

    while (v35);
  }
}

- (void)addChangesTo:(id)to forPromotingValueAtLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel
{
  toLevelCopy = toLevel;
  levelCopy = level;
  v44 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v13 = objc_msgSend_groupValueTuple(self, v9, v10, v11, v12);
  v36 = objc_msgSend_groupValueTupleByPromotingValueAtLevel_toLevel_(v13, v14, levelCopy, toLevelCopy, v15);

  v42[0] = objc_msgSend_groupUid(self, v16, v17, v18, v19);
  v42[1] = v20;
  v41[0] = objc_msgSend_groupValueUid(v36, v20, v21, v22, v23);
  v41[1] = v24;
  objc_msgSend_mapPreviousGroupNodeUid_toUpdatedGroupNodeUid_(toCopy, v24, v42, v41, v25);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = self->_children;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v37, v43, 16);
  if (v31)
  {
    v32 = *v38;
    do
    {
      v33 = 0;
      do
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(v26);
        }

        v34 = objc_msgSend_objectForKey_(self->_children, v28, *(*(&v37 + 1) + 8 * v33), v29, v30);
        objc_msgSend_addChangesTo_forPromotingValueAtLevel_toLevel_(v34, v35, toCopy, levelCopy, toLevelCopy);

        ++v33;
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v37, v43, 16);
    }

    while (v31);
  }
}

- (void)addChangesTo:(id)to forDemotingValueAtLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel
{
  toLevelCopy = toLevel;
  levelCopy = level;
  v44 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v13 = objc_msgSend_groupValueTuple(self, v9, v10, v11, v12);
  v36 = objc_msgSend_groupValueTupleByDemotingValueAtLevel_toLevel_(v13, v14, levelCopy, toLevelCopy, v15);

  v42[0] = objc_msgSend_groupUid(self, v16, v17, v18, v19);
  v42[1] = v20;
  v41[0] = objc_msgSend_groupValueUid(v36, v20, v21, v22, v23);
  v41[1] = v24;
  objc_msgSend_mapPreviousGroupNodeUid_toUpdatedGroupNodeUid_(toCopy, v24, v42, v41, v25);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = self->_children;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v37, v43, 16);
  if (v31)
  {
    v32 = *v38;
    do
    {
      v33 = 0;
      do
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(v26);
        }

        v34 = objc_msgSend_objectForKey_(self->_children, v28, *(*(&v37 + 1) + 8 * v33), v29, v30);
        objc_msgSend_addChangesTo_forDemotingValueAtLevel_toLevel_(v34, v35, toCopy, levelCopy, toLevelCopy);

        ++v33;
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v37, v43, 16);
    }

    while (v31);
  }
}

- (void)p_refreshGroupValue
{
  obj = objc_msgSend_cellValue(self->_formatManager, a2, v2, v3, v4);
  if (obj)
  {
    v10 = objc_msgSend_groupCellValue(self, v6, v7, v8, v9);
    v15 = objc_msgSend_canonicalKeyString(obj, v11, v12, v13, v14);
    v20 = objc_msgSend_canonicalKeyString(v10, v16, v17, v18, v19);
    isEqualToString = objc_msgSend_isEqualToString_(v15, v21, v20, v22, v23);

    if (isEqualToString)
    {
      objc_msgSend_willModify(self, v25, v26, v27, v28);
      objc_storeStrong(&self->_groupCellValue, obj);
    }

    else
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTGroupNode p_refreshGroupValue]", v27, v28);
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v32, v33);
      v39 = objc_msgSend_canonicalKeyString(obj, v35, v36, v37, v38);
      v44 = objc_msgSend_canonicalKeyString(v10, v40, v41, v42, v43);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v45, v30, v34, 890, 0, "Unexpected new key:%{public}@, expected:%{public}@", v39, v44);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
    }
  }
}

- (BOOL)updateGroupCellValueIfKeyMatches:(id)matches
{
  matchesCopy = matches;
  if (matchesCopy)
  {
    v9 = objc_msgSend_groupCellValue(self, v4, v5, v6, v7);
    v14 = objc_msgSend_canonicalKeyString(matchesCopy, v10, v11, v12, v13);
    v19 = objc_msgSend_canonicalKeyString(v9, v15, v16, v17, v18);
    isEqualToString = objc_msgSend_isEqualToString_(v14, v20, v19, v21, v22);

    if (isEqualToString)
    {
      objc_msgSend_willModify(self, v24, v25, v26, v27);
      v28 = [TSTGroupNodeFormatManager alloc];
      v32 = objc_msgSend_initWithCellValue_(v28, v29, matchesCopy, v30, v31);
      formatManager = self->_formatManager;
      self->_formatManager = v32;

      v38 = objc_msgSend_cellValue(self->_formatManager, v34, v35, v36, v37);
      v43 = objc_msgSend_canonicalKeyString(v38, v39, v40, v41, v42);
      v48 = objc_msgSend_canonicalKeyString(v9, v44, v45, v46, v47);
      v52 = objc_msgSend_isEqualToString_(v43, v49, v48, v50, v51);

      if ((v52 & 1) == 0)
      {
        v57 = MEMORY[0x277D81150];
        v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "[TSTGroupNode updateGroupCellValueIfKeyMatches:]", v55, v56);
        v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v60, v61);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v63, v58, v62, 902, 0, "canonicalKeyString shouldn't change here");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67);
      }

      v68 = objc_msgSend_cellValue(self->_formatManager, v53, v54, v55, v56);
      groupCellValue = self->_groupCellValue;
      self->_groupCellValue = v68;
    }
  }

  else
  {
    LOBYTE(isEqualToString) = 0;
  }

  return isEqualToString;
}

- (id)insertRowUid:(const TSKUIDStruct *)uid atRowIndex:(unsigned int)index forGroupValueTuple:(id)tuple atLevel:(unsigned __int8)level withLocale:(id)locale createdGroupNodeCount:(unint64_t *)count
{
  levelCopy = level;
  v10 = *&index;
  v148 = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  localeCopy = locale;
  v13 = self->_groupBy;
  objc_msgSend_addRowUid_(self, v14, uid, v15, v16);
  if (objc_msgSend_isForPivotTable(v13, v17, v18, v19, v20))
  {
    if (v10 == 0x7FFFFFFF)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTGroupNode insertRowUid:atRowIndex:forGroupValueTuple:atLevel:withLocale:createdGroupNodeCount:]", v23, v24);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v28, v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 923, 0, "Pivot table groupBy's EXPECT to be provided with valid rowIndexes");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
    }

    else
    {
      TSUIndexSet::addIndex(&self->_pivotOnlyRowIndexes);
    }
  }

  if (v13)
  {
    v36 = objc_msgSend_groupLevel(self, v21, v22, v23, v24);
    v40 = objc_msgSend_groupValueAtLevel_(tupleCopy, v37, v36, v38, v39);
    if (objc_msgSend_mergedFormatChangedByAddingRowUID_andCellValue_groupBy_(self->_formatManager, v41, uid, v40, v13))
    {
      objc_msgSend_p_refreshGroupValue(self, v42, v43, v44, v45);
    }
  }

  objc_msgSend_didAddRowUID_toGroup_(v13, v21, uid->_lower, uid->_upper, self);
  if (objc_msgSend_numberOfLevels(tupleCopy, v46, v47, v48, v49) >= levelCopy)
  {
    v58 = objc_msgSend_canonicalKeyStringAtLevel_(tupleCopy, v50, levelCopy, v52, v53);
    v137 = v58;
    if (v58)
    {
      v62 = objc_msgSend_objectForKey_(self->_children, v57, v58, v59, v60);
      if (v62)
      {
        v63 = 0;
        selfCopy = 0;
      }

      else
      {
        selfCopy = self;
        v136 = objc_msgSend_prefixTupleToLevel_(tupleCopy, v69, levelCopy, v70, v71);
        v75 = objc_msgSend_groupValueAtLevel_(tupleCopy, v72, levelCopy, v73, v74);
        v76 = [TSTGroupNode alloc];
        v81 = objc_msgSend_groupValueUid(v136, v77, v78, v79, v80);
        v83 = objc_msgSend_initWithGroupCellValue_groupBy_atLevel_groupUid_children_(v76, v82, v75, v13, levelCopy, v81, v82, 0);
        objc_msgSend_setParentNode_(v83, v84, selfCopy, v85, v86);
        if (count)
        {
          ++*count;
        }

        objc_msgSend_addChild_withKey_(selfCopy, v87, v83, v137, v88);
        v63 = v83;
        objc_msgSend_didAddGroupNode_(v13, v89, v63, v90, v91);

        v62 = v63;
      }

      v96 = objc_msgSend_insertRowUid_atRowIndex_forGroupValueTuple_atLevel_withLocale_createdGroupNodeCount_(v62, v61, uid, v10, tupleCopy, (levelCopy + 1), localeCopy, count);
      if (*uid == 0)
      {
        if (self->_groupBy)
        {
          v98 = MEMORY[0x277D81150];
          v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "[TSTGroupNode insertRowUid:atRowIndex:forGroupValueTuple:atLevel:withLocale:createdGroupNodeCount:]", v94, v95);
          v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v101, v102);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v104, v99, v103, 980, 0, "Invalid rowUids should only be coming in for disconnected GroupNodes - normally, we should only add valid rows");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v106, v107, v108);
        }
      }

      else
      {
        uidCopy = uid;
        v97 = sub_221086FBC(&self->_childNodesByRowUid.__table_.__bucket_list_.__ptr_, uid);
        objc_storeStrong(v97 + 4, v62);
      }

      if (v63)
      {
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v109 = objc_msgSend_aggregators(v13, v92, v93, v94, v95);
        v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v110, &v142, v147, 16);
        if (v114)
        {
          v115 = *v143;
          do
          {
            for (i = 0; i != v114; ++i)
            {
              if (*v143 != v115)
              {
                objc_enumerationMutation(v109);
              }

              v117 = *(*(&v142 + 1) + 8 * i);
              v118 = objc_msgSend_aggNodeForGroupNode_(v117, v111, v63, v112, v113);
              v122 = objc_msgSend_aggNodeForGroupNode_(v117, v119, self, v120, v121);
            }

            v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v111, &v142, v147, 16);
          }

          while (v114);
        }

        if (objc_msgSend_isRebuildFormulasDeferred(v13, v123, v124, v125, v126))
        {
          objc_msgSend_setNeedsRebuildOfAggFormulas_(v13, v127, 1, v128, v129);
        }

        else if (v13)
        {
          for (j = self->_aggNodes.__table_.__first_node_.__next_; j; j = *j)
          {
            v131 = j[4];
            objc_msgSend_rebuildFormulasForAggNode_(self, v132, v131, v133, v134);
          }
        }
      }

      if (!selfCopy)
      {
        selfCopy = v96;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    if (objc_msgSend_isRebuildFormulasDeferred(v13, v50, v51, v52, v53))
    {
      objc_msgSend_setNeedsRebuildOfAggFormulas_(v13, v54, 1, v55, v56);
    }

    else if (v13)
    {
      for (k = self->_aggNodes.__table_.__first_node_.__next_; k; k = *k)
      {
        v65 = k[4];
        objc_msgSend_rebuildFormulasForAggNode_(self, v66, v65, v67, v68);
      }
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)removeRowUid:(const TSKUIDStruct *)uid forGroupValueTuple:(id)tuple atLevel:(unsigned __int8)level withLocale:(id)locale
{
  levelCopy = level;
  v125 = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  localeCopy = locale;
  v117 = self->_groupBy;
  if (!v117 || self->_disconnectedRowUids)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTGroupNode removeRowUid:forGroupValueTuple:atLevel:withLocale:]", v11, v12, tupleCopy);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 1022, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (objc_msgSend_containsRowUid_(self, v10, uid, v11, v12, tupleCopy))
  {
    objc_msgSend_willModify(self, v24, v25, v26, v27);
    if (objc_msgSend_isForPivotTable(v117, v28, v29, v30, v31))
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSTGroupNode removeRowUid:forGroupValueTuple:atLevel:withLocale:]", v33, v34);
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v38, v39);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 1027, 0, "Pivot groupBys shouldn't need removeRowUid - we'll need to fix _pivotOnlyRowIndexes if they do");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
    }

    objc_msgSend_lookupKeyForRowUID_(v117, v32, uid, v33, v34);
    TSUIndexSet::removeIndex(&self->_rowUidsIndexSet);
    if (objc_msgSend_mergedFormatChangedByRemovingRowUID_groupBy_(self->_formatManager, v46, uid, v117, v47))
    {
      objc_msgSend_p_refreshGroupValue(self, v48, v49, v50, v51);
    }

    objc_msgSend_didRemoveRowUID_fromGroup_(v117, v48, uid->_lower, uid->_upper, self);
    groupLevel = self->_groupLevel;
    if (groupLevel == objc_msgSend_numberOfLevels(v117, v53, v54, v55, v56))
    {
      if (objc_msgSend_isRebuildFormulasDeferred(v117, v57, v58, v59, v60))
      {
        objc_msgSend_setNeedsRebuildOfAggFormulas_(v117, v61, 1, v62, v63);
      }

      else
      {
        for (i = self->_aggNodes.__table_.__first_node_.__next_; i; i = *i)
        {
          v85 = i[4];
          objc_msgSend_rebuildFormulasForAggNode_(self, v86, v85, v87, v88);
        }
      }
    }

    else if (v116)
    {
      v67 = objc_msgSend_canonicalKeyStringAtLevel_(v116, v57, levelCopy, v59, v60);
      if (v67)
      {
        v68 = objc_msgSend_objectForKey_(self->_children, v64, v67, v65, v66);
        objc_msgSend_removeRowUid_forGroupValueTuple_atLevel_withLocale_(v68, v69, uid, v116, (levelCopy + 1), localeCopy);
        sub_221087578(&self->_childNodesByRowUid.__table_.__bucket_list_.__ptr_, uid);
        if (!objc_msgSend_rowCount(v68, v70, v71, v72, v73))
        {
          objc_msgSend_willRemoveGroupNode_(v117, v74, v68, v75, v76);
          objc_msgSend_removeChildForKey_(self, v77, v67, v78, v79);
          objc_msgSend_clearAllGroupNodes(v68, v80, v81, v82, v83);
        }
      }
    }

    else
    {
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v89 = objc_msgSend_allKeys(self->_children, v57, v58, v59, v60);
      obj = v89;
      v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v90, &v120, v124, 16);
      if (v94)
      {
        v95 = *v121;
        v96 = levelCopy + 1;
        do
        {
          for (j = 0; j != v94; ++j)
          {
            if (*v121 != v95)
            {
              objc_enumerationMutation(obj);
            }

            v98 = *(*(&v120 + 1) + 8 * j);
            v99 = objc_msgSend_objectForKey_(self->_children, v91, v98, v92, v93);
            objc_msgSend_removeRowUid_forGroupValueTuple_atLevel_withLocale_(v99, v100, uid, 0, v96, localeCopy);
            sub_221087578(&self->_childNodesByRowUid.__table_.__bucket_list_.__ptr_, uid);
            if (!objc_msgSend_rowCount(v99, v101, v102, v103, v104))
            {
              objc_msgSend_willRemoveGroupNode_(v117, v105, v99, v106, v107);
              objc_msgSend_removeChildForKey_(self, v108, v98, v109, v110);
              objc_msgSend_clearAllGroupNodes(v99, v111, v112, v113, v114);
            }
          }

          v89 = obj;
          v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v91, &v120, v124, 16);
        }

        while (v94);
      }
    }
  }
}

- (void)removeRowUids:(id)uids
{
  v117 = *MEMORY[0x277D85DE8];
  uidsCopy = uids;
  v100 = self->_groupBy;
  if (!v100 || self->_disconnectedRowUids)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupNode removeRowUids:]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 1083, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  if (objc_msgSend_rowCount(self, v5, v6, v7, v8))
  {
    objc_msgSend_willModify(self, v20, v21, v22, v23);
    v24 = objc_opt_new();
    if (objc_msgSend_isForPivotTable(v100, v25, v26, v27, v28))
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSTGroupNode removeRowUids:]", v30, v31);
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v35, v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 1089, 0, "Pivot groupBys shouldn't need removeRowUids - we'll need to fix _pivotOnlyRowIndexes if they do");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    }

    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = sub_221082180;
    v112[3] = &unk_27845D948;
    v43 = v100;
    v113 = v43;
    selfCopy = self;
    v44 = v24;
    v115 = v44;
    objc_msgSend_foreachUuid_(uidsCopy, v45, v112, v46, v47);
    if (objc_msgSend_count(v44, v48, v49, v50, v51))
    {
      v108 = 0;
      v109 = &v108;
      v110 = 0x2020000000;
      v111 = 0;
      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = sub_221082204;
      v105[3] = &unk_27845D970;
      v105[4] = self;
      v52 = v43;
      v106 = v52;
      v107 = &v108;
      objc_msgSend_foreachUuid_(v44, v53, v105, v54, v55);
      if (*(v109 + 24) == 1)
      {
        objc_msgSend_p_refreshGroupValue(self, v56, v57, v58, v59);
      }

      groupLevel = self->_groupLevel;
      if (groupLevel == objc_msgSend_numberOfLevels(v52, v56, v57, v58, v59))
      {
        if (objc_msgSend_isRebuildFormulasDeferred(v52, v61, v62, v63, v64))
        {
          objc_msgSend_setNeedsRebuildOfAggFormulas_(v52, v65, 1, v66, v67);
        }

        else
        {
          for (i = self->_aggNodes.__table_.__first_node_.__next_; i; i = *i)
          {
            v96 = i[4];
            objc_msgSend_rebuildFormulasForAggNode_(self, v97, v96, v98, v99);
          }
        }
      }

      else
      {
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v68 = objc_msgSend_allKeys(self->_children, v61, v62, v63, v64);
        v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v101, v116, 16);
        if (v73)
        {
          v74 = *v102;
          do
          {
            for (j = 0; j != v73; ++j)
            {
              if (*v102 != v74)
              {
                objc_enumerationMutation(v68);
              }

              v76 = *(*(&v101 + 1) + 8 * j);
              v77 = objc_msgSend_objectForKey_(self->_children, v70, v76, v71, v72);
              objc_msgSend_removeRowUids_(v77, v78, uidsCopy, v79, v80);
              if (!objc_msgSend_rowCount(v77, v81, v82, v83, v84))
              {
                objc_msgSend_willRemoveGroupNode_(v52, v85, v77, v86, v87);
                objc_msgSend_removeChildForKey_(self, v88, v76, v89, v90);
                objc_msgSend_clearAllGroupNodes(v77, v91, v92, v93, v94);
              }
            }

            v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v70, &v101, v116, 16);
          }

          while (v73);
        }
      }

      _Block_object_dispose(&v108, 8);
    }
  }
}

+ (BOOL)needFormulasForAggregateType:(unsigned __int8)type
{
  if (type <= 0x21u)
  {
    if (((1 << type) & 0x66A23E) != 0 || ((1 << type) & 0x3FC194000) != 0)
    {
      return 1;
    }

    if (type == 11)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTGroupNode needFormulasForAggregateType:]", v3, v4);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v9, v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 1169, 0, "Shouldn't be asking if TSCEAggType_Indirect needs formulas");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
      return 1;
    }
  }

  if (type == 240)
  {
    return 1;
  }

  if (type == 255)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTGroupNode needFormulasForAggregateType:]", v3, v4);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 1193, 0, "Shouldn't be asking if TSCEAggType_INVALID needs formulas");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  return 0;
}

- (void)rebuildFormulasForAggNode:(id)node
{
  nodeCopy = node;
  v9 = self->_groupBy;
  if (!v9 || self->_disconnectedRowUids)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupNode rebuildFormulasForAggNode:]", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 1203, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v161 = objc_msgSend_categoryOwner(v9, v5, v6, v7, v8);
  v160 = objc_msgSend_aggregator(nodeCopy, v21, v22, v23, v24);
  v29 = objc_msgSend_calcEngine(v161, v25, v26, v27, v28);
  objc_msgSend_willModify(self, v30, v31, v32, v33);
  objc_msgSend_willModify(v160, v34, v35, v36, v37);
  v42 = objc_msgSend_aggregator(nodeCopy, v38, v39, v40, v41);
  v47 = objc_msgSend_columnUid(v42, v43, v44, v45, v46);
  v49 = v48;

  v189 = 0;
  v190 = &v189;
  v191 = 0x5812000000;
  v192 = sub_221082C84;
  v193 = sub_221082C90;
  v194 = &unk_22188E88F;
  memset(v195, 0, sizeof(v195));
  v196 = 1065353216;
  v188[0] = MEMORY[0x277D85DD0];
  v188[1] = 3221225472;
  v188[2] = sub_221082C98;
  v188[3] = &unk_27845D998;
  v188[4] = &v189;
  objc_msgSend_enumerateDirectChildren_(nodeCopy, v50, v188, v51, v52);
  v183[0] = MEMORY[0x277D85DD0];
  v183[1] = 3221225472;
  v183[2] = sub_221082D18;
  v183[3] = &unk_27845D9C0;
  v186 = v47;
  v187 = v49;
  v53 = nodeCopy;
  v184 = v53;
  v185 = &v189;
  objc_msgSend_enumerateDirectChildren_(self, v54, v183, v55, v56);
  if (v190[9])
  {
    for (i = v190[8]; i; i = *i)
    {
      v62 = i[3];
      v174 = objc_msgSend_ownerUID(v9, v63, v64, v65, v66);
      v175 = v67;
      objc_msgSend_clearAggFormulas_inOwner_(v62, v67, v29, &v174, v68);
      objc_msgSend_removeChild_skipWillModify_(v53, v69, v62, 1, v70);
      v174 = objc_msgSend_formulaCoord(v62, v71, v72, v73, v74);
      objc_msgSend_clearAggNode_forFormulaCoord_(v9, v75, v62, &v174, v76);
    }
  }

  v174 = 0;
  v175 = &v174;
  v176 = 0x4812000000;
  v177 = sub_221082DB8;
  v178 = sub_221082DDC;
  v179 = &unk_22188E88F;
  v181 = 0;
  v182 = 0;
  v180 = 0;
  groupLevel = self->_groupLevel;
  if (groupLevel == objc_msgSend_numberOfLevels(v9, v57, v58, v59, v60))
  {
    v82 = objc_msgSend_tableModel(v161, v78, v79, v80, v81);
    if (objc_msgSend_isForPivotTable(v9, v83, v84, v85, v86))
    {
      *&v166 = objc_msgSend_tableUID(v82, v87, v88, v89, v90);
      *(&v166 + 1) = v91;
      if (v160)
      {
        objc_msgSend_cellRefsForRowIndexes_tableUID_(v160, v91, &self->_pivotOnlyRowIndexes, &v166, v94);
        v95 = *&v165.var0;
      }

      else
      {
        v95 = 0uLL;
      }

      v159 = v95;
      v113 = objc_msgSend_hiddenStates(v9, v91, v92, v93, v94);

      if (v113)
      {
        v168 = MEMORY[0x277D85DD0];
        v169 = 3221225472;
        v170 = sub_221082DF4;
        v171 = &unk_27845D9E8;
        v172 = v9;
        v173 = &v174;
        TSUIndexSet::enumerateRangesUsingBlock();
      }
    }

    else
    {
      v97 = objc_msgSend_columnRowUIDMap(v82, v87, v88, v89, v90);
      objc_msgSend_rowUidsAsVector(self, v98, v99, v100, v101);
      v105 = objc_msgSend_rowIndexesForUIDs_(v97, v102, __p, v103, v104);
      MEMORY[0x223D9F7A0](&v165, v105);
      v163[0] = objc_msgSend_tableUID(v82, v106, v107, v108, v109);
      v163[1] = v110;
      if (v160)
      {
        objc_msgSend_cellRefsForRowIndexes_tableUID_(v160, v110, &v165, v163, v111);
        v112 = v166;
      }

      else
      {
        v112 = 0uLL;
      }

      v159 = v112;
      v166 = 0uLL;
      v167 = 0;
      TSUIndexSet::~TSUIndexSet(&v165);

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (v160)
    {
      objc_msgSend_cellRefsForAggNodesAtGroup_(v160, v78, self, v80, v81);
      v96 = *&v165.var0;
    }

    else
    {
      v96 = 0uLL;
    }

    v159 = v96;
  }

  if (objc_msgSend_anyAggregateTypeForColumnUID_(v9, v78, v47, v49, v81))
  {
    v118 = v159 == *(&v159 + 1);
  }

  else
  {
    v118 = 1;
  }

  v119 = !v118;
  v120 = objc_msgSend_minion(v161, v114, v115, v116, v117);
  v121 = v120;
  if (v120)
  {
    v122 = v120;
  }

  else
  {
    v122 = v29;
  }

  v123 = v122;

  v166 = 0uLL;
  *&v166 = objc_msgSend_groupByUid(v9, v124, v125, v126, v127);
  *(&v166 + 1) = v128;
  if (v119)
  {
    v135 = objc_msgSend_emptyReferenceSetWrapper(v29, v128, v129, v130, v131);
    v136 = v159;
    do
    {
      objc_msgSend_insertCellRef_(v135, v132, v136, v133, v134);
      v136 += 24;
    }

    while (v136 != *(&v159 + 1));
    v139 = v175[6];
    v138 = v175[7];
    while (v139 != v138)
    {
      objc_msgSend_insertRangeRef_(v135, v132, v139, v133, v134);
      v139 += 32;
    }

    if (objc_msgSend_isForPivotTable(v9, v132, v137, v133, v134))
    {
      if (v9)
      {
        objc_msgSend_hiddenStatesChangedPrecedent(v9, v142, v143, v144, v145);
      }

      else
      {
        memset(&v165, 0, 24);
      }

      objc_msgSend_insertCellRef_(v135, v142, &v165, v144, v145);
    }

    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v165, 0, 1);
    v165.var2 = 1;
    v165.var6._lower = objc_msgSend_groupUid(self, v146, v147, v148, v149);
    v165.var6._upper = v150;
    __p[0] = objc_msgSend_formulaCoord(v53, v150, v151, v152, v153);
    TSUCellCoord::verifyCoordIsSane(__p);
    __p[0] = objc_msgSend_formulaCoord(v53, v154, v155, v156, v157);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v162, &v165);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v123, v158, __p, &v166, v135, &v162);
  }

  else
  {
    *&v165.var0 = objc_msgSend_formulaCoord(v53, v128, v129, v130, v131);
    objc_msgSend_removeFormulaAt_inOwner_(v123, v140, &v165, &v166, v141);
  }

  _Block_object_dispose(&v174, 8);
  if (v180)
  {
    v181 = v180;
    operator delete(v180);
  }

  _Block_object_dispose(&v189, 8);
  sub_221087B80(v195);

  if (v159)
  {
    operator delete(v159);
  }
}

- (void)markAsDirtyWithCalcEngine:(id)engine
{
  engineCopy = engine;
  next = self->_aggNodes.__table_.__first_node_.__next_;
  if (next)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = next[4];
      v13 = v8;
      if (!v6)
      {
        if (v7)
        {
          v6 = 0;
        }

        else
        {
          v14 = objc_msgSend_aggregator(v8, v9, v10, v11, v12);
          v19 = objc_msgSend_groupBy(v14, v15, v16, v17, v18);
          v6 = objc_msgSend_groupByUid(v19, v20, v21, v22, v23);
          v7 = v24;
        }
      }

      v28[0] = objc_msgSend_formulaCoord(v13, v9, v10, v11, v12);
      v28[1] = v6;
      v28[2] = v7;
      objc_msgSend_markCellRefAsDirty_(engineCopy, v25, v28, v26, v27);

      next = *next;
    }

    while (next);
  }
}

- (void)markDependentsAsDirtyWithCalcEngine:(id)engine
{
  engineCopy = engine;
  next = self->_aggNodes.__table_.__first_node_.__next_;
  if (next)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = next[4];
      v13 = v8;
      if (!v6)
      {
        if (v7)
        {
          v6 = 0;
        }

        else
        {
          v14 = objc_msgSend_aggregator(v8, v9, v10, v11, v12);
          v19 = objc_msgSend_groupBy(v14, v15, v16, v17, v18);
          v6 = objc_msgSend_groupByUid(v19, v20, v21, v22, v23);
          v7 = v24;
        }
      }

      v28[0] = objc_msgSend_formulaCoord(v13, v9, v10, v11, v12);
      v28[1] = v6;
      v28[2] = v7;
      objc_msgSend_markOnlyDependentsDirty_(engineCopy, v25, v28, v26, v27);

      next = *next;
    }

    while (next);
  }
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)unfilteredRowUidsAsVector
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x4812000000;
  v29 = sub_22108332C;
  v30 = sub_221083350;
  *__p = 0u;
  v32 = 0u;
  v5 = TSUIndexSet::count(&self->_rowUidsIndexSet);
  sub_221083368(&__p[1], v5);
  v6 = self->_groupBy;
  v11 = v6;
  if (v6)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = sub_221083408;
    v23 = &unk_27845DA10;
    v24 = v6;
    v25 = &v26;
    TSUIndexSet::enumerateIndexesUsingBlock();
  }

  else
  {
    disconnectedRowUids = self->_disconnectedRowUids;
    if (disconnectedRowUids)
    {
      objc_msgSend_uuidsAsVector(disconnectedRowUids, v7, v8, v9, v10);
      v13 = v27;
      v15 = v27 + 6;
      v14 = v27[6];
      if (v14)
      {
        v27[7] = v14;
        operator delete(v14);
        *v15 = 0;
        v15[1] = 0;
        v15[2] = 0;
      }

      *(v13 + 3) = v18;
      v13[8] = v19;
    }
  }

  v16 = v27;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v16[6], v16[7], (v16[7] - v16[6]) >> 4);

  _Block_object_dispose(&v26, 8);
  result = __p[1];
  if (__p[1])
  {
    *&v32 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUidsAsVector
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x4812000000;
  v44 = sub_22108332C;
  v45 = sub_221083350;
  v46 = 0u;
  v47 = 0u;
  v5 = TSUIndexSet::count(&self->_rowUidsIndexSet);
  sub_221083368(&v46 + 1, v5);
  v6 = self->_groupBy;
  v11 = v6;
  if (v6)
  {
    if (objc_msgSend_isForPivotTable(v6, v7, v8, v9, v10))
    {
      v16 = objc_msgSend_hiddenStates(v11, v12, v13, v14, v15);
      v21 = objc_msgSend_rowHiddenStateExtent(v16, v17, v18, v19, v20);

      TSUIndexSet::TSUIndexSet(&v40);
      if (v21 && objc_msgSend_hasActiveFilters(v21, v22, v23, v24, v25))
      {
        TSUIndexSet::operator=();
        v30 = objc_msgSend_mutableFilteredIndexes(v21, v26, v27, v28, v29);
        MEMORY[0x223D9F7A0](&v39, v30);
        TSUIndexSet::removeIndexes(&v40, &v39);
        TSUIndexSet::~TSUIndexSet(&v39);
      }

      else
      {
        TSUIndexSet::operator=();
      }

      v38 = v11;
      TSUIndexSet::enumerateIndexesUsingBlock();

      TSUIndexSet::~TSUIndexSet(&v40);
    }

    else
    {
      v37 = v11;
      TSUIndexSet::enumerateIndexesUsingBlock();
    }
  }

  else
  {
    disconnectedRowUids = self->_disconnectedRowUids;
    if (disconnectedRowUids)
    {
      objc_msgSend_uuidsAsVector(disconnectedRowUids, v7, v8, v9, v10);
      v32 = v42;
      v34 = v42 + 6;
      v33 = v42[6];
      if (v33)
      {
        v42[7] = v33;
        operator delete(v33);
        *v34 = 0;
        v34[1] = 0;
        v34[2] = 0;
      }

      *(v32 + 3) = v40;
      v32[8] = v40._singleRange._end;
    }
  }

  v35 = v42;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v35[6], v35[7], (v35[7] - v35[6]) >> 4);

  _Block_object_dispose(&v41, 8);
  result = *(&v46 + 1);
  if (*(&v46 + 1))
  {
    *&v47 = *(&v46 + 1);
    operator delete(*(&v46 + 1));
  }

  return result;
}

- (TSUIndexSet)pivotOnlyRowIndexes
{
  *retstr |= 3u;
  *&v3.f64[0] = 0x8000000080000000;
  *&v3.f64[1] = 0x8000000080000000;
  retstr->_singleRange = vnegq_f64(v3);
  retstr->_multipleRanges = 0;
  return TSUIndexSet::operator=();
}

- (void)enumerateRowUidsWithBlock:(id)block
{
  blockCopy = block;
  v8 = blockCopy;
  if (self->_groupBy)
  {
    v10 = blockCopy;
    TSUIndexSet::enumerateIndexesUsingBlock();
  }

  else
  {
    disconnectedRowUids = self->_disconnectedRowUids;
    if (disconnectedRowUids)
    {
      objc_msgSend_foreachUuid_(disconnectedRowUids, v5, v8, v6, v7);
    }
  }
}

- (void)addRowUid:(const TSKUIDStruct *)uid
{
  if (*uid != 0)
  {
    objc_msgSend_willModify(self, a2, uid, v3, v4);
    v7 = self->_groupBy;
    v14 = v7;
    if (v7)
    {
      objc_msgSend_lookupKeyForRowUID_(v7, v8, uid, v9, v10);
      TSUIndexSet::addIndex(&self->_rowUidsIndexSet);
    }

    else
    {
      disconnectedRowUids = self->_disconnectedRowUids;
      if (!disconnectedRowUids)
      {
        v12 = objc_opt_new();
        v13 = self->_disconnectedRowUids;
        self->_disconnectedRowUids = v12;

        disconnectedRowUids = self->_disconnectedRowUids;
      }

      objc_msgSend_addUUID_(disconnectedRowUids, v8, uid->_lower, uid->_upper, v10);
    }
  }
}

- (BOOL)containsRowUid:(const TSKUIDStruct *)uid
{
  groupBy = self->_groupBy;
  if (groupBy)
  {
    if (objc_msgSend_findKeyForRowUid_(groupBy, a2, uid, v3, v4) != -1)
    {

      return TSUIndexSet::containsIndex(&self->_rowUidsIndexSet);
    }

    return 0;
  }

  disconnectedRowUids = self->_disconnectedRowUids;
  if (!disconnectedRowUids)
  {
    return 0;
  }

  upper = uid->_upper;
  lower = uid->_lower;

  return objc_msgSend_containsUuid_(disconnectedRowUids, a2, lower, upper, v4);
}

- (BOOL)containsAnyRowUidInRowUidSet:(id)set
{
  setCopy = set;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v9 = self->_groupBy;
  if (!v9 || self->_disconnectedRowUids)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupNode containsAnyRowUidInRowUidSet:]", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 1451, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (objc_msgSend_count(setCopy, v5, v6, v7, v8))
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_221083E14;
    v26[3] = &unk_27845DA60;
    selfCopy = self;
    v29 = &v30;
    v27 = v9;
    objc_msgSend_foreachUuid_(setCopy, v21, v26, v22, v23);
  }

  v24 = *(v31 + 24);

  _Block_object_dispose(&v30, 8);
  return v24;
}

- (void)removeAllRowUids
{
  v33 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, v2, v3, v4);
  disconnectedRowUids = self->_disconnectedRowUids;
  self->_disconnectedRowUids = 0;

  TSUIndexSet::removeAllIndexes(&self->_rowUidsIndexSet);
  objc_msgSend_reset(self->_formatManager, v7, v8, v9, v10);
  objc_msgSend_p_refreshGroupValue(self, v11, v12, v13, v14);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = self->_children;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v28, v32, 16);
  if (v20)
  {
    v21 = *v29;
    do
    {
      v22 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = objc_msgSend_objectForKey_(self->_children, v17, *(*(&v28 + 1) + 8 * v22), v18, v19, v28);
        objc_msgSend_removeAllRowUids(v23, v24, v25, v26, v27);

        ++v22;
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v28, v32, 16);
    }

    while (v20);
  }

  sub_221087B24(&self->_childNodesByRowUid);
}

- (void)clearAllGroupNodes
{
  v85 = *MEMORY[0x277D85DE8];
  v7 = self->_groupBy;
  if (!v7 || self->_disconnectedRowUids)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTGroupNode clearAllGroupNodes]", v5, v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1488, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  objc_msgSend_willModify(self, v3, v4, v5, v6);
  v23 = objc_msgSend_categoryOwner(v7, v19, v20, v21, v22);
  v28 = objc_msgSend_calcEngine(v23, v24, v25, v26, v27);

  for (i = self->_aggNodes.__table_.__first_node_.__next_; i; i = *i)
  {
    v30 = i[4];
    v82[0] = objc_msgSend_formulaCoord(v30, v31, v32, v33, v34);
    objc_msgSend_clearAggNode_forFormulaCoord_(v7, v35, v30, v82, v36);
    v83 = objc_msgSend_formulaCoord(v30, v37, v38, v39, v40);
    v82[0] = objc_msgSend_groupByUid(v7, v41, v42, v43, v44);
    v82[1] = v45;
    objc_msgSend_removeFormulaAt_inOwner_(v28, v45, &v83, v82, v46);
    v82[0] = objc_msgSend_formulaCoord(v30, v47, v48, v49, v50);
    objc_msgSend_freeAggFormulaCoord_(v7, v51, v82, v52, v53);
  }

  sub_221087B24(&self->_aggNodes);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v54 = self->_children;
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v78, v84, 16);
  if (v59)
  {
    v60 = *v79;
    do
    {
      v61 = 0;
      do
      {
        if (*v79 != v60)
        {
          objc_enumerationMutation(v54);
        }

        v62 = objc_msgSend_objectForKey_(self->_children, v56, *(*(&v78 + 1) + 8 * v61), v57, v58, v78);
        objc_msgSend_clearAllGroupNodes(v62, v63, v64, v65, v66);

        ++v61;
      }

      while (v59 != v61);
      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v56, &v78, v84, 16);
    }

    while (v59);
  }

  os_unfair_lock_lock(&self->_childrenLock);
  objc_msgSend_removeAllObjects(self->_children, v67, v68, v69, v70);
  os_unfair_lock_unlock(&self->_childrenLock);
  objc_msgSend_removeAllRowUids(self, v71, v72, v73, v74);
  objc_msgSend_setParentNode_(self, v75, 0, v76, v77);
}

- (void)clearEmptyNodes
{
  v71 = *MEMORY[0x277D85DE8];
  v7 = self->_groupBy;
  if (!v7 || self->_disconnectedRowUids)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTGroupNode clearEmptyNodes]", v5, v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1519, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  objc_msgSend_willModify(self, v3, v4, v5, v6);
  objc_msgSend_allKeys(self->_children, v19, v20, v21, v22);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v23 = v66 = 0u;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v65, v70, 16);
  if (v28)
  {
    v29 = *v66;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v66 != v29)
        {
          objc_enumerationMutation(v23);
        }

        v31 = *(*(&v65 + 1) + 8 * i);
        v32 = objc_msgSend_objectForKey_(self->_children, v25, v31, v26, v27);
        objc_msgSend_clearEmptyNodes(v32, v33, v34, v35, v36);
        if (objc_msgSend_rowCount(v32, v37, v38, v39, v40))
        {
          v45 = objc_msgSend_groupNodesByGroupUid(v7, v41, v42, v43, v44);
          v64[0] = objc_msgSend_groupUid(v32, v46, v47, v48, v49);
          v64[1] = v50;
          v69 = v64;
          v51 = sub_2210880A0(v45, v64);
          objc_storeStrong(v51 + 4, v32);
        }

        else
        {
          objc_msgSend_willRemoveGroupNode_(v7, v41, v32, v43, v44);
          objc_msgSend_removeChildForKey_(self, v56, v31, v57, v58);
          objc_msgSend_clearAllGroupNodes(v32, v59, v60, v61, v62);
        }

        if (!objc_msgSend_count(self->_children, v52, v53, v54, v55))
        {
          children = self->_children;
          self->_children = 0;
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v65, v70, 16);
    }

    while (v28);
  }
}

- (id)groupValueAtLevel:(unsigned __int8)level
{
  groupLevel = self->_groupLevel;
  if (groupLevel == level)
  {
    v6 = self->_groupCellValue;
  }

  else if (groupLevel > level)
  {
    levelCopy = level;
    v8 = objc_msgSend_parentNode(self, a2, level, v3, v4);
    v6 = objc_msgSend_groupValueAtLevel_(v8, v9, levelCopy, v10, v11);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)canonicalKeyStringAtLevel:(unsigned __int8)level
{
  groupLevel = self->_groupLevel;
  if (groupLevel == level)
  {
    v6 = objc_msgSend_canonicalKeyString(self->_groupCellValue, a2, level, v3, v4);
  }

  else if (groupLevel > level)
  {
    levelCopy = level;
    v8 = objc_msgSend_parentNode(self, a2, level, v3, v4);
    v6 = objc_msgSend_canonicalKeyStringAtLevel_(v8, v9, levelCopy, v10, v11);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)normalizedStringForCompare:(id)compare
{
  v4 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(compare, a2, @"“", @"", v3);
  v7 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v5, @"”", @"", v6);

  v10 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v7, v8, @"„", @"", v9);

  v13 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v10, v11, @"‟", @"", v12);

  v16 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v13, v14, @"״", @"", v15);

  v19 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v16, v17, @"\u200E", &stru_2834BADA0, v18);

  v22 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v19, v20, @"\u200F", &stru_2834BADA0, v21);

  return v22;
}

+ (id)localizedStringForCellValue:(id)value categoryLevel:(unsigned __int8)level groupBy:(id)by
{
  levelCopy = level;
  valueCopy = value;
  byCopy = by;
  if (valueCopy)
  {
    v13 = objc_msgSend_valueType(valueCopy, v8, v9, v10, v11);
    if (!v13)
    {
      v18 = objc_msgSend_locale(valueCopy, v14, v15, v16, v17);
      v22 = objc_msgSend_localizedNameForBlankGroupForDocumentLocale_(TSTGroupBy, v65, v18, v66, v67);
      goto LABEL_15;
    }

    if (v13 == 2)
    {
      if (byCopy)
      {
        v37 = objc_msgSend_tsceValue(valueCopy, v14, v15, v16, v17);
        v42 = objc_msgSend_BOOLean(v37, v38, v39, v40, v41);

        v47 = objc_msgSend_tableInfo(byCopy, v43, v44, v45, v46);
        v18 = v47;
        if (v47)
        {
          v52 = objc_msgSend_columnDisplayNameForCategoryLevel_(v47, v48, levelCopy, v50, v51);
          v59 = objc_msgSend_locale(byCopy, v53, v54, v55, v56);
          if (v42)
          {
            objc_msgSend_localizedTrueStringForBooleanGroupWithString_documentLocale_(TSTGroupBy, v57, v52, v59, v58);
          }

          else
          {
            objc_msgSend_localizedFalseStringForBooleanGroupWithString_documentLocale_(TSTGroupBy, v57, v52, v59, v58);
          }
          v68 = ;

          goto LABEL_23;
        }

        v52 = objc_msgSend_locale(byCopy, v48, v49, v50, v51);
        if (v42)
        {
          objc_msgSend_trueString(v52, v73, v74, v75, v76);
        }

        else
        {
          objc_msgSend_falseString(v52, v73, v74, v75, v76);
        }
        v72 = ;
LABEL_17:
        v68 = v72;
LABEL_23:

LABEL_24:
        v52 = v68;
        if (v68)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else if (v13 == 9)
    {
      v18 = objc_msgSend_locale(valueCopy, v14, v15, v16, v17);
      v22 = objc_msgSend_localizedNameForErrorGroupForDocumentLocale_(TSTGroupBy, v19, v18, v20, v21);
LABEL_15:
      v68 = v22;
      goto LABEL_24;
    }

    v52 = objc_msgSend_displayString(valueCopy, v14, v15, v16, v17);
    if (objc_msgSend_length(v52, v60, v61, v62, v63))
    {
      if (v52)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v18 = objc_msgSend_locale(valueCopy, v34, v64, v35, v36);
    v72 = objc_msgSend_localizedNameForBlankGroupForDocumentLocale_(TSTGroupBy, v69, v18, v70, v71);
    goto LABEL_17;
  }

  v23 = MEMORY[0x277D81150];
  v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSTGroupNode localizedStringForCellValue:categoryLevel:groupBy:]", v10, v11);
  v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v26, v27);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 1633, 0, "No value to turn into a string!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
LABEL_25:
  v77 = MEMORY[0x277D81150];
  v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "+[TSTGroupNode localizedStringForCellValue:categoryLevel:groupBy:]", v35, v36);
  v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v80, v81);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v83, v78, v82, 1636, 0, "invalid nil value for '%{public}s'", "result");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85, v86, v87);
  v52 = &stru_2834BADA0;
LABEL_26:

  return v52;
}

- (id)rawGroupValueCellValue
{
  v7 = self->_groupBy;
  if (!v7 || self->_disconnectedRowUids)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTGroupNode rawGroupValueCellValue]", v5, v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1646, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = objc_msgSend_groupCellValue(self, v3, v4, v5, v6);
  if (objc_msgSend_valueType(v19, v20, v21, v22, v23) == 9)
  {
    objc_opt_class();
    v24 = TSUDynamicCast();
    v29 = v24;
    if (!v24 || ((objc_msgSend_errorValue(v24, v25, v26, v27, v28), v30 = objc_claimAutoreleasedReturnValue(), (v35 = v30) == 0) ? (v36 = 0, isCircularReferenceError = objc_msgSend_isCircularReferenceError(0, v31, v32, v33, v34)) : (objc_msgSend_error(v30, v31, v32, v33, v34), v36 = objc_claimAutoreleasedReturnValue(), isCircularReferenceError = objc_msgSend_isCircularReferenceError(v36, v37, v38, v39, v40)), v42 = isCircularReferenceError, v36, v35, (v42 & 1) == 0))
    {
      v43 = objc_msgSend_groupLevel(self, v25, v26, v27, v28);
      v45 = objc_msgSend_localizedStringForCellValue_categoryLevel_groupBy_(TSTGroupNode, v44, v19, v43, v7);
      v46 = [TSCEStringCellValue alloc];
      v51 = objc_msgSend_locale(v7, v47, v48, v49, v50);
      v54 = objc_msgSend_initWithString_locale_(v46, v52, v45, v51, v53);

      v19 = v54;
    }
  }

  return v19;
}

- (id)groupValueCellValue
{
  v7 = self->_groupBy;
  if (!v7 || self->_disconnectedRowUids)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTGroupNode groupValueCellValue]", v5, v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1672, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = objc_msgSend_groupCellValue(self, v3, v4, v5, v6);
  if (objc_msgSend_valueType(v19, v20, v21, v22, v23) != 9 || (objc_opt_class(), TSUDynamicCast(), v28 = objc_claimAutoreleasedReturnValue(), (v29 = v28) == 0) || ((objc_msgSend_errorValue(v28, v24, v25, v26, v27), v30 = objc_claimAutoreleasedReturnValue(), (v35 = v30) == 0) ? (v36 = 0, isCircularReferenceError = objc_msgSend_isCircularReferenceError(0, v31, v32, v33, v34)) : (objc_msgSend_error(v30, v31, v32, v33, v34), v36 = objc_claimAutoreleasedReturnValue(), isCircularReferenceError = objc_msgSend_isCircularReferenceError(v36, v37, v38, v39, v40)), v42 = isCircularReferenceError, v36, v35, v29, (v42 & 1) == 0))
  {
    v43 = objc_msgSend_groupLevel(self, v24, v25, v26, v27);
    v45 = objc_msgSend_localizedStringForCellValue_categoryLevel_groupBy_(TSTGroupNode, v44, v19, v43, v7);
    v46 = [TSCEStringCellValue alloc];
    v51 = objc_msgSend_locale(v7, v47, v48, v49, v50);
    v54 = objc_msgSend_initWithString_locale_(v46, v52, v45, v51, v53);

    v19 = v54;
  }

  return v19;
}

- (id)groupValueCellValueForGroupBySet:(id)set aggIndex:(unsigned __int16)index appendAggregateName:(BOOL)name
{
  nameCopy = name;
  indexCopy = index;
  setCopy = set;
  v11 = self->_groupBy;
  if (!v11 || self->_disconnectedRowUids)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTGroupNode groupValueCellValueForGroupBySet:aggIndex:appendAggregateName:]", v9, v10);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1699, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_groupCellValue(self, v7, v8, v9, v10);
  v32 = objc_msgSend_locale(v23, v24, v25, v26, v27);
  if (!v32)
  {
    v32 = objc_msgSend_locale(v11, v28, v29, v30, v31);
  }

  if (!self->_groupLevel)
  {
    v33 = objc_msgSend_localizedStringForKey_value_table_(v32, v28, @"Grand Total", &stru_2834BADA0, @"TSTables");
    v34 = [TSCEStringCellValue alloc];
    v37 = objc_msgSend_initWithString_locale_(v34, v35, v33, v32, v36);

    v23 = v37;
  }

  if (objc_msgSend_valueType(v23, v28, v29, v30, v31) != 9 || (objc_opt_class(), TSUDynamicCast(), v42 = objc_claimAutoreleasedReturnValue(), (v43 = v42) == 0) || ((objc_msgSend_errorValue(v42, v38, v39, v40, v41), v44 = objc_claimAutoreleasedReturnValue(), (v49 = v44) == 0) ? (v50 = 0, isCircularReferenceError = objc_msgSend_isCircularReferenceError(0, v45, v46, v47, v48)) : (objc_msgSend_error(v44, v45, v46, v47, v48), v50 = objc_claimAutoreleasedReturnValue(), isCircularReferenceError = objc_msgSend_isCircularReferenceError(v50, v51, v52, v53, v54)), v56 = isCircularReferenceError, v50, v49, v43, (v56 & 1) == 0))
  {
    v57 = objc_msgSend_groupLevel(self, v38, v39, v40, v41);
    v59 = objc_msgSend_localizedStringForCellValue_categoryLevel_groupBy_(TSTGroupNode, v58, v23, v57, v11);
    v60 = [TSCEStringCellValue alloc];
    v63 = objc_msgSend_initWithString_locale_(v60, v61, v59, v32, v62);

    if (nameCopy)
    {
      v68 = objc_msgSend_groupLevel(self, v64, v65, v66, v67);
      v70 = objc_msgSend_localizedStringForCellValue_categoryLevel_groupBy_(TSTGroupNode, v69, v63, v68, v11);
      v73 = objc_msgSend_compactDescriptionForAggregateIndex_locale_(setCopy, v71, indexCopy, v32, v72);
      v77 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v74, @"%@ %@", v75, v76, v70, v73);

      v78 = [TSCEStringCellValue alloc];
      v23 = objc_msgSend_initWithString_locale_(v78, v79, v77, v32, v80);
    }

    else
    {
      v23 = v63;
    }
  }

  return v23;
}

- (id)groupValueHierarchyForChart:(BOOL)chart
{
  chartCopy = chart;
  v8 = self->_groupBy;
  if (!v8 || self->_disconnectedRowUids)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupNode groupValueHierarchyForChart:]", v6, v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 1744, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v20 = off_278467610;
  if (!chartCopy)
  {
    v20 = off_278467608;
  }

  v21 = objc_msgSend_groupValueHierarchyStringWithDelimiterString_(self, v5, *v20, v6, v7);
  v30 = objc_msgSend_locale(self->_groupCellValue, v22, v23, v24, v25);
  if (v30 || (objc_msgSend_locale(v8, v26, v27, v28, v29), (v30 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v31 = [TSCEStringCellValue alloc];
    v34 = objc_msgSend_initWithString_locale_(v31, v32, v21, v30, v33);
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)groupValueHierarchyForChart:(BOOL)chart groupBySet:(id)set aggIndex:(unsigned __int16)index appendAggregateName:(BOOL)name
{
  nameCopy = name;
  indexCopy = index;
  chartCopy = chart;
  setCopy = set;
  v14 = self->_groupBy;
  if (!v14 || self->_disconnectedRowUids)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTGroupNode groupValueHierarchyForChart:groupBySet:aggIndex:appendAggregateName:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 1769, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = off_278467610;
  if (!chartCopy)
  {
    v26 = off_278467608;
  }

  v27 = objc_msgSend_groupValueHierarchyStringWithDelimiterString_(self, v11, *v26, v12, v13);
  v36 = objc_msgSend_locale(self->_groupCellValue, v28, v29, v30, v31);
  if (!v36)
  {
    v36 = objc_msgSend_locale(v14, v32, v33, v34, v35);
  }

  if (objc_msgSend_length(v27, v32, v33, v34, v35) || self->_groupLevel)
  {
    if (!nameCopy)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v51 = objc_msgSend_locale(v14, v37, v38, v39, v40);
    v53 = objc_msgSend_localizedStringForKey_value_table_(v51, v52, @"Grand Total", &stru_2834BADA0, @"TSTables");

    v27 = v53;
    if (!nameCopy)
    {
      goto LABEL_14;
    }
  }

  v44 = objc_msgSend_compactDescriptionForAggregateIndex_locale_(setCopy, v37, indexCopy, v36, v40);
  if (v44)
  {
    v45 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v41, @"%@ %@", v42, v43, v27, v44);

    v27 = v45;
  }

LABEL_14:
  if (v36)
  {
    v46 = [TSCEStringCellValue alloc];
    v49 = objc_msgSend_initWithString_locale_(v46, v47, v27, v36, v48);
  }

  else
  {
    v49 = 0;
  }

  return v49;
}

- (id)groupValueHierarchyStringWithDelimiterString:(id)string namingContext:(id)context
{
  stringCopy = string;
  contextCopy = context;
  v12 = self->_groupBy;
  if (!v12 || self->_disconnectedRowUids)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTGroupNode groupValueHierarchyStringWithDelimiterString:namingContext:]", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 1806, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (!stringCopy)
  {
    stringCopy = @"::";
  }

  if (self->_groupLevel)
  {
    v24 = objc_msgSend_parentNode(self, v8, v9, v10, v11);
    v27 = objc_msgSend_groupValueHierarchyStringWithDelimiterString_namingContext_(v24, v25, stringCopy, contextCopy, v26);

    if (objc_msgSend_length(v27, v28, v29, v30, v31))
    {
      objc_msgSend_appendString_(v27, v32, stringCopy, v33, v34);
    }

    v39 = objc_msgSend_localizedStringForCellValue_categoryLevel_groupBy_(TSTGroupNode, v32, self->_groupCellValue, self->_groupLevel, v12);
    if (v39)
    {
      if (objc_msgSend_quoteComponents(contextCopy, v35, v36, v37, v38))
      {
        if (objc_msgSend_forFormulaPlainText(contextCopy, v40, v41, v42, v43))
        {
          v48 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v44, v45, v46, v47);
          v52 = objc_msgSend_rangeOfCharacterFromSet_(v39, v49, v48, v50, v51) != 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = 0;
        }

        v53 = objc_msgSend_tsce_newStringByForcingSingleQuoteEscapes_(v39, v44, v52, v46, v47);

        v39 = v53;
      }

      objc_msgSend_appendString_(v27, v40, v39, v42, v43);
    }
  }

  else
  {
    v27 = objc_opt_new();
  }

  return v27;
}

- (id)groupValueHierarchyStringWithDelimiterString:(id)string
{
  v4 = objc_msgSend_groupValueHierarchyStringWithDelimiterString_namingContext_(self, a2, string, 0, v3);

  return v4;
}

- (TSKUIDStruct)firstVisibleNodeUsingColumnRowUIDMap:(id)map forDimension:(int64_t)dimension leafLevel:(unsigned __int8)level pivotTableHiddenExtent:(id)extent
{
  levelCopy = level;
  mapCopy = map;
  extentCopy = extent;
  v16 = self->_groupBy;
  if (!v16 || self->_disconnectedRowUids)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTGroupNode firstVisibleNodeUsingColumnRowUIDMap:forDimension:leafLevel:pivotTableHiddenExtent:]", v14, v15);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 1849, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  if ((objc_msgSend_isLeaf(self, v12, v13, v14, v15) & 1) != 0 || objc_msgSend_groupLevel(self, v28, v29, v30, v31) == levelCopy)
  {
    v32 = objc_msgSend_groupUid(self, v28, v29, v30, v31);
LABEL_7:
    VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent = v32;
    v35 = v33;
    goto LABEL_8;
  }

  v75[0] = objc_msgSend_groupUid(self, v28, v29, v30, v31);
  v75[1] = v38;
  if (objc_msgSend_isGroupUIDCollapsed_(extentCopy, v38, v75, v39, v40))
  {
    v32 = objc_msgSend_groupUid(self, v41, v42, v43, v44);
    goto LABEL_7;
  }

  if (objc_msgSend_hasActiveFilters(extentCopy, v41, v42, v43, v44))
  {
    objc_msgSend_unfilteredDirectChildGroupUids(self, v45, v46, v47, v48);
  }

  else
  {
    objc_msgSend_directChildGroupUids(self, v45, v46, v47, v48);
  }
  v49 = ;
  if (objc_msgSend_count(v49, v50, v51, v52, v53))
  {
    if (!mapCopy)
    {
      v57 = MEMORY[0x277D81150];
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "[TSTGroupNode firstVisibleNodeUsingColumnRowUIDMap:forDimension:leafLevel:pivotTableHiddenExtent:]", v55, v56);
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v60, v61);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v63, v58, v62, 1860, 0, "invalid nil value for '%{public}s'", "columnRowUIDMap");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67);
    }

    isRows = objc_msgSend_firstUidFromUIDSet_isRows_(mapCopy, v54, v49, dimension == 0, v56);
    v71 = objc_msgSend_groupNodeForGroupUid_(v16, v69, isRows, v69, v70);
    v73 = v71;
    if (v71)
    {
      VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent = objc_msgSend_firstVisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent_(v71, v72, mapCopy, dimension, levelCopy, extentCopy);
      v35 = v74;
    }

    else
    {
      v35 = 0;
      VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent = 0;
    }
  }

  else
  {
    v35 = 0;
    VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent = 0;
  }

LABEL_8:
  v36 = VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent;
  v37 = v35;
  result._upper = v37;
  result._lower = v36;
  return result;
}

- (id)groupHierarchyTreeAsFiltered:(BOOL)filtered usingOrder:(id)order forDimension:(int64_t)dimension
{
  v5 = objc_opt_new();

  return v5;
}

- (void)enumerateAllGroupsWithStop:(BOOL *)stop withBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!*stop)
  {
    objc_msgSend_allKeys(self->_children, v6, v7, v8, v9);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v11 = v24 = 0u;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v23, v27, 16);
    if (v16)
    {
      v17 = *v24;
LABEL_4:
      v18 = 0;
      while (1)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = objc_msgSend_objectForKey_(self->_children, v13, *(*(&v23 + 1) + 8 * v18), v14, v15, v23);
        objc_msgSend_enumerateAllGroupsWithStop_withBlock_(v19, v20, stop, blockCopy, v21);
        v22 = *stop;

        if (v22)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v23, v27, 16);
          if (v16)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (!*stop)
    {
      blockCopy[2](blockCopy, self, stop);
    }
  }
}

- (void)enumerateGroupsBetweenLevel:(unsigned __int8)level andLevel:(unsigned __int8)andLevel withStop:(BOOL *)stop withBlock:(id)block
{
  andLevelCopy = andLevel;
  levelCopy = level;
  v33 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!*stop)
  {
    groupLevel = self->_groupLevel;
    v15 = groupLevel < levelCopy || groupLevel > andLevelCopy;
    if (!v15 && objc_msgSend_rowCount(self, v10, v11, v12, v13))
    {
      blockCopy[2](blockCopy, self, stop);
    }

    if (self->_groupLevel < andLevelCopy)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      obj = self->_children;
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v28, v32, 16);
      if (v20)
      {
        v21 = *v29;
LABEL_11:
        v22 = 0;
        while (1)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = objc_msgSend_objectForKey_(self->_children, v17, *(*(&v28 + 1) + 8 * v22), v18, v19);
          objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withStop_withBlock_(v23, v24, levelCopy, andLevelCopy, stop, blockCopy);
          v25 = *stop;

          if (v25)
          {
            break;
          }

          if (v20 == ++v22)
          {
            v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v28, v32, 16);
            if (v20)
            {
              goto LABEL_11;
            }

            break;
          }
        }
      }
    }
  }
}

- (void)enumerateDirectChildren:(id)children
{
  v21 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_children;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v20, 16);
  if (v10)
  {
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = objc_msgSend_objectForKey_(self->_children, v7, *(*(&v15 + 1) + 8 * v12), v8, v9, v15);
      childrenCopy[2](childrenCopy, v13, &v19);
      v14 = v19;

      if (v14)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v15, v20, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)addAggNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    v14 = objc_msgSend_aggregator(nodeCopy, v10, v11, v12, v13);

    if (!v14)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTGroupNode addAggNode:]", v17, v18);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 1996, 0, "Aggregator needs to be setup already");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }

    v30 = objc_msgSend_aggregator(nodeCopy, v15, v16, v17, v18);
    v37[0] = objc_msgSend_columnUid(v30, v31, v32, v33, v34);
    v37[1] = v35;
    v37[3] = v37;
    v36 = sub_221088308(&self->_aggNodes.__table_.__bucket_list_.__ptr_, v37);
    objc_storeStrong(v36 + 4, node);
  }
}

- (id)groupNodeForGroupUid:(const TSKUIDStruct *)uid
{
  v28 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_groupUid(self, a2, uid, v3, v4) == uid->_lower && v7 == uid->_upper)
  {
    selfCopy = self;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = self->_children;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v23, v27, 16);
    if (v14)
    {
      v15 = *v24;
LABEL_7:
      v16 = 0;
      while (1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = objc_msgSend_objectForKey_(self->_children, v11, *(*(&v23 + 1) + 8 * v16), v12, v13, v23);
        selfCopy = objc_msgSend_groupNodeForGroupUid_(v17, v18, uid, v19, v20);

        if (selfCopy)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v23, v27, 16);
          if (v14)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)groupNodeForRowUid:(const TSKUIDStruct *)uid atLevel:(unsigned __int8)level
{
  levelCopy = level;
  v42 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_containsRowUid_(self, a2, uid, level, v4))
  {
    selfCopy = 0;
    goto LABEL_25;
  }

  if (self->_groupLevel == levelCopy)
  {
    selfCopy = self;
    goto LABEL_25;
  }

  v9 = sub_2210875C4(&self->_childNodesByRowUid.__table_.__bucket_list_.__ptr_, uid);
  if (!v9)
  {
    v15 = 0;
    goto LABEL_14;
  }

  v10 = v9[4];
  v15 = v10;
  if (!v10)
  {
LABEL_14:
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = v15;
    obj = self->_children;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v37, v41, 16);
    if (v28)
    {
      v29 = *v38;
LABEL_16:
      v30 = 0;
      while (1)
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = objc_msgSend_objectForKey_(self->_children, v25, *(*(&v37 + 1) + 8 * v30), v26, v27);
        selfCopy = objc_msgSend_groupNodeForRowUid_atLevel_(v31, v32, uid, levelCopy, v33);

        if (selfCopy)
        {
          break;
        }

        if (v28 == ++v30)
        {
          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v37, v41, 16);
          if (v28)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      selfCopy = 0;
    }

    v15 = v35;
    goto LABEL_24;
  }

  v16 = objc_msgSend_parentNode(v10, v11, v12, v13, v14);
  v20 = v16;
  if (v16 != self)
  {

LABEL_13:
    sub_221087578(&self->_childNodesByRowUid.__table_.__bucket_list_.__ptr_, uid);
    goto LABEL_14;
  }

  v21 = objc_msgSend_containsRowUid_(v15, v17, uid, v18, v19);

  if (!v21)
  {
    goto LABEL_13;
  }

  selfCopy = objc_msgSend_groupNodeForRowUid_atLevel_(v15, v22, uid, levelCopy, v23);
  if (!selfCopy)
  {
    goto LABEL_14;
  }

LABEL_24:

LABEL_25:

  return selfCopy;
}

- (id)aggNodeForColumnUid:(const TSKUIDStruct *)uid
{
  v3 = sub_2210875C4(&self->_aggNodes.__table_.__bucket_list_.__ptr_, uid);
  if (v3)
  {
    v3 = v3[4];
  }

  return v3;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)nodePath
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  selfCopy = self;
  for (i = objc_msgSend_groupLevel(selfCopy, v5, v6, v7, v8); i; i = objc_msgSend_groupLevel(v20, v21, v22, v23, v24))
  {
    begin = retstr->__begin_;
    v26.n128_u64[0] = objc_msgSend_groupUid(selfCopy, v10, v11, v12, v13);
    v26.n128_u64[1] = v15;
    sub_221086AF0(retstr, begin, &v26);
    v20 = objc_msgSend_parentNode(selfCopy, v16, v17, v18, v19);

    selfCopy = v20;
  }

  return result;
}

- (TSKUIDStruct)groupUid
{
  objc_copyStruct(v4, &self->_groupUid, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result._upper = v3;
  result._lower = v2;
  return result;
}

- (id).cxx_construct
{
  self->_aggNodes.__table_.__bucket_list_ = 0u;
  *&self->_aggNodes.__table_.__first_node_.__next_ = 0u;
  self->_aggNodes.__table_.__max_load_factor_ = 1.0;
  TSUIndexSet::TSUIndexSet(&self->_rowUidsIndexSet);
  TSUIndexSet::TSUIndexSet(&self->_pivotOnlyRowIndexes);
  self->_childNodesByRowUid.__table_.__bucket_list_ = 0u;
  *&self->_childNodesByRowUid.__table_.__first_node_.__next_ = 0u;
  self->_childNodesByRowUid.__table_.__max_load_factor_ = 1.0;
  self->_aggNodeCoordsToUnpack.__end_ = 0;
  self->_aggNodeCoordsToUnpack.__cap_ = 0;
  self->_aggNodeCoordsToUnpack.__begin_ = 0;
  return self;
}

@end