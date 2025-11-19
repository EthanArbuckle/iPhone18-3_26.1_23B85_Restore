@interface TSCEFunction_MAKEARRAY
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_MAKEARRAY

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v8 = *(*a5 + 8);
  if (objc_msgSend_isTokenOrEmptyArg(v7, v9, v10, v11, v12))
  {
    v17 = 0;
    v18 = 1;
  }

  else
  {
    v118[0] = 0;
    v19 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v13, a3, a4, 0, v118);
    v17 = v118[0];
    v113._decimal.w[0] = objc_msgSend_decimalRepresentation(v19, v20, v21, v22, v23);
    v113._decimal.w[1] = v24;
    v18 = TSUDecimal::truncatedUIntegerValue(&v113);
  }

  if (objc_msgSend_isTokenOrEmptyArg(v8, v13, v14, v15, v16))
  {
    v109 = 1;
    if (v17)
    {
LABEL_6:
      v29 = objc_msgSend_raiseErrorOrConvert_(a3, v25, v17, v27, v28);
      goto LABEL_27;
    }
  }

  else
  {
    v117 = v17;
    v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v25, a3, a4, 1, &v117);
    v31 = v117;

    v113._decimal.w[0] = objc_msgSend_decimalRepresentation(v30, v32, v33, v34, v35);
    v113._decimal.w[1] = v36;
    v109 = TSUDecimal::truncatedUIntegerValue(&v113);

    v17 = v31;
    if (v31)
    {
      goto LABEL_6;
    }
  }

  if (!v18 || !v109)
  {
    v39 = objc_msgSend_emptyArrayError(TSCEError, v25, v26, v27, v28);
    v29 = objc_msgSend_raiseErrorOrConvert_(a3, v40, v39, v41, v42);
    v17 = v39;
    goto LABEL_27;
  }

  v37 = objc_msgSend_functionName(a4, v25, v26, v27, v28);
  v17 = objc_msgSend_checkForTooLargeArrayNumColumns_numRows_functionName_(TSCEError, v38, v109, v18, v37);

  if (v17)
  {
    goto LABEL_6;
  }

  v43 = *(*a5 + 16);
  v116 = 0;
  v45 = objc_msgSend_asFunctorValue_functionSpec_argumentIndex_outError_(v43, v44, a3, a4, 2, &v116);
  v17 = v116;
  if (v17)
  {
    v50 = objc_msgSend_raiseErrorOrConvert_(a3, v46, v17, v48, v49);
  }

  else
  {
    v51 = objc_msgSend_functor(v45, v46, v47, v48, v49);
    v56 = v51;
    if (*(v51 + 8) == 2)
    {
      v57 = a3;
      v107 = v51;
      v105 = v7;
      v102 = v45;
      v103 = v43;
      v104 = v8;
      v108 = objc_opt_new();
      v58 = 0;
      do
      {
        v59 = 0;
        v60 = v58++;
        do
        {
          v115[0] = v59;
          v115[1] = v60;
          v113._decimal.w[0] = 0;
          v113._decimal.w[1] = 0;
          v114 = 0;
          TSUDecimal::operator=();
          v112 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v61, v111, v62, v63);
          sub_2210ED5B8(&v113, &v112);
          ++v59;

          TSUDecimal::operator=();
          v110 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v64, v111, v65, v66);
          sub_2210ED5B8(&v113, &v110);

          v67 = TSCEFunctor::evaluateWithArgs(v107, v57, &v113);
          v71 = objc_msgSend_errorWithContext_(v67, v68, v57, v69, v70);
          v76 = v71;
          if (v71 && objc_msgSend_errorType(v71, v72, v73, v74, v75) == 168)
          {
            v79 = objc_msgSend_functionName(a4, v72, v77, v78, v75);
            v83 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v80, v79, v81, v82);
            v87 = objc_msgSend_errorValue_(TSCEErrorValue, v84, v83, v85, v86);

            v67 = v87;
          }

          objc_msgSend_setValue_atCoord_(v108, v72, v67, v115, v75, v102);

          v111[0] = &v113;
          sub_22107C2C0(v111);
        }

        while (v109 != v59);
      }

      while (v58 != v18);
      v45 = v102;
      v88 = [TSCEDenseGrid alloc];
      v92 = objc_msgSend_initWithValueGrid_(v88, v89, v108, v90, v91);
      v8 = v104;
      v7 = v105;
      v43 = v103;
      v29 = objc_msgSend_gridValue_(TSCEGridValue, v93, v92, v94, v95);

      v17 = 0;
      goto LABEL_26;
    }

    v96 = objc_msgSend_functionName(a4, v52, v53, v54, v55);
    v17 = objc_msgSend_wrongArityForLambdaError_providedArity_expectedArity_(TSCEError, v97, v96, *(v56 + 8), 2);

    v50 = objc_msgSend_raiseErrorOrConvert_(a3, v98, v17, v99, v100);
  }

  v29 = v50;
LABEL_26:

LABEL_27:

  return v29;
}

@end