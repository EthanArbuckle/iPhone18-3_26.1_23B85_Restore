@interface TSCEFunction_NORMSINV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NORMSINV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v40 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v40);
  v10 = v40;
  objc_msgSend_doubleRepresentation(v9, v11, v12, v13, v14);
  if (v10)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v15, v10, v17, v18);
  }

  else
  {
    v21 = v19;
    if (objc_msgSend_hasUnits(v9, v15, v16, v17, v18))
    {
      v26 = objc_msgSend_functionName(spec, v22, v23, v24, v25);
      v29 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v27, v26, 1, v28);
      v33 = objc_msgSend_raiseErrorOrConvert_(context, v30, v29, v31, v32);

      goto LABEL_10;
    }

    pthread_mutex_lock(&stru_27CFB4098);
    sub_2214A7870(v21);
    pthread_mutex_unlock(&stru_27CFB4098);
    TSUDecimal::operator=();
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v34, context, v35, v36);
    }

    else
    {
      memset(v38, 0, sizeof(v38));
    }

    v20 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v34, v39, v38, v36);
  }

  v33 = v20;
LABEL_10:

  return v33;
}

@end