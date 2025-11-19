@interface TSCEFunction_CONCAT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_CONCAT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v51 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, a3, a4, 0, 0, &v51);
  v9 = v51;
  if (v9)
  {
    v14 = v9;
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v9, v12, v13);
  }

  else
  {
    v49 = 0;
    v50[0] = 0;
    *(v50 + 7) = 0;
    v16 = objc_msgSend_count(v8, v10, v11, v12, v13);
    v17 = a3;
    v43[0] = v17;
    v43[1] = a4;
    v44 = 0;
    v45[0] = 0;
    *(v45 + 7) = 0;
    v46 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v47 = 0;
    v48 = 0;
    if (v16)
    {
      v22 = v17;
      v23 = 0;
      v24 = 0;
      isRegexString = 1;
      do
      {
        v26 = objc_msgSend_valueAtIndex_accessContext_(v8, v18, v23, v43, v21, v38);
        if ((objc_msgSend_isNil(v26, v27, v28, v29, v30) & 1) == 0)
        {
          v42 = 0;
          if (v26)
          {
            objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v26, v31, v22, a4, 0, &v42);
            v14 = v42;
          }

          else
          {
            v14 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
          }

          sub_221077424(&v49, &v38, v22);

          if (v14)
          {
            v15 = objc_msgSend_raiseErrorOrConvert_(v22, v32, v14, v34, v35);
            goto LABEL_18;
          }

          if (isRegexString)
          {
            isRegexString = objc_msgSend_isRegexString(v26, v32, v33, v34, v35);
            v24 |= isRegexString;
          }

          else
          {
            isRegexString = 0;
          }
        }

        ++v23;
      }

      while (v16 != v23);
      if ((isRegexString & v24 & 1) == 0)
      {
        goto LABEL_16;
      }

      v26 = sub_2210772BC(&v49, v18, v19, v20, v21);
      v38 = 0;
      LODWORD(v39) = 0;
      BYTE4(v39) = 0;
      LOWORD(v40) = 1057;
      BYTE2(v40) = 1;
      HIDWORD(v40) = -50266102;
      v41 = 253;
      v15 = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v36, v26, &v38, 1, 0, 0);
      v14 = 0;
LABEL_18:
    }

    else
    {
LABEL_16:
      v15 = sub_2210789F4(&v49, v18, v19, v20, v21);
      v14 = 0;
    }
  }

  return v15;
}

@end