@interface TSCEFunction_NORMDIST
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_NORMDIST

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v86 = 0;
  v78 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v86);
  v10 = v86;
  v11 = *(*a5 + 8);
  v85 = v10;
  v13 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v12, a3, a4, 1, &v85);
  v14 = v85;

  v15 = *(*a5 + 16);
  v84 = v14;
  v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v15, v16, a3, a4, 2, &v84);
  v18 = v84;

  if (v18)
  {
    v22 = objc_msgSend_raiseErrorOrConvert_(a3, v19, v18, v20, v21);
    goto LABEL_11;
  }

  if (!objc_msgSend_dimensionsMatchModuloCurrency_(v78, v19, v13, v20, v21) || (objc_msgSend_dimensionsMatchModuloCurrency_(v78, v23, v17, v24, v25) & 1) == 0)
  {
    v34 = sub_2212F6DF8();
    v26 = objc_msgSend_localizedStringForKey_value_table_(v34, v35, @"1, 2, and 3", &stru_2834BADA0, @"TSCalculationEngine");

    v40 = objc_msgSend_functionName(a4, v36, v37, v38, v39);
    v43 = objc_msgSend_mismatchedUnitsErrorForFunctionName_argumentNumberString_(TSCEError, v41, v40, v26, v42);
    v22 = objc_msgSend_raiseErrorOrConvert_(a3, v44, v43, v45, v46);

    goto LABEL_8;
  }

  v26 = *(*a5 + 24);
  v83 = 0;
  v28 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v26, v27, a3, a4, 3, &v83);
  v29 = v83;
  if (!v29)
  {
    if ((v28 & 1) != 0 || !objc_msgSend_isDuration(v78, v30, v31, v32, v33))
    {
      v76 = v28;
      v82 = 0;
      v54 = objc_msgSend_subtract_functionSpec_outError_(v78, v30, v13, a4, &v82);
      v55 = v82;
      v81 = v55;
      v77 = v54;
      v40 = objc_msgSend_divide_outError_(v54, v56, v17, &v81, v57);
      v18 = v81;

      objc_msgSend_doubleRepresentation(v40, v58, v59, v60, v61);
      v67 = v66;
      if (v18)
      {
        v68 = objc_msgSend_raiseErrorOrConvert_(a3, v62, v18, v64, v65);
      }

      if (v76)
      {
        objc_msgSend_doubleRepresentation(v40, v62, v63, v64, v65);
        objc_msgSend_probabilityWithZ_(TSCEFunction_NORMSDIST, v69, v70, v71, v72);
      }

      else
      {
        objc_msgSend_doubleRepresentation(v17, v62, v63, v64, v65);
        exp(v67 * v67 * -0.5);
      }

      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v73, a3, v74, v75);
      }

      else
      {
        memset(v79, 0, sizeof(v79));
      }

      v22 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v73, v80, v79, v75);
      goto LABEL_9;
    }

    v40 = objc_msgSend_durationDisallowedForNormdistPDFError(TSCEError, v30, v48, v49, v50);
    v22 = objc_msgSend_raiseErrorOrConvert_(a3, v51, v40, v52, v53);
LABEL_8:
    v18 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v18 = v29;
  v22 = objc_msgSend_raiseErrorOrConvert_(a3, v30, v29, v32, v33);
LABEL_10:

LABEL_11:

  return v22;
}

@end