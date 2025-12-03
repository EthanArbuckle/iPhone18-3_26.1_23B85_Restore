@interface TSCEFunction_TIME
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TIME

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v119 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v119);
  v11 = v119;
  v16 = objc_msgSend_floor(v10, v12, v13, v14, v15);

  if (v11)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v17, v11, v19, v20);
    goto LABEL_23;
  }

  v116._tskFormat = objc_msgSend_decimalRepresentation(v16, v17, v18, v19, v20);
  *&v116._formatType = v22;
  TSUDecimal::doubleValue(&v116);
  if (v27 < -2147483650.0 || v27 > 2147483650.0)
  {
    v28 = objc_msgSend_functionName(spec, v23, v24, v25, v26);
    v35 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v40, 1, v28, 1, 1, -2147483650.0, 2147483650.0);
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v41, v35, v42, v43);
    v11 = 0;
    goto LABEL_22;
  }

  v28 = *(*arguments + 8);
  v118 = 0;
  v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v28, v29, context, spec, 1, &v118);
  v11 = v118;
  v35 = objc_msgSend_floor(v30, v31, v32, v33, v34);

  if (!v11)
  {
    v116._tskFormat = objc_msgSend_decimalRepresentation(v35, v36, v37, v38, v39);
    *&v116._formatType = v44;
    TSUDecimal::doubleValue(&v116);
    if (v49 < -2147483650.0 || v49 > 2147483650.0)
    {
      v50 = objc_msgSend_functionName(spec, v45, v46, v47, v48);
      v57 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v62, 2, v50, 1, 1, -2147483650.0, 2147483650.0);
      v21 = objc_msgSend_raiseErrorOrConvert_(context, v63, v57, v64, v65);
      v11 = 0;
      goto LABEL_21;
    }

    v50 = *(*arguments + 16);
    v117 = 0;
    v52 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v50, v51, context, spec, 2, &v117);
    v11 = v117;
    v57 = objc_msgSend_floor(v52, v53, v54, v55, v56);

    if (v11)
    {
      v21 = objc_msgSend_raiseErrorOrConvert_(context, v58, v11, v60, v61);
LABEL_21:

      goto LABEL_22;
    }

    v116._tskFormat = objc_msgSend_decimalRepresentation(v57, v58, v59, v60, v61);
    *&v116._formatType = v66;
    TSUDecimal::doubleValue(&v116);
    if (v71 < -2147483650.0 || v71 > 2147483650.0)
    {
      v90 = objc_msgSend_functionName(spec, v67, v68, v69, v70);
      v91 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v96, 3, v90, 1, 1, -2147483650.0, 2147483650.0);
      v95 = objc_msgSend_raiseErrorOrConvert_(context, v97, v91, v98, v99);
    }

    else
    {
      v113 = objc_msgSend_integer(v16, v67, v68, v69, v70);
      v76 = objc_msgSend_integer(v35, v72, v73, v74, v75);
      v81 = objc_msgSend_integer(v57, v77, v78, v79, v80);
      v115 = objc_msgSend_referenceDate1904(TSCECalendar, v82, v83, v84, v85);
      if ((v81 % 60) + ((v81 / 60 + v76) % 60) * 60.0 + (((v81 / 60 + v76) / 60 + v113) % 24) * 3600.0 >= 0.0)
      {
        v91 = objc_msgSend_dateByAddingTimeInterval_(v115, v86, v87, v88, v89);
        v100 = objc_alloc(MEMORY[0x277D80658]);
        v114 = objc_msgSend_locale(context, v101, v102, v103, v104);
        v105 = TSUDefaultTimeOnlyShortFormat();
        v109 = objc_msgSend_initWithFormatString_(v100, v106, v105, v107, v108);

        TSCEFormat::TSCEFormat(&v116, v109, 0);
        v21 = objc_msgSend_dateValue_format_(TSCEDateValue, v110, v91, &v116, v111);

        v90 = v115;
        goto LABEL_20;
      }

      v90 = v115;
      v91 = objc_msgSend_invalidTimeError(TSCEError, v86, v87, v88, v89);
      v95 = objc_msgSend_raiseErrorOrConvert_(context, v92, v91, v93, v94);
    }

    v21 = v95;
LABEL_20:

    goto LABEL_21;
  }

  v21 = objc_msgSend_raiseErrorOrConvert_(context, v36, v11, v38, v39);
LABEL_22:

LABEL_23:

  return v21;
}

@end