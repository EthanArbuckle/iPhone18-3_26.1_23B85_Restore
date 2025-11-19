@interface TSCEFunction_LINEST
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_LINEST

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v559[0] = 0;
  v516 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, a3, a4, 0, 1, v559);
  v10 = v559[0];
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v10, v13, v14);
    goto LABEL_22;
  }

  v21 = objc_msgSend_count(v516, v11, v12, v13, v14);
  if (!v21)
  {
    v42 = objc_msgSend_linestMatrixUnderdeterminedError(TSCEError, v17, v18, v19, v20);
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v43, v42, v44, v45);

    goto LABEL_21;
  }

  if (*(a5 + 1) - *a5 < 9uLL || (objc_msgSend_isTokenOrEmptyArg(*(*a5 + 8), v17, v18, v19, v20) & 1) != 0)
  {
    v22 = 0;
    v550 = 0;
    v551 = 0;
    v552 = 0;
    do
    {
      ++v22;
      TSUDecimal::operator=();
      v557 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v23, v544, v24, v25);
      sub_2210ED5B8(&v550, &v557);
    }

    while (v21 != v22);
    if (v21 < 0xFFFF)
    {
      LODWORD(v544[0]) = 1;
      HIDWORD(v544[0]) = v21;
      v30 = [TSCEDenseGrid alloc];
      isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v30, v31, &v550, 0, 1, v544);
      v36 = objc_msgSend_gridValue_(TSCEGridValue, v33, isFlattened_dimensions, v34, v35);

      v544[0] = &v550;
      sub_22107C2C0(v544);
      v41 = 0;
      goto LABEL_15;
    }

    v46 = objc_msgSend_functionName(a4, v26, v27, v28, v29);
    v50 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v47, v46, v48, v49);
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v51, v50, v52, v53);

    v544[0] = &v550;
    sub_22107C2C0(v544);
LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v54 = *(*a5 + 8);
  v558 = 0;
  v36 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v54, v55, a3, a4, 1, 1, &v558);
  v56 = v558;
  if (v56)
  {
    v15 = v56;
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v57, v56, v58, v59);

    goto LABEL_22;
  }

  v41 = 1;
