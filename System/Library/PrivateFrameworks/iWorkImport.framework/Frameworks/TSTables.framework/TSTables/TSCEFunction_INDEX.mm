@interface TSCEFunction_INDEX
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_INDEX

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v243 = 0;
  v244 = 0;
  v245 = 0;
  v8 = **a5;
  v242 = 0;
  v228 = v8;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, a3, a4, 0, 1, &v242);
  v11 = v242;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v13, v14);
    goto LABEL_89;
  }

  if (v10)
  {
    objc_msgSend_formatWithContext_(v10, v12, a3, v13, v14);
  }

  else
  {
    memset(v235, 0, 32);
  }

  sub_22114F414(&v243, v235);
  v227 = *(*a5 + 8);
  if (objc_msgSend_deepType_(v227, v17, a3, v18, v19) == 10)
  {
    v24 = 0;
  }

  else
  {
    if (v227)
    {
      objc_msgSend_formatWithContext_(v227, v20, a3, v22, v23);
    }

    else
    {
      memset(v235, 0, 32);
    }

    sub_22114F414(&v243, v235);
    v241 = 0;
    v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v227, v25, a3, a4, 1, &v241);
    v15 = v241;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v27, v15, v29, v30);

      goto LABEL_88;
    }

    *v235 = objc_msgSend_decimalRepresentation(v26, v27, v28, v29, v30);
    *&v235[8] = v31;
    v24 = TSUDecimal::truncateWithRounding(v235);
  }

  if (*(a5 + 1) - *a5 < 0x11uLL)
  {
    v225 = 0;
    goto LABEL_22;
  }

  v32 = *(*a5 + 16);
  if ((objc_msgSend_isTokenOrEmptyArg(v32, v33, v34, v35, v36) & 1) != 0 || objc_msgSend_nativeType(v32, v37, v38, v39, v40) == 10)
  {
    v225 = 0;
  }

  else
  {
    if (v32)
    {
      objc_msgSend_formatWithContext_(v32, v41, a3, v42, v43);
    }

    else
    {
      memset(v235, 0, 32);
    }

    sub_22114F414(&v243, v235);
    v240 = 0;
    v122 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v32, v121, a3, a4, 2, &v240);
    v15 = v240;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v123, v15, v125, v126);

      goto LABEL_88;
    }

    *v235 = objc_msgSend_decimalRepresentation(v122, v123, v124, v125, v126);
    *&v235[8] = v127;
    v225 = TSUDecimal::truncateWithRounding(v235);
  }

  if (*(a5 + 1) - *a5 < 0x19uLL)
  {
LABEL_22:
    v52 = 1;
    if ((v24 & 0x80000000) != 0)
    {
LABEL_84:
      v87 = objc_msgSend_invalidReferenceError(TSCEError, v20, v21, v22, v23);
      v91 = objc_msgSend_raiseErrorOrConvert_(a3, v135, v87, v136, v137);
      goto LABEL_85;
    }

    goto LABEL_23;
  }

  v44 = *(*a5 + 24);
  if (objc_msgSend_isTokenOrEmptyArg(v44, v45, v46, v47, v48))
  {
    v52 = 1;
  }

  else
  {
    if (v44)
    {
      objc_msgSend_formatWithContext_(v44, v49, a3, v50, v51);
    }

    else
    {
      memset(v235, 0, 32);
    }

    sub_22114F414(&v243, v235);
    v239 = 0;
    v129 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v44, v128, a3, a4, 3, &v239);
    v15 = v239;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v130, v15, v132, v133);

      goto LABEL_88;
    }

    *v235 = objc_msgSend_decimalRepresentation(v129, v130, v131, v132, v133);
    *&v235[8] = v134;
    v52 = TSUDecimal::truncateWithRounding(v235);
  }

  if ((v24 & 0x80000000) != 0)
  {
    goto LABEL_84;
  }

