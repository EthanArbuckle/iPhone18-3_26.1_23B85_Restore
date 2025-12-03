@interface TSCEFunction_SIGN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SIGN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v32 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v32);
  v14 = v32;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v10, v14, v12, v13);
  }

  else
  {
    v16 = objc_msgSend_zero(TSCENumberValue, v10, v11, v12, v13);
    if (objc_msgSend_gt_(v9, v17, v16, v18, v19) || (v15 = v16, objc_msgSend_lt_(v9, v20, v16, v21, v22)))
    {
      TSUDecimal::operator=();
      v15 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v23, &v31, v24, v25);
    }

    TSCEFormat::TSCEFormat(&v30, 256);
    TSCEFormat::TSCEFormat(&v31, &v30);
    objc_msgSend_setFormat_(v15, v26, &v31, v27, v28);
  }

  return v15;
}

@end