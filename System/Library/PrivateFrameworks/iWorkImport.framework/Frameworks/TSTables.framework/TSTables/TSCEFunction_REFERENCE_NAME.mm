@interface TSCEFunction_REFERENCE_NAME
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (void)addNameFragmentPrecedentsForHeaderRange:(id)range headerRangeRef:(const TSCERangeRef *)ref;
@end

@implementation TSCEFunction_REFERENCE_NAME

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  sub_2210F0C3C(&v306);
  columns.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  columns._tableUID._lower = 0;
  columns._tableUID._upper = 0;
  if (*(arguments + 1) == *arguments)
  {
    v21 = 1;
  }

  else
  {
    v12 = **arguments;
    if ((objc_msgSend_isTokenOrEmptyArg(v12, v13, v14, v15, v16) & 1) != 0 || objc_msgSend_deepType_(v12, v17, context, v18, v19) == 10)
    {
      v21 = 1;
    }

    else
    {
      v304 = 0;
      v128 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v12, v20, context, spec, 0, &v304);
      v79 = v304;
      if (v79)
      {
        v133 = objc_msgSend_functionName(spec, v129, v130, v131, v132);
        v137 = objc_msgSend_notAReferenceErrorForFunctionName_(TSCEError, v134, v133, v135, v136);
        v78 = objc_msgSend_raiseErrorOrConvert_(context, v138, v137, v139, v140);

        goto LABEL_103;
      }

      if (v128)
      {
        objc_msgSend_rangeRef(v128, v129, v130, v131, v132);
      }

      else
      {
        memset(&v301, 0, 32);
      }

      columns = v301._columns;
      v203 = objc_msgSend_tractRef(v128, v129, v130, v131, v132);
      TSUIndexSet::operator=();
      TSUIndexSet::operator=();
      v204 = *(v203 + 64);
      *&v308[13] = *(v203 + 77);
      *v308 = v204;
      if (objc_msgSend_isOutputOfAFunction(v128, v205, v206, v207, v208))
      {
        v302.range._topLeft = columns.range._topLeft;
        *&v302.range._bottomRight.row = columns._tableUID;
        *&v301._columns = 0;
        TSCERangeRef::TSCERangeRef(&v309, &v302);
        v301._columns._singleRange = v309.range;
        *&v301._columns._multipleRanges = v309._tableUID;
        LOBYTE(v301._rows._singleRange._begin) = 0;
        v301._tableUID._upper = 0;
        memset(&v301._rows._singleRange._end, 0, 18);
        objc_msgSend_addCalculatedPrecedent_(context, v209, &v301, v210, v211);

        v302.range._topLeft = columns.range._bottomRight;
        *&v302.range._bottomRight.row = columns._tableUID;
        *&v301._columns = 0;
        TSCERangeRef::TSCERangeRef(&v309, &v302);
        v301._columns._singleRange = v309.range;
        *&v301._columns._multipleRanges = v309._tableUID;
        LOBYTE(v301._rows._singleRange._begin) = 0;
        v301._tableUID._upper = 0;
        memset(&v301._rows._singleRange._end, 0, 18);
        objc_msgSend_addCalculatedPrecedent_(context, v212, &v301, v213, v214);
      }

      v21 = 0;
    }
  }

  v303.origin = 0;
  v303.size = 0;
  v303.origin = *objc_msgSend_containingCell(context, v8, v9, v10, v11);
  v303.size = 0x100000001;
  v26 = objc_msgSend_containingTable(context, v22, v23, v24, v25);
  TSCERangeRef::TSCERangeRef(&v302, &v303, v26);
  if (v21)
  {
    columns = v302;
    v31 = objc_msgSend_containingCell(context, v27, v28, v29, v30);
    v36 = objc_msgSend_containingCell(context, v32, v33, v34, v35);
    v41 = objc_msgSend_containingTable(context, v37, v38, v39, v40);
    TSCECellTractRefCore::TSCECellTractRefCore(&v301, v31, v36, v41);
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    *v308 = v301._tableUID;
    *&v308[13] = *(&v301._tableUID._upper + 5);
    TSUIndexSet::~TSUIndexSet(&v301._rows);
    TSUIndexSet::~TSUIndexSet(&v301._columns);
  }

  topLeft = columns.range._topLeft;
  tableUID = columns._tableUID;
  v42 = objc_msgSend_calcEngine(context, v27, v28, v29, v30);
  IsValidIncludingSheet = objc_msgSend_referenceIsValidIncludingSheet_(v42, v43, &columns, v44, v45);

  if ((IsValidIncludingSheet & 1) == 0)
  {
    v74 = objc_msgSend_invalidReferenceError(TSCEError, v47, v48, v49, v50);
    v78 = objc_msgSend_raiseErrorOrConvert_(context, v75, v74, v76, v77);

    v79 = 0;
    goto LABEL_103;
  }

  if (*v308 != 0)
  {
    objc_msgSend_sheetTableNamePrecedentForTableUID_(TSCEHauntedOwner, v47, v308, v49, v50);
    *&v301._columns = 0;
    TSCERangeRef::TSCERangeRef(&v309, &v295);
    v301._columns._singleRange = v309.range;
    *&v301._columns._multipleRanges = v309._tableUID;
    LOBYTE(v301._rows._singleRange._begin) = 0;
    v301._tableUID._upper = 0;
    memset(&v301._rows._singleRange._end, 0, 18);
    objc_msgSend_addCalculatedPrecedent_(context, v51, &v301, v52, v53);
  }

  v298 = *v308;
  v292 = objc_msgSend_calcEngine(context, v47, v48, v49, v50);
  v57 = objc_msgSend_tableResolverForTableUID_(v292, v54, &v298, v55, v56);
  v294 = objc_msgSend_namer(v292, v58, v59, v60, v61);
  v66 = objc_alloc_init(TSCERefNamingContext);
  if (v57)
  {
    v67 = objc_msgSend_sheetName(v57, v62, v63, v64, v65);
    objc_msgSend_setContextSheetName_(v66, v68, v67, v69, v70);
  }

  else
  {
    v67 = 0;
    objc_msgSend_setContextSheetName_(v66, v62, 0, v64, v65);
  }

  if (v57)
  {
  }

  objc_msgSend_setAllowTableName_(v66, v71, 1, v72, v73);
  objc_msgSend_setShowGeometricAsBase_(v66, v80, 1, v81, v82);
  objc_msgSend_setQuoteComponents_(v66, v83, 1, v84, v85);
  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v95 = 0;
    goto LABEL_28;
  }

  v86 = *(*arguments + 8);
  if ((objc_msgSend_isTokenOrEmptyArg(v86, v87, v88, v89, v90) & 1) != 0 || objc_msgSend_deepType_(v86, v91, context, v92, v93) == 10)
  {
    v95 = 0;
  }

  else
  {
    v297 = 0;
    v174 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v86, v94, context, spec, 1, &v297);
    v79 = v297;
    LODWORD(v95) = objc_msgSend_integer(v174, v175, v176, v177, v178);

    if (v79)
    {
      goto LABEL_60;
    }

    if (v95 >= 3)
    {
LABEL_107:
      v278 = objc_msgSend_invalidReferenceNameAttributeError(TSCEError, v179, v180, v181, v182);
      v78 = objc_msgSend_raiseErrorOrConvert_(context, v289, v278, v290, v291);
LABEL_101:

      goto LABEL_102;
    }

    v95 = v95;
  }

  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
