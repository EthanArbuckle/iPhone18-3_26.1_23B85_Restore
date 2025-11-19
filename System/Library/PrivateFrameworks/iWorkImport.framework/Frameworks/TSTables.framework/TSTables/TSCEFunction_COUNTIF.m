@interface TSCEFunction_COUNTIF
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_COUNTIF

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v101[0] = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, a3, a4, 0, 1, v101);
  v11 = v101[0];
  if (v11)
  {
    v16 = v11;
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v14, v15);
    goto LABEL_30;
  }

  v18 = objc_msgSend_dimensions(v10, v12, v13, v14, v15);
  if (objc_msgSend_gridKind(v10, v19, v20, v21, v22) != 2)
  {
    goto LABEL_11;
  }

  v100 = 0;
  v24 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v10, v23, a3, a4, 0, &v100);
  v16 = v100;
  if (!v16)
  {
    v33 = objc_msgSend_calcEngine(a3, v25, v26, v27, v28);
    if (v24)
    {
      objc_msgSend_rangeRef(v24, v29, v30, v31, v32);
    }

    else
    {
      v93 = 0u;
      *v94 = 0u;
    }

    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v33, v29, &v93, v31, v32);

    if ((IsWithinTable & 1) == 0)
    {
      v40 = objc_msgSend_invalidReferenceError(TSCEError, v35, v36, v37, v38);
      v45 = objc_msgSend_raiseErrorOrConvert_(a3, v66, v40, v67, v68);
      goto LABEL_17;
    }

LABEL_11:
    v24 = *(*a5 + 8);
    v99 = 0;
    v40 = objc_msgSend_logicalTestWithCriterion_evaluationContext_functionSpec_outError_(TSCELogicalTest, v39, v24, a3, a4, &v99);
    v16 = v99;
    if (!v16)
    {
      if (objc_msgSend_count(v10, v41, v42, v43, v44))
      {
        v50 = [TSCEValueContainer alloc];
        v54 = objc_msgSend_initWithValue_(v50, v51, v10, v52, v53);
        v57 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v55, v54, v40, v56);
        v89 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v58, v57, v59, v60);
        v61 = a3;
        *&v93 = v61;
        *(&v93 + 1) = a4;
        *v94 = 0;
        *&v94[8] = 0;
        v94[12] = 1;
        *&v94[13] = 0;
        v95 = 0;
        v96 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v97 = 0;
        v98 = 0;
        v63 = 0.0;
        v88 = HIDWORD(v18);
        if (HIDWORD(v18))
        {
          v83 = v61;
          v84 = v57;
          v85 = v54;
          v86 = v40;
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v87 = v18;
          while (1)
          {
            v76 = v87;
            v77 = v73;
            if (v87)
            {
              break;
            }

LABEL_23:
            ++v74;
            v73 += 0x100000000;
            if (v74 == v88)
            {
              v40 = v86;
              v57 = v84;
              v54 = v85;
              goto LABEL_15;
            }
          }

          while (1)
          {
            v92 = 0;
            v78 = objc_msgSend_valueAtGridCoordPassesCriteria_coord_criteria_outError_(TSCEGridValue, v62, &v93, v77, v89, &v92, v63, v83);
            v79 = v92;
            if (v79)
            {
              break;
            }

            v75 += v78;
            ++v77;
            if (!--v76)
            {
              goto LABEL_23;
            }
          }

          v16 = v79;
          v17 = objc_msgSend_raiseErrorOrConvert_(v83, v62, v79, v80, v81);
          v40 = v86;
          v57 = v84;
          v54 = v85;
        }

        else
        {
LABEL_15:
          TSUDecimal::operator=();
          TSCEFormat::TSCEFormat(v90, 256);
          v17 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v64, v91, v90, v65);
          v16 = 0;
        }
      }

      else
      {
        v54 = objc_msgSend_functionName(a4, v46, v47, v48, v49);
        v57 = objc_msgSend_notEnoughInputsErrorForFunctionName_argumentNumber_required_(TSCEError, v69, v54, 1, 1);
        v17 = objc_msgSend_raiseErrorOrConvert_(a3, v70, v57, v71, v72);
        v16 = 0;
      }

      goto LABEL_28;
    }

    v45 = objc_msgSend_raiseErrorOrConvert_(a3, v41, v16, v43, v44);
LABEL_17:
    v17 = v45;
LABEL_28:

    goto LABEL_29;
  }

  v17 = objc_msgSend_raiseErrorOrConvert_(a3, v25, v16, v27, v28);
LABEL_29:

LABEL_30:

  return v17;
}

@end