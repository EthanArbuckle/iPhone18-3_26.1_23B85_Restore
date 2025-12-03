@interface TSCEFunction_ISERROR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISERROR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v6 = *(arguments + 1) - *arguments;
  if ((v6 & 0x7FFFFFFF8) == 8)
  {
    v7 = **arguments;
    v33 = 0;
    HasError_context_outError = objc_msgSend_valueHasError_context_outError_(v7, v8, 0, context, &v33);
    v10 = v33;
    if (objc_msgSend_isCircularReferenceError(v10, v11, v12, v13, v14))
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v15, v10, v16, v17);
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 1057;
      v30 = 1;
      v31 = -50266102;
      v32 = 253;
      v18 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v15, HasError_context_outError, &v26, v17);
    }
  }

  else
  {
    v7 = objc_msgSend_functionName(spec, a2, context, spec, arguments);
    v10 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v19, v7, (v6 >> 3), v20);
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v21, v10, v22, v23);
  }

  v24 = v18;

  return v24;
}

@end