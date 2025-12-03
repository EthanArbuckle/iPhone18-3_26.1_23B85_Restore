@interface TSCEFormulaRewriteSpec
- (BOOL)adjustViewTractRef:(id)ref calcEngine:(id)engine containingCellRef:(const TSCECellRef *)cellRef undoTractList:(id *)list;
- (BOOL)isForTable:(const TSKUIDStruct *)table;
- (TSCECellRef)flattenedCellRefForCategoryRef:(SEL)ref calcEngine:(id)engine;
- (TSCECellRef)originalCellRefForUpdatedCellRef:(SEL)ref;
- (TSCECellRef)updatedCellRefForOriginalCellRef:(SEL)ref;
- (TSCEFormulaRewriteSpec)initWithRewriteType:(unsigned int)type;
- (TSCERangeCoordinate)affectedRange;
- (TSKUIDStruct)affectedConditionalStyleOwnerUID;
- (TSKUIDStruct)affectedOwnerUID;
- (TSKUIDStruct)conditionalStyleOwnerUID;
- (TSKUIDStruct)fromTableUID;
- (TSKUIDStruct)groupByUID;
- (TSKUIDStruct)insertAtUid;
- (TSKUIDStruct)insertOppositeUid;
- (TSKUIDStruct)tableUID;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)expandedRowColumnUuids;
- (TSUCellRect)mergeRangeAtOriginalCellRef:(const TSCECellRef *)ref;
- (TSUCellRect)tableRangeForTable:(const TSKUIDStruct *)table calcEngine:(id)engine;
- (id).cxx_construct;
- (id)amendRewriteWithCalcEngine:(id)engine;
- (id)coordMapperForTableUID:(const TSKUIDStruct *)d calcEngine:(id)engine;
- (id)description;
- (id)prepareToRewriteWithCalcEngine:(id)engine;
- (id)restoreViewTractRefFromUndoTractList:(id)list calcEngine:(id)engine containingCellRef:(const TSCECellRef *)ref;
- (unordered_set<TSKUIDStruct,)affectedOwnerUIDs;
- (void)addCoordMapper:(id)mapper;
- (void)addNestedRewrite:(id)rewrite;
- (void)clearTableIndexes;
- (void)didModifySrcTable:(id)table dstTable:(id)dstTable;
- (void)didModifyTable:(id)table;
- (void)didModifyTable:(id)table calcEngine:(id)engine;
- (void)loadMergeRangesContainingFormulasInTable:(id)table calcEngine:(id)engine;
- (void)willModifySrcTable:(id)table srcUidResolver:(id)resolver dstTable:(id)dstTable dstUidResolver:(id)uidResolver;
- (void)willModifyTable:(id)table uidResolver:(id)resolver calcEngine:(id)engine;
@end

@implementation TSCEFormulaRewriteSpec

- (TSCEFormulaRewriteSpec)initWithRewriteType:(unsigned int)type
{
  v5.receiver = self;
  v5.super_class = TSCEFormulaRewriteSpec;
  result = [(TSCEFormulaRewriteSpec *)&v5 init];
  if (result)
  {
    result->_rewriteType = type;
    result->_coordMappersLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    result->_tableUID = 0u;
    result->_conditionalStyleOwnerUID = 0u;
    result->_groupByUID._lower = 0;
    result->_groupByUID._upper = 0;
    result->_tableRange = xmmword_2217E0E0C;
    *&result->_isInverse = 256;
    result->_forSpillFormulasOnly = 0;
  }

  return result;
}

- (TSKUIDStruct)insertAtUid
{
  v5 = objc_msgSend_insertAtUid(self->_rowColumnInfo, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)insertOppositeUid
{
  inserted = objc_msgSend_insertOppositeUid(self->_rowColumnInfo, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = inserted;
  return result;
}

- (id)coordMapperForTableUID:(const TSKUIDStruct *)d calcEngine:(id)engine
{
  engineCopy = engine;
  if (*d == 0)
  {
    v18 = 0;
    goto LABEL_19;
  }

  v37 = *d;
  if (v37._lower == objc_msgSend_conditionalStyleOwnerUID(self, v6, v7, v8, v9) && v37._upper == v11)
  {
    v37._lower = objc_msgSend_tableUID(self, v11, v12, v13, v14);
    v37._upper = v16;
  }

  os_unfair_lock_lock(&self->_coordMappersLock);
  v17 = sub_2210875C4(&self->_coordMappersByTableUID.__table_.__bucket_list_.__ptr_, &v37);
  if (!v17)
  {
    os_unfair_lock_unlock(&self->_coordMappersLock);
    if (engineCopy)
    {
      goto LABEL_11;
    }

LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  v18 = v17[4];
  os_unfair_lock_unlock(&self->_coordMappersLock);
  if (v18)
  {
    goto LABEL_19;
  }

  if (!engineCopy)
  {
    goto LABEL_16;
  }

LABEL_11:
  v22 = objc_msgSend_tableOrLinkedResolverForTableUID_(engineCopy, v19, &v37, v20, v21);
  v27 = v22;
  if (v22)
  {
    v18 = objc_msgSend_coordMapper(v22, v23, v24, v25, v26);
    v32 = objc_msgSend_tableUID(v18, v28, v29, v30, v31);
    if (*v32 == v37)
    {
      objc_msgSend_addCoordMapper_(self, v33, v18, v34, v35);
    }

    goto LABEL_18;
  }

LABEL_17:
  v18 = 0;
LABEL_18:

LABEL_19:

  return v18;
}

- (void)addCoordMapper:(id)mapper
{
  mapperCopy = mapper;
  if (mapperCopy)
  {
    os_unfair_lock_lock(&self->_coordMappersLock);
    v10 = objc_msgSend_tableUID(mapperCopy, v6, v7, v8, v9);
    v11 = sub_2210875C4(&self->_coordMappersByTableUID.__table_.__bucket_list_.__ptr_, v10);
    if (v11)
    {
      if (v11[4] != mapperCopy)
      {
        v16 = MEMORY[0x277D81150];
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCEFormulaRewriteSpec addCoordMapper:]", v14, v15);
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v19, v20);
        v26 = objc_msgSend_tableUID(mapperCopy, v22, v23, v24, v25);
        v27 = TSKUIDStruct::description(v26);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v28, v17, v21, 178, 0, "Replacing same tableUID with a different coordMapper - expect trouble: %@", v27);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
      }
    }

    else
    {
      v34 = objc_msgSend_tableUID(mapperCopy, v12, v13, v14, v15);
      v33 = sub_221244808(&self->_coordMappersByTableUID.__table_.__bucket_list_.__ptr_, v34);
      objc_storeStrong(v33 + 4, mapper);
    }

    os_unfair_lock_unlock(&self->_coordMappersLock);
  }
}

