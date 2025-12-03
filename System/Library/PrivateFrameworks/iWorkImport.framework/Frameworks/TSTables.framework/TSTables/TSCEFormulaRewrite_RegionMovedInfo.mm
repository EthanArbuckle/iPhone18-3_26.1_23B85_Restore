@interface TSCEFormulaRewrite_RegionMovedInfo
- (BOOL)isForDstTable:(const TSKUIDStruct *)table;
- (BOOL)isForSrcTable:(const TSKUIDStruct *)table;
- (TSCEFormulaRewrite_RegionMovedInfo)initWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract;
- (TSKUIDStruct)dstCondStyleOwnerUID;
- (TSKUIDStruct)dstTableUID;
- (TSKUIDStruct)dstUidForSrcUid:(const TSKUIDStruct *)uid;
- (TSKUIDStruct)finalDstTableUID;
- (TSKUIDStruct)originalSrcCondStyleOwnerUID;
- (TSKUIDStruct)originalSrcTableUID;
- (TSKUIDStruct)srcCondStyleOwnerUID;
- (TSKUIDStruct)srcTableUID;
- (TSKUIDStruct)srcUidForDstUid:(const TSKUIDStruct *)uid;
- (id).cxx_construct;
- (id)description;
- (id)initFromMessage:(const void *)message;
- (void)loadIndexesForSrcTable:(id)table srcUidResolver:(id)resolver dstTable:(id)dstTable dstUidResolver:(id)uidResolver;
- (void)loadIndexesFromRegions;
- (void)saveToMessage:(void *)message;
- (void)unloadIndexes;
@end

@implementation TSCEFormulaRewrite_RegionMovedInfo

- (TSCEFormulaRewrite_RegionMovedInfo)initWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract
{
  v20.receiver = self;
  v20.super_class = TSCEFormulaRewrite_RegionMovedInfo;
  v10 = [(TSCEFormulaRewrite_RegionMovedInfo *)&v20 init];
  if (v10)
  {
    v11 = [TSCEFormulaRewrite_RegionInfo alloc];
    v13 = objc_msgSend_initWithTableUID_columnUids_rowUids_(v11, v12, d, tract, tract + 24);
    srcRegion = v10->_srcRegion;
    v10->_srcRegion = v13;

    v15 = [TSCEFormulaRewrite_RegionInfo alloc];
    v17 = objc_msgSend_initWithTableUID_columnUids_rowUids_(v15, v16, iD, destTract, destTract + 24);
    dstRegion = v10->_dstRegion;
    v10->_dstRegion = v17;
  }

  return v10;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v41._lower = objc_msgSend_srcTableUID(self, a2, v2, v3, v4);
  v41._upper = v7;
  v8 = TSKUIDStruct::description(&v41);
  v13 = objc_msgSend_columnUids(self->_srcRegion, v9, v10, v11, v12);
  v18 = objc_msgSend_rowUids(self->_srcRegion, v14, v15, v16, v17);
  v40._lower = objc_msgSend_dstTableUID(self, v19, v20, v21, v22);
  v40._upper = v23;
  v24 = TSKUIDStruct::description(&v40);
  v29 = objc_msgSend_columnUids(self->_dstRegion, v25, v26, v27, v28);
  v34 = objc_msgSend_rowUids(self->_dstRegion, v30, v31, v32, v33);
  v38 = objc_msgSend_stringWithFormat_(v6, v35, @"srcTableUID: %@\n\tsrcColumnUids: %@\n\tsrcRowUids: %@\n\tdstTableUID: %@\n\tdstColumnUids: %@\n\ndstRowUids: %@\n", v36, v37, v8, v13, v18, v24, v29, v34);

  return v38;
}

