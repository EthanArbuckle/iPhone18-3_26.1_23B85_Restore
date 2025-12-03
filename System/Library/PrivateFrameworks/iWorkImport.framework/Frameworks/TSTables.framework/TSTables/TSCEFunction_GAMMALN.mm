@interface TSCEFunction_GAMMALN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_GAMMALN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v26 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v26);
  v14 = v26;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v10, v14, v12, v13);
  }

  else
  {
    v16 = objc_msgSend_lgamma(v9, v10, v11, v12, v13);

    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v17, context, v18, v19);
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
    }

    TSCEFormat::TSCEFormat(&v25, &v24);
    objc_msgSend_setFormat_(v16, v20, &v25, v21, v22);
    v15 = v16;
    v9 = v15;
  }

  return v15;
}

@end