@interface TSCEIdentifierFormulaNode
- (NSString)fullIdentifier;
- (NSString)lastIdentifierComponent;
- (TSCEIdentifierFormulaNode)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)lastComponentWithWhitespaceAppended;
- (id)resolveIdentifier:(id)a3 hostTable:(id)a4 baseHostCell:(TSUCellCoord)a5 symbolTable:(void *)a6;
- (void)addIdentifierComponent:(id)a3;
- (void)appendToLastComponent:(id)a3;
@end

@implementation TSCEIdentifierFormulaNode

- (TSCEIdentifierFormulaNode)initWithIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSCEIdentifierFormulaNode;
  v5 = [(TSCEFormulaNode *)&v11 initWithNodeType:21];
  v9 = v5;
  if (v5)
  {
    v5->_symbol = 0;
    objc_msgSend_addIdentifierComponent_(v5, v6, v4, v7, v8);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = TSCEIdentifierFormulaNode;
  v4 = [(TSCEIdentifierFormulaNode *)&v26 copy];
  v4[16] = self->_symbol;
  v5 = objc_opt_new();
  v6 = *(v4 + 6);
  *(v4 + 6) = v5;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->_components;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v22, v27, 16);
  if (v13)
  {
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(v4 + 6);
        v17 = objc_msgSend_copy(*(*(&v22 + 1) + 8 * v15), v9, v10, v11, v12, v22);
        objc_msgSend_addObject_(v16, v18, v17, v19, v20);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v22, v27, 16);
    }

    while (v13);
  }

  return v4;
}

- (void)addIdentifierComponent:(id)a3
{
  v10 = a3;
  if (v10)
  {
    components = self->_components;
    if (!components)
    {
      v8 = objc_opt_new();
      v9 = self->_components;
      self->_components = v8;

      components = self->_components;
    }

    objc_msgSend_addObject_(components, v4, v10, v5, v6);
  }
}

- (NSString)lastIdentifierComponent
{
  v6 = objc_msgSend_count(self->_components, a2, v2, v3, v4);
  if (v6)
  {
    v6 = objc_msgSend_lastObject(self->_components, v7, v8, v9, v10);
  }

  return v6;
}

- (NSString)fullIdentifier
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = self->_components;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v29, v33, 16);
  if (v9)
  {
    v10 = *v30;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        if ((v11 & 1) == 0)
        {
          objc_msgSend_appendString_(v3, v6, @"::", v7, v8);
        }

        objc_msgSend_appendString_(v3, v6, v13, v7, v8);
        v11 = 0;
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v29, v33, 16);
      v11 = 0;
    }

    while (v9);
  }

  v18 = objc_msgSend_aggregateFunction(self, v14, v15, v16, v17);
  v19 = v18 == 0;

  if (!v19)
  {
    v24 = objc_msgSend_aggregateFunction(self, v20, v21, v22, v23);
    objc_msgSend_appendFormat_(v3, v25, @" %@", v26, v27, v24);
  }

  return v3;
}

- (id)lastComponentWithWhitespaceAppended
{
  v6 = objc_msgSend_whitespaceAfter(self, a2, v2, v3, v4);
  objc_msgSend_lastIdentifierComponent(self, v7, v8, v9, v10);
  if (v6)
    v11 = {;
    v16 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
    v20 = objc_msgSend_stringByAppendingString_(v11, v17, v16, v18, v19);
  }

  else
    v20 = {;
  }

  return v20;
}

- (void)appendToLastComponent:(id)a3
{
  v25 = a3;
  v12 = objc_msgSend_count(self->_components, v4, v5, v6, v7);
  v13 = v25;
  if (v25)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_msgSend_lastComponentWithWhitespaceAppended(self, v8, v9, v10, v11);
    v19 = objc_msgSend_stringWithFormat_(v14, v16, @"%@%@", v17, v18, v15, v25);

    objc_msgSend_replaceObjectAtIndex_withObject_(self->_components, v20, v12 - 1, v19, v21);
    objc_msgSend_setWhitespaceAfter_(self, v22, 0, v23, v24);

    v13 = v25;
  }
}

