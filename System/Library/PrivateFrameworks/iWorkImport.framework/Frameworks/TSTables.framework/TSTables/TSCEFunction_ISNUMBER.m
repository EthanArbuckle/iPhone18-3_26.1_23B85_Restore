@interface TSCEFunction_ISNUMBER
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_ISNUMBER

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v6 = *(a5 + 1) - *a5;
  if ((v6 & 0x7FFFFFFF8) != 8)
  {
    v7 = objc_msgSend_functionName(a4, a2, a3, a4, a5);
    v23 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v33, v7, (v6 >> 3), v34);
    v32 = objc_msgSend_raiseErrorOrConvert_(a3, v35, v23, v36, v37);
    goto LABEL_9;
  }

  v7 = **a5;
  if (objc_msgSend_isReferenceValue(v7, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_asReferenceValue(v7, v12, v13, v14, v15);
    v19 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v16, v17, a3, 0, v18);

    v7 = v19;
  }

  if (objc_msgSend_isError(v7, v12, v13, v14, v15))
  {
    v23 = objc_msgSend_errorWithContext_(v7, v20, a3, v21, v22);
    if (objc_msgSend_isInvalidReferenceError(v23, v24, v25, v26, v27) & 1) != 0 || (objc_msgSend_isInvalidRangeUsageError(v23, v28, v29, v30, v31))
    {
      v32 = objc_msgSend_raiseErrorOrConvert_(a3, v28, v23, v30, v31);
LABEL_9:
      v38 = v32;

      goto LABEL_18;
    }
  }

  if (objc_msgSend_deepType_(v7, v20, a3, v21, v22) == 5)
  {
    v54 = 0;
    v42 = objc_msgSend_asNumber_outError_(v7, v39, a3, &v54, v41);
    v47 = v54;
    if (v47 || (objc_msgSend_isNan(v42, v43, v44, v45, v46) & 1) != 0)
    {
      v52 = 0;
    }

    else
    {
      v52 = objc_msgSend_isInf(v42, v48, v49, v50, v51) ^ 1;
    }
  }

  else
  {
    v52 = 0;
  }

  v38 = objc_msgSend_BOOLValue_(TSCEBooleanValue, v39, v52, v40, v41);
LABEL_18:

  return v38;
}

@end