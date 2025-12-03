@interface TSCEFunction_DEGREES
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DEGREES

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v41 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v41);
  v14 = v41;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v10, v14, v12, v13);
  }

  else
  {
    if (objc_msgSend_hasUnits(v9, v10, v11, v12, v13))
    {
      v20 = objc_msgSend_functionName(spec, v16, v17, v18, v19);
      v23 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v21, v20, 1, v22);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v24, v23, v25, v26);
    }

    else
    {
      TSUDecimal::operator=();
      v20 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v27, &v40, v28, v29);
      v15 = objc_msgSend_multiply_context_(v9, v30, v20, context, v31);
      if (v7)
      {
        objc_msgSend_formatWithContext_(v7, v32, context, v33, v34);
      }

      else
      {
        memset(&v39, 0, sizeof(v39));
      }

      TSCEFormat::TSCEFormat(&v40, &v39);
      objc_msgSend_setFormat_(v15, v35, &v40, v36, v37);
    }
  }

  return v15;
}

@end