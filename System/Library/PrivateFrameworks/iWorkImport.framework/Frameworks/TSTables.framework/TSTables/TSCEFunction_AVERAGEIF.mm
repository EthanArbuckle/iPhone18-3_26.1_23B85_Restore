@interface TSCEFunction_AVERAGEIF
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_AVERAGEIF

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v61._tskFormat = 0;
  v61._formatType = 0;
  v61._formatState = 0;
  *&v61._durationFormat = 1057;
  *(&v61._durationFormat + 2) = 1;
  *&v61._baseFormat.base = -50266102;
  v61._numberFormat = 253;
  v9 = *arguments;
  if (*(arguments + 1) - *arguments < 0x11uLL || (isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v9[2], a2, context, spec, arguments), v9 = *arguments, (isTokenOrEmptyArg & 1) != 0))
  {
    v11 = *v9;
    v57 = 0;
    v12 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v11, a2, context, spec, 0, 1, &v57);
    v17 = v57;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v13, v17, v15, v16);
      v19 = 0;
      v20 = v12;
    }

    else
    {
      v22 = *arguments;
      v21 = *(arguments + 1);
      v23 = objc_msgSend_dimensions(v12, v13, v14, v15, v16);
      v56 = 0;
      v25 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(self, v24, context, spec, arguments, v23, 0, v21 - v22 != 16, &v56);
      v17 = v56;
      if (v12)
      {
        objc_msgSend_formatWithContext_(v12, v26, context, v27, v28);
      }

      else
      {
        memset(&v58, 0, sizeof(v58));
      }

      TSCEFormat::operator=(&v61, &v58);
      if (v17)
      {
        v18 = objc_msgSend_raiseErrorOrConvert_(context, v35, v17, v36, v37);
      }

      else
      {
        LOBYTE(v54) = 0;
        v18 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_criteria_criteriaVectorIndex_ignoreError_(TSCEFunction_AVERAGE, v35, context, spec, v12, 0, v25, 0, v54);
        TSCEFormat::TSCEFormat(&v58, &v61);
        objc_msgSend_setFormat_(v18, v38, &v58, v39, v40);
        v17 = 0;
      }

      v20 = v12;
      v19 = v25;
    }
  }

  else
  {
    v29 = v9[2];
    v60 = 0;
    v30 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v29, a2, context, spec, 2, 1, &v60);
    v17 = v60;
    if (v17)
    {
      v19 = 0;
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v31, v17, v33, v34);
      v20 = v30;
    }

    else
    {
      v41 = objc_msgSend_dimensions(v30, v31, v32, v33, v34);
      v59 = 0;
      v43 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(self, v42, context, spec, arguments, v41, 0, 1, &v59);
      v17 = v59;
      if (v30)
      {
        objc_msgSend_formatWithContext_(v30, v44, context, v45, v46);
      }

      else
      {
        memset(&v58, 0, sizeof(v58));
      }

      TSCEFormat::operator=(&v61, &v58);
      if (v17)
      {
        v18 = objc_msgSend_raiseErrorOrConvert_(context, v47, v17, v48, v49);
      }

      else
      {
        LOBYTE(v55) = 0;
        v18 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_criteria_criteriaVectorIndex_ignoreError_(TSCEFunction_AVERAGE, v47, context, spec, v30, 2, v43, 0, v55);
        TSCEFormat::TSCEFormat(&v58, &v61);
        objc_msgSend_setFormat_(v18, v50, &v58, v51, v52);
        v17 = 0;
      }

      v20 = v30;
      v19 = v43;
    }
  }

  return v18;
}

@end