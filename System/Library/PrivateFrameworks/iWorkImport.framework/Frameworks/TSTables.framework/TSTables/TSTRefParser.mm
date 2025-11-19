@interface TSTRefParser
+ (RefTypeHolder<TSCERangeRef,)p_baseRangeRefForChromeRangeRef:(id)a2 calcEngine:(SEL)a3;
+ (RefTypeHolder<TSCERangeRef,)p_chromeRangeRefForBaseRangeRef:(id)a2 calcEngine:(SEL)a3;
+ (id)p_baseReferenceForChromeReference:(id)a3 calcEngine:(id)a4;
+ (id)p_baseReferencesForChromeReferences:(id)a3 calcEngine:(id)a4;
+ (id)p_chromeReferenceForBaseReference:(id)a3 calcEngine:(id)a4;
+ (id)p_chromeReferencesForMixedReferences:(id)a3 calcEngine:(id)a4;
- (BOOL)p_parseComponentsOfReference:(id)a3 gettingSheetName:(id *)a4 gettingTableName:(id *)a5 gettingRest:(id *)a6;
- (RefTypeHolder<TSCERangeRef,)p_parseStringAsReferenceComponentIntersection:(TSTRefParser *)self inResolver:(SEL)a3 inTableNamed:(id)a4 preferredGeometricResolver:(id)a5 withParsingContext:(id)a6;
- (RefTypeHolder<TSCERangeRef,)parseStringAsBaseReference:(TSTRefParser *)self withParsingContext:(SEL)a3;
- (RefTypeHolder<TSCERangeRef,)parseStringAsChromeReference:(TSTRefParser *)self withParsingContext:(SEL)a3;
- (TSCECalculationEngine)calcEngine;
- (TSCERangeRef)parseR1C1Reference:(SEL)a3 containingCell:(id)a4 preserveFlagsOut:(const TSCECellRef *)a5;
- (TSKUIDStruct)p_findFirstColumnNameInComponent:(id)a3 tableName:(id)a4 refResolver:(id)a5 calcEngine:(id)a6 outPreserveFlags:(TSUPreserveFlags *)a7 usedWordCount:(unint64_t *)a8;
- (TSTRefParser)initWithCalcEngine:(id)a3;
- (TSUCellCoord)parseR1C1Coord:(id)a3 containingCell:(const TSCECellRef *)a4 preserveFlagsOut:(TSUPreserveFlags *)a5;
- (TSUChromeCellCoord)p_parseStringAsGeometricReferenceComponent:(id)a3 inResolver:(id)a4 outPreserveFlags:(TSUPreserveFlags *)a5 gettingReferencesMatchingInputAsPrefix:(id *)a6;
- (id)p_parseAsCategoryRefWithSheet:(id)a3 tableName:(id)a4 columnNameAndGroupValuesStartAt:(unint64_t)a5 withParsingContext:(id)a6;
- (id)parseAsCategoryRefWithParsingContext:(id)a3;
- (id)parseAsChromeRefWithParsingContext:(id)a3;
- (id)parseAsTractRefWithParsingContext:(id)a3;
- (id)parseStringAsCategoryRef:(id)a3 withParsingContext:(id)a4;
@end

@implementation TSTRefParser

- (TSTRefParser)initWithCalcEngine:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TSTRefParser;
  v5 = [(TSTRefParser *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_calcEngine, v4);
    v11 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v7, v8, v9, v10);
    whitespaceCharSet = v6->_whitespaceCharSet;
    v6->_whitespaceCharSet = v11;

    v13 = objc_opt_new();
    stringManipulator = v6->_stringManipulator;
    v6->_stringManipulator = v13;
  }

  return v6;
}

