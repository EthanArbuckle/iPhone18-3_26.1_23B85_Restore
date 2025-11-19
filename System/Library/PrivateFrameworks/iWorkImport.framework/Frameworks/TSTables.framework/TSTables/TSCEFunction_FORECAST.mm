@interface TSCEFunction_FORECAST
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_FORECAST

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v9 = *(*a5 + 16);
  v168 = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, a3, a4, 2, 0, &v168);
  v12 = v168;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v13, v12, v14, v15);
    goto LABEL_10;
  }

  v18 = *(*a5 + 8);
  v167 = 0;
  v153 = v18;
  v154 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v18, v19, a3, a4, 1, 1, &v167);
  v20 = v167;
  if (!v20)
  {
    v150 = **a5;
    v29 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27, v28);
    v34 = objc_msgSend_nilValue(TSCENilValue, v30, v31, v32, v33);
    v165 = v34;
    v166 = v29;
    v16 = objc_msgSend_computeSlope_functionSpec_xs_xArgumentIndex_ys_yArgumentIndex_xAverageResult_yAverageResult_slopeResult_xExamplePtr_yExamplePtr_(a1, v35, a3, a4, v11, 2, v154, 1, v171, &v170, &v169, &v166, &v165);
    v36 = v166;

    v37 = v165;
    v151 = v37;
    v152 = v36;
    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v38, v16, v40, v41);
LABEL_7:
      v24 = v154;
LABEL_8:

      goto LABEL_9;
    }

    if (objc_msgSend_isNil(v36, v38, v39, v40, v41))
    {
      v46 = MEMORY[0x277D81150];
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "+[TSCEFunction_FORECAST evaluateForArgsWithContext:functionSpec:arguments:]", v44, v45);
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v49, v50);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v52, v47, v51, 2215, 0, "Should have at least one x if we're going to successfullly compute FORECAST");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
    }

    TSUDecimal::operator=();
    if (objc_msgSend_deepType_(v36, v57, a3, v58, v59) == 3)
    {
      if (objc_msgSend_deepType_(v150, v60, a3, v61, v62) != 3)
      {
        v77 = objc_msgSend_functionName(a4, v63, v64, v65, v66);
        v81 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v78, v77, v79, v80);
        v17 = objc_msgSend_raiseErrorOrConvert_(a3, v82, v81, v83, v84);

        v16 = 0;
        goto LABEL_7;
      }

      v163 = 0;
      v149 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v150, v63, a3, a4, 0, &v163);
      v70 = v163;
      v24 = v154;
      if (v70)
      {
        v17 = objc_msgSend_raiseErrorOrConvert_(a3, v67, v70, v68, v69);

LABEL_36:
        v16 = v70;
        goto LABEL_8;
      }

      objc_msgSend_mapDateToDouble_(TSCECalendar, v67, v149, v68, v69);
      TSUDecimal::operator=();
LABEL_30:

      *&v156._tskFormat = v164;
      TSUDecimal::operator-=();
      v157[1] = v156._tskFormat;
      v157[2] = *&v156._formatType;
      *&v156._tskFormat = v169;
      TSUDecimal::operator*=();
      tskFormat = v156._tskFormat;
      v159 = *&v156._formatType;
      *&v156._tskFormat = v170;
      TSUDecimal::operator+=();
      v160._decimal.w[0] = v156._tskFormat;
      v160._decimal.w[1] = *&v156._formatType;
      if (objc_msgSend_isNil(v37, v103, v104, v105, v106))
      {
        v110 = MEMORY[0x277D81150];
        v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, "+[TSCEFunction_FORECAST evaluateForArgsWithContext:functionSpec:arguments:]", v108, v109);
        v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v113, v114);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v110, v116, v111, v115, 2246, 0, "Should have at least one x if we're going to successfullly compute FORECAST");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v117, v118, v119, v120);
      }

      if (objc_msgSend_deepType_(v151, v107, a3, v108, v109) == 3)
      {
        TSUDecimal::doubleValue(&v160);
        v17 = objc_msgSend_dateValueWithDays_(TSCEDateValue, v122, v123, v124, v125);
      }

      else
      {
        v157[0] = 0;
        v129 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v151, v121, a3, a4, 1, v157);
        v70 = v157[0];
        if (v70)
        {
          v17 = objc_msgSend_raiseErrorOrConvert_(a3, v130, v70, v132, v133);

          goto LABEL_36;
        }

        if (objc_msgSend_hasUnits(v129, v130, v131, v132, v133) && !objc_msgSend_dimension(v129, v134, v135, v136, v137))
        {
          TSUDecimal::operator=();
          *&v156._tskFormat = v160;
          TSUDecimal::operator*=();
          tskFormat = v156._tskFormat;
          v159 = *&v156._formatType;
          v146 = objc_msgSend_unit(v129, v142, v143, v144, v145);
          v138 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v147, &tskFormat, v146, v148);
        }

        else
        {
          v138 = objc_msgSend_variantWithDecimal_(v129, v134, &v160, v136, v137);
        }

        v17 = v138;
      }

      if (v24)
      {
        objc_msgSend_formatWithContext_(v24, v126, a3, v127, v128);
      }

      else
      {
        memset(&v155, 0, sizeof(v155));
      }

      TSCEFormat::TSCEFormat(&v156, &v155);
      objc_msgSend_setFormat_(v17, v139, &v156, v140, v141);
      v16 = 0;
      goto LABEL_8;
    }

    v162 = 0;
    v149 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v150, v60, a3, a4, 0, &v162);
    v71 = v162;
    v161 = v71;
    v24 = v154;
    v73 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v152, v72, a3, a4, 2, &v161);
    v16 = v161;

    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v74, v16, v75, v76);
    }

    else
    {
      if (objc_msgSend_dimensionsMatchModuloCurrency_(v73, v74, v149, v75, v76))
      {
        if (objc_msgSend_isDuration(v149, v85, v86, v87, v88))
        {
          v93 = objc_msgSend_rawDecimalValue(v149, v89, v90, v91, v92);
          TSUDecimal::operator=();
          *&v156._tskFormat = *v93;
          TSUDecimal::operator*=();
          v164 = *&v156._tskFormat;
        }

        else
        {
          *&v164 = objc_msgSend_decimalRepresentation(v149, v89, v90, v91, v92);
          *(&v164 + 1) = v102;
        }

        goto LABEL_30;
      }

      v94 = objc_msgSend_functionName(a4, v85, v86, v87, v88);
      v98 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v95, v94, v96, v97);
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v99, v98, v100, v101);
    }

    goto LABEL_8;
  }

  v16 = v20;
  v17 = objc_msgSend_raiseErrorOrConvert_(a3, v21, v20, v22, v23);
  v24 = v154;
LABEL_9:

LABEL_10:

  return v17;
}

@end