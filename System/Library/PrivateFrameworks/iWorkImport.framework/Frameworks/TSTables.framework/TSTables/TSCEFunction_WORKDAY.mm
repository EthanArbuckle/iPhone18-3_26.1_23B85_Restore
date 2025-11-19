@interface TSCEFunction_WORKDAY
+ (id)dateByAddingNumberOfDaysExcludingWeekends:(id)a3 numDays:(int)a4 components:(id)a5;
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_WORKDAY

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v171[0] = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, v171);
  v11 = v171[0];
  if (v11)
  {
    v16 = v11;
    a4 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v14, v15);
    v17 = v10;
    goto LABEL_41;
  }

  v18 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14, v15);
  v17 = objc_msgSend_clearOffTime_(v18, v19, v10, v20, v21);

  v22 = *(*a5 + 8);
  v170 = 0;
  v160 = v22;
  v161 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, a3, a4, 1, &v170);
  v24 = v170;
  if (!v24)
  {
    if (objc_msgSend_hasUnits(v161, v25, v26, v27, v28))
    {
      v33 = objc_msgSend_dimension(v161, v29, v30, v31, v32);
      v38 = 0.0;
      if (!v33)
      {
        objc_msgSend_rawTimeIntervalValue(v161, v34, v35, v36, v37, 0.0);
        v38 = v39 / 60.0 / 60.0 / 24.0;
      }
    }

    else
    {
      v163._decimal.w[0] = objc_msgSend_decimalRepresentation(v161, v29, v30, v31, v32);
      v163._decimal.w[1] = v40;
      TSUDecimal::doubleValue(&v163);
    }

    v41 = floor(v38);
    if (fabs(v41) > 439200000.0)
    {
      v42 = objc_msgSend_functionName(a4, v34, v35, v36, v37);
      v44 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v43, 2, v42, 1, 1, -439200000.0, 439200000.0);
      a4 = objc_msgSend_raiseErrorOrConvert_(a3, v45, v44, v46, v47);
      v16 = 0;
      v48 = v44;
LABEL_39:

      goto LABEL_40;
    }

    if (*(a5 + 1) - *a5 < 0x11uLL)
    {
      v42 = 0;
      v16 = 0;
    }

    else
    {
      v159 = *(*a5 + 16);
      if ((objc_msgSend_isTokenOrEmptyArg(v159, v49, v50, v51, v52) & 1) != 0 || objc_msgSend_deepType_(v159, v53, a3, v54, v55) == 10)
      {
        v42 = 0;
        v16 = 0;
        v48 = v159;
      }

      else
      {
        v169 = 0;
        v97 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v159, v56, a3, a4, 2, 1, &v169);
        v107 = v169;
        if (v107)
        {
          v16 = v107;
          a4 = objc_msgSend_raiseErrorOrConvert_(a3, v108, v107, v110, v111);
          v42 = 0;
LABEL_38:

          v48 = v159;
          goto LABEL_39;
        }

        v155 = v97;
        v112 = objc_msgSend_count(v97, v108, v109, v110, v111);
        v42 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v113, v112, v114, v115);
        v154 = a3;
        v163._decimal.w[0] = v154;
        v163._decimal.w[1] = a4;
        v164 = 0;
        v165[0] = 2;
        *(v165 + 7) = 0;
        v166 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v167 = 0;
        v168 = 0;
        v157 = v112;
        if (v112)
        {
          v119 = 0;
          v120 = 1;
          do
          {
            v158 = objc_msgSend_valueAtIndex_accessContext_(v155, v116, v119, &v163, v118, v154);
            if ((objc_msgSend_isNil(v158, v121, v122, v123, v124) & 1) == 0)
            {
              v162 = 0;
              v126 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v158, v125, v154, a4, 2, &v162);
              v16 = v162;
              if (v16)
              {
                a4 = objc_msgSend_raiseErrorOrConvert_(v154, v127, v16, v128, v129);

                goto LABEL_62;
              }

              v130 = objc_msgSend_clearOffTime_(v18, v127, v126, v128, v129);

              if (v130)
              {
                objc_msgSend_addObject_(v42, v131, v130, v132, v133);
              }
            }

            v120 = ++v119 < v157;
          }

          while (v157 != v119);
        }

        objc_msgSend_sortUsingSelector_(v42, v116, sel_compare_, v117, v118, v154);
        v141 = objc_msgSend_count(v42, v134, v135, v136, v137);
        if (v141 >= 2)
        {
          a4 = 0;
          v142 = 1;
          do
          {
            v143 = objc_msgSend_objectAtIndex_(v42, v138, a4, v139, v140);
            v147 = objc_msgSend_objectAtIndex_(v42, v144, v142, v145, v146);
            if (objc_msgSend_isEqualToDate_(v143, v148, v147, v149, v150))
            {
              objc_msgSend_removeObjectAtIndex_(v42, v151, a4, v152, v153);
              --v141;
            }

            else
            {
              a4 = v142;
            }

            v142 = a4 + 1;
          }

          while (a4 + 1 < v141);
        }

        v120 = 0;
        v16 = 0;
