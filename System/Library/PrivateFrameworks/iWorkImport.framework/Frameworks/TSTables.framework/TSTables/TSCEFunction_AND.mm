@interface TSCEFunction_AND
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_AND

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v55 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 1, &v55);
  v10 = v55;
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13, v14);
  }

  else
  {
    v17 = objc_msgSend_count(v9, v11, v12, v13, v14);
    contextCopy = context;
    v49[0] = contextCopy;
    v49[1] = spec;
    v50 = 0;
    v51[0] = 0;
    *(v51 + 7) = 0;
    v52 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v53 = 0;
    v54 = 0;
    if (v17)
    {
      v46 = v7;
      v23 = 0;
      v24 = 1;
      v25 = 1;
      do
      {
        v26 = objc_msgSend_valueAtIndex_accessContext_(v9, v18, v23, v49, v21);
        if ((objc_msgSend_isNil(v26, v27, v28, v29, v30) & 1) == 0)
        {
          v48 = 0;
          v32 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v26, v31, contextCopy, spec, 0, &v48);
          v33 = v48;
          if (v33)
          {
            v15 = v33;
            v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v34, v33, v35, v36);

            v7 = v46;
            goto LABEL_17;
          }

          v37 = v24 | v25;
          v24 = 0;
          v25 = v37 & v32;
        }

        ++v23;
      }

      while (v17 != v23);
      v7 = v46;
      if (v24)
      {
        goto LABEL_10;
      }

      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v18, contextCopy, v20, v21);
      }

      else
      {
        memset(v47, 0, sizeof(v47));
      }

      v16 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v18, v25 & 1, v47, v21);
    }

    else
    {
LABEL_10:
      v38 = objc_msgSend_functionName(spec, v18, v19, v20, v21);
      v41 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v39, v38, 2, v40);
      v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v42, v41, v43, v44);
    }

    v15 = 0;
LABEL_17:
  }

  return v16;
}

@end