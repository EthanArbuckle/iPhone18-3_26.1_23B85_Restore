@interface TSTRunningTotalContext
- (BOOL)isMissingRunningTotalFieldForAggIndex:(unsigned __int16)a3;
- (TSKUIDStructCoord)getPreviousUidCoordForAggIndex:(SEL)a3 fromNewUidCoord:(unsigned __int16)a4 addNewUidCoordEvenIfNotFound:(const TSKUIDStructCoord *)a5;
- (TSTRunningTotalContext)initWithGroupBySet:(id)a3;
- (id).cxx_construct;
@end

@implementation TSTRunningTotalContext

- (TSTRunningTotalContext)initWithGroupBySet:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v58.receiver = self;
  v58.super_class = TSTRunningTotalContext;
  v5 = [(TSTRunningTotalContext *)&v58 init];
  if (v5)
  {
    v51 = v5;
    objc_storeStrong(&v5->_groupBySet, a3);
    v10 = objc_msgSend_aggregates(v52, v6, v7, v8, v9);
    if (objc_msgSend_count(v10, v11, v12, v13, v14))
    {
      v57 = 0;
      objc_msgSend_asArray(v10, v15, v16, v17, v18);
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v19 = v54 = 0u;
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v53, v60, 16);
      if (v25)
      {
        v26 = *v54;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v54 != v26)
            {
              objc_enumerationMutation(v19);
            }

            v28 = *(*(&v53 + 1) + 8 * i);
            if ((objc_msgSend_showAsType(v28, v21, v22, v23, v24, v51) & 0xFE) == 6)
            {
              v29 = objc_msgSend_runningTotalGroupingColumnUid(v28, v21, v22, v23, v24);
              v31 = v30;
              v35 = objc_msgSend_rowGroupings(v52, v30, v32, v33, v34);
              v38 = objc_msgSend_groupingColumnForColumnUID_(v35, v36, v29, v31, v37);

              if (v38)
              {
                v43 = 0;
                v44 = 1;
              }

              else
              {
                v45 = objc_msgSend_columnGroupings(v52, v39, v40, v41, v42);
                v38 = objc_msgSend_groupingColumnForColumnUID_(v45, v46, v29, v31, v47);

                v43 = v38 == 0;
                v44 = v38 == 0;
                if (!v38)
                {
                  v38 = 0;
                }
              }

              v59 = &v57;
              v48 = sub_221300B0C(&v51->_runAggrForAggIndex.__table_.__bucket_list_.__ptr_, &v57);
              v48[3] = v29;
              v48[4] = v31;
              *(v48 + 40) = v44;
              *(v48 + 41) = v43;
            }

            ++v57;
          }

          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v53, v60, 16);
        }

        while (v25);
      }
    }

    v5 = v51;
  }

  v49 = v5;

  return v49;
}

- (BOOL)isMissingRunningTotalFieldForAggIndex:(unsigned __int16)a3
{
  v6 = a3;
  v3 = sub_2210C3024(&self->_runAggrForAggIndex.__table_.__bucket_list_.__ptr_, &v6);
  if (v3)
  {
    v4 = *(v3 + 41);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (TSKUIDStructCoord)getPreviousUidCoordForAggIndex:(SEL)a3 fromNewUidCoord:(unsigned __int16)a4 addNewUidCoordEvenIfNotFound:(const TSKUIDStructCoord *)a5
{
  v6 = a6;
  v42 = a4;
  v10 = sub_2210C3024(&self->_runAggrForAggIndex.__table_.__bucket_list_.__ptr_, &v42);
  if (!v10)
  {
    return TSKMakeInvalidUIDStructCoord();
  }

  v13 = v10;
  v14 = objc_msgSend_groupValueTupleForUuidCoord_createIfMissing_(self->_groupBySet, v11, a5, 0, v12);
  v17 = 16;
  if (*(v13 + 40))
  {
    v17 = 0;
  }

  v41 = *(&a5->_column + v17);
  if (v14)
  {
    goto LABEL_5;
  }

  if (*(v13 + 41))
  {
    return TSKMakeInvalidUIDStructCoord();
  }

  v14 = objc_msgSend_groupValueTupleForUuidCoord_createIfMissing_(self->_groupBySet, v15, a5, 1, v16, v41);
  if (!v14)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTRunningTotalContext getPreviousUidCoordForAggIndex:fromNewUidCoord:addNewUidCoordEvenIfNotFound:]", v28, v29);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRunningTotalContext.mm", v33, v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v35, 387, 0, "We need to locate (or create) a tuple");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
    return TSKMakeInvalidUIDStructCoord();
  }

LABEL_5:
  v18 = v14;
  v43 = &v42;
  v19 = sub_221300D50(&self->_valuesForRunningAggregatePerRunDirectionUid.__table_.__bucket_list_.__ptr_, &v42);
  v20 = sub_2210875C4(v19 + 3, &v41);
  if (!v20)
  {
    v22 = objc_opt_new();
    v43 = &v41;
    v23 = sub_221301014(v19 + 3, &v41);
    v24 = v23[4];
    v23[4] = v22;

    v20 = sub_2210875C4(v19 + 3, &v41);
  }

  retstr->_column = 0u;
  retstr->_row = 0u;
  v25 = v20[4];
  if (v25)
  {
    objc_msgSend_getUidCoordforRunningAggregate_tupleForCoord_newUidCoord_addNewUidCoordEvenIfNotFound_inContext_(v25, v21, (v13 + 3), v18, a5, v6, self);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  return self;
}

@end