LABEL_62:

        v48 = v159;
        if (v120)
        {
          goto LABEL_39;
        }
      }
    }

    v159 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v58 = objc_msgSend_dateByAddingNumberOfDaysExcludingWeekends_numDays_components_(TSCEFunction_WORKDAY, v57, v17, v41, v159);
    v63 = objc_msgSend_count(v42, v59, v60, v61, v62);
    v68 = v63;
    if (v41 <= 0.0)
    {
      if (v41 < 0.0 && ((v63 - 1) & 0x8000000000000000) == 0)
      {
        do
        {
          v83 = objc_msgSend_objectAtIndex_(v42, v64, --v68, v66, v67);
          Weekday = objc_msgSend_extractWeekday_(v18, v84, v83, v85, v86);
          v91 = Weekday == 1 || Weekday == 7;
          if (!v91 && objc_msgSend_compare_(v83, v88, v17, v89, v90) == -1 && objc_msgSend_compare_(v83, v92, v58, v93, v94) <= 1)
          {
            v96 = v58;
            v58 = objc_msgSend_dateByAddingNumberOfDaysExcludingWeekends_numDays_components_(TSCEFunction_WORKDAY, v95, v58, 0xFFFFFFFFLL, v159);
          }
        }

        while (v68 > 0);
      }
    }

    else if (v63)
    {
      v69 = 0;
      v156 = v42;
      do
      {
        v70 = objc_msgSend_objectAtIndex_(v42, v64, v69, v66, v67);
        v74 = objc_msgSend_extractWeekday_(v18, v71, v70, v72, v73);
        if (v74 != 1 && v74 != 7 && objc_msgSend_compare_(v70, v75, v17, v76, v77) == 1 && (objc_msgSend_compare_(v70, v78, v58, v79, v80) + 1) <= 1)
        {
          v82 = v58;
          v58 = objc_msgSend_dateByAddingNumberOfDaysExcludingWeekends_numDays_components_(TSCEFunction_WORKDAY, v81, v58, 1, v159);

          v42 = v156;
        }

        ++v69;
      }

      while (v68 != v69);
    }

    v97 = v58;
    v98 = MEMORY[0x277D80658];
    v99 = objc_msgSend_locale(a3, v64, v65, v66, v67);
    v103 = objc_msgSend_defaultDateOnlyShortFormatForLocale_(v98, v100, v99, v101, v102);

    TSCEFormat::TSCEFormat(&v163, v103, 0);
    a4 = objc_msgSend_dateValue_format_(TSCEDateValue, v104, v97, &v163, v105);

    goto LABEL_38;
  }

  v16 = v24;
  a4 = objc_msgSend_raiseErrorOrConvert_(a3, v25, v24, v27, v28);
LABEL_40:

LABEL_41:

  return a4;
}

