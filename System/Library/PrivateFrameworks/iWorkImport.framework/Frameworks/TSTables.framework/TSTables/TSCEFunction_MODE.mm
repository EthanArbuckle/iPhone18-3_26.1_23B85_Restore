@interface TSCEFunction_MODE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
+ (id)evaluateVector:(id)a3 context:(id)a4 functionSpec:(id)a5 resultFormat:(const TSCEFormat *)a6;
+ (id)modeArrayForArray:(id)a3 context:(id)a4 functionSpec:(id)a5 originalArray:(id *)a6 outError:(id *)a7;
@end

@implementation TSCEFunction_MODE

+ (id)modeArrayForArray:(id)a3 context:(id)a4 functionSpec:(id)a5 originalArray:(id *)a6 outError:(id *)a7
{
  v11 = a3;
  v12 = a4;
  *a6 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v13, v11, v14, v15);
  objc_msgSend_sortUsingSelector_(v11, v16, sel_compare_, v17, v18);
  v27 = objc_msgSend_count(v11, v19, v20, v21, v22);
  if (!v27)
  {
    v37 = objc_msgSend_functionName(a5, v23, v24, v25, v26);
    objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v40, v37, 8, v41);
    *a7 = v42 = 0;
    goto LABEL_25;
  }

  v28 = objc_msgSend_objectAtIndex_(v11, v23, 0, v25, v26);
  v36 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30, v31, v32);
  if (v27 == 1)
  {
    v37 = 0;
LABEL_4:
    objc_msgSend_addObject_(v36, v33, v28, v34, v35);
    LODWORD(v39) = v27;
    goto LABEL_20;
  }

  v58 = v12;
  v43 = 0;
  v44 = 1;
  v45 = 1;
  v39 = 1;
  do
  {
    v37 = objc_msgSend_objectAtIndex_(v11, v33, v44, v34, v35);

    if (objc_msgSend_isEqual_(v37, v46, v28, v47, v48))
    {
      v39 = (v39 + 1);
    }

    else
    {
      if (v39 <= v45)
      {
        if (v45 == v39)
        {
          objc_msgSend_addObject_(v36, v33, v28, v34, v35);
        }

        v39 = v45;
      }

      else
      {
        objc_msgSend_removeAllObjects(v36, v33, v38, v34, v35);
        objc_msgSend_addObject_(v36, v49, v28, v50, v51);
      }

      v45 = v39;
      v52 = v37;

      v39 = 1;
      v28 = v52;
    }

    ++v44;
    v43 = v37;
  }

  while (v27 != v44);
  if (v39 <= v45)
  {
    LODWORD(v27) = v39;
    v56 = v45 == v39;
    LODWORD(v39) = v45;
    v12 = v58;
    if (v56)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = v58;
    objc_msgSend_removeAllObjects(v36, v33, v38, v34, v35);
    objc_msgSend_addObject_(v36, v53, v28, v54, v55);
  }

LABEL_20:
  if (v39 == 1 || !objc_msgSend_count(v36, v33, v38, v34, v35))
  {
    objc_msgSend_noModeError(TSCEError, v33, v38, v34, v35);
    *a7 = v42 = 0;
  }

  else
  {
    v42 = v36;
  }

LABEL_25:

  return v42;
}

+ (id)evaluateVector:(id)a3 context:(id)a4 functionSpec:(id)a5 resultFormat:(const TSCEFormat *)a6
{
  v8 = a3;
  v9 = a4;
  v155 = v8;
  v156 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12, v13, v9);
  v18 = objc_msgSend_zero(TSCENumberValue, v14, v15, v16, v17);
  v23 = objc_msgSend_count(v8, v19, v20, v21, v22);
  v158 = v9;
  v164[0] = v158;
  v164[1] = a5;
  v165 = 0;
  v166[0] = 0;
  *(v166 + 7) = 0;
  v167 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v168 = 0;
  v169 = 0;
  if (v23)
  {
    v157 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v18;
    while (1)
    {
      v29 = objc_msgSend_valueAtIndex_accessContext_(v8, v24, v26, v164, v25);
      if (objc_msgSend_isError(v29, v30, v31, v32, v33))
      {
        v46 = objc_msgSend_errorWithContext_(v29, v34, v158, v36, v37);
        v91 = objc_msgSend_raiseErrorOrConvert_(v158, v92, v46, v93, v94);
        v90 = 0;
        goto LABEL_48;
      }

      if (objc_msgSend_isNil(v29, v34, v35, v36, v37))
      {
        goto LABEL_16;
      }

      v41 = objc_msgSend_deepType_(v29, v38, v158, v39, v40);
      if (v41 == 3)
      {
        break;
      }

      if (v41 != 5)
      {
        v74 = MEMORY[0x277D81150];
        v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "+[TSCEFunction_MODE evaluateVector:context:functionSpec:resultFormat:]", v44, v45);
        v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v77, v78);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v80, v75, v79, 4164, 0, "Have to set the type of vector appropriately.");

        v8 = v155;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
LABEL_16:
        v69 = v27;