- (id)description
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v42.receiver = self;
  v42.super_class = TSCEFormulaRewriteSpec;
  v4 = [(TSCEFormulaRewriteSpec *)&v42 description];
  v8 = objc_msgSend_initWithString_(v3, v5, v4, v6, v7);

  v13 = sub_2212C7204(self->_rewriteType, v9, v10, v11, v12);
  v17 = v13;
  if (self->_isInverse)
  {
    objc_msgSend_appendFormat_(v8, v14, @" type: %@ %@", v15, v16, v13, @"(inverse)");
  }

  else
  {
    objc_msgSend_appendFormat_(v8, v14, @" type: %@ %@", v15, v16, v13, &stru_2834BADA0);
  }

  v18 = TSKUIDStruct::description(&self->_tableUID);
  objc_msgSend_appendFormat_(v8, v19, @" tableUID: %@", v20, v21, v18);

  if (objc_msgSend_count(self->_nestedRewrites, v22, v23, v24, v25))
  {
    objc_msgSend_appendString_(v8, v26, @"\nNested rewrites:\n", v27, v28);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = self->_nestedRewrites;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v38, v43, 16);
    if (v34)
    {
      v35 = *v39;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v39 != v35)
          {
            objc_enumerationMutation(v29);
          }

          objc_msgSend_appendFormat_(v8, v31, @"   (nested): %@\n", v32, v33, *(*(&v38 + 1) + 8 * i));
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v38, v43, 16);
      }

      while (v34);
    }
  }

  return v8;
}

- (TSKUIDStruct)affectedOwnerUID
{
  rewriteType = self->_rewriteType;
  if (rewriteType > 0x12)
  {
    goto LABEL_7;
  }

  v6 = 1 << rewriteType;
  if ((v6 & 0x61BBF) == 0)
  {
    if ((v6 & 0xC040) != 0)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec affectedOwnerUID]", v2, v3);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v12, v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 275, 0, "Shouldn't ask for the affected owner ID of a move, since there may be two.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
      lower = objc_msgSend_srcTableUID(self->_regionMovedInfo, v20, v21, v22, v23);
      goto LABEL_8;
    }

    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec affectedOwnerUID]", v2, v3);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 282, 0, "Not a meaningful question, there are numerous tables affected");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
LABEL_7:
    upper = 0;
    lower = 0;
    goto LABEL_8;
  }

  lower = self->_tableUID._lower;
  upper = self->_tableUID._upper;
LABEL_8:
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (unordered_set<TSKUIDStruct,)affectedOwnerUIDs
{
  selfCopy = self;
  retstr->__table_.__bucket_list_ = 0u;
  *&retstr->__table_.__first_node_.__next_ = 0u;
  retstr->__table_.__max_load_factor_ = 1.0;
  size = self->__table_.__bucket_list_.__deleter_.__size_;
  if (size <= 9)
  {
    if (size >= 6 && (size - 7) >= 3)
    {
      if (size != 6)
      {
        return self;
      }

LABEL_14:
      v17 = objc_msgSend_srcTableUID(self[2].__table_.__size_, a3, v3, v4, v5);
      v18 = v10;
      sub_2211D6484(retstr, &v17);
      v17 = objc_msgSend_dstTableUID(selfCopy[2].__table_.__size_, v11, v12, v13, v14);
      v18 = v15;
      return sub_2211D6484(retstr, &v17);
    }

    goto LABEL_11;
  }

  if (size <= 0x12)
  {
    if (((1 << size) & 0x61800) != 0)
    {
LABEL_11:
      p_next = &self->__table_.__first_node_.__next_;
      return sub_2210C2B00(retstr, p_next);
    }

    if (((1 << size) & 0xC000) != 0)
    {
      goto LABEL_14;
    }

    if (((1 << size) & 0x12000) != 0)
    {
      p_next = objc_msgSend_groupByUid(self[3].__table_.__size_, a3, v3, v4, v5);
      return sub_2210C2B00(retstr, p_next);
    }
  }

  if (size == 10)
  {
    self = objc_msgSend_tableUIDMap(self[3].__table_.__first_node_.__next_, a3, v3, v4, v5);
    for (i = &self->__table_.__first_node_; ; self = sub_2210C2B00(retstr, &i[4].__next_))
    {
      i = i->__next_;
      if (!i)
      {
        break;
      }

      sub_2210C2B00(retstr, &i[2].__next_);
    }
  }

  return self;
}

- (TSKUIDStruct)affectedConditionalStyleOwnerUID
{
  rewriteType = self->_rewriteType;
  if (rewriteType > 0x11)
  {
    goto LABEL_6;
  }

  if (((1 << rewriteType) & 0x21BBC) == 0)
  {
    if (rewriteType == 10)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec affectedConditionalStyleOwnerUID]", v2, v3);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v11, v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 353, 0, "Not a meaningful question, there are numerous tables affected");
LABEL_7:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
      upper = 0;
      lower = 0;
      goto LABEL_8;
    }

LABEL_6:
    v15 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec affectedConditionalStyleOwnerUID]", v2, v3);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v9, v13, 336, 0, "Not implemented for these rewrite types.");
    goto LABEL_7;
  }

  lower = self->_conditionalStyleOwnerUID._lower;
  upper = self->_conditionalStyleOwnerUID._upper;
LABEL_8:
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (BOOL)isForTable:(const TSKUIDStruct *)table
{
  lower = table->_lower;
  if (table->_lower == self->_tableUID._lower && table->_upper == self->_tableUID._upper || lower == self->_conditionalStyleOwnerUID._lower && table->_upper == self->_conditionalStyleOwnerUID._upper)
  {
    return 1;
  }

  if (lower == self->_groupByUID._lower)
  {
    return table->_upper == self->_groupByUID._upper;
  }

  return 0;
}

