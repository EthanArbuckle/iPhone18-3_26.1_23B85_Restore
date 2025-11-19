@interface TSCEFunction_SUM
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
+ (id)getResultWithVector:(id)a3 context:(id)a4 functionSpec:(id)a5 index:(int)a6;
@end

@implementation TSCEFunction_SUM

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v23 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, a3, a4, 0, 1, &v23);
  v12 = v23;
  if (v12)
  {
    v13 = objc_msgSend_raiseErrorOrConvert_(a3, v9, v12, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_SUM, v9, v8, a3, a4, 0);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v14, a3, v15, v16);
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }

    TSCEFormat::TSCEFormat(&v22, &v21);
    objc_msgSend_setFormat_(v13, v17, &v22, v18, v19);
  }

  return v13;
}

+ (id)getResultWithVector:(id)a3 context:(id)a4 functionSpec:(id)a5 index:(int)a6
{
  v9 = a3;
  v81 = a4;
  v10 = objc_alloc_init(TSCESumAccumulator);
  v15 = objc_msgSend_count(v9, v11, v12, v13, v14);
  v16 = v81;
  v93[0] = v16;
  v93[1] = a5;
  v94 = 0;
  v82 = a6;
  v95 = a6;
  *v96 = 0;
  v97 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v98 = 0;
  v99 = 0;
  v24 = objc_msgSend_hidingActionMask(v16, v17, v18, v19, v20);
  *&v96[3] = v24 != 0;
  v92[0] = 0;
  v92[1] = 0;
  v91 = v92;
  if (!v15)
  {
LABEL_29:
    v78 = objc_msgSend_resultForFunction_(v10, v21, a5, v22, v23);
    v79 = 0;
    goto LABEL_30;
  }

  v25 = 0;
  while (1)
  {
    v26 = objc_msgSend_valueAtIndex_accessContext_(v9, v21, v25, v93, v23);
    v31 = v26;
    if (!v24)
    {
      goto LABEL_25;
    }

    if ((v96[6] & v24) == 0)
    {
      break;
    }

LABEL_26:

    if (++v25 == v15)
    {
      goto LABEL_29;
    }
  }

  if (v24 & 0x40) == 0 || (objc_msgSend_isNil(v26, v27, v28, v29, v30))
  {
    goto LABEL_25;
  }

  if (objc_msgSend_isThunk(v31, v27, v32, v33, v34))
  {
    v39 = objc_msgSend_unwrapThunk_(v16, v35, v31, v37, v38);

    v31 = v39;
  }

  if (!objc_msgSend_isReferenceValue(v31, v35, v36, v37, v38))
  {
LABEL_25:
    objc_msgSend_addValue_evaluationContext_functionSpec_(v10, v27, v31, v16, a5);
    goto LABEL_26;
  }

  v90 = 0;
  v40 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v31, v27, v16, a5, v82, &v90);
  v41 = v90;
  if (!v41)
  {
    *&v83 = objc_msgSend_tableUID(v40, v42, v43, v44, v45);
    *(&v83 + 1) = v46;
    objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v46, &v83, v47, v48);
    v88._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    v88._coordsForOwnerUid.__tree_.__size_ = 0;
    v88._coordsForOwnerUid.__tree_.__begin_node_ = &v88._coordsForOwnerUid.__tree_.__end_node_;
    v53 = objc_msgSend_tableUID(v40, v49, v50, v51, v52);
    for (i = v92[0]; i; i = *i)
    {
      if (__PAIR128__(v54, v53) >= *(i + 2))
      {
        if (i[5] >= v54 && i[4] >= v53)
        {
          *&v83 = objc_msgSend_tableUID(v40, v54, v55, v56, v57);
          *(&v83 + 1) = v76;
          v77 = sub_22121D288(&v91, &v83);
          TSCECellRefSet::operator=(&v88, v77);
          goto LABEL_21;
        }

        ++i;
      }
    }

    v59 = objc_msgSend_calcEngine(v16, v54, v55, v56, v57);
    v63 = v59;
    if (v59)
    {
      objc_msgSend_cellDependentsOfCell_(v59, v60, v89, v61, v62);
    }

    else
    {
      v83 = 0uLL;
      *v84 = 0;
    }

    TSCECellRefSet::operator=(&v88, &v83);
    sub_22107C800(&v83, *(&v83 + 1));

    *&v83 = objc_msgSend_tableUID(v40, v64, v65, v66, v67);
    *(&v83 + 1) = v68;
    TSCECellRefSet::TSCECellRefSet(v84, &v88);
    sub_22121E5E0(&v91, &v83);
    sub_22107C800(v84, *&v84[8]);
LABEL_21:
    if (v40)
    {
      objc_msgSend_anyRef(v40, v69, v70, v71, v72);
      v73 = *(&v83 + 1);
      v74 = *(&v86 + 1);
    }

    else
    {
      v74 = 0;
      v73 = 0;
      v85 = 0u;
      v86 = 0u;
      memset(v84, 0, sizeof(v84));
      v83 = 0u;
    }

    v87.coordinate = v73;
    v87._tableUID = *&v84[8];

    v75 = TSCECellRefSet::containsCellRef(&v88, &v87);
    sub_22107C800(&v88, v88._coordsForOwnerUid.__tree_.__end_node_.__left_);

    if (v75)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v79 = v41;
  v78 = objc_msgSend_raiseErrorOrConvert_(v16, v42, v41, v44, v45);

LABEL_30:
  sub_22121E580(&v91, v92[0]);

  return v78;
}

@end