@interface TSCEFunction_DOLLAR
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_DOLLAR

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, a3, v10, v11);
  }

  else
  {
    memset(v82, 0, 32);
  }

  v81 = 0;
  v13 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v9, a3, a4, 0, &v81);
  v14 = v81;
  if (v14)
  {
    v19 = v14;
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v15, v14, v17, v18);
    goto LABEL_27;
  }

  v80._decimal.w[0] = objc_msgSend_decimalRepresentation(v13, v15, v16, v17, v18);
  v80._decimal.w[1] = v21;
  v25 = objc_msgSend_locale(a3, v21, v22, v23, v24);
  v30 = objc_msgSend_currencyCode(v25, v26, v27, v28, v29);

  v38 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v31, v30, v32, v33);
  if (*(a5 + 1) - *a5 < 9uLL)
  {
    goto LABEL_9;
  }

  v39 = *(*a5 + 8);
  if (!objc_msgSend_isTokenOrEmptyArg(v39, v40, v41, v42, v43))
  {
    if (v12)
    {
      objc_msgSend_formatWithContext_(v12, v44, a3, v46, v47);
      if (v39)
      {
LABEL_12:
        objc_msgSend_formatWithContext_(v39, v44, a3, v46, v47);
        goto LABEL_15;
      }
    }

    else
    {
      memset(&v78, 0, sizeof(v78));
      if (v39)
      {
        goto LABEL_12;
      }
    }

    memset(&v77, 0, sizeof(v77));
LABEL_15:
    TSCEFormat::formatByMergingWithFormat(&v78, &v77, v45, v46, v47, &v79);
    TSCEFormat::operator=(v82, &v79);
    v76 = 0;
    v54 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v53, a3, a4, 1, &v76);
    v19 = v76;
    v59 = objc_msgSend_trunc(v54, v55, v56, v57, v58);

    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v60, v19, v62, v63);
    }

    else
    {
      v79._decimal.w[0] = objc_msgSend_decimalRepresentation(v59, v60, v61, v62, v63);
      v79._decimal.w[1] = v64;
      TSUDecimal::ceiling(&v79);
      v38 = TSUDecimal::truncatedIntegerValue(&v79);
      if (v38 < 128)
      {

        if ((v38 & 0x80000000) != 0)
        {
          TSUDecimal::operator=();
          TSUDecimal::pow10(&v79);
          if ((TSUDecimal::isInf(&v79) & 1) != 0 || (TSUDecimal::isZero(&v79) & 1) != 0 || (TSUDecimal::shift10Places(&v80), TSUDecimal::round(&v80), TSUDecimal::shift10Places(&v80), TSUDecimal::isNaN(&v80)))
          {
            TSUDecimal::operator=();
          }

          v38 = 0;
        }

        goto LABEL_9;
      }

      v69 = objc_msgSend_functionName(a4, v65, v66, v67, v68);
      v71 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v70, 2, v69, 1, 127.0);
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v72, v71, v73, v74);
    }

    goto LABEL_26;
  }

LABEL_9:
  v48 = MEMORY[0x277D81228];
  v49 = objc_msgSend_locale(a3, v34, v35, v36, v37);
  v39 = objc_msgSend_formattedForDollarFunction_precision_forLocale_(v48, v50, &v80, v38, v49);

  v20 = objc_msgSend_stringValue_format_(TSCEStringValue, v51, v39, v82, v52);
  v19 = 0;
LABEL_26:

LABEL_27:

  return v20;
}

@end