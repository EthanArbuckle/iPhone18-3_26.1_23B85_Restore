@interface TSCEFunction_ROUND
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ROUND

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v61[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v61);
  v14 = v61[0];
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v14, v12, v13);
    goto LABEL_18;
  }

  v20 = objc_msgSend_errorForDuration_argumentIndex_(v10, v11, spec, 0, v13);
  if (v20)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v16, v20, v18, v19);
    v14 = v20;
    goto LABEL_18;
  }

  v24 = objc_msgSend_zero(TSCENumberValue, v16, v17, v18, v19);
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v21, context, v22, v23);
  }

  else
  {
    memset(&v60, 0, sizeof(v60));
  }

  if (*(arguments + 1) - *arguments < 9uLL)
  {
    goto LABEL_11;
  }

  v25 = *(*arguments + 8);
  if ((objc_msgSend_isTokenOrEmptyArg(v25, v26, v27, v28, v29) & 1) == 0)
  {
    v59 = 0;
    v35 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v25, v30, context, spec, 1, &v59);
    v14 = v59;
    v34 = objc_msgSend_floor(v35, v36, v37, v38, v39);

    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v40, v14, v42, v43);
    }

    else
    {
      if (!objc_msgSend_hasUnits(v34, v40, v41, v42, v43))
      {
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v44, context, v46, v47);
        }

        else
        {
          memset(&v57, 0, sizeof(v57));
        }

        if (v25)
        {
          objc_msgSend_formatWithContext_(v25, v44, context, v46, v47);
        }

        else
        {
          memset(&v56, 0, sizeof(v56));
        }

        TSCEFormat::formatByMergingWithFormat(&v57, &v56, v45, v46, v47, &v58);
        TSCEFormat::operator=(&v60, &v58);
        v24 = v34;
        goto LABEL_10;
      }

      v48 = objc_msgSend_functionName(spec, v44, v45, v46, v47);
      v51 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v49, v48, 2, v50);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v52, v51, v53, v54);
    }

    goto LABEL_17;
  }

LABEL_10:

LABEL_11:
  v15 = sub_2212B1D7C(v10, v24, NSRoundPlain, NSRoundPlain);
  TSCEFormat::TSCEFormat(&v58, &v60);
  objc_msgSend_setFormat_(v15, v31, &v58, v32, v33);
  v14 = 0;
  v34 = v24;
LABEL_17:

LABEL_18:

  return v15;
}

@end