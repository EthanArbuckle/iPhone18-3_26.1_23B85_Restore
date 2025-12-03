@interface TSCEFunction_TINV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TINV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v42 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v42);
  v11 = v42;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14, v15);
  if (v11)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v16, v11, v17, v18);
  }

  else
  {
    v21 = v19;
    v22 = *(*arguments + 8);
    v41 = 0;
    v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 1, &v41);
    v11 = v41;
    objc_msgSend_doubleRepresentation(v24, v25, v26, v27, v28);
    if (v11)
    {
      v33 = objc_msgSend_raiseErrorOrConvert_(context, v29, v11, v30, v31);
    }

    else
    {
      v34 = v32;
      pthread_mutex_lock(&stru_27CFB4098);
      sub_221250524(v34, v21 * -0.5 + 1.0);
      pthread_mutex_unlock(&stru_27CFB4098);
      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v35, context, v36, v37);
      }

      else
      {
        memset(v39, 0, sizeof(v39));
      }

      v33 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v35, v40, v39, v37);
    }

    v20 = v33;
  }

  return v20;
}

@end