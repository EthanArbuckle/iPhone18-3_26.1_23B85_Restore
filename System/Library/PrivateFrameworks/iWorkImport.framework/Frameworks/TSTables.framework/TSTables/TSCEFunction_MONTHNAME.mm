@interface TSCEFunction_MONTHNAME
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_MONTHNAME

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v59 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, a3, a4, 0, &v59);
  v10 = v59;
  v15 = objc_msgSend_trunc(v9, v11, v12, v13, v14);

  if (v10)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v10, v18, v19);
  }

  else
  {
    v54._decimal.w[0] = objc_msgSend_decimalRepresentation(v15, v16, v17, v18, v19);
    v54._decimal.w[1] = v21;
    TSUDecimal::doubleValue(&v54);
    if (v26 < -2147483650.0 || v26 > 2147483650.0)
    {
      v37 = objc_msgSend_functionName(a4, v22, v23, v24, v25);
      v47 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v48, 1, v37, 1, 1, -2147483650.0, 2147483650.0);
      v52 = objc_msgSend_raiseErrorOrConvert_(a3, v49, v47, v50, v51);
    }

    else
    {
      v27 = objc_msgSend_integer(v15, v22, v23, v24, v25);
      v32 = objc_msgSend_locale(a3, v28, v29, v30, v31);
      v37 = objc_msgSend_standaloneMonthSymbols(v32, v33, v34, v35, v36);

      v42 = objc_msgSend_count(v37, v38, v39, v40, v41);
      v46 = v27 - 1;
      if (v42 <= v46)
      {
        v47 = 0;
      }

      else
      {
        v47 = objc_msgSend_objectAtIndex_(v37, v43, v46, v44, v45);
      }

      v54._decimal.w[0] = 0;
      LODWORD(v54._decimal.w[1]) = 0;
      BYTE4(v54._decimal.w[1]) = 0;
      v55 = 1057;
      v56 = 1;
      v57 = -50266102;
      v58 = 253;
      v52 = objc_msgSend_stringValue_format_(TSCEStringValue, v43, v47, &v54, v45);
    }

    v20 = v52;
  }

  return v20;
}

@end