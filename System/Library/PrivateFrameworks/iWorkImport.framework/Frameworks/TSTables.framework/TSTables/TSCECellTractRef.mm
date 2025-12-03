@interface TSCECellTractRef
+ (id)cellTractRefWithUidTractList:(id)list onTable:(const TSKUIDStruct *)table preserveFlags:(TSUPreserveFlags)flags rewriteContext:(TSCEFormulaRewriteContext *)context;
- (BOOL)edgeExpandTractUsingIncludeUidTract:(id)tract resolver:(id)resolver forRows:(BOOL)rows isInverse:(BOOL)inverse;
- (BOOL)edgeExpandUsingMovingUids:(id)uids tractList:(id)list;
- (BOOL)isEqual:(id)equal;
- (TSCECellTractRef)initWithCellRefVector:(const void *)vector;
- (TSCECellTractRef)initWithColumns:(const TSUIndexSet *)columns rows:(const TSUIndexSet *)rows tableUID:(const TSKUIDStruct *)d;
- (TSCECellTractRef)initWithCppCellTractRef:(const TSCECellTractRefCore *)ref;
- (TSCECellTractRef)initWithRangeRef:(const TSCERangeRef *)ref;
- (TSCECellTractRef)initWithTopLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right;
- (TSCECellTractRef)initWithTopLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right tableUID:(const TSKUIDStruct *)d;
- (TSCECellTractRef)initWithUidTract:(const void *)tract calcEngine:(id)engine tableUID:(const TSKUIDStruct *)d;
- (TSCECellTractRefCore)cppCellTractRef;
- (TSCERangeCoordinate)boundingRange;
- (TSCERangeRef)boundingRangeRef;
- (TSKUIDStruct)tableUID;
- (TSKUIDStructTract)uidTractWithCalcEngine:(SEL)engine hostTableUID:(id)d;
- (id)collapseOutColumnIndexes:(id)indexes;
- (id)collapseOutRowIndexes:(id)indexes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)edgeExpandUsingIndexes:(id)indexes forRows:(BOOL)rows;
- (id)expandUsingIndexes:(id)indexes forRows:(BOOL)rows;
- (id)fillInColumnGapsUsingIndexes:(id)indexes;
- (id)fillInRowGapsUsingIndexes:(id)indexes;
- (void)foreachAnyRef:(id)ref;
- (void)foreachRangeRef:(id)ref;
- (void)setCppCellTractRef:(TSCECellTractRefCore *)ref;
- (void)setPreserveFlagsOnSubrange:(TSCERangeRef *)subrange;
@end

@implementation TSCECellTractRef

- (TSCECellTractRef)initWithColumns:(const TSUIndexSet *)columns rows:(const TSUIndexSet *)rows tableUID:(const TSKUIDStruct *)d
{
  v12.receiver = self;
  v12.super_class = TSCECellTractRef;
  v8 = [(TSCECellTractRef *)&v12 init];
  if (v8)
  {
    TSCECellTractRefCore::TSCECellTractRefCore(&v11, columns, rows, d);
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    tableUID = v11._tableUID;
    *(v8 + 85) = *(&v11._tableUID._upper + 5);
    *(v8 + 72) = tableUID;
    TSUIndexSet::~TSUIndexSet(&v11._rows);
    TSUIndexSet::~TSUIndexSet(&v11._columns);
  }

  return v8;
}

- (TSCECellTractRef)initWithCppCellTractRef:(const TSCECellTractRefCore *)ref
{
  v7.receiver = self;
  v7.super_class = TSCECellTractRef;
  v4 = [(TSCECellTractRef *)&v7 init];
  if (v4)
  {
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    tableUID = ref->_tableUID;
    *(v4 + 85) = *(&ref->_tableUID._upper + 5);
    *(v4 + 72) = tableUID;
  }

  return v4;
}

- (TSCECellTractRef)initWithTopLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right
{
  v11.receiver = self;
  v11.super_class = TSCECellTractRef;
  v6 = [(TSCECellTractRef *)&v11 init];
  if (v6)
  {
    v10._lower = 0;
    v10._upper = 0;
    TSCECellTractRefCore::TSCECellTractRefCore(&v9, left, right, &v10);
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    tableUID = v9._tableUID;
    *(v6 + 85) = *(&v9._tableUID._upper + 5);
    *(v6 + 72) = tableUID;
    TSUIndexSet::~TSUIndexSet(&v9._rows);
    TSUIndexSet::~TSUIndexSet(&v9._columns);
  }

  return v6;
}

- (TSCECellTractRef)initWithTopLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right tableUID:(const TSKUIDStruct *)d
{
  v12.receiver = self;
  v12.super_class = TSCECellTractRef;
  v8 = [(TSCECellTractRef *)&v12 init];
  if (v8)
  {
    TSCECellTractRefCore::TSCECellTractRefCore(&v11, left, right, d);
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    tableUID = v11._tableUID;
    *(v8 + 85) = *(&v11._tableUID._upper + 5);
    *(v8 + 72) = tableUID;
    TSUIndexSet::~TSUIndexSet(&v11._rows);
    TSUIndexSet::~TSUIndexSet(&v11._columns);
  }

  return v8;
}

