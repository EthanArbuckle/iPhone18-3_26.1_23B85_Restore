@interface TSCEFunction_RADIANS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_RADIANS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v30 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v30);
  v13 = v30;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v11, v12);
  }

  else
  {
    TSUDecimal::operator=();
    v18 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v15, &v29, v16, v17);
    v14 = objc_msgSend_multiply_context_(v9, v19, v18, context, v20);
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v21, context, v22, v23);
    }

    else
    {
      memset(&v28, 0, sizeof(v28));
    }

    TSCEFormat::TSCEFormat(&v29, &v28);
    objc_msgSend_setFormat_(v14, v24, &v29, v25, v26);
  }

  return v14;
}

@end