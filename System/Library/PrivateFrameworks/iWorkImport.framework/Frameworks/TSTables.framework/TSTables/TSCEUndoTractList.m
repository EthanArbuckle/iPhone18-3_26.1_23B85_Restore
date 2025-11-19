@interface TSCEUndoTractList
- (BOOL)hasFullTupleInformation;
- (BOOL)remapUsingColumnUidMap:(const void *)a3 rowUidMap:(const void *)a4 clearIfMissing:(BOOL)a5;
- (BOOL)remapUsingUidMap:(const void *)a3;
- (TSCEUndoTractList)initWithArchive:(const void *)a3;
- (TSKUIDStruct)aggregateRuleUid;
- (TSKUIDStruct)columnHeaderUid;
- (TSKUIDStruct)rowHeaderUid;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)firstTractWithPurpose:(unsigned __int8)a3;
- (id)initAsFullTupleForColumnHeaderUid:(TSKUIDStruct)a3 rowHeaderUid:(TSKUIDStruct)a4 aggregateRuleUid:(TSKUIDStruct)a5 flatteningDimension:(int)a6;
- (id)uidTractAtIndex:(unsigned __int8)a3;
- (int)flatteningDimension;
- (void)addRowColumnRuleValuePair:(TSKUIDStruct)a3 valueUid:(TSKUIDStruct)a4;
- (void)addToExcludedTractUids:(const void *)a3 isRows:(BOOL)a4;
- (void)addToExcludedUidsTractColumnUids:(const void *)a3;
- (void)addToExcludedUidsTractRowUids:(const void *)a3;
- (void)addToIncludedUidsTractColumnUid:(TSKUIDStruct)a3 rowUid:(TSKUIDStruct)a4;
- (void)addToIncludedUidsTractColumnUids:(const void *)a3 rowUids:(const void *)a4;
- (void)addToIncludedUidsTractColumnUids:(const void *)a3 rowUids:(const void *)a4 isRangeRef:(BOOL)a5 preserveRectangularRange:(BOOL)a6;
- (void)addTractAtFront:(id)a3;
- (void)appendUidTract:(id)a3;
- (void)dropTract:(id)a3;
- (void)enumerateRowColumnRuleValuePairsUsingBlock:(id)a3;
- (void)pruneMergeUidTractsAtAndAboveIndex:(unsigned __int8)a3;
- (void)removeFromExcludedUidsTractColumnUids:(const void *)a3;
- (void)removeFromExcludedUidsTractColumnUidsSet:(const void *)a3;
- (void)removeFromExcludedUidsTractRowUids:(const void *)a3;
- (void)removeFromExcludedUidsTractRowUidsSet:(const void *)a3;
- (void)saveToArchive:(void *)a3;
@end

@implementation TSCEUndoTractList

