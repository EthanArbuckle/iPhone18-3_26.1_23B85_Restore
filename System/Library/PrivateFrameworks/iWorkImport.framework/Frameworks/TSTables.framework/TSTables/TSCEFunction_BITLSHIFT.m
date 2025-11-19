@interface TSCEFunction_BITLSHIFT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_BITLSHIFT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v12 = *(*a5 + 8);
  v89 = 0;
  v90 = 0;
  v91 = 0;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, a3, v10, v11);
  }

  else
  {
    memset(&v88, 0, sizeof(v88));
  }

  sub_22114F414(&v89, &v88);
  if (v12)
  {
    objc_msgSend_formatWithContext_(v12, v13, a3, v14, v15);
  }

  else
  {
    memset(&v88, 0, sizeof(v88));
  }

  sub_22114F414(&v89, &v88);
  sub_221256020(&v89, &v88);
  v87 = 0;
  v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v16, a3, a4, 0, &v87);
  v18 = v87;
  v86 = v18;
  v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v19, a3, a4, 1, &v86);
  v21 = v86;

  if (v21)
  {
    v26 = objc_msgSend_raiseErrorOrConvert_(a3, v22, v21, v24, v25);
LABEL_9:
    v27 = v26;
    goto LABEL_21;
  }

  v85._decimal.w[0] = objc_msgSend_decimalRepresentation(v17, v22, v23, v24, v25);
  v85._decimal.w[1] = v28;
  v84._decimal.w[0] = objc_msgSend_decimalRepresentation(v20, v28, v29, v30, v31);
  v84._decimal.w[1] = v32;
  if (TSUDecimal::isNegative(&v85))
  {
    v37 = objc_msgSend_functionName(a4, v33, v34, v35, v36);
    v39 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v38, 1, v37, 1, 0.0);
    v43 = objc_msgSend_raiseErrorOrConvert_(a3, v40, v39, v41, v42);
  }

  else
  {
    TSUDecimal::operator=();
    if ((TSUDecimal::operator<() & 1) != 0 || (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
    {
      v37 = objc_msgSend_functionName(a4, v44, v45, v46, v47);
      v39 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v62, 2, v37, 1, 1, -53.0, 53.0);
      v43 = objc_msgSend_raiseErrorOrConvert_(a3, v63, v39, v64, v65);
    }

    else
    {
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::split(&v85, &v85, &v83);
      TSUDecimal::split(&v84, &v84, &v82);
      if (TSUDecimal::isZero(&v83) & 1) != 0 || (TSUDecimal::isZero(&v82))
      {
        if (TSUDecimal::isZero(&v83))
        {
          if (TSUDecimal::isZero(&v82))
          {
            TSUDecimal::operator=();
            TSUDecimal::bitLeftShift(&v85, &v84, &v81);
            v26 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v60, &v81, &v88, v61);
            goto LABEL_9;
          }

          v37 = objc_msgSend_functionName(a4, v56, v57, v58, v59);
          v39 = objc_msgSend_invalidDecimalNumberErrorForArgument_functionName_(TSCEError, v76, 2, v37, v77);
          v43 = objc_msgSend_raiseErrorOrConvert_(a3, v78, v39, v79, v80);
        }

        else
        {
          v37 = objc_msgSend_functionName(a4, v52, v53, v54, v55);
          v39 = objc_msgSend_invalidDecimalNumberErrorForArgument_functionName_(TSCEError, v67, 1, v37, v68);
          v43 = objc_msgSend_raiseErrorOrConvert_(a3, v69, v39, v70, v71);
        }
      }

      else
      {
        v37 = objc_msgSend_functionName(a4, v48, v49, v50, v51);
        v39 = objc_msgSend_invalidDecimalNumberErrorForArgument_argIndex2_functionName_(TSCEError, v72, 1, 2, v37);
        v43 = objc_msgSend_raiseErrorOrConvert_(a3, v73, v39, v74, v75);
      }
    }
  }

  v27 = v43;

LABEL_21:
  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  return v27;
}

@end