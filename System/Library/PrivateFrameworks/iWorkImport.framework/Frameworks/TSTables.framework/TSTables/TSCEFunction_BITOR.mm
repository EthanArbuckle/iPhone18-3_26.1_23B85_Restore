@interface TSCEFunction_BITOR
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_BITOR

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v12 = *(*a5 + 8);
  v99 = 0;
  v100 = 0;
  v101 = 0;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, a3, v10, v11);
  }

  else
  {
    memset(&v98, 0, sizeof(v98));
  }

  sub_22114F414(&v99, &v98);
  if (v12)
  {
    objc_msgSend_formatWithContext_(v12, v13, a3, v14, v15);
  }

  else
  {
    memset(&v98, 0, sizeof(v98));
  }

  sub_22114F414(&v99, &v98);
  sub_221256020(&v99, &v98);
  v97 = 0;
  v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v16, a3, a4, 0, &v97);
  v18 = v97;
  v96 = v18;
  v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v19, a3, a4, 1, &v96);
  v21 = v96;

  if (v21)
  {
    v26 = objc_msgSend_raiseErrorOrConvert_(a3, v22, v21, v24, v25);
LABEL_9:
    v27 = v26;
    goto LABEL_23;
  }

  v95._decimal.w[0] = objc_msgSend_decimalRepresentation(v17, v22, v23, v24, v25);
  v95._decimal.w[1] = v28;
  v94._decimal.w[0] = objc_msgSend_decimalRepresentation(v20, v28, v29, v30, v31);
  v94._decimal.w[1] = v32;
  if (TSUDecimal::isNegative(&v95))
  {
    v37 = objc_msgSend_functionName(a4, v33, v34, v35, v36);
    v39 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v38, 1, v37, 1, 0.0);
    v43 = objc_msgSend_raiseErrorOrConvert_(a3, v40, v39, v41, v42);
  }

  else if (TSUDecimal::isNegative(&v94))
  {
    v37 = objc_msgSend_functionName(a4, v44, v45, v46, v47);
    v39 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v48, 2, v37, 1, 0.0);
    v43 = objc_msgSend_raiseErrorOrConvert_(a3, v49, v39, v50, v51);
  }

  else
  {
    TSUDecimal::operator=();
    if (TSUDecimal::operator<=() && (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) != 0))
    {
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::split(&v95, &v95, &v93);
      TSUDecimal::split(&v94, &v94, &v92);
      if (TSUDecimal::isZero(&v93) & 1) != 0 || (TSUDecimal::isZero(&v92))
      {
        if (TSUDecimal::isZero(&v93))
        {
          if (TSUDecimal::isZero(&v92))
          {
            TSUDecimal::operator=();
            TSUDecimal::bitOr(&v95, &v94, &v91);
            v26 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v68, &v91, &v98, v69);
            goto LABEL_9;
          }

          v37 = objc_msgSend_functionName(a4, v64, v65, v66, v67);
          v39 = objc_msgSend_invalidDecimalNumberErrorForArgument_functionName_(TSCEError, v86, 2, v37, v87);
          v43 = objc_msgSend_raiseErrorOrConvert_(a3, v88, v39, v89, v90);
        }

        else
        {
          v37 = objc_msgSend_functionName(a4, v60, v61, v62, v63);
          v39 = objc_msgSend_invalidDecimalNumberErrorForArgument_functionName_(TSCEError, v77, 1, v37, v78);
          v43 = objc_msgSend_raiseErrorOrConvert_(a3, v79, v39, v80, v81);
        }
      }

      else
      {
        v37 = objc_msgSend_functionName(a4, v56, v57, v58, v59);
        v39 = objc_msgSend_invalidDecimalNumberErrorForArgument_argIndex2_functionName_(TSCEError, v82, 1, 2, v37);
        v43 = objc_msgSend_raiseErrorOrConvert_(a3, v83, v39, v84, v85);
      }
    }

    else
    {
      v37 = objc_msgSend_functionName(a4, v52, v53, v54, v55);
      v39 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v70, v37, v71, v72);
      v43 = objc_msgSend_raiseErrorOrConvert_(a3, v73, v39, v74, v75);
    }
  }

  v27 = v43;

LABEL_23:
  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  return v27;
}

@end