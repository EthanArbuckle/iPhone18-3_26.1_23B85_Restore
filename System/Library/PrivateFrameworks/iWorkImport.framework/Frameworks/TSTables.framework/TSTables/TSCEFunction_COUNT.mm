@interface TSCEFunction_COUNT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
+ (id)getResultWithVector:(id)a3 context:(id)a4 functionSpec:(id)a5 index:(int)a6 countBehavior:(int64_t)a7;
@end

@implementation TSCEFunction_COUNT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v20 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, a3, a4, 0, 0, &v20);
  v12 = v20;
  if (v12)
  {
    v13 = objc_msgSend_raiseErrorOrConvert_(a3, v9, v12, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_getResultWithVector_context_functionSpec_index_countBehavior_(TSCEFunction_COUNT, v9, v8, a3, a4, 0, 0);
    TSCEFormat::TSCEFormat(&v18, 256);
    TSCEFormat::TSCEFormat(&v19, &v18);
    objc_msgSend_setFormat_(v13, v14, &v19, v15, v16);
  }

  return v13;
}

+ (id)getResultWithVector:(id)a3 context:(id)a4 functionSpec:(id)a5 index:(int)a6 countBehavior:(int64_t)a7
{
  v11 = a3;
  v108 = a4;
  v16 = objc_msgSend_count(v11, v12, v13, v14, v15);
  v17 = v108;
  v22 = v17;
  v127 = 0;
  v128 = 0;
  v130 = 0;
  v131 = 0;
  if (a7 == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = a5;
  }

  if (a7 == 1)
  {
    v24 = -1;
  }

  else
  {
    v24 = a6;
  }

  v123[0] = v17;
  v123[1] = v23;
  v124 = 0;
  v125 = v24;
  v126 = 0;
  v129 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v27 = objc_msgSend_hidingActionMask(v17, v18, v19, v20, v21);
  BYTE2(v127) = v27 != 0;
  v122[0] = 0;
  v122[1] = 0;
  v121 = v122;
  if (!v16)
  {
LABEL_62:
    TSUDecimal::operator=();
    v106 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v103, &v113, v104, v105);
LABEL_63:
    v95 = 0;
    goto LABEL_64;
  }

  v109 = a6;
  v111 = 0;
  v28 = 0;
  v110 = a5;
  while (1)
  {
    v29 = objc_msgSend_valueAtIndex_accessContext_(v11, v25, v28, v123, v26);
    isError = objc_msgSend_isError(v29, v30, v31, v32, v33);
    v39 = isError;
    if (isError)
    {
      v40 = objc_msgSend_errorWithContext_(v29, v35, v22, v37, v38);
      v45 = v40;
      if ((a7 & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        if (a7 == 1 && (objc_msgSend_isInvalidMergeReference(v40, v41, v42, v43, v44) & 1) != 0)
        {
LABEL_67:
          v106 = objc_msgSend_raiseErrorOrConvert_(v22, v46, v45, v47, v48);

          goto LABEL_63;
        }
      }

      else if (objc_msgSend_isInvalidReferenceError(v40, v41, v42, v43, v44))
      {
        goto LABEL_67;
      }
    }

    if (a7 == 1 && objc_msgSend_valueIsEmptyWithContext_(v29, v35, v22, v37, v38))
    {
      v49 = objc_msgSend_nilValue(TSCENilValue, v35, v36, v37, v38);

      v29 = v49;
    }

    if (v27)
    {
      if ((HIBYTE(v128) & v27) != 0)
      {
        goto LABEL_59;
      }

      if ((v27 & 0x40) != 0 && (objc_msgSend_isNil(v29, v35, v36, v37, v38) & 1) == 0)
      {
        if (objc_msgSend_isThunk(v29, v35, v36, v37, v38))
        {
          v54 = objc_msgSend_unwrapThunk_(v22, v50, v29, v52, v53);

          v29 = v54;
        }

        if (objc_msgSend_isReferenceValue(v29, v50, v51, v52, v53))
        {
          break;
        }
      }
    }

LABEL_41:
    if (a7 != 2)
    {
      if (a7 == 1)
      {
        if ((v39 & 1) != 0 || (objc_msgSend_isNil(v29, v35, v36, v37, v38) & 1) == 0)
        {
          ++v111;
        }
      }

      else if (!a7 && (v39 & 1) == 0)
      {
        v111 += objc_msgSend_isNil(v29, v35, v36, v37, v38) ^ 1;
      }

      goto LABEL_59;
    }

    if ((v39 & 1) == 0 && (objc_msgSend_isNil(v29, v35, v36, v37, v38) & 1) != 0 || objc_msgSend_valueIsBlank_context_(TSCEFunction_ISBLANK, v35, v29, v22, v38) && !objc_msgSend_isNil(v29, v35, v92, v91, v38))
    {
      v95 = 0;
    }

    else
    {
      if (objc_msgSend_deepType_(v29, v35, v22, v91, v38) != 7)
      {
        goto LABEL_59;
      }

      v112 = 0;
      v94 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v29, v93, v22, v110, 0, &v112);
      v95 = v112;
      v100 = objc_msgSend_length(v94, v96, v97, v98, v99);

      if (v100)
      {
        goto LABEL_58;
      }
    }

    ++v111;
LABEL_58:
    if (v95)
    {
      v106 = objc_msgSend_raiseErrorOrConvert_(v22, v35, v95, v91, v38);
      goto LABEL_70;
    }

LABEL_59:

    if (++v28 == v16)
    {
      goto LABEL_62;
    }
  }

  v120 = 0;
  v55 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v29, v35, v22, v110, v109, &v120);
  v56 = v120;
  if (!v56)
  {
    *&v113 = objc_msgSend_tableUID(v55, v57, v58, v59, v60);
    *(&v113 + 1) = v61;
    objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v61, &v113, v62, v63);
    v118._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    v118._coordsForOwnerUid.__tree_.__size_ = 0;
    v118._coordsForOwnerUid.__tree_.__begin_node_ = &v118._coordsForOwnerUid.__tree_.__end_node_;
    v68 = objc_msgSend_tableUID(v55, v64, v65, v66, v67);
    for (i = v122[0]; i; i = *i)
    {
      if (__PAIR128__(v69, v68) >= *(i + 2))
      {
        if (i[5] >= v69 && i[4] >= v68)
        {
          *&v113 = objc_msgSend_tableUID(v55, v69, v70, v71, v72);
          *(&v113 + 1) = v101;
          v102 = sub_22121D288(&v121, &v113);
          TSCECellRefSet::operator=(&v118, v102);
          goto LABEL_37;
        }

        ++i;
      }
    }

    v74 = objc_msgSend_calcEngine(v22, v69, v70, v71, v72);
    v78 = v74;
    if (v74)
    {
      objc_msgSend_cellDependentsOfCell_(v74, v75, v119, v76, v77);
    }

    else
    {
      v113 = 0uLL;
      *v114 = 0;
    }

    TSCECellRefSet::operator=(&v118, &v113);
    sub_22107C800(&v113, *(&v113 + 1));

    *&v113 = objc_msgSend_tableUID(v55, v79, v80, v81, v82);
    *(&v113 + 1) = v83;
    TSCECellRefSet::TSCECellRefSet(v114, &v118);
    sub_22121E5E0(&v121, &v113);
    sub_22107C800(v114, *&v114[8]);
LABEL_37:
    if (v55)
    {
      objc_msgSend_anyRef(v55, v84, v85, v86, v87);
      v88 = *(&v113 + 1);
      v89 = *(&v116 + 1);
    }

    else
    {
      v89 = 0;
      v88 = 0;
      v115 = 0u;
      v116 = 0u;
      memset(v114, 0, sizeof(v114));
      v113 = 0u;
    }

    v117.coordinate = v88;
    v117._tableUID = *&v114[8];

    v90 = TSCECellRefSet::containsCellRef(&v118, &v117);
    sub_22107C800(&v118, v118._coordsForOwnerUid.__tree_.__end_node_.__left_);

    if (v90)
    {
      goto LABEL_59;
    }

    goto LABEL_41;
  }

  v95 = v56;
  v106 = objc_msgSend_raiseErrorOrConvert_(v22, v57, v56, v59, v60);

LABEL_70:
LABEL_64:
  sub_22121E580(&v121, v122[0]);

  return v106;
}

@end