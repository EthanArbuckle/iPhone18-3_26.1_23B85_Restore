@interface TSCEFunction_STANDARDIZE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_STANDARDIZE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v61 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v61);
  v11 = v61;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13, v14);
  }

  else
  {
    v17 = *(*arguments + 8);
    v60 = 0;
    v19 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v18, context, spec, 1, &v60);
    v20 = v60;
    if (v20)
    {
      v15 = v20;
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v21, v20, v22, v23);
    }

    else
    {
      v24 = *(*arguments + 16);
      v59 = 0;
      v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v25, context, spec, 2, &v59);
      v15 = v59;
      if (v15)
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v27, v15, v28, v29);
      }

      else
      {
        if (objc_msgSend_dimensionsMatchModuloCurrency_(v10, v27, v19, v28, v29) && (objc_msgSend_dimensionsMatchModuloCurrency_(v19, v30, v26, v32, v33) & 1) != 0)
        {
          v58 = 0;
          v34 = objc_msgSend_subtract_functionSpec_outError_(v10, v30, v19, spec, &v58);
          v35 = v58;
          v57 = v35;
          v54 = v34;
          v38 = objc_msgSend_divide_outError_(v34, v36, v26, &v57, v37);
          v15 = v57;

          if (v15)
          {
            v42 = objc_msgSend_raiseErrorOrConvert_(context, v39, v15, v40, v41);
          }

          else
          {
            TSCEFormat::TSCEFormat(&v55, 256);
            TSCEFormat::TSCEFormat(&v56, &v55);
            objc_msgSend_setFormat_(v38, v50, &v56, v51, v52);
            v42 = v38;
          }

          v16 = v42;
        }

        else
        {
          v38 = objc_msgSend_functionName(spec, v30, v31, v32, v33);
          v46 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v43, v38, v44, v45);
          v16 = objc_msgSend_raiseErrorOrConvert_(context, v47, v46, v48, v49);

          v15 = 0;
        }
      }
    }
  }

  return v16;
}

@end