LABEL_23:
  if (v225 < 0 || !v52)
  {
    goto LABEL_84;
  }

  if (objc_msgSend_gridKind(v10, v20, v21, v22, v23) != 1)
  {
    v58 = 1;
    goto LABEL_49;
  }

  v57 = objc_msgSend_count(v10, v53, v54, v55, v56);
  v58 = v57;
  if (v52 > v57)
  {
    goto LABEL_84;
  }

  if (v57 == 1)
  {
    v59 = v10;
LABEL_48:

    v10 = v59;
LABEL_49:
    if (v52 > v58)
    {
      v87 = objc_msgSend_invalidReferenceError(TSCEError, v53, v54, v55, v56);
      v91 = objc_msgSend_raiseErrorOrConvert_(a3, v88, v87, v89, v90);
LABEL_85:
      v16 = v91;
      goto LABEL_86;
    }

    v92 = objc_msgSend_dimensions(v10, v53, v54, v55, v56);
    v97 = v92;
    v98 = HIDWORD(v92);
    v99 = v225 == 0;
    v100 = HIDWORD(v92) == 1;
    v101 = !v99 || !v100;
    if (v99 && v100)
    {
      v102 = v24;
    }

    else
    {
      v102 = v225;
    }

    if (v101)
    {
      v103 = v24;
    }

    else
    {
      v103 = 0;
    }

    if (v102 > v92 || v103 > SHIDWORD(v92))
    {
      v87 = objc_msgSend_functionName(a4, v93, v94, v95, v96);
      v117 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v114, v87, v115, v116);
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v118, v117, v119, v120);

LABEL_86:
LABEL_87:
      v15 = 0;
      goto LABEL_88;
    }

    if (v102)
    {
      v104 = 0;
    }

    else
    {
      v104 = v92 == 1;
    }

    if (v104)
    {
      v105 = 1;
    }

    else
    {
      v105 = v102;
    }

    if (v98 == 1 && v103 == 0)
    {
      v107 = 1;
    }

    else
    {
      v107 = v103;
    }

    *v235 = a3;
    *&v235[8] = a4;
    memset(&v235[16], 0, 19);
    v236 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v237 = 0;
    v238 = 0;
    if (v105 && v107)
    {
      v109 = objc_msgSend_subGridValueAtGridCoord_width_height_accessContext_(v10, v108, (v105 - 1) | ((v107 - 1) << 32), 1, 1, v235);
    }

    else if (v105 || !v107)
    {
      if (!v105 || v107)
      {
        v109 = objc_msgSend_subGridValueAtGridCoord_width_height_accessContext_(v10, v108, 0, v97, v98, v235);
      }

      else
      {
        v109 = objc_msgSend_subGridValueAtGridCoord_width_height_accessContext_(v10, v108, (v105 - 1), 1, v98, v235);
      }
    }

    else
    {
      v109 = objc_msgSend_subGridValueAtGridCoord_width_height_accessContext_(v10, v108, (v107 - 1) << 32, v97, 1, v235);
    }

    v143 = v109;
    if (objc_msgSend_isGridValue(v109, v110, v111, v112, v113))
    {
      v148 = objc_msgSend_gridValue(v143, v144, v145, v146, v147);
      if (objc_msgSend_dimensions(v148, v149, v150, v151, v152) == 0x100000001)
      {
        v155 = objc_msgSend_valueAtIndex_accessContext_(v148, v153, 0, v235, v154);
LABEL_110:
        v167 = v155;

        v143 = v167;
      }
    }

    else
    {
      if (!objc_msgSend_isValueGridValue(v143, v144, v145, v146, v147))
      {
        goto LABEL_112;
      }

      v148 = objc_msgSend_valueGrid(v143, v156, v157, v158, v159);
      if (objc_msgSend_area(v148, v160, v161, v162, v163) == 1)
      {
        v155 = objc_msgSend_valueAt1DIndex_(v148, v164, 0, v165, v166);
        goto LABEL_110;
      }
    }

