@interface TSCEFunction_LOGINV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LOGINV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v71 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v71);
  v11 = v71;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14, v15);
  if (v11)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v16, v11, v18, v19);
  }

  else
  {
    v22 = v20;
    if (objc_msgSend_hasUnits(v10, v16, v17, v18, v19))
    {
      v27 = objc_msgSend_functionName(spec, v23, v24, v25, v26);
      v30 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v28, v27, 1, v29);
      v21 = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32, v33);
    }

    else
    {
      v30 = *(*arguments + 8);
      v70 = 0;
      v35 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v34, context, spec, 1, &v70);
      v27 = v70;
      objc_msgSend_doubleRepresentation(v35, v36, v37, v38, v39);
      if (v27)
      {
        v21 = objc_msgSend_raiseErrorOrConvert_(context, v40, v27, v41, v42);
      }

      else
      {
        v44 = v43;
        v45 = *(*arguments + 16);
        v69 = 0;
        v47 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v45, v46, context, spec, 2, &v69);
        v27 = v69;
        objc_msgSend_doubleRepresentation(v47, v48, v49, v50, v51);
        if (v27)
        {
          v21 = objc_msgSend_raiseErrorOrConvert_(context, v52, v27, v53, v54);
        }

        else
        {
          v56 = v55;
          v60 = objc_msgSend_errorForDuration_argumentIndex_(v47, v52, spec, 2, v54);
          if (v60)
          {
            v21 = objc_msgSend_raiseErrorOrConvert_(context, v57, v60, v58, v59);
            v27 = v60;
          }

          else
          {
            pthread_mutex_lock(&stru_27CFB4098);
            sub_2214A7870(v22);
            v62 = v61;
            pthread_mutex_unlock(&stru_27CFB4098);
            exp(v44 + v62 * v56);
            TSUDecimal::operator=();
            if (v8)
            {
              objc_msgSend_formatWithContext_(v8, v63, context, v64, v65);
            }

            else
            {
              memset(v67, 0, sizeof(v67));
            }

            v21 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v63, v68, v67, v65);
            v27 = 0;
          }
        }
      }
    }

    v11 = v27;
  }

  return v21;
}

@end