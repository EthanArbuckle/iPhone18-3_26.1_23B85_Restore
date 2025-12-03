@interface TSCEFunction_POWER
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_POWER

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v58 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v58);
  v12 = v58;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14, v15);
    goto LABEL_23;
  }

  v57 = 0;
  v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v57);
  v16 = v57;
  if (!v16)
  {
    if (objc_msgSend_isDuration(v11, v19, v20, v21, v22))
    {
      objc_msgSend_reportLossOfUnitsWarningInContext_(TSCEWarning, v23, context, v25, v26);
    }

    if (objc_msgSend_isDuration(v18, v23, v24, v25, v26))
    {
      objc_msgSend_reportLossOfUnitsWarningInContext_(TSCEWarning, v27, context, v28, v29);
    }

    v56 = 0;
    v30 = objc_msgSend_power_outError_(v11, v27, v18, &v56, v29);
    v16 = v56;
    if (v16)
    {
      v35 = objc_msgSend_raiseErrorOrConvert_(context, v31, v16, v33, v34);
    }

    else
    {
      if ((objc_msgSend_isFinite(v30, v31, v32, v33, v34) & 1) == 0)
      {
        v40 = objc_msgSend_functionName(spec, v36, v37, v38, v39);
        v44 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v41, v40, v42, v43);
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v45, v44, v46, v47);

LABEL_21:
        goto LABEL_22;
      }

      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v36, context, v38, v39);
      }

      else
      {
        memset(&v54, 0, sizeof(v54));
      }

      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v36, context, v38, v39);
      }

      else
      {
        memset(&v53, 0, sizeof(v53));
      }

      TSCEFormat::formatByMergingWithFormat(&v54, &v53, v37, v38, v39, &v52);
      TSCEFormat::TSCEFormat(&v55, &v52);
      objc_msgSend_setFormat_(v30, v48, &v55, v49, v50);
      v35 = v30;
    }

    v17 = v35;
    goto LABEL_21;
  }

  v17 = objc_msgSend_raiseErrorOrConvert_(context, v19, v16, v21, v22);
LABEL_22:

LABEL_23:

  return v17;
}

@end