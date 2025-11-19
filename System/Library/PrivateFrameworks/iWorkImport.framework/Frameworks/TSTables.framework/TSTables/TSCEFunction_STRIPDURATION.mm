@interface TSCEFunction_STRIPDURATION
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_STRIPDURATION

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  if (objc_msgSend_deepType_(v7, v8, a3, v9, v10) == 5 || objc_msgSend_deepType_(v7, v11, a3, v12, v13) == 7)
  {
    v31 = 0;
    v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v11, a3, a4, 0, &v31);
    v19 = v31;
    if (!v19 && objc_msgSend_isDuration(v14, v15, v16, v17, v18))
    {
      objc_msgSend_rawTimeIntervalValue(v14, v20, v21, v22, v23);
      TSUDecimal::operator=();
      if (v7)
      {
        objc_msgSend_formatWithContext_(v7, v24, a3, v25, v26);
      }

      else
      {
        memset(v29, 0, sizeof(v29));
      }

      v27 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v24, v30, v29, v26);
      goto LABEL_10;
    }
  }

  else
  {
    v19 = 0;
  }

  v27 = v7;
  v14 = v19;
LABEL_10:

  return v27;
}

@end