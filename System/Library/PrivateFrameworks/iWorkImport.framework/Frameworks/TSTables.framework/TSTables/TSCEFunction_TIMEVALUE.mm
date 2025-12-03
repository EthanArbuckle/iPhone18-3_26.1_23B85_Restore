@interface TSCEFunction_TIMEVALUE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TIMEVALUE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v11 = objc_msgSend_deepType_(v7, v8, context, v9, v10);
  if (v11 == 5 || v11 == 0)
  {
    v29 = objc_msgSend_functionName(spec, v12, v13, v14, v15);
    v60 = 0;
    v19 = objc_msgSend_asString_outError_(v7, v17, context, &v60, v18);
    v20 = v60;
    v23 = objc_msgSend_stringDoesNotRepresentDateErrorForFunctionName_string_(TSCEError, v21, v29, v19, v22);
    v27 = objc_msgSend_raiseErrorOrConvert_(context, v24, v23, v25, v26);

LABEL_7:
    goto LABEL_8;
  }

  v59 = 0;
  v29 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v7, v12, context, spec, 0, &v59);
  v30 = v59;
  if (v30)
  {
    v35 = v30;
    if (objc_msgSend_errorType(v30, v31, v32, v33, v34) == 8)
    {
      v19 = objc_msgSend_functionName(spec, v36, v37, v38, v39);
      v58 = v35;
      v42 = objc_msgSend_asString_outError_(v7, v40, context, &v58, v41);
      v20 = v58;

      v45 = objc_msgSend_stringDoesNotRepresentDateErrorForFunctionName_string_(TSCEError, v43, v19, v42, v44);
      v27 = objc_msgSend_raiseErrorOrConvert_(context, v46, v45, v47, v48);

      goto LABEL_7;
    }

    v27 = objc_msgSend_raiseErrorOrConvert_(context, v36, v35, v38, v39);
    v20 = v35;
  }

  else
  {
    v49 = objc_msgSend_gregorianCalendar(TSCECalendar, v31, v32, v33, v34);
    v56 = 0;
    v57 = 0;
    v55 = 0;
    objc_msgSend_extractComponentsFromDate_year_month_day_hour_minute_second_(v49, v50, v29, 0, 0, 0, &v57, &v56, &v55);
    TSUDecimal::operator=();
    v27 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v51, v54, v52, v53);
    v20 = 0;
  }

LABEL_8:

  return v27;
}

@end