LABEL_15:
  v64 = objc_msgSend_count(v36, v37, v38, v39, v40);
  if (v64 > 0x7FFFFFFE || v21 >= 0x7FFFFFFF)
  {
    v84 = objc_msgSend_functionName(a4, v60, v61, v62, v63);
    v88 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v85, v84, v86, v87);
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v89, v88, v90, v91);

    goto LABEL_21;
  }

  v65 = objc_msgSend_dimensions(v516, v60, v61, v62, v63);
  v70 = objc_msgSend_dimensions(v36, v66, v67, v68, v69);
  v513 = malloc_type_malloc(8 * v21, 0x100004000313F17uLL);
  v514 = v36;
  v510 = malloc_type_malloc(8 * v64, 0x100004000313F17uLL);
  v71 = HIDWORD(v65);
  v550 = a3;
  v551 = a4;
  v552 = 0;
  v553[0] = 1;
  *(v553 + 7) = 0;
  v511 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v554 = v511;
  v555 = 0;
  v556 = 0;
  v515 = v550;
  v544[0] = v515;
  v544[1] = a4;
  v545 = 0;
  v546[0] = 0;
  *(v546 + 7) = 0;
  v547 = v511;
  v548 = 0;
  v549 = 0;
  v74 = v64 / v21;
  if (v64 % v21)
  {
    if (v65 != 1)
    {
      free(v513);
      free(v510);
      if (v71 == 1)
      {
        objc_msgSend_dataInvalidWidthError(TSCEError, v151, v152, v153, v154);
      }

      else
      {
        objc_msgSend_dataInvalidDimensionsError(TSCEError, v151, v152, v153, v154);
      }
      v79 = ;
      v83 = objc_msgSend_raiseErrorOrConvert_(v515, v155, v79, v156, v157);
      goto LABEL_156;
    }

    goto LABEL_19;
  }

  v93 = HIDWORD(v70);
  if (v21 != v64)
  {
    v158 = v515;
    if (v65 == 1)
    {
      if (v71 != v93)
      {
LABEL_19:
        free(v513);
        free(v510);
        v79 = objc_msgSend_dataInvalidLengthError(TSCEError, v75, v76, v77, v78);
        v83 = objc_msgSend_raiseErrorOrConvert_(v515, v80, v79, v81, v82);
LABEL_156:
        v16 = v83;

        goto LABEL_157;
      }

      v508 = v74;
      v159 = 0;
      while (1)
      {
        v160 = objc_msgSend_valueAtIndex_accessContext_(v516, v72, v159, v544, v73);
        v538 = 0;
        v163 = objc_msgSend_deepType_outError_(v160, v161, v158, &v538, v162);
        v15 = v538;
        if (v15)
        {
          free(v513);
          free(v510);
          v264 = objc_msgSend_raiseErrorOrConvert_(v515, v261, v15, v262, v263);
          goto LABEL_94;
        }

        if (v163 != 5)
        {
          free(v513);
          free(v510);
          v165 = objc_msgSend_functionName(a4, v265, v266, v267, v268);
          v271 = objc_msgSend_arrayValueNotNumberErrorForFunctionName_argumentNumber_(TSCEError, v269, v165, 1, v270);
          v16 = objc_msgSend_raiseErrorOrConvert_(v515, v272, v271, v273, v274);
          goto LABEL_171;
        }

        v537 = 0;
        v165 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v160, v164, v515, a4, 0, &v537);
        v15 = v537;
        if (v15)
        {
          break;
        }

        if (objc_msgSend_hasUnits(v165, v166, v167, v168, v169) && !objc_msgSend_dimension(v165, v170, v171, v172, v173))
        {
          free(v513);
          free(v510);
          v271 = objc_msgSend_functionName(a4, v444, v445, v446, v447);
          v431 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v448, v271, 1, v449);
          v435 = objc_msgSend_raiseErrorOrConvert_(v515, v450, v431, v451, v452);
          goto LABEL_170;
        }

        objc_msgSend_doubleRepresentation(v165, v170, v171, v172, v173);
        *(v513 + v159) = v174;

        ++v159;
        v158 = v515;
        if (v21 == v159)
        {
          for (i = 0; ; ++i)
          {
            if (i >= objc_msgSend_dimensions(v514, v72, v175, v176, v73))
            {
              goto LABEL_104;
            }

            v182 = 0;
            v183 = i;
            while (v182 < objc_msgSend_dimensions(v514, v178, v179, v180, v181) >> 32)
            {
              v160 = objc_msgSend_valueAtGridCoord_accessContext_(v514, v72, v183, &v550, v73);
              if (objc_msgSend_deepType_(v160, v184, v515, v185, v186) != 5)
              {
                free(v513);
                free(v510);
                v328 = objc_msgSend_functionName(a4, v457, v458, v459, v460);
                v331 = objc_msgSend_arrayValueNotNumberErrorForFunctionName_argumentNumber_(TSCEError, v461, v328, 2, v462);
                v335 = objc_msgSend_raiseErrorOrConvert_(v515, v463, v331, v464, v465);
LABEL_167:
                v16 = v335;

LABEL_157:
                v15 = 0;
                goto LABEL_158;
              }

              v536 = 0;
              v165 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v160, v187, v515, a4, 2, &v536);
              v15 = v536;
              if (v15)
              {
                free(v513);
                free(v510);
                v278 = objc_msgSend_raiseErrorOrConvert_(v515, v466, v15, v467, v468);
                goto LABEL_178;
              }

              if (objc_msgSend_isDuration(v165, v188, v189, v190, v191))
              {
                free(v513);
                free(v510);
                v271 = objc_msgSend_functionName(a4, v469, v470, v471, v472);
                v431 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v473, v271, 2, v474);
                v435 = objc_msgSend_raiseErrorOrConvert_(v515, v475, v431, v476, v477);
LABEL_170:
                v16 = v435;

LABEL_171:
LABEL_179:

                goto LABEL_180;
              }

              objc_msgSend_doubleRepresentation(v165, v192, v193, v194, v195);
              *(v510 + (v182 + i * (objc_msgSend_dimensions(v514, v196, v197, v198, v199) >> 32))) = v200;

              ++v182;
              v183 += 0x100000000;
            }
          }
        }
      }

      free(v513);
      free(v510);
      v278 = objc_msgSend_raiseErrorOrConvert_(v515, v275, v15, v276, v277);
    }

    else
    {
      if (v71 != 1)
      {
LABEL_85:
        free(v513);
        free(v510);
        v79 = objc_msgSend_dataInvalidDimensionsError(TSCEError, v241, v242, v243, v244);
        v83 = objc_msgSend_raiseErrorOrConvert_(v515, v245, v79, v246, v247);
        goto LABEL_156;
      }

      if (v65 != v70)
      {
        free(v513);
        free(v510);
        v79 = objc_msgSend_dataInvalidWidthError(TSCEError, v248, v249, v250, v251);
        v83 = objc_msgSend_raiseErrorOrConvert_(v515, v252, v79, v253, v254);
        goto LABEL_156;
      }

      v508 = v74;
      v201 = 0;
      while (1)
      {
        v160 = objc_msgSend_valueAtIndex_accessContext_(v516, v72, v201, v544, v73);
        if (objc_msgSend_deepType_(v160, v202, v158, v203, v204) != 5)
        {
          free(v513);
          free(v510);
          v328 = objc_msgSend_functionName(a4, v324, v325, v326, v327);
          v331 = objc_msgSend_arrayValueNotNumberErrorForFunctionName_argumentNumber_(TSCEError, v329, v328, 1, v330);
          v335 = objc_msgSend_raiseErrorOrConvert_(v515, v332, v331, v333, v334);
          goto LABEL_167;
        }

        v535 = 0;
        v165 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v160, v205, v158, a4, 1, &v535);
        v15 = v535;
        if (v15)
        {
          break;
        }

        if (objc_msgSend_isDuration(v165, v206, v207, v208, v209))
        {
          free(v513);
          free(v510);
          v271 = objc_msgSend_functionName(a4, v425, v426, v427, v428);
          v431 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v429, v271, 1, v430);
          v435 = objc_msgSend_raiseErrorOrConvert_(v515, v432, v431, v433, v434);
          goto LABEL_170;
        }

        objc_msgSend_doubleRepresentation(v165, v210, v211, v212, v213);
        *(v513 + v201) = v214;

        ++v201;
        v158 = v515;
        if (v21 == v201)
        {
          v217 = 0;
          for (j = 0; ; ++j)
          {
            if (j >= objc_msgSend_dimensions(v514, v72, v215, v216, v73) >> 32)
            {
              goto LABEL_104;
            }

            for (k = 0; k < objc_msgSend_dimensions(v514, v219, v220, v221, v222); ++k)
            {
              v160 = objc_msgSend_valueAtGridCoord_accessContext_(v514, v72, v217 + k, &v550, v73);
              if (objc_msgSend_deepType_(v160, v224, v515, v225, v226) != 5)
              {
                free(v513);
                free(v510);
                v487 = objc_msgSend_functionName(a4, v483, v484, v485, v486);
                v490 = objc_msgSend_arrayValueNotNumberErrorForFunctionName_argumentNumber_(TSCEError, v488, v487, 2, v489);
                v16 = objc_msgSend_raiseErrorOrConvert_(v515, v491, v490, v492, v493);

                v15 = 0;
                goto LABEL_158;
              }

              v534 = 0;
              v165 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v160, v227, v515, a4, 2, &v534);
              v15 = v534;
              if (v15)
              {
                free(v513);
                free(v510);
                v278 = objc_msgSend_raiseErrorOrConvert_(v515, v494, v15, v495, v496);
                goto LABEL_178;
              }

              if (objc_msgSend_isDuration(v165, v228, v229, v230, v231))
              {
                free(v513);
                free(v510);
                v501 = objc_msgSend_functionName(a4, v497, v498, v499, v500);
                v504 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v502, v501, 2, v503);
                v16 = objc_msgSend_raiseErrorOrConvert_(v515, v505, v504, v506, v507);

                goto LABEL_179;
              }

              objc_msgSend_doubleRepresentation(v165, v232, v233, v234, v235);
              *(v510 + k + j * objc_msgSend_dimensions(v514, v236, v237, v238, v239)) = v240;
            }

            v217 += 0x100000000;
          }
        }
      }

      free(v513);
      free(v510);
      v278 = objc_msgSend_raiseErrorOrConvert_(v515, v422, v15, v423, v424);
    }

