@interface TSCEFunction_INDIRECT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)indirectValueWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_INDIRECT

+ (id)indirectValueWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v419 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v8 = **arguments;
  v415 = 0;
  v390 = v8;
  v391 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v9, contextCopy, spec, 0, &v415);
  v10 = v415;
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v11, v10, v13, v14);
    goto LABEL_127;
  }

  if (*(arguments + 1) - *arguments >= 9uLL)
  {
    v17 = *(*arguments + 8);
    if ((objc_msgSend_isTokenOrEmptyArg(v17, v18, v19, v20, v21) & 1) == 0)
    {
      v414 = 0;
      v63 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v17, v22, contextCopy, spec, 1, &v414);
      v64 = v414;
      if (v64)
      {
        v15 = v64;
        v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v65, v64, v66, v67);

        goto LABEL_127;
      }

      if (v391)
      {
        v413 = 0;
        if (!v63)
        {
          v102 = objc_msgSend_calcEngine(contextCopy, v11, v12, v13, v14);
          v107 = objc_msgSend_refParser(v102, v103, v104, v105, v106);
          v112 = objc_msgSend_containingCell(contextCopy, v108, v109, v110, v111);
          v117 = objc_msgSend_containingTable(contextCopy, v113, v114, v115, v116);
          v416.range._topLeft = *v112;
          *&v416.range._bottomRight.row = *v117;
          if (v107)
          {
            objc_msgSend_parseR1C1Reference_containingCell_preserveFlagsOut_(v107, v118, v391, &v416, &v413);
            v387 = *v397;
            v388 = *&v397[16];
          }

          else
          {
            memset(v397, 0, 32);
            v387 = 0u;
            v388 = 0u;
          }

          goto LABEL_65;
        }

        goto LABEL_8;
      }

LABEL_34:
      v119 = objc_msgSend_invalidReferenceError(TSCEError, v11, v12, v13, v14);
      v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v120, v119, v121, v122);

      v15 = 0;
      goto LABEL_127;
    }
  }

  if (!v391)
  {
    goto LABEL_34;
  }

  v413 = 0;
LABEL_8:
  v23 = objc_msgSend_calcEngine(contextCopy, v11, v12, v13, v14);
  v28 = objc_msgSend_containingTable(contextCopy, v24, v25, v26, v27);
  v389 = objc_msgSend_tableResolverForTableUID_(v23, v29, v28, v30, v31);

  v32 = [TSCEReferenceParsingContext alloc];
  v36 = objc_msgSend_initWithContextTableResolver_(v32, v33, v389, v34, v35);
  objc_msgSend_setTrimNames_(v36, v37, 1, v38, v39);
  objc_msgSend_setReferenceIsComplete_(v36, v40, 1, v41, v42);
  objc_msgSend_setParseAsBaseTableReference_(v36, v43, 1, v44, v45);
  v46 = objc_opt_new();
  objc_msgSend_setReferencesMatchingInputAsPrefix_(v36, v47, v46, v48, v49);

  v54 = objc_msgSend_calcEngine(contextCopy, v50, v51, v52, v53);
  v59 = objc_msgSend_refParser(v54, v55, v56, v57, v58);
  v62 = v59;
  if (v59)
  {
    objc_msgSend_parseStringAsBaseReference_withParsingContext_(v59, v60, v391, v36, v61);
    v387 = *v397;
    v388 = *&v397[16];
  }

  else
  {
    memset(v397, 0, 32);
    v387 = 0u;
    v388 = 0u;
  }

  v68 = v389;
  v73 = objc_msgSend_namesUsed(v36, v69, v70, v71, v72);
  v78 = objc_msgSend_referencesMatchingInputAsPrefix(v36, v74, v75, v76, v77);
  v83 = v78;
  if (!v73 || objc_msgSend_count(v78, v79, v80, v81, v82) < 2)
  {
    goto LABEL_52;
  }

  v411 = 0u;
  v412 = 0u;
  v409 = 0u;
  v410 = 0u;
  v84 = v83;
  v385 = v83;
  v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, &v409, v418, 16);
  if (!v90)
  {

    v68 = v389;
    goto LABEL_36;
  }

  v91 = 0;
  v92 = *v410;
  do
  {
    for (i = 0; i != v90; ++i)
    {
      if (*v410 != v92)
      {
        objc_enumerationMutation(v84);
      }

      v94 = objc_msgSend_tableUID(*(*(&v409 + 1) + 8 * i), v86, v87, v88, v89);
      v96 = v95;
      v100 = objc_msgSend_containingTable(contextCopy, v95, v97, v98, v99);
      v101 = v94 == *v100 && v96 == v100[1];
      if (v101)
      {
        ++v91;
      }
    }

    v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v86, &v409, v418, 16);
  }

  while (v90);

  v101 = v91 == 1;
  v68 = v389;
  v83 = v385;
  if (v101)
  {
LABEL_52:
    v413 = objc_msgSend_preserveFlags(v36, v79, v80, v81, v82);
    if (v68)
    {
      v165 = v73;
    }

    else
    {
      v165 = 0;
    }

    if (v165 == 1)
    {
      v386 = v83;
      v166 = objc_msgSend_containingCell(contextCopy, v161, v162, v163, v164);
      v167 = *v166;
      v168 = *(v166 + 4);
      v173 = objc_msgSend_bodyRangeCoordinate(v68, v169, v170, v171, v172);
      v178 = v168 >= WORD2(v173);
      v83 = v386;
      if (!v178 || v167 < v173)
      {
        v192 = objc_msgSend_circularReferenceError(TSCEError, v174, v175, v176, v177);
        v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v193, v192, v194, v195);

        v15 = 0;
LABEL_125:
        v240 = v389;
        goto LABEL_126;
      }
    }

    goto LABEL_59;
  }

