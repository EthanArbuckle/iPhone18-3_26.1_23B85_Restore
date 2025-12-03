@interface TSCEFunction_SWITCH
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SWITCH

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = *(arguments + 1) - *arguments;
  v8 = v7 >> 3;
  if ((v7 >> 3) >= 255)
  {
    v9 = objc_msgSend_functionName(spec, a2, context, spec, arguments);
    v11 = objc_msgSend_tooManyArguments_maximum_provided_(TSCEError, v10, v9, 254, (v7 >> 3) & 0x7FFFFFFF);
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13, v14);

    goto LABEL_56;
  }

  v94 = **arguments;
  v24 = objc_msgSend_deepType_(v94, v17, context, v18, v19);
  if (v24 == 9)
  {
    v25 = objc_msgSend_errorWithContext_(v94, v20, context, v22, v23);
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v26, v25, v27, v28);

LABEL_5:
    v29 = 0;
    goto LABEL_55;
  }

  specCopy = spec;
  v30 = v8 - 1;
  if (v8 < 3)
  {
    goto LABEL_38;
  }

  v31 = 1;
  while (1)
  {
    v32 = *(*arguments + 8 * v31);
    if (objc_msgSend_isThunk(v32, v33, v34, v35, v36))
    {
      v40 = objc_msgSend_unwrapThunk_(context, v37, v32, v38, v39);

      v32 = v40;
    }

    v41 = objc_msgSend_deepType_(v32, v37, context, v38, v39);
    v45 = v41;
    if (v41 == 9)
    {
      v70 = objc_msgSend_errorWithContext_(v32, v42, context, v43, v44);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v71, v70, v72, v73);
      goto LABEL_51;
    }

    if (v24)
    {
      v46 = 0;
    }

    else
    {
      v46 = v41 == 10;
    }

    v47 = v46;
    if (!v46)
    {
      v48 = !v41 && v24 == 10;
      if (!v48 && v24 != v41)
      {
        goto LABEL_37;
      }
    }

    v95 = 0;
    v50 = objc_msgSend_valuesAreEqualLeft_right_context_outError_(TSCEValue, v42, v94, v32, context, &v95);
    v51 = v95;
    if (!v51)
    {
      break;
    }

    v29 = v51;
    if (objc_msgSend_errorType(v51, v52, v53, v54, v55) == 109)
    {
      v69 = objc_msgSend_raiseErrorOrConvert_(context, v56, v29, v57, v58);
      goto LABEL_53;
    }

LABEL_37:
    v31 += 2;
    if (v30 <= v31)
    {
      goto LABEL_38;
    }
  }

  if ((v47 & 1) == 0)
  {
    v59 = !v45 && v24 == 10;
    v60 = v59;
    if (((v60 | v50) & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v15 = *(*arguments + 8 * v31 + 8);
  if (objc_msgSend_isThunk(v15, v74, v75, v76, v77))
  {
    v81 = objc_msgSend_unwrapThunk_(context, v78, v15, v79, v80);

    v15 = v81;
  }

  if (!v15)
  {
LABEL_38:
    v15 = 0;
    if ((v30 & 0x80000001) != 1)
    {
      goto LABEL_50;
    }

LABEL_39:
    v61 = v15;
    v15 = *(*arguments + 8 * v30);

    if (objc_msgSend_isThunk(v15, v62, v63, v64, v65))
    {
      v69 = objc_msgSend_unwrapThunk_(context, v66, v15, v67, v68);
      v29 = 0;
      v32 = v15;
LABEL_53:
      v15 = v69;
      goto LABEL_54;
    }

    goto LABEL_5;
  }

  isNil = objc_msgSend_isNil(v15, v20, v21, v22, v23);
  if ((v30 & 0x80000001) == 1)
  {
    v83 = isNil;
  }

  else
  {
    v83 = 0;
  }

  if (v83)
  {
    goto LABEL_39;
  }

  if (!isNil)
  {
    goto LABEL_5;
  }

LABEL_50:
  v70 = objc_msgSend_functionName(specCopy, v20, v21, v22, v23);
  v87 = objc_msgSend_noConditionIsTrueErrorForFunctionName_(TSCEError, v84, v70, v85, v86);
  v91 = objc_msgSend_raiseErrorOrConvert_(context, v88, v87, v89, v90);

  v32 = v15;
  v15 = v91;
LABEL_51:

  v29 = 0;
LABEL_54:

LABEL_55:
LABEL_56:

  return v15;
}

@end