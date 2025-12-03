@interface TSCEFunction_NOT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NOT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v18 = 0;
  v9 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v18);
  v13 = v18;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v11, v12);
  }

  else
  {
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v10, context, v11, v12);
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    v14 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v10, v9 ^ 1u, v17, v12);
  }

  v15 = v14;

  return v15;
}

@end