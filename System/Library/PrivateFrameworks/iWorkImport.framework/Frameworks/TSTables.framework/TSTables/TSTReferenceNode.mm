@interface TSTReferenceNode
+ (BOOL)p_rangeRef:(const TSCERangeRef *)ref isContainedWithinSummaryAndLabelRowsInTable:(id)table;
+ (RefTypeHolder<TSCERangeRef,)p_expandedViewRangeRefForViewRangeRef:(id)ref forLabelRowsInTable:(SEL)table;
+ (TSUCellRect)p_cellRangeForSingleCategoryRefInViewRangeRef:(const void *)ref inTable:(id)table rangeContext:(unsigned __int8)context;
+ (id)p_singleCategoryRefForViewRangeRef:(const void *)ref rangeContext:(unsigned __int8)context calculationEngine:(id)engine hostCellRef:(const TSCECellRef *)cellRef;
+ (id)p_spanningCategoryRefForViewRangeRef:(const void *)ref groupByUid:(TSKUIDStruct)uid categoryLevel:(unsigned __int8)level calculationEngine:(id)engine;
+ (unsigned)preserveFlagsForReference:(const TSCERangeRef *)reference calcEngine:(id)engine;
- (BOOL)isAnyRangeExpression;
- (BOOL)isCategorySummaryRef;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToExpressionNode:(id)node;
- (BOOL)isLocalReference;
- (BOOL)isNonSpanningRangeExpression;
- (BOOL)isNonSpillRangeExpression;
- (BOOL)isResizable;
- (BOOL)isSingleColumnSpanningReference;
- (BOOL)isSingleRowSpanningReference;
- (BOOL)isSpanningCategorySummaryRef;
- (BOOL)isValidReference;
- (BOOL)suppressReferenceOptionsMenu;
- (RefTypeHolder<TSCERangeRef,)p_boundingViewRangeRef;
- (RefTypeHolder<TSCERangeRef,)viewRangeRefDeprecated;
- (TSCECalculationEngine)calcEngine;
- (TSCERangeCoordinate)baseBoundingBox;
- (TSCERangeCoordinate)viewBoundingBox;
- (TSKChangeNotifier)changeNotifier;
- (TSKDocumentRoot)documentRoot;
- (TSKUIDStruct)categoryRefTableUID;
- (TSKUIDStruct)hostTableUID;
- (TSKUIDStruct)tableUID;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTGroupBy)groupBy;
- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine baseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags hostCellRef:(const TSCECellRef *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation;
- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine chromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags hostCellRef:(const void *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation;
- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine uidRectRef:(id)ref categoryRef:(id)categoryRef hostCellRef:(const TSCECellRef *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation;
- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine viewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags hostCellRef:(const void *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation;
- (TSTReferenceNode)initWithReferenceStart:(id)start referenceEnd:(id)end suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation;
- (TSTTableInfo)tableInfo;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)exportString;
- (id)formulaPlainText;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)p_categoryRefViewTractRef;
- (id)p_convertCategoryRefToRelativeForHostCell:(TSUCellCoord)cell;
- (id)referenceAsStringWithContext:(id)context;
- (id)string;
- (id)subregionForRange:(id)range;
- (unint64_t)hash;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)dealloc;
- (void)excludeSummaryAndLabelRows;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)invalidate;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_buildASTNodeArray:(TSCEASTNodeArray *)array forCoord:(TSUCellCoord)coord preserveFlags:(unsigned __int8)flags hostCell:(TSUCellCoord)cell;
- (void)processChanges:(id)changes forChangeSource:(id)source;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setBasePreserveFlags:(unsigned __int8)flags;
- (void)setBaseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
- (void)setCategoryRef:(id)ref;
- (void)setChromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
- (void)setHostCellRef:(TSCECellRef *)ref;
- (void)setHostTableUID:(TSKUIDStruct)d;
- (void)setIsBlankForKeyboardInsertion:(BOOL)insertion;
- (void)setRangeWithFunction:(BOOL)function;
- (void)setSpillRangeSuffix:(BOOL)suffix;
- (void)setViewPreserveFlags:(unsigned __int8)flags;
- (void)setViewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
@end

@implementation TSTReferenceNode

- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine uidRectRef:(id)ref categoryRef:(id)categoryRef hostCellRef:(const TSCECellRef *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation
{
  contextCopy = context;
  engineCopy = engine;
  refCopy = ref;
  categoryRefCopy = categoryRef;
  helperCopy = helper;
  if (refCopy)
  {
    v22 = objc_msgSend_calcEngine(refCopy, v18, v19, v20, v21, helperCopy);

    if (v22 != engineCopy)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTReferenceNode initWithContext:calculationEngine:uidRectRef:categoryRef:hostCellRef:referenceColorHelper:suppressAutomaticNamedReferenceInvalidation:]", v24, v25);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v29, v30);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 111, 0, "Expected uidRectRef to have same calculation engine as the one that was passed in.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    }
  }

  v63.receiver = self;
  v63.super_class = TSTReferenceNode;
  helperCopy = [(TSTExpressionNode *)&v63 initWithContext:contextCopy children:0 firstIndex:0 lastIndex:0, helperCopy];
  v38 = helperCopy;
  if (helperCopy)
  {
    objc_storeWeak(&helperCopy->_calcEngine, engineCopy);
    upper = cellRef->_tableUID._upper;
    *&v38->_hostCellRef.coordinate.row = *&cellRef->coordinate.row;
    v38->_hostCellRef._tableUID._upper = upper;
    v44 = objc_msgSend_copy(refCopy, v40, v41, v42, v43);
    uidRectRef = v38->_uidRectRef;
    v38->_uidRectRef = v44;

    objc_storeStrong(&v38->_categoryRef, categoryRef);
    v38->_isCategoryRef = objc_msgSend_isValid(categoryRefCopy, v46, v47, v48, v49);
    v38->_rangeContext = 1;
    objc_storeStrong(&v38->_referenceColorHelper, helper);
    v38->_suppressAutomaticNamedReferenceInvalidation = invalidation;
    if (objc_msgSend_isValid(v38->_categoryRef, v50, v51, v52, v53))
    {
      v57 = objc_msgSend_p_convertCategoryRefToRelativeForHostCell_(v38, v54, *&cellRef->coordinate, v55, v56);
      categoryRef = v38->_categoryRef;
      v38->_categoryRef = v57;
    }
  }

  return v38;
}

- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine viewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags hostCellRef:(const void *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation
{
  flagsCopy = flags;
  contextCopy = context;
  engineCopy = engine;
  helperCopy = helper;
  v19 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v18, *(ref + 2), *(ref + 3), engineCopy);
  v20 = objc_opt_class();
  if (v20)
  {
    objc_msgSend_p_expandedViewRangeRefForViewRangeRef_forLabelRowsInTable_(v20, v21, ref, v19, v22);
  }

  else
  {
    memset(v32, 0, sizeof(v32));
  }

  v23 = [TSTUIDRectRef alloc];
  v25 = objc_msgSend_initWithCalcEngine_viewRangeRef_preserveFlags_(v23, v24, engineCopy, v32, flagsCopy);
  v26 = objc_opt_class();
  v28 = objc_msgSend_p_singleCategoryRefForViewRangeRef_rangeContext_calculationEngine_hostCellRef_(v26, v27, v32, 1, engineCopy, cellRef);
  v30 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_categoryRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(self, v29, contextCopy, engineCopy, v25, v28, cellRef, helperCopy, invalidation);

  return v30;
}

- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine chromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags hostCellRef:(const void *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation
{
  flagsCopy = flags;
  contextCopy = context;
  engineCopy = engine;
  helperCopy = helper;
  v18 = [TSTUIDRectRef alloc];
  v20 = objc_msgSend_initWithCalcEngine_chromeRangeRef_preserveFlags_(v18, v19, engineCopy, ref, flagsCopy);
  v22 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_categoryRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(self, v21, contextCopy, engineCopy, v20, 0, cellRef, helperCopy, invalidation);

  return v22;
}

- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine baseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags hostCellRef:(const TSCECellRef *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation
{
  flagsCopy = flags;
  contextCopy = context;
  engineCopy = engine;
  helperCopy = helper;
  v18 = [TSTUIDRectRef alloc];
  v20 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v18, v19, engineCopy, ref, flagsCopy);
  v22 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_categoryRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(self, v21, contextCopy, engineCopy, v20, 0, cellRef, helperCopy, invalidation);

  return v22;
}

- (TSTReferenceNode)initWithReferenceStart:(id)start referenceEnd:(id)end suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation
{
  startCopy = start;
  endCopy = end;
  v14 = objc_msgSend_hostTableUID(startCopy, v10, v11, v12, v13);
  v16 = v15;
  if (v14 != objc_msgSend_hostTableUID(endCopy, v15, v17, v18, v19) || v16 != v20)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTReferenceNode initWithReferenceStart:referenceEnd:suppressAutomaticNamedReferenceInvalidation:]", v22, v23);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 221, 0, "Creating a range reference with two references with different ownerUIDs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  v35 = objc_msgSend_calcEngine(startCopy, v20, v21, v22, v23);
  v40 = objc_msgSend_calcEngine(endCopy, v36, v37, v38, v39);

  if (v35 != v40)
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSTReferenceNode initWithReferenceStart:referenceEnd:suppressAutomaticNamedReferenceInvalidation:]", v43, v44);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v48, v49);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v51, v46, v50, 222, 0, "Creating a range reference with two references with different calculationEngines");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
  }

  if (objc_msgSend_spillRangeSuffix(startCopy, v41, v42, v43, v44))
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "[TSTReferenceNode initWithReferenceStart:referenceEnd:suppressAutomaticNamedReferenceInvalidation:]", v58, v59);
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v63, v64);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v66, v61, v65, 224, 0, "Don't combine TSTReferenceNode's that have spill range operator suffix");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
  }

  if (objc_msgSend_spillRangeSuffix(endCopy, v56, v57, v58, v59))
  {
    v75 = MEMORY[0x277D81150];
    v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "[TSTReferenceNode initWithReferenceStart:referenceEnd:suppressAutomaticNamedReferenceInvalidation:]", v73, v74);
    v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v78, v79);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v81, v76, v80, 225, 0, "Don't combine TSTReferenceNode's that have spill range operator suffix");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
  }

  v86 = objc_msgSend_uidRectRef(startCopy, v71, v72, v73, v74);
  v91 = objc_msgSend_viewTopLeftCoord(v86, v87, v88, v89, v90);

  v96 = objc_msgSend_uidRectRef(endCopy, v92, v93, v94, v95);
  v101 = objc_msgSend_viewBottomRightCoord(v96, v97, v98, v99, v100);

  v177._topLeft = v91;
  v177._bottomRight = v101;
  LOBYTE(v91) = objc_msgSend_viewPreserveFlags(startCopy, v102, v103, v104, v105);
  v176._flags = objc_msgSend_viewPreserveFlags(endCopy, v106, v107, v108, v109) & 0xFC | v91 & 3;
  TSCERangeCoordinate::fixInversions(&v177, &v176);
  flags = v176._flags;
  v115 = objc_msgSend_tableUID(startCopy, v111, v112, v113, v114);
  v117 = v116;
  if ((objc_msgSend_isNonSpillRangeExpression(startCopy, v116, v118, v119, v120) & 1) != 0 || (objc_msgSend_isNonSpillRangeExpression(endCopy, v121, v122, v123, v124) & 1) != 0 || (v155 = objc_msgSend_hostTableUID(startCopy, v125, v126, v127, v128), v157 = v156, v155 != objc_msgSend_hostTableUID(endCopy, v156, v158, v159, v160)) || v157 != v161 || (v165 = objc_msgSend_tableUID(startCopy, v161, v162, v163, v164), v167 = v166, v165 != objc_msgSend_tableUID(endCopy, v166, v168, v169, v170)) || v167 != v171 || !TSCERangeCoordinate::isValidOrSpanning(&v177))
  {
    v177 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  }

  v175 = v177;
  v129 = [TSTUIDRectRef alloc];
  v134 = objc_msgSend_calcEngine(startCopy, v130, v131, v132, v133);
  v172 = v175;
  v173 = v115;
  v174 = v117;
  v136 = objc_msgSend_initWithCalcEngine_viewRangeRef_preserveFlags_(v129, v135, v134, &v172, flags);

  v141 = objc_msgSend_context(startCopy, v137, v138, v139, v140);
  v150 = objc_msgSend_calcEngine(startCopy, v142, v143, v144, v145);
  if (startCopy)
  {
    objc_msgSend_hostCellRef(startCopy, v146, v147, v148, v149);
  }

  else
  {
    v172 = 0;
    v173 = 0;
  }

  v151 = objc_msgSend_referenceColorHelper(startCopy, v146, v147, v148, v149);
  v153 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_categoryRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(self, v152, v141, v150, v136, 0, &v172, v151, invalidation);

  return v153;
}

- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children
{
  ofCopy = of;
  contextCopy = context;
  childrenCopy = children;
  objc_opt_class();
  v14 = TSUDynamicCast();
  if (!v14)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTReferenceNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v18, v19);
    v22 = @"nil";
    if (ofCopy)
    {
      v22 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 266, 0, "Unexpected object in initAsCopyOf:... expected TSTReferenceNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v84.receiver = self;
  v84.super_class = TSTReferenceNode;
  v31 = [(TSTExpressionNode *)&v84 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  if (v31)
  {
    v32 = objc_msgSend_calcEngine(v14, v27, v28, v29, v30);

    if (v32)
    {
      v37 = objc_msgSend_calcEngine(v14, v33, v34, v35, v36);
    }

    else
    {
      v38 = objc_msgSend_documentRoot(contextCopy, v33, v34, v35, v36);
      v37 = objc_msgSend_calculationEngine(v38, v39, v40, v41, v42);

      if (!v37)
      {
        v46 = MEMORY[0x277D81150];
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSTReferenceNode initAsCopyOf:intoContext:children:]", v44, v45);
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v49, v50);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v52, v47, v51, 275, 0, "unable to resurrect calcEngine in document context.");

        v37 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
      }
    }

    objc_storeWeak(v31 + 19, v37);
    v61 = objc_msgSend_uidRectRef(v14, v57, v58, v59, v60);
    v66 = objc_msgSend_copy(v61, v62, v63, v64, v65);
    v67 = *(v31 + 20);
    *(v31 + 20) = v66;

    v72 = objc_msgSend_categoryRef(v14, v68, v69, v70, v71);
    v73 = *(v31 + 21);
    *(v31 + 21) = v72;

    v31[149] = objc_msgSend_isCategoryRef(v14, v74, v75, v76, v77);
    objc_msgSend_setCalcEngine_(*(v31 + 20), v78, v37, v79, v80);
    v81 = *(v14 + 200);
    *(v31 + 184) = *(v14 + 184);
    *(v31 + 25) = v81;
    v31[146] = *(v14 + 146);
    v31[145] = *(v14 + 145);
    objc_storeStrong(v31 + 16, *(v14 + 128));
    v31[150] = *(v14 + 150);
    v31[151] = *(v14 + 151);
    v82 = *(v31 + 22);
    *(v31 + 22) = 0;

    v31[144] = *(v14 + 144);
  }

  return v31;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSTReferenceNode;
  [(TSTReferenceNode *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (objc_msgSend_isCategoryRef(self, a2, zone, v3, v4))
  {
    v6 = [TSTReferenceNode alloc];
    v11 = objc_msgSend_context(self, v7, v8, v9, v10);
    v16 = objc_msgSend_calcEngine(self, v12, v13, v14, v15);
    v21 = objc_msgSend_categoryRef(self, v17, v18, v19, v20);
    objc_msgSend_hostCellRef(self, v22, v23, v24, v25);
    v27 = objc_msgSend_initWithContext_calculationEngine_categoryRef_hostCellRef_referenceColorHelper_(v6, v26, v11, v16, v21, v64, self->_referenceColorHelper);
  }

  else
  {
    v28 = [TSTReferenceNode alloc];
    v11 = objc_msgSend_context(self, v29, v30, v31, v32);
    v16 = objc_msgSend_calcEngine(self, v33, v34, v35, v36);
    v21 = objc_msgSend_uidRectRef(self, v37, v38, v39, v40);
    objc_msgSend_hostCellRef(self, v41, v42, v43, v44);
    v27 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v28, v45, v11, v16, v21, v64, self->_referenceColorHelper, 0);
  }

  v46 = v27;

  Index = objc_msgSend_firstIndex(self, v47, v48, v49, v50);
  objc_msgSend_setFirstIndex_(v46, v52, Index, v53, v54);
  v59 = objc_msgSend_lastIndex(self, v55, v56, v57, v58);
  objc_msgSend_setLastIndex_(v46, v60, v59, v61, v62);
  objc_storeStrong((v46 + 128), self->_refString);
  *(v46 + 150) = self->_hasCachedIsValidReference;
  *(v46 + 151) = self->_cachedIsValidReference;
  *(v46 + 144) = self->_spillRangeSuffix;
  return v46;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (objc_msgSend_isCategoryRef(self, v6, v7, v8, v9) && objc_msgSend_isCategoryRef(v5, v10, v11, v12, v13))
      {
        v14 = objc_msgSend_categoryRef(self, v10, v11, v12, v13);
        v19 = objc_msgSend_categoryRef(v5, v15, v16, v17, v18);
        v20 = v14 == v19;
      }

      else
      {
        if (objc_msgSend_isCategoryRef(self, v10, v11, v12, v13) & 1) != 0 || (objc_msgSend_isCategoryRef(v5, v22, v23, v24, v25))
        {
          v21 = 0;
LABEL_18:

          goto LABEL_19;
        }

        v14 = objc_msgSend_uidRectRef(self, v26, v27, v28, v29);
        v19 = objc_msgSend_uidRectRef(v5, v30, v31, v32, v33);
        if (!objc_msgSend_isEqual_(v14, v34, v19, v35, v36))
        {
          v21 = 0;
LABEL_17:

          goto LABEL_18;
        }

        spillRangeSuffix = self->_spillRangeSuffix;
        v20 = spillRangeSuffix == objc_msgSend_spillRangeSuffix(v5, v37, v38, v39, v40);
      }

      v21 = v20;
      goto LABEL_17;
    }

    v21 = 0;
  }

LABEL_19:

  return v21;
}

- (unint64_t)hash
{
  if (objc_msgSend_isCategoryRef(self, a2, v2, v3, v4))
  {
    objc_msgSend_categoryRef(self, v6, v7, v8, v9);
  }

  else
  {
    objc_msgSend_uidRectRef(self, v6, v7, v8, v9);
  }
  v10 = ;
  v15 = objc_msgSend_hash(v10, v11, v12, v13, v14);

  return v15;
}

- (TSKDocumentRoot)documentRoot
{
  v5 = objc_msgSend_context(self, a2, v2, v3, v4);
  v10 = objc_msgSend_documentRoot(v5, v6, v7, v8, v9);

  return v10;
}

- (TSKChangeNotifier)changeNotifier
{
  v5 = objc_msgSend_documentRoot(self, a2, v2, v3, v4);
  v10 = objc_msgSend_changeNotifier(v5, v6, v7, v8, v9);

  return v10;
}

- (TSCECalculationEngine)calcEngine
{
  v6 = objc_msgSend_calcEngine(self->_uidRectRef, a2, v2, v3, v4);

  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    if (WeakRetained)
    {
      v12 = objc_loadWeakRetained(&self->_calcEngine);
      v16 = v12;
    }

    else
    {
      v16 = objc_msgSend_documentRoot(self, v7, v8, v9, v10);
      v12 = objc_msgSend_calculationEngine(v16, v17, v18, v19, v20);
    }

    v21 = v12;
    objc_msgSend_setCalcEngine_(self->_uidRectRef, v13, v12, v14, v15);
    if (!WeakRetained)
    {
    }
  }

  v22 = objc_loadWeakRetained(&self->_calcEngine);

  if (!v22)
  {
    v27 = objc_msgSend_calcEngine(self->_uidRectRef, v23, v24, v25, v26);
    objc_storeWeak(&self->_calcEngine, v27);
  }

  v28 = objc_loadWeakRetained(&self->_calcEngine);

  return v28;
}

- (void)setRangeWithFunction:(BOOL)function
{
  if (self->_rangeWithFunction != function)
  {
    self->_rangeWithFunction = function;
    objc_msgSend_invalidate(self, a2, function, v3, v4);
  }
}

- (void)setBasePreserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  objc_msgSend_willModify(self, a2, flags, v3, v4);
  uidRectRef = self->_uidRectRef;
  if (uidRectRef)
  {
    if (objc_msgSend_spansAllRows(uidRectRef, v7, v8, v9, v10))
    {
      LODWORD(flagsCopy) = flagsCopy & 0xF5;
    }

    if (objc_msgSend_spansAllColumns(self->_uidRectRef, v12, v13, v14, v15))
    {
      flagsCopy = flagsCopy & 0xFA;
    }

    else
    {
      flagsCopy = flagsCopy;
    }

    uidRectRef = self->_uidRectRef;
  }

  objc_msgSend_setBasePreserveFlags_(uidRectRef, v7, flagsCopy, v9, v10);
  objc_msgSend_p_resetMenu(self, v16, v17, v18, v19);

  objc_msgSend_invalidate(self, v20, v21, v22, v23);
}