- (TSCEUndoTractList)initWithArchive:(const void *)a3
{
  v30.receiver = self;
  v30.super_class = TSCEUndoTractList;
  v4 = [(TSCEUndoTractList *)&v30 init];
  v5 = v4;
  if (v4)
  {
    v6 = *(a3 + 8);
    if (v6)
    {
      if (v6 >= 1)
      {
        v7 = 8;
        do
        {
          v8 = [TSCEUndoTract alloc];
          v12 = objc_msgSend_initWithArchive_(v8, v9, *(*(a3 + 5) + v7), v10, v11);
          if (objc_msgSend_purpose(v12, v13, v14, v15, v16) != 6)
          {
            objc_msgSend_appendUidTract_(v5, v17, v12, v18, v19);
          }

          v7 += 8;
          --v6;
        }

        while (v6);
      }

      v20 = *(a3 + 6);
      if (!v20)
      {
        v20 = &TSCE::_ASTNodeArrayArchive_ASTStickyBits_default_instance_;
      }

      v21 = v20[25];
      v22 = v20[24];
      v23 = v20[27];
      v24 = v20[26];
      if (v22)
      {
        v25 = 2;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25 | v21;
      if (v23)
      {
        v27 = 4;
      }

      else
      {
        v27 = 0;
      }

      if (v24)
      {
        v28 = 8;
      }

      else
      {
        v28 = 0;
      }

      v5->_preserveFlags._flags = v26 | v27 | v28;
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)saveToArchive:(void *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_tracts;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v28, v32, 16);
  if (v11)
  {
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if (objc_msgSend_purpose(v14, v7, v8, v9, v10, v28) != 6)
        {
          v15 = *(a3 + 5);
          if (!v15)
          {
            goto LABEL_12;
          }

          v16 = *(a3 + 8);
          v17 = *v15;
          if (v16 < *v15)
          {
            *(a3 + 8) = v16 + 1;
            objc_msgSend_saveToArchive_(v14, v7, *&v15[2 * v16 + 2], v9, v10);
            continue;
          }

          if (v17 == *(a3 + 9))
          {
LABEL_12:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
            v15 = *(a3 + 5);
            v17 = *v15;
          }

          *v15 = v17 + 1;
          v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTract>(*(a3 + 3));
          v19 = *(a3 + 8);
          v20 = *(a3 + 5) + 8 * v19;
          *(a3 + 8) = v19 + 1;
          *(v20 + 8) = v18;
          objc_msgSend_saveToArchive_(v14, v21, v18, v22, v23);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v28, v32, 16);
    }

    while (v11);
  }

  *(a3 + 4) |= 1u;
  v24 = *(a3 + 6);
  if (!v24)
  {
    v25 = *(a3 + 1);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTStickyBits>(v25);
    *(a3 + 6) = v24;
  }

  flags = self->_preserveFlags._flags;
  v27 = *(v24 + 16);
  *(v24 + 25) = flags & 1;
  *(v24 + 24) = (flags & 2) != 0;
  *(v24 + 27) = (flags & 4) != 0;
  *(v24 + 16) = v27 | 0xF;
  *(v24 + 26) = (flags & 8) != 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_tracts;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v22, v26, 16);
  if (v11)
  {
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = objc_msgSend_copy(*(*(&v22 + 1) + 8 * v13), v7, v8, v9, v10, v22);
        objc_msgSend_appendUidTract_(v4, v15, v14, v16, v17);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v22, v26, 16);
    }

    while (v11);
  }

  objc_msgSend_setPreserveFlags_(v4, v18, self->_preserveFlags._flags, v19, v20);
  return v4;
}

