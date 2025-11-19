@interface TSCEFunction_GEOMEAN
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
+ (id)geometricMeanOfVector:(id)a3 context:(id)a4 functionSpec:(id)a5 argumentIndex:(int)a6 criteria:(id)a7;
@end

@implementation TSCEFunction_GEOMEAN

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v23 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, a3, a4, 0, 1, &v23);
  v12 = v23;
  if (v12)
  {
    v13 = objc_msgSend_raiseErrorOrConvert_(a3, v9, v12, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_geometricMeanOfVector_context_functionSpec_argumentIndex_criteria_(TSCEFunction_GEOMEAN, v9, v8, a3, a4, 0, 0);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v14, a3, v15, v16);
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }

    TSCEFormat::TSCEFormat(&v22, &v21);
    objc_msgSend_setFormat_(v13, v17, &v22, v18, v19);
  }

  return v13;
}

+ (id)geometricMeanOfVector:(id)a3 context:(id)a4 functionSpec:(id)a5 argumentIndex:(int)a6 criteria:(id)a7
{
  v161 = a3;
  v11 = a4;
  v12 = a7;
  v17 = objc_msgSend_zero(TSCENumberValue, v13, v14, v15, v16);
  v160 = objc_msgSend_zero(TSCENumberValue, v18, v19, v20, v21);
  v26 = objc_msgSend_count(v161, v22, v23, v24, v25);
  v31 = v11;
  v165[0] = v31;
  v165[1] = a5;
  v166 = 0;
  v167 = a6;
  v168[0] = 0;
  *(v168 + 3) = 0;
  v169 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v170 = 0;
  v171 = 0;
  if (!v26)
  {
LABEL_31:
    v42 = objc_msgSend_divideByZeroError(TSCEError, v27, v28, v29, v30);
    v133 = objc_msgSend_raiseErrorOrConvert_(v31, v134, v42, v135, v136);
    v60 = 0;
    goto LABEL_39;
  }

  v155 = a6;
  v156 = a5;
  v154 = v11;
  v32 = 0;
  v159 = 0;
  while (1)
  {
    v33 = objc_msgSend_valueAtIndexPassesCriteria_index_criteria_(TSCEGridValue, v27, v165, v32, v12, v154);
    v42 = objc_msgSend_nilValue(TSCENilValue, v34, v35, v36, v37);
    if (v33)
    {
      v43 = objc_msgSend_valueAtIndex_accessContext_(v161, v38, v32, v165, v41);

      if (objc_msgSend_isError(v43, v44, v45, v46, v47))
      {
        v129 = objc_msgSend_errorWithContext_(v43, v38, v31, v40, v41);
        v133 = objc_msgSend_raiseErrorOrConvert_(v31, v130, v129, v131, v132);

        v60 = 0;
        v42 = v43;
        goto LABEL_39;
      }

      v42 = v43;
    }

    if ((objc_msgSend_isNil(v42, v38, v39, v40, v41) & 1) != 0 || !v33)
    {
      goto LABEL_24;
    }

    v51 = objc_msgSend_deepType_(v42, v48, v31, v49, v50);
    if (v51 != 9)
    {
      break;
    }

    v60 = objc_msgSend_errorWithContext_(v42, v52, v31, v53, v54);
    if (v60)
    {
      v137 = objc_msgSend_raiseErrorOrConvert_(v31, v79, v60, v80, v81);
LABEL_33:
      v133 = v137;
      goto LABEL_39;
    }

LABEL_24:

    if (v26 == ++v32)
    {
      if (!HIDWORD(v159))
      {
        goto LABEL_31;
      }

      TSUDecimal::operator=();
      v110 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v107, v163, v108, v109);
      v162 = 0;
      v42 = objc_msgSend_power_outError_(v17, v111, v110, &v162, v112);
      v60 = v162;

      if (v60)
      {
        v117 = objc_msgSend_raiseErrorOrConvert_(v31, v113, v60, v115, v116);
      }

      if (objc_msgSend_hasUnits(v160, v113, v114, v115, v116))
      {
        v163[0] = objc_msgSend_decimalRepresentation(v42, v118, v119, v120, v121);
        v163[1] = v122;
        v126 = objc_msgSend_unit(v160, v122, v123, v124, v125);
        v137 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v127, v163, v126, v128);
      }

      else
      {
        v137 = v42;
        v42 = v137;
      }

      goto LABEL_33;
    }
  }

  if (v51 != 5)
  {
    v82 = MEMORY[0x277D81150];
    v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "+[TSCEFunction_GEOMEAN geometricMeanOfVector:context:functionSpec:argumentIndex:criteria:]", v53, v54);
    v157 = v17;
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v85, v86);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v88, v83, v87, 2780, 0, "Have to set the type of vector appropriately.");

    v17 = v157;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90, v91, v92);
    goto LABEL_24;
  }

  v164 = 0;
  v55 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v42, v52, v31, v156, v155, &v164);
  v60 = v164;
  if (v60)
  {
    v158 = v17;
    v133 = objc_msgSend_raiseErrorOrConvert_(v31, v56, v60, v58, v59);
    goto LABEL_38;
  }

  if ((objc_msgSend_isFinite(v55, v56, v57, v58, v59) & 1) == 0)
  {
    v158 = v17;
    v138 = objc_msgSend_functionName(v156, v61, v62, v63, v64);
    v142 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v139, v138, v140, v141);
    v146 = objc_msgSend_raiseErrorOrConvert_(v31, v143, v142, v144, v145);
    goto LABEL_37;
  }

  if ((v159 & 1) == 0)
  {
    v93 = v55;

    v102 = v93;
    if (objc_msgSend_hasUnits(v93, v94, v95, v96, v97))
    {
      v103 = objc_msgSend_rawDecimalValue(v93, v98, v99, v100, v101);
      v102 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v104, v103, v105, v106);
    }

    v78 = v102;
    v160 = v93;
    v55 = v78;
    goto LABEL_23;
  }

  if (objc_msgSend_dimensionsMatchModuloCurrency_(v160, v61, v55, v63, v64))
  {
    if (objc_msgSend_hasUnits(v55, v65, v66, v67, v68))
    {
      v73 = objc_msgSend_rawDecimalValue(v55, v69, v70, v71, v72);
      v77 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v74, v73, v75, v76);

      v55 = v77;
    }

    v78 = objc_msgSend_multiply_context_(v17, v69, v55, v31, v72);
LABEL_23:
    ++HIDWORD(v159);

    LOBYTE(v159) = 1;
    v17 = v78;
    goto LABEL_24;
  }

  v158 = v17;
  v138 = objc_msgSend_functionName(v156, v65, v66, v67, v68);
  v142 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v147, v138, v148, v149);
  v146 = objc_msgSend_raiseErrorOrConvert_(v31, v150, v142, v151, v152);
LABEL_37:
  v133 = v146;

LABEL_38:
  v17 = v158;

LABEL_39:

  return v133;
}

@end