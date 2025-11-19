@interface TSCEFunction_ISBLANK
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_ISBLANK

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v6 = **a5;
  IsBlank_context = objc_msgSend_valueIsBlank_context_(TSCEFunction_ISBLANK, v7, v6, a3, v8);
  if (v6)
  {
    objc_msgSend_formatWithContext_(v6, v9, a3, v10, v11);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v13 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v9, IsBlank_context, v15, v11);

  return v13;
}

@end