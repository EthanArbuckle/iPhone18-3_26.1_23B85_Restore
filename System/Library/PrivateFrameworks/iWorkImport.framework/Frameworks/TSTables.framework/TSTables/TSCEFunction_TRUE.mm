@interface TSCEFunction_TRUE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_TRUE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v5 = *(a5 + 1) - *a5;
  if ((v5 >> 3) < 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1057;
    v20 = 1;
    v21 = -50266102;
    v22 = 253;
    v14 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, a2, 1, &v16, a5);
  }

  else
  {
    v7 = objc_msgSend_functionName(a4, a2, a3, a4, a5);
    v10 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v8, v7, (v5 >> 3) & 0x7FFFFFFF, v9);
    v14 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v10, v12, v13);
  }

  return v14;
}

@end