- (TSUChromeCellCoord)p_parseStringAsGeometricReferenceComponent:(id)a3 inResolver:(id)a4 outPreserveFlags:(TSUPreserveFlags *)a5 gettingReferencesMatchingInputAsPrefix:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v15 = v10;
  v100 = a6;
  if (v10)
  {
    if (objc_msgSend_isPivotTable(v10, v11, v12, v13, v14))
    {
      v20 = objc_msgSend_tableInfo(v15, v16, v17, v18, v19);
      v25 = objc_msgSend_range(v20, v21, v22, v23, v24);
      v27 = TSUCellRectToTSCERangeCoordinate(v25, v26);
      v28 = v27;
      v30 = v29;
      v31 = WORD2(v27);
    }

    else
    {
      v43 = objc_msgSend_tableRangeCoordinate(v15, v16, v17, v18, v19);
      v30 = v44;
      v31 = WORD2(v43);
      v28 = v43;
    }
  }

  else
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTRefParser p_parseStringAsGeometricReferenceComponent:inResolver:outPreserveFlags:gettingReferencesMatchingInputAsPrefix:]", v13, v14);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRefParser.mm", v35, v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 66, 0, "can't look for geometric references in no particular table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    v28 = 0x7FFFFFFF;
    v31 = 0x7FFF;
    v30 = 0x7FFF7FFFFFFFLL;
  }

  a5->_flags = 0;
  v45 = TSUCellCoord::coordFromString(v9, 0x3E8);
  v50 = v45;
  v51 = HIWORD(v45);
  v52 = HIBYTE(v45);
  if ((v45 & 0x1000000000000) != 0)
  {
    v53 = 2;
  }

  else
  {
    v53 = 0;
  }

  a5->_flags |= v53 | HIBYTE(v45) & 1;
  if ((v45 == 0x7FFFFFFF || (v45 & 0xFFFF00000000) == 0x7FFF00000000) && objc_msgSend_length(v9, v46, v47, v48, v49, a6) >= 2 && (v54 = objc_msgSend_length(v9, v46, v47, v48, v49), objc_msgSend_characterAtIndex_(v9, v55, v54 - 1, v56, v57) == 36))
  {
    v58 = objc_msgSend_length(v9, v46, v47, v48, v49);
    v62 = objc_msgSend_substringToIndex_(v9, v59, v58 - 1, v60, v61);
    v50 = TSUCellCoord::coordFromString(v62, 0x3E8);
    v51 = HIWORD(v50);
    v52 = HIBYTE(v50);
    if ((v50 & 0x1000000000000) != 0)
    {
      v63 = 2;
    }

    else
    {
      v63 = 0;
    }

    a5->_flags |= v63 | HIBYTE(v50) & 1;

    v64 = 1;
  }

  else
  {
    v64 = 0;
  }

  v65 = (v51 << 48) | (v52 << 56) | v50 & 0xFFFFFFFFFFFFLL;
  v66 = v50 & 0xFFFF00000000;
  if (v50 != 0x7FFFFFFFLL && v66 != 0x7FFF00000000)
  {
    v67 = 0x7FFF7FFFFFFFLL;
    v68 = 0x7FFF7FFFFFFFLL;
    if (WORD2(v50) < v31 || v28 > v50 || WORD2(v50) > WORD2(v30) || v50 > v30)
    {
      goto LABEL_47;
    }

    v69 = a5->_flags & 3 | (4 * (a5->_flags & 3));
    goto LABEL_39;
  }

  v67 = 0x7FFF7FFFFFFFLL;
  v68 = 0x7FFF7FFFFFFFLL;
  if (v50 == 0x7FFFFFFFLL || v66 != 0x7FFF00000000)
  {
    if (v50 != 0x7FFFFFFFLL || v66 == 0x7FFF00000000)
    {
      goto LABEL_47;
    }

    v71 = a5->_flags & 3 | (4 * (a5->_flags & 3));
    a5->_flags = v71;
    if (v31 <= WORD2(v50) && WORD2(v50) <= WORD2(v30))
    {
      v68 = v65;
    }

    else
    {
      v68 = 0x7FFF7FFFFFFFLL;
    }

    if ((v64 & (v31 <= WORD2(v50) && WORD2(v50) <= WORD2(v30))) == 1)
    {
      v69 = v71 | 0xA;
LABEL_39:
      v72 = v100;
      a5->_flags = v69;
      v68 = v65;
      if (!v100)
      {
        goto LABEL_47;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v70 = a5->_flags & 3 | (4 * (a5->_flags & 3));
    a5->_flags = v70;
    if (v28 <= v50 && v50 <= v30)
    {
      v68 = v65;
    }

    else
    {
      v68 = 0x7FFF7FFFFFFFLL;
    }

    if ((v64 & (v28 <= v50 && v50 <= v30)) == 1)
    {
      v69 = v70 | 5;
      goto LABEL_39;
    }
  }

  v72 = v100;
  if (!v100)
  {
    goto LABEL_47;
  }

LABEL_42:
  if ((v68 & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    if (v15)
    {
      v73 = objc_msgSend_tableUID(v15, v46, v47, v48, v49);
      v75 = v74;
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    v76 = [TSCEAnyReference alloc];
    v101[0] = v68;
    v101[1] = v73;
    v101[2] = v75;
    v80 = objc_msgSend_initWithCellRef_(v76, v77, v101, v78, v79);
    objc_msgSend_setWasConstructedViaNames_(v80, v81, 0, v82, v83);
    v88 = objc_msgSend_uppercaseString(v9, v84, v85, v86, v87);
    objc_msgSend_setOverrideText_(v80, v89, v88, v90, v91);

    objc_msgSend_setPreserveFlags_(v80, v92, a5->_flags, v93, v94);
    v98 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v95, v80, v96, v97);
    *v72 = v98;
  }

LABEL_47:
  if (!v64)
  {
    v67 = v68;
  }

  return v67;
}

- (RefTypeHolder<TSCERangeRef,)p_parseStringAsReferenceComponentIntersection:(TSTRefParser *)self inResolver:(SEL)a3 inTableNamed:(id)a4 preferredGeometricResolver:(id)a5 withParsingContext:(id)a6
{
  v408 = *MEMORY[0x277D85DE8];
  v319 = a4;
  v12 = a5;
  v317 = a6;
  v321 = a7;
  v325 = a8;
  v406 = 0uLL;
  v311 = v12;
  if (v12)
  {
    *&v406 = objc_msgSend_tableUID(v12, v13, v14, v15, v16);
    *(&v406 + 1) = v13;
  }

  else
  {
    v406 = 0uLL;
  }

  v17 = objc_msgSend_contextTableResolver(v325, v13, v14, v15, v16);
  v318 = v17;
  if (v17)
  {
    v332 = objc_msgSend_tableUID(v17, v18, v19, v20, v21);
    v333 = v18;
  }

  else
  {
    v332 = 0;
    v333 = 0;
  }

  v22 = objc_msgSend_calcEngine(self, v18, v19, v20, v21);
  v27 = objc_msgSend_documentLocale(v22, v23, v24, v25, v26);

  v316 = v27;
  v315 = objc_msgSend_locale(v27, v28, v29, v30, v31);
  v404[0] = 0;
  v404[1] = v404;
  v404[2] = 0x3032000000;
  v404[3] = sub_221094B70;
  v404[4] = sub_221094B80;
  v405 = 0;
  v324 = v319;
  if (objc_msgSend_length(v324, v32, v33, v34, v35) && objc_msgSend_hasPrefix_(v324, v36, @"$", v38, v39))
  {
    v40 = objc_msgSend_length(@"$", v36, v37, v38, v39);
    v323 = objc_msgSend_substringFromIndex_(v324, v41, v40, v42, v43);

    if (objc_msgSend_length(v323, v44, v45, v46, v47) && objc_msgSend_hasPrefix_(v323, v36, @"$", v38, v39))
    {
      v48 = v324;

      v327 = 0;
      v323 = v48;
    }

    else
    {
      v327 = 1;
    }
  }

  else
  {
    v327 = 0;
    v323 = v324;
  }

  v49 = objc_msgSend_calcEngine(self, v36, v37, v38, v39);
  v314 = v49;
  IsComplete = objc_msgSend_referenceIsComplete(v325, v50, v51, v52, v53);
  stringManipulator = self->_stringManipulator;
  if (IsComplete)
  {
    sub_221140460(stringManipulator, v323);
  }

  else
  {
    sub_22114067C(stringManipulator, v323);
  }
  v322 = ;
  v60 = objc_msgSend_headerNameMgr(v49, v56, v57, v58, v59);
  v328 = v60;
  v65 = objc_msgSend_referenceIsComplete(v325, v61, v62, v63, v64);
  if (v60)
  {
    objc_msgSend_headerCellsMatching_limitToTable_includePrefixes_(v60, v66, v322, &v406, v65 ^ 1u);
  }

  else
  {
    v402 = 0;
    v401 = 0;
    v403 = 0;
  }

  v313 = sub_2211403F8(self->_stringManipulator, v322);
  objc_msgSend_setNamesUsed_(v325, v67, 1, v68, v69);
  v399[0] = 0;
  v399[1] = v399;
  v399[2] = 0x2020000000;
  v400 = 0;
  v397[0] = 0;
  v397[1] = v397;
  v397[2] = 0x2020000000;
  v398 = 0;
  v395[0] = 0;
  v395[1] = v395;
  v395[2] = 0x2020000000;
  v396 = 0;
  v389 = 0;
  v390 = &v389;
  v391 = 0x3032000000;
  v392 = sub_221094B70;
  v393 = sub_221094B80;
  v394 = 0;
  v387[0] = 0;
  v387[1] = v387;
  v387[2] = 0x2020000000;
  v388 = 0;
  v74 = objc_msgSend_array(MEMORY[0x277CBEB18], v70, v71, v72, v73);
  v385[0] = 0;
  v385[1] = v385;
  v385[2] = 0x3032000000;
  v385[3] = sub_221094B70;
  v385[4] = sub_221094B80;
  v386 = 0;
  v363[0] = MEMORY[0x277D85DD0];
  v363[1] = 3221225472;
  v363[2] = sub_221094B88;
  v363[3] = &unk_27845DB48;
  v329 = v317;
  v364 = v329;
  v374 = v385;
  v330 = v314;
  v365 = v330;
  v308 = v316;
  v366 = v308;
  v75 = v60;
  v384 = v327;
  v381 = v406;
  v326 = v75;
  v367 = v75;
  v368 = self;
  v336 = v325;
  v369 = v336;
  v331 = v74;
  v370 = v331;
  v375 = v387;
  v382 = v332;
  v383 = v333;
  v310 = v313;
  v371 = v310;
  v309 = v315;
  v372 = v309;
  v376 = v404;
  v320 = v318;
  v373 = v320;
  v377 = v399;
  v378 = &v389;
  v379 = v397;
  v380 = v395;
  TSCECellRefSet::enumerateCellRefsUsingBlock(&v401, v363);
  v335 = sub_221141034(&self->_stringManipulator->super.isa, v323);
  v80 = objc_msgSend_count(v335, v76, v77, v78, v79);
  if (v80 < 2)
  {
    v146 = objc_msgSend_referenceIsComplete(v336, v81, v82, v83, v84);
    v147 = self->_stringManipulator;
    if (v146)
    {
      sub_221140460(v147, v324);
    }

    else
    {
      sub_22114067C(v147, v324);
    }
    v148 = ;
    if (objc_msgSend_isEqualToString_(v148, v149, v324, v150, v151))
    {
      v152 = v321;
      if (!v321)
      {
        v152 = v320;
      }

      v153 = v152;
      v158 = v153;
      if (v153)
      {
        v159 = objc_msgSend_tableName(v153, v154, v155, v156, v157);
      }

      else
      {
        v159 = 0;
      }

      v160 = objc_msgSend_documentLocale(v330, v154, v155, v156, v157);
      v164 = v160;
      if (!v329 || v159 && objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v160, v161, v329, v159, v163))
      {
        if (v158)
        {
          LOBYTE(v346.range._topLeft.row) = 0;
          v347 = 0;
          v165 = objc_msgSend_p_parseStringAsGeometricReferenceComponent_inResolver_outPreserveFlags_gettingReferencesMatchingInputAsPrefix_(self, v161, v324, v158, &v346, &v347);
          v166 = v347;
          objc_msgSend_setPreserveFlags_(v336, v167, LOBYTE(v346.range._topLeft.row), v168, v169);
        }

        else
        {
          v166 = 0;
          v165 = 0x7FFF7FFFFFFFLL;
        }

        objc_msgSend_addObjectsFromArray_(v331, v161, v166, v162, v163);
        if (objc_msgSend_count(v166, v170, v171, v172, v173))
        {
          objc_msgSend_setNamesUsed_(v336, v174, 0, v176, v177);
        }

        if (v165 != 0x7FFFFFFF && (v165 & 0xFFFF00000000) != 0x7FFF00000000 || v165 == 0x7FFFFFFF && WORD2(v165) != 0x7FFF || v165 != 0x7FFFFFFF && WORD2(v165) == 0x7FFF || !v390[5])
        {
          v179 = *(&v406 + 1);
          v178 = v406;
          if (v158 && !v406)
          {
            if (*(&v406 + 1))
            {
              v178 = 0;
            }

            else
            {
              v178 = objc_msgSend_tableUID(v158, 0, v175, v176, v177);
            }
          }

          v346.range._topLeft = v165;
          v346.range._bottomRight = v165;
          v346._tableUID._lower = v178;
          v346._tableUID._upper = v179;
          v180 = [TSCEAnyReference alloc];
          v184 = objc_msgSend_initWithRangeRef_(v180, v181, &v346, v182, v183);
          v185 = v390[5];
          v390[5] = v184;
        }
      }

      else
      {
        v166 = 0;
      }
    }
  }

  else
  {
    v85 = v80 - 1;
    v86 = 1;
    do
    {
      v87 = objc_msgSend_subarrayWithRange_(v335, v81, 0, v85, v84);
      v91 = objc_msgSend_componentsJoinedByString_(v87, v88, @" ", v89, v90);

      if (!objc_msgSend_filterColons(v336, v92, v93, v94, v95) || objc_msgSend_rangeOfString_(v91, v96, @":", v97, v98) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v99 = objc_msgSend_subarrayWithRange_(v335, v96, v85, v86, v98);
        v103 = objc_msgSend_componentsJoinedByString_(v99, v100, @" ", v101, v102);

        if (objc_msgSend_length(v91, v104, v105, v106, v107))
        {
          if (objc_msgSend_length(v103, v108, v109, v110, v111) && objc_msgSend_hasPrefix_(v103, v112, @"$", v113, v114))
          {
            v119 = objc_msgSend_length(@"$", v115, v116, v117, v118);
            v123 = objc_msgSend_substringFromIndex_(v103, v120, v119, v121, v122);

            v124 = 1;
            v103 = v123;
          }

          else
          {
            v124 = 0;
          }

          v125 = v91;
          v91 = sub_221140460(self->_stringManipulator, v125);

          isEqualToString = objc_msgSend_isEqualToString_(v91, v126, v125, v127, v128);
          v130 = v103;

          v135 = objc_msgSend_referenceIsComplete(v336, v131, v132, v133, v134);
          v136 = self->_stringManipulator;
          if (v135)
          {
            sub_221140460(v136, v130);
          }

          else
          {
            sub_22114067C(v136, v130);
          }
          v137 = ;

          v142 = objc_msgSend_isEqualToString_(v137, v138, v130, v139, v140);
          if (v328)
          {
            v143 = v326;
            objc_msgSend_headerCellsMatching_limitToTable_includePrefixes_(v326, v141, v91, &v406, 0);
          }

          else
          {
            memset(&v346, 0, 24);
            v143 = v326;
          }

          v348[0] = MEMORY[0x277D85DD0];
          v348[1] = 3321888768;
          v348[2] = sub_221095058;
          v348[3] = &unk_2834A15F0;
          v349 = v336;
          v350 = v143;
          v355 = v385;
          v351 = v330;
          v352 = v329;
          v103 = v137;
          v353 = v103;
          TSCECellRefSet::TSCECellRefSet(&v356, &v346);
          v357 = v332;
          v358 = v333;
          v354 = v331;
          v359 = v327;
          v360 = v124;
          v361 = isEqualToString ^ 1;
          v362 = v142 ^ 1;
          TSCECellRefSet::enumerateCellRefsUsingBlock(&v346, v348);

          sub_22107C800(&v356, v356._coordsForOwnerUid.__tree_.__end_node_.__left_);
          sub_22107C800(&v346, *&v346.range._bottomRight);
        }
      }

      ++v86;
      --v85;
    }

    while (v85);
  }

  v186 = objc_msgSend_referencesMatchingInputAsPrefix(v336, v81, v144, v145, v84);
  v187 = v186 == 0;

  if (!v187)
  {
    v192 = objc_msgSend_referencesMatchingInputAsPrefix(v336, v188, v189, v190, v191);
    objc_msgSend_removeAllObjects(v192, v193, v194, v195, v196);

    v201 = objc_msgSend_referencesMatchingInputAsPrefix(v336, v197, v198, v199, v200);
    objc_msgSend_addObjectsFromArray_(v201, v202, v331, v203, v204);
  }

  if (!objc_msgSend_count(v331, v188, v189, v190, v191) || (v209 = v390[5]) != 0 && (objc_msgSend_rangeRef(v209, v205, v206, v207, v208), TSCERangeRef::isValid(&v346)))
  {
    if (!objc_msgSend_count(v331, v205, v206, v207, v208))
    {
      goto LABEL_102;
    }

    v214 = objc_msgSend_objectAtIndex_(v331, v210, 0, v212, v213);
    v219 = objc_msgSend_preserveFlags(v214, v215, v216, v217, v218);
    objc_msgSend_setPreserveFlags_(v336, v220, v219, v221, v222);
  }

  else if (objc_msgSend_count(v331, v205, v206, v207, v208) == 1)
  {
    v227 = 0;
LABEL_81:
    v214 = objc_msgSend_objectAtIndex_(v331, v223, v227, v225, v226);
    objc_storeStrong(v390 + 5, v214);
    v232 = objc_msgSend_preserveFlags(v214, v228, v229, v230, v231);
    objc_msgSend_setPreserveFlags_(v336, v233, v232, v234, v235);
  }

  else
  {
    if (objc_msgSend_count(v331, v223, v224, v225, v226) >= 2)
    {
      v344 = 0u;
      v345 = 0u;
      v342 = 0u;
      v343 = 0u;
      v236 = v331;
      v242 = objc_msgSend_countByEnumeratingWithState_objects_count_(v236, v237, &v342, v407, 16);
      if (v242)
      {
        v243 = 0;
        v244 = *v343;
        v227 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_85:
        v245 = 0;
        v246 = v243;
        v243 += v242;
        while (1)
        {
          if (*v343 != v244)
          {
            objc_enumerationMutation(v236);
          }

          v247 = objc_msgSend_tableUID(*(*(&v342 + 1) + 8 * v245), v238, v239, v240, v241) == v332 && v238 == v333;
          if (v247)
          {
            v247 = v227 == 0x7FFFFFFFFFFFFFFFLL;
            v227 = v246;
            if (!v247)
            {
              break;
            }
          }

          ++v246;
          if (v242 == ++v245)
          {
            v242 = objc_msgSend_countByEnumeratingWithState_objects_count_(v236, v238, &v342, v407, 16);
            if (v242)
            {
              goto LABEL_85;
            }

            if (v227 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_81;
            }

            goto LABEL_100;
          }
        }
      }
    }

LABEL_100:
    v214 = objc_msgSend_objectAtIndex_(v331, v223, 0, v225, v226);
    v252 = objc_msgSend_preserveFlags(v214, v248, v249, v250, v251);
    objc_msgSend_setPreserveFlags_(v336, v253, v252, v254, v255);
  }

LABEL_102:
  v260 = objc_msgSend_referencesMatchingInputAsPrefix(v336, v210, v211, v212, v213);
  if (v260)
  {
    v261 = objc_opt_class();
    v264 = objc_msgSend_p_chromeReferencesForMixedReferences_calcEngine_(v261, v262, v260, v330, v263);
    v269 = objc_msgSend_referencesMatchingInputAsPrefix(v336, v265, v266, v267, v268);
    objc_msgSend_removeAllObjects(v269, v270, v271, v272, v273);

    v278 = objc_msgSend_referencesMatchingInputAsPrefix(v336, v274, v275, v276, v277);
    objc_msgSend_addObjectsFromArray_(v278, v279, v264, v280, v281);
  }

  v346.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v346._tableUID._lower = 0;
  v346._tableUID._upper = 0;
  v282 = v390[5];
  if (v282)
  {
    if (objc_msgSend_wasConstructedViaNames(v282, v256, v257, v258, v259) && (objc_msgSend_parseAsBaseTableReference(v336, v283, v284, v285, v286) & 1) == 0)
    {
      v297 = objc_msgSend_rangeReference(v390[5], v283, v284, v285, v286);
      v302 = v297;
      if (v297)
      {
        objc_msgSend_rangeRef(v297, v298, v299, v300, v301);
        v304 = *&v339[0]._flags;
        v303 = *&v339[8]._flags;
      }

      else
      {
        v303 = 0;
        v304 = 0;
        *&v339[0]._flags = 0u;
        v340 = 0;
      }

      v341 = v340;

      v305 = objc_opt_class();
      v337[0] = v304;
      v337[1] = v303;
      v338 = v340;
      if (v305)
      {
        objc_msgSend_p_chromeRangeRefForBaseRangeRef_calcEngine_(v305, v293, v337, v330, v296);
      }

      else
      {
        *&v339[0]._flags = 0u;
        v340 = 0;
      }

      v346.range = *&v339[0]._flags;
      v346._tableUID = v340;
    }

    else
    {
      v287 = objc_msgSend_rangeReference(v390[5], v283, v284, v285, v286);
      v292 = v287;
      if (v287)
      {
        objc_msgSend_rangeRef(v287, v288, v289, v290, v291);
      }

      else
      {
        *&v339[0]._flags = 0u;
        v340 = 0;
      }

      v346.range = *&v339[0]._flags;
      v346._tableUID = v340;
    }

    v339[0]._flags = objc_msgSend_preserveFlags(v336, v293, v294, v295, v296);
    TSCERangeRef::setPreserveFlags(&v346, v339);
  }

  tableUID = v346._tableUID;
  retstr->var0.range = v346.range;
  retstr->var0._tableUID = tableUID;

  _Block_object_dispose(v385, 8);
  _Block_object_dispose(v387, 8);
  _Block_object_dispose(&v389, 8);

  _Block_object_dispose(v395, 8);
  _Block_object_dispose(v397, 8);
  _Block_object_dispose(v399, 8);

  sub_22107C800(&v401, v402);
  _Block_object_dispose(v404, 8);

  return result;
}

- (id)parseAsTractRefWithParsingContext:(id)a3
{
  v4 = a3;
  stringManipulator = self->_stringManipulator;
  v10 = objc_msgSend_sheetName(v4, v6, v7, v8, v9);
  v11 = sub_221140460(stringManipulator, v10);
  objc_msgSend_setSheetNameUnquoted_(v4, v12, v11, v13, v14);

  v15 = self->_stringManipulator;
  v20 = objc_msgSend_tableName(v4, v16, v17, v18, v19);
  v21 = sub_221140460(v15, v20);
  objc_msgSend_setTableNameUnquoted_(v4, v22, v21, v23, v24);

  v29 = objc_msgSend_sheetNameUnquoted(v4, v25, v26, v27, v28);
  v34 = objc_msgSend_tableNameUnquoted(v4, v30, v31, v32, v33);
  v134 = v34;
  v39 = objc_msgSend_calcEngine(self, v35, v36, v37, v38);
  v133 = v39;
  v44 = objc_msgSend_contextResolver(v4, v40, v41, v42, v43);
  v48 = v44;
  v135 = v44;
  if (v29)
  {
    v49 = objc_msgSend_resolverContainerMatchingName_(v39, v45, v29, v44, v47);
    v53 = v49;
    if (!v49)
    {
      goto LABEL_9;
    }

    if (v34)
    {
      v54 = objc_msgSend_resolverMatchingName_(v49, v50, v34, v51, v52);
      if (v54)
      {
        v59 = v54;
        v132 = v59;
LABEL_25:
        v63 = v59 != 0;
        goto LABEL_26;
      }

LABEL_9:
      v62 = 0;
      goto LABEL_43;
    }

    v48 = v135;
    goto LABEL_12;
  }

  if (!v34)
  {
    v53 = 0;
LABEL_12:
    v59 = v48;
    v61 = 0;
    v60 = v53;
    goto LABEL_13;
  }

  if (!v44)
  {
    v75 = objc_msgSend_contextSheetName(v4, v45, v46, 0, v47);

    if (v75)
    {
      v76 = objc_msgSend_contextSheetName(v4, v55, v56, v57, v58);
      v59 = objc_msgSend_resolverMatchingNameWithContextContainer_contextContainerName_(v39, v77, v34, v76, v78);

      v53 = 0;
    }

    else
    {
      v53 = 0;
      v59 = 0;
    }

    v132 = 0;
    goto LABEL_25;
  }

  v60 = 0;
  v59 = objc_msgSend_resolverMatchingName_contextResolver_(v39, v45, v34, v44, v47);
  v61 = 1;
LABEL_13:
  v63 = v59 != 0;
  if (v29)
  {
    v61 = 0;
  }

  if ((v61 & 1) != 0 || !v135 || v59)
  {
    v132 = 0;
  }

  else
  {
    v64 = MEMORY[0x277D81150];
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "[TSTRefParser parseAsTractRefWithParsingContext:]", v57, v58);
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRefParser.mm", v67, v68);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v70, v65, v69, 618, 0, "We should only have a nil preferred geometric resolver if a non-unique table name on another sheet is given without sheet name");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
    v63 = 0;
    v132 = 0;
    v59 = 0;
  }

  v53 = v60;
LABEL_26:
  v79 = self->_stringManipulator;
  v80 = objc_msgSend_rest(v4, v55, v56, v57, v58);
  v81 = sub_221140460(v79, v80);

  v86 = objc_msgSend_length(v81, v82, v83, v84, v85);
  v91 = objc_msgSend_rest(v4, v87, v88, v89, v90);
  v96 = objc_msgSend_length(v91, v92, v93, v94, v95);

  if (v86 == v96)
  {
    v101 = objc_msgSend_rest(v4, v97, v98, v99, v100);
    v62 = sub_2210F05E8(v101);

    if (v63)
    {
      v106 = objc_msgSend_resolverUID(v59, v102, v103, v104, v105);
    }

    else
    {
      v122 = objc_msgSend_tableUID(v62, v102, v103, v104, v105);
      if (v122 | v97 || !objc_msgSend_hasPrefix_(v134, v97, @"SFTGlobalID_", v99, v100))
      {
        goto LABEL_31;
      }

      v106 = objc_msgSend_ownerUIDForLegacyGlobalID_registeringIfNeeded_(v133, v97, v134, 1, v100);
    }

    objc_msgSend_setTableUID_(v62, v107, v106, v107, v108);
  }

  else
  {
    v62 = 0;
  }

LABEL_31:
  if ((objc_msgSend_isValid(v62, v97, v98, v99, v100) & 1) == 0)
  {
    v112 = objc_msgSend_parseAsChromeRefWithParsingContext_(self, v109, v4, v110, v111);
    if (objc_msgSend_isValid(v112, v113, v114, v115, v116))
    {
      v121 = [TSCECellTractRef alloc];
      if (v112)
      {
        objc_msgSend_rangeRef(v112, v117, v118, v119, v120);
      }

      else
      {
        memset(v136, 0, sizeof(v136));
      }

      v123 = objc_msgSend_initWithRangeRef_(v121, v117, v136, v119, v120);

      v128 = objc_msgSend_tableUID(v112, v124, v125, v126, v127);
      objc_msgSend_setTableUID_(v123, v129, v128, v129, v130);
    }

    else
    {
      v123 = v62;
    }

    v62 = v123;
  }

LABEL_43:

  return v62;
}

