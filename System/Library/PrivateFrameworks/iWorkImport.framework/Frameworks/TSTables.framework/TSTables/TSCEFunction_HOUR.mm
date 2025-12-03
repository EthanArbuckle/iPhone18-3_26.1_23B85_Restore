@interface TSCEFunction_HOUR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_HOUR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v26 = 0;
  v9 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v26);
  v14 = v26;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v10, v14, v12, v13);
  }

  else
  {
    v16 = objc_msgSend_gregorianCalendar(TSCECalendar, v10, v11, v12, v13);
    objc_msgSend_extractHour_(v16, v17, v9, v18, v19);
    TSUDecimal::operator=();
    v15 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v20, &v25, v21, v22);
  }

  v23 = v15;

  return v23;
}

@end