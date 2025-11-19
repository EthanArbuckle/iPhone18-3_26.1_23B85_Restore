@interface TSCEFunction_CONFIDENCE_T
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_CONFIDENCE_T

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v66 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v66);
  v11 = v66;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14, v15);
  if (v11)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v11, v17, v18);
  }

  else
  {
    v21 = v19;
    v22 = *(*a5 + 8);
    v65 = 0;
    v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, a3, a4, 1, &v65);
    v11 = v65;
    objc_msgSend_doubleRepresentation(v24, v25, v26, v27, v28);
    if (v11)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v29, v11, v30, v31);
    }

    else
    {
      v32 = *(*a5 + 16);
      v64 = 0;
      v34 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v32, v33, a3, a4, 2, &v64);
      v11 = v64;
      objc_msgSend_doubleRepresentation(v34, v35, v36, v37, v38);
      if (v11)
      {
        v20 = objc_msgSend_raiseErrorOrConvert_(a3, v39, v11, v41, v42);
      }

      else
      {
        v44 = trunc(v43);
        if (v44 == 1.0)
        {
          v45 = objc_msgSend_divideByZeroError(TSCEError, v39, v40, v41, v42);
          v20 = objc_msgSend_raiseErrorOrConvert_(a3, v46, v45, v47, v48);
        }

        else
        {
          pthread_mutex_lock(&stru_27CFB4098);
          sub_221250524(v44 - 1, v21 * -0.5 + 1.0);
          pthread_mutex_unlock(&stru_27CFB4098);
          sub_2212B7230(__p, 3uLL);
          if (v8)
          {
            objc_msgSend_formatWithContext_(v8, v49, a3, v50, v51);
          }

          else
          {
            memset(&v62, 0, sizeof(v62));
          }

          sub_22114F414(__p, &v62);
          if (v22)
          {
            objc_msgSend_formatWithContext_(v22, v52, a3, v53, v54);
          }

          else
          {
            memset(&v62, 0, sizeof(v62));
          }

          sub_22114F414(__p, &v62);
          if (v32)
          {
            objc_msgSend_formatWithContext_(v32, v55, a3, v56, v57);
          }

          else
          {
            memset(&v62, 0, sizeof(v62));
          }

          sub_22114F414(__p, &v62);
          TSUDecimal::operator=();
          sub_221256020(__p, &v62);
          v20 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v58, &v61, &v62, v59);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  return v20;
}

@end