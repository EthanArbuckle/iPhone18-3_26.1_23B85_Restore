@interface TSCELineFitFunction
+ (id)computeSlope:(id)slope functionSpec:(id)spec xs:(id)xs xArgumentIndex:(int)index ys:(id)ys yArgumentIndex:(int)argumentIndex xAverageResult:(TSUDecimal *)result yAverageResult:(TSUDecimal *)self0 slopeResult:(TSUDecimal *)self1 xExamplePtr:(id *)self2 yExamplePtr:(id *)self3;
@end

@implementation TSCELineFitFunction

+ (id)computeSlope:(id)slope functionSpec:(id)spec xs:(id)xs xArgumentIndex:(int)index ys:(id)ys yArgumentIndex:(int)argumentIndex xAverageResult:(TSUDecimal *)result yAverageResult:(TSUDecimal *)self0 slopeResult:(TSUDecimal *)self1 xExamplePtr:(id *)self2 yExamplePtr:(id *)self3
{
  slopeCopy = slope;
  xsCopy = xs;
  ysCopy = ys;
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v185 = objc_msgSend_count(xsCopy, v20, v21, v22, v23);
  if (objc_msgSend_count(ysCopy, v24, v25, v26, v27) != v185)
  {
    v98 = objc_msgSend_functionName(spec, v28, v29, v30, v31);
    v153 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v150, v98, v151, v152);
    goto LABEL_80;
  }

  v184 = objc_msgSend_nilValue(TSCENilValue, v28, v29, v30, v31);
  v182 = objc_msgSend_nilValue(TSCENilValue, v32, v33, v34, v35);
  v200[0] = slopeCopy;
  v200[1] = spec;
  v201 = 0;
  indexCopy = index;
  v203[0] = 0;
  *(v203 + 3) = 0;
  v204 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v205 = 0;
  v206 = 0;
  v36 = v200[0];
  v193[0] = v36;
  v193[1] = spec;
  v194 = 0;
  argumentIndexCopy = argumentIndex;
  v196[0] = 0;
  *(v196 + 3) = 0;
  v197 = v204;
  v198 = 0;
  v199 = 0;
  if (!v185)
  {
LABEL_51:
    v153 = objc_msgSend_divideByZeroError(TSCEError, v37, v38, v39, v40);
    v98 = 0;
    goto LABEL_79;
  }

  v41 = v36;
  indexCopy2 = index;
  v179 = 0;
  argumentIndexCopy2 = argumentIndex;
  v180 = 0;
  specCopy = spec;
  v42 = 0;
  v43 = 0;
  v176 = xsCopy;
  do
  {
    v44 = objc_msgSend_valueAtIndex_accessContext_(xsCopy, v37, v42, v200, v40);
    v45 = ysCopy;
    v48 = objc_msgSend_valueAtIndex_accessContext_(ysCopy, v46, v42, v193, v47);
    if (objc_msgSend_isError(v44, v49, v50, v51, v52))
    {
      objc_msgSend_errorWithContext_(v44, v53, v41, v55, v56);
      v153 = LABEL_49:;
      v98 = 0;
      goto LABEL_78;
    }

    if (objc_msgSend_isError(v48, v53, v54, v55, v56))
    {
      objc_msgSend_errorWithContext_(v48, v57, v41, v59, v60);
      goto LABEL_49;
    }

    if (objc_msgSend_isNil(v44, v57, v58, v59, v60) & 1) != 0 || (objc_msgSend_isNil(v48, v61, v62, v63, v64))
    {
      goto LABEL_42;
    }

    v72 = objc_msgSend_deepType_(v44, v65, v41, v66, v67);
    v177 = v72 == 3;
    if (v72 == 3)
    {
      if (((objc_msgSend_isNil(v184, v68, v69, v70, v71) | v43) & 1) == 0)
      {
        v83 = objc_msgSend_functionName(specCopy, v73, v74, v75, v76);
        xsCopy = v176;
        v153 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v156, v83, v157, v158);
        v98 = 0;
        goto LABEL_77;
      }

      v192 = 0;
      v84 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v44, v73, v41, specCopy, indexCopy2, &v192);
      v85 = v192;
      if (v85)
      {
        goto LABEL_62;
      }

      objc_msgSend_mapDateToDouble_(TSCECalendar, v77, v84, v78, v79);
      TSUDecimal::operator=();
      v83 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v80, v211, v81, v82);
    }

    else
    {
      v191 = 0;
      v84 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v44, v68, v41, specCopy, indexCopy2, &v191);
      v85 = v191;
      if (v85)
      {
LABEL_62:
        v98 = v85;
        v83 = v84;
        v153 = v98;
        goto LABEL_67;
      }

      if (v43)
      {
        v159 = objc_msgSend_functionName(specCopy, v86, v87, v88, v89);
        v153 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v160, v159, v161, v162);

        v98 = 0;
        v83 = v84;
LABEL_67:
        xsCopy = v176;
LABEL_77:

LABEL_78:
        ysCopy = v45;
        goto LABEL_79;
      }

      v83 = v84;
    }

    if (objc_msgSend_isNil(v184, v86, v87, v88, v89))
    {
      v93 = v184;
      v184 = v44;
    }

    else
    {
      if (v72 == 3)
      {
        goto LABEL_22;
      }

      v190 = 0;
      v93 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v184, v90, v41, specCopy, indexCopy2, &v190);
      v94 = v190;
      v98 = v94;
      xsCopy = v176;
      if (v94)
      {
        v153 = v94;
        goto LABEL_76;
      }

      if ((objc_msgSend_dimensionsMatchModuloCurrency_(v93, v95, v83, v96, v97) & 1) == 0)
      {
        v126 = objc_msgSend_functionName(specCopy, v99, v100, v101, v102);
        v169 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v166, v126, v167, v168);
        goto LABEL_72;
      }
    }

