@interface TSCEFunction_OR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_OR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v56 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 1, &v56);
  v10 = v56;
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13, v14);
  }

  else
  {
    v17 = objc_msgSend_count(v9, v11, v12, v13, v14);
    contextCopy = context;
    v50[0] = contextCopy;
    v50[1] = spec;
    v51 = 0;
    v52[0] = 0;
    *(v52 + 7) = 0;
    v53 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v54 = 0;
    v55 = 0;
    if (v17)
    {
      v47 = v7;
      v23 = 0;
      v24 = 1;
      v25 = 1;
      do
      {
        v26 = objc_msgSend_valueAtIndex_accessContext_(v9, v18, v23, v50, v21);
        if ((objc_msgSend_isNil(v26, v27, v28, v29, v30) & 1) == 0)
        {
          v49 = 0;
          v32 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v26, v31, contextCopy, spec, 0, &v49);
          v33 = v49;
          if (v33)
          {
            v15 = v33;
            v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v34, v33, v35, v36);

            v7 = v47;
            goto LABEL_20;
          }

          v37 = (v24 & 1) == 0;
          v24 = 0;
          if (v37)
          {
            v38 = v25;
          }

          else
          {
            v38 = v32;
          }

          v25 = v38 | v32;
        }

        ++v23;
      }

      while (v17 != v23);
      v7 = v47;
      if (v24)
      {
        goto LABEL_13;
      }

      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v18, contextCopy, v20, v21);
      }

      else
      {
        memset(v48, 0, sizeof(v48));
      }

      v16 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v18, v25 & 1, v48, v21);
    }

    else
    {
LABEL_13:
      v39 = objc_msgSend_functionName(spec, v18, v19, v20, v21);
      v42 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v40, v39, 2, v41);
      v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v43, v42, v44, v45);
    }

    v15 = 0;
LABEL_20:
  }

  return v16;
}

@end