- (void)addToIncludedUidsTractColumnUid:(TSKUIDStruct)a3 rowUid:(TSKUIDStruct)a4
{
  v14 = a3;
  v13 = a4;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_221083454(&v10, &v14);
  sub_221083454(&__p, &v13);
  objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_(self, v5, &v10, &__p, v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

- (void)addToIncludedUidsTractColumnUids:(const void *)a3 rowUids:(const void *)a4 isRangeRef:(BOOL)a5 preserveRectangularRange:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = *a3;
  v12 = *(a3 + 1);
  v13 = *a4;
  v14 = *(a4 + 1);
  v15 = *a3 == v12 && &v14[-*a4] == 16;
  if (v15 && !*v13 && !*(v13 + 1))
  {
    goto LABEL_16;
  }

  if (v12 - v11 == 16 && v13 == v14)
  {
    if (*v11 || (v14 = *a4, *(v11 + 1)))
    {
      v17 = 0;
      v14 = *a4;
      goto LABEL_17;
    }

LABEL_16:
    v17 = 1;
    goto LABEL_17;
  }

  v17 = 0;
LABEL_17:
  if (v14 - v13 != 16 || *v13 || *(v13 + 1))
  {
    if (v17)
    {
      return;
    }
  }

  else
  {
    v69 = v12 - v11 == 16 && !*v11 && *(v11 + 1) == 0;
    if ((v17 | v69))
    {
      return;
    }
  }

  if (v11 != v12 || v14 != v13)
  {
    v18 = objc_msgSend_includedUidsTract(self, a2, a3, a4, a5);
    if (v18)
    {
      v23 = v18;
      v24 = objc_msgSend_columnUids(v18, v19, v20, v21, v22);
      __p[0] = 0;
      __p[1] = 0;
      v147 = 0;
      sub_221086EBC(__p, *v24, v24[1], (v24[1] - *v24) >> 4);
      v29 = objc_msgSend_rowUids(v23, v25, v26, v27, v28);
      v144[0] = 0;
      v144[1] = 0;
      v145 = 0;
      sub_221086EBC(v144, *v29, v29[1], (v29[1] - *v29) >> 4);
      v34 = *a3;
      v33 = *(a3 + 1);
      if (&v33[-*a3] != 16 || *v34 || *(v34 + 1))
      {
        if (v34 != v33)
        {
          if (__p[1] != __p[0] && !*__p[0] && !*(__p[0] + 1))
          {
            v35 = MEMORY[0x277D81150];
            v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSCEUndoTractList addToIncludedUidsTractColumnUids:rowUids:isRangeRef:preserveRectangularRange:]", v31, v32);
            v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUndoTractList.mm", v38, v39);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 432, 0, "Combining a spanning and non-spanning TSKUIDStructVector vector");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
          }

          v46 = [TSCEMutableUIDSet alloc];
          v50 = objc_msgSend_initWithUUIDVector_(v46, v47, __p, v48, v49);
          objc_msgSend_addUuidsFromVector_(v50, v51, a3, v52, v53);
          if (v50)
          {
            objc_msgSend_uuidsAsVector(v50, v54, v55, v56, v57);
          }

          else
          {
            v142 = 0uLL;
            v143 = 0;
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          *__p = v142;
          v147 = v143;
        }
      }

      else
      {
        if (__p[0] != __p[1] && ((__p[1] - __p[0]) != 16 || *__p[0] || *(__p[0] + 1)))
        {
          v120 = MEMORY[0x277D81150];
          v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSCEUndoTractList addToIncludedUidsTractColumnUids:rowUids:isRangeRef:preserveRectangularRange:]", v31, v32);
          v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUndoTractList.mm", v123, v124);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v120, v126, v121, v125, 428, 0, "Combining a spanning and non-spanning TSKUIDStructVector vector");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v127, v128, v129, v130);
        }

        if (__p != a3)
        {
          sub_2210BD068(__p, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
        }
      }

      v71 = *a4;
      v70 = *(a4 + 1);
      if (&v70[-*a4] != 16 || *v71 || *(v71 + 1))
      {
        if (v71 != v70)
        {
          if (v144[1] != v144[0] && !*v144[0] && !*(v144[0] + 1))
          {
            v72 = MEMORY[0x277D81150];
            v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSCEUndoTractList addToIncludedUidsTractColumnUids:rowUids:isRangeRef:preserveRectangularRange:]", v31, v32);
            v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUndoTractList.mm", v75, v76);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v78, v73, v77, 445, 0, "Combining a spanning and non-spanning TSKUIDStructVector vector");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
          }

          v83 = [TSCEMutableUIDSet alloc];
          v87 = objc_msgSend_initWithUUIDVector_(v83, v84, v144, v85, v86);
          objc_msgSend_addUuidsFromVector_(v87, v88, a4, v89, v90);
          if (v87)
          {
            objc_msgSend_uuidsAsVector(v87, v91, v92, v93, v94);
          }

          else
          {
            v142 = 0uLL;
            v143 = 0;
          }

          if (v144[0])
          {
            v144[1] = v144[0];
            operator delete(v144[0]);
          }

          *v144 = v142;
          v145 = v143;
        }
      }

      else
      {
        if (v144[0] != v144[1] && ((v144[1] - v144[0]) != 16 || *v144[0] || *(v144[0] + 1)))
        {
          v131 = MEMORY[0x277D81150];
          v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSCEUndoTractList addToIncludedUidsTractColumnUids:rowUids:isRangeRef:preserveRectangularRange:]", v31, v32, v142, v143);
          v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUndoTractList.mm", v134, v135);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v131, v137, v132, v136, 441, 0, "Combining a spanning and non-spanning TSKUIDStructVector vector");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v138, v139, v140, v141);
        }

        if (v144 != a4)
        {
          sub_2210BD068(v144, *a4, *(a4 + 1), (*(a4 + 1) - *a4) >> 4);
        }
      }

      v95 = [TSCEUndoTract alloc];
      v101 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v95, v96, __p, v144, 0);
      if (v7)
      {
        objc_msgSend_setIsRangeRef_(v101, v97, 1, v99, v100, v142, v143);
      }

      else
      {
        isRangeRef = objc_msgSend_isRangeRef(v23, v97, v98, v99, v100);
        objc_msgSend_setIsRangeRef_(v101, v107, isRangeRef, v108, v109, v142, v143);
      }

      if (v6)
      {
        v110 = objc_msgSend_preserveRectangularRange(v23, v102, v103, v104, v105);
        objc_msgSend_setPreserveRectangularRange_(v101, v111, v110, v112, v113);
      }

      else
      {
        objc_msgSend_setPreserveRectangularRange_(v101, v102, 0, v104, v105);
      }

      objc_msgSend_dropTract_(self, v114, v23, v115, v116);
      objc_msgSend_addTractAtFront_(self, v117, v101, v118, v119);

      if (v144[0])
      {
        v144[1] = v144[0];
        operator delete(v144[0]);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      v58 = [TSCEUndoTract alloc];
      v23 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v58, v59, a3, a4, 0);
      objc_msgSend_setIsRangeRef_(v23, v60, v7, v61, v62);
      objc_msgSend_setPreserveRectangularRange_(v23, v63, v6, v64, v65);
      objc_msgSend_addTractAtFront_(self, v66, v23, v67, v68);
    }
  }
}

