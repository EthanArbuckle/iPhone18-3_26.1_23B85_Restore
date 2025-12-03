@interface TSCEFunction_SQRTPI
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SQRTPI

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v32 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v32);
  v13 = v32;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v11, v12);
  }

  else
  {
    TSUDecimal::operator=();
    v18 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v15, &v31, v16, v17);
    v23 = objc_msgSend_sqrt(v9, v19, v20, v21, v22);
    v14 = objc_msgSend_multiply_context_(v23, v24, v18, context, v25);

    v30._tskFormat = 0;
    v30._formatType = 0;
    v30._formatState = 0;
    *&v30._durationFormat = 1057;
    *(&v30._durationFormat + 2) = 1;
    *&v30._baseFormat.base = -50266102;
    v30._numberFormat = 253;
    TSCEFormat::TSCEFormat(&v31, &v30);
    objc_msgSend_setFormat_(v14, v26, &v31, v27, v28);
  }

  return v14;
}

@end