- (TSUCellRect)tableRangeForTable:(const TSKUIDStruct *)table calcEngine:(id)engine
{
  engineCopy = engine;
  if (*table == *&self->_tableUID || table->_lower == self->_conditionalStyleOwnerUID._lower && table->_upper == self->_conditionalStyleOwnerUID._upper)
  {
    if (TSUCellRect::isValid(&self->_tableRange))
    {
      origin = self->_tableRange.origin;
      size = self->_tableRange.size;
      goto LABEL_13;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_msgSend_tableOrLinkedResolverForTableUID_(engineCopy, v6, table, v7, v8);
  v18 = v13;
  if (v13)
  {
    v24._topLeft = objc_msgSend_tableRangeCoordinate(v13, v14, v15, v16, v17);
    v24._bottomRight = v19;
    TSCERangeCoordinate::asCellRect(&v24);
    origin = v20;
    size = v21;
    if (v12)
    {
      self->_tableRange.origin = v20;
      self->_tableRange.size = v21;
    }
  }

  else
  {
    size = 0;
    origin = 0x7FFF7FFFFFFFLL;
  }

LABEL_13:
  v22 = origin;
  v23 = size;
  result.size = v23;
  result.origin = v22;
  return result;
}

- (TSCECellRef)updatedCellRefForOriginalCellRef:(SEL)ref
{
  selfCopy = self;
  lower = a4->_tableUID._lower;
  upper = a4->_tableUID._upper;
  v206 = lower;
  v207 = upper;
  coordinate = a4->coordinate;
  v11 = coordinate;
  *retstr = *a4;
  v12 = self->_tableUID._lower;
  if (v12 > 7)
  {
    if (v12 <= 11)
    {
      if (v12 != 8)
      {
        if (v12 == 9)
        {
          self = objc_msgSend_isForTable_(self, ref, &v206, v4, v5);
          if (!self)
          {
            return self;
          }

          v181 = objc_msgSend_mergeOriginsMap(*&selfCopy[5].coordinate, v177, v178, v179, v180);
          self = sub_221244A70(v181, &coordinate);
          if (!self)
          {
            return self;
          }

          v13 = self[1].coordinate;
        }

        else
        {
          if (v12 != 11)
          {
            return self;
          }

          self = objc_msgSend_isForTable_(self, ref, &v206, v4, v5);
          if (!self)
          {
            return self;
          }

          v13 = (__ROR8__(v11, 32) & 0xFFFF0000FFFFLL);
        }

        retstr->coordinate = v13;
        return self;
      }

      self = objc_msgSend_isForTable_(self, ref, &v206, v4, v5);
      if (!self)
      {
        return self;
      }

      v14 = selfCopy[4]._tableUID._upper;
      v80 = objc_msgSend_mergeRegion(v14, v146, v147, v148, v149);
      v154 = objc_msgSend_mergeSource(v14, v150, v151, v152, v153);
      if (*v154 != 0x7FFFFFFF && (*v154 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v160 = objc_msgSend_columnUids(v80, v155, v156, v157, v158);
        if (objc_msgSend_containsIndex_(v160, v161, WORD2(v11), v162, v163))
        {
          v168 = objc_msgSend_rowUids(v80, v164, v165, v166, v167);
          v172 = objc_msgSend_containsIndex_(v168, v169, v11, v170, v171);

          if (v172)
          {
            retstr->coordinate = *objc_msgSend_mergeSource(v14, v173, v174, v175, v176);
          }
        }

        else
        {
        }
      }

      goto LABEL_77;
    }

    if ((v12 - 14) >= 2)
    {
      if (v12 != 12)
      {
        return self;
      }

      goto LABEL_14;
    }

LABEL_34:
    if (lower != objc_msgSend_srcTableUID(self[4]._tableUID._lower, ref, a4, v4, v5) || upper != v70)
    {
      self = objc_msgSend_srcCondStyleOwnerUID(selfCopy[4]._tableUID._lower, v70, v71, v72, v73);
      if (lower != self || upper != v75)
      {
        return self;
      }
    }

    v14 = selfCopy[4]._tableUID._lower;
    v80 = objc_msgSend_srcColumnUids(v14, v76, v77, v78, v79);
    if (objc_msgSend_containsIndex_(v80, v81, WORD2(v11), v82, v83))
    {
      v88 = objc_msgSend_srcRowUids(v14, v84, v85, v86, v87);
      v92 = objc_msgSend_containsIndex_(v88, v89, v11, v90, v91);

      if (v92)
      {
        v97 = objc_msgSend_srcColumnUids(v14, v93, v94, v95, v96);
        *&v203 = objc_msgSend_uidForIndex_(v97, v98, WORD2(v11), v99, v100);
        *(&v203 + 1) = v101;

        v106 = objc_msgSend_srcRowUids(v14, v102, v103, v104, v105);
        *&v201 = objc_msgSend_uidForIndex_(v106, v107, v11, v108, v109);
        *(&v201 + 1) = v110;

        v200[0] = objc_msgSend_dstUidForSrcUid_(v14, v111, &v203, v112, v113);
        v200[1] = v114;
        v199[0] = objc_msgSend_dstUidForSrcUid_(v14, v114, &v201, v115, v116);
        v199[1] = v117;
        v121 = objc_msgSend_dstColumnUids(v14, v117, v118, v119, v120);
        retstr->coordinate.column = objc_msgSend_columnIndexForUid_(v121, v122, v200, v123, v124);

        v129 = objc_msgSend_dstRowUids(v14, v125, v126, v127, v128);
        retstr->coordinate.row = objc_msgSend_rowIndexForUid_(v129, v130, v199, v131, v132);

        v137 = objc_msgSend_srcTableUID(v14, v133, v134, v135, v136);
        if (v206 == v137 && v207 == v138)
        {
          v142 = objc_msgSend_dstTableUID(v14, v138, v139, v140, v141);
        }

        else
        {
          v142 = objc_msgSend_dstCondStyleOwnerUID(v14, v138, v139, v140, v141);
        }

        retstr->_tableUID._lower = v142;
        retstr->_tableUID._upper = v143;
      }

      goto LABEL_78;
    }

LABEL_77:

LABEL_78:
    return self;
  }

  if (v12 > 5)
  {
    if (v12 != 6)
    {
      self = objc_msgSend_isForTable_(self, ref, &v206, v4, v5);
      if (!self)
      {
        return self;
      }

      v14 = objc_msgSend_mergeRegion(selfCopy[4]._tableUID._upper, v39, v40, v41, v42);
      v51 = *objc_msgSend_mergeSource(selfCopy[4]._tableUID._upper, v43, v44, v45, v46);
      if (v51 == 0x7FFFFFFF || (v51 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v51 = objc_msgSend_topLeftCellCoord(v14, v47, v48, v49, v50);
      }

      v53 = objc_msgSend_columnUids(v14, v47, v48, v49, v50);
      if (objc_msgSend_containsIndex_(v53, v54, WORD2(v11), v55, v56))
      {
        v61 = objc_msgSend_rowUids(v14, v57, v58, v59, v60);
        v65 = objc_msgSend_containsIndex_(v61, v62, v11, v63, v64);

        if (v65)
        {
          if (v11 == v51 && ((v11 ^ v51) & 0x101FFFF00000000) == 0)
          {
            retstr->coordinate = objc_msgSend_topLeftCellCoord(v14, v66, v67, v68, v69);
          }

          else
          {
            retstr->_tableUID._lower = 0;
            retstr->_tableUID._upper = 0;
            retstr->coordinate = 0x7FFF7FFFFFFFLL;
          }
        }
      }

      else
      {
      }

      goto LABEL_78;
    }

    goto LABEL_34;
  }

  if ((v12 - 2) >= 2)
  {
    if ((v12 - 4) >= 2)
    {
      return self;
    }

LABEL_14:
    self = objc_msgSend_isForTable_(*&self[4].coordinate, ref, &v206, v4, v5);
    if (!self)
    {
      return self;
    }

    v14 = *&selfCopy[4].coordinate;
    if (objc_msgSend_isRows(v14, v15, v16, v17, v18))
    {
      v11 = v11;
    }

    else
    {
      v11 = WORD2(v11);
    }

    if (objc_msgSend_indexIsAffected_(v14, v19, v11, v20, v21))
    {
      *&v203 = objc_msgSend_uuidForIndex_(v14, v22, v11, v24, v25);
      *(&v203 + 1) = v26;
      if (objc_msgSend_isRows(v14, v26, v27, v28, v29))
      {
        v34 = objc_msgSend_auxRowColumnInfo(v14, v30, v31, v32, v33);
        v38 = objc_msgSend_rowIndexForUuid_(v34, v35, &v203, v36, v37);
      }

      else
      {
        v34 = objc_msgSend_auxRowColumnInfo(v14, v30, v31, v32, v33);
        v38 = objc_msgSend_columnIndexForUuid_(v34, v187, &v203, v188, v189);
      }

      v190 = v38;

      if (objc_msgSend_isRows(v14, v191, v192, v193, v194))
      {
        retstr->coordinate.row = v190;
      }

      else
      {
        retstr->coordinate.column = v190;
      }
    }

    else
    {
      v182 = selfCopy[4].coordinate;
      if (v182)
      {
        objc_msgSend_updatedCellRefForRewriteType_originalCellRef_(v182, v22, 2, a4, v25);
        objc_msgSend_auxRowColumnInfo(*&selfCopy[4].coordinate, v183, v184, v185, v186);
      }

      else
      {
        v203 = 0uLL;
        v204 = 0;
        objc_msgSend_auxRowColumnInfo(0, v22, v23, v24, v25);
      }
      v195 = ;
      v198 = v195;
      if (v195)
      {
        objc_msgSend_updatedCellRefForRewriteType_originalCellRef_(v195, v196, 3, &v203, v197);
      }

      else
      {
        v201 = 0uLL;
        v202 = 0;
      }

      *&retstr->coordinate.row = v201;
      retstr->_tableUID._upper = v202;
    }

    goto LABEL_78;
  }

  self = objc_msgSend_isForTable_(*&self[4].coordinate, ref, &v206, v4, v5);
  if (self)
  {
    self = selfCopy[4].coordinate;
    if (self)
    {
      self = objc_msgSend_updatedCellRefForRewriteType_originalCellRef_(self, v144, LODWORD(selfCopy->_tableUID._lower), a4, v145);
    }

    else
    {
      v203 = 0uLL;
      v204 = 0;
    }

    *&retstr->coordinate.row = v203;
    retstr->_tableUID._upper = v204;
  }

  return self;
}

- (TSCECellRef)originalCellRefForUpdatedCellRef:(SEL)ref
{
  selfCopy = self;
  coordinate = a4->coordinate;
  v9 = coordinate;
  tableUID = a4->_tableUID;
  *retstr = *a4;
  lower = self->_tableUID._lower;
  if (lower > 7)
  {
    if (lower <= 11)
    {
      if (lower != 8)
      {
        if (lower == 9)
        {
          self = objc_msgSend_isForTable_(self, ref, &tableUID, v4, v5);
          if (!self)
          {
            return self;
          }

          v11 = *&selfCopy[5].coordinate;
          v176 = objc_msgSend_reverseOriginsMap(v11, v172, v173, v174, v175);
          v177 = sub_221244A70(v176, &coordinate);
          if (v177)
          {
            retstr->coordinate = v177[3];
          }

          goto LABEL_62;
        }

        if (lower == 11)
        {
          self = objc_msgSend_isForTable_(self, ref, &tableUID, v4, v5);
          if (self)
          {
            retstr->coordinate = (__ROR8__(v9, 32) & 0xFFFF0000FFFFLL);
          }
        }

        return self;
      }

      self = objc_msgSend_isForTable_(self, ref, &tableUID, v4, v5);
      if (!self)
      {
        return self;
      }

      v11 = objc_msgSend_mergeRegion(selfCopy[4]._tableUID._upper, v148, v149, v150, v151);
      v50 = objc_msgSend_columnUids(v11, v152, v153, v154, v155);
      if (objc_msgSend_containsIndex_(v50, v156, WORD2(v9), v157, v158))
      {
        v163 = objc_msgSend_rowUids(v11, v159, v160, v161, v162);
        v167 = objc_msgSend_containsIndex_(v163, v164, v9, v165, v166);

        if (v167)
        {
          retstr->coordinate = objc_msgSend_topLeftCellCoord(v11, v168, v169, v170, v171);
        }

        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if ((lower - 14) >= 2)
    {
      if (lower != 12)
      {
        return self;
      }

LABEL_14:
      self = objc_msgSend_isForTable_(*&self[4].coordinate, ref, &tableUID, v4, v5);
      if (!self)
      {
        return self;
      }

      v11 = *&selfCopy[4].coordinate;
      if (objc_msgSend_isRows(v11, v12, v13, v14, v15))
      {
        v9 = v9;
      }

      else
      {
        v9 = WORD2(v9);
      }

      v20 = objc_msgSend_auxRowColumnInfo(v11, v16, v17, v18, v19);
      IsAffected = objc_msgSend_indexIsAffected_(v20, v21, v9, v22, v23);

      if (IsAffected)
      {
        v29 = objc_msgSend_auxRowColumnInfo(v11, v25, v26, v27, v28);
        *&v190 = objc_msgSend_uuidForIndex_(v29, v30, v9, v31, v32);
        *(&v190 + 1) = v33;

        if (objc_msgSend_isRows(v11, v34, v35, v36, v37))
        {
          v41 = objc_msgSend_rowIndexForUuid_(v11, v38, &v190, v39, v40);
        }

        else
        {
          v41 = objc_msgSend_columnIndexForUuid_(v11, v38, &v190, v39, v40);
        }

        v182 = v41;
        if (objc_msgSend_isRows(v11, v42, v43, v44, v45))
        {
          retstr->coordinate.row = v182;
        }

        else
        {
          retstr->coordinate.column = v182;
        }
      }

      else
      {
        v178 = objc_msgSend_auxRowColumnInfo(*&selfCopy[4].coordinate, v25, v26, v27, v28);
        v181 = v178;
        if (v178)
        {
          objc_msgSend_originalCellRefForRewriteType_updatedCellRef_(v178, v179, 3, a4, v180);
        }

        else
        {
          v190 = 0uLL;
          v191 = 0;
        }

        v185 = selfCopy[4].coordinate;
        if (v185)
        {
          objc_msgSend_originalCellRefForRewriteType_updatedCellRef_(v185, v183, 2, &v190, v184);
        }

        else
        {
          v188 = 0uLL;
          v189 = 0;
        }

        *&retstr->coordinate.row = v188;
        retstr->_tableUID._upper = v189;
      }

      goto LABEL_62;
    }

    goto LABEL_30;
  }

  if (lower > 5)
  {
    if (lower != 6)
    {
      self = objc_msgSend_isForTable_(self, ref, &tableUID, v4, v5);
      if (!self)
      {
        return self;
      }

      v11 = selfCopy[4]._tableUID._upper;
      v50 = objc_msgSend_mergeRegion(v11, v46, v47, v48, v49);
      v55 = objc_msgSend_mergeSource(v11, v51, v52, v53, v54);
      if (*v55 != 0x7FFFFFFF && (*v55 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v61 = objc_msgSend_columnUids(v50, v56, v57, v58, v59);
        if (objc_msgSend_containsIndex_(v61, v62, WORD2(v9), v63, v64))
        {
          v69 = objc_msgSend_rowUids(v50, v65, v66, v67, v68);
          v73 = objc_msgSend_containsIndex_(v69, v70, v9, v71, v72);

          if (v73)
          {
            retstr->coordinate = *objc_msgSend_mergeSource(v11, v74, v75, v76, v77);
          }
        }

        else
        {
        }
      }

      goto LABEL_61;
    }

LABEL_30:
    self = objc_msgSend_isForDstTable_(self[4]._tableUID._lower, ref, &tableUID, v4, v5);
    if (!self)
    {
      return self;
    }

    v11 = selfCopy[4]._tableUID._lower;
    v50 = objc_msgSend_dstColumnUids(v11, v78, v79, v80, v81);
    if (objc_msgSend_containsIndex_(v50, v82, WORD2(v9), v83, v84))
    {
      v89 = objc_msgSend_dstRowUids(v11, v85, v86, v87, v88);
      v93 = objc_msgSend_containsIndex_(v89, v90, v9, v91, v92);

      if (v93)
      {
        v98 = objc_msgSend_dstColumnUids(v11, v94, v95, v96, v97);
        *&v190 = objc_msgSend_uidForIndex_(v98, v99, WORD2(v9), v100, v101);
        *(&v190 + 1) = v102;

        v107 = objc_msgSend_dstRowUids(v11, v103, v104, v105, v106);
        *&v188 = objc_msgSend_uidForIndex_(v107, v108, v9, v109, v110);
        *(&v188 + 1) = v111;

        v187[0] = objc_msgSend_srcUidForDstUid_(v11, v112, &v190, v113, v114);
        v187[1] = v115;
        v118 = objc_msgSend_srcUidForDstUid_(v11, v115, &v188, v116, v117);
        v123 = objc_msgSend_srcColumnUids(v11, v119, v120, v121, v122, v118, v119);
        retstr->coordinate.column = objc_msgSend_columnIndexForUid_(v123, v124, v187, v125, v126);

        v131 = objc_msgSend_srcRowUids(v11, v127, v128, v129, v130);
        retstr->coordinate.row = objc_msgSend_rowIndexForUid_(v131, v132, &v186, v133, v134);

        v139 = objc_msgSend_dstTableUID(v11, v135, v136, v137, v138);
        if (tableUID == __PAIR128__(v140, v139))
        {
          v144 = objc_msgSend_srcTableUID(v11, v140, v141, v142, v143);
        }

        else
        {
          v144 = objc_msgSend_srcCondStyleOwnerUID(v11, v140, v141, v142, v143);
        }

        retstr->_tableUID._lower = v144;
        retstr->_tableUID._upper = v145;
      }

      goto LABEL_62;
    }

LABEL_61:

LABEL_62:
    return self;
  }

  if ((lower - 2) >= 2)
  {
    if ((lower - 4) >= 2)
    {
      return self;
    }

    goto LABEL_14;
  }

  self = objc_msgSend_isForTable_(*&self[4].coordinate, ref, &tableUID, v4, v5);
  if (self)
  {
    self = selfCopy[4].coordinate;
    if (self)
    {
      self = objc_msgSend_originalCellRefForRewriteType_updatedCellRef_(self, v146, LODWORD(selfCopy->_tableUID._lower), a4, v147);
    }

    else
    {
      v190 = 0uLL;
      v191 = 0;
    }

    *&retstr->coordinate.row = v190;
    retstr->_tableUID._upper = v191;
  }

  return self;
}

- (TSCECellRef)flattenedCellRefForCategoryRef:(SEL)ref calcEngine:(id)engine
{
  engineCopy = engine;
  v13 = a5;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  if (self->_rewriteType == 6)
  {
    v14 = objc_msgSend_absoluteGroupUid(engineCopy, v9, v10, v11, v12);
    if (v14 | v15)
    {
      v19 = objc_msgSend_originalSrcTableUID(self->_regionMovedInfo, v15, v16, v17, v18);
      if (!(v19 | v20) || (v24 = objc_msgSend_originalSrcTableUID(self->_regionMovedInfo, v20, v21, v22, v23), v26 = v25, v24 == objc_msgSend_srcTableUID(self->_regionMovedInfo, v25, v27, v28, v29)) && v26 == v20)
      {
        v34 = objc_msgSend_finalDstTableUID(self->_regionMovedInfo, v20, v21, v22, v23);
        v35 = v30;
        if (v34 | v30)
        {
          if (objc_msgSend_srcTableUID(self->_regionMovedInfo, v30, v31, v32, v33) != v34 || v36 != v35)
          {
            v118 = objc_msgSend_srcRegion(self->_regionMovedInfo, v36, v37, v38, v39);
            v122 = objc_msgSend_tableUID(v118, v40, v41, v42, v43);
            v123 = v44;
            v47 = objc_msgSend_tableOrLinkedResolverForTableUID_(v13, v44, &v122, v45, v46);
            v52 = v47;
            if (v47)
            {
              v53 = objc_msgSend_groupByUUID(v47, v48, v49, v50, v51);
              v55 = v54;
              if (v53 == objc_msgSend_groupByUid(engineCopy, v54, v56, v57, v58) && v55 == v59)
              {
                v122 = objc_msgSend_columnUid(engineCopy, v59, v60, v61, v62);
                v123 = v63;
                v117 = objc_msgSend_columnIndexForColumnUID_(v52, v63, &v122, v64, v65);
                if (v117 != 0x7FFF)
                {
                  v70 = objc_msgSend_columnUids(v118, v66, v67, v68, v69);
                  v74 = objc_msgSend_containsIndex_(v70, v71, v117, v72, v73);

                  if (v74)
                  {
                    v79 = objc_msgSend_rowUids(v118, v75, v76, v77, v78);
                    v84 = objc_msgSend_viewOrderUids(v79, v80, v81, v82, v83);

                    v90 = *v84;
                    v89 = *(v84 + 8);
                    if (*v84 != v89)
                    {
                      v91 = 0;
                      while (*v90 != objc_msgSend_absoluteGroupUid(engineCopy, v85, v86, v87, v88) || v90[1] != v85)
                      {
                        v90 += 2;
                        --v91;
                        if (v90 == v89)
                        {
                          goto LABEL_25;
                        }
                      }

                      v92 = objc_msgSend_rowUids(v118, v85, v86, v87, v88);
                      v116 = objc_msgSend_indexes(v92, v93, v94, v95, v96);
                      Index = objc_msgSend_firstIndex(v116, v97, v98, v99, v100);
                      v106 = objc_msgSend_tableUID(v118, v102, v103, v104, v105);
                      v122 = Index | (v117 << 32);
                      v123 = v106;
                      v124 = v107;

                      objc_msgSend_updatedCellRefForOriginalCellRef_(self, v108, &v122, v109, v110);
                      if (v122 != v119 || ((v119 ^ v122) & 0x101FFFF00000000) != 0 || v123 != v120 || v124 != v121)
                      {
                        retstr->coordinate = (v119 & 0xFFFF00000000 | (objc_msgSend_finalTopRowIndex(self->_regionMovedInfo, v111, v112, v113, v114) - v91));
                        retstr->_tableUID._lower = v34;
                        retstr->_tableUID._upper = v35;
                      }
                    }
                  }
                }
              }
            }

LABEL_25:
          }
        }
      }
    }
  }

  return result;
}

- (TSUCellRect)mergeRangeAtOriginalCellRef:(const TSCECellRef *)ref
{
  v3 = sub_221244B44(&self->_mergeRangesContainingFormulas.__table_.__bucket_list_.__ptr_, ref);
  if (v3)
  {
    v4 = v3;
    v5 = v3[5];
    v6 = v4[6];
  }

  else
  {
    v6 = 0;
    v5 = 0x7FFF7FFFFFFFLL;
  }

  result.size = v6;
  result.origin = v5;
  return result;
}

- (void)loadMergeRangesContainingFormulasInTable:(id)table calcEngine:(id)engine
{
  tableCopy = table;
  engineCopy = engine;
  v12 = objc_msgSend_tableRangeCoordinate(tableCopy, v8, v9, v10, v11);
  v14 = v13;
  *&v40 = objc_msgSend_resolverUID(tableCopy, v13, v15, v16, v17);
  *(&v40 + 1) = v18;
  v21 = objc_msgSend_tableResolverForTableUID_(engineCopy, v18, &v40, v19, v20);
  sub_2210BE918(&self->_mergeRangesContainingFormulas.__table_.__bucket_list_.__ptr_);
  v26 = objc_msgSend_rowOrColumnIndices(self->_rowColumnInfo, v22, v23, v24, v25);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_221243310;
  v33[3] = &unk_278461DF8;
  v33[4] = self;
  v38 = v12;
  v39 = v14;
  v27 = v21;
  v34 = v27;
  v28 = engineCopy;
  v35 = v28;
  v29 = tableCopy;
  v36 = v29;
  v37 = v40;
  objc_msgSend_enumerateRangesUsingBlock_(v26, v30, v33, v31, v32);
}

- (BOOL)adjustViewTractRef:(id)ref calcEngine:(id)engine containingCellRef:(const TSCECellRef *)cellRef undoTractList:(id *)list
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec adjustViewTractRef:calcEngine:containingCellRef:undoTractList:]", engine, cellRef, list);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 749, 0, "subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return 0;
}

- (id)restoreViewTractRefFromUndoTractList:(id)list calcEngine:(id)engine containingCellRef:(const TSCECellRef *)ref
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec restoreViewTractRefFromUndoTractList:calcEngine:containingCellRef:]", engine, ref);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 756, 0, "subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  return 0;
}

- (void)willModifyTable:(id)table uidResolver:(id)resolver calcEngine:(id)engine
{
  tableCopy = table;
  resolverCopy = resolver;
  engineCopy = engine;
  objc_msgSend_removeAllObjects(self->_nestedRewrites, v10, v11, v12, v13);
  if (self->_conditionalStyleOwnerUID._lower)
  {
    v18 = tableCopy != 0;
  }

  else
  {
    v18 = tableCopy != 0;
    if (tableCopy && !self->_conditionalStyleOwnerUID._upper)
    {
      v19 = objc_msgSend_conditionalStyleFormulaOwnerUID(tableCopy, v14, v15, v16, v17);
      if (v19 | v14)
      {
        self->_conditionalStyleOwnerUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(tableCopy, v14, v15, v16, v17);
        self->_conditionalStyleOwnerUID._upper = v14;
      }

      v18 = 1;
    }
  }

  if (!self->_groupByUID._lower)
  {
    v20 = !v18;
    if (self->_groupByUID._upper)
    {
      v20 = 1;
    }

    if ((v20 & 1) == 0)
    {
      self->_groupByUID._lower = objc_msgSend_groupByUID(tableCopy, v14, v15, v16, v17);
      self->_groupByUID._upper = v14;
    }
  }

  rewriteType = self->_rewriteType;
  if (rewriteType <= 0x11)
  {
    if (((1 << rewriteType) & 0x1030) != 0)
    {
      objc_msgSend_loadIndexesForTable_uidResolver_forRemoveRows_shuffleMap_(self->_rowColumnInfo, v14, tableCopy, resolverCopy, 1, 0);
      objc_msgSend_createAuxRowColumnInfoForMove(self->_rowColumnInfo, v36, v37, v38, v39);
      v22 = objc_msgSend_auxRowColumnInfo(self->_rowColumnInfo, v40, v41, v42, v43);
      objc_msgSend_loadIndexesForTable_uidResolver_forRemoveRows_shuffleMap_(v22, v44, tableCopy, resolverCopy, 0, self->_shuffleMap);
      goto LABEL_20;
    }

    if (((1 << rewriteType) & 0xC040) != 0)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSCEFormulaRewriteSpec willModifyTable:uidResolver:calcEngine:]", v16, v17);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v28, v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 802, 0, "Move region requires the two tables version will/didModifySrcTable:dstTable: be called instead");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
      goto LABEL_21;
    }

    if (((1 << rewriteType) & 0x20180) != 0)
    {
      v22 = objc_msgSend_mergeRegion(self->_mergeInfo, v14, v15, v16, v17);
      objc_msgSend_loadIndexesForTable_uidResolver_(v22, v23, tableCopy, resolverCopy, v24);
LABEL_20:

      goto LABEL_21;
    }
  }

  if (rewriteType == 3)
  {
    objc_msgSend_loadIndexesForTable_uidResolver_forRemoveRows_shuffleMap_(self->_rowColumnInfo, v14, tableCopy, resolverCopy, 0, 0);
  }

  else if (rewriteType == 2)
  {
    objc_msgSend_loadIndexesForTable_uidResolver_forRemoveRows_shuffleMap_(self->_rowColumnInfo, v14, tableCopy, resolverCopy, 1, 0);
    objc_msgSend_loadMergeRangesContainingFormulasInTable_calcEngine_(self, v49, tableCopy, engineCopy, v50);
  }

LABEL_21:
  *&self->_willModifyWasCalled = 1;
  if (engineCopy)
  {
    objc_msgSend_pushRewriteSpec_(engineCopy, v14, self, v16, v17);
    v48 = objc_msgSend_prepareToRewriteWithCalcEngine_(self, v45, engineCopy, v46, v47);
  }
}

- (void)addNestedRewrite:(id)rewrite
{
  rewriteCopy = rewrite;
  if (rewriteCopy && objc_msgSend_canBeNested(rewriteCopy, v4, v5, v6, v7))
  {
    nestedRewrites = self->_nestedRewrites;
    if (!nestedRewrites)
    {
      v12 = objc_opt_new();
      v13 = self->_nestedRewrites;
      self->_nestedRewrites = v12;

      nestedRewrites = self->_nestedRewrites;
    }

    objc_msgSend_addObject_(nestedRewrites, v8, rewriteCopy, v9, v10);
  }
}

- (id)prepareToRewriteWithCalcEngine:(id)engine
{
  v4 = objc_opt_new();
  formulasForUndo = self->_formulasForUndo;
  self->_formulasForUndo = v4;

  v6 = self->_formulasForUndo;

  return v6;
}

- (id)amendRewriteWithCalcEngine:(id)engine
{
  formulasForUndo = self->_formulasForUndo;
  if (!formulasForUndo)
  {
    v5 = objc_opt_new();
    v6 = self->_formulasForUndo;
    self->_formulasForUndo = v5;

    formulasForUndo = self->_formulasForUndo;
  }

  return formulasForUndo;
}

- (void)willModifySrcTable:(id)table srcUidResolver:(id)resolver dstTable:(id)dstTable dstUidResolver:(id)uidResolver
{
  tableCopy = table;
  resolverCopy = resolver;
  dstTableCopy = dstTable;
  uidResolverCopy = uidResolver;
  rewriteType = self->_rewriteType;
  v18 = rewriteType > 0xF;
  v19 = (1 << rewriteType) & 0xC040;
  if (v18 || v19 == 0)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCEFormulaRewriteSpec willModifySrcTable:srcUidResolver:dstTable:dstUidResolver:]", v14, v15);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 877, 0, "Only move region takes two tables");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  objc_msgSend_removeAllObjects(self->_nestedRewrites, v12, v13, v14, v15);
  if (self->_conditionalStyleOwnerUID._lower)
  {
    v36 = dstTableCopy != 0;
  }

  else
  {
    v36 = dstTableCopy != 0;
    if (dstTableCopy && !self->_conditionalStyleOwnerUID._upper)
    {
      v37 = objc_msgSend_conditionalStyleFormulaOwnerUID(dstTableCopy, v32, v33, v34, v35);
      if (v37 | v32)
      {
        self->_conditionalStyleOwnerUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(dstTableCopy, v32, v33, v34, v35);
        self->_conditionalStyleOwnerUID._upper = v32;
      }

      v36 = 1;
    }
  }

  if (!self->_groupByUID._lower)
  {
    v38 = !v36;
    if (self->_groupByUID._upper)
    {
      v38 = 1;
    }

    if ((v38 & 1) == 0)
    {
      self->_groupByUID._lower = objc_msgSend_groupByUID(dstTableCopy, v32, v33, v34, v35);
      self->_groupByUID._upper = v32;
    }
  }

  v39 = self->_rewriteType;
  if (v39 <= 0xF && ((1 << v39) & 0xC040) != 0)
  {
    objc_msgSend_loadIndexesForSrcTable_srcUidResolver_dstTable_dstUidResolver_(self->_regionMovedInfo, v32, tableCopy, resolverCopy, dstTableCopy, uidResolverCopy);
  }

  v44 = objc_msgSend_calcEngine(tableCopy, v32, v33, v34, v35);
  if (!v44)
  {
    v44 = objc_msgSend_calcEngine(dstTableCopy, v40, v41, v42, v43);
  }

  if (objc_msgSend_rewriteType(self, v40, v41, v42, v43) != 6)
  {
    objc_msgSend_rewriteType(self, v45, v46, v47, v48);
  }

  *&self->_willModifyWasCalled = 1;
  objc_msgSend_pushRewriteSpec_(v44, v45, self, v47, v48);
  v52 = objc_msgSend_prepareToRewriteWithCalcEngine_(self, v49, v44, v50, v51);
}

