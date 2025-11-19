@interface TSCEFunction_CHIINV
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_CHIINV

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v47 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v47);
  v11 = v47;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14, v15);
  if (v11)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v11, v17, v18);
  }

  else
  {
    v21 = v19;
    v22 = *(*a5 + 8);
    v46 = 0;
    v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, a3, a4, 1, &v46);
    v11 = v46;
    v29 = objc_msgSend_trunc(v24, v25, v26, v27, v28);

    objc_msgSend_doubleRepresentation(v29, v30, v31, v32, v33);
    if (v11)
    {
      v38 = objc_msgSend_raiseErrorOrConvert_(a3, v34, v11, v35, v36);
    }

    else
    {
      v39 = v37;
      pthread_mutex_lock(&stru_27CFB4098);
      sub_2213BCCF4(v39, v21);
      pthread_mutex_unlock(&stru_27CFB4098);
      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v40, a3, v41, v42);
      }

      else
      {
        memset(v44, 0, sizeof(v44));
      }

      v38 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v40, v45, v44, v42);
    }

    v20 = v38;
  }

  return v20;
}

@end