- (void)setViewPreserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  uidRectRef = self->_uidRectRef;
  if (uidRectRef)
  {
    if (objc_msgSend_spansAllRows(uidRectRef, a2, flags, v3, v4))
    {
      LODWORD(flagsCopy) = flagsCopy & 0xF5;
    }

    if (objc_msgSend_spansAllColumns(self->_uidRectRef, v8, v9, v10, v11))
    {
      flagsCopy = flagsCopy & 0xFA;
    }

    else
    {
      flagsCopy = flagsCopy;
    }

    uidRectRef = self->_uidRectRef;
  }

  objc_msgSend_setViewPreserveFlags_(uidRectRef, a2, flagsCopy, v3, v4);
  objc_msgSend_p_resetMenu(self, v12, v13, v14, v15);

  objc_msgSend_invalidate(self, v16, v17, v18, v19);
}

- (TSCERangeCoordinate)viewBoundingBox
{
  objc_msgSend_p_boundingViewRangeRef(self, a2, v2, v3, v4);
  v5 = v7;
  v6 = v8;
  result._bottomRight = v6;
  result._topLeft = v5;
  return result;
}

- (TSCERangeCoordinate)baseBoundingBox
{
  v6 = objc_msgSend_baseTopLeftCoord(self, a2, v2, v3, v4);
  v11 = objc_msgSend_baseBottomRightCoord(self, v7, v8, v9, v10);
  v12 = v6;
  result._bottomRight = v11;
  result._topLeft = v12;
  return result;
}

- (RefTypeHolder<TSCERangeRef,)viewRangeRefDeprecated
{
  result = self->_uidRectRef;
  if (result)
  {
    return (MEMORY[0x2821F9670])(result, sel_viewRangeRef);
  }

  retstr->var0.range = 0u;
  retstr->var0._tableUID = 0u;
  return result;
}

- (void)setViewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  objc_msgSend_willModify(self, a2, ref, flags, v4);
  v12 = objc_msgSend_calcEngine(self, v8, v9, v10, v11);
  v14 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v13, *(ref + 2), *(ref + 3), v12);
  v15 = objc_opt_class();
  if (v15)
  {
    objc_msgSend_p_expandedViewRangeRefForViewRangeRef_forLabelRowsInTable_(v15, v16, ref, v14, v19);
  }

  else
  {
    memset(v64, 0, sizeof(v64));
  }

  if (objc_msgSend_isSpanningCategorySummaryRef(self, v16, v17, v18, v19))
  {
    v24 = objc_msgSend_groupLevel(self->_categoryRef, v20, v21, v22, v23);
    v29 = objc_msgSend_groupByUid(self->_categoryRef, v25, v26, v27, v28);
    v31 = v30;
    v32 = objc_opt_class();
    v34 = objc_msgSend_p_spanningCategoryRefForViewRangeRef_groupByUid_categoryLevel_calculationEngine_(v32, v33, v64, v29, v31, v24, v12);
  }

  else
  {
    v35 = objc_opt_class();
    v40 = objc_msgSend_rangeContext(self, v36, v37, v38, v39);
    objc_msgSend_hostCellRef(self, v41, v42, v43, v44);
    v34 = objc_msgSend_p_singleCategoryRefForViewRangeRef_rangeContext_calculationEngine_hostCellRef_(v35, v45, v64, v40, v12, v63);
  }

  categoryRef = self->_categoryRef;
  self->_categoryRef = v34;

  self->_isCategoryRef = objc_msgSend_isValid(self->_categoryRef, v47, v48, v49, v50);
  v51 = [TSTUIDRectRef alloc];
  v53 = objc_msgSend_initWithCalcEngine_viewRangeRef_preserveFlags_(v51, v52, v12, v64, flagsCopy);
  uidRectRef = self->_uidRectRef;
  self->_uidRectRef = v53;

  objc_msgSend_p_resetMenu(self, v55, v56, v57, v58);
  objc_msgSend_invalidate(self, v59, v60, v61, v62);
}

- (void)setChromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  objc_msgSend_willModify(self, a2, ref, flags, v4);
  v8 = [TSTUIDRectRef alloc];
  v13 = objc_msgSend_calcEngine(self, v9, v10, v11, v12);
  v15 = objc_msgSend_initWithCalcEngine_chromeRangeRef_preserveFlags_(v8, v14, v13, ref, flagsCopy);
  uidRectRef = self->_uidRectRef;
  self->_uidRectRef = v15;

  self->_isCategoryRef = 0;
  categoryRef = self->_categoryRef;
  self->_categoryRef = 0;

  objc_msgSend_p_resetMenu(self, v18, v19, v20, v21);

  objc_msgSend_invalidate(self, v22, v23, v24, v25);
}

- (void)setBaseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  objc_msgSend_willModify(self, a2, ref, flags, v4);
  v8 = [TSTUIDRectRef alloc];
  v13 = objc_msgSend_calcEngine(self, v9, v10, v11, v12);
  v15 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v8, v14, v13, ref, flagsCopy);
  uidRectRef = self->_uidRectRef;
  self->_uidRectRef = v15;

  self->_isCategoryRef = 0;
  categoryRef = self->_categoryRef;
  self->_categoryRef = 0;

  objc_msgSend_p_resetMenu(self, v18, v19, v20, v21);

  objc_msgSend_invalidate(self, v22, v23, v24, v25);
}

- (void)setCategoryRef:(id)ref
{
  refCopy = ref;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  categoryRef = self->_categoryRef;
  self->_categoryRef = refCopy;
  v10 = refCopy;

  self->_isCategoryRef = 1;
  uidRectRef = self->_uidRectRef;
  self->_uidRectRef = 0;

  self->_hasCachedIsValidReference = 0;
}

- (void)setSpillRangeSuffix:(BOOL)suffix
{
  objc_msgSend_willModify(self, a2, suffix, v3, v4);
  self->_spillRangeSuffix = suffix;

  objc_msgSend_invalidate(self, v7, v8, v9, v10);
}

+ (id)p_singleCategoryRefForViewRangeRef:(const void *)ref rangeContext:(unsigned __int8)context calculationEngine:(id)engine hostCellRef:(const TSCECellRef *)cellRef
{
  contextCopy = context;
  v8 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, a2, *(ref + 2), *(ref + 3), engine, cellRef);
  v13 = v8;
  if (v8 && objc_msgSend_isCategorized(v8, v9, v10, v11, v12) && (v14 = *(ref + 1), v28 = *ref, v29 = v14, v15 = objc_opt_class(), objc_msgSend_p_rangeRef_isContainedWithinSummaryAndLabelRowsInTable_(v15, v16, &v28, v13, v17)))
  {
    v18 = objc_opt_class();
    v20 = objc_msgSend_p_cellRangeForSingleCategoryRefInViewRangeRef_inTable_rangeContext_(v18, v19, ref, v13, contextCopy);
    v27 = v29;
    v26 = v20;
    v24 = objc_msgSend_categoryRefReferringToCellRef_(v13, v21, &v26, v22, v23);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)p_spanningCategoryRefForViewRangeRef:(const void *)ref groupByUid:(TSKUIDStruct)uid categoryLevel:(unsigned __int8)level calculationEngine:(id)engine
{
  levelCopy = level;
  upper = uid._upper;
  lower = uid._lower;
  uidCopy = uid;
  engineCopy = engine;
  v12 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v11, *(ref + 2), *(ref + 3), engineCopy);
  v17 = v12;
  if (v12 && objc_msgSend_isCategorized(v12, v13, v14, v15, v16))
  {
    v21 = *ref;
    if (*(ref + 6) != WORD2(*ref))
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "+[TSTReferenceNode p_spanningCategoryRefForViewRangeRef:groupByUid:categoryLevel:calculationEngine:]", v19, v20);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 570, 0, "trying to create a spanning category summary ref to more than one column");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }

    v49[0] = objc_msgSend_columnUIDForColumnIndex_(v17, v18, WORD2(v21), v19, v20);
    v49[1] = v33;
    v34 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v33, lower, upper, engineCopy);
    v35 = [TSCECategoryRef alloc];
    v48[0] = objc_msgSend_topLevelGroupUid(v34, v36, v37, v38, v39);
    v48[1] = v40;
    v41 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v35, v40, &uidCopy, v48, v49, 11, levelCopy);
    if (objc_msgSend_isValid(v41, v42, v43, v44, v45))
    {
      v46 = v41;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

- (RefTypeHolder<TSCERangeRef,)p_boundingViewRangeRef
{
  v8 = objc_msgSend_uidRectRef(self, a3, v3, v4, v5);
  v13 = objc_msgSend_viewTractRef(v8, v9, v10, v11, v12);

  if (objc_msgSend_isSpanningCategorySummaryRef(self, v14, v15, v16, v17))
  {
    v22 = objc_msgSend_p_categoryRefViewTractRef(self, v18, v19, v20, v21);

    v23 = [TSCECellTractRef alloc];
    v28 = objc_msgSend_columns(v22, v24, v25, v26, v27);
    TSUIndexSet::TSUIndexSet(&v46);
    v45[0] = objc_msgSend_tableUID(v22, v29, v30, v31, v32);
    v45[1] = v33;
    v13 = objc_msgSend_initWithColumns_rows_tableUID_(v23, v33, v28, &v46, v45);

    TSUIndexSet::~TSUIndexSet(&v46);
    objc_msgSend_setSpansAllRows_(v13, v34, 1, v35, v36);
  }

  else
  {
    isCategoryRef = objc_msgSend_isCategoryRef(self, v18, v19, v20, v21);
    if (v13)
    {
      v42 = 0;
    }

    else
    {
      v42 = isCategoryRef;
    }

    if (v42 == 1)
    {
      v13 = objc_msgSend_p_categoryRefViewTractRef(self, v37, v38, v39, v40);
    }
  }

  if (v13)
  {
    objc_msgSend_boundingRangeRef(v13, v37, v38, v39, v40);
  }

  else
  {
    memset(&v46, 0, sizeof(v46));
  }

  v43 = *&v46._singleRange._end;
  retstr->var0.range = v46;
  retstr->var0._tableUID = v43;

  return result;
}

- (id)p_categoryRefViewTractRef
{
  v88 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v89[0] = 0;
  v89[1] = 0;
  v3 = [TSCECellTractRef alloc];
  v85 = 0x7FFF7FFFFFFFLL;
  v87 = 0x7FFF7FFFFFFFLL;
  v9 = objc_msgSend_initWithTopLeft_bottomRight_tableUID_(v3, v4, &v85, &v87, v89);
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTReferenceNode p_categoryRefViewTractRef]", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 612, 0, "invalid nil value for '%{public}s'", "invalidCellTractRef");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (objc_msgSend_isValid(v9, v5, v6, v7, v8))
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTReferenceNode p_categoryRefViewTractRef]", v22, v23);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 613, 0, "expected to create an invalid cell tract ref");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  v35 = v9;
  v40 = objc_msgSend_categoryRef(self, v36, v37, v38, v39);
  v45 = objc_msgSend_groupByUid(v40, v41, v42, v43, v44);
  v47 = v46;
  v51 = objc_msgSend_calcEngine(self, v46, v48, v49, v50);
  v53 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v52, v45, v47, v51);

  v61 = v35;
  if (objc_msgSend_isValidCategoryRef_(v53, v54, v40, v55, v56))
  {
    v85 = 0;
    v86 = 0;
    v62 = objc_msgSend_tableInfo(v53, v57, v58, v59, v60);
    p_hostCellRef = &self->_hostCellRef;
    if (objc_msgSend_tableUID(v62, v63, v64, v65, v66) == self->_hostCellRef._tableUID._lower)
    {
      v69 = v67;
      upper = self->_hostCellRef._tableUID._upper;

      if (v69 != upper)
      {
LABEL_10:
        v61 = objc_msgSend_viewCellTractRefForCategoryRef_atRowUid_(v53, v71, v40, &v85, v74);

        goto LABEL_11;
      }

      v62 = objc_msgSend_tableInfo(v53, v71, v72, v73, v74);
      v79 = objc_msgSend_translator(v62, v75, v76, v77, v78);
      v85 = objc_msgSend_rowUIDForBaseRowIndex_(v79, v80, p_hostCellRef->coordinate.row, v81, v82);
      v86 = v83;
    }

    goto LABEL_10;
  }