- (void)addToIncludedUidsTractColumnUids:(const void *)a3 rowUids:(const void *)a4
{
  if (*(a3 + 1) - *a3 > 0x10uLL || *(a4 + 1) - *a4 > 0x10uLL)
  {
    objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(self, a2, a3, a4, 1, 1);
  }

  else
  {
    objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(self, a2, a3, a4, 0, 1);
  }
}

- (void)addToExcludedUidsTractColumnUids:(const void *)a3
{
  if (*(a3 + 1) != *a3)
  {
    v7 = objc_msgSend_excludedUidsTract(self, a2, a3, v3, v4);
    v12 = v7;
    if (v7)
    {
      v13 = objc_msgSend_columnUids(v7, v8, v9, v10, v11);
      __p[0] = 0;
      __p[1] = 0;
      v57 = 0;
      sub_221086EBC(__p, *v13, v13[1], (v13[1] - *v13) >> 4);
      v18 = objc_msgSend_rowUids(v12, v14, v15, v16, v17);
      v53 = 0;
      v54 = 0;
      v55 = 0;
      sub_221086EBC(&v53, *v18, v18[1], (v18[1] - *v18) >> 4);
      v19 = [TSCEMutableUIDSet alloc];
      v23 = objc_msgSend_initWithUUIDVector_(v19, v20, __p, v21, v22);
      objc_msgSend_addUuidsFromVector_(v23, v24, a3, v25, v26);
      if (v23)
      {
        objc_msgSend_uuidsAsVector(v23, v27, v28, v29, v30);
      }

      else
      {
        v51 = 0uLL;
        v52 = 0;
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = v51;
      v57 = v52;
      v39 = [TSCEUndoTract alloc];
      v41 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v39, v40, __p, &v53, 3);
      objc_msgSend_setIsRangeRef_(v41, v42, 1, v43, v44);
      objc_msgSend_dropTract_(self, v45, v12, v46, v47);
      objc_msgSend_addTractAtFront_(self, v48, v41, v49, v50);

      if (v53)
      {
        v54 = v53;
        operator delete(v53);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      v31 = [TSCEUndoTract alloc];
      __p[0] = 0;
      __p[1] = 0;
      v57 = 0;
      v12 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v31, v32, a3, __p, 3);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      objc_msgSend_setIsRangeRef_(v12, v33, 1, v34, v35);
      objc_msgSend_addTractAtFront_(self, v36, v12, v37, v38);
    }
  }
}

- (void)addToExcludedUidsTractRowUids:(const void *)a3
{
  if (*(a3 + 1) != *a3)
  {
    v7 = objc_msgSend_excludedUidsTract(self, a2, a3, v3, v4);
    v12 = v7;
    if (v7)
    {
      v13 = objc_msgSend_columnUids(v7, v8, v9, v10, v11);
      __p = 0;
      v56 = 0;
      v57 = 0;
      sub_221086EBC(&__p, *v13, v13[1], (v13[1] - *v13) >> 4);
      v18 = objc_msgSend_rowUids(v12, v14, v15, v16, v17);
      v53[0] = 0;
      v53[1] = 0;
      v54 = 0;
      sub_221086EBC(v53, *v18, v18[1], (v18[1] - *v18) >> 4);
      v19 = [TSCEMutableUIDSet alloc];
      v23 = objc_msgSend_initWithUUIDVector_(v19, v20, v53, v21, v22);
      objc_msgSend_addUuidsFromVector_(v23, v24, a3, v25, v26);
      if (v23)
      {
        objc_msgSend_uuidsAsVector(v23, v27, v28, v29, v30);
      }

      else
      {
        v51 = 0uLL;
        v52 = 0;
      }

      if (v53[0])
      {
        v53[1] = v53[0];
        operator delete(v53[0]);
      }

      *v53 = v51;
      v54 = v52;
      v39 = [TSCEUndoTract alloc];
      v41 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v39, v40, &__p, v53, 3);
      objc_msgSend_setIsRangeRef_(v41, v42, 1, v43, v44);
      objc_msgSend_dropTract_(self, v45, v12, v46, v47);
      objc_msgSend_addTractAtFront_(self, v48, v41, v49, v50);

      if (v53[0])
      {
        v53[1] = v53[0];
        operator delete(v53[0]);
      }

      if (__p)
      {
        v56 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v31 = [TSCEUndoTract alloc];
      __p = 0;
      v56 = 0;
      v57 = 0;
      v12 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v31, v32, &__p, a3, 3);
      if (__p)
      {
        v56 = __p;
        operator delete(__p);
      }

      objc_msgSend_setIsRangeRef_(v12, v33, 1, v34, v35);
      objc_msgSend_addTractAtFront_(self, v36, v12, v37, v38);
    }
  }
}

