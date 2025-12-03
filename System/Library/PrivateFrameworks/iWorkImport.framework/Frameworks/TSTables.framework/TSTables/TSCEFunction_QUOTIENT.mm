@interface TSCEFunction_QUOTIENT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_QUOTIENT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v75 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v75);
  v12 = v75;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14, v15);
    goto LABEL_12;
  }

  v74 = 0;
  v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v74);
  v16 = v74;
  if (!v16)
  {
    if (objc_msgSend_dimensionsMatchModuloCurrency_(v11, v19, v18, v20, v21))
    {
      v27 = objc_msgSend_zero(TSCENumberValue, v23, v24, v25, v26);
      v73 = 0;
      v30 = objc_msgSend_eq_outError_(v18, v28, v27, &v73, v29);
      v16 = v73;

      if (v30)
      {
        v35 = objc_msgSend_divideByZeroError(TSCEError, v31, v32, v33, v34);
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v36, v35, v37, v38);

        goto LABEL_11;
      }

      if (v16)
      {
        v22 = objc_msgSend_raiseErrorOrConvert_(context, v31, v16, v33, v34);
        goto LABEL_5;
      }

      v72._decimal.w[0] = objc_msgSend_decimalRepresentation(v11, v31, v32, v33, v34);
      v72._decimal.w[1] = v48;
      v71._decimal.w[0] = objc_msgSend_decimalRepresentation(v18, v48, v49, v50, v51);
      v71._decimal.w[1] = v52;
      TSUDecimal::operator=();
      if (TSUDecimal::divide(&v72, &v71, &v70) == 5)
      {
        v57 = objc_msgSend_divideByZeroError(TSCEError, v53, v54, v55, v56);
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v58, v57, v59, v60);
      }

      else
      {
        TSUDecimal::roundTowardsZero(&v70);
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v61, context, v63, v64);
        }

        else
        {
          memset(&v68, 0, sizeof(v68));
        }

        if (v9)
        {
          objc_msgSend_formatWithContext_(v9, v61, context, v63, v64);
        }

        else
        {
          memset(&v67, 0, sizeof(v67));
        }

        TSCEFormat::formatByMergingWithFormat(&v68, &v67, v62, v63, v64, v69);
        v17 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v65, &v70, v69, v66);
      }
    }

    else
    {
      v39 = objc_msgSend_functionName(spec, v23, v24, v25, v26);
      v43 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v40, v39, v41, v42);
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v44, v43, v45, v46);
    }

    v16 = 0;
    goto LABEL_11;
  }

  v22 = objc_msgSend_raiseErrorOrConvert_(context, v19, v16, v20, v21);
LABEL_5:
  v17 = v22;
LABEL_11:

LABEL_12:

  return v17;
}

@end