LABEL_36:
  if (!objc_msgSend_namesUsed(v36, v79, v80, v81, v82))
  {
    goto LABEL_52;
  }

  if (!v68)
  {
    v387 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v388 = 0u;
    goto LABEL_59;
  }

  v127 = objc_msgSend_sheetName(v36, v79, v80, v81, v82);
  if (v127)
  {
    goto LABEL_135;
  }

  v128 = objc_msgSend_tableName(v36, v123, v124, v125, v126);
  v129 = v128 == 0;

  if (!v129)
  {
    v127 = objc_msgSend_sheetName(v389, v130, v131, v132, v133);
    v407 = 0u;
    v408 = 0u;
    v405 = 0u;
    v406 = 0u;
    obj = v84;
    v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v134, &v405, v417, 16);
    if (v139)
    {
      v140 = 0;
      v384 = *v406;
      while (2)
      {
        for (j = 0; j != v139; ++j)
        {
          if (*v406 != v384)
          {
            objc_enumerationMutation(obj);
          }

          v142 = *(*(&v405 + 1) + 8 * j);
          v143 = objc_msgSend_calcEngine(contextCopy, v135, v136, v137, v138);
          *v397 = objc_msgSend_tableUID(v142, v144, v145, v146, v147);
          *&v397[8] = v148;
          v151 = objc_msgSend_tableResolverForTableUID_(v143, v148, v397, v149, v150);

          if (v151)
          {
            v156 = objc_msgSend_sheetName(v151, v152, v153, v154, v155);
            isEqualToString = objc_msgSend_isEqualToString_(v156, v157, v127, v158, v159);

            if (isEqualToString)
            {
              if (++v140 > 1)
              {

                goto LABEL_134;
              }
            }
          }
        }

        v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v135, &v405, v417, 16);
        if (v139)
        {
          continue;
        }

        break;
      }

      if (v140 == 1)
      {

        v68 = v389;
        v83 = v385;
        goto LABEL_52;
      }
    }

    else
    {
LABEL_134:
    }

LABEL_135:
  }

  v387 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v388 = 0u;
  v83 = v385;
LABEL_59:

  if (v73)
  {
    v183 = objc_msgSend_calcEngine(contextCopy, v179, v180, v181, v182);
    v188 = objc_msgSend_headerNameMgr(v183, v184, v185, v186, v187);

    if (v188)
    {
      objc_msgSend_nameFragmentPrecedentsForReferenceString_(v188, v189, v391, v190, v191);
    }

    else
    {
      memset(&v416, 0, 24);
    }

    v403[0] = MEMORY[0x277D85DD0];
    v403[1] = 3221225472;
    v403[2] = sub_22146DD80;
    v403[3] = &unk_27845FBD8;
    v196 = contextCopy;
    v404 = v196;
    TSCECellRefSet::enumerateCellRefsUsingBlock(&v416, v403);
    v201 = objc_msgSend_calcEngine(v196, v197, v198, v199, v200);
    v206 = objc_msgSend_namedReferenceManager(v201, v202, v203, v204, v205);
    v396.coordinate = objc_msgSend_formulaOwnerUID(v206, v207, v208, v209, v210);
    v396._tableUID._lower = v211;
    TSCEAnyRef::TSCEAnyRef(v397, 3, &v396);

    objc_msgSend_addCalculatedPrecedent_(v196, v212, v397, v213, v214);
    sub_22107C800(&v416, *&v416.range._bottomRight);
  }