LABEL_178:
    v16 = v278;
    goto LABEL_179;
  }

  v94 = v515;
  if ((v41 & 1) != 0 && (v70 != v65 || v93 != v71))
  {
    goto LABEL_85;
  }

  v508 = v74;
  v95 = 0;
  while (1)
  {
    v96 = objc_msgSend_valueAtIndex_accessContext_(v516, v72, v95, v544, v73);
    v512 = objc_msgSend_valueAtIndex_accessContext_(v514, v97, v95, &v550, v98);
    if (objc_msgSend_isError(v96, v99, v100, v101, v102))
    {
      objc_msgSend_errorWithContext_(v96, v103, v94, v105, v106);
      v15 = LABEL_89:;
      goto LABEL_102;
    }

    if (objc_msgSend_isError(v512, v103, v104, v105, v106))
    {
      objc_msgSend_errorWithContext_(v512, v107, v94, v108, v109);
      goto LABEL_89;
    }

    v543 = 0;
    v110 = v96;
    v111 = objc_msgSend_deepType_outError_(v96, v107, v94, &v543, v109);
    v112 = v94;
    v113 = v111;
    v114 = v543;
    v542 = v114;
    v117 = objc_msgSend_deepType_outError_(v512, v115, v112, &v542, v116);
    v118 = v542;

    if (v118)
    {
      v15 = v118;
      v94 = v515;
      v96 = v110;
      goto LABEL_102;
    }

    if (v113 != 5)
    {
      v96 = v110;
      v123 = objc_msgSend_functionName(a4, v119, v120, v121, v122);
      v124 = objc_msgSend_arrayValueNotNumberErrorForFunctionName_argumentNumber_(TSCEError, v255, v123, 1, v256);
LABEL_98:
      v15 = v124;
      goto LABEL_101;
    }

    v541 = 0;
    v96 = v110;
    v123 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v110, v119, v515, a4, 0, &v541);
    v124 = v541;
    if (v124)
    {
      goto LABEL_98;
    }

    if (objc_msgSend_isDuration(v123, v125, v126, v127, v128))
    {
      v257 = objc_msgSend_functionName(a4, v129, v130, v131, v132);
      v260 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v258, v257, 1, v259);
      goto LABEL_100;
    }

    objc_msgSend_doubleRepresentation(v123, v129, v130, v131, v132);
    *(v513 + v95) = v133;

    if (v117 != 3)
    {
      break;
    }

    v539 = 0;
    v123 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v512, v134, v515, a4, 1, &v539);
    v124 = v539;
    if (v124)
    {
      goto LABEL_98;
    }

    objc_msgSend_timeIntervalSinceReferenceDate(v123, v146, v147, v148, v149);
    v145 = v150 / 86400.0;
