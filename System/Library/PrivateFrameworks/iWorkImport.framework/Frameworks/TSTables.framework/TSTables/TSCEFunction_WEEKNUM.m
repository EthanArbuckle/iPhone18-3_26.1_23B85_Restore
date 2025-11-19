@interface TSCEFunction_WEEKNUM
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_WEEKNUM

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v73 = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v73);
  v15 = v73;
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v15, v13, v14);
    goto LABEL_14;
  }

  if (v10)
  {
    TSUDecimal::operator=();
    v20 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v17, &v64, v18, v19);
    v25 = v20;
    if (*(a5 + 1) - *a5 < 9uLL)
    {
      v32 = v20;
      v39 = objc_msgSend_decimalRepresentation(v20, v21, v22, v23, v24);
LABEL_12:
      v64._decimal.w[0] = v39;
      v64._decimal.w[1] = v40;
      v53 = TSUDecimal::truncateWithRounding(&v64);
      v58 = objc_msgSend_gregorianCalendar(TSCECalendar, v54, v55, v56, v57);
      objc_msgSend_weekNumberForDate_withType_(v58, v59, v10, v53, v60);
      TSUDecimal::operator=();
      v64._decimal.w[0] = 0;
      LODWORD(v64._decimal.w[1]) = 0;
      BYTE4(v64._decimal.w[1]) = 0;
      v65 = v65 & 0xC080 | 0x421;
      v66 = v66 & 0xF8 | 1;
      v67 = -50266102;
      v68 = -3;
      v69 &= 0xE0u;
      v70 = 0;
      v16 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v61, v71, &v64, v62);
      v33 = 0;
      goto LABEL_13;
    }

    v26 = *(*a5 + 8);
    if (objc_msgSend_isTokenOrEmptyArg(v26, v27, v28, v29, v30))
    {
      v32 = v25;
LABEL_11:

      v39 = objc_msgSend_decimalRepresentation(v32, v49, v50, v51, v52);
      goto LABEL_12;
    }

    v72 = 0;
    v41 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v31, a3, a4, 1, &v72);
    v33 = v72;
    v32 = objc_msgSend_trunc(v41, v42, v43, v44, v45);

    if (!v33)
    {
      goto LABEL_11;
    }

    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v46, v33, v47, v48);
  }

  else
  {
    v33 = objc_msgSend_functionName(a4, v11, v12, v13, v14);
    v32 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v34, v33, 1, v35);
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v36, v32, v37, v38);
  }

LABEL_13:

  v15 = v33;
LABEL_14:

  return v16;
}

@end