- (TSKUIDStruct)srcTableUID
{
  v5 = objc_msgSend_tableUID(self->_srcRegion, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)dstTableUID
{
  v5 = objc_msgSend_tableUID(self->_dstRegion, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)originalSrcTableUID
{
  originalSrcRegion = self->_originalSrcRegion;
  if (originalSrcRegion)
  {
    originalSrcRegion = objc_msgSend_tableUID(originalSrcRegion, a2, v2, v3, v4);
  }

  else
  {
    v6 = 0;
  }

  result._upper = v6;
  result._lower = originalSrcRegion;
  return result;
}

- (TSKUIDStruct)srcCondStyleOwnerUID
{
  v5 = objc_msgSend_condStyleOwnerUID(self->_srcRegion, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)dstCondStyleOwnerUID
{
  v5 = objc_msgSend_condStyleOwnerUID(self->_dstRegion, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)originalSrcCondStyleOwnerUID
{
  originalSrcRegion = self->_originalSrcRegion;
  if (originalSrcRegion)
  {
    originalSrcRegion = objc_msgSend_condStyleOwnerUID(originalSrcRegion, a2, v2, v3, v4);
  }

  else
  {
    v6 = 0;
  }

  result._upper = v6;
  result._lower = originalSrcRegion;
  return result;
}

- (BOOL)isForSrcTable:(const TSKUIDStruct *)table
{
  if (table->_lower == objc_msgSend_srcTableUID(self, a2, table, v3, v4) && table->_upper == v7)
  {
    return 1;
  }

  if (table->_lower == objc_msgSend_srcCondStyleOwnerUID(self, v7, v8, v9, v10))
  {
    return table->_upper == v12;
  }

  return 0;
}

- (BOOL)isForDstTable:(const TSKUIDStruct *)table
{
  if (table->_lower == objc_msgSend_dstTableUID(self, a2, table, v3, v4) && table->_upper == v7)
  {
    return 1;
  }

  if (table->_lower == objc_msgSend_dstCondStyleOwnerUID(self, v7, v8, v9, v10))
  {
    return table->_upper == v12;
  }

  return 0;
}

- (void)loadIndexesFromRegions
{
  v6 = objc_msgSend_columnUids(self->_srcRegion, a2, v2, v3, v4);
  v11 = objc_msgSend_uids(v6, v7, v8, v9, v10);
  v13 = *v11;
  v12 = v11[1];
  v18 = objc_msgSend_columnUids(self->_dstRegion, v14, v15, v16, v17);
  v23 = objc_msgSend_uids(v18, v19, v20, v21, v22);
  v24 = v12 - v13;
  v25 = v23[1] - *v23;

  if (v24 != v25)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSCEFormulaRewrite_RegionMovedInfo loadIndexesFromRegions]", v28, v29);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewrite_RegionInfo.mm", v33, v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v35, 277, 0, "Expecting source and dest regions to be the same size");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  v41 = objc_msgSend_rowUids(self->_srcRegion, v26, v27, v28, v29);
  v46 = objc_msgSend_uids(v41, v42, v43, v44, v45);
  v48 = *v46;
  v47 = v46[1];
  v53 = objc_msgSend_rowUids(self->_dstRegion, v49, v50, v51, v52);
  v58 = objc_msgSend_uids(v53, v54, v55, v56, v57);
  v59 = v47 - v48;
  v60 = v58[1] - *v58;

  if (v59 != v60)
  {
    v65 = MEMORY[0x277D81150];
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "[TSCEFormulaRewrite_RegionMovedInfo loadIndexesFromRegions]", v63, v64);
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewrite_RegionInfo.mm", v68, v69);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v71, v66, v70, 278, 0, "Expecting source and dest regions to be the same size");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75);
  }

  v76 = objc_msgSend_columnUids(self->_dstRegion, v61, v62, v63, v64);
  v81 = *objc_msgSend_uids(v76, v77, v78, v79, v80);

  v86 = objc_msgSend_columnUids(self->_srcRegion, v82, v83, v84, v85);
  v91 = *objc_msgSend_uids(v86, v87, v88, v89, v90);

  while (1)
  {
    v96 = objc_msgSend_columnUids(self->_srcRegion, v92, v93, v94, v95);
    if (v91 == *(objc_msgSend_uids(v96, v97, v98, v99, v100) + 8))
    {
      break;
    }

    v105 = objc_msgSend_columnUids(self->_dstRegion, v101, v102, v103, v104);
    v110 = *(objc_msgSend_uids(v105, v106, v107, v108, v109) + 8);

    if (v81 == v110)
    {
      goto LABEL_10;
    }

    *(sub_221230440(&self->_srcUidForDstUid.__table_.__bucket_list_.__ptr_, v81) + 2) = *v91;
    v115 = sub_221230440(&self->_dstUidForSrcUid.__table_.__bucket_list_.__ptr_, v91);
    v116 = *v81;
    v81 += 2;
    *(v115 + 2) = v116;
    v91 += 2;
  }

LABEL_10:
  v117 = objc_msgSend_rowUids(self->_dstRegion, v111, v112, v113, v114);
  v122 = *objc_msgSend_uids(v117, v118, v119, v120, v121);

  v127 = objc_msgSend_rowUids(self->_srcRegion, v123, v124, v125, v126);
  v132 = *objc_msgSend_uids(v127, v128, v129, v130, v131);

  while (1)
  {
    v137 = objc_msgSend_rowUids(self->_srcRegion, v133, v134, v135, v136);
    if (v132 == *(objc_msgSend_uids(v137, v138, v139, v140, v141) + 8))
    {
      break;
    }

    v146 = objc_msgSend_rowUids(self->_dstRegion, v142, v143, v144, v145);
    v151 = *(objc_msgSend_uids(v146, v147, v148, v149, v150) + 8);

    if (v122 == v151)
    {
      return;
    }

    *(sub_221230440(&self->_srcUidForDstUid.__table_.__bucket_list_.__ptr_, v122) + 2) = *v132;
    v152 = sub_221230440(&self->_dstUidForSrcUid.__table_.__bucket_list_.__ptr_, v132);
    v153 = *v122;
    v122 += 2;
    *(v152 + 2) = v153;
    v132 += 2;
  }
}

- (void)loadIndexesForSrcTable:(id)table srcUidResolver:(id)resolver dstTable:(id)dstTable dstUidResolver:(id)uidResolver
{
  tableCopy = table;
  resolverCopy = resolver;
  dstTableCopy = dstTable;
  uidResolverCopy = uidResolver;
  objc_msgSend_loadIndexesForTable_uidResolver_(self->_srcRegion, v13, tableCopy, resolverCopy, v14);
  objc_msgSend_loadIndexesForTable_uidResolver_(self->_dstRegion, v15, dstTableCopy, uidResolverCopy, v16);
  objc_msgSend_loadIndexesFromRegions(self, v17, v18, v19, v20);
}

- (void)unloadIndexes
{
  objc_msgSend_unloadIndexes(self->_srcRegion, a2, v2, v3, v4);
  objc_msgSend_unloadIndexes(self->_dstRegion, v6, v7, v8, v9);
  sub_2210BE918(&self->_srcUidForDstUid.__table_.__bucket_list_.__ptr_);

  sub_2210BE918(&self->_dstUidForSrcUid.__table_.__bucket_list_.__ptr_);
}

- (TSKUIDStruct)dstUidForSrcUid:(const TSKUIDStruct *)uid
{
  v5 = sub_2210875C4(&self->_dstUidForSrcUid.__table_.__bucket_list_.__ptr_, uid);
  if (v5)
  {
    v6 = sub_221230440(&self->_dstUidForSrcUid.__table_.__bucket_list_.__ptr_, uid);
    v5 = v6[4];
    v7 = v6[5];
  }

  else
  {
    v7 = 0;
  }

  result._upper = v7;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)srcUidForDstUid:(const TSKUIDStruct *)uid
{
  v5 = sub_2210875C4(&self->_srcUidForDstUid.__table_.__bucket_list_.__ptr_, uid);
  if (v5)
  {
    v6 = sub_221230440(&self->_srcUidForDstUid.__table_.__bucket_list_.__ptr_, uid);
    v5 = v6[4];
    v7 = v6[5];
  }

  else
  {
    v7 = 0;
  }

  result._upper = v7;
  result._lower = v5;
  return result;
}

- (id)initFromMessage:(const void *)message
{
  v29.receiver = self;
  v29.super_class = TSCEFormulaRewrite_RegionMovedInfo;
  v4 = [(TSCEFormulaRewrite_RegionMovedInfo *)&v29 init];
  if (v4)
  {
    v5 = [TSCEFormulaRewrite_RegionInfo alloc];
    if (*(message + 3))
    {
      v9 = objc_msgSend_initFromMessage_(v5, v6, *(message + 3), v7, v8);
    }

    else
    {
      v9 = objc_msgSend_initFromMessage_(v5, v6, &TSCE::_RegionInfoArchive_default_instance_, v7, v8);
    }

    srcRegion = v4->_srcRegion;
    v4->_srcRegion = v9;

    v11 = [TSCEFormulaRewrite_RegionInfo alloc];
    if (*(message + 4))
    {
      v15 = objc_msgSend_initFromMessage_(v11, v12, *(message + 4), v13, v14);
    }

    else
    {
      v15 = objc_msgSend_initFromMessage_(v11, v12, &TSCE::_RegionInfoArchive_default_instance_, v13, v14);
    }

    dstRegion = v4->_dstRegion;
    v4->_dstRegion = v15;

    v21 = *(message + 4);
    if ((v21 & 8) != 0)
    {
      v4->_finalDstTableUID._lower = TSKUIDStruct::loadFromMessage(*(message + 6), v17);
      v4->_finalDstTableUID._upper = v17;
      v21 = *(message + 4);
      if ((v21 & 4) == 0)
      {
LABEL_16:
        v4->_spanningRows = (v21 & 0x10) != 0;
        v4->_spanningColumns = (v21 & 0x20) != 0;
        objc_msgSend_loadIndexesFromRegions(v4, v17, v18, v19, v20);
        return v4;
      }
    }

    else
    {
      v4->_finalDstTableUID._lower = 0;
      v4->_finalDstTableUID._upper = 0;
      if ((v21 & 4) == 0)
      {
        goto LABEL_16;
      }
    }

    v22 = [TSCEFormulaRewrite_RegionInfo alloc];
    if (*(message + 5))
    {
      v26 = objc_msgSend_initFromMessage_(v22, v23, *(message + 5), v24, v25);
    }

    else
    {
      v26 = objc_msgSend_initFromMessage_(v22, v23, &TSCE::_RegionInfoArchive_default_instance_, v24, v25);
    }

    originalSrcRegion = v4->_originalSrcRegion;
    v4->_originalSrcRegion = v26;

    v21 = *(message + 4);
    goto LABEL_16;
  }

  return v4;
}

- (void)saveToMessage:(void *)message
{
  srcRegion = self->_srcRegion;
  *(message + 4) |= 1u;
  v8 = *(message + 3);
  if (!v8)
  {
    v9 = *(message + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionInfoArchive>(v9);
    *(message + 3) = v8;
  }

  objc_msgSend_saveToMessage_(srcRegion, a2, v8, v3, v4);
  dstRegion = self->_dstRegion;
  *(message + 4) |= 2u;
  v14 = *(message + 4);
  if (!v14)
  {
    v15 = *(message + 1);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionInfoArchive>(v15);
    *(message + 4) = v14;
  }

  objc_msgSend_saveToMessage_(dstRegion, v10, v14, v11, v12);
  if (self->_finalDstTableUID._lower || self->_finalDstTableUID._upper)
  {
    *(message + 4) |= 8u;
    v19 = *(message + 6);
    if (!v19)
    {
      v20 = *(message + 1);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x223DA0360](v20);
      *(message + 6) = v19;
    }

    TSKUIDStruct::saveToMessage(&self->_finalDstTableUID, v19);
  }

  originalSrcRegion = self->_originalSrcRegion;
  if (originalSrcRegion)
  {
    *(message + 4) |= 4u;
    v22 = *(message + 5);
    if (!v22)
    {
      v23 = *(message + 1);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionInfoArchive>(v23);
      *(message + 5) = v22;
    }

    objc_msgSend_saveToMessage_(originalSrcRegion, v16, v22, v17, v18);
  }

  if (self->_spanningRows)
  {
    *(message + 4) |= 0x10u;
    *(message + 56) = 1;
  }

  if (self->_spanningColumns)
  {
    *(message + 4) |= 0x20u;
    *(message + 57) = 1;
  }
}

- (TSKUIDStruct)finalDstTableUID
{
  upper = self->_finalDstTableUID._upper;
  lower = self->_finalDstTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 30) = 1065353216;
  return self;
}

@end