LABEL_65:
  v215 = v387.i64[0] & 0xFFFF00000000;
  if (v387.u32[0] == 0x7FFFFFFFLL || v215 == 0x7FFF00000000)
  {
    v216 = v387.i64[1] & 0xFFFF00000000;
  }

  else
  {
    v216 = v387.i64[1] & 0xFFFF00000000;
    if (v387.i32[2] != 0x7FFFFFFF && v216 != 0x7FFF00000000 && v387.u16[2] <= v387.u16[6] && v387.i32[0] <= v387.i32[2])
    {
      goto LABEL_84;
    }
  }

  if (v387.u32[0] != 0x7FFFFFFFLL && v215 == 0x7FFF00000000 && v216 == 0x7FFF00000000)
  {
    if (v387.i32[2] == 0x7FFFFFFF || v387.i32[0] > v387.i32[2])
    {
      goto LABEL_88;
    }
  }

  else if (v387.u32[0] != 0x7FFFFFFFLL || v215 == 0x7FFF00000000 || v216 == 0x7FFF00000000 || v387.i32[2] != 0x7FFFFFFF || v387.u16[2] > v387.u16[6])
  {
LABEL_88:
    v257 = objc_msgSend_calcEngine(contextCopy, v179, v180, v181, v182);
    v262 = objc_msgSend_containingTable(contextCopy, v258, v259, v260, v261);
    v389 = objc_msgSend_tableResolverForTableUID_(v257, v263, v262, v264, v265);

    v266 = [TSCEReferenceParsingContext alloc];
    v270 = objc_msgSend_initWithContextTableResolver_(v266, v267, v389, v268, v269);
    objc_msgSend_setTrimNames_(v270, v271, 1, v272, v273);
    objc_msgSend_setReferenceIsComplete_(v270, v274, 1, v275, v276);
    objc_msgSend_setParseAsBaseTableReference_(v270, v277, 1, v278, v279);
    v284 = objc_msgSend_calcEngine(contextCopy, v280, v281, v282, v283);
    v289 = objc_msgSend_refParser(v284, v285, v286, v287, v288);
    v292 = objc_msgSend_parseStringAsCategoryRef_withParsingContext_(v289, v290, v391, v270, v291);

    v297 = objc_msgSend_groupByUid(v292, v293, v294, v295, v296);
    if (!(v297 | v298))
    {
LABEL_117:

      if (*&v388 != 0)
      {
        v395 = v388;
        objc_msgSend_geometryPrecedentForTableUID_(TSCEHauntedOwner, v364, &v395, v366, v367);
        *v397 = 0;
        TSCERangeRef::TSCERangeRef(&v416, &v396);
        *&v397[8] = v416;
        v398 = 0;
        v402 = 0;
        v399 = 0;
        v400 = 0;
        v401 = 0;
        objc_msgSend_addCalculatedPrecedent_(contextCopy, v368, v397, v369, v370);
      }

      v240 = objc_msgSend_invalidReferenceError(TSCEError, v364, v365, v366, v367);
      v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v371, v240, v372, v373);
LABEL_120:
      v15 = 0;
      goto LABEL_126;
    }

    v302 = v389;
    v307 = objc_msgSend_type(v292, v298, v299, v300, v301);
    if (v307 == 11)
    {
      v308 = objc_msgSend_calcEngine(contextCopy, v303, v304, v305, v306);
      v307 = objc_msgSend_aggregateTypeForCategoryRef_(v308, v309, v292, v310, v311);

      v302 = v389;
    }

    objc_msgSend_addCalculatedPrecedentForCategoryRef_(contextCopy, v303, v292, v305, v306);
    if (v302)
    {
      *v397 = objc_msgSend_groupByUid(v292, v312, v313, v314, v315);
      *&v397[8] = v316;
      objc_msgSend_indirectAggTypeChangePrecedent_(v302, v316, v397, v317, v318);
      *v397 = 0;
      TSCERangeRef::TSCERangeRef(&v416, &v396);
      *&v397[8] = v416;
      v398 = 0;
      v402 = 0;
      v399 = 0;
      v400 = 0;
      v401 = 0;
      objc_msgSend_addCalculatedPrecedent_(contextCopy, v319, v397, v320, v321);
    }

    if (v307 == 10)
    {
      v395 = 0uLL;
      v322 = objc_msgSend_relativeGroupUid(v292, v312, v313, v314, v315);
      if (v322 | v323)
      {
        v395.i64[0] = objc_msgSend_containingRowUid(contextCopy, v323, v324, v325, v326);
        v395.i64[1] = v323;
      }

      v327 = objc_msgSend_calcEngine(contextCopy, v323, v324, v325, v326);
      v16 = v327;
      if (v327)
      {
        objc_msgSend_cellRefsForCategoryRef_atRowUid_(v327, v328, v292, &v395, v329);
      }

      else
      {
        memset(&v416, 0, 24);
      }

      topLeft = v416.range._topLeft;
      bottomRight = v416.range._bottomRight;
      if (*&v416.range._bottomRight == *&v416.range._topLeft)
      {
        v363 = v416.range._topLeft;
      }

      else
      {
        v394 = 0;
        memset(&v396, 0, sizeof(v396));
        v347 = v416.range._topLeft;
        do
        {
          v348 = **&v347;
          v349 = [TSCEReferenceValue alloc];
          v350 = *(*&v347 + 8);
          *v397 = v348;
          *&v397[8] = v348;
          *&v397[16] = v350;
          v352 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v349, v351, contextCopy, v397, &v394);
          objc_msgSend_setIsOutputOfAFunction_(v352, v353, 1, v354, v355);
          v356 = v352;
          v393 = v356;
          sub_2210ED5B8(&v396, &v393);

          *&v347 += 24;
        }

        while (v347 != bottomRight);
        v357 = [TSCEDenseGrid alloc];
        *v397 = 1;
        *&v397[4] = (v396._tableUID._lower - *&v396.coordinate) >> 3;
        isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v357, v358, &v396, 0, 1, v397);
        v16 = objc_msgSend_gridValue_(TSCEGridValue, v360, isFlattened_dimensions, v361, v362);

        *v397 = &v396;
        sub_22107C2C0(v397);
        v363 = v416.range._topLeft;
      }

      if (v363)
      {
        v416.range._bottomRight = v363;
        operator delete(v363);
      }

      if (bottomRight != topLeft)
      {
        v15 = 0;
LABEL_124:

        goto LABEL_125;
      }

      goto LABEL_117;
    }

    v416.range._topLeft = 0;
    v416.range._bottomRight = 0;
    v330 = objc_msgSend_relativeGroupUid(v292, v312, v313, v314, v315);
    if (v330 | *&v331)
    {
      v416.range._topLeft = objc_msgSend_containingRowUid(contextCopy, *&v331, v332, v333, v334);
      v416.range._bottomRight = v331;
    }

    v335 = objc_msgSend_calcEngine(contextCopy, *&v331, v332, v333, v334);
    v340 = objc_msgSend_hidingActionMask(contextCopy, v336, v337, v338, v339);
    v392 = 0;
    if (v335)
    {
      objc_msgSend_valuesForCategoryRef_atRowUid_hidingActionMask_error_(v335, v341, v292, &v416, v340, &v392);
      v15 = v392;

      if (v15)
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v342, v15, v343, v344);
LABEL_123:
        v396.coordinate = v397;
        sub_22107C2C0(&v396);
        goto LABEL_124;
      }
    }

    else
    {
      memset(v397, 0, 24);
    }

    if (*&v397[8] - *v397 == 8)
    {
      v16 = **v397;
    }

    else
    {
      v374 = [TSCEDenseGrid alloc];
      v378 = objc_msgSend_initWithValues_(v374, v375, v397, v376, v377);
      v16 = objc_msgSend_gridValue_(TSCEGridValue, v379, v378, v380, v381);
    }

    v15 = 0;
    goto LABEL_123;
  }

