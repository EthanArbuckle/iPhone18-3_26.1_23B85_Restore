@interface TSCEFunction_ISNUMBERORDATE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISNUMBERORDATE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_evaluateForArgsWithContext_functionSpec_arguments_(TSCEFunction_ISNUMBER, a2, context, spec, arguments);
  if (objc_msgSend_BOOLean(v8, v9, v10, v11, v12))
  {
    v14 = v8;
  }

  else
  {
    v14 = objc_msgSend_evaluateForArgsWithContext_functionSpec_arguments_(TSCEFunction_ISDATE, v13, context, spec, arguments);
  }

  v15 = v14;

  return v15;
}

@end