LABEL_11:

  return v61;
}

+ (RefTypeHolder<TSCERangeRef,)p_expandedViewRangeRefForViewRangeRef:(id)ref forLabelRowsInTable:(SEL)table
{
  v7 = *(a4 + 1);
  v19 = *a4;
  v20 = v7;
  v8 = *(a4 + 1);
  v18.range = *a4;
  v18._tableUID = v8;
  v9 = objc_msgSend_indexesForLabelRows(a5, table, a4, a5, v5);
  v13 = v9;
  if (v19._bottomRight.row == v19._topLeft.row && objc_msgSend_containsIndex_(v9, v10, v19._bottomRight.row, v11, v12))
  {
    v17.origin = v19._topLeft;
    v17.size = (((v19._bottomRight.column - v19._topLeft.column + 1) | ((v19._bottomRight.row - v19._topLeft.row + 1) << 32)) + 0x100000000);
    TSCERangeRef::TSCERangeRef(&v16, &v17, &v20);
    v18 = v16;
  }

  tableUID = v18._tableUID;
  retstr->var0.range = v18.range;
  retstr->var0._tableUID = tableUID;

  return result;
}

+ (TSUCellRect)p_cellRangeForSingleCategoryRefInViewRangeRef:(const void *)ref inTable:(id)table rangeContext:(unsigned __int8)context
{
  contextCopy = context;
  tableCopy = table;
  v8 = *ref;
  v9 = *(ref + 1);
  v14 = objc_msgSend_range(tableCopy, v10, v11, v12, v13);
  v16 = v15;
  v20 = objc_msgSend_bodyRange(tableCopy, v15, v17, v18, v19);
  v22 = v21;
  v26 = objc_msgSend_categoryColumnRange(tableCopy, v21, v23, v24, v25);
  v29 = sub_221387E00(v8, v9, contextCopy, v14, v16, v20, v22, v28, v26, v27);
  v32 = objc_msgSend_regionFromRange_(TSTCellRegion, v30, v29, v30, v31);
  v36 = objc_msgSend_indexesForSummaryRowsInRegion_(tableCopy, v33, v32, v34, v35);
  LODWORD(v9) = objc_msgSend_firstIndex(v36, v37, v38, v39, v40);
  v45 = objc_msgSend_boundingTopLeftCellID(v32, v41, v42, v43, v44);
  v50 = objc_msgSend_range(tableCopy, v46, v47, v48, v49);
  v51 = __C(v45 & 0xFFFF00000000 | v9, v45 & 0xFFFF00000000 | v9, v50);
  v53 = v52;

  v54 = v51;
  v55 = v53;
  result.size = v55;
  result.origin = v54;
  return result;
}

+ (BOOL)p_rangeRef:(const TSCERangeRef *)ref isContainedWithinSummaryAndLabelRowsInTable:(id)table
{
  tableCopy = table;
  topLeft = ref->range._topLeft;
  bottomRight = ref->range._bottomRight;
  v12 = objc_msgSend_range(tableCopy, v8, v9, v10, v11);
  v13 = __C(topLeft, bottomRight, v12);
  v15 = v14;
  v17 = objc_msgSend_regionFromRange_(TSTCellRegion, v14, v13, v14, v16);
  v22 = objc_msgSend_intersectingRowsIndexSet(v17, v18, v19, v20, v21);
  v25 = objc_msgSend_indexesOfHiddenRowsInCellRange_(tableCopy, v23, v13, v15, v24);
  v29 = objc_msgSend_tsu_indexSetByExcludingIndexes_(v22, v26, v25, v27, v28);
  v33 = objc_msgSend_indexesForSummaryAndLabelRowsInRegion_(tableCopy, v30, v17, v31, v32);
  LOBYTE(v15) = objc_msgSend_isEqual_(v29, v34, v33, v35, v36);

  return v15;
}

- (TSKUIDStruct)categoryRefTableUID
{
  if (objc_msgSend_isCategoryRef(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_categoryRef(self, v6, v7, v8, v9);
    v15 = objc_msgSend_groupByUid(v10, v11, v12, v13, v14);
    v17 = v16;
    v21 = objc_msgSend_calcEngine(self, v16, v18, v19, v20);
    v23 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v22, v15, v17, v21);

    v28 = objc_msgSend_tableInfo(v23, v24, v25, v26, v27);

    if (v28)
    {
      v33 = objc_msgSend_tableInfo(v23, v29, v30, v31, v32);
      v38 = objc_msgSend_tableUID(v33, v34, v35, v36, v37);
      v28 = v39;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTReferenceNode categoryRefTableUID]", v8, v9);
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v43, v44);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v46, v41, v45, 680, 0, "asking a non-category ref node for its category ref table UID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
    v28 = 0;
    v38 = 0;
  }

  v51 = v38;
  v52 = v28;
  result._upper = v52;
  result._lower = v51;
  return result;
}

- (TSKUIDStruct)tableUID
{
  v5 = objc_msgSend_tableUID(self->_uidRectRef, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)hostTableUID
{
  p_hostCellRef = &self->_hostCellRef;
  lower = self->_hostCellRef._tableUID._lower;
  upper = p_hostCellRef->_tableUID._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)setHostTableUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  if (!(d._lower | d._upper))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTReferenceNode setHostTableUID:]", d._upper, v3);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 694, 0, "invalid tableUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  objc_msgSend_willModify(self, a2, d._lower, d._upper, v3);
  self->_hostCellRef._tableUID._lower = lower;
  self->_hostCellRef._tableUID._upper = upper;

  objc_msgSend_invalidate(self, v18, v19, v20, v21);
}

- (TSTTableInfo)tableInfo
{
  if (objc_msgSend_isCategoryRef(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_groupBy(self, v6, v7, v8, v9);
    objc_msgSend_tableInfo(v10, v11, v12, v13, v14);
  }

  else
  {
    v15 = objc_msgSend_tableUID(self, v6, v7, v8, v9);
    v17 = v16;
    v10 = objc_msgSend_calcEngine(self, v16, v18, v19, v20);
    objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v21, v15, v17, v10);
  }
  v22 = ;

  return v22;
}

- (TSTGroupBy)groupBy
{
  if (objc_msgSend_isCategoryRef(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_categoryRef(self, v6, v7, v8, v9);
    v15 = objc_msgSend_groupByUid(v10, v11, v12, v13, v14);
    v17 = v16;
    v21 = objc_msgSend_calcEngine(self, v16, v18, v19, v20);
    v23 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v22, v15, v17, v21);
  }

  else
  {
    v10 = objc_msgSend_tableInfo(self, v6, v7, v8, v9);
    v23 = objc_msgSend_groupBy(v10, v24, v25, v26, v27);
  }

  return v23;
}

- (BOOL)isNonSpillRangeExpression
{
  v6 = objc_msgSend_area(self->_uidRectRef, a2, v2, v3, v4);
  v11 = objc_msgSend_viewPreserveFlags(self, v7, v8, v9, v10);
  v12 = (v11 ^ (v11 >> 2)) & 3;
  v13 = v12 != 0;
  if (objc_msgSend_isSpanningCategorySummaryRef(self, v14, v15, v16, v17))
  {
    return 0;
  }

  if ((objc_msgSend_isSingleColumnSpanningReference(self, v18, v19, v20, v21) & 1) == 0)
  {
    isSingleRowSpanningReference = objc_msgSend_isSingleRowSpanningReference(self, v22, v23, v24, v25);
    if (v6 == 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = isSingleRowSpanningReference;
    }

    if (v27)
    {
      return v12 != 0;
    }

    else
    {
      return v6 > 1;
    }
  }

  return v13;
}

- (BOOL)isAnyRangeExpression
{
  if (objc_msgSend_spillRangeSuffix(self, a2, v2, v3, v4))
  {
    return 1;
  }

  return objc_msgSend_isNonSpillRangeExpression(self, v6, v7, v8, v9);
}

- (BOOL)isSingleColumnSpanningReference
{
  if ((objc_msgSend_isCategoryRef(self, a2, v2, v3, v4) & 1) != 0 || !objc_msgSend_spansAllRows(self, v6, v7, v8, v9))
  {
    return 0;
  }

  v14 = objc_msgSend_uidRectRef(self, v10, v11, v12, v13);
  v19 = objc_msgSend_numberOfColumns(v14, v15, v16, v17, v18) == 1;

  return v19;
}