- (id)resolveIdentifier:(id)a3 hostTable:(id)a4 baseHostCell:(TSUCellCoord)a5 symbolTable:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v16 = objc_msgSend_fullIdentifier(self, v12, v13, v14, v15);
  if (objc_msgSend_componentCount(self, v17, v18, v19, v20) == 1)
  {
    if (v16)
    {
      v25 = objc_msgSend_documentLocale(v10, v21, v22, v23, v24);
      MEMORY[0x223D9F8D0](__p, v25);

      TSUUnivNumberParser::parseAsNumber(__p, v16);
      if (v328.size.numberOfColumns == -999 || ((isInfOrNaN = TSUParsedNumber::isInfOrNaN(&v328), LOBYTE(v328.size.numberOfRows) != 10) ? (v27 = 1) : (v27 = isInfOrNaN), (v27 & 1) != 0))
      {
        v28 = 0;
      }

      else
      {
        TSUDecimal::operator=();
        v29 = [TSCENumberFormulaNode alloc];
        v28 = objc_msgSend_initWithNumber_(v29, v30, &v327, v31, v32);
        v37 = objc_msgSend_whitespaceAfter(self, v33, v34, v35, v36);
        objc_msgSend_setWhitespaceAfter_(v28, v38, v37, v39, v40);
      }

      MEMORY[0x223D9F890](&v328);

      if (v28)
      {
        goto LABEL_24;
      }
    }

    v41 = objc_msgSend_documentLocale(v10, v21, v22, v23, v24);
    IsTrue = objc_msgSend_localizedStringIsTrue_(v41, v42, v16, v43, v44);

    if (IsTrue)
    {
      v50 = [TSCEBooleanFormulaNode alloc];
      v28 = objc_msgSend_initWithBoolean_(v50, v51, 1, v52, v53);
      v58 = objc_msgSend_whitespaceAfter(self, v54, v55, v56, v57);
      objc_msgSend_setWhitespaceAfter_(v28, v59, v58, v60, v61);
    }

    else
    {
      v62 = objc_msgSend_documentLocale(v10, v46, v47, v48, v49);
      IsFalse = objc_msgSend_localizedStringIsFalse_(v62, v63, v16, v64, v65);

      if (!IsFalse)
      {
        goto LABEL_16;
      }

      v67 = [TSCEBooleanFormulaNode alloc];
      v28 = objc_msgSend_initWithBoolean_(v67, v68, 0, v69, v70);
      v58 = objc_msgSend_whitespaceAfter(self, v71, v72, v73, v74);
      objc_msgSend_setWhitespaceAfter_(v28, v75, v58, v76, v77);
    }

    if (v28)
    {
      goto LABEL_24;
    }
  }

