@interface TSCEFunction_CORREL
+ (TSUDecimal)covarianceWithVector:(id)vector functionSpec:(id)spec vector1:(id)vector1 vector2:(id)vector2 outStdDev:(TSUDecimal *)dev durationAllowed:(BOOL)allowed isSample:(BOOL)sample outError:(id *)self0;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CORREL

+ (TSUDecimal)covarianceWithVector:(id)vector functionSpec:(id)spec vector1:(id)vector1 vector2:(id)vector2 outStdDev:(TSUDecimal *)dev durationAllowed:(BOOL)allowed isSample:(BOOL)sample outError:(id *)self0
{
  vectorCopy = vector;
  vector1Copy = vector1;
  vector2Copy = vector2;
  if (!error)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[TSCEFunction_CORREL covarianceWithVector:functionSpec:vector1:vector2:outStdDev:durationAllowed:isSample:outError:]", v16, v17);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 1277, 0, "invalid nil value for '%{public}s'", "outError");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_msgSend_count(vector1Copy, v14, v15, v16, v17);
  if (objc_msgSend_count(vector2Copy, v31, v32, v33, v34) != v30)
  {
    v40 = objc_msgSend_functionName(spec, v35, v36, v37, v38);
    *error = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v41, v40, v42, v43);

    goto LABEL_11;
  }

  if (dev)
  {
    sampleCopy = 1;
  }

  else
  {
    sampleCopy = sample;
  }

  v159 = sampleCopy;
  if (sampleCopy && v30 <= 1)
  {
    *error = objc_msgSend_divideByZeroError(TSCEError, v35, v36, v37, v38);
LABEL_11:
    TSUDecimal::operator=();
    goto LABEL_12;
  }

  v187 = 0;
  v188 = 0;
  v189 = 0;
  v184 = 0;
  v185 = 0;
  v186 = 0;
  TSUDecimal::operator=();
  sub_2216B7DE0(&v187, v30, &v178);
  TSUDecimal::operator=();
  sub_2216B7DE0(&v184, v30, &v178);
  v161 = objc_msgSend_zero(TSCENumberValue, v46, v47, v48, v49);
  devCopy = dev;
  *&v178 = vectorCopy;
  *(&v178 + 1) = spec;
  v179 = 0;
  v180[0] = 0;
  *(v180 + 7) = 0;
  v162 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v181 = v162;
  v182 = 0;
  v183 = 0;
  v50 = v178;
  v172[0] = v50;
  v172[1] = spec;
  v173 = 0;
  v174[0] = 1;
  *(v174 + 7) = 0;
  v175 = v162;
  v176 = 0;
  v177 = 0;
  if (!v30)
  {
    v163 = 0;
LABEL_42:
    v124 = !v159;
    if (v163 > 1)
    {
      v124 = 1;
    }

    if (v124)
    {
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      if (v163)
      {
        v125 = 0;
        v126 = v163;
        do
        {
          TSUDecimal::operator+=();
          TSUDecimal::operator+=();
          v125 += 16;
          --v126;
        }

        while (v126);
      }

      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      TSUDecimal::operator=();
      if (v163)
      {
        v127 = 0;
        v128 = v163;
        do
        {
          v191 = v187[v127];
          TSUDecimal::operator-=();
          v129 = v191;
          v191 = v184[v127];
          TSUDecimal::operator-=();
          v168 = v191;
          v191 = v129;
          TSUDecimal::operator*=();
          v169 = v191;
          TSUDecimal::operator+=();
          ++v127;
          --v128;
        }

        while (v128);
      }

      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      if (devCopy)
      {
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        if (v163)
        {
          v130 = 0;
          v131 = v163;
          do
          {
            v191 = v187[v130];
            TSUDecimal::operator-=();
            v132 = v191;
            v191 = v187[v130];
            TSUDecimal::operator-=();
            v191 = v132;
            TSUDecimal::operator*=();
            v167 = v191;
            TSUDecimal::operator+=();
            v191 = v184[v130];
            TSUDecimal::operator-=();
            v133 = v191;
            v191 = v184[v130];
            TSUDecimal::operator-=();
            v191 = v133;
            TSUDecimal::operator*=();
            v167 = v191;
            TSUDecimal::operator+=();
            ++v130;
            --v131;
          }

          while (v131);
        }

        v191 = v169;
        TSUDecimal::operator*=();
        v167 = v191;
        TSUDecimal::doubleValue(&v167);
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        v191 = v167;
        TSUDecimal::operator/=();
        v134 = v191._decimal.w[1];
        devCopy->_decimal.w[0] = v191._decimal.w[0];
        devCopy->_decimal.w[1] = v134;
      }

      v190 = v170;
      if (sample)
      {
        TSUDecimal::operator=();
        TSUDecimal::operator*=();
      }
    }

    else
    {
      *error = objc_msgSend_divideByZeroError(TSCEError, v51, v52, v53, v54);
      TSUDecimal::operator=();
    }

    goto LABEL_74;
  }

  v55 = v50;
  v56 = 0;
  v163 = 0;
  v57 = 0;
  v160 = 1;
  while (1)
  {
    v58 = vector1Copy;
    v59 = objc_msgSend_valueAtIndex_accessContext_(vector1Copy, v51, v57, &v178, v54);
    v60 = vector2Copy;
    v63 = objc_msgSend_valueAtIndex_accessContext_(vector2Copy, v61, v57, v172, v62);
    if (objc_msgSend_isError(v59, v64, v65, v66, v67))
    {
      objc_msgSend_errorWithContext_(v59, v68, v55, v70, v71);
      *error = LABEL_61:;
      TSUDecimal::operator=();
      goto LABEL_73;
    }

    if (objc_msgSend_isError(v63, v68, v69, v70, v71))
    {
      objc_msgSend_errorWithContext_(v63, v72, v55, v74, v75);
      goto LABEL_61;
    }

    if (objc_msgSend_isNil(v59, v72, v73, v74, v75) & 1) != 0 || (objc_msgSend_isNil(v63, v76, v77, v78, v79))
    {
      goto LABEL_39;
    }

    v83 = objc_msgSend_deepType_(v59, v80, v55, v81, v82);
    if (v83 != objc_msgSend_deepType_(v63, v84, v55, v85, v86))
    {
      v135 = objc_msgSend_functionName(spec, v87, v88, v89, v90);
      *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v136, v135, v137, v138);

      TSUDecimal::operator=();
      goto LABEL_73;
    }

    TSUDecimal::operator=();
    TSUDecimal::operator=();
    v158 = v83 == 3;
    if (v83 != 3)
    {
      break;
    }

    v92 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v59, v91, v55, spec, 0, error);
    v98 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v63, v93, v55, spec, 1, error);
    if (*error)
    {
      goto LABEL_65;
    }

    if ((v160 & 1) == 0)
    {
      v144 = objc_msgSend_functionName(spec, v94, v95, v96, v97);
      *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v145, v144, v146, v147);

