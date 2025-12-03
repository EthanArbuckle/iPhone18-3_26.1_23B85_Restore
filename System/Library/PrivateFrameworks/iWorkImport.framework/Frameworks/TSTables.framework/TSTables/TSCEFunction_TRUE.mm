@interface TSCEFunction_TRUE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TRUE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v5 = *(arguments + 1) - *arguments;
  if ((v5 >> 3) < 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1057;
    v20 = 1;
    v21 = -50266102;
    v22 = 253;
    v14 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, a2, 1, &v16, arguments);
  }

  else
  {
    v7 = objc_msgSend_functionName(spec, a2, context, spec, arguments);
    v10 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v8, v7, (v5 >> 3) & 0x7FFFFFFF, v9);
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12, v13);
  }

  return v14;
}

@end