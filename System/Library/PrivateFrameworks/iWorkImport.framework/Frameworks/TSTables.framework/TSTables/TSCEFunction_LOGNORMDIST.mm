@interface TSCEFunction_LOGNORMDIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LOGNORMDIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v60 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v60);
  v11 = v60;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14, v15);
  if (v11)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v16, v11, v17, v18);
  }

  else
  {
    v21 = v19;
    v22 = *(*arguments + 8);
    v59 = 0;
    v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 1, &v59);
    v11 = v59;
    objc_msgSend_doubleRepresentation(v24, v25, v26, v27, v28);
    if (v11)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v29, v11, v30, v31);
    }

    else
    {
      v33 = v32;
      v34 = *(*arguments + 16);
      v58 = 0;
      v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v35, context, spec, 2, &v58);
      v11 = v58;
      objc_msgSend_doubleRepresentation(v36, v37, v38, v39, v40);
      if (v11)
      {
        v45 = objc_msgSend_raiseErrorOrConvert_(context, v41, v11, v42, v43);
      }

      else
      {
        v46 = v44;
        v47 = log(v21);
        objc_msgSend_probabilityWithZ_(TSCEFunction_NORMSDIST, v48, v49, v50, v51, ((v47 - v33) / v46));
        TSUDecimal::operator=();
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v52, context, v53, v54);
        }

        else
        {
          memset(v56, 0, sizeof(v56));
        }

        v45 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v52, v57, v56, v54);
      }

      v20 = v45;
    }
  }

  return v20;
}

@end