- (id)parseAsChromeRefWithParsingContext:(id)a3
{
  v551 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v522 = v3;
  v499 = objc_msgSend_sheetNameUnquoted(v3, v4, v5, v6, v7);
  v12 = objc_msgSend_tableNameUnquoted(v3, v8, v9, v10, v11);
  v497 = objc_msgSend_rest(v3, v13, v14, v15, v16);
  v519 = objc_msgSend_calcEngine(self, v17, v18, v19, v20);
  v25 = objc_msgSend_contextTableResolver(v3, v21, v22, v23, v24);
  v548 = 0;
  v547 = 0;
  v510 = v25;
  if (v25)
  {
    v547 = objc_msgSend_tableUID(v25, v26, v27, v28, v29);
    v548 = v30;
  }

  else
  {
    v548 = 0;
    v547 = 0;
  }

  v31 = v12;
  v35 = v31;
  v501 = v31;
  if (!v499)
  {
    if (v31)
    {
      if (!v510)
      {
        v425 = objc_msgSend_contextSheetName(v3, v32, 0, v33, v34);

        if (v425)
        {
          v430 = objc_msgSend_contextSheetName(v3, v426, v427, v428, v429);
          v433 = objc_msgSend_resolverMatchingNameWithContextContainer_contextContainerName_(v519, v431, v35, v430, v432);
          v44 = objc_msgSend_tableResolverForRefResolver_(v519, v434, v433, v435, v436);

          v495 = 0;
          v496 = 0;
        }

        else
        {
          v495 = 0;
          v496 = 0;
          v44 = 0;
        }

        goto LABEL_23;
      }

      v45 = objc_msgSend_referenceResolverObject(v510, v32, 0, v33, v34);
      v48 = objc_msgSend_resolverMatchingName_contextResolver_(v519, v46, v35, v45, v47);
      v44 = objc_msgSend_tableResolverForRefResolver_(v519, v49, v48, v50, v51);

      v55 = 0;
      v56 = 1;
LABEL_16:
      v496 = 0;
      if (v499)
      {
        v56 = 0;
      }

      if ((v56 & 1) == 0 && v510 && !v44)
      {
        v58 = MEMORY[0x277D81150];
        v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSTRefParser parseAsChromeRefWithParsingContext:]", v53, v54);
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRefParser.mm", v61, v62);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v64, v59, v63, 700, 0, "We should only have a nil preferred geometric resolver if a non-unique table name on another sheet is given without sheet name");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
        v496 = 0;
        v44 = 0;
      }

      v495 = v55;
LABEL_23:
      v546.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v546._tableUID._upper = 0;
      v546._tableUID._lower = 0;
      v494 = v44;
      v493 = sub_221140FC8(&self->_stringManipulator->super.isa, v497);
      v73 = objc_msgSend_count(v493, v69, v70, v71, v72);
      if (v73 != 2)
      {
        if (v73 == 1)
        {
          v78 = objc_msgSend_objectAtIndex_(v493, v74, 0, v76, v77);
          objc_msgSend_p_parseStringAsReferenceComponentIntersection_inResolver_inTableNamed_preferredGeometricResolver_withParsingContext_(self, v79, v78, v496, v501, v44, v522);

          v80 = TSCERangeRef::wrapped(v523);
LABEL_270:
          v57 = v80;

          goto LABEL_271;
        }

        v546._tableUID._lower = 0;
        v546._tableUID._upper = 0;
        v546.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
LABEL_269:
        v80 = TSCERangeRef::wrapped(&v546);
        goto LABEL_270;
      }

      v507 = objc_msgSend_array(MEMORY[0x277CBEB18], v74, v75, v76, v77);
      v514 = objc_msgSend_objectAtIndex_(v493, v81, 0, v82, v83);
      v518 = objc_msgSend_objectAtIndex_(v493, v84, 1, v85, v86);
      v504 = objc_msgSend_copy(v522, v87, v88, v89, v90);
      objc_msgSend_reset(v504, v91, v92, v93, v94);
      v99 = objc_msgSend_array(MEMORY[0x277CBEB18], v95, v96, v97, v98);
      objc_msgSend_setReferencesMatchingInputAsPrefix_(v504, v100, v99, v101, v102);

      objc_msgSend_setReferenceIsComplete_(v504, v103, 1, v104, v105);
      objc_msgSend_p_parseStringAsReferenceComponentIntersection_inResolver_inTableNamed_preferredGeometricResolver_withParsingContext_(self, v106, v514, v496, v501, v44, v504);
      v509 = objc_msgSend_preserveFlags(v504, v107, v108, v109, v110);
      v505 = objc_msgSend_copy(v522, v111, v112, v113, v114);
      objc_msgSend_reset(v505, v115, v116, v117, v118);
      v123 = objc_msgSend_array(MEMORY[0x277CBEB18], v119, v120, v121, v122);
      objc_msgSend_setReferencesMatchingInputAsPrefix_(v505, v124, v123, v125, v126);

      objc_msgSend_p_parseStringAsReferenceComponentIntersection_inResolver_inTableNamed_preferredGeometricResolver_withParsingContext_(self, v127, v518, v496, v501, v44, v505);
      v128 = v522;
      if (objc_msgSend_namesUsed(v504, v129, v130, v131, v132))
      {
        objc_msgSend_setNamesUsed_(v522, v133, 1, v135, v136);
      }

      else
      {
        v141 = objc_msgSend_namesUsed(v505, v133, v134, v135, v136);
        objc_msgSend_setNamesUsed_(v522, v142, v141, v143, v144);
      }

      v537 = 0u;
      v538 = 0u;
      v535 = 0u;
      v536 = 0u;
      obj = objc_msgSend_referencesMatchingInputAsPrefix(v504, v137, v138, v139, v140);
      v503 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v145, &v535, v550, 16);
      if (v503)
      {
        v502 = *v536;
LABEL_32:
        v508 = 0;
LABEL_33:
        if (*v536 != v502)
        {
          objc_enumerationMutation(obj);
        }

        v516 = *(*(&v535 + 1) + 8 * v508);
        v150 = objc_msgSend_abortObject(v128, v146, v147, v148, v149);
        isAborted = objc_msgSend_isAborted(v150, v151, v152, v153, v154);

        if ((isAborted & 1) == 0)
        {
          context = objc_autoreleasePoolPush();
          if (v516)
          {
            v160 = v522;
            objc_msgSend_rangeRef(v516, v156, v157, v158, v159);
          }

          else
          {
            memset(v523, 0, 32);
            v160 = v522;
          }

          if (v510)
          {
            v161 = objc_msgSend_preserveFlags(v504, v156, v157, v158, v159);
            v163 = objc_msgSend_referenceTextForAutocompleteWithCalculationEngine_hostTableUID_preserveFlags_inputString_inputStringIsComplete_(v516, v162, v519, &v523[16], v161, v514, 1);
            objc_msgSend_referenceTextWithCalculationEngine_hostTableUID_(v516, v164, v519, &v523[16], v165);
            v513 = v163;
            v514 = v166 = v514;
          }

          else
          {
            v167 = objc_msgSend_contextSheetName(v160, v156, v157, v158, v159);
            v172 = objc_msgSend_preserveFlags(v504, v168, v169, v170, v171);
            v174 = objc_msgSend_referenceTextForAutocompleteWithCalculationEngine_contextSheetName_preserveFlags_inputString_inputStringIsComplete_(v516, v173, v519, v167, v172, v514, 1);

            v166 = objc_msgSend_contextSheetName(v522, v175, v176, v177, v178);
            v181 = objc_msgSend_referenceTextWithCalculationEngine_contextSheetName_(v516, v179, v519, v166, v180);

            v513 = v174;
            v514 = v181;
          }

          v186 = objc_msgSend_referencesMatchingInputAsPrefix(v505, v182, v183, v184, v185);
          v191 = objc_msgSend_count(v186, v187, v188, v189, v190) == 0;

          v196 = v513;
          if (v191)
          {
            goto LABEL_132;
          }

          v533 = 0u;
          v534 = 0u;
          v531 = 0u;
          v532 = 0u;
          v197 = objc_msgSend_referencesMatchingInputAsPrefix(v505, v192, v193, v194, v195);
          v199 = objc_msgSend_countByEnumeratingWithState_objects_count_(v197, v198, &v531, v549, 16);
          if (!v199)
          {

            v196 = v513;
            goto LABEL_132;
          }

          v511 = 0;
          v521 = *v532;
LABEL_45:
          v520 = v199;
          v204 = 0;
          while (1)
          {
            if (*v532 != v521)
            {
              objc_enumerationMutation(v197);
            }

            v205 = *(*(&v531 + 1) + 8 * v204);
            v206 = objc_msgSend_abortObject(v522, v200, v201, v202, v203);
            v211 = objc_msgSend_isAborted(v206, v207, v208, v209, v210);

            if (v211)
            {
LABEL_129:

              v196 = v513;
              if (!v511)
              {
LABEL_132:
                if (!objc_msgSend_length(v518, v192, v193, v194, v195) || objc_msgSend_isEqualToString_(v518, v356, @"$", v357, v358))
                {
                  if (objc_msgSend_isEqualToString_(v518, v356, @"$", v357, v358))
                  {
                    v363 = objc_msgSend_preserveFlags(v504, v359, v360, v361, v362) >> 2;
                  }

                  else
                  {
                    v363 = 0;
                  }

                  LOBYTE(v526[0]) = 0;
                  HIBYTE(v528) = 0;
                  *&v529 = sub_221494F70(*v523, *&v523[8], *v523, *&v523[8], v509 & 3, v363, v526, &v528 + 1, 0);
                  *(&v529 + 1) = v364;
                  v530 = *&v523[16];
                  v365 = [TSCEAnyReference alloc];
                  v369 = objc_msgSend_initWithRangeRef_(v365, v366, &v529, v367, v368);
                  v374 = objc_msgSend_wasConstructedViaNames(v516, v370, v371, v372, v373);
                  objc_msgSend_setWasConstructedViaNames_(v369, v375, v374, v376, v377);
                  objc_msgSend_setPreserveFlags_(v369, v378, v526[0] & 3 | (4 * (HIBYTE(v528) & 3)), v379, v380);
                  v384 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v381, @"%@:%@", v382, v383, v514, v518);
                  objc_msgSend_setOverrideText_(v369, v385, v384, v386, v387);

                  v391 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v388, @"%@:%@", v389, v390, v513, v518);
                  objc_msgSend_setOverrideTextAsTyped_(v369, v392, v391, v393, v394);

                  objc_msgSend_addObject_(v507, v395, v369, v396, v397);
                  v196 = v513;
                }
              }

              v128 = v522;
              objc_autoreleasePoolPop(context);
              if (++v508 == v503)
              {
                v503 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v146, &v535, v550, 16);
                if (!v503)
                {
                  goto LABEL_140;
                }

                goto LABEL_32;
              }

              goto LABEL_33;
            }

            v216 = objc_autoreleasePoolPush();
            if (v205)
            {
              objc_msgSend_rangeRef(v205, v212, v213, v214, v215);
            }

            else
            {
              v529 = 0u;
              v530 = 0u;
            }

            v217 = objc_msgSend_preserveFlags(v205, v212, v213, v214, v215);
            v528 = 0;
            if (*&v523[16] == v530)
            {
              break;
            }

LABEL_127:
            objc_autoreleasePoolPop(v216);
            if (v520 == ++v204)
            {
              v199 = objc_msgSend_countByEnumeratingWithState_objects_count_(v197, v200, &v531, v549, 16);
              if (v199)
              {
                goto LABEL_45;
              }

              goto LABEL_129;
            }
          }

          v218 = v217;
          v223 = sub_221494F70(*v523, *&v523[8], v529, *(&v529 + 1), v509 & 3, v217 >> 2, &v528 + 1, &v528, 0);
          v224 = v219;
          if (v510)
          {
            v225 = objc_msgSend_referenceTextWithCalculationEngine_hostTableUID_(v205, v219, v519, &v547, v222);
            IsComplete = objc_msgSend_referenceIsComplete(v522, v226, v227, v228, v229);
            v517 = objc_msgSend_referenceTextForAutocompleteWithCalculationEngine_hostTableUID_preserveFlags_inputString_inputStringIsComplete_(v205, v231, v519, &v547, v218, v518, IsComplete);
            v515 = v225;
          }

          else
          {
            v236 = objc_msgSend_contextSheetName(v522, v219, v220, v221, v222);
            v239 = objc_msgSend_referenceTextWithCalculationEngine_contextSheetName_(v205, v237, v519, v236, v238);

            v244 = objc_msgSend_contextSheetName(v522, v240, v241, v242, v243);
            v249 = objc_msgSend_referenceIsComplete(v522, v245, v246, v247, v248);
            v517 = objc_msgSend_referenceTextForAutocompleteWithCalculationEngine_contextSheetName_preserveFlags_inputString_inputStringIsComplete_(v205, v250, v519, v244, v218, v518, v249);

            v515 = v239;
          }

          v251 = v223 & 0xFFFF00000000;
          v252 = v223 == 0x7FFFFFFFLL || v251 == 0x7FFF00000000;
          v253 = !v252;
          if (v252)
          {
            v254 = v224 & 0xFFFF00000000;
          }

          else
          {
            v254 = v224 & 0xFFFF00000000;
            if (v224 != 0x7FFFFFFF && v254 != 0x7FFF00000000 && WORD2(v223) <= WORD2(v224) && v223 <= v224)
            {
              v255 = 0;
LABEL_103:
              if (v254 != 0x7FFF00000000 && WORD2(v223) <= WORD2(v224) && v223 <= v224)
              {
                goto LABEL_122;
              }

              goto LABEL_108;
            }
          }

          v512 = v253;
          if (v223 != 0x7FFFFFFFLL && v251 == 0x7FFF00000000 && v254 == 0x7FFF00000000)
          {
            if (v224 != 0x7FFFFFFF && v223 <= v224)
            {
              goto LABEL_80;
            }
          }

          else if (v223 == 0x7FFFFFFFLL && v251 != 0x7FFF00000000 && v254 != 0x7FFF00000000 && v224 == 0x7FFFFFFF && WORD2(v223) <= WORD2(v224))
          {
            goto LABEL_80;
          }

          v255 = 0;
          if (*v523 != 0x7FFFFFFF && (*v523 & 0xFFFF00000000) != 0x7FFF00000000)
          {
            v255 = 0;
            if (*&v523[8] != 0x7FFFFFFF && (*&v523[8] & 0xFFFF00000000) != 0x7FFF00000000)
            {
              v255 = 0;
              if (*&v523[4] <= *&v523[12] && *v523 <= *&v523[8] && *&v523[4] == *&v523[12] && *v523 == *&v523[8])
              {
                v256 = v529 & 0xFFFF00000000;
                v257 = *(&v529 + 1) & 0xFFFF00000000;
                if (v529 == 0x7FFFFFFFLL && v256 != 0x7FFF00000000 && v257 != 0x7FFF00000000)
                {
                  if (DWORD2(v529) == 0x7FFFFFFF)
                  {
LABEL_98:
                    if (objc_msgSend_wasConstructedViaNames(v205, v232, v233, v234, v235))
                    {
                      v491 = objc_msgSend_stringByAppendingString_(v515, v258, @" ", v259, v260);
                      v261 = [TSCEReferenceParsingContext alloc];
                      v492 = objc_msgSend_initWithContextTableResolver_(v261, v262, v510, v263, v264);
                      v269 = objc_msgSend_contextSheetName(v522, v265, v266, v267, v268);
                      objc_msgSend_setContextSheetName_(v492, v270, v269, v271, v272);

                      v277 = objc_msgSend_array(MEMORY[0x277CBEB18], v273, v274, v275, v276);
                      objc_msgSend_setReferencesMatchingInputAsPrefix_(v492, v278, v277, v279, v280);

                      objc_msgSend_setReferenceIsComplete_(v492, v281, 0, v282, v283);
                      v288 = objc_msgSend_filterColons(v522, v284, v285, v286, v287);
                      objc_msgSend_setFilterColons_(v492, v289, v288, v290, v291);
                      v296 = objc_msgSend_abortObject(v522, v292, v293, v294, v295);
                      objc_msgSend_setAbortObject_(v492, v297, v296, v298, v299);

                      objc_msgSend_p_parseStringAsReferenceComponentIntersection_inResolver_inTableNamed_preferredGeometricResolver_withParsingContext_(self, v300, v491, v496, v501, v494, v492);
                      v305 = objc_msgSend_namesUsed(v492, v301, v302, v303, v304);
                      objc_msgSend_setNamesUsed_(v522, v306, v305, v307, v308);
                      v490 = objc_msgSend_referencesMatchingInputAsPrefix(v492, v309, v310, v311, v312);
                      v255 = objc_msgSend_count(v490, v313, v314, v315, v316) != 0;
                    }

                    else
                    {
                      v255 = 1;
                    }

                    goto LABEL_101;
                  }

LABEL_80:
                  v255 = 0;
                  goto LABEL_101;
                }

                v255 = 0;
                if (v529 != 0x7FFFFFFFLL && v256 == 0x7FFF00000000 && v257 == 0x7FFF00000000 && DWORD2(v529) != 0x7FFFFFFFLL)
                {
                  goto LABEL_98;
                }
              }
            }
          }

