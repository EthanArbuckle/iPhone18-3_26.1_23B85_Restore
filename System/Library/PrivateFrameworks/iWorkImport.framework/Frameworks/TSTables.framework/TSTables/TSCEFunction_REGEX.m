@interface TSCEFunction_REGEX
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_REGEX

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  if (objc_msgSend_deepType_(v8, v9, a3, v10, v11) == 7)
  {
    v41 = 0;
    v13 = &v41;
    v14 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v8, v12, a3, a4, 0, &v41);
  }

  else
  {
    v40 = 0;
    v13 = &v40;
    v14 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v12, a3, a4, 0, &v40);
  }

  v15 = v14;
  v16 = *v13;
  if (!v16)
  {
    if (*(a5 + 1) - *a5 < 9uLL)
    {
      v32 = 1;
    }

    else
    {
      v22 = *(*a5 + 8);
      if ((objc_msgSend_isTokenOrEmptyArg(v22, v23, v24, v25, v26) & 1) != 0 || objc_msgSend_nativeType(v22, v27, v28, v29, v30) == 10)
      {
        v32 = 1;
      }

      else
      {
        v39 = 0;
        v32 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v22, v31, a3, a4, 1, &v39);
        v34 = v39;
        if (v34)
        {
          v20 = v34;
          v21 = objc_msgSend_raiseErrorOrConvert_(a3, v35, v34, v36, v37);

          goto LABEL_6;
        }
      }
    }

    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v17, a3, v18, v19);
    }

    else
    {
      memset(v38, 0, sizeof(v38));
    }

    v21 = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v17, v15, v38, 1, v32, 0);
    goto LABEL_17;
  }

  v20 = v16;
  v21 = objc_msgSend_raiseErrorOrConvert_(a3, v17, v16, v18, v19);
LABEL_6:

LABEL_17:

  return v21;
}

@end