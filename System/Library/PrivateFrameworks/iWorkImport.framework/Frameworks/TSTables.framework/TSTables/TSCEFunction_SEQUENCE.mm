@interface TSCEFunction_SEQUENCE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SEQUENCE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = *arguments;
  v8 = *(arguments + 1);
  if (v8 == *arguments)
  {
    v15 = 0;
    v16 = 1;
  }

  else
  {
    v9 = *v7;
    if (objc_msgSend_isTokenOrEmptyArg(v9, v10, v11, v12, v13))
    {
      v15 = 0;
      v16 = 1;
    }

    else
    {
      v167[0] = 0;
      v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v14, context, spec, 0, v167);
      v15 = v167[0];
      v161._tskFormat = objc_msgSend_decimalRepresentation(v17, v18, v19, v20, v21);
      *&v161._formatType = v22;
      v16 = TSUDecimal::truncatedUIntegerValue(&v161);
    }

    v7 = *arguments;
    v8 = *(arguments + 1);
  }

  if ((v8 - v7) < 9)
  {
    v155 = 1;
    if (!v15)
    {
      goto LABEL_14;
    }

LABEL_11:
    v29 = objc_msgSend_raiseErrorOrConvert_(context, a2, v15, spec, arguments);
    goto LABEL_53;
  }

  v23 = v7[1];
  if (objc_msgSend_isTokenOrEmptyArg(v23, v24, v25, v26, v27))
  {
    v155 = 1;
  }

  else
  {
    v166 = v15;
    v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v23, v28, context, spec, 1, &v166);
    v31 = v166;

    v161._tskFormat = objc_msgSend_decimalRepresentation(v30, v32, v33, v34, v35);
    *&v161._formatType = v36;
    v155 = TSUDecimal::truncatedUIntegerValue(&v161);

    v15 = v31;
  }

  if (v15)
  {
    goto LABEL_11;
  }

LABEL_14:
  TSUDecimal::operator=();
  v40 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v37, &v161, v38, v39);
  TSUDecimal::operator=();
  v152 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v41, &v161, v42, v43);
  v48 = 0.0;
  if (*(arguments + 1) - *arguments >= 0x11uLL)
  {
    v49 = *(*arguments + 16);

    if (!objc_msgSend_isTokenOrEmptyArg(v49, v50, v51, v52, v53))
    {
      shouldTreatValueAsDateArgument = TSCEArgumentAccessor::shouldTreatValueAsDateArgument(v49, context, v54, v55, v56);
      if (shouldTreatValueAsDateArgument)
      {
        v165 = 0;
        v128 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v49, v127, context, spec, 2, &v165);
        v15 = v165;
        isDuration = 0;
        v48 = 86400.0;
        v61 = v128;
      }

      else
      {
        v164 = 0;
        v133 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v49, v127, context, spec, 2, &v164);
        v15 = v164;
        isDuration = objc_msgSend_isDuration(v133, v134, v135, v136, v137);

        v61 = 0;
      }

      if (v15)
      {
        v29 = objc_msgSend_raiseErrorOrConvert_(context, v44, v15, v46, v47);
        goto LABEL_52;
      }

      goto LABEL_18;
    }

    TSUDecimal::operator=();
    v40 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v57, &v161, v58, v59);
  }

  shouldTreatValueAsDateArgument = 0;
  isDuration = 0;
  v61 = 0;
  v49 = v40;
