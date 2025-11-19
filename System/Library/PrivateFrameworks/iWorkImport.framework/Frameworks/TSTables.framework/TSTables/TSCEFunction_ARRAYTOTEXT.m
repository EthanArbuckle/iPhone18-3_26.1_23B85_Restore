@interface TSCEFunction_ARRAYTOTEXT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_ARRAYTOTEXT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v45 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, a3, a4, 0, 0, &v45);
  v10 = v45;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v10, v12, v13);
LABEL_3:

    goto LABEL_11;
  }

  if (*(a5 + 1) - *a5 < 9uLL)
  {
    v25 = 0;
    goto LABEL_10;
  }

  v16 = *(*a5 + 8);
  if ((objc_msgSend_isTokenOrEmptyArg(v16, v17, v18, v19, v20) & 1) == 0 && objc_msgSend_deepType_(v16, v21, a3, v22, v23) != 10)
  {
    v44 = 0;
    v27 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v16, v24, a3, a4, 1, &v44);
    v14 = v44;
    v32 = objc_msgSend_integer(v27, v28, v29, v30, v31);

    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(a3, v33, v14, v35, v36);
    }

    else
    {
      if (v32 < 2)
      {
        v25 = v32;
        goto LABEL_8;
      }

      v37 = objc_msgSend_functionName(a4, v33, v34, v35, v36);
      v40 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v38, v37, 2, v39);
      v15 = objc_msgSend_raiseErrorOrConvert_(a3, v41, v40, v42, v43);
    }

    goto LABEL_3;
  }

  v25 = 0;
LABEL_8:

LABEL_10:
  v15 = objc_msgSend_convertArrayToText_maximumStringLength_formatMode_(v9, v11, a3, 0x7FFFFFFFFFFFFFFFLL, v25);
LABEL_11:

  return v15;
}

@end