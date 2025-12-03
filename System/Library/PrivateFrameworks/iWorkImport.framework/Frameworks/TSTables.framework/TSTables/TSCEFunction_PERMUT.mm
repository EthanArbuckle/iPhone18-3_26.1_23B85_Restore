@interface TSCEFunction_PERMUT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PERMUT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  TSUDecimal::operator=();
  v11 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v8, v59, v9, v10);
  v12 = **arguments;
  v58 = 0;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v13, context, spec, 1, &v58);
  v15 = v58;
  v20 = objc_msgSend_trunc(v14, v16, v17, v18, v19);

  if (v15)
  {
    v24 = objc_msgSend_raiseErrorOrConvert_(context, v21, v15, v22, v23);
  }

  else
  {
    v25 = *(*arguments + 8);
    v57 = 0;
    v27 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v25, v26, context, spec, 1, &v57);
    v15 = v57;
    v32 = objc_msgSend_trunc(v27, v28, v29, v30, v31);

    if (v15)
    {
      v24 = objc_msgSend_raiseErrorOrConvert_(context, v33, v15, v34, v35);
    }

    else
    {
      v56 = 0;
      v36 = objc_msgSend_subtract_functionSpec_outError_(v20, v33, v32, spec, &v56);
      v15 = v56;
      if (v15)
      {
        v24 = objc_msgSend_raiseErrorOrConvert_(context, v37, v15, v39, v40);
      }

      else
      {
        v55 = objc_msgSend_zero(TSCENumberValue, v37, v38, v39, v40);
        if (objc_msgSend_lt_(v36, v41, v55, v42, v43))
        {
          v48 = objc_msgSend_functionName(spec, v44, v45, v46, v47);
          v50 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v49, v48, 1, 2, 0, 1);
          v24 = objc_msgSend_raiseErrorOrConvert_(context, v51, v50, v52, v53);
        }

        else
        {
          v24 = sub_2212570BC(context, spec, v12, v11, v36);
        }
      }
    }
  }

  return v24;
}

@end