LABEL_101:
          if (v512)
          {
            v254 = v224 & 0xFFFF00000000;
            if (v224 != 0x7FFFFFFF)
            {
              goto LABEL_103;
            }
          }

          else
          {
            v254 = v224 & 0xFFFF00000000;
          }

LABEL_108:
          if (v223 == 0x7FFFFFFFLL || v251 != 0x7FFF00000000 || v254 != 0x7FFF00000000)
          {
            v317 = 0;
            if (v223 == 0x7FFFFFFFLL && v251 != 0x7FFF00000000 && v254 != 0x7FFF00000000)
            {
              v317 = v224 == 0x7FFFFFFF;
            }

LABEL_118:
            v318 = WORD2(v223) <= WORD2(v224) && v317;
            if (!v318 && !v255)
            {
              goto LABEL_126;
            }

            goto LABEL_122;
          }

          v317 = 0;
          if (v224 == 0x7FFFFFFF || v223 > v224)
          {
            goto LABEL_118;
          }

LABEL_122:
          v526[0] = v223;
          v526[1] = v224;
          v527 = v530;
          v319 = [TSCEAnyReference alloc];
          v323 = objc_msgSend_initWithRangeRef_(v319, v320, v526, v321, v322);
          if (objc_msgSend_wasConstructedViaNames(v516, v324, v325, v326, v327))
          {
            objc_msgSend_setWasConstructedViaNames_(v323, v328, 1, v330, v331);
          }

          else
          {
            v335 = objc_msgSend_wasConstructedViaNames(v205, v328, v329, v330, v331);
            objc_msgSend_setWasConstructedViaNames_(v323, v336, v335, v337, v338);
          }

          objc_msgSend_setPreserveFlags_(v323, v332, HIBYTE(v528) & 3 | (4 * (v528 & 3)), v333, v334);
          v342 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v339, @"%@:%@", v340, v341, v514, v518);
          objc_msgSend_setOverrideText_(v323, v343, v342, v344, v345);

          v349 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v346, @"%@:%@", v347, v348, v513, v517);
          objc_msgSend_setOverrideTextAsTyped_(v323, v350, v349, v351, v352);

          objc_msgSend_addObject_(v507, v353, v323, v354, v355);
          ++v511;
