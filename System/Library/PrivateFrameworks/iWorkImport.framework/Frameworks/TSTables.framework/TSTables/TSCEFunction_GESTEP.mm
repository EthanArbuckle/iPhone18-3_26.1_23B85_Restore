@interface TSCEFunction_GESTEP
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_GESTEP

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v39 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v39);
  v11 = v39;
  v12 = *(*arguments + 8);
  v38 = v11;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v13, context, spec, 1, &v38);
  v15 = v38;

  if (v15)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v16, v15, v17, v18);
LABEL_5:
    v26 = v19;
    goto LABEL_6;
  }

  if (objc_msgSend_dimensionsMatchModuloCurrency_(v10, v16, v14, v17, v18))
  {
    objc_msgSend_ge_(v10, v20, v14, v22, v23);
    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(v36, 256);
    v19 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v24, v37, v36, v25);
    goto LABEL_5;
  }

  v28 = objc_msgSend_functionName(spec, v20, v21, v22, v23);
  v32 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v29, v28, v30, v31);
  v26 = objc_msgSend_raiseErrorOrConvert_(context, v33, v32, v34, v35);

LABEL_6:

  return v26;
}

@end