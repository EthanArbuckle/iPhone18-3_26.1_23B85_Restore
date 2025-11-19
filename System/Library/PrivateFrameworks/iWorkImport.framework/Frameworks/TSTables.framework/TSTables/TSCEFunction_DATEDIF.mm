@interface TSCEFunction_DATEDIF
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_DATEDIF

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v148[0] = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, v148);
  v11 = v148[0];
  if (v11)
  {
    v16 = v11;
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v14, v15);
    goto LABEL_32;
  }

  v18 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14, v15);
  v22 = objc_msgSend_clearOffTime_(v18, v19, v10, v20, v21);
  v23 = *(*a5 + 8);
  v147 = 0;
  v25 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v23, v24, a3, a4, 1, &v147);
  v26 = v147;
  if (!v26)
  {
    v137 = objc_msgSend_clearOffTime_(v18, v27, v25, v28, v29);
    v30 = *(*a5 + 16);
    v146 = 0;
    v135 = v30;
    v136 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v30, v31, a3, a4, 2, &v146);
    v16 = v146;
    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v32, v16, v33, v34);
LABEL_30:

      goto LABEL_31;
    }

    if (objc_msgSend_compare_(v22, v32, v137, v33, v34) == 1)
    {
      v134 = objc_msgSend_functionName(a4, v35, v36, v37, v38);
      v40 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v39, v134, 1, 2, 1, 1);
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v41, v40, v42, v43);
LABEL_9:

LABEL_29:
      goto LABEL_30;
    }

    v44 = objc_msgSend_components_fromDate_toDate_options_(v18, v35, 12, v22, v137, 0);
    v133 = objc_msgSend_year(v44, v45, v46, v47, v48);
    v134 = v44;
    v132 = objc_msgSend_month(v44, v49, v50, v51, v52);
    if (!objc_msgSend_caseInsensitiveCompare_(v136, v53, @"Y", v54, v55) || !objc_msgSend_caseInsensitiveCompare_(v136, v56, @"M", v57, v58))
    {
      TSUDecimal::operator=();
      v84 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v81, &v139, v82, v83);
      goto LABEL_18;
    }

    if (!objc_msgSend_caseInsensitiveCompare_(v136, v59, @"D", v60, v61))
    {
      v85 = objc_msgSend_components_fromDate_toDate_options_(v18, v62, 16, v22, v137, 0);

      objc_msgSend_day(v85, v86, v87, v88, v89);
      TSUDecimal::operator=();
      v17 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v90, &v139, v91, v92);
LABEL_27:
      v134 = v85;
      goto LABEL_28;
    }

    if (objc_msgSend_caseInsensitiveCompare_(v136, v62, @"MD", v63, v64))
    {
      if (objc_msgSend_caseInsensitiveCompare_(v136, v65, @"YM", v66, v67))
      {
        if (objc_msgSend_caseInsensitiveCompare_(v136, v68, @"YD", v69, v70))
        {
          v40 = objc_msgSend_functionName(a4, v71, v72, v73, v74);
          v77 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v75, v40, 3, v76);
          v17 = objc_msgSend_raiseErrorOrConvert_(a3, v78, v77, v79, v80);

          goto LABEL_9;
        }

        v144 = 0;
        v145 = 0;
        v142 = 0;
        v143 = 0;
        v140 = 0;
        v141 = 0;
        objc_msgSend_extractComponentsFromDate_year_month_day_(v18, v71, v22, &v145, &v144, &v143);
        objc_msgSend_extractComponentsFromDate_year_month_day_(v18, v117, v137, &v142, &v141, &v140);
        if (v144 > v141 || (v119 = 2005, v144 == v141) && v143 > v140)
        {
          v119 = 2006;
        }

        v120 = objc_msgSend_dateWithYear_month_day_(v18, v118, v119, v141, v140);
        v122 = objc_msgSend_dateWithYear_month_day_(v18, v121, 2005, v144, v143);
        v124 = objc_msgSend_components_fromDate_toDate_options_(v18, v123, 16, v122, v120, 0);

        objc_msgSend_day(v124, v125, v126, v127, v128);
        TSUDecimal::operator=();
        v17 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v129, &v139, v130, v131);

        v134 = v124;
LABEL_28:
        v138._tskFormat = 0;
        v138._formatType = 0;
        v138._formatState = 0;
        *&v138._durationFormat = 1057;
        *(&v138._durationFormat + 2) = 1;
        *&v138._baseFormat.base = -50266102;
        v138._numberFormat = 253;
        TSCEFormat::TSCEFormat(&v139, &v138);
        objc_msgSend_setFormat_(v17, v113, &v139, v114, v115);
        goto LABEL_29;
      }

      fmod(v132 + v133 * 12.0, 12.0);
      TSUDecimal::operator=();
      v84 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v101, &v139, v102, v103);
LABEL_18:
      v17 = v84;
      goto LABEL_28;
    }

    v144 = 0;
    v145 = 0;
    v143 = 0;
    objc_msgSend_extractComponentsFromDate_year_month_day_(v18, v65, v137, &v144, &v145, &v143);
    Day = objc_msgSend_extractDay_(v18, v93, v22, v94, v95);
    if (Day <= v143)
    {
      v98 = v144;
      v100 = v145;
    }

    else
    {
      v98 = v144;
      v99 = v145;
      v100 = --v145;
      if (v99 == 1)
      {
        --v144;
        v145 = 12;
        objc_msgSend_dateWithYear_month_day_(v18, v96, v98 - 1, 12, Day);
        v104 = LABEL_26:;
        v85 = objc_msgSend_components_fromDate_toDate_options_(v18, v105, 16, v104, v137, 0);

        objc_msgSend_day(v85, v106, v107, v108, v109);
        TSUDecimal::operator=();
        v17 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v110, &v139, v111, v112);

        goto LABEL_27;
      }
    }

    objc_msgSend_dateWithYear_month_day_(v18, v96, v98, v100, Day);
    goto LABEL_26;
  }

  v16 = v26;
  v17 = objc_msgSend_raiseErrorOrConvert_(a3, v27, v26, v28, v29);
LABEL_31:

LABEL_32:

  return v17;
}

@end