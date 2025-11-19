@interface TSCEFunction_YEARFRAC
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_YEARFRAC

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v8 = **a5;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, a3, v10, v11);
  }

  else
  {
    memset(&v81, 0, sizeof(v81));
  }

  sub_22114F414(&v82, &v81);
  v80 = 0;
  v14 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v12, v13, a3, a4, 0, &v80);
  v15 = v80;
  if (v15)
  {
    v20 = v15;
    v21 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v15, v18, v19);
    goto LABEL_27;
  }

  v22 = objc_msgSend_gregorianCalendar(TSCECalendar, v16, v17, v18, v19);
  v26 = objc_msgSend_clearOffTime_(v22, v23, v14, v24, v25);
  v27 = *(*a5 + 8);
  v31 = v27;
  if (v27)
  {
    objc_msgSend_formatWithContext_(v27, v28, a3, v29, v30);
  }

  else
  {
    memset(&v81, 0, sizeof(v81));
  }

  sub_22114F414(&v82, &v81);
  v79 = 0;
  v33 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v31, v32, a3, a4, 1, &v79);
  v34 = v79;
  if (!v34)
  {
    v73 = objc_msgSend_clearOffTime_(v22, v35, v33, v36, v37);
    if (*(a5 + 1) - *a5 < 0x11uLL)
    {
      v49 = 0;
    }

    else
    {
      v41 = *(*a5 + 16);
      if (objc_msgSend_isTokenOrEmptyArg(v41, v42, v43, v44, v45))
      {
        v49 = 0;
      }

      else
      {
        if (v41)
        {
          objc_msgSend_formatWithContext_(v41, v46, a3, v47, v48);
        }

        else
        {
          memset(&v81, 0, sizeof(v81));
        }

        sub_22114F414(&v82, &v81);
        v78 = 0;
        v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v41, v50, a3, a4, 2, &v78);
        v20 = v78;
        v56 = objc_msgSend_trunc(v51, v52, v53, v54, v55);

        if (v20)
        {
          v61 = objc_msgSend_raiseErrorOrConvert_(a3, v57, v20, v59, v60);
LABEL_25:
          v21 = v61;

          goto LABEL_26;
        }

        v81._tskFormat = objc_msgSend_decimalRepresentation(v56, v57, v58, v59, v60);
        *&v81._formatType = v62;
        v49 = TSUDecimal::truncateWithRounding(&v81);
      }
    }

    v41 = objc_msgSend_earlierDate_(v26, v38, v73, v39, v40);
    v56 = objc_msgSend_laterDate_(v26, v63, v73, v64, v65);
    v76 = 0;
    sub_2214A452C(v41, v56, v49, &v76);
    v66 = v76;
    TSUDecimal::operator=();
    v75 = v66;
    sub_2214A45C0(v41, v56, v49, &v75);
    v20 = v75;

    TSUDecimal::operator=();
    if (v20)
    {
      v61 = objc_msgSend_raiseErrorOrConvert_(a3, v67, v20, v68, v69);
    }

    else
    {
      *&v81._tskFormat = v77;
      TSUDecimal::operator/=();
      v74[0] = v81._tskFormat;
      v74[1] = *&v81._formatType;
      v81._tskFormat = 0;
      v81._formatType = 0;
      v81._formatState = 0;
      *&v81._durationFormat = 1057;
      *(&v81._durationFormat + 2) = 1;
      *&v81._baseFormat.base = 0xFDFD01000ALL;
      v61 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v70, v74, &v81, v71);
    }

    goto LABEL_25;
  }

  v20 = v34;
  v21 = objc_msgSend_raiseErrorOrConvert_(a3, v35, v34, v36, v37);
LABEL_26:

LABEL_27:
  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  return v21;
}

@end