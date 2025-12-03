@interface TSCEFunction_COUNTIFS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_COUNTIFS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v78[0] = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, a2, context, spec, 0, 1, v78);
  v11 = v78[0];
  if (v11)
  {
    v16 = v11;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14, v15);
    goto LABEL_28;
  }

  v18 = objc_msgSend_dimensions(v10, v12, v13, v14, v15);
  if (objc_msgSend_gridKind(v10, v19, v20, v21, v22) != 2)
  {
    goto LABEL_11;
  }

  v77 = 0;
  v24 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v10, v23, context, spec, 0, &v77);
  v16 = v77;
  if (!v16)
  {
    v33 = objc_msgSend_calcEngine(context, v25, v26, v27, v28);
    if (v24)
    {
      objc_msgSend_rangeRef(v24, v29, v30, v31, v32);
    }

    else
    {
      v70 = 0u;
      *v71 = 0u;
    }

    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v33, v29, &v70, v31, v32);

    if ((IsWithinTable & 1) == 0)
    {
      v59 = objc_msgSend_invalidReferenceError(TSCEError, v35, v36, v37, v38);
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v60, v59, v61, v62);

      goto LABEL_27;
    }

LABEL_11:
    v76 = 0;
    v39 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(self, v23, context, spec, arguments, v18, 0, 0, &v76);
    v16 = v76;
    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v40, v16, v41, v42);
      v24 = v39;
    }

    else
    {
      v24 = objc_msgSend_sortCriteriaByCost_(TSCEGridValue, v40, v39, v41, v42);

      contextCopy = context;
      v45 = contextCopy;
      *&v70 = contextCopy;
      *(&v70 + 1) = spec;
      *v71 = 0;
      *&v71[8] = 0;
      v71[12] = 1;
      *&v71[13] = 0;
      v72 = 0;
      v73 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v74 = 0;
      v75 = 0;
      v46 = 0.0;
      v66 = HIDWORD(v18);
      if (HIDWORD(v18))
      {
        v64 = contextCopy;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v65 = v18;
        while (1)
        {
          v53 = v65;
          v54 = v50;
          if (v65)
          {
            break;
          }

LABEL_20:
          ++v51;
          v50 += 0x100000000;
          if (v51 == v66)
          {
            v45 = v64;
            goto LABEL_14;
          }
        }

        while (1)
        {
          v69 = 0;
          v55 = objc_msgSend_valueAtGridCoordPassesCriteria_coord_criteria_outError_(TSCEGridValue, v44, &v70, v54, v24, &v69, v46);
          v56 = v69;
          if (v56)
          {
            break;
          }

          v52 += v55;
          ++v54;
          if (!--v53)
          {
            goto LABEL_20;
          }
        }

        v16 = v56;
        v17 = objc_msgSend_raiseErrorOrConvert_(v64, v44, v56, v57, v58);
      }

      else
      {
LABEL_14:
        TSUDecimal::operator=();
        if (v10)
        {
          objc_msgSend_formatWithContext_(v10, v47, v45, v48, v49);
        }

        else
        {
          memset(v67, 0, sizeof(v67));
        }

        v17 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v47, v68, v67, v49);
        v16 = 0;
      }
    }

    goto LABEL_27;
  }

  v17 = objc_msgSend_raiseErrorOrConvert_(context, v25, v16, v27, v28);
LABEL_27:

LABEL_28:

  return v17;
}

@end