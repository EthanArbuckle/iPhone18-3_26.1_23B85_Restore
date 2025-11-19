@interface TSCEFunction_DAYNAME
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_DAYNAME

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v91 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, a3, a4, 0, &v91);
  v10 = v91;
  v15 = objc_msgSend_trunc(v9, v11, v12, v13, v14);

  if (v10)
  {

    v24 = objc_msgSend_gregorianCalendar(TSCECalendar, v20, v21, v22, v23);
    v90 = 0;
    v26 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v7, v25, a3, a4, 0, &v90);
    v30 = v90;
    if (v30)
    {
      v31 = objc_msgSend_raiseErrorOrConvert_(a3, v27, v30, v28, v29);
      goto LABEL_17;
    }

    v45 = objc_msgSend_components_fromDate_(v24, v27, 512, v26, v29);
    v44 = objc_msgSend_weekday(v45, v46, v47, v48, v49) - 1;

    goto LABEL_9;
  }

  isDuration = objc_msgSend_isDuration(v15, v16, v17, v18, v19);
  v85._decimal.w[0] = objc_msgSend_decimalRepresentation(v15, v33, v34, v35, v36);
  v85._decimal.w[1] = v37;
  TSUDecimal::doubleValue(&v85);
  if (v42 < 1.0 || v42 > 7.0)
  {
    if (!isDuration)
    {
      v26 = objc_msgSend_functionName(a4, v38, v39, v40, v41);
      v62 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v80, 1, v26, 1, 1, 1.0, 7.0);
      v74 = objc_msgSend_raiseErrorOrConvert_(a3, v81, v62, v82, v83);
      goto LABEL_16;
    }
  }

  else
  {
    v43 = objc_msgSend_integer(v15, v38, v39, v40, v41);
    if ((isDuration & 1) == 0)
    {
      v44 = v43 - 1;
LABEL_9:
      v50 = objc_msgSend_locale(a3, v38, v39, v40, v41);
      v26 = objc_msgSend_standaloneWeekdaySymbols(v50, v51, v52, v53, v54);

      if (v44 >= objc_msgSend_count(v26, v55, v56, v57, v58) || (objc_msgSend_objectAtIndex_(v26, v59, v44, v60, v61), (v62 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v63 = MEMORY[0x277D81150];
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "+[TSCEFunction_DAYNAME evaluateForArgsWithContext:functionSpec:arguments:]", v60, v61);
        v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateTimeFunctions.mm", v66, v67);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v69, v64, v68, 332, 0, "weekday symbols: %@", v26);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
        v62 = 0;
      }

      v85._decimal.w[0] = 0;
      LODWORD(v85._decimal.w[1]) = 0;
      BYTE4(v85._decimal.w[1]) = 0;
      v86 = 1057;
      v87 = 1;
      v88 = -50266102;
      v89 = 253;
      v74 = objc_msgSend_stringValue_format_(TSCEStringValue, v59, v62, &v85, v61);
      goto LABEL_16;
    }
  }

  v26 = objc_msgSend_functionName(a4, v38, v39, v40, v41);
  v62 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v75, v26, 1, v76);
  v74 = objc_msgSend_raiseErrorOrConvert_(a3, v77, v62, v78, v79);
LABEL_16:
  v31 = v74;

  v30 = 0;
LABEL_17:

  return v31;
}

@end