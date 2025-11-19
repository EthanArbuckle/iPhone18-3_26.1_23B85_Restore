@interface TSCEFunction_GAMMAINV
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_GAMMAINV

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v53 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v53);
  v11 = v53;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14, v15);
  if (v11)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v11, v17, v18);
  }

  else
  {
    v21 = v19;
    v22 = *(*a5 + 8);
    v52 = 0;
    v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, a3, a4, 1, &v52);
    v11 = v52;
    objc_msgSend_doubleRepresentation(v24, v25, v26, v27, v28);
    if (v11)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v29, v11, v30, v31);
    }

    else
    {
      v33 = v32;
      v34 = *(*a5 + 16);
      v51 = 0;
      v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v35, a3, a4, 2, &v51);
      v11 = v51;
      objc_msgSend_doubleRepresentation(v36, v37, v38, v39, v40);
      if (v11)
      {
        v44 = objc_msgSend_raiseErrorOrConvert_(a3, v41, v11, v42, v43);
      }

      else
      {
        pthread_mutex_lock(&stru_27CFB4098);
        sub_2211F2F2C(v33, 1.0 - v21);
        pthread_mutex_unlock(&stru_27CFB4098);
        TSUDecimal::operator=();
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v45, a3, v46, v47);
        }

        else
        {
          memset(v49, 0, sizeof(v49));
        }

        v44 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v45, v50, v49, v47);
      }

      v20 = v44;
    }
  }

  return v20;
}

@end