@interface TSCEFunction_FREQUENCY
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_FREQUENCY

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v290 = *MEMORY[0x277D85DE8];
  v8 = **a5;
  v282 = 0;
  v246 = v8;
  v247 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, a3, a4, 0, 1, &v282);
  v10 = v282;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v10, v12, v13);
    goto LABEL_95;
  }

  v245 = v247;
  v16 = *(*a5 + 8);
  v281 = 0;
  v243 = v16;
  v248 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v16, v17, a3, a4, 1, 1, &v281);
  v18 = v281;
  if (v18)
  {
    v14 = v18;
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v19, v18, v20, v21);
    goto LABEL_94;
  }

  v278 = 0;
  v279 = 0;
  v280 = 0;
  v275 = 0;
  v276 = 0;
  v277 = 0;
  v283 = 1;
  v273 = 0;
  v274 = 0;
  v272 = 0;
  sub_2216CDB94(&v272, &v283, &v284, 1uLL);
  v244 = objc_msgSend_array(MEMORY[0x277CBEB18], v22, v23, v24, v25);
  v242 = objc_msgSend_zero(TSCENumberValue, v26, v27, v28, v29);
  v34 = a3;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v283 = v34;
  v284 = a4;
  v285 = 0;
  v286[0] = 1;
  *(v286 + 7) = 0;
  v287 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v288 = 0;
  v289 = 0;
  while (v35 < objc_msgSend_count(v248, v30, v31, v32, v33))
  {
    v41 = objc_msgSend_valueAtIndex_accessContext_(v248, v39, v35, &v283, v40);
    if (objc_msgSend_isError(v41, v42, v43, v44, v45))
    {
      v55 = objc_msgSend_errorWithContext_(v41, v46, v34, v47, v48);
      v15 = objc_msgSend_raiseErrorOrConvert_(v34, v170, v55, v171, v172);
      v14 = 0;
      goto LABEL_80;
    }

    v49 = objc_msgSend_deepType_(v41, v46, v34, v47, v48);
    if ((objc_msgSend_isNil(v41, v50, v51, v52, v53) & 1) == 0)
    {
      if (v49 == 3)
      {
        v270 = 0;
        v55 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v41, v54, v34, a4, 1, &v270);
        v14 = v270;
        if (v14)
        {
LABEL_77:
          v15 = objc_msgSend_raiseErrorOrConvert_(v34, v56, v14, v58, v59);
          goto LABEL_80;
        }

        if (v38)
        {
          goto LABEL_78;
        }

        objc_msgSend_timeIntervalSinceReferenceDate(v55, v56, v57, v58, v59);
        v65 = v64;
        v66 = [TSTTableSortTag alloc];
        v70 = objc_msgSend_initWithNumberOfSortRules_(v66, v67, 1, v68, v69);
        TSUDecimal::operator=();
        v74 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v71, v264, v72, v73);
        v78 = objc_msgSend_reorganizeValueForSorting_(v74, v75, v34, v76, v77);
        objc_msgSend_setReorganizeValue_atIndex_(v70, v79, v78, 0, v80);

        objc_msgSend_setColumnOrRowIndex_(v70, v81, v36, v82, v83);
        objc_msgSend_addObject_(v244, v84, v70, v85, v86);
        v87 = v279;
        if (v279 >= v280)
        {
          v120 = v278;
          v121 = v279 - v278;
          v122 = v279 - v278;
          v123 = v122 + 1;
          if ((v122 + 1) >> 61)
          {
            sub_22107C148();
          }

          v124 = v280 - v278;
          if ((v280 - v278) >> 2 > v123)
          {
            v123 = v124 >> 2;
          }

          v125 = v124 >= 0x7FFFFFFFFFFFFFF8;
          v126 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v125)
          {
            v126 = v123;
          }

          if (v126)
          {
            sub_2210874C4(&v278, v126);
          }

          *(8 * v122) = v65;
          v88 = 8 * v122 + 8;
          memcpy(0, v120, v121);
          v127 = v278;
          v278 = 0;
          v279 = v88;
          v280 = 0;
          if (v127)
          {
            operator delete(v127);
          }
        }

        else
        {
          *v279 = v65;
          v88 = (v87 + 1);
        }

        v38 = 0;
        v279 = v88;
        v37 = 1;
      }

      else
      {
        if (v49 != 5)
        {
          goto LABEL_35;
        }

        v271 = 0;
        v55 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v41, v54, v34, a4, 1, &v271);
        v14 = v271;
        if (v14)
        {
          goto LABEL_77;
        }

        if (v37)
        {
LABEL_78:
          v217 = objc_msgSend_functionName(a4, v56, v57, v58, v59);
          v221 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v211, v217, v212, v213);
          v225 = objc_msgSend_raiseErrorOrConvert_(v34, v214, v221, v215, v216);