- (void)addToExcludedTractUids:(const void *)a3 isRows:(BOOL)a4
{
  if (*(a3 + 1) != *a3)
  {
    v4 = a4;
    v7 = [TSCEMutableUIDSet alloc];
    v11 = objc_msgSend_initWithUUIDVector_(v7, v8, a3, v9, v10);
    v16 = objc_msgSend_includedUidsTract(self, v12, v13, v14, v15);
    v21 = v16;
    if (v16)
    {
      if (v4)
      {
        v22 = objc_msgSend_rowUids(v16, v17, v18, v19, v20);
      }

      else
      {
        v22 = objc_msgSend_columnUids(v16, v17, v18, v19, v20);
      }

      objc_msgSend_removeUuidsFromVector_(v11, v23, v22, v24, v25);
    }

    v26 = objc_msgSend_excludedUidsTract(self, v17, v18, v19, v20);
    v31 = v26;
    if (v26)
    {
      v32 = objc_msgSend_columnUids(v26, v27, v28, v29, v30);
      __p[0] = 0;
      __p[1] = 0;
      v75 = 0;
      sub_221086EBC(__p, *v32, v32[1], (v32[1] - *v32) >> 4);
      v37 = objc_msgSend_rowUids(v31, v33, v34, v35, v36);
      v72[0] = 0;
      v72[1] = 0;
      v73 = 0;
      sub_221086EBC(v72, *v37, v37[1], (v37[1] - *v37) >> 4);
      if (v4)
      {
        objc_msgSend_addUuidsFromVector_(v11, v38, v72, v39, v40);
        if (v11)
        {
          objc_msgSend_uuidsAsVector(v11, v41, v42, v43, v44);
        }

        else
        {
          v70 = 0uLL;
          v71 = 0;
        }

        if (v72[0])
        {
          v72[1] = v72[0];
          operator delete(v72[0]);
        }

        *v72 = v70;
        v73 = v71;
      }

      else
      {
        objc_msgSend_addUuidsFromVector_(v11, v38, __p, v39, v40);
        if (v11)
        {
          objc_msgSend_uuidsAsVector(v11, v51, v52, v53, v54);
        }

        else
        {
          v70 = 0uLL;
          v71 = 0;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = v70;
        v75 = v71;
      }

      v58 = [TSCEUndoTract alloc];
      v60 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v58, v59, __p, v72, 3);
      objc_msgSend_setIsRangeRef_(v60, v61, 1, v62, v63);
      objc_msgSend_dropTract_(self, v64, v31, v65, v66);
      objc_msgSend_addTractAtFront_(self, v67, v60, v68, v69);

      if (v72[0])
      {
        v72[1] = v72[0];
        operator delete(v72[0]);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      v45 = [TSCEUndoTract alloc];
      __p[0] = 0;
      __p[1] = 0;
      v75 = 0;
      if (v4)
      {
        v47 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v45, v46, __p, a3, 3);
      }

      else
      {
        v47 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v45, v46, a3, __p, 3);
      }

      v31 = v47;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      objc_msgSend_setIsRangeRef_(v31, v48, 1, v49, v50);
      objc_msgSend_addTractAtFront_(self, v55, v31, v56, v57);
    }
  }
}

