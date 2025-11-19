@interface TSCEFunction_SUMIFS
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_SUMIFS

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v9 = **a5;
  v117[0] = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, a2, a3, a4, 0, 1, v117);
  v11 = v117[0];
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v13, v14);
    goto LABEL_38;
  }

  v17 = objc_alloc_init(TSCESumAccumulator);
  if (objc_msgSend_gridKind(v10, v18, v19, v20, v21) != 2)
  {
    goto LABEL_11;
  }

  v116 = 0;
  v26 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v10, v22, a3, a4, 0, &v116);
  v15 = v116;
  if (!v15)
  {
    v36 = objc_msgSend_calcEngine(a3, v27, v28, v29, v30);
    if (v26)
    {
      objc_msgSend_rangeRef(v26, v32, v33, v34, v35);
    }

    else
    {
      v109 = 0u;
      *v110 = 0u;
    }

    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v36, v32, &v109, v34, v35);

    if ((IsWithinTable & 1) == 0)
    {
      v61 = objc_msgSend_invalidReferenceError(TSCEError, v38, v39, v40, v41);
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v74, v61, v75, v76);
LABEL_36:

      goto LABEL_37;
    }

LABEL_11:
    v42 = objc_msgSend_dimensions(v10, v22, v23, v24, v25);
    v115 = 0;
    v26 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(a1, v43, a3, a4, a5, v42, 1, 0, &v115);
    v44 = v115;
    if (v44)
    {
      v15 = v44;
      v31 = objc_msgSend_raiseErrorOrConvert_(a3, v45, v44, v46, v47);
      goto LABEL_13;
    }

    v103 = v17;
    v104 = objc_msgSend_sortCriteriaByCost_(TSCEGridValue, v45, v26, v46, v47);
    v52 = a3;
    *&v109 = v52;
    *(&v109 + 1) = a4;
    *v110 = 0;
    *&v110[8] = 0;
    v110[12] = 1;
    *&v110[13] = 0;
    v111 = 0;
    v112 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v113 = 0;
    v114 = 0;
    v102 = HIDWORD(v42);
    if (!HIDWORD(v42))
    {
LABEL_15:
      v17 = v103;
      if ((objc_msgSend_foundANumber(v103, v48, v49, v50, v51) & 1) == 0)
      {
        v57 = objc_msgSend_dateAccumulator(v103, v53, v54, v55, v56);

        if (!v57 && v102 && v42)
        {
          v81 = objc_msgSend_valueAtGridCoord_accessContext_(v10, v53, 0, &v109, v56);
          if ((objc_msgSend_deepType_(v81, v82, v52, v83, v84) & 0xFFFFFFFE) == 4)
          {
            v107 = 0;
            v86 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v81, v85, v52, a4, 0, &v107);
            v15 = v107;
            v91 = objc_msgSend_unit(v86, v87, v88, v89, v90);

            if (v15)
            {
              v16 = objc_msgSend_raiseErrorOrConvert_(v52, v92, v15, v94, v95);

LABEL_31:
              v61 = v104;
LABEL_35:

              goto LABEL_36;
            }

            v96 = objc_msgSend_numberAccumulator(v103, v92, v93, v94, v95);
            objc_msgSend_setUnit_(v96, v97, v91, v98, v99);
          }
        }
      }

      v16 = objc_msgSend_resultForFunction_(v103, v53, a4, v55, v56);
      v61 = v104;
      if (v10)
      {
        objc_msgSend_formatWithContext_(v10, v58, v52, v59, v60);
      }

      else
      {
        memset(&v105, 0, sizeof(v105));
      }

      TSCEFormat::TSCEFormat(&v106, &v105);
      objc_msgSend_setFormat_(v16, v77, &v106, v78, v79);
      v15 = 0;
      goto LABEL_35;
    }

    v62 = 0;
    v63 = 0;
    v100 = v42;
    v101 = v42;
    while (1)
    {
      v64 = v42;
      v65 = v101;
      v66 = v62;
      if (v64)
      {
        break;
      }

LABEL_28:
      ++v63;
      v62 += 0x100000000;
      LODWORD(v42) = v100;
      if (v63 == v102)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v108 = 0;
      v67 = objc_msgSend_valueAtGridCoordPassesCriteria_coord_criteria_outError_(TSCEGridValue, v48, &v109, v66, v104, &v108);
      v15 = v108;
      if (v67)
      {
        v68 = objc_msgSend_valueAtGridCoord_accessContext_(v10, v48, v66, &v109, v51);
        v72 = objc_msgSend_deepType_(v68, v69, v52, v70, v71);
        if (v72 == 5 || v72 == 3)
        {
          objc_msgSend_addValue_evaluationContext_functionSpec_(v103, v73, v68, v52, a4);
        }
      }

      if (v15)
      {
        break;
      }

      ++v66;
      if (!--v65)
      {
        goto LABEL_28;
      }
    }

    v16 = objc_msgSend_raiseErrorOrConvert_(v52, v48, v15, v50, v51);
    v17 = v103;
    goto LABEL_31;
  }

  v31 = objc_msgSend_raiseErrorOrConvert_(a3, v27, v15, v29, v30);
LABEL_13:
  v16 = v31;
LABEL_37:

LABEL_38:

  return v16;
}

@end