@interface TSCEFunction_HARMEAN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)harmonicMeanOfVector:(id)vector context:(id)context functionSpec:(id)spec argumentIndex:(int)index criteria:(id)criteria;
@end

@implementation TSCEFunction_HARMEAN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v23 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 1, &v23);
  v12 = v23;
  if (v12)
  {
    v13 = objc_msgSend_raiseErrorOrConvert_(context, v9, v12, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_harmonicMeanOfVector_context_functionSpec_argumentIndex_criteria_(TSCEFunction_HARMEAN, v9, v8, context, spec, 0, 0);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v14, context, v15, v16);
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

+ (id)harmonicMeanOfVector:(id)vector context:(id)context functionSpec:(id)spec argumentIndex:(int)index criteria:(id)criteria
{
  vectorCopy = vector;
  contextCopy = context;
  criteriaCopy = criteria;
  v161 = objc_msgSend_zero(TSCENumberValue, v12, v13, v14, v15);
  TSUDecimal::operator=();
  v160 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v16, v172, v17, v18);
  v23 = objc_msgSend_count(vectorCopy, v19, v20, v21, v22);
  v28 = contextCopy;
  v172[0] = v28;
  v172[1] = spec;
  v173 = 0;
  indexCopy = index;
  v175[0] = 0;
  *(v175 + 3) = 0;
  v176 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v177 = 0;
  v178 = 0;
  if (!v23)
  {
    v163 = 0;
LABEL_32:
    v40 = objc_msgSend_divideByZeroError(TSCEError, v24, v25, v26, v27);
    v139 = objc_msgSend_raiseErrorOrConvert_(v28, v125, v40, v126, v127);
    v78 = 0;
    goto LABEL_44;
  }

  indexCopy2 = index;
  specCopy = spec;
  v159 = 0;
  v156 = contextCopy;
  v29 = 0;
  v30 = 0;
  v163 = 0;
  do
  {
    v31 = objc_msgSend_valueAtIndexPassesCriteria_index_criteria_(TSCEGridValue, v24, v172, v29, criteriaCopy, v156);
    v40 = objc_msgSend_nilValue(TSCENilValue, v32, v33, v34, v35);
    if (v31)
    {
      v41 = objc_msgSend_valueAtIndex_accessContext_(vectorCopy, v36, v29, v172, v39);

      if (objc_msgSend_isError(v41, v42, v43, v44, v45))
      {
        v121 = objc_msgSend_errorWithContext_(v41, v36, v28, v38, v39);
        v139 = objc_msgSend_raiseErrorOrConvert_(v28, v122, v121, v123, v124);
        v78 = 0;
        v40 = v41;
LABEL_31:
        v115 = v121;
        goto LABEL_43;
      }

      v40 = v41;
    }

    if ((objc_msgSend_isNil(v40, v36, v37, v38, v39) & 1) == 0 && v31)
    {
      v49 = objc_msgSend_deepType_(v40, v46, v28, v47, v48);
      if (v49 == 9)
      {
        v78 = objc_msgSend_errorWithContext_(v40, v50, v28, v51, v52);
        if (v78)
        {
          v139 = objc_msgSend_raiseErrorOrConvert_(v28, v75, v78, v76, v77);
          goto LABEL_44;
        }
      }

      else
      {
        if (v49 != 5)
        {
          v79 = MEMORY[0x277D81150];
          v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "+[TSCEFunction_HARMEAN harmonicMeanOfVector:context:functionSpec:argumentIndex:criteria:]", v51, v52);
          v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v82, v83);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v85, v80, v84, 2889, 0, "Have to set the type of vector appropriately.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87, v88, v89);
          goto LABEL_25;
        }

        v171 = 0;
        v53 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v40, v50, v28, specCopy, indexCopy2, &v171);
        v54 = v171;
        v162 = v53;
        if (v54)
        {
          v78 = v54;
          v139 = objc_msgSend_raiseErrorOrConvert_(v28, v55, v54, v57, v58);
LABEL_42:
          v115 = v162;
          goto LABEL_43;
        }

        if ((objc_msgSend_isFinite(v53, v55, v56, v57, v58) & 1) == 0)
        {
          v140 = objc_msgSend_functionName(specCopy, v59, v60, v61, v62);
          v144 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v141, v140, v142, v143);
          v148 = objc_msgSend_raiseErrorOrConvert_(v28, v145, v144, v146, v147);
LABEL_41:
          v139 = v148;

          v78 = 0;
          goto LABEL_42;
        }

        if (v30)
        {
          if ((objc_msgSend_dimensionsMatchModuloCurrency_(v163, v59, v53, v61, v62) & 1) == 0)
          {
            v140 = objc_msgSend_functionName(specCopy, v63, v64, v65, v66);
            v144 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v149, v140, v150, v151);
            v148 = objc_msgSend_raiseErrorOrConvert_(v28, v152, v144, v153, v154);
            goto LABEL_41;
          }

          if (objc_msgSend_hasUnits(v53, v63, v64, v65, v66))
          {
            v71 = objc_msgSend_rawDecimalValue(v53, v67, v68, v69, v70);
            v53 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v72, v71, v73, v74);
          }

          v168 = 0;
          v162 = v53;
          v104 = objc_msgSend_divide_outError_(v160, v67, v53, &v168, v70);
          v105 = v168;
          v167 = v105;
          v103 = objc_msgSend_add_functionSpec_outError_(v161, v106, v104, specCopy, &v167);
          v78 = v167;

          v90 = v163;
        }

        else
        {
          v90 = v53;

          v99 = v90;
          if (objc_msgSend_hasUnits(v90, v91, v92, v93, v94))
          {
            objc_msgSend_rawDoubleValue(v90, v95, v96, v97, v98);
            TSUDecimal::operator=();
            v99 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v100, v170, v101, v102);
          }

          v169 = 0;
          v162 = v99;
          v103 = objc_msgSend_divide_outError_(v160, v95, v99, &v169, v98);
          v78 = v169;
          v104 = v161;
        }

        if (v78)
        {
          v139 = objc_msgSend_raiseErrorOrConvert_(v28, v107, v78, v108, v109);
          v161 = v103;
          v163 = v90;
          goto LABEL_42;
        }

        ++v159;

        v30 = 1;
        v163 = v90;
        v161 = v103;
      }
    }

LABEL_25:

    ++v29;
  }

  while (v23 != v29);
  v24 = v159;
  if (!v159)
  {
    goto LABEL_32;
  }

  TSUDecimal::operator=();
  v40 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v110, v170, v111, v112);
  v166 = 0;
  v115 = objc_msgSend_divide_outError_(v40, v113, v161, &v166, v114);
  v78 = v166;
  if (v78)
  {
    v120 = objc_msgSend_raiseErrorOrConvert_(v28, v116, v78, v118, v119);
    goto LABEL_36;
  }

  if (objc_msgSend_hasUnits(v163, v116, v117, v118, v119))
  {
    v121 = v115;
    v170[0] = objc_msgSend_decimalRepresentation(v115, v128, v129, v130, v131);
    v170[1] = v132;
    v136 = objc_msgSend_unit(v163, v132, v133, v134, v135);
    v139 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v137, v170, v136, v138);
    goto LABEL_31;
  }

  v120 = v115;
LABEL_36:
  v139 = v120;
LABEL_43:

LABEL_44:

  return v139;
}

@end