@interface TSCEFunction_PI
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PI

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v5 = *(arguments + 1) - *arguments;
  if ((v5 >> 3) < 1)
  {
    TSUDecimal::operator=();
    TSUDecimal::setAsPi(&v25);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1057;
    v22 = 1;
    v23 = -50266102;
    v24 = 253;
    v14 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v15, &v25, &v18, v16);
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