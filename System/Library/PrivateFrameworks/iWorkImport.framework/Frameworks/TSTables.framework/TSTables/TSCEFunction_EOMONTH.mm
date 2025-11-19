@interface TSCEFunction_EOMONTH
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_EOMONTH

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v79 = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v79);
  v15 = v79;
  if (!v15)
  {
    if (!v10)
    {
      v34 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v11, v8, a3, a4, 0);
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v35, v34, v36, v37);
      goto LABEL_18;
    }

    v17 = objc_msgSend_gregorianCalendar(TSCECalendar, v11, v12, v13, v14);
    v21 = objc_msgSend_clearOffTime_(v17, v18, v10, v19, v20);

    v22 = *(*a5 + 8);
    v78 = 0;
    v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, a3, a4, 1, &v78);
    v15 = v78;
    v29 = objc_msgSend_trunc(v24, v25, v26, v27, v28);

    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v30, v15, v32, v33);
LABEL_16:

      v10 = v21;
      goto LABEL_17;
    }

    v74._tskFormat = objc_msgSend_decimalRepresentation(v29, v30, v31, v32, v33);
    *&v74._formatType = v38;
    TSUDecimal::doubleValue(&v74);
    v44 = v43;
    if (fabs(v43) > 1200000.0)
    {
      v45 = objc_msgSend_functionName(a4, v39, v40, v41, v42);
      v47 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v46, 2, v45, 1, 1, -1200000.0, 1200000.0);
      v51 = objc_msgSend_raiseErrorOrConvert_(a3, v48, v47, v49, v50);
LABEL_15:
      v16 = v51;

      goto LABEL_16;
    }

    v45 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    objc_msgSend_setMonth_(v45, v52, v44, v53, v54);
    v56 = objc_msgSend_dateByAddingComponents_toDate_options_(v17, v55, v45, v21, 0);

    v76 = 0;
    v77 = 0;
    v75 = 0;
    objc_msgSend_extractComponentsFromDate_year_month_day_(v17, v57, v56, &v77, &v76, &v75);
    v75 = 0;
    if (v76 <= 0xC)
    {
      if (((1 << v76) & 0x15AA) != 0)
      {
        v61 = 31;
LABEL_14:
        v75 = v61;
        v21 = objc_msgSend_dateWithYear_month_day_(v17, v58, v77, v76, v61);

        v62 = MEMORY[0x277D80658];
        v67 = objc_msgSend_locale(a3, v63, v64, v65, v66);
        v47 = objc_msgSend_defaultDateOnlyShortFormatForLocale_(v62, v68, v67, v69, v70);

        TSCEFormat::TSCEFormat(&v74, v47, 0);
        v51 = objc_msgSend_dateValue_format_(TSCEDateValue, v71, v21, &v74, v72);
        goto LABEL_15;
      }

      if (((1 << v76) & 0xA50) != 0)
      {
        v61 = 30;
        goto LABEL_14;
      }
    }

    if (objc_msgSend_isLeapYear_(TSCECalendar, v58, v77, v59, v60))
    {
      v61 = 29;
    }

    else
    {
      v61 = 28;
    }

    goto LABEL_14;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v15, v13, v14);
LABEL_17:

  v34 = v15;
LABEL_18:

  return v16;
}

@end