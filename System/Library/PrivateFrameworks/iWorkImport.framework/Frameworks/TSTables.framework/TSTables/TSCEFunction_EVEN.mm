@interface TSCEFunction_EVEN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_EVEN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v30 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v30);
  v14 = v30;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v10, v14, v12, v13);
  }

  else
  {
    objc_msgSend_doubleRepresentation(v9, v10, v11, v12, v13);
    TSUDecimal::operator=();
    v19 = objc_msgSend_variantWithDecimal_(v9, v16, &v29, v17, v18);

    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v20, context, v21, v22);
    }

    else
    {
      memset(&v28, 0, sizeof(v28));
    }

    TSCEFormat::TSCEFormat(&v29, &v28);
    objc_msgSend_setFormat_(v19, v23, &v29, v24, v25);
    v15 = v19;
    v9 = v15;
  }

  v26 = v15;

  return v26;
}

@end