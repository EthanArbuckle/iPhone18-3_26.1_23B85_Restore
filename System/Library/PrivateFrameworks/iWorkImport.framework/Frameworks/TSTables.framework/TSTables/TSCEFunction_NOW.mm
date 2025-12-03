@interface TSCEFunction_NOW
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NOW

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v6 = *(arguments + 1) - *arguments;
  if ((v6 >> 3) < 1)
  {
    v15 = objc_msgSend_calcEngine(context, a2, context, spec, arguments);
    v7 = objc_msgSend_currentDate(v15, v16, v17, v18, v19);

    v24 = objc_msgSend_calcEngine(context, v20, v21, v22, v23);
    v10 = objc_msgSend_currentTimeZoneCalendar(v24, v25, v26, v27, v28);

    v32 = objc_msgSend_dateWithIdenticalComponentsInGMTForDate_(v10, v29, v7, v30, v31);
    v33 = objc_alloc(MEMORY[0x277D80658]);
    v38 = objc_msgSend_locale(context, v34, v35, v36, v37);
    v39 = TSUDefaultDateTimeFormat();
    v43 = objc_msgSend_initWithFormatString_(v33, v40, v39, v41, v42);

    TSCEFormat::TSCEFormat(&v47, v43, 0);
    v14 = objc_msgSend_dateValue_format_(TSCEDateValue, v44, v32, &v47, v45);
  }

  else
  {
    v7 = objc_msgSend_functionName(spec, a2, context, spec, arguments);
    v10 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v8, v7, (v6 >> 3) & 0x7FFFFFFF, v9);
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12, v13);
  }

  return v14;
}

@end