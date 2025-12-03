@interface TSCEFunction_IF
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_IF

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  if (objc_msgSend_isThunk(v8, v9, v10, v11, v12))
  {
    v16 = objc_msgSend_unwrapThunk_(context, v13, v8, v14, v15);

    v8 = v16;
  }

  v54 = 0;
  v17 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v8, v13, context, spec, 0, &v54);
  v22 = v54;
  if (v22)
  {
    v23 = 0;
    v24 = objc_msgSend_raiseErrorOrConvert_(context, v18, v22, v20, v21);
LABEL_16:
    v38 = v24;
    goto LABEL_17;
  }

  v25 = *arguments;
  v26 = *(arguments + 1) - *arguments;
  if (v17)
  {
    if (v26 <= 8)
    {
      goto LABEL_20;
    }

    v37 = v25[1];
    goto LABEL_14;
  }

  if (v26 >= 0x11)
  {
    v27 = v25[2];
    if (objc_msgSend_isTokenOrEmptyArg(v27, v28, v29, v30, v31))
    {
      v36 = objc_msgSend_unitlessZero(TSCENumberValue, v32, v33, v34, v35);

      v27 = v36;
    }

    goto LABEL_15;
  }

  if (v26 == 16)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 1057;
    v51 = 1;
    v52 = -50266102;
    v53 = 253;
    v37 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v18, 0, &v47, v21);
LABEL_14:
    v27 = v37;
LABEL_15:
    v24 = v27;
    v23 = v24;
    goto LABEL_16;
  }

LABEL_20:
  v40 = objc_msgSend_functionName(spec, v18, v19, v20, v21);
  v43 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v41, v40, ((*(arguments + 1) - *arguments) >> 3), v42);
  v38 = objc_msgSend_raiseErrorOrConvert_(context, v44, v43, v45, v46);

  v23 = 0;
LABEL_17:

  return v38;
}

@end