@interface TSCEFunction_WEEKDAY
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_WEEKDAY

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v50 = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v50);
  v11 = v50;
  if (v11)
  {
    v16 = v11;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14, v15);
LABEL_3:

    goto LABEL_13;
  }

  v18 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14, v15);
  Weekday = objc_msgSend_extractWeekday_(v18, v19, v10, v20, v21);
  if (*(arguments + 1) - *arguments >= 9uLL)
  {
    v23 = *(*arguments + 8);
    if ((objc_msgSend_isTokenOrEmptyArg(v23, v24, v25, v26, v27) & 1) == 0)
    {
      v49 = 0;
      v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v23, v28, context, spec, 1, &v49);
      v16 = v49;
      v34 = objc_msgSend_trunc(v29, v30, v31, v32, v33);

      if (v16)
      {
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v35, v16, v37, v38);

        goto LABEL_3;
      }

      v43._decimal.w[0] = objc_msgSend_decimalRepresentation(v34, v35, v36, v37, v38);
      v43._decimal.w[1] = v39;
      if (TSUDecimal::truncateWithRounding(&v43) == 2)
      {
        fmod(Weekday + 6.0, 7.0);
      }
    }
  }

  TSUDecimal::operator=();
  v43._decimal.w[0] = 0;
  LODWORD(v43._decimal.w[1]) = 0;
  BYTE4(v43._decimal.w[1]) = 0;
  v44 = 1057;
  v45 = 1;
  v46 = -50266102;
  v47 = 253;
  v17 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v40, v48, &v43, v41);
LABEL_13:

  return v17;
}

@end