- (TSCECellTractRef)initWithRangeRef:(const TSCERangeRef *)ref
{
  if (TSCERangeCoordinate::isValidOrSpanning(&ref->range))
  {
    topLeft = ref->range._topLeft;
    bottomRight = ref->range._bottomRight;
    v14 = topLeft;
    v7 = objc_msgSend_initWithTopLeft_bottomRight_tableUID_(self, v5, &v14, &bottomRight, &ref->_tableUID);
    v8 = TSCERangeRef::preserveFlags(ref);
    self = v7;
    objc_msgSend_setPreserveFlags_(v7, v9, v8, v10, v11);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TSCECellTractRef)initWithCellRefVector:(const void *)vector
{
  v18 = 0;
  v19 = 0;
  TSUIndexSet::TSUIndexSet(&v17);
  TSUIndexSet::TSUIndexSet(&v16);
  v5 = *vector;
  v6 = *(vector + 1);
  if (*vector != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v8 | v7)
      {
        v9 = *(v5 + 8) == v8 && *(v5 + 16) == v7;
      }

      else
      {
        v9 = !TSUIndexSet::count(&v17) && TSUIndexSet::count(&v16) == 0;
        v8 = *(v5 + 8);
        v7 = *(v5 + 16);
        v18 = v8;
        v19 = v7;
      }

      TSUIndexSet::addIndex(&v17);
      TSUIndexSet::addIndex(&v16);
      if (!v9)
      {
        goto LABEL_17;
      }

      v5 += 24;
    }

    while (v5 != v6);
  }

  v10 = TSUIndexSet::count(&v17);
  v11 = TSUIndexSet::count(&v16);
  if (!TSUIndexSet::count(&v17) || !TSUIndexSet::count(&v16) || v11 * v10 != 0xAAAAAAAAAAAAAAABLL * ((*(vector + 1) - *vector) >> 3))
  {
LABEL_17:
    selfCopy = 0;
    goto LABEL_18;
  }

  self = objc_msgSend_initWithColumns_rows_tableUID_(self, v12, &v17, &v16, &v18);
  selfCopy = self;
LABEL_18:
  v14 = selfCopy;
  TSUIndexSet::~TSUIndexSet(&v16);
  TSUIndexSet::~TSUIndexSet(&v17);

  return v14;
}

- (TSCECellTractRef)initWithUidTract:(const void *)tract calcEngine:(id)engine tableUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  TSUIndexSet::TSUIndexSet(&v43);
  TSUIndexSet::TSUIndexSet(&v42);
  if (!engineCopy)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCECellTractRef initWithUidTract:calcEngine:tableUID:]", v10, v11);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRef.mm", v31, v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 109, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    goto LABEL_13;
  }

  v12 = objc_msgSend_resolverForTableUID_(engineCopy, v9, d->_lower, d->_upper, v11);
  v16 = v12;
  if (!v12)
  {
LABEL_13:
    v27 = 0;
    goto LABEL_14;
  }

  v17 = *tract;
  if (*(tract + 1) - *tract != 16 || *v17 || v17[1])
  {
    v18 = objc_msgSend_mutableColumnIndexesForUIDs_(v12, v13, tract, v14, v15);
    MEMORY[0x223D9F7A0](&v41, v18);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v41);
  }

  else
  {
    TSUIndexSet::addIndex(&v43);
  }

  v22 = *(tract + 3);
  v23 = *(tract + 4);
  v24 = tract + 24;
  if (v23 - v22 != 16 || *v22 || v22[1])
  {
    v25 = objc_msgSend_mutableRowIndexesForUIDs_(v16, v19, v24, v20, v21);
    MEMORY[0x223D9F7A0](&v41, v25);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v41);
  }

  else
  {
    TSUIndexSet::addIndex(&v42);
  }

  v27 = objc_msgSend_initWithColumns_rows_tableUID_(self, v26, &v43, &v42, d);
  self = v27;
LABEL_14:
  v39 = v27;
  TSUIndexSet::~TSUIndexSet(&v42);
  TSUIndexSet::~TSUIndexSet(&v43);

  return v39;
}

