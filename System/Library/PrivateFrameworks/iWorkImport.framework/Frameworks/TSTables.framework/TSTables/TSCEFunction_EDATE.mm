@interface TSCEFunction_EDATE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_EDATE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v61 = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v61);
  v11 = v61;
  if (v11)
  {
    v16 = v11;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14, v15);
  }

  else
  {
    v18 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14, v15);
    v22 = objc_msgSend_clearOffTime_(v18, v19, v10, v20, v21);

    v23 = *(*arguments + 8);
    v60 = 0;
    v25 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v23, v24, context, spec, 1, &v60);
    v16 = v60;
    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v26, v16, v28, v29);
    }

    else
    {
      v59._tskFormat = objc_msgSend_decimalRepresentation(v25, v26, v27, v28, v29);
      *&v59._formatType = v30;
      v35 = TSUDecimal::truncateWithRounding(&v59);
      if ((v35 - 1200001) > 0xFFDB60FE)
      {
        v36 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        objc_msgSend_setMonth_(v36, v42, v35, v43, v44);
        v46 = objc_msgSend_dateByAddingComponents_toDate_options_(v18, v45, v36, v22, 0);

        v47 = MEMORY[0x277D80658];
        v52 = objc_msgSend_locale(context, v48, v49, v50, v51);
        v38 = objc_msgSend_defaultDateOnlyShortFormatForLocale_(v47, v53, v52, v54, v55);

        TSCEFormat::TSCEFormat(&v59, v38, 0);
        v17 = objc_msgSend_dateValue_format_(TSCEDateValue, v56, v46, &v59, v57);
        v22 = v46;
      }

      else
      {
        v36 = objc_msgSend_functionName(spec, v31, v32, v33, v34);
        v38 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v37, 2, v36, 1, 1, -1200000.0, 1200000.0);
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v39, v38, v40, v41);
      }
    }

    v10 = v22;
  }

  return v17;
}

@end