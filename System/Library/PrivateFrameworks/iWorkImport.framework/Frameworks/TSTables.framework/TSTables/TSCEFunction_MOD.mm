@interface TSCEFunction_MOD
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_MOD

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v92 = *MEMORY[0x277D85DE8];
  v8 = **a5;
  v9 = *(*a5 + 8);
  v89 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, a3, a4, 0, &v89);
  v12 = v89;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v13, v12, v14, v15);
    goto LABEL_28;
  }

  v88 = 0;
  v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, a3, a4, 1, &v88);
  v16 = v88;
  if (!v16)
  {
    if ((objc_msgSend_dimensionsMatchModuloCurrency_(v11, v19, v18, v20, v21) & 1) == 0)
    {
      v26 = objc_msgSend_functionName(a4, v22, v23, v24, v25);
      v30 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v27, v26, v28, v29);
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v31, v30, v32, v33);

      goto LABEL_27;
    }

    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v22, a3, v24, v25);
      if (v9)
      {
LABEL_8:
        objc_msgSend_formatWithContext_(v9, v22, a3, v24, v25);
        goto LABEL_12;
      }
    }

    else
    {
      memset(&v86, 0, sizeof(v86));
      if (v9)
      {
        goto LABEL_8;
      }
    }

    memset(&v91, 0, sizeof(v91));
LABEL_12:
    TSCEFormat::formatByMergingWithFormat(&v86, &v91, v23, v24, v25, &v87);
    *&v91._tskFormat = *objc_msgSend_rawDecimalValue(v11, v34, v35, v36, v37);
    v90 = *objc_msgSend_rawDecimalValue(v18, v38, v39, v40, v41);
    v85 = v90;
    TSUDecimal::abs(&v85);
    TSUDecimal::operator=();
    if (TSUDecimal::operator<())
    {
      v46 = objc_msgSend_divideByZeroError(TSCEError, v42, v43, v44, v45);
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v47, v46, v48, v49);
    }

    else
    {
      v83 = v90;
      v84 = *&v91._tskFormat;
      TSUDecimal::operator=();
      if (TSUDecimal::divide(&v84, &v83, &v82) == 5)
      {
        v54 = objc_msgSend_divideByZeroError(TSCEError, v50, v51, v52, v53);
        v17 = objc_msgSend_raiseErrorOrConvert_(a3, v55, v54, v56, v57);
      }

      else
      {
        v81 = v82;
        TSUDecimal::roundTowardsZero(&v81);
        TSUDecimal::operator=();
        v62 = objc_msgSend_locale(a3, v58, v59, v60, v61);
        v64 = TSUDecimal::floatingPointEqual(&v81, &v82, v62, v63);

        TSUDecimal::operator=();
        if (!v64)
        {
          TSUDecimal::multiply(&v83, &v81, &v86);
          TSUDecimal::subtract(&v84, &v86, &v80);
        }

        if (TSUDecimal::isNegative(&v80) && (TSUDecimal::isGreaterThanZero(&v83) & 1) != 0 || TSUDecimal::isGreaterThanZero(&v80) && TSUDecimal::isNegative(&v83))
        {
          TSUDecimal::operator+=();
        }

        if (objc_msgSend_hasUnits(v11, v65, v66, v67, v68))
        {
          v73 = objc_msgSend_unit(v11, v69, v70, v71, v72);
          objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v74, &v80, v73, v75);
        }

        else
        {
          objc_msgSend_variantWithDecimal_(v11, v69, &v80, v71, v72);
        }
        v17 = ;
        TSCEFormat::TSCEFormat(&v86, &v87);
        objc_msgSend_setFormat_(v17, v76, &v86, v77, v78);
      }
    }

    goto LABEL_27;
  }

  v17 = objc_msgSend_raiseErrorOrConvert_(a3, v19, v16, v20, v21);
LABEL_27:

LABEL_28:

  return v17;
}

@end