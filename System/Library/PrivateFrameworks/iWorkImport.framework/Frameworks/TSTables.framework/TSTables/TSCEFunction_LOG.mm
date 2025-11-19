@interface TSCEFunction_LOG
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_LOG

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v82 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v82);
  v11 = v82;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v13, v14);
    goto LABEL_38;
  }

  TSUDecimal::operator=();
  v23 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v17, &v81, v18, v19);
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v20, a3, v21, v22);
  }

  else
  {
    memset(&v81, 0, sizeof(v81));
  }

  if (*(a5 + 1) - *a5 < 9uLL)
  {
    v30 = 1;
  }

  else
  {
    v24 = *(*a5 + 8);
    if (objc_msgSend_isTokenOrEmptyArg(v24, v25, v26, v27, v28))
    {
      v30 = 1;
    }

    else
    {
      v80 = 0;
      v31 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v29, a3, a4, 1, &v80);
      v15 = v80;

      if (v15)
      {
        v36 = objc_msgSend_raiseErrorOrConvert_(a3, v32, v15, v34, v35);
        goto LABEL_35;
      }

      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v32, a3, v34, v35);
      }

      else
      {
        memset(&v78, 0, sizeof(v78));
      }

      if (v24)
      {
        objc_msgSend_formatWithContext_(v24, v32, a3, v34, v35);
      }

      else
      {
        memset(&v77, 0, sizeof(v77));
      }

      TSCEFormat::formatByMergingWithFormat(&v78, &v77, v33, v34, v35, &v79);
      TSCEFormat::operator=(&v81, &v79);
      objc_msgSend_rawDecimalValue(v31, v37, v38, v39, v40);
      TSUDecimal::operator=();
      v30 = TSUDecimal::operator==();
      v23 = v31;
    }
  }

  TSUDecimal::operator=();
  v44 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v41, &v79, v42, v43);
  v76 = 0;
  v47 = objc_msgSend_eq_outError_(v23, v45, v44, &v76, v46);
  v15 = v76;

  if (v47)
  {
    v24 = objc_msgSend_divideByZeroError(TSCEError, v48, v49, v50, v51);
    v55 = objc_msgSend_raiseErrorOrConvert_(a3, v52, v24, v53, v54);
LABEL_22:
    v16 = v55;
    v31 = v23;
LABEL_36:

    v23 = v31;
    goto LABEL_37;
  }

  if (v81._formatType == 257)
  {
    TSCEFormat::setFormatType(&v81, 0x100, v49, v50, v51);
  }

  if (!v15)
  {
    if (v30)
    {
      v59 = objc_msgSend_log10(v10, v48, v49, v50, v51);
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v56, a3, v57, v58);
      }

      else
      {
        memset(&v79, 0, sizeof(v79));
      }

      TSCEFormat::operator=(&v81, &v79);
      v24 = v59;
    }

    else
    {
      v60 = objc_msgSend_log(v10, v48, v49, v50, v51);
      v65 = objc_msgSend_log(v23, v61, v62, v63, v64);
      v75 = 0;
      v24 = objc_msgSend_divide_outError_(v60, v66, v65, &v75, v67);
      v15 = v75;

      if (v15)
      {
        v55 = objc_msgSend_raiseErrorOrConvert_(a3, v68, v15, v69, v70);
        goto LABEL_22;
      }
    }

    TSCEFormat::TSCEFormat(&v79, &v81);
    objc_msgSend_setFormat_(v24, v71, &v79, v72, v73);
    v36 = v24;
    v24 = v36;
    v15 = 0;
    v31 = v23;
LABEL_35:
    v16 = v36;
    goto LABEL_36;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(a3, v48, v15, v50, v51);
LABEL_37:

LABEL_38:

  return v16;
}

@end