- (void)didModifySrcTable:(id)table dstTable:(id)dstTable
{
  tableCopy = table;
  dstTableCopy = dstTable;
  rewriteType = self->_rewriteType;
  v12 = rewriteType > 0xF;
  v13 = (1 << rewriteType) & 0xC040;
  if (v12 || v13 == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEFormulaRewriteSpec didModifySrcTable:dstTable:]", v8, v9);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 914, 0, "Only move region takes two tables");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v30 = objc_msgSend_calcEngine(tableCopy, v6, v7, v8, v9);
  if (!v30)
  {
    v30 = objc_msgSend_calcEngine(dstTableCopy, v26, v27, v28, v29);
  }

  self->_didModifyWasCalled = 1;
  objc_msgSend_popRewriteSpec_(v30, v26, self, v28, v29);
  v34 = objc_msgSend_amendRewriteWithCalcEngine_(self, v31, v30, v32, v33);
}

- (void)didModifyTable:(id)table
{
  tableCopy = table;
  v8 = objc_msgSend_calcEngine(tableCopy, v4, v5, v6, v7);
  objc_msgSend_didModifyTable_calcEngine_(self, v9, tableCopy, v8, v10);
}

- (void)didModifyTable:(id)table calcEngine:(id)engine
{
  tableCopy = table;
  engineCopy = engine;
  v11 = tableCopy;
  if (self->_conditionalStyleOwnerUID._lower)
  {
    v12 = tableCopy != 0;
  }

  else
  {
    v12 = tableCopy != 0;
    if (tableCopy && !self->_conditionalStyleOwnerUID._upper)
    {
      v13 = objc_msgSend_conditionalStyleFormulaOwnerUID(tableCopy, v6, v7, v8, v9);
      if (v13 | v6)
      {
        self->_conditionalStyleOwnerUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(tableCopy, v6, v7, v8, v9);
        self->_conditionalStyleOwnerUID._upper = v6;
      }

      v12 = 1;
      v11 = tableCopy;
    }
  }

  if (!self->_groupByUID._lower)
  {
    v14 = !v12;
    if (self->_groupByUID._upper)
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      self->_groupByUID._lower = objc_msgSend_groupByUID(v11, v6, v7, v8, v9);
      self->_groupByUID._upper = v6;
    }
  }

  rewriteType = self->_rewriteType;
  v16 = rewriteType > 0xF;
  v17 = (1 << rewriteType) & 0xC040;
  if (!v16 && v17 != 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEFormulaRewriteSpec didModifyTable:calcEngine:]", v8, v9);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 956, 0, "Move region requires the two table version didModifySrcTable:dstTable: be called instead");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  self->_didModifyWasCalled = 1;
  if (engineCopy)
  {
    objc_msgSend_popRewriteSpec_(engineCopy, v6, self, v8, v9);
    v33 = objc_msgSend_amendRewriteWithCalcEngine_(self, v30, engineCopy, v31, v32);
  }
}