LABEL_65:
      TSUDecimal::operator=();
      goto LABEL_72;
    }

    objc_msgSend_mapDateToDouble_(TSCECalendar, v94, v92, v96, v97);
    TSUDecimal::operator=();
    objc_msgSend_mapDateToDouble_(TSCECalendar, v99, v98, v100, v101);
    TSUDecimal::operator=();
LABEL_38:

    v187[v163] = v191;
    v184[v163++] = v171;
    v56 = v158;
    v160 = v158;
LABEL_39:

    ++v57;
    vector1Copy = v58;
    vector2Copy = v60;
    if (v30 == v57)
    {
      goto LABEL_42;
    }
  }

  v157 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v59, v91, v55, spec, 0, error);
  v103 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v63, v102, v55, spec, 1, error);
  v98 = v103;
  if (*error)
  {
    goto LABEL_71;
  }

  if (v56)
  {
    goto LABEL_63;
  }

  v92 = v157;
  if (allowed)
  {
    goto LABEL_32;
  }

  if (objc_msgSend_hasUnits(v157, v104, v105, v106, v107) && !objc_msgSend_dimension(v157, v108, v109, v110, v111))
  {
    v139 = objc_msgSend_functionName(spec, v108, v109, v110, v111);
    v143 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v152, v139, 1, v153);
    goto LABEL_70;
  }

  if (!objc_msgSend_hasUnits(v98, v108, v109, v110, v111) || objc_msgSend_dimension(v98, v104, v112, v106, v107))
  {
LABEL_32:
    if (v160)
    {
      v114 = v157;

      v115 = v114;
      v92 = v157;
    }

    else
    {
      if ((objc_msgSend_dimensionsMatchModuloCurrency_(v161, v104, v157, v106, v107) & 1) == 0)
      {
LABEL_63:
        v139 = objc_msgSend_functionName(spec, v104, v105, v106, v107);
        v143 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v140, v139, v141, v142);
        goto LABEL_70;
      }

      v115 = v161;
    }

    v161 = v115;
    if ((objc_msgSend_dimensionsMatchModuloCurrency_(v115, v104, v98, v106, v107) & 1) == 0)
    {
      v148 = objc_msgSend_functionName(spec, v116, v117, v118, v119);
      *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v149, v148, v150, v151);

      TSUDecimal::operator=();
      goto LABEL_72;
    }

    v191 = *objc_msgSend_rawDecimalValue(v92, v116, v117, v118, v119);
    v171 = *objc_msgSend_rawDecimalValue(v98, v120, v121, v122, v123);
    goto LABEL_38;
  }

  v139 = objc_msgSend_functionName(spec, v104, v113, v106, v107);
  v143 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v154, v139, 2, v155);