LABEL_22:
    v103 = v41;
    v108 = objc_msgSend_deepType_(v48, v90, v41, v91, v92);
    v109 = v108 == 3;
    if (v108 == 3)
    {
      if (((objc_msgSend_isNil(v182, v104, v105, v106, v107) | v179) & 1) == 0)
      {
        goto LABEL_68;
      }

      v189 = 0;
      v110 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v48, v104, v103, specCopy, argumentIndexCopy2, &v189);
      v111 = v189;
      if (v111)
      {
LABEL_63:
        v98 = v111;
        v93 = v110;
        v153 = v98;
        goto LABEL_75;
      }

      objc_msgSend_mapDateToDouble_(TSCECalendar, v112, v110, v113, v114);
      TSUDecimal::operator=();
      v93 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v115, v211, v116, v117);
    }

    else
    {
      if (v179)
      {
LABEL_68:
        v93 = objc_msgSend_functionName(specCopy, v104, v105, v106, v107);
        xsCopy = v176;
        v153 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v163, v93, v164, v165);
        v98 = 0;
        goto LABEL_76;
      }

      v188 = 0;
      v110 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v48, v104, v103, specCopy, argumentIndexCopy2, &v188);
      v111 = v188;
      if (v111)
      {
        goto LABEL_63;
      }

      v93 = v110;
    }

    if (objc_msgSend_isNil(v182, v118, v119, v120, v121))
    {
      v126 = v182;
      v182 = v48;
    }

    else
    {
      if (v108 == 3)
      {
        goto LABEL_35;
      }

      v187 = 0;
      v126 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v182, v122, v103, specCopy, indexCopy2, &v187);
      v127 = v187;
      v98 = v127;
      if (v127)
      {
        v169 = v127;
LABEL_72:
        v153 = v169;
LABEL_74:

LABEL_75:
        xsCopy = v176;
LABEL_76:

        goto LABEL_77;
      }

      if ((objc_msgSend_dimensionsMatchModuloCurrency_(v126, v128, v93, v129, v130) & 1) == 0)
      {
        v170 = objc_msgSend_functionName(specCopy, v131, v132, v133, v134);
        v153 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v171, v170, v172, v173);

        goto LABEL_74;
      }
    }

LABEL_35:
    xsCopy = v176;
    if (objc_msgSend_hasUnits(v83, v122, v123, v124, v125) && !objc_msgSend_dimension(v83, v135, v136, v137, v138))
    {
      v148 = objc_msgSend_rawDecimalValue(v83, v135, v136, v137, v138);
      TSUDecimal::operator=();
      v211[0] = *v148;
      TSUDecimal::operator*=();
      v140 = *(&v211[0] + 1);
      v139 = *&v211[0];
    }

    else
    {
      v139 = objc_msgSend_decimalRepresentation(v83, v135, v136, v137, v138);
    }

    *&v186 = v139;
    *(&v186 + 1) = v140;
    if (objc_msgSend_hasUnits(v93, v140, v141, v142, v143) && !objc_msgSend_dimension(v93, v144, v145, v146, v147))
    {
      v149 = objc_msgSend_rawDecimalValue(v93, v144, v145, v146, v147);
      TSUDecimal::operator=();
      v211[0] = *v149;
      TSUDecimal::operator*=();
    }

    else
    {
      objc_msgSend_decimalRepresentation(v93, v144, v145, v146, v147);
    }

    TSUDecimal::operator+=();
    TSUDecimal::operator+=();
    v211[0] = v186;
    TSUDecimal::operator*=();
    TSUDecimal::operator+=();
    v211[0] = v186;
    TSUDecimal::operator*=();
    TSUDecimal::operator+=();
    ++v180;

    v43 = v177;
    v179 = v109;
    v41 = v103;
LABEL_42:

    ++v42;
    ysCopy = v45;
  }

  while (v185 != v42);
  if (v180 <= 1)
  {
    goto LABEL_51;
  }

  TSUDecimal::operator=();
  TSUDecimal::operator/=();
  TSUDecimal::operator=();
  TSUDecimal::operator/=();
  if (slopeResult)
  {
    TSUDecimal::operator=();
    v211[0] = v186;
    TSUDecimal::operator*=();
    TSUDecimal::operator*=();
    v211[0] = v210;
    TSUDecimal::operator-=();
    v154 = v211[0];
    v211[0] = v186;
    TSUDecimal::operator*=();
    TSUDecimal::operator*=();
    v211[0] = v209;
    TSUDecimal::operator-=();
    v211[0] = v154;
    TSUDecimal::operator/=();
    v155 = *(&v211[0] + 1);
    slopeResult->_decimal.w[0] = *&v211[0];
    slopeResult->_decimal.w[1] = v155;
  }

  if (result)
  {
    *result = v208;
  }

  if (averageResult)
  {
    *averageResult = v207;
  }

  if (ptr)
  {
    *ptr = v184;
  }

  v98 = 0;
  v153 = 0;
  if (examplePtr)
  {
    *examplePtr = v182;
  }

LABEL_79:

LABEL_80:

  return v153;
}

@end