- (void)clearTableIndexes
{
  rewriteType = self->_rewriteType;
  if (rewriteType <= 0x11)
  {
    if (((1 << rewriteType) & 0x103C) != 0)
    {
      objc_msgSend_unloadIndexes(self->_rowColumnInfo, a2, v2, v3, v4);
    }

    else if (((1 << rewriteType) & 0xC040) != 0)
    {
      objc_msgSend_unloadIndexes(self->_regionMovedInfo, a2, v2, v3, v4);
    }

    else if (((1 << rewriteType) & 0x20180) != 0)
    {
      v7 = objc_msgSend_mergeRegion(self->_mergeInfo, a2, v2, v3, v4);
      objc_msgSend_unloadIndexes(v7, v8, v9, v10, v11);
    }
  }

  *&self->_willModifyWasCalled = 0;
}

- (TSCERangeCoordinate)affectedRange
{
  rewriteType = self->_rewriteType;
  if (rewriteType > 10)
  {
    if (rewriteType <= 0x12)
    {
      if (((1 << rewriteType) & 0x72000) != 0)
      {
LABEL_14:
        v5 = MEMORY[0x277D81150];
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec affectedRange]", v3, v4);
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v21, v22);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v24, v19, v23, 1061, 0, "Not yet implemented for this type");
LABEL_21:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
        goto LABEL_22;
      }

      if (((1 << rewriteType) & 0xC000) != 0)
      {
        goto LABEL_20;
      }

      if (rewriteType == 12)
      {
        goto LABEL_16;
      }
    }

    if (rewriteType != 11)
    {
      goto LABEL_22;
    }