- (void)removeFromExcludedUidsTractColumnUidsSet:(const void *)a3
{
  v7 = objc_msgSend_excludedUidsTract(self, a2, a3, v3, v4);
  v12 = v7;
  if (v7 && *(a3 + 3))
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v13 = objc_msgSend_rowUids(v7, v8, v9, v10, v11);
    __p = 0;
    v34 = 0;
    v35 = 0;
    sub_221086EBC(&__p, *v13, v13[1], (v13[1] - *v13) >> 4);
    v18 = objc_msgSend_columnUids(v12, v14, v15, v16, v17);
    v22 = *v18;
    v23 = *(v18 + 8);
    if (*v18 != v23)
    {
      do
      {
        if (!sub_221119F90(a3, v22))
        {
          sub_221083454(&v36, v22);
        }

        ++v22;
      }

      while (v22 != v23);
      if (v37 != v36)
      {
        goto LABEL_9;
      }
    }

    if (v34 == __p)
    {
      v26 = 0;
    }

    else
    {
LABEL_9:
      v24 = [TSCEUndoTract alloc];
      v26 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v24, v25, &v36, &__p, 3);
      objc_msgSend_setIsRangeRef_(v26, v27, 1, v28, v29);
    }

    objc_msgSend_dropTract_(self, v19, v12, v20, v21);
    objc_msgSend_addTractAtFront_(self, v30, v26, v31, v32);

    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }
}

- (void)removeFromExcludedUidsTractRowUidsSet:(const void *)a3
{
  v7 = objc_msgSend_excludedUidsTract(self, a2, a3, v3, v4);
  v12 = v7;
  if (v7 && *(a3 + 3))
  {
    v13 = objc_msgSend_columnUids(v7, v8, v9, v10, v11);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    sub_221086EBC(&v36, *v13, v13[1], (v13[1] - *v13) >> 4);
    __p = 0;
    v34 = 0;
    v35 = 0;
    v18 = objc_msgSend_rowUids(v12, v14, v15, v16, v17);
    v22 = *v18;
    v23 = *(v18 + 8);
    while (v22 != v23)
    {
      if (!sub_221119F90(a3, v22))
      {
        sub_221083454(&__p, v22);
      }

      ++v22;
    }

    if (v37 == v36 && v34 == __p)
    {
      v26 = 0;
    }

    else
    {
      v24 = [TSCEUndoTract alloc];
      v26 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v24, v25, &v36, &__p, 3);
      objc_msgSend_setIsRangeRef_(v26, v27, 1, v28, v29);
    }

    objc_msgSend_dropTract_(self, v19, v12, v20, v21);
    objc_msgSend_addTractAtFront_(self, v30, v26, v31, v32);

    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }
}

- (void)removeFromExcludedUidsTractColumnUids:(const void *)a3
{
  v7 = objc_msgSend_excludedUidsTract(self, a2, a3, v3, v4);
  if (v7)
  {
    v10 = a3;
    v8 = *a3;
    v9 = v10[1];
    if (v9 != v8)
    {
      memset(v14, 0, sizeof(v14));
      v15 = 1065353216;
      do
      {
        sub_2210C2B00(v14, v8);
        v8 += 2;
      }

      while (v8 != v9);
      objc_msgSend_removeFromExcludedUidsTractColumnUidsSet_(self, v11, v14, v12, v13);
      sub_2210BDEC0(v14);
    }
  }
}

- (void)removeFromExcludedUidsTractRowUids:(const void *)a3
{
  v7 = objc_msgSend_excludedUidsTract(self, a2, a3, v3, v4);
  if (v7)
  {
    v10 = a3;
    v8 = *a3;
    v9 = v10[1];
    if (v9 != v8)
    {
      memset(v14, 0, sizeof(v14));
      v15 = 1065353216;
      do
      {
        sub_2210C2B00(v14, v8);
        v8 += 2;
      }

      while (v8 != v9);
      objc_msgSend_removeFromExcludedUidsTractRowUidsSet_(self, v11, v14, v12, v13);
      sub_2210BDEC0(v14);
    }
  }
}

- (void)addTractAtFront:(id)a3
{
  v7 = a3;
  if (v7)
  {
    tracts = self->_tracts;
    if (tracts)
    {
      objc_msgSend_insertObject_atIndex_(tracts, v7, v7, 0, v5);
    }

    else
    {
      objc_msgSend_appendUidTract_(self, v7, v7, v4, v5);
    }
  }
}

