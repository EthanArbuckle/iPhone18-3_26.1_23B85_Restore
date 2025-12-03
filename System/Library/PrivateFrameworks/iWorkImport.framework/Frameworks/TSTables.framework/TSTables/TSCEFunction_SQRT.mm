@interface TSCEFunction_SQRT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SQRT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v26 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v26);
  v14 = v26;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v10, v14, v12, v13);
  }

  else
  {
    if (objc_msgSend_isDuration(v9, v10, v11, v12, v13))
    {
      objc_msgSend_reportLossOfUnitsWarningInContext_(TSCEWarning, v16, context, v18, v19);
    }

    v15 = objc_msgSend_sqrt(v9, v16, v17, v18, v19);
    v24._tskFormat = 0;
    v24._formatType = 0;
    v24._formatState = 0;
    *&v24._durationFormat = 1057;
    *(&v24._durationFormat + 2) = 1;
    *&v24._baseFormat.base = -50266102;
    v24._numberFormat = 253;
    TSCEFormat::TSCEFormat(&v25, &v24);
    objc_msgSend_setFormat_(v15, v20, &v25, v21, v22);
  }

  return v15;
}

@end