LABEL_126:

          goto LABEL_127;
        }
      }

LABEL_140:

      v402 = objc_msgSend_referencesMatchingInputAsPrefix(v522, v398, v399, v400, v401);
      v403 = v402 == 0;

      if (!v403)
      {
        v408 = objc_msgSend_referencesMatchingInputAsPrefix(v522, v404, v405, v406, v407);
        objc_msgSend_removeAllObjects(v408, v409, v410, v411, v412);

        v417 = objc_msgSend_referencesMatchingInputAsPrefix(v522, v413, v414, v415, v416);
        objc_msgSend_addObjectsFromArray_(v417, v418, v507, v419, v420);
      }

      v421 = v539 & 0xFFFF00000000;
      if (v539 == 0x7FFFFFFFLL || v421 == 0x7FFF00000000)
      {
        v422 = v540 & 0xFFFF00000000;
      }

      else
      {
        v422 = v540 & 0xFFFF00000000;
        if (v540 != 0x7FFFFFFF && v422 != 0x7FFF00000000 && WORD2(v539) <= WORD2(v540) && v539 <= v540)
        {
          goto LABEL_161;
        }
      }

      if (v539 != 0x7FFFFFFFLL && v421 == 0x7FFF00000000 && v422 == 0x7FFF00000000)
      {
        v423 = 0;
        if (v540 == 0x7FFFFFFF || v539 > v540)
        {
          goto LABEL_253;
        }
      }

      else
      {
        v423 = 0;
        if (v539 != 0x7FFFFFFFLL || v421 == 0x7FFF00000000 || v422 == 0x7FFF00000000 || (v423 = 0, v540 != 0x7FFFFFFF) || WORD2(v539) > WORD2(v540))
        {
LABEL_253:
          if (objc_msgSend_count(v507, v404, v405, v406, v407) != 1)
          {
LABEL_268:

            goto LABEL_269;
          }

          v453 = objc_msgSend_objectAtIndex_(v507, v450, 0, v451, v452);
          v458 = v453;
          if (v453)
          {
            objc_msgSend_anyRef(v453, v454, v455, v456, v457);
            if (*v523 == 1)
            {
LABEL_259:
              v471 = objc_msgSend_preserveFlags(v458, v454, v459, v456, v457);
              objc_msgSend_setPreserveFlags_(v522, v472, v471, v473, v474);
              if (v423 && (v546.range._topLeft.row != *&v523[8] || ((*&v523[8] ^ *&v546.range._topLeft) & 0xFFFF00000000) != 0 || v546.range._bottomRight.row != *&v523[16] || ((*&v523[16] ^ *&v546.range._bottomRight) & 0xFFFF00000000) != 0 || v546._tableUID._lower != *&v523[24] || v546._tableUID._upper != *&v523[32]))
              {
                v478 = MEMORY[0x277D81150];
                v479 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v475, "[TSTRefParser parseAsChromeRefWithParsingContext:]", v476, v477);
                v483 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v480, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRefParser.mm", v481, v482);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v478, v484, v479, v483, 907, 0, "If there is only one range reference, it should match resultRangeRef.");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v485, v486, v487, v488);
              }

              v546 = *&v523[8];

              goto LABEL_268;
            }
          }

          else
          {
            v524 = 0u;
            v525 = 0u;
            memset(v523, 0, sizeof(v523));
          }

          v460 = MEMORY[0x277D81150];
          v461 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v454, "[TSTRefParser parseAsChromeRefWithParsingContext:]", v456, v457);
          v465 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v462, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRefParser.mm", v463, v464);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v460, v466, v461, v465, 901, 0, "bug in reference parser - only ranges expected here");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v467, v468, v469, v470);
          goto LABEL_259;
        }
      }

LABEL_161:
      v404 = HIDWORD(v543);
      v406 = v543;
      v405 = v543 & 0xFFFF00000000;
      if (v543 == 0x7FFFFFFFLL || v405 == 0x7FFF00000000)
      {
        v424 = v544 & 0xFFFF00000000;
      }

      else
      {
        v424 = v544 & 0xFFFF00000000;
        if (v544 != 0x7FFFFFFF && v424 != 0x7FFF00000000 && WORD2(v543) <= WORD2(v544) && v543 <= v544)
        {
          goto LABEL_183;
        }
      }

      if (v543 != 0x7FFFFFFFLL && v405 == 0x7FFF00000000 && v424 == 0x7FFF00000000)
      {
        v423 = 0;
        if (v544 == 0x7FFFFFFF || v543 > v544)
        {
          goto LABEL_253;
        }
      }

      else
      {
        v423 = 0;
        if (v543 != 0x7FFFFFFFLL)
        {
          goto LABEL_253;
        }

        if (v405 == 0x7FFF00000000)
        {
          goto LABEL_253;
        }

        if (v424 == 0x7FFF00000000)
        {
          goto LABEL_253;
        }

        v423 = 0;
        if (v544 != 0x7FFFFFFF || WORD2(v543) > WORD2(v544))
        {
          goto LABEL_253;
        }
      }

LABEL_183:
      v423 = 0;
      if (v545._lower != v541)
      {
        goto LABEL_253;
      }

      v407 = v542;
      if (v545._upper != v542)
      {
        goto LABEL_253;
      }

      v437 = v544 & 0xFFFF00000000;
      if (v543 != 0x7FFFFFFFLL && v405 == 0x7FFF00000000 && v437 == 0x7FFF00000000)
      {
        v406 = 0;
        v407 = v544 != 0x7FFFFFFF;
      }

      else
      {
        v407 = 0;
        if (v543 != 0x7FFFFFFFLL || v405 == 0x7FFF00000000)
        {
          v406 = 0;
        }

        else
        {
          v406 = 0;
          if (v437 != 0x7FFF00000000)
          {
            v407 = 0;
            v406 = v544 == 0x7FFFFFFF;
          }
        }
      }

      v438 = v540 & 0xFFFF00000000;
      if (v539 != 0x7FFFFFFFLL && v421 == 0x7FFF00000000 && v438 == 0x7FFF00000000)
      {
        v439 = 0;
        v440 = v540 != 0x7FFFFFFF;
      }

      else
      {
        v440 = 0;
        if (v539 != 0x7FFFFFFFLL || v421 == 0x7FFF00000000)
        {
          v439 = 0;
        }

        else
        {
          v439 = 0;
          if (v438 != 0x7FFF00000000)
          {
            v440 = 0;
            v439 = v540 == 0x7FFFFFFF;
          }
        }
      }

      v441 = 0x7FFF7FFFFFFFLL;
      v442 = 0x7FFFLL;
      if (v407 == v440)
      {
        v405 = 0x7FFFFFFFLL;
        if (((v406 ^ v439) & 1) == 0)
        {
          if (v407)
          {
            if (v543 >= v539)
            {
              v405 = v539;
            }

            else
            {
              v405 = v543;
            }

            if (v544 <= v540)
            {
              v443 = v540;
            }

            else
            {
              v443 = v544;
            }

            v441 = (v443 | 0x7FFF00000000);
            v442 = 0x7FFFLL;
          }

          else
          {
            if (WORD2(v543) >= WORD2(v539))
            {
              v442 = HIDWORD(v539);
            }

            else
            {
              v442 = HIDWORD(v543);
            }

            if (v406)
            {
              if (WORD2(v544) >= WORD2(v540))
              {
                v444 = HIDWORD(v544);
              }

              else
              {
                v444 = HIDWORD(v540);
              }

              v405 = 0x7FFFFFFFLL;
              v441 = ((v444 << 32) | 0x7FFFFFFF);
            }

            else
            {
              if (v543 >= v539)
              {
                v405 = v539;
              }

              else
              {
                v405 = v543;
              }

              if (WORD2(v544) >= WORD2(v540))
              {
                v445 = HIDWORD(v544);
              }

              else
              {
                v445 = HIDWORD(v540);
              }

              if (v544 <= v540)
              {
                v446 = v540;
              }

              else
              {
                v446 = v544;
              }

              v441 = (v446 & 0xFFFF0000FFFFFFFFLL | (v445 << 32));
            }
          }
        }
      }

      else
      {
        v405 = 0x7FFFFFFFLL;
      }

      v447 = (v442 << 32) & 0xFFFF00000000;
      v448 = HIDWORD(*&v441);
      if (v405 == 0x7FFFFFFF || v447 == 0x7FFF00000000)
      {
        v449 = *&v441 & 0xFFFF00000000;
      }

      else
      {
        v449 = *&v441 & 0xFFFF00000000;
        if (v441.row != 0x7FFFFFFF && v449 != 0x7FFF00000000 && v405 <= v441.row && v442 <= v448)
        {
          goto LABEL_252;
        }
      }

      if (v405 != 0x7FFFFFFF && v447 == 0x7FFF00000000 && v449 == 0x7FFF00000000)
      {
        v423 = 0;
        if (v441.row == 0x7FFFFFFF || v405 > v441.row)
        {
          goto LABEL_253;
        }
      }

      else
      {
        v423 = 0;
        if (v405 != 0x7FFFFFFF)
        {
          goto LABEL_253;
        }

        if (v447 == 0x7FFF00000000)
        {
          goto LABEL_253;
        }

        if (v449 == 0x7FFF00000000)
        {
          goto LABEL_253;
        }

        v423 = 0;
        if (v441.row != 0x7FFFFFFF || v442 > v448)
        {
          goto LABEL_253;
        }
      }

LABEL_252:
      v546.range._topLeft.row = v405;
      v546.range._topLeft.column = v442;
      v546.range._bottomRight = v441;
      v546._tableUID = v545;
      v423 = 1;
      goto LABEL_253;
    }

    v55 = 0;
LABEL_15:
    v44 = v510;
    v56 = 0;
    goto LABEL_16;
  }

  v495 = objc_msgSend_resolverContainerMatchingName_(v519, v32, v499, v33, v34);
  if (!v495)
  {
    *v523 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    *&v523[16] = 0;
    *&v523[24] = 0;
    v57 = TSCERangeRef::wrapped(v523);
    goto LABEL_272;
  }

  if (!v35)
  {
    v55 = v495;
    goto LABEL_15;
  }

  v39 = objc_msgSend_resolverMatchingName_(v495, v36, v35, v37, v38);
  v43 = objc_msgSend_tableResolverForRefResolver_(v519, v40, v39, v41, v42);

  if (v43)
  {
    v44 = v43;
    v496 = v44;
    goto LABEL_23;
  }

  *v523 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  *&v523[16] = 0;
  *&v523[24] = 0;
  v57 = TSCERangeRef::wrapped(v523);

LABEL_271:
  v35 = v501;
LABEL_272:

  return v57;
}