LABEL_12:
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec affectedRange]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1029, 0, "Not implemented yet for this type");
    v5 = 0x7FFF7FFFFFFFLL;

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    a2 = 0x7FFF7FFFFFFFLL;
    goto LABEL_22;
  }

  if (rewriteType > 3)
  {
    if ((rewriteType - 7) < 4)
    {
      goto LABEL_14;
    }

    if ((rewriteType - 4) < 2)
    {
LABEL_16:
      inserted = objc_msgSend_affectedRangeForMoveRows(self->_rowColumnInfo, a2, v2, v3, v4);
      goto LABEL_18;
    }

    if (rewriteType != 6)
    {
      goto LABEL_22;
    }

LABEL_20:
    v5 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec affectedRange]", v3, v4);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v28, v19, v23, 1050, 0, "Not implemented for this type");
    goto LABEL_21;
  }

  if (rewriteType < 2)
  {
    goto LABEL_12;
  }

  if (rewriteType == 2)
  {
    inserted = objc_msgSend_affectedRangeForRemoveRows(self->_rowColumnInfo, a2, v2, v3, v4);
    goto LABEL_18;
  }

  if (rewriteType == 3)
  {
    inserted = objc_msgSend_affectedRangeForInsertRows(self->_rowColumnInfo, a2, v2, v3, v4);
LABEL_18:
    v5 = inserted;
  }

