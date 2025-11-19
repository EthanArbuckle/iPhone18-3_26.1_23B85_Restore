@interface TSCEFunction_DATE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_DATE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v110 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v110);
  v11 = v110;
  if (v11)
  {
    v16 = v11;
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v14, v15);
  }

  else
  {
    v104._tskFormat = objc_msgSend_decimalRepresentation(v10, v12, v13, v14, v15);
    *&v104._formatType = v18;
    TSUDecimal::doubleValue(&v104);
    if (v23 < -2147483650.0 || v23 > 2147483650.0)
    {
      v24 = objc_msgSend_functionName(a4, v19, v20, v21, v22);
      v26 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v32, 1, v24, 1, 1, -2147483650.0, 2147483650.0);
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v33, v26, v34, v35);
      v16 = 0;
    }

    else
    {
      v24 = *(*a5 + 8);
      v109 = 0;
      v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v25, a3, a4, 1, &v109);
      v27 = v109;
      if (v27)
      {
        v16 = v27;
        v17 = objc_msgSend_raiseErrorOrConvert_(a3, v28, v27, v30, v31);
      }

      else
      {
        v104._tskFormat = objc_msgSend_decimalRepresentation(v26, v28, v29, v30, v31);
        *&v104._formatType = v36;
        TSUDecimal::doubleValue(&v104);
        if (v41 < -2147483650.0 || v41 > 2147483650.0)
        {
          v42 = objc_msgSend_functionName(a4, v37, v38, v39, v40);
          v44 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v49, 2, v42, 1, 1, -2147483650.0, 2147483650.0);
          v17 = objc_msgSend_raiseErrorOrConvert_(a3, v50, v44, v51, v52);
          v16 = 0;
        }

        else
        {
          v42 = *(*a5 + 16);
          v108 = 0;
          v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v42, v43, a3, a4, 2, &v108);
          v16 = v108;
          if (v16)
          {
            v17 = objc_msgSend_raiseErrorOrConvert_(a3, v45, v16, v47, v48);
          }

          else
          {
            v104._tskFormat = objc_msgSend_decimalRepresentation(v44, v45, v46, v47, v48);
            *&v104._formatType = v53;
            TSUDecimal::doubleValue(&v104);
            if (v58 < -2147483650.0 || v58 > 2147483650.0)
            {
              v79 = objc_msgSend_functionName(a4, v54, v55, v56, v57);
              v90 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v94, 3, v79, 1, 1, -2147483650.0, 2147483650.0);
              v93 = objc_msgSend_raiseErrorOrConvert_(a3, v95, v90, v96, v97);
            }

            else
            {
              v59 = objc_msgSend_integer(v10, v54, v55, v56, v57);
              v60 = v59;
              v107 = v59;
              v65 = objc_msgSend_integer(v26, v61, v62, v63, v64);
              v103 = v60;
              v66 = v65;
              v106 = v65;
              v71 = objc_msgSend_integer(v44, v67, v68, v69, v70);
              v76 = v71;
              v105 = v71;
              if ((v66 - 13) <= 0xFFFFFFFFFFFFFFF3)
              {
                objc_msgSend_reportMonthOutOfRangeWarningInContext_(TSCEWarning, v72, a3, v74, v75);
              }

              if ((v76 - 32) <= 0xFFFFFFFFFFFFFFE0)
              {
                objc_msgSend_reportDayOutOfRangeWarningInContext_(TSCEWarning, v72, a3, v74, v75);
              }

              v77 = objc_msgSend_gregorianCalendar(TSCECalendar, v72, v73, v74, v75, v66);
              v79 = objc_msgSend_dateWithYear_month_day_(v77, v78, v103, v102, v76);
              objc_msgSend_extractComponentsFromDate_year_month_day_(v77, v80, v79, &v107, &v106, &v105);
              if (v107 < 0 || v106 < 0 || v105 < 0)
              {
                v90 = objc_msgSend_invalidDateError(TSCEError, v81, v82, v83, v84);
                v93 = objc_msgSend_raiseErrorOrConvert_(a3, v98, v90, v99, v100);
              }

              else
              {
                v85 = MEMORY[0x277D80658];
                v86 = objc_msgSend_locale(a3, v81, v82, v83, v84);
                v90 = objc_msgSend_defaultDateOnlyShortFormatForLocale_(v85, v87, v86, v88, v89);

                TSCEFormat::TSCEFormat(&v104, v90, 0);
                v93 = objc_msgSend_dateValue_format_(TSCEDateValue, v91, v79, &v104, v92);
              }
            }

            v17 = v93;
          }
        }
      }
    }
  }

  return v17;
}

@end