- (BOOL)isSingleRowSpanningReference
{
  if ((objc_msgSend_isCategoryRef(self, a2, v2, v3, v4) & 1) != 0 || !objc_msgSend_spansAllColumns(self, v6, v7, v8, v9))
  {
    return 0;
  }

  v14 = objc_msgSend_uidRectRef(self, v10, v11, v12, v13);
  v19 = objc_msgSend_numberOfRows(v14, v15, v16, v17, v18) == 1;

  return v19;
}

- (BOOL)isNonSpanningRangeExpression
{
  isNonSpillRangeExpression = objc_msgSend_isNonSpillRangeExpression(self, a2, v2, v3, v4);
  if (isNonSpillRangeExpression)
  {
    if (objc_msgSend_spansAllRows(self, v7, v8, v9, v10))
    {
      LOBYTE(isNonSpillRangeExpression) = 0;
    }

    else
    {
      LOBYTE(isNonSpillRangeExpression) = objc_msgSend_spansAllColumns(self, v11, v12, v13, v14) ^ 1;
    }
  }

  return isNonSpillRangeExpression;
}

- (BOOL)isLocalReference
{
  lower = self->_hostCellRef._tableUID._lower;
  upper = self->_hostCellRef._tableUID._upper;
  return lower == objc_msgSend_tableUID(self->_uidRectRef, a2, v2, v3, v4) && upper == v7;
}

- (BOOL)isCategorySummaryRef
{
  if (!objc_msgSend_isCategoryRef(self, a2, v2, v3, v4))
  {
    return 0;
  }

  v10 = objc_msgSend_categoryRef(self, v6, v7, v8, v9);
  v15 = objc_msgSend_type(v10, v11, v12, v13, v14) == 11;

  return v15;
}

- (BOOL)isSpanningCategorySummaryRef
{
  if (!objc_msgSend_isCategorySummaryRef(self, a2, v2, v3, v4))
  {
    return 0;
  }

  v10 = objc_msgSend_categoryRef(self, v6, v7, v8, v9);
  v15 = objc_msgSend_groupByUid(v10, v11, v12, v13, v14);
  v17 = v16;
  v21 = objc_msgSend_calcEngine(self, v16, v18, v19, v20);
  v23 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v22, v15, v17, v21);

  isSpanningCategoryRef = objc_msgSend_isSpanningCategoryRef_(v23, v24, v10, v25, v26);
  return isSpanningCategoryRef;
}

- (void)setIsBlankForKeyboardInsertion:(BOOL)insertion
{
  if (!self->_isBlankForKeyboardInsertion)
  {
    self->_isBlankForKeyboardInsertion = insertion;
    objc_msgSend_invalidate(self, a2, insertion, v3, v4);
  }
}

+ (unsigned)preserveFlagsForReference:(const TSCERangeRef *)reference calcEngine:(id)engine
{
  v5 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, a2, reference->_tableUID._lower, reference->_tableUID._upper, engine);
  v9 = v5;
  if ((*&reference->range._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && *&reference->range._topLeft == 0x7FFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = *&reference->range._topLeft;
  }

  v16 = objc_msgSend_tableAreaForCellID_(v5, v6, v11 | *&reference->range._topLeft & 0xFFFFFFFF00000000, v7, v8);
  bottomRight = reference->range._bottomRight;
  if (bottomRight.row == 0x7FFFFFFF)
  {
    row = 0x7FFFFFFF;
    if ((*&bottomRight & 0xFFFF00000000) != 0x7FFF00000000)
    {
      row = objc_msgSend_numberOfRows(v9, v12, v13, v14, v15) - 1;
    }
  }

  else
  {
    row = bottomRight.row;
  }

  v19 = objc_msgSend_tableAreaForCellID_(v9, v12, *&bottomRight & 0xFFFFFFFF00000000 | row, v14, v15);
  if (v16 == 5)
  {
    v20 = 2;
  }

  else
  {
    v20 = v16;
  }

  if (v19 == 5)
  {
    v21 = 2;
  }

  else
  {
    v21 = v19;
  }

  if (v20 == 6)
  {
    v22 = 4;
  }

  else
  {
    v22 = v20;
  }

  if (v21 == 6)
  {
    v23 = 4;
  }

  else
  {
    v23 = v21;
  }

  if (v22 == v23)
  {
    if (v22 == 3)
    {
      v24 = 5;
    }

    else
    {
      v24 = 0;
    }

    if (v22 == 2)
    {
      v24 = 10;
    }

    if (v22 == 4)
    {
      v25 = v24 | 0xA;
    }

    else
    {
      v25 = v24;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)isResizable
{
  if (objc_msgSend_isSpanningCategorySummaryRef(self, a2, v2, v3, v4))
  {
    return 0;
  }

  if (!objc_msgSend_isRangeWithFunction(self, v6, v7, v8, v9))
  {
    return 1;
  }

  return objc_msgSend_isNonSpillRangeExpression(self, v11, v12, v13, v14);
}

- (id)subregionForRange:(id)range
{
  rangeCopy = range;
  v9 = objc_msgSend_rangeContext(self, v5, v6, v7, v8);
  v12 = objc_msgSend_p_subregionForRange_rangeContext_(self, v10, rangeCopy, v9, v11);

  return v12;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  subexpressionsCopy = subexpressions;
  if (objc_msgSend_isCategoryRef(self, v5, v6, v7, v8))
  {
    objc_msgSend_categoryRef(self, v9, v10, v11, v12);
  }

  else
  {
    objc_msgSend_uidRectRef(self, v9, v10, v11, v12);
  }
  v13 = ;
  v18 = objc_msgSend_hash(v13, v14, v15, v16, v17);

  objc_msgSend_recordExpression_data_(subexpressionsCopy, v19, self, v18, 1);
  v20 = v18;
  v21 = 1;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    isEqual = 1;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = TSTReferenceNode;
    if ([(TSTExpressionNode *)&v21 isEqualToExpressionNode:nodeCopy])
    {
      v5 = nodeCopy;
      v10 = objc_msgSend_uidRectRef(self, v6, v7, v8, v9);
      v15 = objc_msgSend_uidRectRef(v5, v11, v12, v13, v14);
      isEqual = objc_msgSend_isEqual_(v10, v16, v15, v17, v18);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (id)referenceAsStringWithContext:(id)context
{
  contextCopy = context;
  if (!objc_msgSend_isValidReference(self, v5, v6, v7, v8))
  {
    v48 = 0;
    v49 = objc_msgSend_length(0, v9, v10, v11, v12);
    goto LABEL_25;
  }

  if (objc_msgSend_isCategoryRef(self, v9, v10, v11, v12))
  {
    v17 = objc_msgSend_calcEngine(self, v13, v14, v15, v16);

    if (!v17)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTReferenceNode referenceAsStringWithContext:]", v20, v21);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 1105, 0, "nil calculationEngine.  Can't generate string for categoryRefNode.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }

    v33 = objc_msgSend_categoryRef(self, v18, v19, v20, v21);
    v38 = objc_msgSend_groupByUid(v33, v34, v35, v36, v37);
    v40 = v39;
    v44 = objc_msgSend_calcEngine(self, v39, v41, v42, v43);
    v46 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v45, v38, v40, v44);

    v48 = objc_msgSend_prettyStringForCategoryRef_forHostCellRef_namingContext_(v46, v47, v33, &self->_hostCellRef, contextCopy);
LABEL_23:

    goto LABEL_24;
  }

  v50 = objc_msgSend_calcEngine(self, v13, v14, v15, v16);

  if (!v50)
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSTReferenceNode referenceAsStringWithContext:]", v53, v54);
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v58, v59);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v61, v56, v60, 1114, 0, "nil calculationEngine.  Can't generate string for referenceNode.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
  }

  v66 = objc_msgSend_tableUID(self, v51, v52, v53, v54);
  v68 = v67;
  v72 = objc_msgSend_calcEngine(self, v67, v69, v70, v71);
  v33 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v73, v66, v68, v72);

  if (v33)
  {
    v78 = objc_msgSend_calcEngine(self, v74, v75, v76, v77);
    v46 = objc_msgSend_namer(v78, v79, v80, v81, v82);

    v87 = objc_msgSend_hostTableUID(self, v83, v84, v85, v86);
    objc_msgSend_setHostTableUID_(contextCopy, v88, v87, v88, v89);
    isRangeWithFunction = objc_msgSend_isRangeWithFunction(self, v90, v91, v92, v93);
    objc_msgSend_setSuppressIdenticalEndReference_(contextCopy, v95, isRangeWithFunction, v96, v97);
    objc_msgSend_setAllowSpanningColumnReferenceBodyQualifier_(contextCopy, v98, 1, v99, v100);
    v48 = objc_opt_new();
    v161[0] = 0;
    v161[1] = v161;
    v161[2] = 0x2020000000;
    v162 = 0;
    if (objc_msgSend_isAPivotTable(v33, v101, v102, v103, v104))
    {
      v109 = objc_msgSend_uidRectRef(self, v105, v106, v107, v108);
      v114 = objc_msgSend_viewTractRef(v109, v110, v111, v112, v113);
    }

    else
    {
      v115 = objc_msgSend_uidRectRef(self, v105, v106, v107, v108);
      v109 = objc_msgSend_baseTractRef(v115, v116, v117, v118, v119);

      v124 = objc_msgSend_translator(v33, v120, v121, v122, v123);
      v114 = objc_msgSend_viewTractRefForBaseTractRef_(v124, v125, v109, v126, v127);
    }

    if (objc_msgSend_isValid(v114, v128, v129, v130, v131))
    {
      if (objc_msgSend_useSymbolicNames(contextCopy, v132, v133, v134, v135) && objc_msgSend_isRectangularRange(v114, v136, v137, v138, v139))
      {
        v141 = objc_msgSend_isAPivotTable(v33, v136, v140, v138, v139) ^ 1;
        objc_msgSend_setUseSymbolicNames_(contextCopy, v142, v141, v143, v144);
      }

      else
      {
        objc_msgSend_setUseSymbolicNames_(contextCopy, v136, 0, v138, v139);
      }

      v155[0] = MEMORY[0x277D85DD0];
      v155[1] = 3221225472;
      v155[2] = sub_2212DD2A4;
      v155[3] = &unk_278462BC0;
      v156 = v33;
      v157 = contextCopy;
      v160 = v161;
      v158 = v46;
      v159 = v48;
      objc_msgSend_foreachRangeRef_(v114, v145, v155, v146, v147);
    }

    if (self->_spillRangeSuffix)
    {
      objc_msgSend_appendString_(v48, v132, @"#", v134, v135);
    }

    _Block_object_dispose(v161, 8);
    goto LABEL_23;
  }

  v48 = 0;