LABEL_28:
    v105 = 1;
LABEL_29:
    v106 = v57;
    v111 = v106;
    if (v57 && (v112 = objc_msgSend_tableUID(v106, v107, v108, v109, v110), v114 = v113, v118 = objc_msgSend_containingTable(context, v113, v115, v116, v117), v112 == *v118) && (v86 = v111, v114 == v118[1]) || (v119 = objc_msgSend_containingTable(context, v107, v108, v109, v110), objc_msgSend_tableResolverForTableUID_(v292, v120, v119, v121, v122), v86 = objc_claimAutoreleasedReturnValue(), v111, v86))
    {
      v123 = objc_msgSend_containingCell(context, v107, v108, v109, v110);
      isHeaderCell = objc_msgSend_isHeaderCell_(v86, v124, v123, v125, v126);
    }

    else
    {
      isHeaderCell = 1;
    }

    if (TSCERangeRef::isSpanningAllColumns(&columns) || TSCERangeRef::isSpanningAllRows(&columns))
    {
      isSingleCell = 1;
      if (v57)
      {
        goto LABEL_40;
      }
    }

    else
    {
      isSingleCell = TSCERangeRef::isSingleCell(&columns);
      if (v57)
      {
LABEL_40:
        *&v301._columns = topLeft;
        v146 = objc_msgSend_isHeaderCell_(v111, v141, &v301, v143, v144);
        if (v146)
        {
          LOBYTE(v146) = TSCERangeRef::isSingleCell(&columns);
        }

LABEL_44:
        v147 = (isHeaderCell ^ 1) & v105;
        if (v147 & isSingleCell) != 1 || (v146)
        {
          goto LABEL_91;
        }

        v309.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v309._tableUID._lower = 0;
        v309._tableUID._upper = 0;
        v295.range = v309.range;
        v295._tableUID._lower = 0;
        v295._tableUID._upper = 0;
        if (TSCERangeRef::isSpanningAllRows(&columns))
        {
          v152 = objc_msgSend_calcEngine(context, v148, v149, v150, v151);
          v157 = objc_msgSend_headerNameMgr(v152, v153, v154, v155, v156);
          v161 = v157;
          if (v157)
          {
LABEL_48:
            objc_msgSend_baseHeaderRowsForCell_(v157, v158, &topLeft, v159, v160);
LABEL_73:
            v309 = v301._columns;
LABEL_74:

LABEL_75:
            if (TSCERangeRef::isValid(&v309))
            {
              if (context)
              {
                objc_msgSend_containingCellRef(context, v223, v224, v225, v226);
              }

              else
              {
                memset(&v301, 0, 24);
              }

              if (!TSCERangeRef::containsCellRef(&v309, &v301))
              {
                *&v301._columns = 1;
                v301._columns._singleRange = v309.range;
                *&v301._columns._multipleRanges = v309._tableUID;
                LOBYTE(v301._rows._singleRange._begin) = 0;
                v301._tableUID._upper = 0;
                memset(&v301._rows._singleRange._end, 0, 18);
                objc_msgSend_addCalculatedPrecedent_(context, v227, &v301, v228, v229);
              }
            }

            if (TSCERangeRef::isValid(&v295))
            {
              if (context)
              {
                objc_msgSend_containingCellRef(context, v230, v231, v232, v233);
              }

              else
              {
                memset(&v301, 0, 24);
              }

              if (!TSCERangeRef::containsCellRef(&v295, &v301))
              {
                *&v301._columns = 1;
                v301._columns._singleRange = v295.range;
                *&v301._columns._multipleRanges = v295._tableUID;
                LOBYTE(v301._rows._singleRange._begin) = 0;
                v301._tableUID._upper = 0;
                memset(&v301._rows._singleRange._end, 0, 18);
                objc_msgSend_addCalculatedPrecedent_(context, v234, &v301, v235, v236);
              }
            }

            if (TSCERangeRef::isValid(&v309))
            {
              objc_msgSend_addNameFragmentPrecedentsForHeaderRange_headerRangeRef_(self, v237, context, &v309, v238);
            }

            if (TSCERangeRef::isValid(&v295))
            {
              objc_msgSend_addNameFragmentPrecedentsForHeaderRange_headerRangeRef_(self, v141, context, &v295, v144);
            }

LABEL_91:
            if (v95 == 2)
            {
              objc_msgSend_setForceSheetName_(v66, v141, 1, v143, v144);
            }

            else if (v95 != 1)
            {
              v239 = objc_msgSend_containingTable(context, v141, v142, v143, v144);
              objc_msgSend_setHostTableUID_(v66, v240, *v239, v239[1], v241);
              objc_msgSend_setAllowTableName_(v66, v242, 0, v243, v244);
              goto LABEL_96;
            }

            objc_msgSend_setForceTableName_(v66, v141, 1, v143, v144);
            v248 = TSKMakeUIDStructRandom();
            objc_msgSend_setHostTableUID_(v66, v249, v248, v249, v250);
LABEL_96:
            objc_msgSend_setSuppressIdenticalEndReference_(v66, v245, 1, v246, v247);
            objc_msgSend_setAllowSpanningColumnReferenceBodyQualifier_(v66, v251, 1, v252, v253);
            objc_msgSend_setUseSymbolicNames_(v66, v254, v147, v255, v256);
            if (v57 && objc_msgSend_isPivotTable(v111, v257, v258, v259, v260))
            {
              v261 = [TSCECellTractRef alloc];
              v265 = objc_msgSend_initWithCppCellTractRef_(v261, v262, &v306, v263, v264);
              objc_msgSend_setUseSymbolicNames_(v66, v266, 0, v267, v268);
              objc_msgSend_setShowGeometricAsBase_(v66, v269, 0, v270, v271);
              v276 = objc_msgSend_coordMapper(v111, v272, v273, v274, v275);
              v278 = objc_msgSend_nameForViewTractRef_namingContext_coordMapper_(v294, v277, v265, v66, v276);
            }

            else
            {
              v279 = [TSCECellTractRef alloc];
              v265 = objc_msgSend_initWithCppCellTractRef_(v279, v280, &v306, v281, v282);
              v278 = objc_msgSend_nameForBaseTractRef_namingContext_(v294, v283, v265, v66, v284);
            }

            v78 = objc_msgSend_stringValue_(TSCEStringValue, v285, v278, v286, v287);
            v79 = 0;
            goto LABEL_101;
          }
        }

        else
        {
          if (TSCERangeRef::isSpanningAllColumns(&columns))
          {
            v152 = objc_msgSend_calcEngine(context, v162, v163, v164, v165);
            v170 = objc_msgSend_headerNameMgr(v152, v166, v167, v168, v169);
            v161 = v170;
            if (v170)
            {
              objc_msgSend_baseHeaderColumnsForCell_(v170, v171, &topLeft, v172, v173);
            }

            else
            {
              memset(&v301, 0, 32);
            }

            v295 = v301._columns;
            goto LABEL_74;
          }

          if (!TSCERangeRef::isSingleCell(&columns))
          {
            goto LABEL_75;
          }

          v187 = objc_msgSend_calcEngine(context, v183, v184, v185, v186);
          v192 = objc_msgSend_headerNameMgr(v187, v188, v189, v190, v191);
          v196 = v192;
          if (v192)
          {
            objc_msgSend_baseHeaderColumnsForCell_(v192, v193, &topLeft, v194, v195);
          }

          else
          {
            memset(&v301, 0, 32);
          }

          v295 = v301._columns;

          v152 = objc_msgSend_calcEngine(context, v215, v216, v217, v218);
          v157 = objc_msgSend_headerNameMgr(v152, v219, v220, v221, v222);
          v161 = v157;
          if (v157)
          {
            goto LABEL_48;
          }
        }

        memset(&v301, 0, 32);
        goto LABEL_73;
      }
    }

    LOBYTE(v146) = 0;
    goto LABEL_44;
  }

  v86 = *(*arguments + 16);
  if ((objc_msgSend_isTokenOrEmptyArg(v86, v96, v97, v98, v99) & 1) != 0 || objc_msgSend_deepType_(v86, v100, context, v101, v102) == 10)
  {
    v104 = 0;
LABEL_26:

    v105 = v104 == 0;
    goto LABEL_29;
  }

  v296 = 0;
  v197 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v86, v103, context, spec, 2, &v296);
  v79 = v296;
  v202 = objc_msgSend_integer(v197, v198, v199, v200, v201);

  if (!v79)
  {
    if (v202 < 2)
    {
      v104 = v202;
      goto LABEL_26;
    }

    goto LABEL_107;
  }

LABEL_60:
  v78 = objc_msgSend_raiseErrorOrConvert_(context, v179, v79, v181, v182);
LABEL_102:

LABEL_103:
  TSUIndexSet::~TSUIndexSet(&v307);
  TSUIndexSet::~TSUIndexSet(&v306);

  return v78;
}

+ (void)addNameFragmentPrecedentsForHeaderRange:(id)range headerRangeRef:(const TSCERangeRef *)ref
{
  rangeCopy = range;
  tableUID = ref->_tableUID;
  v10 = objc_msgSend_calcEngine(rangeCopy, v6, v7, v8, v9);
  v18 = objc_msgSend_tableResolverForTableUID_(v10, v11, &tableUID, v12, v13);
  if (v18)
  {
    v19 = objc_msgSend_headerNameMgr(v10, v14, v15, v16, v17);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_221472920;
    v21[3] = &unk_278465918;
    v22 = v18;
    v23 = rangeCopy;
    v24 = v19;
    v20 = v19;
    TSCERangeRef::enumerateCoordinatesUsingBlock(ref, v21);
  }
}

@end