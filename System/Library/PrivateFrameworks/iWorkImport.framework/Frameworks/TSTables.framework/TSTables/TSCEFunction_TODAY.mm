@interface TSCEFunction_TODAY
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_TODAY

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v6 = *(a5 + 1) - *a5;
  if ((v6 >> 3) < 1)
  {
    v15 = objc_msgSend_calcEngine(a3, a2, a3, a4, a5);
    v7 = objc_msgSend_currentDate(v15, v16, v17, v18, v19);

    v24 = objc_msgSend_calcEngine(a3, v20, v21, v22, v23);
    v10 = objc_msgSend_currentTimeZoneCalendar(v24, v25, v26, v27, v28);

    v52 = 0;
    v53 = 0;
    v51 = 0;
    objc_msgSend_extractComponentsFromDate_year_month_day_(v10, v29, v7, &v53, &v52, &v51);
    v34 = objc_msgSend_gregorianCalendar(TSCECalendar, v30, v31, v32, v33);
    v36 = objc_msgSend_dateWithYear_month_day_(v34, v35, v53, v52, v51);
    v37 = MEMORY[0x277D80658];
    v42 = objc_msgSend_locale(a3, v38, v39, v40, v41);
    v46 = objc_msgSend_defaultDateOnlyShortFormatForLocale_(v37, v43, v42, v44, v45);

    TSCEFormat::TSCEFormat(&v50, v46, 0);
    v14 = objc_msgSend_dateValue_format_(TSCEDateValue, v47, v36, &v50, v48);
  }

  else
  {
    v7 = objc_msgSend_functionName(a4, a2, a3, a4, a5);
    v10 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v8, v7, (v6 >> 3) & 0x7FFFFFFF, v9);
    v14 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v10, v12, v13);
  }

  return v14;
}

@end