+ (id)cellTractRefWithUidTractList:(id)list onTable:(const TSKUIDStruct *)table preserveFlags:(TSUPreserveFlags)flags rewriteContext:(TSCEFormulaRewriteContext *)context
{
  listCopy = list;
  v167 = listCopy;
  v168 = context->var0;
  v184[0] = TSCEFormulaRewriteContext::containingTableUID(context);
  v184[1] = v9;
  tableCopy = v184;
  if (*table != 0)
  {
    tableCopy = table;
  }

  v183 = *tableCopy;
  v14 = objc_msgSend_activeUidTract(listCopy, v9, v10, v11, v12);
  v19 = v14;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v165 = v14;
  if (v14)
  {
    v20 = objc_msgSend_columnUids(v14, v15, v16, v17, v18);
    if (&v180 != v20)
    {
      sub_2210BD068(&v180, *v20, v20[1], (v20[1] - *v20) >> 4);
    }

    v25 = objc_msgSend_rowUids(v19, v21, v22, v23, v24);
    if (&v177 != v25)
    {
      sub_2210BD068(&v177, *v25, v25[1], (v25[1] - *v25) >> 4);
    }
  }

  isRangeRef = objc_msgSend_isRangeRef(v19, v15, v16, v17, v18);
  TSCEFormulaRewriteContext::setIsRangeRef(context, isRangeRef);
  objc_msgSend_dropTract_(listCopy, v27, v19, v28, v29);
  v30 = [TSCEMutableUIDSet alloc];
  v170 = objc_msgSend_initWithUUIDVector_(v30, v31, &v180, v32, v33);
  v34 = [TSCEMutableUIDSet alloc];
  v169 = objc_msgSend_initWithUUIDVector_(v34, v35, &v177, v36, v37);
  v46 = objc_msgSend_preserveRectangularRange(v19, v38, v39, v40, v41);
  if (v19)
  {
    v164 = 1;
  }

  else
  {
    v47 = objc_msgSend_includedUidsTract(listCopy, v42, v43, v44, v45);
    v52 = v47;
    v164 = v47 == 0;
    if (v47)
    {
      v53 = objc_msgSend_columnUids(v47, v48, v49, v50, v51);
      objc_msgSend_addUuidsFromVector_(v170, v54, v53, v55, v56);
      v61 = objc_msgSend_rowUids(v52, v57, v58, v59, v60);
      objc_msgSend_addUuidsFromVector_(v169, v62, v61, v63, v64);
      v46 = objc_msgSend_preserveRectangularRange(v52, v65, v66, v67, v68);
      objc_msgSend_dropTract_(listCopy, v69, v52, v70, v71);
    }
  }

  isAllInvalid = objc_msgSend_isAllInvalid(v170, v42, v43, v44, v45);
  v77 = objc_msgSend_isAllInvalid(v169, v73, v74, v75, v76);
  v81 = v77;
  v82 = isAllInvalid & v77;
  if ((isAllInvalid & v77) == 1)
  {
    v83 = MEMORY[0x277D81150];
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "+[TSCECellTractRef cellTractRefWithUidTractList:onTable:preserveFlags:rewriteContext:]", v79, v80);
    v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRef.mm", v86, v87);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v89, v84, v88, 171, 0, "Can't be spanning on both row and column, tractList: %{public}@", listCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v91, v92, v93);
  }

  v94 = objc_opt_new();
  v95 = objc_opt_new();
  v166 = objc_msgSend_tableOrLinkedResolverForTableUID_(v168, v96, &v183, v97, v98);
  TSUIndexSet::TSUIndexSet(&v176);
  TSUIndexSet::TSUIndexSet(&v175);
  if (v81)
  {
    TSUIndexSet::addIndex(&v175);
    if (isAllInvalid)
    {
LABEL_17:
      TSUIndexSet::addIndex(&v176);
      goto LABEL_26;
    }
  }

  else
  {
    if (v166)
    {
      v101 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(v166, v99, v169, 1, v95);
    }

    else
    {
      v101 = 0;
    }

    MEMORY[0x223D9F7A0](&v174, v101);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v174);

    if (isAllInvalid)
    {
      goto LABEL_17;
    }
  }

  if (v166)
  {
    v102 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(v166, v100, v170, 0, v94);
  }

  else
  {
    v102 = 0;
  }

  MEMORY[0x223D9F7A0](&v174, v102);
  TSUIndexSet::operator=();
  TSUIndexSet::~TSUIndexSet(&v174);

LABEL_26:
  v103 = [TSCECellTractRef alloc];
  v105 = objc_msgSend_initWithColumns_rows_tableUID_(v103, v104, &v176, &v175, &v183);
  objc_msgSend_setPreserveRectangular_(v105, v106, v46, v107, v108);
  if (objc_msgSend_count(v94, v109, v110, v111, v112))
  {
    v117 = objc_msgSend_isAllInvalid(v94, v113, v114, v115, v116);
  }

  else
  {
    v117 = 1;
  }

  if (objc_msgSend_count(v95, v113, v114, v115, v116))
  {
    v122 = objc_msgSend_isAllInvalid(v95, v118, v119, v120, v121);
  }

  else
  {
    v122 = 1;
  }

  v123 = TSCEFormulaRewriteContext::restoreBadRefs(context);
  if (TSCEFormulaRewriteContext::useOnlyActiveTract(context))
  {
    v128 = 1;
  }

  else
  {
    v128 = objc_msgSend_duringRollback(v168, v124, v125, v126, v127);
  }

  if (TSUIndexSet::count(&v176) && TSUIndexSet::count(&v175))
  {
    v133 = (v164 || v123) | v117 & v122;
    if (!v82)
    {
      goto LABEL_38;
    }

LABEL_45:
    objc_msgSend_removeAllUuids(v170, v129, v130, v131, v132);
    objc_msgSend_removeAllUuids(v169, v144, v145, v146, v147);
    goto LABEL_46;
  }

  v133 = 0;
  if (v82)
  {
    goto LABEL_45;
  }

