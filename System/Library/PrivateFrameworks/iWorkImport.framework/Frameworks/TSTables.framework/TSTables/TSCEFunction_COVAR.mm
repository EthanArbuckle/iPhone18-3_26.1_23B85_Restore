@interface TSCEFunction_COVAR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_COVAR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v56 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 1, &v56);
  v10 = v56;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12, v13);
    goto LABEL_7;
  }

  v16 = *(*arguments + 8);
  v55 = 0;
  v17 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v16, v11, context, spec, 1, 1, &v55);
  v14 = v55;
  if (v14)
  {
    v22 = objc_msgSend_raiseErrorOrConvert_(context, v18, v14, v20, v21);
  }

  else
  {
    v24 = objc_msgSend_count(v9, v18, v19, v20, v21);
    if (v24 != objc_msgSend_count(v17, v25, v26, v27, v28))
    {
      v40 = objc_msgSend_functionName(spec, v29, v30, v31, v32);
      v44 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v41, v40, v42, v43);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v45, v44, v46, v47);

      v14 = 0;
      goto LABEL_6;
    }

    v53 = 0;
    isSample_outError = objc_msgSend_covarianceWithVector_functionSpec_vector1_vector2_outStdDev_durationAllowed_isSample_outError_(TSCEFunction_CORREL, v29, context, spec, v9, v17, 0, 0, 0, &v53);
    v35 = v34;
    v14 = v53;
    v54[0] = isSample_outError;
    v54[1] = v35;
    if (v14)
    {
      v22 = objc_msgSend_raiseErrorOrConvert_(context, v36, v14, v38, v39);
    }

    else
    {
      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v36, context, v38, v39);
      }

      else
      {
        memset(&v51, 0, sizeof(v51));
      }

      if (v17)
      {
        objc_msgSend_formatWithContext_(v17, v36, context, v38, v39);
      }

      else
      {
        memset(&v50, 0, sizeof(v50));
      }

      TSCEFormat::formatByMergingWithFormat(&v51, &v50, v37, v38, v39, v52);
      v22 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v48, v54, v52, v49);
    }
  }

  v15 = v22;
LABEL_6:

LABEL_7:

  return v15;
}

@end