- (BOOL)p_parseComponentsOfReference:(id)a3 gettingSheetName:(id *)a4 gettingTableName:(id *)a5 gettingRest:(id *)a6
{
  v9 = sub_221140BD4(self->_stringManipulator, a3);
  v17 = objc_msgSend_count(v9, v10, v11, v12, v13);
  v18 = v17 - 1;
  if ((v17 - 1) >= 3)
  {
    v28 = 0;
    v26 = 0;
    v22 = 0;
  }

  else
  {
    v22 = objc_msgSend_objectAtIndex_(v9, v14, v18, v15, v16);
    if (v17 == 1)
    {
      v28 = 0;
      v26 = 0;
    }

    else
    {
      v26 = objc_msgSend_objectAtIndex_(v9, v19, v17 - 2, v20, v21);
      if (v18 == 2)
      {
        v27 = objc_msgSend_objectAtIndex_(v9, v23, 0, v24, v25);
        v28 = v27;
        if (a4 && v27)
        {
          v29 = v27;
          *a4 = v28;
        }
      }

      else
      {
        v28 = 0;
      }

      if (a5 && v26)
      {
        v30 = v26;
        *a5 = v26;
      }
    }

    if (a6 && v22)
    {
      v31 = v22;
      *a6 = v22;
    }
  }

  return v18 < 3;
}

- (RefTypeHolder<TSCERangeRef,)parseStringAsChromeReference:(TSTRefParser *)self withParsingContext:(SEL)a3
{
  v8 = a4;
  v9 = a5;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v11 = objc_msgSend_p_parseComponentsOfReference_gettingSheetName_gettingTableName_gettingRest_(self, v10, v8, &v65, &v64, &v63);
  v12 = v65;
  v13 = v64;
  v18 = v63;
  if (v11)
  {
    if (objc_msgSend_trimNames(v9, v14, v15, v16, v17))
    {
      v60 = v8;
      v23 = objc_msgSend_whitespaceCharSet(self, v19, v20, v21, v22);
      v27 = objc_msgSend_stringByTrimmingCharactersInSet_(v13, v24, v23, v25, v26);

      v31 = objc_msgSend_stringByTrimmingCharactersInSet_(v12, v28, v23, v29, v30);

      v35 = objc_msgSend_stringByTrimmingCharactersInSet_(v18, v32, v23, v33, v34);

      v18 = v35;
      v13 = v27;
      v12 = v31;
      v8 = v60;
    }

    objc_msgSend_setSheetName_(v9, v19, v12, v21, v22);
    objc_msgSend_setTableName_(v9, v36, v13, v37, v38);
    objc_msgSend_setRest_(v9, v39, v18, v40, v41);
    v42 = sub_221140460(self->_stringManipulator, v12);
    objc_msgSend_setSheetNameUnquoted_(v9, v43, v42, v44, v45);

    v46 = sub_221140460(self->_stringManipulator, v13);
    objc_msgSend_setTableNameUnquoted_(v9, v47, v46, v48, v49);

    v53 = objc_msgSend_parseAsChromeRefWithParsingContext_(self, v50, v9, v51, v52);
    v58 = v53;
    if (v53)
    {
      objc_msgSend_rangeRef(v53, v54, v55, v56, v57);
    }

    else
    {
      v61 = 0;
      v62 = 0;
    }

    retstr->var0.range = v61;
    retstr->var0._tableUID = v62;
  }

  else
  {
    retstr->var0._tableUID._lower = 0;
    retstr->var0._tableUID._upper = 0;
    retstr->var0.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  }

  return result;
}

- (RefTypeHolder<TSCERangeRef,)parseStringAsBaseReference:(TSTRefParser *)self withParsingContext:(SEL)a3
{
  v8 = a5;
  objc_msgSend_parseStringAsChromeReference_withParsingContext_(self, v9, a4, v8, v10);
  v15 = objc_msgSend_calcEngine(self, v11, v12, v13, v14);
  v24 = objc_msgSend_referencesMatchingInputAsPrefix(v8, v16, v17, v18, v19);
  if (v24)
  {
    v25 = objc_opt_class();
    v28 = objc_msgSend_p_baseReferencesForChromeReferences_calcEngine_(v25, v26, v24, v15, v27);
    v33 = objc_msgSend_referencesMatchingInputAsPrefix(v8, v29, v30, v31, v32);
    objc_msgSend_removeAllObjects(v33, v34, v35, v36, v37);

    v42 = objc_msgSend_referencesMatchingInputAsPrefix(v8, v38, v39, v40, v41);
    objc_msgSend_addObjectsFromArray_(v42, v43, v28, v44, v45);
  }

  if (objc_msgSend_parseAsBaseTableReference(v8, v20, v21, v22, v23))
  {
    v46 = v53;
    retstr->var0.range = v52;
    retstr->var0._tableUID = v46;
  }

  else
  {
    v47 = objc_opt_class();
    v51[0] = v52;
    v51[1] = v53;
    if (v47)
    {
      objc_msgSend_p_baseRangeRefForChromeRangeRef_calcEngine_(v47, v48, v51, v15, v49);
    }

    else
    {
      retstr->var0.range = 0u;
      retstr->var0._tableUID = 0u;
    }
  }

  return result;
}

- (TSCERangeRef)parseR1C1Reference:(SEL)a3 containingCell:(id)a4 preserveFlagsOut:(const TSCECellRef *)a5
{
  v88 = a4;
  objc_msgSend_calcEngine(self, v10, v11, v12, v13);
  v92 = 0;
  v93 = 0;
  v89 = v91 = 0;
  v15 = objc_msgSend_p_parseComponentsOfReference_gettingSheetName_gettingTableName_gettingRest_(self, v14, v88, &v93, &v92, &v91);
  v16 = v93;
  v17 = v92;
  v18 = v91;
  v23 = v18;
  if (v15)
  {
    v85 = a6;
    v87 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v19, v20, v21, v22);
    v27 = objc_msgSend_stringByTrimmingCharactersInSet_(v17, v24, v87, v25, v26);

    v31 = objc_msgSend_stringByTrimmingCharactersInSet_(v16, v28, v87, v29, v30);

    v35 = objc_msgSend_stringByTrimmingCharactersInSet_(v23, v32, v87, v33, v34);

    v36 = sub_221140460(self->_stringManipulator, v31);

    v37 = sub_221140460(self->_stringManipulator, v27);

    v43 = objc_msgSend_resolverForTableUID_(v89, v38, a5->_tableUID._lower, a5->_tableUID._upper, v39);
    if (v36)
    {
      v44 = objc_msgSend_resolverContainerMatchingName_(v89, v40, v36, v41, v42);
      if (!v44)
      {
        retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        retstr->_tableUID._lower = 0;
        retstr->_tableUID._upper = 0;
        goto LABEL_36;
      }

      v86 = v44;
      if (!v37)
      {
        goto LABEL_14;
      }

      v48 = objc_msgSend_resolverMatchingName_(v44, v45, v37, v46, v47);
    }

    else
    {
      if (!v37)
      {
        v86 = 0;
LABEL_14:
        v52 = sub_221140FC8(&self->_stringManipulator->super.isa, v35);
        v57 = objc_msgSend_count(v52, v53, v54, v55, v56);
        if (v57 == 2)
        {
          v90 = 0;
          v71 = objc_msgSend_objectAtIndex_(v52, v58, 0, v59, v60);
          v73 = objc_msgSend_parseR1C1Coord_containingCell_preserveFlagsOut_(self, v72, v71, a5, &v90 + 1);

          v77 = objc_msgSend_objectAtIndex_(v52, v74, 1, v75, v76);
          v79 = objc_msgSend_parseR1C1Coord_containingCell_preserveFlagsOut_(self, v78, v77, a5, &v90);

          v85->_flags = HIBYTE(v90) & 3 | (4 * (v90 & 3));
          v68 = 0x7FFF7FFFFFFFLL;
          if (v73 == 0x7FFFFFFF)
          {
            v63 = 0x7FFF7FFFFFFFLL;
          }

          else
          {
            v63 = 0x7FFF7FFFFFFFLL;
            if ((v73 & 0xFFFF00000000) != 0x7FFF00000000 && v79 != 0x7FFFFFFF && (v79 & 0xFFFF00000000) != 0x7FFF00000000)
            {
              v80 = HIDWORD(v73);
              if (WORD2(v73) >= WORD2(v79))
              {
                v81 = HIDWORD(v79);
              }

              else
              {
                v81 = HIDWORD(v73);
              }

              if (WORD2(v73) < WORD2(v79))
              {
                v80 = HIDWORD(v79);
              }

              if (v73 >= v79)
              {
                v82 = v79;
              }

              else
              {
                v82 = v73;
              }

              v68 = v82 & 0xFFFF0000FFFFFFFFLL | (v81 << 32);
              if (v73 <= v79)
              {
                v83 = v79;
              }

              else
              {
                v83 = v73;
              }

              v63 = (v83 & 0xFFFF0000FFFFFFFFLL | (v80 << 32));
            }
          }
        }

        else
        {
          if (v57 != 1)
          {
            retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
            retstr->_tableUID._lower = 0;
            retstr->_tableUID._upper = 0;
            goto LABEL_35;
          }

          v61 = objc_msgSend_objectAtIndex_(v52, v58, 0, v59, v60);
          v63 = objc_msgSend_parseR1C1Coord_containingCell_preserveFlagsOut_(self, v62, v61, a5, v85);

          v68 = v63;
        }

        v69 = objc_msgSend_resolverUID(v43, v64, v65, v66, v67);
        retstr->range._topLeft = v68;
        retstr->range._bottomRight = v63;
        retstr->_tableUID._lower = v69;
        retstr->_tableUID._upper = v70;
LABEL_35:

        goto LABEL_36;
      }

      v49 = objc_msgSend_resolverForTableUID_(v89, v40, a5->_tableUID._lower, a5->_tableUID._upper, v42);
      v48 = objc_msgSend_resolverMatchingName_contextResolver_(v89, v50, v37, v49, v51);

      v86 = 0;
      v43 = v49;
    }

    if (v48)
    {
      v43 = v48;
      goto LABEL_14;
    }

    retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    retstr->_tableUID._lower = 0;
    retstr->_tableUID._upper = 0;
    v43 = v86;
LABEL_36:

    goto LABEL_37;
  }

  retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  v35 = v18;
  v37 = v17;
  v36 = v16;
LABEL_37:

  return result;
}

- (TSUCellCoord)parseR1C1Coord:(id)a3 containingCell:(const TSCECellRef *)a4 preserveFlagsOut:(TSUPreserveFlags *)a5
{
  v7 = a3;
  v10 = objc_msgSend_rangeOfString_options_(v7, v8, @"R", 1, v9);
  v12 = v11;
  v14 = objc_msgSend_rangeOfString_options_(v7, v11, @"C", 1, v13);
  v18 = v14;
  v19 = v15;
  v20 = 0x7FFF7FFFFFFFLL;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v14 != 0x7FFFFFFFFFFFFFFFLL && v14 < v10 || v10 != 0x7FFFFFFFFFFFFFFFLL && v10 || v10 == 0x7FFFFFFFFFFFFFFFLL && v14)
  {
    goto LABEL_54;
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = objc_msgSend_substringFromIndex_(v7, v15, 1, v16, v17);
      v26 = 0;
      goto LABEL_13;
    }

    v26 = 0;
    v27 = 0;
  }

  else
  {
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = objc_msgSend_substringWithRange_(v7, v15, &v12[v10], v14 - 1, v17);
      v25 = objc_msgSend_substringFromIndex_(v7, v22, &v19[v18], v23, v24);
      v26 = v21;
LABEL_13:
      v27 = v25;
      goto LABEL_16;
    }

    v27 = 0;
    v26 = objc_msgSend_substringFromIndex_(v7, v15, 1, v16, v17);
  }

