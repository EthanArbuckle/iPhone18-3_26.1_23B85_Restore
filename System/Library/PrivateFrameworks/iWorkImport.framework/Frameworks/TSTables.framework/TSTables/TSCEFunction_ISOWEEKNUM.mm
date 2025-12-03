@interface TSCEFunction_ISOWEEKNUM
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISOWEEKNUM

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v29 = 0;
  v9 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v29);
  v14 = v29;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v10, v14, v12, v13);
LABEL_5:
    v19 = v15;
    goto LABEL_6;
  }

  if (v9)
  {
    objc_msgSend_isoWeekNumberForDate_(TSCECalendar, v10, v9, v12, v13);
    TSUDecimal::operator=();
    v15 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v16, &v28, v17, v18);
    goto LABEL_5;
  }

  v21 = objc_msgSend_functionName(spec, v10, v11, v12, v13);
  v24 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v22, v21, 1, v23);
  v19 = objc_msgSend_raiseErrorOrConvert_(context, v25, v24, v26, v27);

LABEL_6:

  return v19;
}

@end