@interface TSCEFunction_WEIBULL
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_WEIBULL

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v61 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v61);
  v11 = v61;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14, v15);
  v17 = v16;

  v18 = *(*arguments + 8);
  v60 = v11;
  v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v19, context, spec, 1, &v60);
  v21 = v60;

  objc_msgSend_doubleRepresentation(v20, v22, v23, v24, v25);
  v27 = v26;

  v28 = *(*arguments + 16);
  v59 = v21;
  v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v28, v29, context, spec, 2, &v59);
  v31 = v59;

  objc_msgSend_doubleRepresentation(v30, v32, v33, v34, v35);
  v37 = v36;

  if (v31)
  {
    v41 = objc_msgSend_raiseErrorOrConvert_(context, v38, v31, v39, v40);
  }

  else
  {
    v42 = *(*arguments + 24);
    v58 = 0;
    v44 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v42, v43, context, spec, 3, &v58);
    v31 = v58;
    if (v31)
    {
      v48 = objc_msgSend_raiseErrorOrConvert_(context, v45, v31, v46, v47);
    }

    else
    {
      if (v44)
      {
        v49 = pow(v17 / v37, v27);
        expm1(-v49);
      }

      else
      {
        v50 = v17 / v37;
        pow(v50, v27 + -1.0);
        v51 = pow(v50, v27);
        exp(-v51);
      }

      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v52, context, v53, v54);
      }

      else
      {
        memset(v56, 0, sizeof(v56));
      }

      v48 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v52, v57, v56, v54);
    }

    v41 = v48;
  }

  return v41;
}

@end