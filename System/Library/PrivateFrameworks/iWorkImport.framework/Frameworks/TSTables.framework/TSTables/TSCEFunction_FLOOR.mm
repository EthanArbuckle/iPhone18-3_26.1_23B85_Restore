@interface TSCEFunction_FLOOR
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_FLOOR

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v9 = *(*a5 + 8);
  v79 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, a3, a4, 0, &v79);
  v12 = v79;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v13, v12, v14, v15);
    goto LABEL_19;
  }

  v78 = 0;
  v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, a3, a4, 1, &v78);
  v16 = v78;
  if (!v16)
  {
    v77._decimal.w[0] = objc_msgSend_decimalRepresentation(v11, v19, v20, v21, v22);
    v77._decimal.w[1] = v24;
    v76._decimal.w[0] = objc_msgSend_decimalRepresentation(v18, v24, v25, v26, v27);
    v76._decimal.w[1] = v28;
    TSUDecimal::operator=();
    if (TSUDecimal::operator<=() & 1) == 0 && (TSUDecimal::operator=(), (TSUDecimal::operator<()) || (TSUDecimal::operator=(), TSUDecimal::operator<()) && (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
    {
      v42 = objc_msgSend_functionName(a4, v29, v30, v31, v32);
      v46 = objc_msgSend_signsMustMatchErrorForFunctionName_(TSCEError, v43, v42, v44, v45);
      v50 = objc_msgSend_raiseErrorOrConvert_(a3, v47, v46, v48, v49);
    }

    else
    {
      TSUDecimal::doubleValue(&v77);
      if (fabs(v33) < 1.0e-10)
      {
        TSUDecimal::doubleValue(&v76);
        if (fabs(v38) < 1.0e-10)
        {
          v17 = objc_msgSend_zero(TSCENumberValue, v34, v35, v36, v37);
          if (v8)
          {
            objc_msgSend_formatWithContext_(v8, v39, a3, v40, v41);
          }

          else
          {
            memset(&v71, 0, sizeof(v71));
          }

          TSCEFormat::TSCEFormat(&v72, &v71);
          objc_msgSend_setFormat_(v17, v66, &v72, v67, v68);
          goto LABEL_18;
        }
      }

      if (!TSUDecimal::isZero(&v76))
      {
        if (TSUDecimal::isNegative(&v77))
        {
          TSUDecimal::negate(&v77);
          TSUDecimal::negate(&v76);
        }

        *&v72._tskFormat = v77;
        TSUDecimal::operator/=();
        v75._decimal.w[0] = v72._tskFormat;
        v75._decimal.w[1] = *&v72._formatType;
        TSUDecimal::floor(&v75);
        TSUDecimal::operator-=();
        tskFormat = v72._tskFormat;
        v74 = *&v72._formatType;
        TSUDecimal::operator=();
        TSUDecimal::operator-=();
        *&v69._tskFormat = v70;
        TSUDecimal::operator=();
        if (TSUDecimal::operator<())
        {
          TSUDecimal::operator=();
          TSUDecimal::operator+=();
        }

        TSUDecimal::operator=();
        *&v72._tskFormat = *&v69._tskFormat;
        TSUDecimal::operator*=();
        TSUDecimal::operator*=();
        v70 = *&v69._tskFormat;
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v61, a3, v62, v63);
        }

        else
        {
          memset(&v69, 0, sizeof(v69));
        }

        TSCEFormat::formatByUnsettingDecimalPlacesIfPresent(&v69, v62, v63, &v72);
        v23 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v64, &v70, &v72, v65);
        goto LABEL_5;
      }

      v42 = objc_msgSend_functionName(a4, v51, v52, v53, v54);
      v46 = objc_msgSend_argumentEqualsToZeroErrorForFunctionName_argumentNumber_(TSCEError, v55, v42, 2, v56);
      v50 = objc_msgSend_raiseErrorOrConvert_(a3, v57, v46, v58, v59);
    }

    v17 = v50;

    goto LABEL_18;
  }

  v23 = objc_msgSend_raiseErrorOrConvert_(a3, v19, v16, v21, v22);
LABEL_5:
  v17 = v23;
LABEL_18:

LABEL_19:

  return v17;
}

@end