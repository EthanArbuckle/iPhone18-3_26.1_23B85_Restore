@interface TSCEFunction_PLAINTEXT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_PLAINTEXT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  if (objc_msgSend_deepType_(v7, v8, a3, v9, v10) == 7)
  {
    v24 = 0;
    v12 = &v24;
    v13 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v7, v11, a3, a4, 0, &v24);
  }

  else
  {
    v23 = 0;
    v12 = &v23;
    v13 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v7, v11, a3, a4, 0, &v23);
  }

  v14 = v13;
  v18 = *v12;
  if (v18)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(a3, v15, v18, v16, v17);
  }

  else
  {
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v15, a3, v16, v17);
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    v19 = objc_msgSend_stringValue_format_(TSCEStringValue, v15, v14, v22, v17);
  }

  v20 = v19;

  return v20;
}

@end