LABEL_24:

  v49 = objc_msgSend_length(v48, v148, v149, v150, v151);
LABEL_25:
  if (v49)
  {
    v152 = v48;
  }

  else
  {
    v152 = 0;
  }

  v153 = v152;

  return v152;
}

- (id)string
{
  refString = self->_refString;
  if (!refString)
  {
    v4 = objc_opt_new();
    v8 = objc_msgSend_referenceAsStringWithContext_(self, v5, v4, v6, v7);
    v9 = self->_refString;
    self->_refString = v8;

    refString = self->_refString;
    if (!refString)
    {
      if (self->_isBlankForKeyboardInsertion)
      {
        refString = &stru_2834BADA0;
      }

      else
      {
        refString = @"#REF!";
      }
    }
  }

  return refString;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  optionsCopy = options;
  textCopy = text;
  v10 = objc_msgSend_children(self, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);

  if (v15)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTReferenceNode insertFormulaText:printingOptions:]", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 1204, 0, "ReferenceNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  if (optionsCopy)
  {
    v31 = objc_msgSend_whitespaceBefore(self, v16, v17, v18, v19);

    if (v31)
    {
      v36 = objc_msgSend_whitespaceBefore(self, v32, v33, v34, v35);
      objc_msgSend_takeText_(textCopy, v37, v36, v38, v39);
    }
  }

  if ((optionsCopy & 2) != 0)
  {
    v48 = objc_opt_new();
    objc_msgSend_setForFormulaPlainText_(v48, v52, 1, v53, v54);
    objc_msgSend_setQuoteComponents_(v48, v55, 1, v56, v57);
    objc_msgSend_setUseSymbolicNames_(v48, v58, 0, v59, v60);
    v64 = objc_msgSend_referenceAsStringWithContext_(self, v61, v48, v62, v63);
    objc_msgSend_takeText_(textCopy, v65, v64, v66, v67);
  }

  else
  {
    v40 = [TSTWPTokenAttachment alloc];
    v45 = objc_msgSend_context(self, v41, v42, v43, v44);
    v48 = objc_msgSend_initWithContext_expressionNode_(v40, v46, v45, self, v47);

    objc_msgSend_insertUIGraphicalAttachment_(textCopy, v49, v48, v50, v51);
  }

  if (optionsCopy)
  {
    v72 = objc_msgSend_whitespaceAfter(self, v68, v69, v70, v71);

    if (v72)
    {
      v77 = objc_msgSend_whitespaceAfter(self, v73, v74, v75, v76);
      objc_msgSend_takeText_(textCopy, v78, v77, v79, v80);
    }
  }
}

- (id)formulaPlainText
{
  formulaPlainText = self->_formulaPlainText;
  if (!formulaPlainText)
  {
    v4 = objc_opt_new();
    objc_msgSend_setForFormulaPlainText_(v4, v5, 1, v6, v7);
    objc_msgSend_setQuoteComponents_(v4, v8, 1, v9, v10);
    v14 = objc_msgSend_referenceAsStringWithContext_(self, v11, v4, v12, v13);
    v15 = self->_formulaPlainText;
    self->_formulaPlainText = v14;

    formulaPlainText = self->_formulaPlainText;
  }

  if (formulaPlainText)
  {
    v16 = formulaPlainText;
  }

  else
  {
    v16 = @"#REF!";
  }

  return v16;
}

- (void)p_buildASTNodeArray:(TSCEASTNodeArray *)array forCoord:(TSUCellCoord)coord preserveFlags:(unsigned __int8)flags hostCell:(TSUCellCoord)cell
{
  *(&v70.var3 + 7) = flags;
  v9 = *&coord & 0xFFFF00000000;
  if (coord.row != 0x7FFFFFFF)
  {
    if (v9 != 0x7FFF00000000)
    {
      LOBYTE(v70.var0) = flags;
      v43 = &v70;
      v70.var2 = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&cell, coord, v43, *&coord);
      if (objc_msgSend_isLocalReference(self, v45, v46, v47, v48))
      {
        v54 = 0;
        v55 = 0;
      }

      else
      {
        v54 = objc_msgSend_tableUID(self, v49, v50, v51, v52);
      }

      v70.var0 = v54;
      v70.var1 = v55;
      flagsCopy = flags;
      v65 = &flagsCopy;
      goto LABEL_31;
    }

    if ((flags & 2) != 0)
    {
      row = 0;
    }

    else
    {
      row = cell.row;
    }

    v26 = coord.row - row;
    if (objc_msgSend_isLocalReference(self, a2, array, *&coord, flags))
    {
      v31 = 0;
      v32 = 0;
    }

    else
    {
      v31 = objc_msgSend_tableUID(self, v27, v28, v29, v30);
    }

    v70.var0 = v31;
    v70.var1 = v32;
    sub_2210899C8(v26, v32, v28, v29, v30);
    sub_2210899C8(v26, v56, v57, v58, v59);
    v60 = ((flags & 1) << 56) | ((flags & 2) << 47) | v26 | 0x7FFF00000000;
LABEL_28:
    v70.var2 = v60;
    v65 = (&v70.var3 + 7);
LABEL_31:
    TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(array, &v70, &v70.var2, v65, 0, v53);
    return;
  }

  if (v9 != 0x7FFF00000000)
  {
    column = cell.column;
    if (flags)
    {
      column = 0;
    }

    v34 = coord.column - column;
    if (coord.column == 0x7FFF)
    {
      v35 = coord.column;
    }

    else
    {
      v35 = v34;
    }

    v36 = v35;
    if (objc_msgSend_isLocalReference(self, a2, array, *&coord, flags))
    {
      v41 = 0;
      v42 = 0;
    }

    else
    {
      v41 = objc_msgSend_tableUID(self, v37, v38, v39, v40);
    }

    v70.var0 = v41;
    v70.var1 = v42;
    sub_2210898C4(v36, v42, v38, v39, v40);
    sub_2210898C4(v36, v61, v62, v63, v64);
    v60 = ((flags & 2) << 47) | ((flags & 1) << 56) | (v36 << 32) | 0x7FFFFFFF;
    goto LABEL_28;
  }

  if (objc_msgSend_isValid(self->_uidRectRef, a2, array, *&coord, flags, cell))
  {
    v15 = objc_msgSend_includeUidTractList(self->_uidRectRef, v10, v11, v12, v13);
    LOBYTE(v70.var2) = 0;
    LOBYTE(v70.var0) = flags;
    TSCEASTRefFlags::setPreserveFlags(&v70.var2, &v70);
    if (objc_msgSend_isLocalReference(self, v16, v17, v18, v19))
    {
      TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(array, LOBYTE(v70.var2), v15, v22, v23, v24);
    }

    else
    {
      v70.var0 = objc_msgSend_tableUID(self, v20, v21, v22, v23);
      v70.var1 = v66;
      TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(array, &v70, LOBYTE(v70.var2), v15, v67, v68);
    }
  }

  else
  {

    TSCEASTRelativeCoordRefElement::appendReferenceError(array, v10, v11, v12, v13, v14);
  }
}

