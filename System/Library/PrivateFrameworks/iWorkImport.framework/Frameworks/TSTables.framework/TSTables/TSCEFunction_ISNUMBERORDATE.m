@interface TSCEFunction_ISNUMBERORDATE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_ISNUMBERORDATE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = objc_msgSend_evaluateForArgsWithContext_functionSpec_arguments_(TSCEFunction_ISNUMBER, a2, a3, a4, a5);
  if (objc_msgSend_BOOLean(v8, v9, v10, v11, v12))
  {
    v14 = v8;
  }

  else
  {
    v14 = objc_msgSend_evaluateForArgsWithContext_functionSpec_arguments_(TSCEFunction_ISDATE, v13, a3, a4, a5);
  }

  v15 = v14;

  return v15;
}

@end