- (id)firstTractWithPurpose:(unsigned __int8)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_tracts;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_purpose(v13, v6, v7, v8, v9, v16) == v3)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v16, v20, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)dropTract:(id)a3
{
  v7 = a3;
  if (v7)
  {
    objc_msgSend_removeObjectIdenticalTo_(self->_tracts, v4, v7, v5, v6);
  }
}

- (void)appendUidTract:(id)a3
{
  v10 = a3;
  if (v10)
  {
    tracts = self->_tracts;
    if (!tracts)
    {
      v8 = objc_opt_new();
      v9 = self->_tracts;
      self->_tracts = v8;

      tracts = self->_tracts;
    }

    objc_msgSend_addObject_(tracts, v4, v10, v5, v6);
  }
}

- (id)uidTractAtIndex:(unsigned __int8)a3
{
  v5 = a3;
  if (objc_msgSend_tractCount(self, a2, a3, v3, v4) <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_objectAtIndex_(self->_tracts, v7, v5, v8, v9);
  }

  return v10;
}

- (void)pruneMergeUidTractsAtAndAboveIndex:(unsigned __int8)a3
{
  v5 = a3;
  if (objc_msgSend_tractCount(self, a2, a3, v3, v4) > a3)
  {
    while (objc_msgSend_tractCount(self, v7, v8, v9, v10) > v5)
    {
      v15 = objc_msgSend_lastObject(self->_tracts, v11, v12, v13, v14);
      if (objc_msgSend_purpose(v15, v16, v17, v18, v19) != 1)
      {

        break;
      }

      objc_msgSend_removeLastObject(self->_tracts, v20, v21, v22, v23);
    }

    v24 = objc_msgSend_tractCount(self, v11, v12, v13, v14);
    if (v24 > v5)
    {
      v28 = v5;
      v29 = v24;
      do
      {
        v30 = objc_msgSend_objectAtIndex_(self->_tracts, v25, --v29, v26, v27);
        if (objc_msgSend_purpose(v30, v31, v32, v33, v34) == 1)
        {
          objc_msgSend_removeObjectAtIndex_(self->_tracts, v35, v29, v36, v37);
        }
      }

      while (v29 > v28);
    }
  }
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v8 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@> sticky:%d Tracts: ", v6, v7, v4, self->_preserveFlags._flags);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_tracts;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v22, 16);
  if (v14)
  {
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_appendFormat_(v8, v11, @"\n  %@", v12, v13, *(*(&v18 + 1) + 8 * i));
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v18, v22, 16);
    }

    while (v14);
  }

  return v8;
}

- (BOOL)remapUsingUidMap:(const void *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_tracts;
  v6 = 0;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v11)
  {
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v4);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_purpose(v14, v7, v8, v9, v10, v16) != 2)
        {
          v6 |= objc_msgSend_remapUsingUidMap_(v14, v7, a3, v9, v10);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v16, v20, 16);
    }

    while (v11);
  }

  return v6 & 1;
}

- (BOOL)remapUsingColumnUidMap:(const void *)a3 rowUidMap:(const void *)a4 clearIfMissing:(BOOL)a5
{
  v5 = a5;
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_tracts;
  v10 = 0;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v10 |= objc_msgSend_remapUsingColumnUidMap_rowUidMap_clearIfMissing_(*(*(&v16 + 1) + 8 * v14++), v11, a3, a4, v5, v16);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v16, v20, 16);
    }

    while (v12);
  }

  return v10 & 1;
}

