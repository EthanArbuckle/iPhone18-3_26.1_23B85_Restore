@interface TSCEFunction_ISOMITTED
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_ISOMITTED

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v5 = **a5;
  isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v5, v6, v7, v8, v9);
  v14 = objc_msgSend_BOOLValue_(TSCEBooleanValue, v11, isTokenOrEmptyArg, v12, v13);

  return v14;
}

@end