+ (id)dateByAddingNumberOfDaysExcludingWeekends:(id)a3 numDays:(int)a4 components:(id)a5
{
  v7 = a3;
  v8 = a5;
  v13 = objc_msgSend_gregorianCalendar(TSCECalendar, v9, v10, v11, v12);
  if (a4 >= 1)
  {
    v14 = fmod(a4, 5.0);
    Weekday = objc_msgSend_extractWeekday_(v13, v15, v7, v16, v17);
    v22 = v14;
    v23 = v14 - a4 / 5u + 8 * (a4 / 5u);
    if (Weekday > 3)
    {
      if (Weekday <= 5)
      {
        v24 = v23 + 2;
        if (Weekday == 4)
        {
          v25 = (v22 - 3) >= 2;
        }

        else
        {
          v25 = (v22 - 2) >= 3;
        }

LABEL_28:
        if (!v25)
        {
          v23 = v24;
        }

        goto LABEL_30;
      }

      if (Weekday == 6)
      {
        v24 = v23 + 2;
        v25 = (v22 - 1) >= 4;
        goto LABEL_28;
      }

      if (Weekday == 7)
      {
        if ((v22 - 1) >= 4)
        {
          v23 = (__PAIR64__(v23, v22) - 1) >> 32;
        }

        else
        {
          v23 = ((__PAIR64__(v23, v22) - 1) >> 32) + 1;
        }

        goto LABEL_30;
      }

      goto LABEL_25;
    }

    switch(Weekday)
    {
      case 1:
        v27 = v23 - 2;
        v28 = v22 == 0;
        break;
      case 2:
LABEL_30:
        objc_msgSend_setDay_(v8, v19, v23, v20, v21);
        v26 = objc_msgSend_dateByAddingComponents_toDate_options_(v13, v53, v8, v7, 0);
        goto LABEL_31;
      case 3:
        v27 = v23 + 2;
        v28 = v22 == 4;
        break;
      default:
LABEL_25:
        v42 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "+[TSCEFunction_WORKDAY dateByAddingNumberOfDaysExcludingWeekends:numDays:components:]", v20, v21);
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateTimeFunctions.mm", v45, v46);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v48, v43, v47, 1577, 0, "Incorrect weekday number in function WORKDAY");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
        goto LABEL_30;
    }

    if (v28)
    {
      v23 = v27;
    }

    goto LABEL_30;
  }

  if ((a4 & 0x80000000) == 0)
  {
    v26 = v7;
    goto LABEL_31;
  }

  v29 = fabs(a4);
  v30 = fmod(v29, 5.0);
  v34 = objc_msgSend_extractWeekday_(v13, v31, v7, v32, v33);
  v38 = v30;
  v39 = v30 - v29 / 5 + 8 * (v29 / 5);
  if (v34 <= 3)
  {
    switch(v34)
    {
      case 1:
        if ((v38 - 1) >= 4)
        {
          v39 = (__PAIR64__(v39, v38) - 1) >> 32;
        }

        else
        {
          v39 = ((__PAIR64__(v39, v38) - 1) >> 32) + 1;
        }

        goto LABEL_52;
      case 2:
        v56 = v39 + 2;
        v57 = (v38 - 1) >= 4;
        goto LABEL_50;
      case 3:
        v56 = v39 + 2;
        v57 = (v38 - 2) >= 3;
        goto LABEL_50;
    }

    goto LABEL_47;
  }

  if (v34 <= 5)
  {
    if (v34 != 4)
    {
      v40 = v39 + 2;
      v41 = v38 == 4;
      goto LABEL_41;
    }

    v56 = v39 + 2;
    v57 = (v38 - 3) >= 2;
LABEL_50:
    if (!v57)
    {
      v39 = v56;
    }

    goto LABEL_52;
  }

  if (v34 != 6)
  {
    if (v34 == 7)
    {
      v40 = v39 - 2;
      v41 = v38 == 0;
LABEL_41:
      if (v41)
      {
        v39 = v40;
      }

      goto LABEL_52;
    }

LABEL_47:
    v58 = MEMORY[0x277D81150];
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "+[TSCEFunction_WORKDAY dateByAddingNumberOfDaysExcludingWeekends:numDays:components:]", v36, v37);
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateTimeFunctions.mm", v61, v62);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v64, v59, v63, 1625, 0, "Incorrect weekday number in function WORKDAY");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
  }

LABEL_52:
  objc_msgSend_setDay_(v8, v35, -v39, v36, v37);
  v26 = objc_msgSend_dateByAddingComponents_toDate_options_(v13, v69, v8, v7, 0);
LABEL_31:
  v54 = v26;

  return v54;
}

@end