LABEL_18:
  if (*(arguments + 1) - *arguments < 0x19uLL)
  {
    isTokenOrEmptyArg = 1;
  }

  else
  {
    v154 = *(*arguments + 24);
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v154, v62, v63, v64, v65);
    if (isTokenOrEmptyArg)
    {
      v68 = v152;
    }

    else
    {
      v163 = 0;
      v68 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v154, v66, context, spec, 3, &v163);
      v15 = v163;

      if (v15)
      {
        v29 = objc_msgSend_raiseErrorOrConvert_(context, v129, v15, v131, v132);
        v152 = v68;
        goto LABEL_51;
      }

      if (shouldTreatValueAsDateArgument)
      {
        if (objc_msgSend_isDuration(v68, v129, v130, v131, v132))
        {
          objc_msgSend_rawTimeIntervalValue(v68, v138, v139, v140, v141);
          v48 = v142;
        }

        else
        {
          objc_msgSend_timeIntervalRepresentation(v68, v138, v139, v140, v141);
          v48 = v149 * 86400.0;
        }
      }
    }

    v152 = v68;
  }

  if ((isDuration & isTokenOrEmptyArg) == 1)
  {
    v69 = objc_msgSend_makeDurationWithWeeks_days_hours_minutes_seconds_milliseconds_(TSCENumberValue, v44, v45, v46, v47, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0);

    v152 = v69;
  }

  v154 = objc_opt_new();
  v70 = v49;
  v49 = v70;
  v73 = v70;
  v151 = v61;
  if (!v16)
  {
LABEL_48:
    v118 = [TSCEDenseGrid alloc];
    v122 = objc_msgSend_initWithValueGrid_(v118, v119, v154, v120, v121);
    v29 = objc_msgSend_gridValue_(TSCEGridValue, v123, v122, v124, v125);

    v15 = 0;
    goto LABEL_50;
  }

  v74 = 0;
  v75 = 0.0;
  v76 = v70;
  v150 = v16;
  while (!v155)
  {
    v73 = v76;
LABEL_47:
    ++v74;
    v76 = v73;
    if (v74 == v150)
    {
      goto LABEL_48;
    }
  }

  v77 = 0;
  while (1)
  {
    v162[0] = v77;
    v162[1] = v74;
    objc_msgSend_setValue_atCoord_(v154, v71, v76, v162, v72);
    if (shouldTreatValueAsDateArgument)
    {
      v75 = v48 + v75;
      v85 = objc_msgSend_dateByAddingTimeInterval_(v61, v78, v79, v80, v81, v75);
      if (v49)
      {
        objc_msgSend_formatWithContext_(v49, v82, context, v83, v84);
      }

      else
      {
        memset(&v161, 0, sizeof(v161));
      }

      v73 = objc_msgSend_dateValue_format_(TSCEDateValue, v82, v85, &v161, v84);

      goto LABEL_44;
    }

    if (*(arguments + 1) - *arguments >= 0x19uLL)
    {
      break;
    }

    v15 = 0;
LABEL_38:
    v159 = v15;
    v108 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v76, v78, context, spec, 2, &v159);
    v109 = v159;

    v158 = v109;
    v73 = objc_msgSend_add_functionSpec_outError_(v108, v110, v152, spec, &v158);
    v15 = v158;

    if (v49)
    {
      v61 = v151;
      objc_msgSend_formatWithContext_(v49, v111, context, v112, v113);
    }

    else
    {
      memset(&v157, 0, sizeof(v157));
      v61 = v151;
    }

    TSCEFormat::TSCEFormat(&v161, &v157);
    objc_msgSend_setFormat_(v73, v114, &v161, v115, v116);
    if (v15)
    {
      v29 = objc_msgSend_raiseErrorOrConvert_(context, v71, v15, v117, v72);
      goto LABEL_50;
    }

LABEL_44:
    ++v77;
    v76 = v73;
    if (v155 == v77)
    {
      goto LABEL_47;
    }
  }

  v160 = 0;
  v86 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v49, v78, context, spec, 2, &v160);
  v15 = v160;
  if (!objc_msgSend_hasUnits(v86, v87, v88, v89, v90) || !objc_msgSend_hasUnits(v152, v91, v92, v93, v94) || (v99 = objc_msgSend_dimension(v86, v95, v96, v97, v98), v99 == objc_msgSend_dimension(v152, v100, v101, v102, v103)))
  {

    goto LABEL_38;
  }

  v143 = objc_msgSend_functionName(spec, v104, v105, v106, v107);
  v145 = objc_msgSend_inconsistantParameterFormatError_argIndex2_functionName_(TSCEError, v144, 3, 4, v143);
  v29 = objc_msgSend_raiseErrorOrConvert_(context, v146, v145, v147, v148);

  v73 = v76;
LABEL_50:

LABEL_51:
LABEL_52:

LABEL_53:

  return v29;
}

@end