LABEL_112:
    if (objc_msgSend_isGridValue(v143, v156, v157, v158, v159))
    {
      v226 = v143;
      v143 = objc_msgSend_gridValue(v143, v168, v169, v170, v171);
      memset(&v230, 0, 24);
      v176 = objc_msgSend_dimensions(v143, v172, v173, v174, v175);
      v179 = v176;
      v246[0] = v176;
      v180 = HIDWORD(v176);
      if (HIDWORD(v176))
      {
        v181 = 0;
        v182 = v176;
        do
        {
          if (v182)
          {
            v183 = 0;
            do
            {
              v232 = objc_msgSend_valueAtGridCoord_accessContext_(v143, v177, (v181 << 32) | v183, v235, v178);
              if (objc_msgSend_isReferenceValue(v232, v184, v185, v186, v187))
              {
                v192 = objc_msgSend_asReferenceValue(v232, v188, v189, v190, v191);
                objc_msgSend_setIsOutputOfAFunction_(v192, v193, 1, v194, v195);
                v196 = v192;
                v231 = v196;
                sub_2210ED5B8(&v230, &v231);
              }

              else
              {
                sub_221179A54(&v230, &v232);
              }

              ++v183;
            }

            while (v179 > v183);
            v182 = v179;
          }

          ++v181;
        }

        while (v181 < v180);
      }

      v197 = [TSCEDenseGrid alloc];
      isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v197, v198, &v230, 0, 1, v246);
      v203 = objc_msgSend_gridValue_(TSCEGridValue, v200, isFlattened_dimensions, v201, v202);

      v246[0] = &v230;
      sub_22107C2C0(v246);
    }

    else
    {
      if (!objc_msgSend_isReferenceValue(v143, v168, v169, v170, v171))
      {
LABEL_127:
        if (!v143)
        {
          v143 = objc_msgSend_nilValue(TSCENilValue, v204, v205, v206, v207);
        }

        sub_221256020(&v243, &v229);
        TSCEFormat::TSCEFormat(&v230, &v229);
        objc_msgSend_setFormat_(v143, v211, &v230, v212, v213);
        v214 = *&v235[16];
        v16 = v143;

        goto LABEL_87;
      }

      v203 = objc_msgSend_asReferenceValue(v143, v204, v205, v206, v207);
      objc_msgSend_setIsOutputOfAFunction_(v203, v208, 1, v209, v210);
    }

    v143 = v203;
    goto LABEL_127;
  }

  v62 = a3;
  v63 = 0;
  *v235 = v62;
  *&v235[8] = a4;
  memset(&v235[16], 0, 19);
  v236 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v237 = 0;
  v238 = 0;
  v223 = v52 - 1;
  v224 = 0;
  v222 = v62;
  while (1)
  {
    v64 = objc_msgSend_valueAtIndex_accessContext_(v10, v60, v63, v235, v61, v222);
    if (objc_msgSend_isError(v64, v65, v66, v67, v68))
    {
      v139 = objc_msgSend_errorWithContext_(v64, v69, v62, v71, v72);
      v16 = objc_msgSend_raiseErrorOrConvert_(v62, v140, v139, v141, v142);
LABEL_98:

      v15 = 0;
      v83 = v224;
      goto LABEL_99;
    }

    if ((objc_msgSend_isNil(v64, v69, v70, v71, v72) & 1) == 0)
    {
      break;
    }

LABEL_46:

    if (v58 == ++v63)
    {

      v59 = v224;
      goto LABEL_48;
    }
  }

  v77 = v24;
  v78 = objc_msgSend_nativeType(v64, v73, v74, v75, v76);
  if (v78 != 1)
  {
    if (v78 != 6)
    {
      v139 = objc_msgSend_functionName(a4, v79, v80, v81, v82);
      v218 = objc_msgSend_notAReferenceErrorForFunctionName_(TSCEError, v215, v139, v216, v217);
      v16 = objc_msgSend_raiseErrorOrConvert_(v222, v219, v218, v220, v221);

      goto LABEL_98;
    }

    if (v223 == v63)
    {
      v234 = 0;
      v83 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v64, v79, v62, a4, 0, 1, &v234);
      v15 = v234;

      if (v15)
      {
        goto LABEL_131;
      }

      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if (v223 != v63)
  {
    goto LABEL_46;
  }

  v233 = 0;
  v83 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v64, v79, v62, a4, 0, 1, &v233);
  v15 = v233;

  if (!v15)
  {
LABEL_45:
    v224 = v83;
    v24 = v77;
    v62 = v222;
    goto LABEL_46;
  }

LABEL_131:
  v16 = objc_msgSend_raiseErrorOrConvert_(v222, v84, v15, v85, v86);
LABEL_99:

LABEL_88:
LABEL_89:

  if (v243)
  {
    v244 = v243;
    operator delete(v243);
  }

  return v16;
}

@end