LABEL_43:
    *(v510 + v95) = v145;

    ++v95;
    v94 = v515;
    if (v21 == v95)
    {
      goto LABEL_104;
    }
  }

  if (v117 != 5)
  {
    v123 = objc_msgSend_functionName(a4, v134, v515, v135, v136);
    v124 = objc_msgSend_arrayValueNotNumberErrorForFunctionName_argumentNumber_(TSCEError, v279, v123, 2, v280);
    goto LABEL_98;
  }

  v540 = 0;
  v123 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v512, v134, v515, a4, 1, &v540);
  v124 = v540;
  if (v124)
  {
    goto LABEL_98;
  }

  if (!objc_msgSend_isDuration(v123, v137, v138, v139, v140))
  {
    objc_msgSend_doubleRepresentation(v123, v141, v142, v143, v144);
    goto LABEL_43;
  }

  v257 = objc_msgSend_functionName(a4, v141, v142, v143, v144);
  v260 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v281, v257, 2, v282);
LABEL_100:
  v15 = v260;

LABEL_101:
  v94 = v515;
LABEL_102:

  if (v15)
  {
    free(v513);
    free(v510);
    v16 = objc_msgSend_raiseErrorOrConvert_(v94, v283, v15, v284, v285);
    goto LABEL_158;
  }