LABEL_38:
  if (v133)
  {
    if (!(v128 & 1 | !v164))
    {
      if (objc_msgSend_isInCollaborationMode(v168, v129, v130, v131, v132))
      {
        v138 = objc_msgSend_includedUidsTract(v167, v134, v135, v136, v137);

        if (v138)
        {
          if (v166)
          {
            v143 = objc_msgSend_referenceResolverObject(v166, v139, v140, v141, v142);
          }

          else
          {
            v143 = 0;
          }

          objc_msgSend_edgeExpandTractUsingIncludeUidTract_resolver_forRows_isInverse_(v105, v139, v167, v143, 1, 1);
          objc_msgSend_edgeExpandTractUsingIncludeUidTract_resolver_forRows_isInverse_(v105, v156, v167, v143, 0, 1);
        }
      }
    }

    if (TSCEFormulaRewriteContext::isRangeRef(context))
    {
      v161 = 1;
    }

    else
    {
      v161 = objc_msgSend_isSingleCellOrSpanningRange(v105, v157, v158, v159, v160) ^ 1;
    }

    TSCEFormulaRewriteContext::setIsRangeRef(context, v161);
    v155 = v105;
    goto LABEL_62;
  }

LABEL_46:
  objc_msgSend_addUuidsFromSet_(v94, v129, v170, v131, v132);
  objc_msgSend_addUuidsFromSet_(v95, v148, v169, v149, v150);
  if (!v94)
  {
    memset(&v174, 0, 24);
    if (v95)
    {
      goto LABEL_48;
    }

LABEL_50:
    __p = 0;
    v172 = 0;
    v173 = 0;
    goto LABEL_51;
  }

  objc_msgSend_uuidsAsVector(v94, v151, v152, v153, v154);
  if (!v95)
  {
    goto LABEL_50;
  }

LABEL_48:
  objc_msgSend_uuidsAsVector(v95, v151, v152, v153, v154);
LABEL_51:
  objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_(v167, v151, &v174, &__p, v154);
  if (__p)
  {
    v172 = __p;
    operator delete(__p);
  }

  if (*&v174)
  {
    v174._singleRange._begin = v174;
    operator delete(*&v174);
  }

  v155 = 0;