LABEL_79:
          v15 = v225;

LABEL_80:
          goto LABEL_88;
        }

        if (v38)
        {
          if ((objc_msgSend_dimensionsMatchModuloCurrency_(v242, v56, v55, v58, v59) & 1) == 0)
          {
            v217 = objc_msgSend_functionName(a4, v60, v61, v62, v63);
            v221 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v218, v217, v219, v220);
            v225 = objc_msgSend_raiseErrorOrConvert_(v34, v222, v221, v223, v224);
            goto LABEL_79;
          }
        }

        else
        {
          v89 = v55;

          v242 = v89;
        }

        if (objc_msgSend_hasUnits(v55, v60, v61, v62, v63))
        {
          v94 = objc_msgSend_rawDecimalValue(v55, v90, v91, v92, v93);
          v98 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v95, v94, v96, v97);

          v55 = v98;
        }

        v99 = [TSTTableSortTag alloc];
        v70 = objc_msgSend_initWithNumberOfSortRules_(v99, v100, 1, v101, v102);
        v106 = objc_msgSend_reorganizeValueForSorting_(v55, v103, v34, v104, v105);
        objc_msgSend_setReorganizeValue_atIndex_(v70, v107, v106, 0, v108);

        objc_msgSend_setColumnOrRowIndex_(v70, v109, v36, v110, v111);
        objc_msgSend_addObject_(v244, v112, v70, v113, v114);
        objc_msgSend_rawDoubleValue(v55, v115, v116, v117, v118);
        v264[0] = v119;
        sub_2216BC488(&v278, v264);
        v37 = 0;
        v38 = 1;
      }

      ++v36;
    }

LABEL_35:

    ++v35;
  }

  v41 = objc_msgSend_shuffleMapForSortDirections_unsortedTags_sortDirections_(TSCEFunction_SORTBY, v39, v34, v244, &v272);
  v132 = v34;
  v133 = 0;
  v264[0] = v132;
  v264[1] = a4;
  v265 = 0;
  v266[0] = 0;
  *(v266 + 7) = 0;
  v267 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v268 = 0;
  v269 = 0;
  while (v133 < objc_msgSend_count(v245, v128, v129, v130, v131))
  {
    v136 = objc_msgSend_valueAtIndex_accessContext_(v245, v134, v133, v264, v135);
    if (objc_msgSend_isError(v136, v137, v138, v139, v140))
    {
      v150 = objc_msgSend_errorWithContext_(v136, v141, v132, v142, v143);
      v15 = objc_msgSend_raiseErrorOrConvert_(v132, v197, v150, v198, v199);
      v14 = 0;
      goto LABEL_86;
    }

    v144 = objc_msgSend_deepType_(v136, v141, v132, v142, v143);
    if ((objc_msgSend_isNil(v136, v145, v146, v147, v148) & 1) == 0)
    {
      if (v144 == 3)
      {
        v262 = 0;
        v150 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v136, v149, v132, a4, 0, &v262);
        v14 = v262;
        if (v14)
        {
LABEL_81:
          v15 = objc_msgSend_raiseErrorOrConvert_(v132, v151, v14, v153, v154);
          goto LABEL_86;
        }

        if (v38)
        {
          goto LABEL_82;
        }

        objc_msgSend_timeIntervalSinceReferenceDate(v150, v151, v152, v153, v154);
        v249 = v169;
        sub_2216BC488(&v275, &v249);
      }

      else
      {
        if (v144 != 5)
        {
          goto LABEL_52;
        }

        v263 = 0;
        v150 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v136, v149, v132, a4, 0, &v263);
        v14 = v263;
        if (v14)
        {
          goto LABEL_81;
        }

        if (v37)
        {
LABEL_82:
          v226 = objc_msgSend_functionName(a4, v151, v152, v153, v154);
          v230 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v227, v226, v228, v229);
          v234 = objc_msgSend_raiseErrorOrConvert_(v132, v231, v230, v232, v233);
          goto LABEL_85;
        }

        if ((objc_msgSend_dimensionsMatchModuloCurrency_(v242, v151, v150, v153, v154) & 1) == 0)
        {
          v226 = objc_msgSend_functionName(a4, v155, v156, v157, v158);
          v230 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v235, v226, v236, v237);
          v234 = objc_msgSend_raiseErrorOrConvert_(v132, v238, v230, v239, v240);