LABEL_16:
  if (v26 | v27)
  {
    a5->_flags = a5->_flags & 0xF0 | 3;
    if (objc_msgSend_hasPrefix_(v26, v15, @"[", v16, v17) && objc_msgSend_hasSuffix_(v26, v28, @"]", v29, v30))
    {
      a5->_flags &= ~2u;
      v32 = objc_msgSend_length(v26, v28, v31, v29, v30);
      v35 = objc_msgSend_substringWithRange_(v26, v33, 1, v32 - 2, v34);

      v26 = v35;
    }

    if (objc_msgSend_hasPrefix_(v27, v28, @"[", v29, v30) && objc_msgSend_hasSuffix_(v27, v36, @"]", v38, v39))
    {
      a5->_flags &= ~1u;
      v40 = objc_msgSend_length(v27, v36, v37, v38, v39);
      v43 = objc_msgSend_substringWithRange_(v27, v41, 1, v40 - 2, v42);

      v27 = v43;
    }

    if (v26)
    {
      row = a4->coordinate.row;
    }

    else
    {
      row = 0x7FFFFFFF;
    }

    if (objc_msgSend_length(v26, v36, v37, v38, v39))
    {
      v49 = objc_alloc(MEMORY[0x277CCAC80]);
      v53 = objc_msgSend_initWithString_(v49, v50, v26, v51, v52);
      objc_msgSend_setCharactersToBeSkipped_(v53, v54, 0, v55, v56);
      v86 = 0;
      objc_msgSend_scanInt_(v53, v57, &v86, v58, v59);
      v64 = objc_msgSend_isAtEnd(v53, v60, v61, v62, v63);
      if ((v86 + 0x7FFFFFFF) < 0xFFFFFFFE)
      {
        v65 = v64;
      }

      else
      {
        v65 = 0;
      }

      if ((v65 & 1) == 0)
      {
        goto LABEL_52;
      }

      if ((a5->_flags & 2) != 0)
      {
        row = v86 - 1;
        if ((v86 - 1) >= 0xF4240)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v86 < -a4->coordinate.row || v86 > (999999 - a4->coordinate.row))
        {
          goto LABEL_52;
        }

        row += v86;
      }
    }

    if (v27)
    {
      column = a4->coordinate.column;
    }

    else
    {
      column = 0x7FFF;
    }

    if (!objc_msgSend_length(v27, v45, v46, v47, v48))
    {
      goto LABEL_51;
    }

    v67 = objc_alloc(MEMORY[0x277CCAC80]);
    v53 = objc_msgSend_initWithString_(v67, v68, v27, v69, v70);
    objc_msgSend_setCharactersToBeSkipped_(v53, v71, 0, v72, v73);
    v85 = 0;
    objc_msgSend_scanInt_(v53, v74, &v85, v75, v76);
    v81 = objc_msgSend_isAtEnd(v53, v77, v78, v79, v80);
    if ((v85 + 0x7FFFFFFF) < 0xFFFFFFFE)
    {
      v82 = v81;
    }

    else
    {
      v82 = 0;
    }

    if (v82)
    {
      if (a5->_flags)
      {
        column = v85 - 1;
        if (v85 >= 1 && v85 <= 0x3E8u)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v83 = a4->coordinate.column;
        if (v85 + v83 < 0 == __OFADD__(v85, v83) && v85 <= 999 - v83)
        {
          column += v85;
LABEL_50:

LABEL_51:
          v20 = row | (column << 32);
LABEL_53:

          goto LABEL_54;
        }
      }
    }

LABEL_52:

    goto LABEL_53;
  }

LABEL_54:

  return v20;
}

- (TSKUIDStruct)p_findFirstColumnNameInComponent:(id)a3 tableName:(id)a4 refResolver:(id)a5 calcEngine:(id)a6 outPreserveFlags:(TSUPreserveFlags *)a7 usedWordCount:(unint64_t *)a8
{
  v13 = a3;
  v90 = a4;
  v89 = a5;
  v91 = a6;
  v100 = 0;
  v101 = &v100;
  v102 = 0x4012000000;
  v103 = sub_221099028;
  v104 = nullsub_5;
  v105 = &unk_22188E88F;
  v106 = 0;
  v107 = 0;
  v17 = objc_msgSend_wordAtIndex_(v13, v14, 0, v15, v16);
  v22 = objc_msgSend_trimmedString(v17, v18, v19, v20, v21);
  v27 = objc_msgSend_numWords(v13, v23, v24, v25, v26);
  if (objc_msgSend_hasPreserveFlag(v17, v28, v29, v30, v31))
  {
    a7->_flags |= 1u;
  }

  v40 = objc_msgSend_headerNameMgr(v91, v32, v33, v34, v35);
  v99 = 0uLL;
  if (v90 && v89)
  {
    *&v99 = objc_msgSend_resolverUID(v89, v36, v37, v38, v39);
    *(&v99 + 1) = v36;
  }

  v88 = a8;
  v41 = 0;
  v42 = v27 - 1;
  if (v27 != 1 && v17)
  {
    v41 = 1;
    if (v40)
    {
LABEL_9:
      objc_msgSend_headerCellsMatching_limitToTable_includePrefixes_(v40, v36, v22, &v99, 0);
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = sub_221099038;
      v92[3] = &unk_27845DB70;
      v93 = v40;
      v94 = v90;
      v97 = v99;
      v95 = v91;
      v96 = &v100;
      TSCECellRefSet::enumerateCellRefsUsingBlock(v98, v92);

      sub_22107C800(v98, v98[1]);
      goto LABEL_10;
    }

    while (1)
    {
LABEL_10:
      if (!v101[6] && !v101[7])
      {
        v43 = TSUCellCoord::coordFromString(v22, 0x3E8);
        if (v43 == 0x7FFFFFFF)
        {
          v44 = WORD2(v43);
          if (WORD2(v43) != 0x7FFFLL)
          {
            v45 = objc_msgSend_tableInfo(v89, v36, v37, v38, v39);
            v50 = v45;
            if (v45)
            {
              v51 = objc_msgSend_translator(v45, v46, v47, v48, v49);
              v55 = objc_msgSend_viewColumnIndexForChromeColumnIndex_(v51, v52, v44, v53, v54);

              v59 = objc_msgSend_columnUIDForColumnIndex_(v50, v56, v55, v57, v58);
              v60 = v101;
              v101[6] = v59;
              v60[7] = v61;
            }
          }
        }
      }

      if (v101[6] || v101[7] || (v41 >= v42) | objc_msgSend_wasQuoted(v17, v36, v37, v38, v39) & 1)
      {
        break;
      }

      v65 = objc_msgSend_wordAtIndex_(v13, v62, v41, v63, v64);

      if (!v65)
      {
        v17 = 0;
        break;
      }

      if (objc_msgSend_hasPreserveFlag(v65, v66, v67, v68, v69) & 1) != 0 || (objc_msgSend_wasQuoted(v65, v70, v71, v72, v73))
      {
        v17 = v65;
        break;
      }

      v78 = MEMORY[0x277CCACA8];
      v79 = objc_msgSend_trimmedString(v65, v74, v75, v76, v77);
      v83 = objc_msgSend_stringWithFormat_(v78, v80, @"%@ %@", v81, v82, v22, v79);

      ++v41;
      v17 = v65;
      v22 = v83;
      if (v40)
      {
        goto LABEL_9;
      }
    }
  }

  v84 = v101[6];
  v85 = v101[7];
  if (*(v101 + 3) == 0)
  {
    v85 = 0;
  }

  else
  {
    *v88 = v41;
  }

  _Block_object_dispose(&v100, 8);
  v86 = v84;
  v87 = v85;
  result._upper = v87;
  result._lower = v86;
  return result;
}

- (id)p_parseAsCategoryRefWithSheet:(id)a3 tableName:(id)a4 columnNameAndGroupValuesStartAt:(unint64_t)a5 withParsingContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_opt_new();
  v18 = objc_msgSend_refPathSplitter(v12, v14, v15, v16, v17);
  if (objc_msgSend_numComponents(v18, v19, v20, v21, v22) > a5)
  {
    v244 = objc_msgSend_calcEngine(self, v23, v24, v25, v26);
    if (v10)
    {
      v242 = objc_msgSend_resolverContainerMatchingName_(v244, v27, v10, v29, v30);
      if (!v11)
      {
        v241 = 0;
        v243 = 0;
        v236 = 11;
        goto LABEL_34;
      }

      if (v242)
      {
        v32 = objc_msgSend_resolverMatchingName_(v242, v27, v11, v29, v30);
        if (!v32)
        {
          goto LABEL_13;
        }

        goto LABEL_16;
      }
    }

    else if (!v11)
    {
      v42 = objc_msgSend_contextResolver(v12, v27, v28, v29, v30);
      v242 = 0;
      if (!v42)
      {
        v236 = 11;
        v241 = 0;
        v243 = 0;
        goto LABEL_34;
      }

      v32 = v42;
LABEL_16:
      v241 = v32;
      v239 = objc_msgSend_tableInfo(v32, v27, v31, v29, v30);
      v243 = objc_msgSend_groupBy(v239, v43, v44, v45, v46);
      if (v243)
      {
        v51 = objc_msgSend_aggregateFunction(v12, v47, v48, v49, v50);

        if (!v51)
        {
          v62 = objc_msgSend_numComponents(v18, v52, v53, v54, v55);
          v237 = objc_msgSend_componentAtIndex_(v18, v63, v62 - 1, v64, v65);
          v70 = objc_msgSend_numWords(v237, v66, v67, v68, v69);
          v234 = objc_msgSend_wordAtIndex_(v237, v71, v70 - 1, v72, v73);
          v78 = objc_msgSend_trimmedString(v234, v74, v75, v76, v77);
          v82 = objc_msgSend_rangeOfString_(v78, v79, @"("), v80, v81;
          if (v83)
          {
            v87 = v82;
            v88 = objc_msgSend_length(v78, v83, v84, v85, v86);
            v90 = objc_msgSend_rangeOfString_options_range_(v78, v89, @""), 6, v87 + 1, v88 + ~v87);
            if (v91)
            {
              v93 = objc_msgSend_substringWithRange_(v78, v91, v87 + 1, v90 + ~v87, v92);
              v236 = objc_msgSend_aggregateTypeForAggregateLabel_(v243, v94, v93, v95, v96);
              if (v236 == 255)
              {
                v236 = 11;
              }

              else
              {
                objc_msgSend_setAggregateFunction_(v12, v97, v93, v98, v99);
                v104 = objc_msgSend_numWords(v237, v100, v101, v102, v103);
                objc_msgSend_removeRefPathWordAtIndex_(v237, v105, v104 - 1, v106, v107);
              }
            }

            else
            {
              v236 = 11;
            }
          }

          else
          {
            v236 = 11;
          }

          goto LABEL_33;
        }

        v56 = objc_msgSend_aggregateFunction(v12, v52, v53, v54, v55);
        v60 = objc_msgSend_aggregateTypeForAggregateLabel_(v243, v57, v56, v58, v59);

        if (v60 == 255)
        {
          v61 = 11;
        }

        else
        {
          v61 = v60;
        }
      }

      else
      {
        v61 = 11;
      }

      v236 = v61;
LABEL_33:

LABEL_34:
      v240 = objc_msgSend_componentAtIndex_(v18, v27, a5, v29, v30);
      v249 = 1;
      v248 = objc_msgSend_preserveFlags(v13, v108, v109, v110, v111);
      *&v247 = objc_msgSend_p_findFirstColumnNameInComponent_tableName_refResolver_calcEngine_outPreserveFlags_usedWordCount_(self, v112, v240, v11, v241, v244, &v248, &v249);
      *(&v247 + 1) = v113;
      objc_msgSend_setPreserveFlags_(v13, v113, v248, v114, v115);
      if (v243 && v247 != 0)
      {
        v233 = v10;
        v120 = objc_msgSend_tableInfo(v243, v116, v117, v118, v119);
        v232 = v120;
        v235 = objc_msgSend_tableModel(v243, v121, v122, v123, v124);
        v238 = objc_msgSend_objectLocale(v235, v125, v126, v127, v128);
        v132 = objc_msgSend_localizedNameForBlankGroupForDocumentLocale_(TSTGroupBy, v129, v238, v130, v131);
        objc_msgSend_setLocalizedBlankGroupName_(v18, v133, v132, v134, v135);

        v139 = objc_msgSend_localizedNameForErrorGroupForDocumentLocale_(TSTGroupBy, v136, v238, v137, v138);
        objc_msgSend_setLocalizedErrorGroupName_(v18, v140, v139, v141, v142);

        v147 = objc_msgSend_trueString(v238, v143, v144, v145, v146);
        objc_msgSend_setLocalizedTrueGroupName_(v18, v148, v147, v149, v150);

        v155 = objc_msgSend_falseString(v238, v151, v152, v153, v154);
        objc_msgSend_setLocalizedFalseGroupName_(v18, v156, v155, v157, v158);

        if (v120)
        {
          v161 = v120;
          v162 = objc_msgSend_columnIndexForColumnUID_(v120, v159, v247, *(&v247 + 1), v160);
          v167 = objc_msgSend_translator(v161, v163, v164, v165, v166);
          v246 = objc_msgSend_chromeColumnIndexForViewColumnIndex_(v167, v168, v162, v169, v170);
        }

        else
        {
          v246 = objc_msgSend_columnIndexForColumnUID_(v235, v159, v247, *(&v247 + 1), v160);
        }

        v175 = objc_msgSend_namer(v244, v171, v172, v173, v174);
        v245[0] = objc_msgSend_tableUID(v235, v176, v177, v178, v179);
        v245[1] = v180;
        v181 = objc_msgSend_nameForChromeColumnIndex_inTable_useSymbolicNames_(v175, v180, &v246, v245, 1);

        v184 = objc_msgSend_localizedTrueStringForBooleanGroupWithString_documentLocale_(TSTGroupBy, v182, v181, v238, v183);
        v188 = objc_msgSend_normalizedStringForCompare_(TSTGroupNode, v185, v184, v186, v187);
        objc_msgSend_setLocalizedTrueGroupNameForColumn_(v18, v189, v188, v190, v191);

        v194 = objc_msgSend_localizedFalseStringForBooleanGroupWithString_documentLocale_(TSTGroupBy, v192, v181, v238, v193);
        v198 = objc_msgSend_normalizedStringForCompare_(TSTGroupNode, v195, v194, v196, v197);
        objc_msgSend_setLocalizedFalseGroupNameForColumn_(v18, v199, v198, v200, v201);

        v203 = objc_msgSend_groupNodeForGroupValueHierarchyFromSplitter_startAtComponent_startAtWord_preserveFlags_(v243, v202, v18, a5, v249, &v248);
        v208 = v203;
        if (v203)
        {
          v209 = objc_msgSend_groupLevel(v203, v204, v205, v206, v207);
          if (v209 <= 1)
          {
            objc_msgSend_aggregateRefForType_atLevel_forColumnUid_(v208, v210, v236, 1, &v247);
          }

          else
          {
            objc_msgSend_aggregateRefForType_atLevel_forColumnUid_(v208, v210, v236, v209, &v247);
          }
          v211 = ;

          v13 = v211;
          objc_msgSend_setPreserveFlags_(v211, v212, v248, v213, v214);
        }

        v10 = v233;
      }

      v215 = v243;
      v216 = objc_msgSend_groupByUid(v13, v116, v117, v118, v119);
      if (v216 | v217)
      {
        objc_msgSend_setSheetName_(v12, v217, v10, v218, v219);
        objc_msgSend_setTableName_(v12, v220, v11, v221, v222);
        v223 = sub_221140460(self->_stringManipulator, v10);
        objc_msgSend_setSheetNameUnquoted_(v12, v224, v223, v225, v226);

        v227 = sub_221140460(self->_stringManipulator, v11);
        objc_msgSend_setTableNameUnquoted_(v12, v228, v227, v229, v230);

        v215 = v243;
      }

      goto LABEL_48;
    }

    v33 = objc_msgSend_contextResolver(v12, v27, v28, v29, v30);

    if (!v33)
    {
      v242 = 0;
LABEL_13:

      v41 = 0;
      goto LABEL_49;
    }

    v38 = objc_msgSend_contextResolver(v12, v34, v35, v36, v37);
    v32 = objc_msgSend_resolverMatchingName_contextResolver_(v244, v39, v11, v38, v40);

    v242 = 0;
    if (!v32)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_48:
  v13 = v13;
  v41 = v13;
