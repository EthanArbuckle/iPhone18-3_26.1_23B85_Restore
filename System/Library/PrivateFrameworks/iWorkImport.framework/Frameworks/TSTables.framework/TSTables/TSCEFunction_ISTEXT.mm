@interface TSCEFunction_ISTEXT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISTEXT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v6 = *(arguments + 1) - *arguments;
  if ((v6 & 0x7FFFFFFF8) != 8)
  {
    v7 = objc_msgSend_functionName(spec, a2, context, spec, arguments);
    v23 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v33, v7, (v6 >> 3), v34);
    v32 = objc_msgSend_raiseErrorOrConvert_(context, v35, v23, v36, v37);
    goto LABEL_9;
  }

  v7 = **arguments;
  if (objc_msgSend_isReferenceValue(v7, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_asReferenceValue(v7, v12, v13, v14, v15);
    v19 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v16, v17, context, 0, v18);

    v7 = v19;
  }

  if (objc_msgSend_isError(v7, v12, v13, v14, v15))
  {
    v23 = objc_msgSend_errorWithContext_(v7, v20, context, v21, v22);
    if ((objc_msgSend_isInvalidReferenceError(v23, v24, v25, v26, v27) & 1) != 0 || objc_msgSend_isInvalidRangeUsageError(v23, v28, v29, v30, v31))
    {
      v32 = objc_msgSend_raiseErrorOrConvert_(context, v28, v23, v30, v31);
LABEL_9:
      v38 = v32;

      goto LABEL_12;
    }

    objc_msgSend_BOOLValue_(TSCEBooleanValue, v44, 0, v45, v46);
  }

  else
  {
    v39 = objc_msgSend_deepType_(v7, v20, context, v21, v22) == 7;
    objc_msgSend_BOOLValue_(TSCEBooleanValue, v40, v39, v41, v42);
  }
  v38 = ;
LABEL_12:

  return v38;
}

@end