LABEL_85:
          v15 = v234;

LABEL_86:
          goto LABEL_87;
        }

        if (objc_msgSend_hasUnits(v150, v155, v156, v157, v158))
        {
          v163 = objc_msgSend_rawDecimalValue(v150, v159, v160, v161, v162);
          v167 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v164, v163, v165, v166);

          v150 = v167;
        }

        objc_msgSend_rawDoubleValue(v150, v159, v160, v161, v162);
        v249 = v168;
        sub_2216BC488(&v275, &v249);
      }
    }

LABEL_52:

    ++v133;
  }

  std::__sort<std::__less<double,double> &,double *>();
  v177 = objc_msgSend_count(v244, v173, v174, v175, v176);
  if ((v177 + 1) > 2)
  {
    v178 = v177 + 1;
  }

  else
  {
    v178 = 2;
  }

  v249 = 0;
  sub_2216CDC08(__p, v178);
  v183 = (v276 - v275) >> 3;
  if ((v38 | v37))
  {
    v184 = 0;
    for (i = 0; i < objc_msgSend_count(v244, v179, v180, v181, v182); ++i)
    {
      v190 = objc_msgSend_reverseMapIndex_(v41, v186, i, v188, v189);
      v191 = v183 - v184;
      if (v183 > v184)
      {
        v192 = 0;
        v193 = v278[v190];
        v194 = __p[0];
        v195 = &v275[8 * v184];
        while (*&v195[8 * v192] <= v193)
        {
          v196 = v192 + 1;
          if (v191 - 1 == v192)
          {
            v194[v190] = v196;
          }

          ++v192;
          if (v191 == v196)
          {
            v184 = v183;
            goto LABEL_68;
          }
        }

        *(__p[0] + v190) = v192;
        v184 += v192;
      }

LABEL_68:
      ;
    }

    v201 = objc_msgSend_count(v244, v186, v187, v188, v189);
    *(__p[0] + v201) = v183 - v184;
  }

  else
  {
    v200 = __p[0];
    *__p[0] = 0;
    v200[1] = v183;
  }

  v202 = 0;
  v260[0] = 1;
  v260[1] = v178;
  memset(v259, 0, sizeof(v259));
  do
  {
    TSUDecimal::operator=();
    v258 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v203, &v249, v204, v205);
    sub_2210ED5B8(v259, &v258);

    ++v202;
  }

  while (v178 != v202);
  v206 = [TSCEDenseGrid alloc];
  isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v206, v207, v259, 0, 0, v260);
  v249 = 0;
  v250 = 0;
  v251 = 0;
  v252 = v252 & 0xC080 | 0x421;
  v253 = v253 & 0xF8 | 1;
  v254 = -50266102;
  v255 = -3;
  v256 &= 0xE0u;
  v257 = 0;
  v15 = objc_msgSend_gridValue_format_(TSCEGridValue, v209, isFlattened_dimensions, &v249, v210);

  v249 = v259;
  sub_22107C2C0(&v249);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v14 = 0;
LABEL_87:

LABEL_88:
  if (v272)
  {
    v273 = v272;
    operator delete(v272);
  }

  if (v275)
  {
    v276 = v275;
    operator delete(v275);
  }

  if (v278)
  {
    v279 = v278;
    operator delete(v278);
  }

LABEL_94:

LABEL_95:

  return v15;
}

@end