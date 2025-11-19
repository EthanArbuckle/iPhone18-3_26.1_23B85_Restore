@interface TSCEFunction_FIXED
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_FIXED

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  __p = 0;
  v97 = 0;
  v98 = 0;
  v8 = **a5;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, a3, v10, v11);
  }

  else
  {
    memset(&v95, 0, sizeof(v95));
  }

  sub_22114F414(&__p, &v95);
  v94 = 0;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v13, a3, a4, 0, &v94);
  v15 = v94;
  if (v15)
  {
    v20 = v15;
    v21 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v15, v18, v19);
    goto LABEL_39;
  }

  v93._decimal.w[0] = objc_msgSend_decimalRepresentation(v14, v16, v17, v18, v19);
  v93._decimal.w[1] = v22;
  if (*(a5 + 1) - *a5 < 9uLL)
  {
    LOBYTE(v34) = 2;
    v35 = 1;
    goto LABEL_36;
  }

  v26 = *(*a5 + 8);
  if (objc_msgSend_isTokenOrEmptyArg(v26, v27, v28, v29, v30))
  {
    goto LABEL_13;
  }

  if (v26)
  {
    objc_msgSend_formatWithContext_(v26, v31, a3, v32, v33);
  }

  else
  {
    memset(&v95, 0, sizeof(v95));
  }

  sub_22114F414(&__p, &v95);
  if (objc_msgSend_nativeType(v26, v36, v37, v38, v39) == 10)
  {
LABEL_13:
    v34 = 2;
  }

  else
  {
    v92 = 0;
    v49 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v40, a3, a4, 1, &v92);
    v20 = v92;
    v54 = objc_msgSend_trunc(v49, v50, v51, v52, v53);

    v95._tskFormat = objc_msgSend_decimalRepresentation(v54, v55, v56, v57, v58);
    *&v95._formatType = v59;
    v60 = TSUDecimal::truncatedIntegerValue(&v95);
    if (v20)
    {
      v21 = objc_msgSend_raiseErrorOrConvert_(a3, v61, v20, v62, v63);
LABEL_37:

      goto LABEL_38;
    }

    v34 = v60;
  }

  if (*(a5 + 1) - *a5 < 0x11uLL)
  {
    v35 = 1;
    if ((v34 & 0x80000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

  v26 = *(*a5 + 16);
  if (objc_msgSend_isTokenOrEmptyArg(v26, v41, v42, v43, v44))
  {
    v48 = 0;
    goto LABEL_27;
  }

  if (v26)
  {
    objc_msgSend_formatWithContext_(v26, v45, a3, v46, v47);
  }

  else
  {
    memset(&v95, 0, sizeof(v95));
  }

  sub_22114F414(&__p, &v95);
  v91 = 0;
  v48 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v26, v64, a3, a4, 2, &v91);
  v65 = v91;
  if (!v65)
  {
LABEL_27:

    v35 = v48 ^ 1;
    if ((v34 & 0x80000000) != 0)
    {
LABEL_28:
      TSUDecimal::operator=();
      if (v34 < 0xFFFFFECC)
      {
        *&v95._tskFormat = xmmword_2217E1440;
      }

      else
      {
        TSUDecimal::pow10(&v95);
      }

      if ((TSUDecimal::isInf(&v95) & 1) != 0 || TSUDecimal::isZero(&v95))
      {
        TSUDecimal::operator=();
      }

      else
      {
        TSUDecimal::operator*=();
        TSUDecimal::round(&v93);
        TSUDecimal::operator/=();
      }

      LOBYTE(v34) = 0;
    }

LABEL_36:
    v69 = MEMORY[0x277D81280];
    v70 = objc_msgSend_locale(a3, v22, v23, v24, v25);
    v75 = objc_msgSend_currencyCode(v70, v71, v72, v73, v74);
    HIBYTE(v90) = -1;
    LOBYTE(v90) = v35;
    v26 = objc_msgSend_numberFormatWithValueType_formatString_decimalPlaces_currencyCode_useAccountingStyle_negativeStyle_showThousandsSeparator_fractionAccuracy_(v69, v76, 0, 0, v34, v75, 0, 0, v90);

    TSUDecimal::doubleValue(&v93);
    v78 = v77;
    v83 = objc_msgSend_locale(a3, v79, v80, v81, v82);
    v54 = objc_msgSend_stringFromDouble_locale_(v26, v84, v83, v85, v86, v78);

    sub_221256020(&__p, &v95);
    v21 = objc_msgSend_stringValue_format_(TSCEStringValue, v87, v54, &v95, v88);
    v20 = 0;
    goto LABEL_37;
  }

  v20 = v65;
  v21 = objc_msgSend_raiseErrorOrConvert_(a3, v66, v65, v67, v68);
LABEL_38:

LABEL_39:
  if (__p)
  {
    v97 = __p;
    operator delete(__p);
  }

  return v21;
}

@end