LABEL_16:
  v82 = TSCESymbolTable::lookup(a6, v16, 0);
  if (v82)
  {
    v83 = [TSCEVariableFormulaNode alloc];
    v28 = objc_msgSend_initWithSymbol_identifier_(v83, v84, v82, v16, v85);
    v90 = objc_msgSend_whitespaceAfter(self, v86, v87, v88, v89);
    objc_msgSend_setWhitespaceAfter_(v28, v91, v90, v92, v93);

    if (v28)
    {
      goto LABEL_24;
    }
  }

  if (objc_msgSend_componentCount(self, v78, v79, v80, v81) > 3 || (objc_msgSend_aggregateFunction(self, v94, v95, v96, v97), v98 = objc_claimAutoreleasedReturnValue(), v98, v98))
  {
LABEL_20:
    v99 = [TSCEReferenceParsingContext alloc];
    v104 = objc_msgSend_identifierComponents(self, v100, v101, v102, v103);
    v107 = objc_msgSend_initWithContextResolver_components_(v99, v105, v11, v104, v106);

    objc_msgSend_setReferenceIsComplete_(v107, v108, 1, v109, v110);
    objc_msgSend_setFilterColons_(v107, v111, 0, v112, v113);
    v114 = [TSCEQuotedRefPathSplitter alloc];
    v119 = objc_msgSend_identifierComponents(self, v115, v116, v117, v118);
    v124 = objc_msgSend_aggregateFunction(self, v120, v121, v122, v123);
    v127 = objc_msgSend_initWithComponents_aggregateFunction_(v114, v125, v119, v124, v126);

    objc_msgSend_setRefPathSplitter_(v107, v128, v127, v129, v130);
    v135 = objc_msgSend_refParser(v10, v131, v132, v133, v134);
    v139 = objc_msgSend_parseAsCategoryRefWithParsingContext_(v135, v136, v107, v137, v138);

    v144 = objc_msgSend_groupByUid(v139, v140, v141, v142, v143);
    if (v144 | v145)
    {
      objc_msgSend_setType_(v139, v145, 11, v146, v147);
      v148 = [TSCECombinedReferenceFormulaNode alloc];
      v153 = objc_msgSend_tableUID(v11, v149, v150, v151, v152);
      __p[0] = a5;
      __p[1] = v153;
      v333[0] = v154;
      v28 = objc_msgSend_initWithCategoryRef_hostCellRef_(v148, v154, v139, __p, v155);
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_24;
  }

  v157 = [TSCEReferenceParsingContext alloc];
  v161 = objc_msgSend_initWithContextResolver_(v157, v158, v11, v159, v160);
  objc_msgSend_setReferenceIsComplete_(v161, v162, 1, v163, v164);
  objc_msgSend_setFilterColons_(v161, v165, 0, v166, v167);
  if (objc_msgSend_componentCount(self, v168, v169, v170, v171) == 3)
  {
    v176 = objc_msgSend_identifierComponents(self, v172, v173, v174, v175);
    v322 = objc_msgSend_objectAtIndexedSubscript_(v176, v177, 0, v178, v179);
  }

  else
  {
    v322 = 0;
  }

  if (objc_msgSend_componentCount(self, v172, v173, v174, v175) == 3)
  {
    v184 = objc_msgSend_identifierComponents(self, v180, v181, v182, v183);
    v324 = objc_msgSend_objectAtIndexedSubscript_(v184, v185, 1, v186, v187);
LABEL_34:

    goto LABEL_36;
  }

  if (objc_msgSend_count(self->_components, v180, v181, v182, v183) == 2)
  {
    v184 = objc_msgSend_identifierComponents(self, v188, v189, v190, v191);
    v324 = objc_msgSend_objectAtIndexedSubscript_(v184, v192, 0, v193, v194);
    goto LABEL_34;
  }

  v324 = 0;
LABEL_36:
  objc_msgSend_setSheetName_(v161, v188, v322, v190, v191);
  objc_msgSend_setTableName_(v161, v195, v324, v196, v197);
  v202 = objc_msgSend_lastIdentifierComponent(self, v198, v199, v200, v201);
  objc_msgSend_setRest_(v161, v203, v202, v204, v205);

  v210 = objc_msgSend_refParser(v10, v206, v207, v208, v209);
  v214 = objc_msgSend_parseAsTractRefWithParsingContext_(v210, v211, v161, v212, v213);

  v323 = v214;
  if (!objc_msgSend_isValid(v214, v215, v216, v217, v218))
  {
    v28 = 0;
    goto LABEL_73;
  }

  v224 = objc_msgSend_tableUID(v214, v219, v220, v221, v222);
  if (!v224)
  {
    if (v223)
    {
      objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v223, 0, v223, v10);
      goto LABEL_43;
    }

    v224 = objc_msgSend_tableUID(v11, 0, 0, v225, v226);
  }

  objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v223, v224, v223, v10);
  v321 = LABEL_43:;
  v231 = objc_msgSend_translator(v321, v227, v228, v229, v230);

  if (v231)
  {
    v236 = objc_msgSend_translator(v321, v232, v233, v234, v235);
    v240 = objc_msgSend_viewTractRefForChromeTractRef_(v236, v237, v323, v238, v239);

    if (objc_msgSend_isAPivotTable(v321, v241, v242, v243, v244))
    {
      v320 = 0;
    }

    else
    {
      v253 = objc_msgSend_translator(v321, v245, v246, v247, v248);
      v320 = objc_msgSend_baseTractRefForViewTractRef_(v253, v254, v240, v255, v256);
    }
  }

  else
  {
    v320 = v214;
  }

  memset(v333, 0, 32);
  *__p = 0u;
  v327.origin = 0;
  v327.size = 0;
  v327.origin = objc_msgSend_range(v321, v249, v250, v251, v252);
  v327.size = v257;
  v326.origin = 0;
  v326.size = 0;
  v325._topLeft = objc_msgSend_boundingRange(v320, v257, v258, v259, v260);
  v325._bottomRight = v261;
  TSCERangeCoordinate::asCellRect(&v325);
  v328.origin = v262;
  v328.size = v263;
  v326.origin = TSUCellRect::nonSpanningCellRectWithTableRange(&v328, &v327);
  v326.size = v264;
  if (v320 && TSUCellRect::contains(&v327, &v326))
  {
    v325._topLeft = objc_msgSend_tableUID(v11, v264, v265, v266, v267);
    v325._bottomRight = v268;
    objc_msgSend_uidTractWithCalcEngine_hostTableUID_(v320, v268, v10, &v325, v269);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v328;
    v333[0] = v329;
    v328.size = 0;
    v329 = 0;
    v328.origin = 0;
    origin = v333[1];
    if (v333[1])
    {
      v333[2] = v333[1];
      operator delete(v333[1]);
      origin = v328.origin;
    }

    *&v333[1] = v330;
    v333[3] = v331;
    v331 = 0;
    v330 = 0uLL;
    if (origin)
    {
      v328.size = origin;
      operator delete(origin);
    }
  }

  if (((v333[2] - v333[1]) >> 4) * ((__p[1] - __p[0]) >> 4))
  {
    v271 = [TSTUIDRectRef alloc];
    v328.origin = objc_msgSend_tableUID(v320, v272, v273, v274, v275);
    v328.size = v276;
    v280 = objc_msgSend_preserveFlags(v320, v276, v277, v278, v279);
    v282 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v271, v281, v10, &v328, __p, v280);
  }

  else
  {
    v284 = objc_msgSend_translator(v321, v264, v265, v266, v267);

    if (v284)
    {
      v289 = objc_msgSend_translator(v321, v285, v286, v287, v288);
      v293 = objc_msgSend_viewTractRefForChromeTractRef_(v289, v290, v323, v291, v292);

      if (objc_msgSend_isValid(v293, v294, v295, v296, v297))
      {
        v298 = [TSTUIDRectRef alloc];
        v283 = objc_msgSend_initWithCalcEngine_viewTractRef_(v298, v299, v10, v293, v300);
      }

      else
      {
        v283 = 0;
      }

      goto LABEL_68;
    }

    if (!objc_msgSend_isValid(v323, v285, v286, v287, v288))
    {
      v283 = 0;
      goto LABEL_68;
    }

    v301 = [TSTUIDRectRef alloc];
    v282 = objc_msgSend_initWithCalcEngine_viewTractRef_(v301, v302, v10, v323, v303);
  }

  v283 = v282;
LABEL_68:
  v304 = [TSCECombinedReferenceFormulaNode alloc];
  v309 = objc_msgSend_tableUID(v11, v305, v306, v307, v308);
  v328.origin = a5;
  v328.size = v309;
  v329 = v310;
  v28 = objc_msgSend_initWithUidRectRef_hostCellRef_(v304, v310, v283, &v328, v311);
  v316 = objc_msgSend_whitespaceAfter(self, v312, v313, v314, v315);
  objc_msgSend_setWhitespaceAfter_(v28, v317, v316, v318, v319);

  if (v333[1])
  {
    v333[2] = v333[1];
    operator delete(v333[1]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_73:
  if (!v28)
  {
    goto LABEL_20;
  }

LABEL_24:

  return v28;
}

@end