LABEL_62:
  v162 = v155;

  TSUIndexSet::~TSUIndexSet(&v175);
  TSUIndexSet::~TSUIndexSet(&v176);

  if (v177)
  {
    v178 = v177;
    operator delete(v177);
  }

  if (v180)
  {
    v181 = v180;
    operator delete(v180);
  }

  return v162;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5, v7, v8))
  {
    v9 = equalCopy;
    v14 = v9;
    if (v9)
    {
      objc_msgSend_cppCellTractRef(v9, v10, v11, v12, v13);
    }

    else
    {
      v20 = 0;
      v19 = 0u;
      memset(&v18, 0, sizeof(v18));
      memset(&v17, 0, sizeof(v17));
    }

    v15 = TSCECellTractRefCore::operator==(&self->_cppCellTractRef, &v17);
    TSUIndexSet::~TSUIndexSet(&v18);
    TSUIndexSet::~TSUIndexSet(&v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  TSUIndexSet::operator=();
  TSUIndexSet::operator=();
  tableUID = self->_cppCellTractRef._tableUID;
  *(v4 + 85) = *(&self->_cppCellTractRef._tableUID._upper + 5);
  *(v4 + 72) = tableUID;
  return v4;
}

- (TSKUIDStruct)tableUID
{
  upper = self->_cppCellTractRef._tableUID._upper;
  lower = self->_cppCellTractRef._tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)setPreserveFlagsOnSubrange:(TSCERangeRef *)subrange
{
  topLeft = subrange->range._topLeft;
  bottomRight = subrange->range._bottomRight;
  v9 = objc_msgSend_preserveFlags(self, a2, subrange, v3, v4);
  if (objc_msgSend_spansAllColumns(self, v10, v11, v12, v13))
  {
    goto LABEL_2;
  }

  if (v9)
  {
    if ((v9 & 4) != 0)
    {
      v19 = 1;
      v18 = 4;
    }

    else
    {
      v29 = objc_msgSend_columns(self, v14, v15, v16, v17);
      v18 = 0;
      v19 = TSUIndexSet::firstIndex(v29) == topLeft.column;
    }
  }

  else
  {
    if ((v9 & 4) == 0)
    {
LABEL_2:
      v18 = 0;
      v19 = 0;
      goto LABEL_3;
    }

    v26 = objc_msgSend_columns(self, v14, v15, v16, v17);
    v19 = 0;
    v18 = 4 * (TSUIndexSet::lastIndex(v26) == bottomRight.column);
  }

LABEL_3:
  if (objc_msgSend_spansAllRows(self, v14, v15, v16, v17))
  {
LABEL_4:
    v24 = 0;
    v25 = v18 | v19;
    goto LABEL_21;
  }

  if ((v9 & 2) == 0)
  {
    if ((v9 & 8) == 0)
    {
      goto LABEL_4;
    }

    v27 = objc_msgSend_rows(self, v20, v21, v22, v23);
    Index = TSUIndexSet::lastIndex(v27);
    v25 = v18 | v19;
    if (bottomRight.row != Index)
    {
      v24 = 0;
      goto LABEL_21;
    }

LABEL_20:
    v24 = 8;
    goto LABEL_21;
  }

  if ((v9 & 8) != 0)
  {
    v25 = v18 | v19 | 2;
    goto LABEL_20;
  }

  v30 = objc_msgSend_rows(self, v20, v21, v22, v23);
  v31 = TSUIndexSet::firstIndex(v30);
  v24 = 0;
  v25 = v18 | v19;
  if (topLeft.row == v31)
  {
    v25 = v18 | v19 | 2;
  }

LABEL_21:
  v32._flags = v24 | v25;
  TSCERangeRef::setPreserveFlags(subrange, &v32);
}

- (TSCERangeCoordinate)boundingRange
{
  v6 = objc_msgSend_topLeft(self, a2, v2, v3, v4);
  v11 = objc_msgSend_bottomRight(self, v7, v8, v9, v10);
  v12 = v6;
  result._bottomRight = v11;
  result._topLeft = v12;
  return result;
}

- (TSCERangeRef)boundingRangeRef
{
  v8 = objc_msgSend_boundingRange(self, a3, v3, v4, v5);
  v10 = v9;
  v14 = objc_msgSend_tableUID(self, v9, v11, v12, v13);
  retstr->range._topLeft = v8;
  retstr->range._bottomRight = v10;
  retstr->_tableUID._lower = v14;
  retstr->_tableUID._upper = v15;
  v20._flags = objc_msgSend_preserveFlags(self, v15, v16, v17, v18);
  return TSCERangeRef::setPreserveFlags(retstr, &v20);
}

- (TSKUIDStructTract)uidTractWithCalcEngine:(SEL)engine hostTableUID:(id)d
{
  dCopy = d;
  __p[0] = 0;
  __p[1] = 0;
  v60 = 0;
  v57[0] = 0;
  v57[1] = 0;
  v58 = 0;
  if (!dCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCECellTractRef uidTractWithCalcEngine:hostTableUID:]", v10, v11);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRef.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 495, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    goto LABEL_18;
  }

  lower = objc_msgSend_tableUID(self, v8, v9, v10, v11);
  if (lower)
  {
    goto LABEL_7;
  }

  if (!upper)
  {
    lower = a5->_lower;
    upper = a5->_upper;
LABEL_7:
    objc_msgSend_resolverForTableUID_(dCopy, upper, lower, upper, v15);
    goto LABEL_8;
  }

  objc_msgSend_resolverForTableUID_(dCopy, upper, 0, upper, v15);
  v31 = LABEL_8:;
  if (v31)
  {
    if (objc_msgSend_spansAllColumns(self, v27, v28, v29, v30))
    {
      v55 = 0uLL;
      sub_221083454(__p, &v55);
    }

    else
    {
      v40 = objc_msgSend_columns(self, v32, v33, v34, v35);
      v41 = TSUIndexSet::asNSIndexSet(v40);
      objc_msgSend_columnUIDsForColumnIndexes_(v31, v42, v41, v43, v44);
      *__p = v55;
      v60 = v56;
      v56 = 0;
      v55 = 0uLL;
    }

    if (objc_msgSend_spansAllRows(self, v36, v37, v38, v39))
    {
      v55 = 0uLL;
      sub_221083454(v57, &v55);
    }

    else
    {
      v49 = objc_msgSend_rows(self, v45, v46, v47, v48);
      v50 = TSUIndexSet::asNSIndexSet(v49);
      objc_msgSend_rowUIDsForRowIndexes_(v31, v51, v50, v52, v53);
      if (v57[0])
      {
        v57[1] = v57[0];
        operator delete(v57[0]);
      }

      *v57 = v55;
      v58 = v56;
      v56 = 0;
      v55 = 0uLL;
    }
  }

LABEL_18:
  sub_2210BBBE8(retstr, __p, v57);
  if (v57[0])
  {
    v57[1] = v57[0];
    operator delete(v57[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_new();
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2210EF00C;
  v11[3] = &unk_27845EAB0;
  v11[4] = self;
  v13 = v14;
  v4 = v3;
  v12 = v4;
  objc_msgSend_foreachCellRect_(self, v5, v11, v6, v7);
  v8 = v12;
  v9 = v4;

  _Block_object_dispose(v14, 8);

  return v9;
}

- (void)foreachAnyRef:(id)ref
{
  refCopy = ref;
  if (objc_msgSend_spansAllColumns(self, v5, v6, v7, v8))
  {
    objc_msgSend_rows(self, v9, v10, v11, v12);
    v13 = v20;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2210EF2D8;
    v20[3] = &unk_27845EAD8;
    v20[4] = self;
    v20[5] = refCopy;
    TSUIndexSet::enumerateRangesUsingBlock();
  }

  else if (objc_msgSend_spansAllRows(self, v9, v10, v11, v12))
  {
    objc_msgSend_columns(self, v14, v15, v16, v17);
    v13 = v19;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2210EF384;
    v19[3] = &unk_27845EAD8;
    v19[4] = self;
    v19[5] = refCopy;
    TSUIndexSet::enumerateRangesUsingBlock();
  }

  else
  {
    objc_msgSend_rows(self, v14, v15, v16, v17);
    v13 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2210EF434;
    v18[3] = &unk_27845EAD8;
    v18[4] = self;
    v18[5] = refCopy;
    TSUIndexSet::enumerateRangesUsingBlock();
  }
}

- (void)foreachRangeRef:(id)ref
{
  refCopy = ref;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2210EF6F0;
  v9[3] = &unk_27845EB28;
  v9[4] = self;
  v10 = refCopy;
  v5 = refCopy;
  objc_msgSend_foreachCellRect_(self, v6, v9, v7, v8);
}

- (id)collapseOutColumnIndexes:(id)indexes
{
  v3 = TSCECellTractRefCore::collapseOutColumnIndexes(&self->_cppCellTractRef, indexes);

  return v3;
}

- (id)collapseOutRowIndexes:(id)indexes
{
  v3 = TSCECellTractRefCore::collapseOutRowIndexes(&self->_cppCellTractRef, indexes);

  return v3;
}

- (id)fillInColumnGapsUsingIndexes:(id)indexes
{
  v3 = TSCECellTractRefCore::fillInColumnGapsUsingIndexes(&self->_cppCellTractRef, indexes);

  return v3;
}

- (id)fillInRowGapsUsingIndexes:(id)indexes
{
  v3 = TSCECellTractRefCore::fillInRowGapsUsingIndexes(&self->_cppCellTractRef, indexes);

  return v3;
}

- (BOOL)edgeExpandTractUsingIncludeUidTract:(id)tract resolver:(id)resolver forRows:(BOOL)rows isInverse:(BOOL)inverse
{
  inverseCopy = inverse;
  rowsCopy = rows;
  tractCopy = tract;
  resolverCopy = resolver;
  v16 = resolverCopy;
  v17 = 0;
  if (tractCopy && resolverCopy)
  {
    v18 = objc_msgSend_includedUidsTract(tractCopy, v12, v13, v14, v15);
    v23 = v18;
    if (v18)
    {
      v24 = objc_msgSend_rowUids(v18, v19, v20, v21, v22);
      __p[0] = 0;
      __p[1] = 0;
      v77 = 0;
      sub_221086EBC(__p, *v24, v24[1], (v24[1] - *v24) >> 4);
      v29 = objc_msgSend_columnUids(v23, v25, v26, v27, v28);
      v74[0] = 0;
      v74[1] = 0;
      v75 = 0;
      sub_221086EBC(v74, *v29, v29[1], (v29[1] - *v29) >> 4);
      if (rowsCopy)
      {
        objc_msgSend_mutableIndexesForUIDs_isRows_(v16, v30, __p, rowsCopy, v31);
      }

      else
      {
        objc_msgSend_mutableIndexesForUIDs_isRows_(v16, v30, v74, rowsCopy, v31);
      }
      v34 = ;
      if (inverseCopy)
      {
        objc_msgSend_expandUsingIndexes_forRows_(self, v32, v34, rowsCopy, v33);
      }

      else
      {
        objc_msgSend_edgeExpandUsingIndexes_forRows_(self, v32, v34, rowsCopy, v33);
      }
      v35 = ;
      v40 = objc_msgSend_count(v35, v36, v37, v38, v39);
      v17 = v40 != 0;
      if (v40)
      {
        v43 = objc_msgSend_UIDSetForIndexes_isRows_(v16, v41, v35, rowsCopy, v42);
        v44 = [TSCEUIDSet alloc];
        v52 = objc_msgSend_initWithUUIDVector_(v44, v45, __p, v46, v47);
        if (rowsCopy)
        {
          if (v43)
          {
            objc_msgSend_uuidsAsVector(v43, v48, v49, v50, v51);
          }

          else
          {
            v69 = 0;
            v70 = 0;
            v71 = 0;
          }

          v53 = objc_msgSend_reducedSetMinusUuidsFromVector_(v52, v48, &v69, v50, v51);
          v58 = v53;
          if (v53)
          {
            objc_msgSend_uuidsAsVector(v53, v54, v55, v56, v57);
          }

          else
          {
            v72 = 0uLL;
            v73 = 0;
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          *__p = v72;
          v77 = v73;
        }

        else
        {
          if (v43)
          {
            objc_msgSend_uuidsAsVector(v43, v48, v49, v50, v51);
          }

          else
          {
            v69 = 0;
            v70 = 0;
            v71 = 0;
          }

          v59 = objc_msgSend_reducedSetMinusUuidsFromVector_(v52, v48, &v69, v50, v51);
          v58 = v59;
          if (v59)
          {
            objc_msgSend_uuidsAsVector(v59, v60, v61, v62, v63);
          }

          else
          {
            v72 = 0uLL;
            v73 = 0;
          }

          if (v74[0])
          {
            v74[1] = v74[0];
            operator delete(v74[0]);
          }

          *v74 = v72;
          v75 = v73;
        }

        v73 = 0;
        v72 = 0uLL;

        if (v69)
        {
          v70 = v69;
          operator delete(v69);
        }

        objc_msgSend_dropTract_(tractCopy, v64, v23, v65, v66);
        objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(tractCopy, v67, v74, __p, 1, 1);
      }

      if (v74[0])
      {
        v74[1] = v74[0];
        operator delete(v74[0]);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (BOOL)edgeExpandUsingMovingUids:(id)uids tractList:(id)list
{
  uidsCopy = uids;
  listCopy = list;
  v12 = objc_msgSend_includedUidsTract(listCopy, v8, v9, v10, v11);
  v17 = objc_msgSend_removedByMoveUidTract(listCopy, v13, v14, v15, v16);
  v22 = v17;
  v23 = 0;
  if (uidsCopy && v12 && v17)
  {
    v24 = objc_msgSend_rowUids(v12, v18, v19, v20, v21);
    v119 = 0uLL;
    v120 = 0;
    sub_221086EBC(&v119, *v24, v24[1], (v24[1] - *v24) >> 4);
    v29 = objc_msgSend_columnUids(v12, v25, v26, v27, v28);
    __p[0] = 0;
    __p[1] = 0;
    v118 = 0;
    sub_221086EBC(__p, *v29, v29[1], (v29[1] - *v29) >> 4);
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v34 = objc_msgSend_rowUids(v22, v30, v31, v32, v33);
    v111 = 0;
    v112 = 0;
    v113 = 0;
    sub_221086EBC(&v111, *v34, v34[1], (v34[1] - *v34) >> 4);
    v39 = objc_msgSend_columnUids(v22, v35, v36, v37, v38);
    v108 = 0;
    v109 = 0;
    v110 = 0;
    sub_221086EBC(&v108, *v39, v39[1], (v39[1] - *v39) >> 4);
    v40 = [TSCEUIDSet alloc];
    if (objc_msgSend_isRows(uidsCopy, v41, v42, v43, v44))
    {
      v48 = objc_msgSend_initWithUUIDVector_(v40, v45, &v111, v46, v47);
    }

    else
    {
      v48 = objc_msgSend_initWithUUIDVector_(v40, v45, &v108, v46, v47);
    }

    v53 = v48;
    if (objc_msgSend_isRows(uidsCopy, v49, v50, v51, v52))
    {
      v59 = *(&v119 + 1);
      for (i = v119; i != v59; i += 16)
      {
        if ((objc_msgSend_containsUuid_(v53, v54, *i, *(i + 8), v57) & 1) == 0)
        {
          sub_221083454(&v114, i);
        }
      }
    }

    else
    {
      v60 = __p[0];
      v61 = __p[1];
      while (v60 != v61)
      {
        if ((objc_msgSend_containsUuid_(v53, v54, *v60, v60[1], v57) & 1) == 0)
        {
          sub_221083454(&v114, v60);
        }

        v60 += 2;
      }
    }

    v62 = objc_msgSend_rowOrColumnUids(uidsCopy, v54, v55, v56, v57);
    v67 = objc_msgSend_indexes(v62, v63, v64, v65, v66);
    v72 = objc_msgSend_mutableCopy(v67, v68, v69, v70, v71);

    isRows = objc_msgSend_isRows(uidsCopy, v73, v74, v75, v76);
    v80 = objc_msgSend_edgeExpandUsingIndexes_forRows_(self, v78, v72, isRows, v79);
    v85 = objc_msgSend_count(v80, v81, v82, v83, v84);
    v23 = v85 != 0;
    if (v85)
    {
      objc_msgSend_removeIndexes_(v72, v86, v80, v87, v88);
      if (objc_msgSend_isRows(uidsCopy, v89, v90, v91, v92))
      {
        objc_msgSend_uuidsForIndexes_(uidsCopy, v93, v72, v94, v95);
        if (v119)
        {
          *(&v119 + 1) = v119;
          operator delete(v119);
        }

        v119 = v106;
        v120 = v107;
      }

      else
      {
        objc_msgSend_uuidsForIndexes_(uidsCopy, v93, v72, v94, v95);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = v106;
        v118 = v107;
      }

      objc_msgSend_dropTract_(listCopy, v96, v12, v97, v98);
      if (objc_msgSend_isRows(uidsCopy, v99, v100, v101, v102))
      {
        v103 = &v119;
      }

      else
      {
        v103 = __p;
      }

      sub_2210F0C88(v103, v103[1], v114, v115, (v115 - v114) >> 4);
      objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(listCopy, v104, __p, &v119, 1, 1);
    }

    if (v108)
    {
      v109 = v108;
      operator delete(v108);
    }

    if (v111)
    {
      v112 = v111;
      operator delete(v111);
    }

    if (v114)
    {
      v115 = v114;
      operator delete(v114);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v119)
    {
      *(&v119 + 1) = v119;
      operator delete(v119);
    }
  }

  return v23;
}

- (id)edgeExpandUsingIndexes:(id)indexes forRows:(BOOL)rows
{
  rowsCopy = rows;
  indexesCopy = indexes;
  if (objc_msgSend_isValid(self, v7, v8, v9, v10) && objc_msgSend_count(indexesCopy, v11, v12, v13, v14))
  {
    v19 = objc_opt_new();
    if (rowsCopy)
    {
      v20 = objc_msgSend_rows(self, v15, v16, v17, v18);
      Index = TSUIndexSet::firstIndex(v20);
      v26 = objc_msgSend_rows(self, v22, v23, v24, v25);
    }

    else
    {
      v29 = objc_msgSend_columns(self, v15, v16, v17, v18);
      Index = TSUIndexSet::firstIndex(v29);
      v26 = objc_msgSend_columns(self, v30, v31, v32, v33);
    }

    v34 = TSUIndexSet::lastIndex(v26);
    v41 = objc_msgSend_indexLessThanIndex_(indexesCopy, v35, Index, v36, v37);
    while (v41 != 0x7FFFFFFFFFFFFFFFLL && Index - 1 == v41)
    {
      v42 = v41;
      objc_msgSend_addIndex_(v19, v38, v41, v39, v40);
      v41 = objc_msgSend_indexLessThanIndex_(indexesCopy, v43, v41, v44, v45);
      Index = v42;
    }

    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = sub_2210F02CC;
    v68[3] = &unk_27845E1D0;
    v46 = v19;
    v69 = v46;
    objc_msgSend_enumerateRangesInRange_options_usingBlock_(indexesCopy, v47, Index, v34 - Index + 1, 0, v68);
    for (i = objc_msgSend_indexGreaterThanIndex_(indexesCopy, v48, v34, v49, v50); i != 0x7FFFFFFFFFFFFFFFLL && v34 + 1 == i; i = objc_msgSend_indexGreaterThanIndex_(indexesCopy, v56, i, v57, v58))
    {
      objc_msgSend_addIndex_(v46, v51, i, v52, v53);
      v34 = i;
    }

    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_2210F02DC;
    v66[3] = &unk_27845EB50;
    v67 = rowsCopy;
    v66[4] = self;
    objc_msgSend_enumerateRangesUsingBlock_(v46, v51, v66, v52, v53);

    v27 = v46;
    v28 = objc_msgSend_count(v46, v59, v60, v61, v62);
  }

  else
  {
    v27 = 0;
    v28 = objc_msgSend_count(0, v11, v12, v13, v14);
  }

  if (v28)
  {
    v63 = v27;
  }

  else
  {
    v63 = 0;
  }

  v64 = v63;

  return v63;
}

- (id)expandUsingIndexes:(id)indexes forRows:(BOOL)rows
{
  indexesCopy = indexes;
  if (objc_msgSend_isValid(self, v7, v8, v9, v10) && objc_msgSend_count(indexesCopy, v11, v12, v13, v14))
  {
    v15 = objc_msgSend_mutableCopy(indexesCopy, v11, v12, v13, v14);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2210F0444;
    v28[3] = &unk_27845EB50;
    rowsCopy = rows;
    v28[4] = self;
    objc_msgSend_enumerateRangesUsingBlock_(v15, v16, v28, v17, v18);
    v19 = v15;
    v24 = objc_msgSend_count(v15, v20, v21, v22, v23);
  }

  else
  {
    v19 = 0;
    v24 = objc_msgSend_count(0, v11, v12, v13, v14);
  }

  if (v24)
  {
    v25 = v19;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  return v25;
}

- (TSCECellTractRefCore)cppCellTractRef
{
  *&retstr->_columns |= 3u;
  *&v5.f64[0] = 0x8000000080000000;
  *&v5.f64[1] = 0x8000000080000000;
  v7 = vnegq_f64(v5);
  retstr->_columns._singleRange = v7;
  retstr->_columns._multipleRanges = 0;
  TSUIndexSet::operator=();
  *&retstr->_rows |= 3u;
  retstr->_rows._singleRange = v7;
  retstr->_rows._multipleRanges = 0;
  result = TSUIndexSet::operator=();
  retstr->_tableUID = self->_cppCellTractRef._tableUID;
  *(&retstr->_tableUID._upper + 5) = *(&self->_cppCellTractRef._tableUID._upper + 5);
  return result;
}

- (void)setCppCellTractRef:(TSCECellTractRefCore *)ref
{
  TSUIndexSet::operator=();
  TSUIndexSet::operator=();
  v5 = *(&ref->_tableUID._upper + 5);
  self->_cppCellTractRef._tableUID = ref->_tableUID;
  *(&self->_cppCellTractRef._tableUID._upper + 5) = v5;
}

@end