LABEL_104:
  if (*(a5 + 1) - *a5 < 0x11uLL)
  {
    v306 = 0;
    goto LABEL_115;
  }

  v286 = *(*a5 + 16);
  if ((objc_msgSend_isTokenOrEmptyArg(v286, v287, v288, v289, v290) & 1) != 0 || objc_msgSend_nativeType(v286, v291, v292, v293, v294) == 10)
  {
    v296 = 0;
    goto LABEL_108;
  }

  v533 = 0;
  v319 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v286, v295, v515, a4, 2, &v533);
  v320 = v533;
  if (v320)
  {
    v15 = v320;
    free(v513);
    free(v510);
    v16 = objc_msgSend_raiseErrorOrConvert_(v515, v321, v15, v322, v323);

    goto LABEL_158;
  }

  v296 = v319 ^ 1;
LABEL_108:

  if (*(a5 + 1) - *a5 < 0x19uLL)
  {
    v306 = 0;
    if (v296)
    {
LABEL_119:
      if (v21 < v508)
      {
LABEL_120:
        free(v513);
        free(v510);
        v79 = objc_msgSend_linestMatrixUnderdeterminedError(TSCEError, v312, v313, v314, v315);
        v83 = objc_msgSend_raiseErrorOrConvert_(v515, v316, v79, v317, v318);
        goto LABEL_156;
      }

      v336 = objc_alloc(MEMORY[0x277D81220]);
      inited = objc_msgSend_initNonAffineWithMappings_xs_ys_xDimension_desiredIntercept_(v336, v337, v21, v510, v513, v508, 0.0);
      v310 = v508;
      v311 = 1;
LABEL_125:
      free(v513);
      free(v510);
      v346 = objc_msgSend_errorType(inited, v338, v339, v340, v341);
      if (v346)
      {

        if (v346 == 6)
        {
          objc_msgSend_linestHighlyCorrelatedVariableError(TSCEError, v347, v348, v349, v350);
        }

        else
        {
          objc_msgSend_numberError(TSCEError, v347, v348, v349, v350);
        }
        v79 = ;
        v83 = objc_msgSend_raiseErrorOrConvert_(v515, v351, v79, v352, v353);
        goto LABEL_156;
      }

      memset(v531, 0, sizeof(v531));
      v354 = v310 - 1;
      v509 = v310;
      if (v311)
      {
        v355 = v310 - 1;
      }

      else
      {
        v355 = v310;
      }

      if ((v355 & 0x8000000000000000) == 0)
      {
        v356 = v355;
        do
        {
          objc_msgSend_coefficientAtIndex_(inited, v342, v356, v344, v345);
          TSUDecimal::operator=();
          v360 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v357, v530, v358, v359);
          v529 = v360;
          sub_2210ED5B8(v531, &v529);

          v361 = v356-- <= 0;
        }

        while (!v361);
      }

      if (v311)
      {
        v528 = objc_msgSend_zero(TSCENumberValue, v342, v343, v344, v345);
        sub_2210ED5B8(v531, &v528);
      }

      if (v306)
      {
        v362 = objc_msgSend_errorForErrorType_(TSCEError, v342, 84, v344, v345);
        v366 = objc_msgSend_errorValue_(TSCEErrorValue, v363, v362, v364, v365);

        if ((v355 & 0x8000000000000000) == 0)
        {
          do
          {
            objc_msgSend_coefficientStandardErrorAtIndex_(inited, v367, v355, v369, v370);
            TSUDecimal::operator=();
            v374 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v371, v530, v372, v373);
            v527 = v374;
            sub_2210ED5B8(v531, &v527);

            v361 = v355-- <= 0;
          }

          while (!v361);
        }

        if (v311)
        {
          v526 = v366;
          sub_2210ED5B8(v531, &v526);
        }

        objc_msgSend_rSquared(inited, v367, v368, v369, v370);
        TSUDecimal::operator=();
        v525 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v375, v530, v376, v377);
        sub_2210ED5B8(v531, &v525);

        objc_msgSend_standardError(inited, v378, v379, v380, v381);
        TSUDecimal::operator=();
        v524 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v382, v530, v383, v384);
        sub_2210ED5B8(v531, &v524);

        if (v354)
        {
          for (m = 0; m < v354; ++m)
          {
            v523 = v366;
            sub_2210ED5B8(v531, &v523);
          }
        }

        objc_msgSend_fStatistic(inited, v385, v386, v387, v388);
        TSUDecimal::operator=();
        v522 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v390, v530, v391, v392);
        sub_2210ED5B8(v531, &v522);

        objc_msgSend_degreesFreedom(inited, v393, v394, v395, v396);
        TSUDecimal::operator=();
        v521 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v397, v530, v398, v399);
        sub_2210ED5B8(v531, &v521);

        if (v354)
        {
          for (n = 0; n < v354; ++n)
          {
            v520 = v366;
            sub_2210ED5B8(v531, &v520);
          }
        }

        objc_msgSend_regressionSumSquares(inited, v400, v401, v402, v403);
        TSUDecimal::operator=();
        v519 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v405, v530, v406, v407);
        sub_2210ED5B8(v531, &v519);

        objc_msgSend_errorSumSquares(inited, v408, v409, v410, v411);
        TSUDecimal::operator=();
        v518 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v412, v530, v413, v414);
        sub_2210ED5B8(v531, &v518);
        v415 = v509;

        if (v354)
        {
          for (ii = 0; ii < v354; ++ii)
          {
            v517 = v366;
            sub_2210ED5B8(v531, &v517);
          }
        }

        if (v509 <= 0xFFFD)
        {
          v421 = 5;
LABEL_174:
          LODWORD(v530[0]) = v415 + 1;
          HIDWORD(v530[0]) = v421;
          v478 = [TSCEDenseGrid alloc];
          v436 = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v478, v479, v531, 0, 0, v530);
          v16 = objc_msgSend_gridValue_(TSCEGridValue, v480, v436, v481, v482);
          goto LABEL_175;
        }
      }

      else
      {

        v415 = v509;
        if (v509 < 0xFFFE)
        {
          v421 = 1;
          goto LABEL_174;
        }
      }

      v436 = objc_msgSend_functionName(a4, v417, v418, v419, v420);
      v440 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v437, v436, v438, v439);
      v16 = objc_msgSend_raiseErrorOrConvert_(v515, v441, v440, v442, v443);

