@interface TSCEFunction_BASETONUM
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_BASETONUM

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  if (objc_msgSend_deepType_(v8, v9, context, v10, v11) == 5)
  {
    v50 = 0;
    v13 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v12, context, spec, 0, &v50);
    v14 = v50;
    v49[0] = objc_msgSend_decimalRepresentation(v13, v15, v16, v17, v18);
    v49[1] = v19;
    v22 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v19, v49, v20, v21);
    v48 = v14;
    v24 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 0, &v48);
    v25 = v48;

    v29 = v25;
    if (!v25)
    {
LABEL_3:
      v30 = *(*arguments + 8);
      v46 = 0;
      v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, context, spec, 1, &v46);
      v29 = v46;
      v37 = objc_msgSend_trunc(v32, v33, v34, v35, v36);

      if (v29)
      {
        objc_msgSend_raiseErrorOrConvert_(context, v38, v29, v40, v41);
      }

      else
      {
        v44 = objc_msgSend_integer(v37, v38, v39, v40, v41);
        sub_2211F78B4(context, spec, v24, v44, 0, 0);
      }
      v43 = ;

      goto LABEL_9;
    }
  }

  else
  {
    v47 = 0;
    v42 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v12, context, spec, 0, &v47);
    v29 = v47;
    v24 = v42;
    if (!v29)
    {
      goto LABEL_3;
    }
  }

  v43 = objc_msgSend_raiseErrorOrConvert_(context, v26, v29, v27, v28);
LABEL_9:

  return v43;
}

@end