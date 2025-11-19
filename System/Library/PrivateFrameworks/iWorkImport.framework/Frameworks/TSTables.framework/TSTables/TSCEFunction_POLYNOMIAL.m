@interface TSCEFunction_POLYNOMIAL
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
+ (id)evaluatePolynomial:(id)a3 functionSpec:(id)a4 xDecimal:(const TSUDecimal *)a5 coefficients:(id)a6 argumentIndex:(int)a7 outError:(id *)a8;
@end

@implementation TSCEFunction_POLYNOMIAL

+ (id)evaluatePolynomial:(id)a3 functionSpec:(id)a4 xDecimal:(const TSUDecimal *)a5 coefficients:(id)a6 argumentIndex:(int)a7 outError:(id *)a8
{
  v11 = a3;
  v12 = a6;
  TSUDecimal::operator=();
  v17 = objc_msgSend_count(v12, v13, v14, v15, v16, v11);
  v59 = v11;
  v62[0] = v59;
  v62[1] = a4;
  v63 = 0;
  v64 = a7;
  v65[0] = 0;
  *(v65 + 3) = 0;
  v66 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v67 = 0;
  v68 = 0;
  v20 = 0;
  if (!v17)
  {
LABEL_14:
    v52 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v18, &v69, v20, v19);
    goto LABEL_17;
  }

  v21 = 0;
  v22 = 0;
  while (1)
  {
    v23 = objc_msgSend_valueAtIndex_accessContext_(v12, v18, v21, v62, v19);
    if ((objc_msgSend_isNil(v23, v24, v25, v26, v27) & 1) == 0)
    {
      break;
    }

LABEL_13:

    if (v17 == ++v21)
    {
      goto LABEL_14;
    }
  }

  v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v23, v28, v59, a4, a7, a8);
  v34 = v29;
  if (*a8)
  {
    goto LABEL_16;
  }

  if ((v22 & 1) == 0)
  {
    v69 = *objc_msgSend_rawDecimalValue(v29, v30, v31, v32, v33);
    v20 = objc_msgSend_unit(v34, v48, v49, v50, v51);
    goto LABEL_12;
  }

  if (objc_msgSend_unit(v29, v30, v31, v32, v33) == v20 || v20 && objc_msgSend_unit(v34, v35, v36, v37, v38) && (v39 = objc_msgSend_dimensionForUnit_(TSCEUnitRegistry, v35, v20, v37, v38), v44 = objc_msgSend_unit(v34, v40, v41, v42, v43), v39 == objc_msgSend_dimensionForUnit_(TSCEUnitRegistry, v45, v44, v46, v47)))
  {
    v61 = *objc_msgSend_rawDecimalValue(v34, v35, v36, v37, v38);
    TSUDecimal::fma(&v69, a5, &v61, &v69);
LABEL_12:

    v22 = 1;
    goto LABEL_13;
  }

  v53 = objc_msgSend_functionName(a4, v35, v36, v37, v38);
  *a8 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v54, v53, v55, v56);

LABEL_16:
  v52 = objc_msgSend_zero(TSCENumberValue, v30, v31, v32, v33);

LABEL_17:

  return v52;
}

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v9 = *(*a5 + 8);
  v39 = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, a3, a4, 1, 1, &v39);
  v12 = v39;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v13, v12, v14, v15);
  }

  else
  {
    v38 = 0;
    v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v13, a3, a4, 0, &v38);
    v19 = v38;
    if (v19)
    {
      v16 = v19;
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v20, v19, v22, v23);
    }

    else
    {
      v37[0] = objc_msgSend_decimalRepresentation(v18, v20, v21, v22, v23);
      v37[1] = v24;
      v36 = 0;
      v25 = objc_msgSend_evaluatePolynomial_functionSpec_xDecimal_coefficients_argumentIndex_outError_(TSCEFunction_POLYNOMIAL, v24, a3, a4, v37, v11, 1, &v36);
      v16 = v36;
      if (v16)
      {
        v29 = objc_msgSend_raiseErrorOrConvert_(a3, v26, v16, v27, v28);
      }

      else
      {
        if (v11)
        {
          objc_msgSend_formatWithContext_(v11, v26, a3, v27, v28);
        }

        else
        {
          memset(&v34, 0, sizeof(v34));
        }

        TSCEFormat::TSCEFormat(&v35, &v34);
        objc_msgSend_setFormat_(v25, v30, &v35, v31, v32);
        v29 = v25;
      }

      v17 = v29;
    }
  }

  return v17;
}

@end