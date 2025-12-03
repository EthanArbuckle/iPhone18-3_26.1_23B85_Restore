@interface TSCEFunction_FDIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_FDIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v65 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v65);
  v11 = v65;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14, v15);
  if (v11)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v16, v11, v17, v18);
  }

  else
  {
    v21 = v19;
    v22 = *(*arguments + 8);
    v64 = 0;
    v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 1, &v64);
    v11 = v64;
    v29 = objc_msgSend_trunc(v24, v25, v26, v27, v28);

    objc_msgSend_doubleRepresentation(v29, v30, v31, v32, v33);
    if (v11)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v34, v11, v35, v36);
    }

    else
    {
      v38 = v37;
      v39 = *(*arguments + 16);
      v63 = 0;
      v41 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v40, context, spec, 2, &v63);
      v11 = v63;
      v46 = objc_msgSend_trunc(v41, v42, v43, v44, v45);

      objc_msgSend_doubleRepresentation(v46, v47, v48, v49, v50);
      if (v11)
      {
        v55 = objc_msgSend_raiseErrorOrConvert_(context, v51, v11, v52, v53);
      }

      else
      {
        v56 = v54;
        pthread_mutex_lock(&stru_27CFB4098);
        sub_22137C1A8(v38, v56, v21);
        pthread_mutex_unlock(&stru_27CFB4098);
        TSUDecimal::operator=();
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v57, context, v58, v59);
        }

        else
        {
          memset(v61, 0, sizeof(v61));
        }

        v55 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v57, v62, v61, v59);
      }

      v20 = v55;
    }
  }

  return v20;
}

@end