LABEL_70:
  *error = v143;

LABEL_71:
  v92 = v157;
  TSUDecimal::operator=();
LABEL_72:

LABEL_73:
  vector1Copy = v58;
  vector2Copy = v60;
LABEL_74:

  if (v184)
  {
    v185 = v184;
    operator delete(v184);
  }

  if (v187)
  {
    v188 = v187;
    operator delete(v187);
  }

LABEL_12:

  v45 = *(&v190 + 1);
  v44 = v190;
  result._decimal.w[1] = v45;
  result._decimal.w[0] = v44;
  return result;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v41 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 1, &v41);
  v10 = v41;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12, v13);
    goto LABEL_14;
  }

  v16 = *(*arguments + 8);
  v40 = 0;
  v17 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v16, v11, context, spec, 1, 1, &v40);
  v18 = v40;
  if (!v18)
  {
    TSUDecimal::operator=();
    v38 = 0;
    isSample_outError = objc_msgSend_covarianceWithVector_functionSpec_vector1_vector2_outStdDev_durationAllowed_isSample_outError_(TSCEFunction_CORREL, v23, context, spec, v9, v17, v39, 1, 0, &v38);
    v26 = v25;
    v14 = v38;
    v36[0] = isSample_outError;
    v36[1] = v26;
    TSUDecimal::operator/=();
    v37[0] = isSample_outError;
    v37[1] = v26;
    if (v14)
    {
      v22 = objc_msgSend_raiseErrorOrConvert_(context, v27, v14, v29, v30);
      goto LABEL_13;
    }

    if (v9)
    {
      objc_msgSend_formatWithContext_(v9, v27, context, v29, v30);
      if (v17)
      {
LABEL_9:
        objc_msgSend_formatWithContext_(v17, v27, context, v29, v30);
LABEL_12:
        TSCEFormat::formatByMergingWithFormat(&v35, &v34, v28, v29, v30, v36);
        v22 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v31, v37, v36, v32);
        goto LABEL_13;
      }
    }

    else
    {
      memset(&v35, 0, sizeof(v35));
      if (v17)
      {
        goto LABEL_9;
      }
    }

    memset(&v34, 0, sizeof(v34));
    goto LABEL_12;
  }

  v14 = v18;
  v22 = objc_msgSend_raiseErrorOrConvert_(context, v19, v18, v20, v21);
LABEL_13:
  v15 = v22;

LABEL_14:

  return v15;
}

@end