LABEL_84:
  v217 = vmovn_s64(vtstq_s64(v388, v388));
  if (((v217.i32[0] | v217.i32[1]) & 1) == 0)
  {
    goto LABEL_88;
  }

  v218 = [TSCEReferenceValue alloc];
  *v397 = v387;
  *&v397[16] = v388;
  v16 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v218, v219, contextCopy, v397, &v413);
  objc_msgSend_setIsOutputOfAFunction_(v16, v220, 1, v221, v222);
  *v397 = 1;
  *&v397[8] = v387;
  *&v397[24] = v388;
  v398 = 0;
  v402 = 0;
  v399 = 0;
  v400 = 0;
  v401 = 0;
  objc_msgSend_addCalculatedPrecedent_(contextCopy, v223, v397, v224, v225);

  v395 = v388;
  objc_msgSend_sheetTableNamePrecedentForTableUID_(TSCEHauntedOwner, v226, &v395, v227, v228);
  *v397 = 0;
  TSCERangeRef::TSCERangeRef(&v416, &v396);
  *&v397[8] = v416;
  v398 = 0;
  v402 = 0;
  v399 = 0;
  v400 = 0;
  v401 = 0;
  objc_msgSend_addCalculatedPrecedent_(contextCopy, v229, v397, v230, v231);

  v236 = objc_msgSend_calcEngine(contextCopy, v232, v233, v234, v235);
  *v397 = v388;
  v240 = objc_msgSend_tableResolverForTableUID_(v236, v237, v397, v238, v239);

  if (v240)
  {
    if (objc_msgSend_isPivotTable(v240, v241, v242, v243, v244))
    {
      v395 = v388;
      objc_msgSend_pivotRulesChangedPrecedentForTableUID_(TSCEHauntedOwner, v245, &v395, v246, v247);
      *v397 = 0;
      TSCERangeRef::TSCERangeRef(&v416, &v396);
      *&v397[8] = v416;
      v398 = 0;
      v402 = 0;
      v399 = 0;
      v400 = 0;
      v401 = 0;
      objc_msgSend_addCalculatedPrecedent_(contextCopy, v248, v397, v249, v250);

      v395 = v388;
      objc_msgSend_pivotSortChangedPrecedentForTableUID_(TSCEHauntedOwner, v251, &v395, v252, v253);
      *v397 = 0;
      TSCERangeRef::TSCERangeRef(&v416, &v396);
      *&v397[8] = v416;
      v398 = 0;
      v402 = 0;
      v399 = 0;
      v400 = 0;
      v401 = 0;
      objc_msgSend_addCalculatedPrecedent_(contextCopy, v254, v397, v255, v256);
    }

    goto LABEL_120;
  }

  v15 = 0;
  v240 = 0;
