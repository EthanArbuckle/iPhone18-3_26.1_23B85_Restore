@interface TSCEFunction_DEC2OCT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DEC2OCT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v57 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v57);
  v11 = v57;
  v16 = objc_msgSend_trunc(v10, v12, v13, v14, v15);

  if (v11)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v17, v11, v19, v20);
LABEL_3:

    goto LABEL_17;
  }

  if (objc_msgSend_hasUnits(v16, v17, v18, v19, v20) && !objc_msgSend_dimension(v16, v22, v23, v24, v25))
  {
    v38 = objc_msgSend_functionName(spec, v26, v27, v28, v29);
    v30 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v48, v38, 1, v49);
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v50, v30, v51, v52);
    goto LABEL_13;
  }

  if (*(arguments + 1) - *arguments >= 9uLL)
  {
    v30 = *(*arguments + 8);
    if (objc_msgSend_isTokenOrEmptyArg(v30, v31, v32, v33, v34))
    {
      v36 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v56 = 0;
    v37 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v35, context, spec, 1, &v56);
    v38 = v56;
    v43 = objc_msgSend_trunc(v37, v39, v40, v41, v42);

    if (!v38)
    {
      v55._decimal.w[0] = objc_msgSend_decimalRepresentation(v43, v44, v45, v46, v47);
      v55._decimal.w[1] = v53;
      v36 = TSUDecimal::truncateWithRounding(&v55);

      goto LABEL_15;
    }

    v21 = objc_msgSend_raiseErrorOrConvert_(context, v44, v38, v46, v47);

LABEL_13:
    v11 = v38;
    goto LABEL_3;
  }

  v36 = 0;
LABEL_16:
  v21 = sub_2211F8024(context, spec, v16, 8, v36, 0);
LABEL_17:

  return v21;
}

@end