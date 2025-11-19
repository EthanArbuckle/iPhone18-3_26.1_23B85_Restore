@interface TSCEFunction_GAMMADIST
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_GAMMADIST

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v67 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v67);
  v11 = v67;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14, v15);
  if (v11)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v11, v17, v18);
  }

  else
  {
    v21 = v19;
    v22 = *(*a5 + 8);
    v66 = 0;
    v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, a3, a4, 1, &v66);
    v11 = v66;
    objc_msgSend_doubleRepresentation(v24, v25, v26, v27, v28);
    if (v11)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v29, v11, v30, v31);
    }

    else
    {
      v33 = v32;
      v34 = *(*a5 + 16);
      v65 = 0;
      v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v35, a3, a4, 2, &v65);
      v11 = v65;
      objc_msgSend_doubleRepresentation(v36, v37, v38, v39, v40);
      if (v11)
      {
        v20 = objc_msgSend_raiseErrorOrConvert_(a3, v41, v11, v42, v43);
      }

      else
      {
        v45 = v44;
        v46 = *(*a5 + 24);
        v64 = 0;
        v48 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v46, v47, a3, a4, 3, &v64);
        v11 = v64;
        if (v11)
        {
          v52 = objc_msgSend_raiseErrorOrConvert_(a3, v49, v11, v50, v51);
        }

        else
        {
          if (v48)
          {
            pthread_mutex_lock(&stru_27CFB4098);
            v53.n128_f64[0] = 1.0 / v45;
            v54.n128_f64[0] = v33;
            sub_2213D8990(v53, v54, v21);
            pthread_mutex_unlock(&stru_27CFB4098);
          }

          else
          {
            v55 = -v21 / v45 + (v33 + -1.0) * log(v21);
            v56 = v55 - lgamma(v33);
            v57 = log(v45);
            exp(v56 - v33 * v57);
          }

          TSUDecimal::operator=();
          if (v8)
          {
            objc_msgSend_formatWithContext_(v8, v58, a3, v59, v60);
          }

          else
          {
            memset(v62, 0, sizeof(v62));
          }

          v52 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v58, v63, v62, v60);
        }

        v20 = v52;
      }
    }
  }

  return v20;
}

@end