LABEL_49:

  return v41;
}

- (id)parseStringAsCategoryRef:(id)a3 withParsingContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [TSCEQuotedRefPathSplitter alloc];
  v12 = objc_msgSend_initWithReferenceString_(v8, v9, v6, v10, v11);
  objc_msgSend_setRefPathSplitter_(v7, v13, v12, v14, v15);

  v19 = objc_msgSend_parseAsCategoryRefWithParsingContext_(self, v16, v7, v17, v18);

  return v19;
}

- (id)parseAsCategoryRefWithParsingContext:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_refPathSplitter(v4, v5, v6, v7, v8);
  if (objc_msgSend_numComponents(v9, v10, v11, v12, v13))
  {
    v17 = objc_msgSend_componentAtIndex_(v9, v14, 0, v15, v16);
    if (objc_msgSend_numWords(v17, v18, v19, v20, v21) && (objc_msgSend_wordAtIndex_(v17, v22, 0, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend_hasPreserveFlag(v26, v27, v28, v29, v30), v26, (v31 & 1) != 0))
    {
      v32 = 0;
      v33 = 1;
      isValid = objc_msgSend_isValid(0, v22, v23, v24, v25);
    }

    else if (objc_msgSend_numComponents(v9, v22, v23, v24, v25) < 3)
    {
      v33 = 0;
      v32 = 0;
      isValid = objc_msgSend_isValid(0, v39, v40, v41, v42);
    }

    else
    {
      v43 = objc_msgSend_trimmedStringStartingAtWord_(v17, v39, 0, v41, v42);
      v47 = objc_msgSend_componentAtIndex_(v9, v44, 1, v45, v46);
      v51 = objc_msgSend_wordAtIndex_(v47, v48, 0, v49, v50);
      hasPreserveFlag = objc_msgSend_hasPreserveFlag(v51, v52, v53, v54, v55);

      if (hasPreserveFlag)
      {
        v32 = 0;
      }

      else
      {
        v60 = objc_msgSend_trimmedStringStartingAtWord_(v47, v57, 0, v58, v59);
        v32 = objc_msgSend_p_parseAsCategoryRefWithSheet_tableName_columnNameAndGroupValuesStartAt_withParsingContext_(self, v61, v43, v60, 2, v4);
      }

      v33 = 0;
      isValid = objc_msgSend_isValid(v32, v62, v63, v64, v65);
    }

    if (((v33 | isValid) & 1) == 0 && objc_msgSend_numComponents(v9, v35, v36, v37, v38) >= 2)
    {
      v66 = objc_msgSend_trimmedStringStartingAtWord_(v17, v35, 0, v37, v38);
      v68 = objc_msgSend_p_parseAsCategoryRefWithSheet_tableName_columnNameAndGroupValuesStartAt_withParsingContext_(self, v67, 0, v66, 1, v4);

      v32 = v68;
    }

    if ((objc_msgSend_isValid(v32, v35, v36, v37, v38) & 1) == 0 && objc_msgSend_numComponents(v9, v69, v70, v71, v72))
    {
      v74 = objc_msgSend_p_parseAsCategoryRefWithSheet_tableName_columnNameAndGroupValuesStartAt_withParsingContext_(self, v73, 0, 0, 0, v4);

      v32 = v74;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

+ (id)p_baseReferencesForChromeReferences:(id)a3 calcEngine:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v12 = v5;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v59, v63, 16);
  if (v14)
  {
    v15 = *v60;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v60 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v59 + 1) + 8 * i);
        v18 = objc_opt_class();
        v21 = objc_msgSend_p_baseReferenceForChromeReference_calcEngine_(v18, v19, v17, v6, v20);
        v26 = objc_msgSend_preserveFlags(v17, v22, v23, v24, v25);
        objc_msgSend_setPreserveFlags_(v21, v27, v26, v28, v29);
        v34 = objc_msgSend_wasConstructedViaNames(v17, v30, v31, v32, v33);
        objc_msgSend_setWasConstructedViaNames_(v21, v35, v34, v36, v37);
        v42 = objc_msgSend_overrideText(v17, v38, v39, v40, v41);
        objc_msgSend_setOverrideText_(v21, v43, v42, v44, v45);

        v50 = objc_msgSend_overrideTextAsTyped(v17, v46, v47, v48, v49);
        objc_msgSend_setOverrideTextAsTyped_(v21, v51, v50, v52, v53);

        objc_msgSend_addObject_(v11, v54, v21, v55, v56);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v57, &v59, v63, 16);
    }

    while (v14);
  }

  return v11;
}

+ (id)p_chromeReferencesForMixedReferences:(id)a3 calcEngine:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v12 = v5;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v65, v69, 16);
  if (v18)
  {
    v19 = *v66;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v66 != v19)
        {
          objc_enumerationMutation(v12);
        }

        v21 = *(*(&v65 + 1) + 8 * i);
        if (objc_msgSend_wasConstructedViaNames(v21, v14, v15, v16, v17))
        {
          v25 = objc_opt_class();
          v28 = objc_msgSend_p_chromeReferenceForBaseReference_calcEngine_(v25, v26, v21, v6, v27);
          v33 = objc_msgSend_preserveFlags(v21, v29, v30, v31, v32);
          objc_msgSend_setPreserveFlags_(v28, v34, v33, v35, v36);
          v41 = objc_msgSend_wasConstructedViaNames(v21, v37, v38, v39, v40);
          objc_msgSend_setWasConstructedViaNames_(v28, v42, v41, v43, v44);
          v49 = objc_msgSend_overrideText(v21, v45, v46, v47, v48);
          objc_msgSend_setOverrideText_(v28, v50, v49, v51, v52);

          v57 = objc_msgSend_overrideTextAsTyped(v21, v53, v54, v55, v56);
          objc_msgSend_setOverrideTextAsTyped_(v28, v58, v57, v59, v60);

          objc_msgSend_addObject_(v11, v61, v28, v62, v63);
        }

        else
        {
          objc_msgSend_addObject_(v11, v22, v21, v23, v24);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v65, v69, 16);
    }

    while (v18);
  }

  return v11;
}

+ (id)p_baseReferenceForChromeReference:(id)a3 calcEngine:(id)a4
{
  v5 = a3;
  v10 = a4;
  if (v5)
  {
    objc_msgSend_rangeRef(v5, v6, v7, v8, v9);
    v11 = *(&v25 + 1);
    v12 = v25;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v26;
  v13 = objc_opt_class();
  v22 = v12;
  v23 = v11;
  v24 = v26;
  if (v13)
  {
    objc_msgSend_p_baseRangeRefForChromeRangeRef_calcEngine_(v13, v14, &v22, v10, v15);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v16 = [TSCEAnyReference alloc];
  v20 = objc_msgSend_initWithRangeRef_(v16, v17, &v25, v18, v19, v22, v23, v24);

  return v20;
}

+ (id)p_chromeReferenceForBaseReference:(id)a3 calcEngine:(id)a4
{
  v5 = a3;
  v10 = a4;
  if (v5)
  {
    objc_msgSend_rangeRef(v5, v6, v7, v8, v9);
    v11 = *(&v25 + 1);
    v12 = v25;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v26;
  v13 = objc_opt_class();
  v22 = v12;
  v23 = v11;
  v24 = v26;
  if (v13)
  {
    objc_msgSend_p_chromeRangeRefForBaseRangeRef_calcEngine_(v13, v14, &v22, v10, v15);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v16 = [TSCEAnyReference alloc];
  v20 = objc_msgSend_initWithRangeRef_(v16, v17, &v25, v18, v19, v22, v23, v24);

  return v20;
}

+ (RefTypeHolder<TSCERangeRef,)p_baseRangeRefForChromeRangeRef:(id)a2 calcEngine:(SEL)a3
{
  v7 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, a3, a4->var0._tableUID._lower, a4->var0._tableUID._upper, a5);
  v8 = [TSCECellTractRef alloc];
  v12 = objc_msgSend_initWithRangeRef_(v8, v9, a4, v10, v11);
  v17 = objc_msgSend_translator(v7, v13, v14, v15, v16);
  v21 = objc_msgSend_baseTractRefForChromeTractRef_(v17, v18, v12, v19, v20);

  v30 = 0;
  if (v21)
  {
    objc_msgSend_boundingRangeRef(v21, v22, v23, v24, v25);
    v26 = v28;
    v30 = v29;
  }

  else
  {
    v26 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  }

  retstr->var0.range = v26;
  retstr->var0._tableUID = v30;

  return result;
}

+ (RefTypeHolder<TSCERangeRef,)p_chromeRangeRefForBaseRangeRef:(id)a2 calcEngine:(SEL)a3
{
  v7 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, a3, a4->var0._tableUID._lower, a4->var0._tableUID._upper, a5);
  v8 = [TSCECellTractRef alloc];
  v12 = objc_msgSend_initWithRangeRef_(v8, v9, a4, v10, v11);
  v17 = objc_msgSend_translator(v7, v13, v14, v15, v16);
  v21 = objc_msgSend_chromeTractRefForBaseTractRef_(v17, v18, v12, v19, v20);

  v34 = 0;
  if (objc_msgSend_isValid(v21, v22, v23, v24, v25))
  {
    if (v21)
    {
      objc_msgSend_boundingRangeRef(v21, v26, v27, v28, v29);
      v30 = v32;
    }

    else
    {
      v30 = 0;
      v33 = 0;
    }

    v34 = v33;
  }

  else
  {
    v30 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  }

  retstr->var0.range = v30;
  retstr->var0._tableUID = v34;

  return result;
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  return WeakRetained;
}

@end