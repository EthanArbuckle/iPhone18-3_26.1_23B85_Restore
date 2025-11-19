@interface TSCEFunction_FACTDOUBLE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_FACTDOUBLE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  TSUDecimal::operator=();
  v11 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v8, &v45, v9, v10);
  v47 = 0;
  v13 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v12, a3, a4, 0, &v47);
  v14 = v47;
  v19 = objc_msgSend_floor(v13, v15, v16, v17, v18);

  if (v14)
  {
    v23 = objc_msgSend_raiseErrorOrConvert_(a3, v20, v14, v21, v22);
    goto LABEL_12;
  }

  TSUDecimal::operator=();
  v27 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v24, &v45, v25, v26);
  v46 = 0;
  v30 = objc_msgSend_eq_outError_(v19, v28, v11, &v46, v29);
  v31 = v46;
  v14 = v31;
  if (v30)
  {
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v32, a3, v33, v34);
    }

    else
    {
      memset(&v44, 0, sizeof(v44));
    }

    TSCEFormat::TSCEFormat(&v45, &v44);
    objc_msgSend_setFormat_(v27, v36, &v45, v37, v38);
    v35 = v27;
  }

  else
  {
    if (!v31)
    {
      TSUDecimal::operator=();
      v43 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v40, &v45, v41, v42);
      v23 = sub_2212570BC(a3, a4, v19, v43, v27);

      goto LABEL_11;
    }

    v35 = objc_msgSend_raiseErrorOrConvert_(a3, v32, v31, v33, v34);
  }

  v23 = v35;
LABEL_11:

LABEL_12:

  return v23;
}

@end