- (id)p_convertCategoryRefToRelativeForHostCell:(TSUCellCoord)cell
{
  row = cell.row;
  v5 = self->_categoryRef;
  if ((objc_msgSend_preserveFlags(self->_categoryRef, v6, v7, v8, v9) & 2) == 0)
  {
    v14 = objc_msgSend_groupByUid(self->_categoryRef, v10, v11, v12, v13);
    v16 = v15;
    v20 = objc_msgSend_calcEngine(self, v15, v17, v18, v19);
    v22 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v21, v14, v16, v20);

    if (v22)
    {
      v27 = objc_msgSend_tableInfo(v22, v23, v24, v25, v26);
      if (objc_msgSend_tableUID(v27, v28, v29, v30, v31) == self->_hostCellRef._tableUID._lower)
      {
        v33 = v32;
        upper = self->_hostCellRef._tableUID._upper;

        if (v33 == upper)
        {
          v39 = objc_msgSend_tableInfo(v22, v35, v36, v37, v38);
          v44 = objc_msgSend_translator(v39, v40, v41, v42, v43);
          v54[0] = objc_msgSend_rowUIDForBaseRowIndex_(v44, v45, row, v46, v47);
          v54[1] = v48;

          categoryRef = self->_categoryRef;
          tableUID = self->_hostCellRef._tableUID;
          v51 = objc_msgSend_convertCategoryRefToRelativeAncestorUid_atRowUid_inHostTable_(v22, v50, categoryRef, v54, &tableUID);

          v5 = v51;
        }
      }

      else
      {
      }
    }
  }

  return v5;
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  cellCopy = cell;
  v8 = objc_msgSend_children(self, a2, array, *&cell, table);
  v13 = objc_msgSend_count(v8, v9, v10, v11, v12);

  if (v13)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTReferenceNode buildASTNodeArray:hostCell:symbolTable:]", v16, v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 1300, 0, "ReferenceNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  if (objc_msgSend_isCategoryRef(self, v14, v15, v16, v17))
  {
    v33 = objc_msgSend_p_convertCategoryRefToRelativeForHostCell_(self, v29, *&cell, v31, v32);
    categoryRef = self->_categoryRef;
    self->_categoryRef = v33;

    v36 = self->_categoryRef;

    TSCEASTCategoryRefElement::appendCategoryRefElement(array, v36, v35);
    return;
  }

  v37 = objc_msgSend_tableUID(self, v29, v30, v31, v32);
  v39 = v38;
  v43 = objc_msgSend_calcEngine(self, v38, v40, v41, v42);
  v45 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v44, v37, v39, v43);

  if (objc_msgSend_isAPivotTable(v45, v46, v47, v48, v49))
  {
    v54 = objc_msgSend_uidRectRef(self, v50, v51, v52, v53);
    v59 = objc_msgSend_viewTractRef(v54, v55, v56, v57, v58);

    if (objc_msgSend_isValid(v59, v60, v61, v62, v63))
    {
      *&v183[0]._flags = 0;
      v69 = objc_msgSend_uidRectRef(self, v64, v65, v66, v67);
      v73 = objc_msgSend_uidTractListWithPurpose_(v69, v70, 4, v71, v72);

      LOBYTE(v181) = objc_msgSend_preserveFlags(v73, v74, v75, v76, v77);
      TSCEASTRefFlags::setPreserveFlags(&v183[1], &v181);
      v183[0]._flags = (4 * objc_msgSend_preserveFlags(v73, v78, v79, v80, v81)) & 0x10;
      v183[0]._flags = v183[0]._flags & 0xDF | (32 * ((objc_msgSend_preserveFlags(v73, v82, v83, v84, v85) & 8) != 0));
      v90 = objc_msgSend_uidRectRef(self, v86, v87, v88, v89);
      v95 = objc_msgSend_area(v90, v91, v92, v93, v94);

      if (v95 != 1 || (objc_msgSend_bottomRight(v59, v96, v97, v98, v99) & 0x101FFFFFFFFFFFFLL) != 0 || (objc_msgSend_spansAllRows(v59, v96, v97, v98, v99) & 1) != 0 || (objc_msgSend_spansAllColumns(v59, v96, v97, v98, v99) & 1) != 0)
      {
        v181 = objc_msgSend_tableUID(self, v96, v97, v98, v99);
        v182 = v100;
        TSCEASTViewTractRefElement::appendViewTractRefElement(array, &v181, &v183[1], v183, v73, 255, 255, 0xFFFF);
      }

      else
      {
        v168 = [TSCEViewTractRef alloc];
        v181 = objc_msgSend_tableUID(self, v169, v170, v171, v172);
        v182 = v173;
        v176 = objc_msgSend_initWithTableUID_(v168, v173, &v181, v174, v175);
        objc_msgSend_setPreserveFlags_(v176, v177, 15, v178, v179);
        TSCEASTViewTractRefElement::appendViewTractRefElement(array, v176, v180);
      }

      goto LABEL_25;
    }

LABEL_26:
    TSCEASTRelativeCoordRefElement::appendReferenceError(array, v64, v65, v66, v67, v68);
    goto LABEL_27;
  }

  v101 = objc_msgSend_uidRectRef(self, v50, v51, v52, v53);
  v59 = objc_msgSend_baseTractRef(v101, v102, v103, v104, v105);

  v110 = objc_msgSend_basePreserveFlags(self, v106, v107, v108, v109);
  if (objc_msgSend_isSingleCellOrSpanningRange(v59, v111, v112, v113, v114) && (v110 & 3) == v110 >> 2)
  {
    v119 = objc_msgSend_topLeft(v59, v115, v116, v117, v118);
    objc_msgSend_p_buildASTNodeArray_forCoord_preserveFlags_hostCell_(self, v120, array, v119, v110 & 3, cell);
    v73 = objc_msgSend_whitespaceBefore(self, v121, v122, v123, v124);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v73);
  }

  else
  {
    if (v59 && objc_msgSend_isValid(v59, v115, v116, v117, v118))
    {
      v125 = [TSCERelativeTractRef alloc];
      v73 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v125, v126, v59, &cellCopy, v127);
      v132 = objc_msgSend_tableUID(v73, v128, v129, v130, v131);
      v134 = v133;
      if (v132 == objc_msgSend_hostTableUID(self, v133, v135, v136, v137) && v134 == v138)
      {
        objc_msgSend_setTableUID_(v73, v138, 0, 0, v140);
      }

      TSCEASTColonTractElement::appendColonTractElement(array, v73, 0, v139);
      goto LABEL_25;
    }

    v141 = objc_msgSend_uidRectRef(self, v115, v116, v117, v118);
    isValid = objc_msgSend_isValid(v141, v142, v143, v144, v145);

    if ((isValid & 1) == 0)
    {
      goto LABEL_26;
    }

    LOBYTE(v181) = 0;
    v183[1]._flags = v110;
    TSCEASTRefFlags::setPreserveFlags(&v181, &v183[1]);
    v151 = objc_msgSend_uidRectRef(self, v147, v148, v149, v150);
    v73 = objc_msgSend_includeUidTractList(v151, v152, v153, v154, v155);

    TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(array, v181, v73, v156, v157, v158);
  }

LABEL_25:

LABEL_27:
  if (objc_msgSend_spillRangeSuffix(self, v159, v160, v161, v162))
  {
    TSCEASTTagOnlyElement::appendTagOnlyElement(array, 70, v164, v165, v166);
  }

  v167 = objc_msgSend_whitespaceAfter(self, v163, v164, v165, v166);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v167);
}

- (id)exportString
{
  v6 = objc_msgSend_children(self, a2, v2, v3, v4);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);

  if (v11)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTReferenceNode exportString]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 1377, 0, "ReferenceNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v12, &stru_2834BADA0, v13, v14);
  if ((objc_msgSend_isLocalReference(self, v27, v28, v29, v30) & 1) == 0)
  {
    v92._lower = objc_msgSend_tableUID(self, v31, v32, v33, v34);
    v92._upper = v35;
    v39 = sub_2212C47E0(&v92, 1, v36, v37, v38);
    objc_msgSend_appendFormat_(v26, v40, @"%@ :: ", v41, v42, v39);
  }

  v43 = objc_msgSend_basePreserveFlags(self, v31, v32, v33, v34);
  v52 = (v43 & 0xFC) + (v43 >> 2);
  if (objc_msgSend_spansAllColumns(self, v44, v45, v46, v47))
  {
    v92._lower = objc_msgSend_baseTopLeftCoord(self, v48, v49, v50, v51);
    v91 = v43 & 3 | (4 * (v43 & 3));
    v53 = sub_2212C62E0(&v92, &v91);
    objc_msgSend_appendString_(v26, v54, v53, v55, v56);

    objc_msgSend_appendString_(v26, v57, @":", v58, v59);
    v92._lower = objc_msgSend_baseBottomRightCoord(self, v60, v61, v62, v63);
    v91 = v52;
    v64 = sub_2212C62E0(&v92, &v91);
    objc_msgSend_appendString_(v26, v65, v64, v66, v67);
  }

  else
  {
    v92._lower = objc_msgSend_baseTopLeftCoord(self, v48, v49, v50, v51);
    v91 = v43 & 3 | (4 * (v43 & 3));
    v68 = sub_2212C62E0(&v92, &v91);
    objc_msgSend_appendString_(v26, v69, v68, v70, v71);

    if (!objc_msgSend_isNonSpillRangeExpression(self, v72, v73, v74, v75))
    {
      goto LABEL_10;
    }

    objc_msgSend_appendString_(v26, v76, @":", v78, v79);
    v92._lower = objc_msgSend_baseBottomRightCoord(self, v80, v81, v82, v83);
    v91 = v52;
    v64 = sub_2212C62E0(&v92, &v91);
    objc_msgSend_appendString_(v26, v84, v64, v85, v86);
  }

LABEL_10:
  if (objc_msgSend_spillRangeSuffix(self, v76, v77, v78, v79))
  {
    objc_msgSend_appendString_(v26, v87, @"#", v88, v89);
  }

  return v26;
}

- (void)invalidate
{
  refString = self->_refString;
  self->_refString = 0;

  formulaPlainText = self->_formulaPlainText;
  self->_formulaPlainText = 0;

  v9 = objc_msgSend_tokenAttachment(self, v5, v6, v7, v8);
  objc_msgSend_invalidate(v9, v10, v11, v12, v13);

  self->_hasCachedIsValidReference = 0;
}

- (BOOL)isValidReference
{
  if (!self->_hasCachedIsValidReference)
  {
    v7 = objc_msgSend_calcEngine(self, a2, v2, v3, v4);

    if (v7)
    {
      if (objc_msgSend_isCategoryRef(self, v8, v9, v10, v11))
      {
        v16 = objc_msgSend_categoryRef(self, v12, v13, v14, v15);
        v21 = objc_msgSend_groupByUid(v16, v17, v18, v19, v20);
        v23 = v22;
        v27 = objc_msgSend_calcEngine(self, v22, v24, v25, v26);
        v29 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v28, v21, v23, v27);

        if (v29)
        {
          isValidCategoryRef = objc_msgSend_isValidCategoryRef_(v29, v30, v16, v32, v33);
        }

        else
        {
          isValidCategoryRef = 0;
        }

        LOBYTE(isValid) = objc_msgSend_isValid(v16, v30, v31, v32, v33) & isValidCategoryRef;
      }

      else
      {
        v16 = objc_msgSend_uidRectRef(self, v12, v13, v14, v15);
        v47 = objc_msgSend_calcEngine(self, v43, v44, v45, v46);
        objc_msgSend_setCalcEngine_(v16, v48, v47, v49, v50);

        if (!objc_msgSend_isValidReference(v16, v51, v52, v53, v54))
        {
          LOBYTE(isValid) = 0;
LABEL_15:

          self->_hasCachedIsValidReference = 1;
          self->_cachedIsValidReference = isValid;
          return isValid & 1;
        }

        v55 = [TSTUIDRectRef alloc];
        v60 = objc_msgSend_calcEngine(v16, v56, v57, v58, v59);
        v101[0] = objc_msgSend_tableUID(v16, v61, v62, v63, v64);
        v101[1] = v65;
        if (v16)
        {
          objc_msgSend_uidRange(v16, v65, v66, v67, v68);
        }

        else
        {
          *__p = 0u;
          v100 = 0u;
          *v98 = 0u;
        }

        v70 = objc_msgSend_basePreserveFlags(v16, v65, v66, v67, v68, v98[0], v98[1], __p[0]);
        v29 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v55, v71, v60, v101, v98, v70);
        if (__p[1])
        {
          *&v100 = __p[1];
          operator delete(__p[1]);
        }

        if (v98[0])
        {
          v98[1] = v98[0];
          operator delete(v98[0]);
        }

        v76 = objc_msgSend_viewTractRef(v29, v72, v73, v74, v75);
        isValid = objc_msgSend_isValid(v76, v77, v78, v79, v80);

        if (isValid)
        {
          v85 = objc_msgSend_uidRectRef(self, v81, v82, v83, v84);
          isEqual = objc_msgSend_isEqual_(v85, v86, v29, v87, v88);

          if ((isEqual & 1) == 0)
          {
            objc_storeStrong(&self->_uidRectRef, v29);
            objc_msgSend_invalidate(self, v90, v91, v92, v93);
            objc_msgSend_p_resetMenu(self, v94, v95, v96, v97);
          }
        }
      }
    }

    else
    {
      v16 = objc_msgSend_uidRectRef(self, v8, v9, v10, v11);
      v29 = objc_msgSend_viewTractRef(v16, v35, v36, v37, v38);
      LOBYTE(isValid) = objc_msgSend_isValid(v29, v39, v40, v41, v42);
    }

    goto LABEL_15;
  }

  LOBYTE(isValid) = self->_cachedIsValidReference;
  return isValid & 1;
}