LABEL_17:
        v18 = v28;
        goto LABEL_18;
      }

      if (v27)
      {
        goto LABEL_46;
      }

      v163 = 0;
      v46 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v29, v42, v158, a5, 0, &v163);
      v50 = v163;
      if (v50)
      {
        v91 = objc_msgSend_raiseErrorOrConvert_(v158, v47, v50, v48, v49);
        v90 = v50;
        v27 = 0;
        goto LABEL_48;
      }

      if ((v157 & 1) != 0 && (objc_msgSend_dimensionsMatchModuloCurrency_(v28, v47, v46, v48, v49) & 1) == 0)
      {
        v153 = objc_msgSend_functionName(a5, v51, v52, v53, v54);
        v147 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v144, v153, v145, v146);
        v90 = 0;
        v91 = objc_msgSend_raiseErrorOrConvert_(v158, v148, v147, v149, v150);

        v27 = 0;
        goto LABEL_48;
      }

      v55 = v46;

      v56 = MEMORY[0x277CCABB0];
      objc_msgSend_rawDoubleValue(v55, v57, v58, v59, v60);
      v65 = objc_msgSend_numberWithDouble_(v56, v61, v62, v63, v64);
      objc_msgSend_addObject_(v156, v66, v65, v67, v68);

      v18 = v55;
      v69 = 0;
      v157 = 1;
LABEL_18:

      ++v26;
      v28 = v18;
      v27 = v69;
      if (v23 == v26)
      {
        goto LABEL_21;
      }
    }

    v43 = v158;
    if (v157)
    {
LABEL_46:
      v46 = objc_msgSend_functionName(a5, v42, v43, v44, v45);
      v152 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v137, v46, v138, v139);
      v91 = objc_msgSend_raiseErrorOrConvert_(v158, v140, v152, v141, v142);
      v90 = 0;
      goto LABEL_47;
    }

    v162 = 0;
    v69 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v29, v42, v158, a5, 0, &v162);
    v70 = v162;

    if (v70)
    {
      v91 = objc_msgSend_raiseErrorOrConvert_(v158, v71, v70, v72, v73);
      v90 = v70;
      goto LABEL_49;
    }

    objc_msgSend_addObject_(v156, v71, v69, v72, v73);
    v157 = 0;
    goto LABEL_17;
  }

  v69 = 0;
  v157 = 0;
LABEL_21:
  v151 = v18;
  v160 = 0;
  v161 = 0;
  v46 = objc_msgSend_modeArrayForArray_context_functionSpec_originalArray_outError_(TSCEFunction_MODE, v24, v156, v158, a5, &v161, &v160);
  v29 = v161;
  v89 = v160;
  if (!v89)
  {
    v95 = objc_msgSend_count(v46, v85, v86, v87, v88);
    v154 = objc_msgSend_count(v29, v96, v97, v98, v99);
    if (v95 == 1)
    {
      v152 = objc_msgSend_objectAtIndex_(v46, v100, 0, v102, v103);
    }

    else if (v154)
    {
      v104 = 0;
      v152 = 0;
      do
      {
        if (v95)
        {
          v105 = 0;
          while (1)
          {
            v106 = objc_msgSend_objectAtIndex_(v29, v100, v104, v102, v103);
            v110 = objc_msgSend_objectAtIndex_(v46, v107, v105, v108, v109);
            isEqual = objc_msgSend_isEqual_(v106, v111, v110, v112, v113);

            if (isEqual)
            {
              break;
            }

            if (++v105 >= v95)
            {
              goto LABEL_35;
            }
          }

          v116 = objc_msgSend_objectAtIndex_(v46, v100, v105, v102, v103);

          v152 = v116;
LABEL_35:
          v115 = isEqual ^ 1;
          v8 = v155;
        }

        else
        {
          v115 = 1;
        }

        if (!v115)
        {
          break;
        }

        ++v104;
      }

      while (v104 < v154);
    }

    else
    {
      v152 = 0;
    }

    v91 = objc_msgSend_nilValue(TSCENilValue, v100, v101, v102, v103);
    if (v69)
    {
      v121 = objc_msgSend_dateValue_(TSCEDateValue, v117, v152, v119, v120);
      v90 = 0;

      v28 = v151;
      v27 = v69;
      v91 = v121;
    }

    else
    {
      if (v157)
      {
        v90 = 0;
        objc_msgSend_doubleValue(v152, v117, v118, v119, v120);
        TSUDecimal::operator=();
        v125 = objc_msgSend_numberWithDecimal_(v151, v122, v159, v123, v124);

        v28 = v151;
        v27 = 0;
        v91 = v125;
LABEL_47:

        goto LABEL_48;
      }

      v126 = MEMORY[0x277D81150];
      v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "+[TSCEFunction_MODE evaluateVector:context:functionSpec:resultFormat:]", v119, v120);
      v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v129, v130);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v132, v127, v131, 4200, 0, "In function MODE, should not reach here.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v134, v135, v136);
      v90 = 0;
      v28 = v151;
      v27 = 0;
    }

    v8 = v155;
    goto LABEL_47;
  }

  v90 = v89;
  v91 = objc_msgSend_raiseErrorOrConvert_(v158, v85, v89, v87, v88);
  v28 = v18;
  v27 = v69;
LABEL_48:

  v69 = v27;
LABEL_49:

  return v91;
}

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v9 = **a5;
  v10 = **a5;
  v21 = 0;
  v12 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v10, v11, a3, a4, 0, 1, &v21);
  v16 = v21;
  if (v16)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v13, v16, v14, v15);
  }

  else
  {
    if (v9)
    {
      objc_msgSend_formatWithContext_(v9, v13, a3, v14, v15);
    }

    else
    {
      memset(v20, 0, sizeof(v20));
    }

    v17 = objc_msgSend_evaluateVector_context_functionSpec_resultFormat_(a1, v13, v12, a3, a4, v20);
  }

  v18 = v17;

  return v18;
}

@end