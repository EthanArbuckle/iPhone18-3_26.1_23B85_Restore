@interface TSCEFunction_CHIDIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CHIDIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v49 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v49);
  v11 = v49;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14, v15);
  if (v11)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v16, v11, v17, v18);
  }

  else
  {
    v21 = v19;
    v22 = *(*arguments + 8);
    v48 = 0;
    v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 1, &v48);
    v11 = v48;
    v29 = objc_msgSend_trunc(v24, v25, v26, v27, v28);

    objc_msgSend_doubleRepresentation(v29, v30, v31, v32, v33);
    if (v11)
    {
      v38 = objc_msgSend_raiseErrorOrConvert_(context, v34, v11, v35, v36);
    }

    else
    {
      v39 = v37;
      pthread_mutex_lock(&stru_27CFB4098);
      v40.n128_u64[0] = v39;
      v41.n128_u64[0] = v21;
      sub_2213BCC9C(v40, v41);
      pthread_mutex_unlock(&stru_27CFB4098);
      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v42, context, v43, v44);
      }

      else
      {
        memset(v46, 0, sizeof(v46));
      }

      v38 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v42, v47, v46, v44);
    }

    v20 = v38;
  }

  return v20;
}

@end