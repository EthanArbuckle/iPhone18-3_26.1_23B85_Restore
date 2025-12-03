@interface TSCEFunction_PRODUCT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)getResultWithVector:(id)vector context:(id)context functionSpec:(id)spec index:(int)index;
@end

@implementation TSCEFunction_PRODUCT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v24 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 0, &v24);
  v13 = v24;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v11, v12);
  }

  else
  {
    v14 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_PRODUCT, v10, v9, context, spec, 0);
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v15, context, v16, v17);
    }

    else
    {
      memset(&v22, 0, sizeof(v22));
    }

    TSCEFormat::TSCEFormat(&v23, &v22);
    objc_msgSend_setFormat_(v14, v18, &v23, v19, v20);
  }

  return v14;
}

+ (id)getResultWithVector:(id)vector context:(id)context functionSpec:(id)spec index:(int)index
{
  vectorCopy = vector;
  contextCopy = context;
  v14 = objc_msgSend_zero(TSCENumberValue, v10, v11, v12, v13);
  v15 = contextCopy;
  v141[0] = v15;
  v141[1] = spec;
  v142 = 0;
  indexCopy = index;
  indexCopy2 = index;
  *v144 = 0;
  v145 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v146 = 0;
  v147 = 0;
  v24 = objc_msgSend_hidingActionMask(v15, v16, v17, v18, v19);
  v25 = 0;
  v26 = 0;
  *&v144[3] = v24 != 0;
  v140[0] = 0;
  v140[1] = 0;
  v139 = v140;
  specCopy = spec;
  v27 = 1;
  while (1)
  {
    if (v26 >= objc_msgSend_count(vectorCopy, v20, v21, v22, v23))
    {
      if (objc_msgSend_isFinite(v14, v28, v29, v30, v31))
      {
        v14 = v14;
        v91 = 0;
        v104 = v14;
        goto LABEL_43;
      }

      v109 = objc_msgSend_functionName(spec, v100, v101, v102, v103);
      v113 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v110, v109, v111, v112);
      v104 = objc_msgSend_raiseErrorOrConvert_(v15, v114, v113, v115, v116);

      goto LABEL_38;
    }

    v32 = objc_msgSend_valueAtIndex_accessContext_(vectorCopy, v28, v26, v141, v31);
    if (objc_msgSend_isError(v32, v33, v34, v35, v36))
    {
      v105 = objc_msgSend_errorWithContext_(v32, v37, v15, v39, v40);
      v104 = objc_msgSend_raiseErrorOrConvert_(v15, v106, v105, v107, v108);

LABEL_38:
      v91 = 0;
      goto LABEL_43;
    }

    if (v24)
    {
      if ((v144[6] & v24) != 0)
      {
        goto LABEL_32;
      }

      if ((v24 & 0x40) != 0 && (objc_msgSend_isNil(v32, v37, v38, v39, v40) & 1) == 0)
      {
        if (objc_msgSend_isThunk(v32, v37, v38, v39, v40))
        {
          v45 = objc_msgSend_unwrapThunk_(v15, v41, v32, v43, v44);

          v32 = v45;
        }

        if (objc_msgSend_isReferenceValue(v32, v41, v42, v43, v44))
        {
          break;
        }
      }
    }

LABEL_26:
    if ((objc_msgSend_isNil(v32, v37, v38, v39, v40) & 1) == 0)
    {
      if (v27)
      {
        TSUDecimal::operator=();
        v86 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v83, &v131, v84, v85);

        v14 = v86;
      }

      v130 = 0;
      v46 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v32, v82, v15, spec, indexCopy, &v130);
      v91 = v130;
      if (v91)
      {
        v117 = objc_msgSend_raiseErrorOrConvert_(v15, v87, v91, v89, v90);
        goto LABEL_40;
      }

      isDuration = objc_msgSend_isDuration(v46, v87, v88, v89, v90);
      if ((isDuration & v25) == 1)
      {
        v118 = objc_msgSend_functionName(specCopy, v92, v93, v94, v95);
        v122 = objc_msgSend_multipleDurationsErrorForFunctionName_(TSCEError, v119, v118, v120, v121);
        v104 = objc_msgSend_raiseErrorOrConvert_(v15, v123, v122, v124, v125);

        goto LABEL_42;
      }

      v97 = objc_msgSend_multiply_context_(v14, v92, v46, v15, v95);
      v25 |= isDuration;

      v27 = 0;
      v14 = v97;
      spec = specCopy;
    }

LABEL_32:

    ++v26;
  }

  v138 = 0;
  v46 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v32, v37, v15, spec, indexCopy, &v138);
  v47 = v138;
  if (!v47)
  {
    *&v131 = objc_msgSend_tableUID(v46, v48, v49, v50, v51);
    *(&v131 + 1) = v52;
    objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v52, &v131, v53, v54);
    v136._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    v136._coordsForOwnerUid.__tree_.__size_ = 0;
    v136._coordsForOwnerUid.__tree_.__begin_node_ = &v136._coordsForOwnerUid.__tree_.__end_node_;
    v59 = objc_msgSend_tableUID(v46, v55, v56, v57, v58);
    for (i = v140[0]; i; i = *i)
    {
      if (__PAIR128__(v60, v59) >= *(i + 2))
      {
        if (i[5] >= v60 && i[4] >= v59)
        {
          *&v131 = objc_msgSend_tableUID(v46, v60, v61, v62, v63);
          *(&v131 + 1) = v98;
          v99 = sub_22121D288(&v139, &v131);
          TSCECellRefSet::operator=(&v136, v99);
          goto LABEL_22;
        }

        ++i;
      }
    }

    v65 = objc_msgSend_calcEngine(v15, v60, v61, v62, v63);
    v69 = v65;
    if (v65)
    {
      objc_msgSend_cellDependentsOfCell_(v65, v66, v137, v67, v68);
    }

    else
    {
      v131 = 0uLL;
      *v132 = 0;
    }

    TSCECellRefSet::operator=(&v136, &v131);
    sub_22107C800(&v131, *(&v131 + 1));

    *&v131 = objc_msgSend_tableUID(v46, v70, v71, v72, v73);
    *(&v131 + 1) = v74;
    TSCECellRefSet::TSCECellRefSet(v132, &v136);
    sub_22121E5E0(&v139, &v131);
    sub_22107C800(v132, *&v132[8]);
LABEL_22:
    if (v46)
    {
      objc_msgSend_anyRef(v46, v75, v76, v77, v78);
      v79 = *(&v131 + 1);
      v80 = *(&v134 + 1);
    }

    else
    {
      v80 = 0;
      v79 = 0;
      v133 = 0u;
      v134 = 0u;
      memset(v132, 0, sizeof(v132));
      v131 = 0u;
    }

    v135.coordinate = v79;
    v135._tableUID = *&v132[8];

    v81 = TSCECellRefSet::containsCellRef(&v136, &v135);
    sub_22107C800(&v136, v136._coordsForOwnerUid.__tree_.__end_node_.__left_);

    spec = specCopy;
    if (v81)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v91 = v47;
  v117 = objc_msgSend_raiseErrorOrConvert_(v15, v48, v47, v50, v51);
LABEL_40:
  v104 = v117;
LABEL_42:

LABEL_43:
  sub_22121E580(&v139, v140[0]);

  return v104;
}

@end