LABEL_126:

LABEL_127:

  return v16;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10, v11);
  }

  else
  {
    memset(&v30, 0, sizeof(v30));
  }

  if (*(arguments + 1) - *arguments >= 9uLL)
  {
    v13 = *(*arguments + 8);
    if (objc_msgSend_isTokenOrEmptyArg(v13, v14, v15, v16, v17))
    {
LABEL_12:

      goto LABEL_13;
    }

    if (v12)
    {
      objc_msgSend_formatWithContext_(v12, v18, context, v20, v21);
      if (v13)
      {
LABEL_8:
        objc_msgSend_formatWithContext_(v13, v18, context, v20, v21);
LABEL_11:
        TSCEFormat::formatByMergingWithFormat(&v28, &v27, v19, v20, v21, &v29);
        TSCEFormat::operator=(&v30, &v29);
        goto LABEL_12;
      }
    }

    else
    {
      memset(&v28, 0, sizeof(v28));
      if (v13)
      {
        goto LABEL_8;
      }
    }

    memset(&v27, 0, sizeof(v27));
    goto LABEL_11;
  }

LABEL_13:
  v22 = objc_msgSend_indirectValueWithContext_functionSpec_arguments_(TSCEFunction_INDIRECT, v9, context, spec, arguments, *&v27._tskFormat, *&v27._durationFormat, v28._tskFormat, *&v28._formatType, *&v28._durationFormat, *&v28._numberFormat.decimalPlaces);
  TSCEFormat::TSCEFormat(&v29, &v30);
  objc_msgSend_setFormat_(v22, v23, &v29, v24, v25);

  return v22;
}

@end