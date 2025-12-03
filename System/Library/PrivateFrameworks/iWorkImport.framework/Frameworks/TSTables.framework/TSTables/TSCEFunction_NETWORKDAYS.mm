@interface TSCEFunction_NETWORKDAYS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NETWORKDAYS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v160[0] = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v160);
  v11 = v160[0];
  if (v11)
  {
    v16 = v11;
    context = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14, v15);
    goto LABEL_38;
  }

  p_cache = TSCEFunction_XMATCH.cache;
  v18 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14, v15);
  v148 = objc_msgSend_clearOffTime_(v18, v19, v10, v20, v21);

  v22 = *(*arguments + 8);
  v159 = 0;
  v147 = v22;
  v150 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 1, &v159);
  v16 = v159;
  if (!v16)
  {
    v27 = objc_msgSend_clearOffTime_(v18, v24, v150, v25, v26);

    v28 = v148;
    v146 = v8;
    v32 = objc_msgSend_compare_(v148, v29, v27, v30, v31);
    if (v32 == 1)
    {
      v37 = v148;
    }

    else
    {
      v37 = v27;
    }

    v150 = v37;
    if (v32 == 1)
    {
      v28 = v27;
    }

    v148 = v28;
    if (*(arguments + 1) - *arguments <= 0x10uLL)
    {
      v149 = 0;
      v16 = 0;
    }

    else
    {
      v38 = *(*arguments + 16);
      if ((objc_msgSend_isTokenOrEmptyArg(v38, v39, v40, v41, v42) & 1) != 0 || objc_msgSend_deepType_(v38, v43, context, v44, v45) == 10)
      {
        v149 = 0;
        v16 = 0;
      }

      else
      {
        v158 = 0;
        v61 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v38, v46, context, spec, 2, 1, &v158);
        v97 = v158;
        if (v97)
        {
          v16 = v97;
          context = objc_msgSend_raiseErrorOrConvert_(context, v98, v97, v100, v101);
          v149 = 0;
LABEL_35:

LABEL_36:
          v8 = v146;
          goto LABEL_37;
        }

        v102 = objc_msgSend_count(v61, v98, v99, v100, v101);
        v149 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v103, v102, v104, v105);
        contextCopy = context;
        v145 = v102;
        v152[0] = contextCopy;
        v152[1] = spec;
        v153 = 0;
        v154[0] = 2;
        *(v154 + 7) = 0;
        v155 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v156 = 0;
        v157 = 0;
        if (v102)
        {
          context = 0;
          v109 = 1;
          do
          {
            v110 = objc_msgSend_valueAtIndex_accessContext_(v61, v106, context, v152, v108);
            if ((objc_msgSend_isNil(v110, v111, v112, v113, v114) & 1) == 0)
            {
              v151 = 0;
              v116 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v110, v115, contextCopy, spec, 2, &v151);
              v16 = v151;
              if (v16)
              {
                context = objc_msgSend_raiseErrorOrConvert_(contextCopy, v117, v16, v118, v119);

                goto LABEL_59;
              }

              v120 = objc_msgSend_clearOffTime_(v18, v117, v116, v118, v119);

              if (v120)
              {
                objc_msgSend_addObject_(v149, v121, v120, v122, v123);
              }
            }

            context = context + 1;
            v109 = context < v145;
          }

          while (v145 != context);
        }

        objc_msgSend_sortUsingSelector_(v149, v106, sel_compare_, v107, v108);
        v131 = objc_msgSend_count(v149, v124, v125, v126, v127);
        if (v131 >= 2)
        {
          v132 = 0;
          v133 = 1;
          do
          {
            context = objc_msgSend_objectAtIndex_(v149, v128, v132, v129, v130);
            v137 = objc_msgSend_objectAtIndex_(v149, v134, v133, v135, v136);
            if (objc_msgSend_isEqualToDate_(context, v138, v137, v139, v140))
            {
              objc_msgSend_removeObjectAtIndex_(v149, v141, v132, v142, v143);
              --v131;
            }

            else
            {
              v132 = v133;
            }

            v133 = v132 + 1;
          }

          while (v132 + 1 < v131);
        }

        v109 = 0;
        v16 = 0;
LABEL_59:

        p_cache = (TSCEFunction_XMATCH + 16);
        if (v109)
        {
          goto LABEL_36;
        }
      }
    }

    v47 = objc_msgSend_gregorianCalendar(p_cache + 233, v33, v34, v35, v36);
    v38 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v48 = v148;
    Weekday = objc_msgSend_extractWeekday_(v47, v49, v48, v50, v51);
    v59 = objc_msgSend_extractWeekday_(v47, v53, v150, v54, v55);
    v60 = 0.0;
    v61 = v48;
    while (Weekday != v59)
    {
      v62 = v60 + 1.0;
      if (Weekday == 7)
      {
        v62 = v60;
      }

      if (Weekday != 1)
      {
        v60 = v62;
      }

      objc_msgSend_setDay_(v38, v56, 1, v57, v58);
      v64 = objc_msgSend_dateByAddingComponents_toDate_options_(v47, v63, v38, v61, 0);

      v61 = v64;
      Weekday = objc_msgSend_extractWeekday_(v47, v65, v64, v66, v67);
    }

    if (v59 != 1 && v59 != 7)
    {
      v60 = v60 + 1.0;
    }

    objc_msgSend_timeIntervalSinceDate_(v150, v56, v61, v57, v58);
    v69 = v68;
    v77 = objc_msgSend_count(v149, v70, v71, v72, v73);
    v78 = v60 + v69 / 60.0 / 60.0 / 24.0 / 7.0 * 5.0;
    if (v77)
    {
      for (i = 0; i != v77; ++i)
      {
        v80 = objc_msgSend_objectAtIndex_(v149, v74, i, v75, v76);
        v84 = objc_msgSend_extractWeekday_(v47, v81, v80, v82, v83);
        v88 = objc_msgSend_compare_(v80, v85, v48, v86, v87);
        v92 = objc_msgSend_compare_(v80, v89, v150, v90, v91);
        if (v88 <= 1 && (v92 + 1) <= 1 && v84 != 1 && v84 != 7)
        {
          v78 = v78 + -1.0;
        }
      }
    }

    v93 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    context = objc_msgSend_initWithDecimal_baseUnit_(v93, v94, v152, 3, v95);
    goto LABEL_35;
  }

  context = objc_msgSend_raiseErrorOrConvert_(context, v24, v16, v25, v26);
LABEL_37:

  v10 = v148;
LABEL_38:

  return context;
}

@end