- (id)initAsFullTupleForColumnHeaderUid:(TSKUIDStruct)a3 rowHeaderUid:(TSKUIDStruct)a4 aggregateRuleUid:(TSKUIDStruct)a5 flatteningDimension:(int)a6
{
  upper = a5._upper;
  lower = a5._lower;
  v8 = a4._upper;
  v9 = a4._lower;
  v10 = a3._upper;
  v11 = a3._lower;
  v50 = a5;
  v49.receiver = self;
  v49.super_class = TSCEUndoTractList;
  v15 = [(TSCEUndoTractList *)&v49 init];
  if (v15)
  {
    if (v11 || v10 || v9 || v8)
    {
      v16 = [TSCEUndoTract alloc];
      v18 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v16, v17, v11, v10, v9, v8, 7);
      objc_msgSend_appendUidTract_(v15, v19, v18, v20, v21);
    }

    if (lower | upper)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      __p = 0;
      v44 = 0;
      v45 = 0;
      sub_221083454(&v46, &v50);
      v22 = [TSCEUndoTract alloc];
      v24 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v22, v23, &v46, &__p, 8);
      objc_msgSend_appendUidTract_(v15, v25, v24, v26, v27);

      if (__p)
      {
        v44 = __p;
        operator delete(__p);
      }

      if (v46)
      {
        v47 = v46;
        operator delete(v46);
      }
    }

    if ((a6 + 1) >= 3)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCEUndoTractList(FullTuple) initAsFullTupleForColumnHeaderUid:rowHeaderUid:aggregateRuleUid:flatteningDimension:]", v13, v14);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUndoTractList.mm", v31, v32);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 788, 0, "Not a valid TSTTableDimension value: %d", a6);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
      objc_msgSend_setPreserveFlags_(v15, v39, 0, v40, v41);
    }

    else
    {
      objc_msgSend_setPreserveFlags_(v15, v12, qword_2217E1D88[a6 + 1], v13, v14);
    }
  }

  return v15;
}

- (void)addRowColumnRuleValuePair:(TSKUIDStruct)a3 valueUid:(TSKUIDStruct)a4
{
  upper = a4._upper;
  lower = a4._lower;
  v6 = a3._upper;
  v7 = a3._lower;
  v9 = objc_msgSend_firstTractWithPurpose_(self, a2, 9, a3._upper, a4._lower);
  if (v9)
  {
    v16 = v9;
    objc_msgSend_appendColumnUid_rowUid_(v9, v10, v7, v6, lower, upper);
  }

  else
  {
    v11 = [TSCEUndoTract alloc];
    v16 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v11, v12, v7, v6, lower, upper, 9);
    objc_msgSend_appendUidTract_(self, v13, v16, v14, v15);
  }
}

- (BOOL)hasFullTupleInformation
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_tracts;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_msgSend_purpose(*(*(&v12 + 1) + 8 * i), v4, v5, v6, v7, v12) - 7 < 3)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v12, v16, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (TSKUIDStruct)columnHeaderUid
{
  v4 = objc_msgSend_firstTractWithPurpose_(self, a2, 7, v2, v3);
  v9 = v4;
  if (v4)
  {
    v10 = objc_msgSend_columnUids(v4, v5, v6, v7, v8);
    v12 = **v10;
    v11 = (*v10)[1];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = v12;
  v14 = v11;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (TSKUIDStruct)rowHeaderUid
{
  v4 = objc_msgSend_firstTractWithPurpose_(self, a2, 7, v2, v3);
  v9 = v4;
  if (v4)
  {
    v10 = objc_msgSend_rowUids(v4, v5, v6, v7, v8);
    v12 = **v10;
    v11 = (*v10)[1];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = v12;
  v14 = v11;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (TSKUIDStruct)aggregateRuleUid
{
  v4 = objc_msgSend_firstTractWithPurpose_(self, a2, 8, v2, v3);
  v9 = v4;
  if (v4)
  {
    v10 = objc_msgSend_columnUids(v4, v5, v6, v7, v8);
    v12 = **v10;
    v11 = (*v10)[1];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = v12;
  v14 = v11;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (int)flatteningDimension
{
  if (self->_preserveFlags._flags)
  {
    v2 = 1;
  }

  else
  {
    v2 = -1;
  }

  if ((self->_preserveFlags._flags & 2) != 0)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (void)enumerateRowColumnRuleValuePairsUsingBlock:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_firstTractWithPurpose_(self, v5, 9, v6, v7);
  v13 = v8;
  if (v8)
  {
    v14 = *objc_msgSend_rowUids(v8, v9, v10, v11, v12);
    v27 = 0;
    v19 = objc_msgSend_columnUids(v13, v15, v16, v17, v18);
    v20 = *v19;
    v21 = v19[1];
    if (*v19 != v21)
    {
      do
      {
        (*(v4 + 2))(v4, *v20, v20[1], *v14, v14[1], &v27);
        if (v27)
        {
          break;
        }

        v14 += 2;
        v20 += 2;
      }

      while (v14 != *(objc_msgSend_rowUids(v13, v22, v23, v24, v25) + 8) && v20 != v21);
    }
  }
}

@end