LABEL_22:
  v33 = v5;
  result._bottomRight = a2;
  result._topLeft = v33;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)expandedRowColumnUuids
{
  rewriteType = self->_rewriteType;
  if (rewriteType <= 0xC)
  {
    v9 = 1 << rewriteType;
    if ((v9 & 0x103C) != 0)
    {
      goto LABEL_3;
    }

    if ((v9 & 3) != 0)
    {
      goto LABEL_6;
    }
  }

  v17 = MEMORY[0x277D81150];
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEFormulaRewriteSpec expandedRowColumnUuids]", v4, v5);
  v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v20, v21);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 1078, 0, "Not implemented yet for this type");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
LABEL_3:
  v10 = objc_msgSend_expandedRowColumnUuids(self->_rowColumnInfo, a3, v3, v4, v5);
  if (v10)
  {
    v28 = v10;
    objc_msgSend_uuidsAsVector(v10, v11, v12, v13, v14);
    v15 = v28;
    goto LABEL_7;
  }

LABEL_6:
  v15 = 0;
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
LABEL_7:

  return result;
}

- (TSKUIDStruct)tableUID
{
  upper = self->_tableUID._upper;
  lower = self->_tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)fromTableUID
{
  upper = self->_fromTableUID._upper;
  lower = self->_fromTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)conditionalStyleOwnerUID
{
  upper = self->_conditionalStyleOwnerUID._upper;
  lower = self->_conditionalStyleOwnerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)groupByUID
{
  upper = self->_groupByUID._upper;
  lower = self->_groupByUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 52) = 1065353216;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 64) = 1065353216;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 76) = 1065353216;
  return self;
}

@end