LABEL_175:
      v530[0] = v531;
      sub_22107C2C0(v530);
      goto LABEL_157;
    }

LABEL_115:
    if (v21 <= v508)
    {
      goto LABEL_120;
    }

    v307 = objc_alloc(MEMORY[0x277D81220]);
    inited = objc_msgSend_initAffineWithMappings_xs_ys_xDimension_(v307, v308, v21, v510, v513, v508);
    v310 = v508;
    v311 = 0;
    goto LABEL_125;
  }

  v160 = *(*a5 + 24);
  if ((objc_msgSend_isTokenOrEmptyArg(v160, v297, v298, v299, v300) & 1) != 0 || objc_msgSend_nativeType(v160, v301, v302, v303, v304) == 10)
  {
    v306 = 0;
    goto LABEL_112;
  }

  v532 = 0;
  v306 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v160, v305, v515, a4, 3, &v532);
  v453 = v532;
  if (!v453)
  {
LABEL_112:

    if (v296)
    {
      goto LABEL_119;
    }

    goto LABEL_115;
  }

  v15 = v453;
  free(v513);
  free(v510);
  v264 = objc_msgSend_raiseErrorOrConvert_(v515, v454, v15, v455, v456);
LABEL_94:
  v16 = v264;
LABEL_180:

LABEL_158:
LABEL_22:

  return v16;
}

@end