- (void)excludeSummaryAndLabelRows
{
  v6 = objc_msgSend_calcEngine(self, a2, v2, v3, v4);

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTReferenceNode excludeSummaryAndLabelRows]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1471, 0, "Need a calcEngine set to do this");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_calcEngine(self, v7, v8, v9, v10);
  if (v22)
  {
    v27 = v22;
    isCategoryRef = objc_msgSend_isCategoryRef(self, v23, v24, v25, v26);

    if ((isCategoryRef & 1) == 0)
    {
      objc_msgSend_willModify(self, v29, v30, v31, v32);
      objc_msgSend_excludeSummaryAndLabelRows(self->_uidRectRef, v33, v34, v35, v36);

      objc_msgSend_invalidate(self, v37, v38, v39, v40);
    }
  }
}

- (void)processChanges:(id)changes forChangeSource:(id)source
{
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_invalidate(self, v5, v6, v7, v8);
  }
}

- (BOOL)suppressReferenceOptionsMenu
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  isAPivotTable = objc_msgSend_isAPivotTable(v5, v6, v7, v8, v9);

  return isAPivotTable;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[224], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212DF6B0, off_2812E4498[224], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy, v8);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v81.receiver = self;
  v81.super_class = TSTReferenceNode;
  [(TSTExpressionNode *)&v81 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v11 = *(archive + 24);
  v12 = *(archive + 4);
  if ((v12 & 0x80) != 0)
  {
    if ((v12 & 8) == 0)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTReferenceNode loadFromArchive:unarchiver:]", v9, v10);
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v39, v40);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v37, v41, 1551, 0, "Invalid TSTReferenceNode archive");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
    }

    if (*(archive + 6))
    {
      v47 = *(archive + 6);
    }

    else
    {
      v47 = MEMORY[0x277D809E0];
    }

    *&v76[16] = TSKUIDStruct::loadFromMessage(v47, v8);
    *&v76[24] = v48;
    if (*(archive + 10))
    {
      v49 = *(archive + 10);
    }

    else
    {
      v49 = MEMORY[0x277D80A40];
    }

    MEMORY[0x223D9F8B0](&v78, v49);
    v50 = [TSTUIDRectRef alloc];
    v52 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v50, v51, 0, &v76[16], &v78, v11);
    uidRectRef = self->_uidRectRef;
    self->_uidRectRef = v52;
  }

  else
  {
    if ((v12 & 4) == 0)
    {
      if ((v12 & 0x10) != 0)
      {
        if ((v12 & 8) == 0)
        {
          v13 = MEMORY[0x277D81150];
          v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTReferenceNode loadFromArchive:unarchiver:]", v9, v10);
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v16, v17);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 1567, 0, "Invalid TSTReferenceNode archive");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
        }

        v24 = *(archive + 6);
        v73 = 0;
        v74 = 0;
        if (v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = MEMORY[0x277D809E0];
        }

        v73 = TSKUIDStruct::loadFromMessage(v25, v8);
        v74 = v26;
        *&v76[16] = 0u;
        v77 = 0u;
        v27 = MEMORY[0x277D80A50];
        if (*(archive + 7))
        {
          v28 = *(archive + 7);
        }

        else
        {
          v28 = MEMORY[0x277D80A50];
        }

        sub_2211A8FE8(v28, v26, &v76[16]);
        v75 = 0u;
        *v76 = 0u;
        if (*(archive + 8))
        {
          v30 = *(archive + 8);
        }

        else
        {
          v30 = v27;
        }

        sub_2211A8FE8(v30, v29, &v75);
        v71 = 0uLL;
        v72 = 0;
        v68 = 0;
        v69 = 0;
        v70 = 0;
        sub_221083454(&v71, &v76[16]);
        sub_221083454(&v68, &v77);
        if (v75 != *&v76[16])
        {
          sub_221083454(&v71, &v75);
        }

        if (*v76 != v77)
        {
          sub_221083454(&v68, v76);
        }

        sub_2210BBBE8(&v78, &v71, &v68);
        v31 = [TSTUIDRectRef alloc];
        v33 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v31, v32, 0, &v73, &v78, v11);
        v34 = self->_uidRectRef;
        self->_uidRectRef = v33;

        if (v77 != *v76 || *&v76[8] != __PAIR128__(v75, *(&v77 + 1)) || *&v76[24] != *(&v75 + 1))
        {
          objc_msgSend_setNeedsUidRectUpgrade_(self->_uidRectRef, v8, 1, v9, v10);
        }

        if (*(&v79 + 1))
        {
          *&v80 = *(&v79 + 1);
          operator delete(*(&v79 + 1));
        }

        if (v78)
        {
          *(&v78 + 1) = v78;
          operator delete(v78);
        }

        if (v68)
        {
          v69 = v68;
          operator delete(v68);
        }

        v35 = v71;
        if (v71)
        {
          *(&v71 + 1) = v71;
LABEL_48:
          operator delete(v35);
          goto LABEL_49;
        }
      }

      goto LABEL_49;
    }

    TSCERangeRefFromArchive(*(archive + 5), &v76[16]);
    v71 = v77;
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    v54 = [TSTUIDRectRef alloc];
    v56 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v54, v55, 0, &v71, &v78, v11);
    v57 = self->_uidRectRef;
    self->_uidRectRef = v56;

    v58 = self->_uidRectRef;
    v75 = *&v76[16];
    *v76 = v77;
    objc_msgSend_setChromeRangeRef_preserveFlags_(v58, v59, &v75, v11, v60);
  }

  if (*(&v79 + 1))
  {
    *&v80 = *(&v79 + 1);
    operator delete(*(&v79 + 1));
  }

  v35 = v78;
  if (v78)
  {
    *(&v78 + 1) = v78;
    goto LABEL_48;
  }

LABEL_49:
  v61 = *(archive + 4);
  if ((v61 & 0x40) != 0)
  {
    v62 = sub_22126A0F4(*(archive + 9), v8);
    categoryRef = self->_categoryRef;
    self->_categoryRef = v62;

    self->_isCategoryRef = 1;
    v61 = *(archive + 4);
  }

  if ((v61 & 0x400) != 0)
  {
    self->_spillRangeSuffix = *(archive + 100);
  }

  if ((v61 & 0x100) != 0)
  {
    sub_221269DB8(*(archive + 11), &v78);
    *&self->_hostCellRef.coordinate.row = v78;
    self->_hostCellRef._tableUID._upper = v79;
  }

  else if (v61)
  {
    v64 = *(archive + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v64 + 23) < 0)
    {
      v64 = *v64;
    }

    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v64, v9, v10);
    v66 = TSKMakeUIDStructFromString();
    self->_hostCellRef.coordinate = 0;
    self->_hostCellRef._tableUID._lower = v66;
    self->_hostCellRef._tableUID._upper = v67;
  }

  else
  {
    self->_hostCellRef._tableUID._lower = 0;
    self->_hostCellRef._tableUID._upper = 0;
    self->_hostCellRef.coordinate = 0x7FFF7FFFFFFFLL;
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 2u;
  v7 = *(archive + 4);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(archive + 4) = v7;
  }

  v55.receiver = self;
  v55.super_class = TSTReferenceNode;
  [(TSTExpressionNode *)&v55 saveToArchive:v7 archiver:archiverCopy];
  v54._lower = 0;
  v54._upper = 0;
  v54._lower = objc_msgSend_tableUID(self->_uidRectRef, v9, v10, v11, v12);
  v54._upper = v13;
  *(archive + 4) |= 8u;
  v14 = *(archive + 6);
  if (!v14)
  {
    v15 = *(archive + 1);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = MEMORY[0x223DA0360](v15);
    *(archive + 6) = v14;
  }

  TSKUIDStruct::saveToMessage(&v54, v14);
  uidRectRef = self->_uidRectRef;
  if (uidRectRef)
  {
    objc_msgSend_uidRange(uidRectRef, v16, v17, v18, v19);
  }

  else
  {
    memset(&v53, 0, sizeof(v53));
  }

  *(archive + 4) |= 0x80u;
  v21 = *(archive + 10);
  if (!v21)
  {
    v22 = *(archive + 1);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = MEMORY[0x223DA0320](v22);
    *(archive + 10) = v21;
  }

  TSKUIDStructTract::saveToMessage(&v53, v21);
  if (v53._rowIdList.__begin_)
  {
    v53._rowIdList.__end_ = v53._rowIdList.__begin_;
    operator delete(v53._rowIdList.__begin_);
  }

  if (v53._colIdList.__begin_)
  {
    v53._colIdList.__end_ = v53._colIdList.__begin_;
    operator delete(v53._colIdList.__begin_);
  }

  v27 = objc_msgSend_basePreserveFlags(self, v23, v24, v25, v26);
  v32 = *(archive + 4) | 0x200;
  *(archive + 4) = v32;
  *(archive + 24) = v27;
  v33 = self->_uidRectRef;
  if (v33)
  {
    objc_msgSend_chromeRangeRef(v33, v28, v29, v30, v31);
    v32 = *(archive + 4);
  }

  else
  {
    memset(&v53, 0, 32);
  }

  *(archive + 4) = v32 | 4;
  v34 = *(archive + 5);
  if (!v34)
  {
    v35 = *(archive + 1);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    v34 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeReferenceArchive>(v35);
    *(archive + 5) = v34;
  }

  TSCERangeRefEncodeToArchive(&v53, v34);
  *(archive + 4) |= 0x100u;
  v36 = *(archive + 11);
  if (!v36)
  {
    v37 = *(archive + 1);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v37);
    *(archive + 11) = v36;
  }

  sub_221269A28(&self->_hostCellRef, v36);
  tableUID = self->_hostCellRef._tableUID;
  v38 = TSKUIDStruct::description(&tableUID);
  v39 = v38;
  v44 = objc_msgSend_UTF8String(v39, v40, v41, v42, v43);
  sub_2212DF3A8(archive, v44);

  if (objc_msgSend_isCategoryRef(self, v45, v46, v47, v48))
  {
    categoryRef = self->_categoryRef;
    *(archive + 4) |= 0x40u;
    v50 = *(archive + 9);
    if (!v50)
    {
      v51 = *(archive + 1);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CategoryReferenceArchive>(v51);
      *(archive + 9) = v50;
    }

    sub_221269E08(categoryRef, v50);
  }

  if (self->_spillRangeSuffix)
  {
    *(archive + 4) |= 0x400u;
    *(archive + 100) = 1;
  }
}

- (void)setHostCellRef:(TSCECellRef *)ref
{
  upper = ref->_tableUID._upper;
  *&self->_hostCellRef.coordinate.row = *&ref->coordinate.row;
  self->_hostCellRef._tableUID._upper = upper;
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 23) = 0x7FFF7FFFFFFFLL;
  return self;
}

@end