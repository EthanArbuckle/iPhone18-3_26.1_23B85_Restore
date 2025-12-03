@interface TSTIdentifierNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (NSString)fullIdentifier;
- (NSString)lastComponentWithWhitespaceAppended;
- (NSString)lastIdentifierComponent;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTIdentifierNode)initWithContext:(id)context identifier:(id)identifier firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map;
- (id)identifierComponents;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)sheetName;
- (id)tableName;
- (id)transformToUseScopedVariables:(void *)variables;
- (id)trimIdentifier:(void *)identifier;
- (void)addIdentifierComponent:(id)component;
- (void)appendToLastComponent:(id)component;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTIdentifierNode

- (TSTIdentifierNode)initWithContext:(id)context identifier:(id)identifier firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = TSTIdentifierNode;
  v12 = [(TSTExpressionNode *)&v20 initWithContext:contextCopy children:0 firstIndex:index lastIndex:lastIndex];
  v13 = v12;
  if (v12)
  {
    v12->_symbol = 0;
    v14 = objc_opt_new();
    components = v13->_components;
    v13->_components = v14;

    if (identifierCopy)
    {
      objc_msgSend_addObject_(v13->_components, v16, identifierCopy, v17, v18);
    }
  }

  return v13;
}

- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children
{
  ofCopy = of;
  contextCopy = context;
  childrenCopy = children;
  objc_opt_class();
  v14 = TSUDynamicCast();
  if (!v14)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTIdentifierNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTIdentifierNode.mm", v18, v19);
    v22 = @"nil";
    if (ofCopy)
    {
      v22 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 78, 0, "Unexpected object in initAsCopyOf:... expected TSTIdentifierNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v35.receiver = self;
  v35.super_class = TSTIdentifierNode;
  v31 = [(TSTExpressionNode *)&v35 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  if (v31)
  {
    v32 = objc_msgSend_mutableCopy(*(v14 + 128), v27, v28, v29, v30);
    v33 = v31[16];
    v31[16] = v32;

    *(v31 + 34) = *(v14 + 136);
  }

  return v31;
}

- (id)identifierComponents
{
  v5 = objc_msgSend_copy(self->_components, a2, v2, v3, v4);

  return v5;
}

- (void)addIdentifierComponent:(id)component
{
  componentCopy = component;
  if (componentCopy)
  {
    components = self->_components;
    if (!components)
    {
      v8 = objc_opt_new();
      v9 = self->_components;
      self->_components = v8;

      components = self->_components;
    }

    objc_msgSend_addObject_(components, v4, componentCopy, v5, v6);
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

- (NSString)lastComponentWithWhitespaceAppended
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

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  subexpressionsCopy = subexpressions;
  v9 = objc_msgSend_fullIdentifier(self, v5, v6, v7, v8);
  v14 = objc_msgSend_hash(v9, v10, v11, v12, v13);

  objc_msgSend_recordExpression_data_(subexpressionsCopy, v15, self, v14 ^ 0x6000000, 1);
  v16 = v14 ^ 0x6000000;
  v17 = 1;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    isEqualToString = 1;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = TSTIdentifierNode;
    if ([(TSTExpressionNode *)&v24 isEqualToExpressionNode:nodeCopy])
    {
      v5 = nodeCopy;
      if (objc_msgSend_isEqual_(self->_components, v6, v5[16], v7, v8))
      {
        v13 = objc_msgSend_aggregateFunction(self, v9, v10, v11, v12);
        v18 = objc_msgSend_aggregateFunction(v5, v14, v15, v16, v17);
        isEqualToString = objc_msgSend_isEqualToString_(v13, v19, v18, v20, v21);
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = 0;
    }
  }

  return isEqualToString;
}

- (id)sheetName
{
  if (objc_msgSend_count(self->_components, a2, v2, v3, v4) == 3)
  {
    v9 = objc_msgSend_objectAtIndexedSubscript_(self->_components, v6, 0, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableName
{
  v10 = objc_msgSend_count(self->_components, a2, v2, v3, v4);
  components = self->_components;
  if (v10 == 3)
  {
    objc_msgSend_objectAtIndexedSubscript_(components, v6, 1, v8, v9);
    v15 = LABEL_5:;
    goto LABEL_7;
  }

  if (objc_msgSend_count(components, v6, v7, v8, v9) == 2)
  {
    objc_msgSend_objectAtIndexedSubscript_(self->_components, v12, 0, v13, v14);
    goto LABEL_5;
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (void)appendToLastComponent:(id)component
{
  componentCopy = component;
  v12 = objc_msgSend_count(self->_components, v4, v5, v6, v7);
  v13 = componentCopy;
  if (componentCopy)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_msgSend_lastComponentWithWhitespaceAppended(self, v8, v9, v10, v11);
    v19 = objc_msgSend_stringWithFormat_(v14, v16, @"%@%@", v17, v18, v15, componentCopy);

    objc_msgSend_replaceObjectAtIndex_withObject_(self->_components, v20, v12 - 1, v19, v21);
    objc_msgSend_setWhitespaceAfter_(self, v22, 0, v23, v24);

    v13 = componentCopy;
  }
}

- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map
{
  identifiersCopy = identifiers;
  tableCopy = table;
  mapCopy = map;
  if (objc_msgSend_componentCount(self, v16, v17, v18, v19) == 1 && !interpretation)
  {
    v24 = [TSTNumberNode alloc];
    v29 = objc_msgSend_context(self, v25, v26, v27, v28);
    v34 = objc_msgSend_fullIdentifier(self, v30, v31, v32, v33);
    v39 = objc_msgSend_documentLocale(identifiersCopy, v35, v36, v37, v38);
    Index = objc_msgSend_firstIndex(self, v40, v41, v42, v43);
    v49 = objc_msgSend_lastIndex(self, v45, v46, v47, v48);
    Index_lastIndex = objc_msgSend_initWithContext_string_locale_firstIndex_lastIndex_(v24, v50, v29, v34, v39, Index, v49);

    v56 = objc_msgSend_whitespaceAfter(self, v52, v53, v54, v55);
    objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v57, v56, v58, v59);

    if (Index_lastIndex)
    {
      goto LABEL_57;
    }

    v62 = objc_msgSend_documentLocale(identifiersCopy, v20, v60, v61, v23);
    v67 = objc_msgSend_fullIdentifier(self, v63, v64, v65, v66);
    IsTrue = objc_msgSend_localizedStringIsTrue_(v62, v68, v67, v69, v70);

    if (IsTrue)
    {
      v76 = [TSTBooleanNode alloc];
      v81 = objc_msgSend_context(self, v77, v78, v79, v80);
      v86 = objc_msgSend_firstIndex(self, v82, v83, v84, v85);
      v91 = objc_msgSend_lastIndex(self, v87, v88, v89, v90);
      Index_lastIndex = objc_msgSend_initWithContext_BOOLValue_firstIndex_lastIndex_(v76, v92, v81, 1, v86, v91);

      v97 = objc_msgSend_whitespaceAfter(self, v93, v94, v95, v96);
      objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v98, v97, v99, v100);
    }

    else
    {
      v101 = objc_msgSend_documentLocale(identifiersCopy, v72, v73, v74, v75);
      v106 = objc_msgSend_fullIdentifier(self, v102, v103, v104, v105);
      IsFalse = objc_msgSend_localizedStringIsFalse_(v101, v107, v106, v108, v109);

      if (!IsFalse)
      {
        goto LABEL_9;
      }

      v111 = [TSTBooleanNode alloc];
      v116 = objc_msgSend_context(self, v112, v113, v114, v115);
      v121 = objc_msgSend_firstIndex(self, v117, v118, v119, v120);
      v126 = objc_msgSend_lastIndex(self, v122, v123, v124, v125);
      Index_lastIndex = objc_msgSend_initWithContext_BOOLValue_firstIndex_lastIndex_(v111, v127, v116, 0, v121, v126);

      v97 = objc_msgSend_whitespaceAfter(self, v128, v129, v130, v131);
      objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v132, v97, v133, v134);
    }

    if (Index_lastIndex)
    {
      goto LABEL_57;
    }
  }

LABEL_9:
  v135 = objc_msgSend_fullIdentifier(self, v20, v21, v22, v23);
  v136 = TSCESymbolTable::lookup(symbolTable, v135, 0);

  v137 = TSCESymbolTable::identifierForSymbol(symbolTable, v136);
  v138 = v137;
  if (v136)
  {
    v139 = [TSTVariableNode alloc];
    v144 = objc_msgSend_context(self, v140, v141, v142, v143);
    v149 = objc_msgSend_firstIndex(self, v145, v146, v147, v148);
    v154 = objc_msgSend_lastIndex(self, v150, v151, v152, v153);
    Index_lastIndex = objc_msgSend_initWithContext_identifier_symbol_firstIndex_lastIndex_(v139, v155, v144, v138, v136, v149, v154);

    v160 = objc_msgSend_whitespaceAfter(self, v156, v157, v158, v159);
    objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v161, v160, v162, v163);

    if (Index_lastIndex)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  if (objc_msgSend_componentCount(self, v20, v164, v165, v23) > 3)
  {
    goto LABEL_53;
  }

  v170 = objc_msgSend_aggregateFunction(self, v166, v167, v168, v169);

  if (v170)
  {
    goto LABEL_53;
  }

  v171 = [TSCEReferenceParsingContext alloc];
  v176 = objc_msgSend_baseTableModel(tableCopy, v172, v173, v174, v175);
  v180 = objc_msgSend_initWithContextResolver_(v171, v177, v176, v178, v179);

  objc_msgSend_setReferenceIsComplete_(v180, v181, 1, v182, v183);
  objc_msgSend_setFilterColons_(v180, v184, 0, v185, v186);
  v191 = objc_msgSend_sheetName(self, v187, v188, v189, v190);
  objc_msgSend_setSheetName_(v180, v192, v191, v193, v194);

  v199 = objc_msgSend_tableName(self, v195, v196, v197, v198);
  objc_msgSend_setTableName_(v180, v200, v199, v201, v202);

  v207 = objc_msgSend_lastIdentifierComponent(self, v203, v204, v205, v206);
  objc_msgSend_setRest_(v180, v208, v207, v209, v210);

  v215 = objc_msgSend_refParser(identifiersCopy, v211, v212, v213, v214);
  v219 = objc_msgSend_parseAsTractRefWithParsingContext_(v215, v216, v180, v217, v218);

  v470 = v219;
  if (objc_msgSend_isValid(v219, v220, v221, v222, v223))
  {
    v229 = objc_msgSend_tableUID(v219, v224, v225, v226, v227);
    if (!v229)
    {
      if (v228)
      {
        objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v228, 0, v228, identifiersCopy);
        goto LABEL_22;
      }

      v229 = objc_msgSend_tableUID(tableCopy, 0, 0, v230, v231);
    }

    objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v228, v229, v228, identifiersCopy);
    v469 = LABEL_22:;
    v236 = objc_msgSend_translator(v469, v232, v233, v234, v235);

    if (v236)
    {
      v241 = objc_msgSend_translator(v469, v237, v238, v239, v240);
      v245 = objc_msgSend_viewTractRefForChromeTractRef_(v241, v242, v219, v243, v244);

      if (objc_msgSend_isAPivotTable(v469, v246, v247, v248, v249))
      {
        v467 = 0;
      }

      else
      {
        v259 = objc_msgSend_translator(v469, v250, v251, v252, v253);
        v467 = objc_msgSend_baseTractRefForViewTractRef_(v259, v260, v245, v261, v262);
      }

      v258 = v469;
    }

    else
    {
      v467 = v219;
      v258 = v469;
    }

    memset(v480, 0, sizeof(v480));
    *__p = 0u;
    v478.origin = objc_msgSend_range(v258, v254, v255, v256, v257, v467);
    v478.size = v263;
    v477.origin = 0;
    v477.size = 0;
    v476._topLeft = objc_msgSend_boundingRange(v468, v263, v264, v265, v266);
    v476._bottomRight = v267;
    TSCERangeCoordinate::asCellRect(&v476);
    v472.origin = v268;
    v472.size = v269;
    v477.origin = TSUCellRect::nonSpanningCellRectWithTableRange(&v472, &v478);
    v477.size = v270;
    if (v468 && TSUCellRect::contains(&v478, &v477))
    {
      v476._topLeft = objc_msgSend_tableUID(tableCopy, v270, v271, v272, v273);
      v476._bottomRight = v274;
      objc_msgSend_uidTractWithCalcEngine_hostTableUID_(v468, v274, identifiersCopy, &v476, v275);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = v472;
      v480[0] = v473;
      v472.size = 0;
      v473 = 0;
      v472.origin = 0;
      origin = v480[1];
      if (v480[1])
      {
        v480[2] = v480[1];
        operator delete(v480[1]);
        origin = v472.origin;
      }

      *&v480[1] = v474;
      v480[3] = v475;
      v475 = 0;
      v474 = 0uLL;
      if (origin)
      {
        v472.size = origin;
        operator delete(origin);
      }

      v258 = v469;
    }

    if (((v480[2] - v480[1]) >> 4) * ((__p[1] - __p[0]) >> 4))
    {
      v277 = [TSTUIDRectRef alloc];
      v472.origin = objc_msgSend_tableUID(v468, v278, v279, v280, v281);
      v472.size = v282;
      v286 = objc_msgSend_preserveFlags(v468, v282, v283, v284, v285);
      v288 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v277, v287, identifiersCopy, &v472, __p, v286);
LABEL_39:
      v289 = v288;
      goto LABEL_48;
    }

    v290 = objc_msgSend_translator(v258, v270, v271, v272, v273);

    if (v290)
    {
      v295 = objc_msgSend_translator(v469, v291, v292, v293, v294);
      v299 = objc_msgSend_viewTractRefForChromeTractRef_(v295, v296, v470, v297, v298);

      if (objc_msgSend_isValid(v299, v300, v301, v302, v303))
      {
        v304 = [TSTUIDRectRef alloc];
        v289 = objc_msgSend_initWithCalcEngine_viewTractRef_(v304, v305, identifiersCopy, v299, v306);
      }

      else
      {
        v289 = 0;
      }
    }

    else
    {
      if (objc_msgSend_isValid(v470, v291, v292, v293, v294))
      {
        v307 = [TSTUIDRectRef alloc];
        v288 = objc_msgSend_initWithCalcEngine_viewTractRef_(v307, v308, identifiersCopy, v470, v309);
        goto LABEL_39;
      }

      v289 = 0;
    }

LABEL_48:
    v310 = [TSTReferenceNode alloc];
    v315 = objc_msgSend_context(self, v311, v312, v313, v314);
    v320 = objc_msgSend_tableUID(tableCopy, v316, v317, v318, v319);
    v472.origin = cell;
    v472.size = v320;
    v473 = v321;
    Index_lastIndex = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v310, v321, v315, identifiersCopy, v289, &v472, 0, 0);

    v326 = objc_msgSend_firstIndex(self, v322, v323, v324, v325);
    objc_msgSend_setFirstIndex_(Index_lastIndex, v327, v326, v328, v329);
    v334 = objc_msgSend_lastIndex(self, v330, v331, v332, v333);
    objc_msgSend_setLastIndex_(Index_lastIndex, v335, v334, v336, v337);
    v342 = objc_msgSend_whitespaceAfter(self, v338, v339, v340, v341);
    objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v343, v342, v344, v345);

    if (v480[1])
    {
      v480[2] = v480[1];
      operator delete(v480[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (Index_lastIndex)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_53:
  v346 = [TSCEReferenceParsingContext alloc];
  v351 = objc_msgSend_baseTableModel(tableCopy, v347, v348, v349, v350);
  v356 = objc_msgSend_identifierComponents(self, v352, v353, v354, v355);
  v359 = objc_msgSend_initWithContextResolver_components_(v346, v357, v351, v356, v358);

  objc_msgSend_setReferenceIsComplete_(v359, v360, 1, v361, v362);
  objc_msgSend_setFilterColons_(v359, v363, 0, v364, v365);
  v366 = [TSCEQuotedRefPathSplitter alloc];
  v371 = objc_msgSend_identifierComponents(self, v367, v368, v369, v370);
  v376 = objc_msgSend_aggregateFunction(self, v372, v373, v374, v375);
  v379 = objc_msgSend_initWithComponents_aggregateFunction_(v366, v377, v371, v376, v378);

  objc_msgSend_setRefPathSplitter_(v359, v380, v379, v381, v382);
  v387 = objc_msgSend_refParser(identifiersCopy, v383, v384, v385, v386);
  v391 = objc_msgSend_parseAsCategoryRefWithParsingContext_(v387, v388, v359, v389, v390);

  v396 = objc_msgSend_groupByUid(v391, v392, v393, v394, v395);
  if (v396 | v397)
  {
    objc_msgSend_setType_(v391, v397, 11, v398, v399);
    v400 = [TSTReferenceNode alloc];
    v405 = objc_msgSend_context(self, v401, v402, v403, v404);
    v410 = objc_msgSend_tableUID(tableCopy, v406, v407, v408, v409);
    __p[0] = cell;
    __p[1] = v410;
    v480[0] = v411;
    Index_lastIndex = objc_msgSend_initWithContext_calculationEngine_categoryRef_hostCellRef_referenceColorHelper_(v400, v411, v405, identifiersCopy, v391, __p, 0);

    v416 = objc_msgSend_firstIndex(self, v412, v413, v414, v415);
    objc_msgSend_setFirstIndex_(Index_lastIndex, v417, v416, v418, v419);
    v424 = objc_msgSend_lastIndex(self, v420, v421, v422, v423);
    objc_msgSend_setLastIndex_(Index_lastIndex, v425, v424, v426, v427);
    v432 = objc_msgSend_whitespaceAfter(self, v428, v429, v430, v431);
    objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v433, v432, v434, v435);
  }

  else
  {
    Index_lastIndex = 0;
  }

  if (!Index_lastIndex)
  {
    v437 = [TSTVariableNode alloc];
    v442 = objc_msgSend_context(self, v438, v439, v440, v441);
    v447 = objc_msgSend_fullIdentifier(self, v443, v444, v445, v446);
    v452 = objc_msgSend_firstIndex(self, v448, v449, v450, v451);
    v457 = objc_msgSend_lastIndex(self, v453, v454, v455, v456);
    Index_lastIndex = objc_msgSend_initWithContext_identifier_symbol_firstIndex_lastIndex_(v437, v458, v442, v447, 0, v452, v457);

    v463 = objc_msgSend_whitespaceAfter(self, v459, v460, v461, v462);
    objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v464, v463, v465, v466);

    goto LABEL_58;
  }

LABEL_57:
  objc_msgSend_setObject_forUncopiedKey_(mapCopy, v20, Index_lastIndex, self, v23);
LABEL_58:

  return Index_lastIndex;
}

- (id)transformToUseScopedVariables:(void *)variables
{
  selfCopy = self;
  v9 = objc_msgSend_fullIdentifier(selfCopy, v5, v6, v7, v8);
  v10 = TSCESymbolTable::lookup(variables, v9, 0);

  if (v10)
  {
    v11 = TSCESymbolTable::identifierForSymbol(variables, v10);
    v12 = [TSTVariableNode alloc];
    v17 = objc_msgSend_context(selfCopy, v13, v14, v15, v16);
    Index = objc_msgSend_firstIndex(selfCopy, v18, v19, v20, v21);
    v27 = objc_msgSend_lastIndex(selfCopy, v23, v24, v25, v26);
    Index_lastIndex = objc_msgSend_initWithContext_identifier_symbol_firstIndex_lastIndex_(v12, v28, v17, v11, v10, Index, v27);

    selfCopy = Index_lastIndex;
  }

  return selfCopy;
}

- (id)trimIdentifier:(void *)identifier
{
  selfCopy = self;
  v9 = objc_msgSend_fullIdentifier(selfCopy, v5, v6, v7, v8);
  v10 = TSCESymbolTable::lookup(identifier, v9, 0);

  if (v10)
  {
    v11 = TSCESymbolTable::identifierForSymbol(identifier, v10);
    v16 = objc_msgSend_fullIdentifier(selfCopy, v12, v13, v14, v15);
    isEqualToString = objc_msgSend_isEqualToString_(v11, v17, v16, v18, v19);

    if ((isEqualToString & 1) == 0)
    {
      v21 = [TSTIdentifierNode alloc];
      v26 = objc_msgSend_context(selfCopy, v22, v23, v24, v25);
      Index = objc_msgSend_firstIndex(selfCopy, v27, v28, v29, v30);
      v36 = objc_msgSend_lastIndex(selfCopy, v32, v33, v34, v35);
      Index_lastIndex = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v21, v37, v26, v11, Index, v36);

      v43 = objc_msgSend_symbol(selfCopy, v39, v40, v41, v42);
      objc_msgSend_setSymbol_(Index_lastIndex, v44, v43, v45, v46);
      v51 = objc_msgSend_aggregateFunction(selfCopy, v47, v48, v49, v50);
      objc_msgSend_setAggregateFunction_(Index_lastIndex, v52, v51, v53, v54);

      selfCopy = Index_lastIndex;
    }
  }

  return selfCopy;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  optionsCopy = options;
  textCopy = text;
  if (optionsCopy)
  {
    v10 = objc_msgSend_whitespaceBefore(self, v6, v7, v8, v9);

    if (v10)
    {
      v15 = objc_msgSend_whitespaceBefore(self, v11, v12, v13, v14);
      objc_msgSend_takeText_(textCopy, v16, v15, v17, v18);
    }
  }

  v19 = [TSTWPTokenAttachment alloc];
  v24 = objc_msgSend_context(self, v20, v21, v22, v23);
  v27 = objc_msgSend_initWithContext_expressionNode_(v19, v25, v24, self, v26);

  objc_msgSend_insertUIGraphicalAttachment_(textCopy, v28, v27, v29, v30);
  if (optionsCopy)
  {
    v35 = objc_msgSend_whitespaceAfter(self, v31, v32, v33, v34);

    if (v35)
    {
      v40 = objc_msgSend_whitespaceAfter(self, v36, v37, v38, v39);
      objc_msgSend_takeText_(textCopy, v41, v40, v42, v43);
    }
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v34 = objc_msgSend_children(self, a2, array, *&cell, table);
  v11 = objc_msgSend_count(v34, v7, v8, v9, v10);

  if (v11)
  {
    v15 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTIdentifierNode buildASTNodeArray:hostCell:symbolTable:]", v13, v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTIdentifierNode.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v35, v19, 442, 0, "IdentifierNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  TSCEASTNodeArray::appendReferenceError(array);
  v29 = objc_msgSend_whitespaceAfter(self, v25, v26, v27, v28);

  if (v29)
  {
    v36 = objc_msgSend_whitespaceAfter(self, v30, v31, v32, v33);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v36);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[206], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221480138, off_2812E4498[206], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy, v8);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v35.receiver = self;
  v35.super_class = TSTIdentifierNode;
  [(TSTExpressionNode *)&v35 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v11 = *(archive + 4);
  if (v11)
  {
    v12 = *(archive + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      v12 = *v12;
    }

    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v12, v9, v10);
    if (v13)
    {
      v14 = [TSCEQuotedRefPathSplitter alloc];
      v18 = objc_msgSend_initWithReferenceString_(v14, v15, v13, v16, v17);
      v26 = objc_msgSend_numComponents(v18, v19, v20, v21, v22);
      if (v26)
      {
        for (i = 0; i != v26; ++i)
        {
          v28 = objc_msgSend_componentAtIndex_(v18, v23, i, v24, v25);
          v31 = objc_msgSend_trimmedStringStartingAtWord_withPreserveFlags_(v28, v29, 0, 1, v30);
          objc_msgSend_addIdentifierComponent_(self, v32, v31, v33, v34);
        }
      }
    }

    v11 = *(archive + 4);
  }

  self->_symbol = *(archive + 10) & (v11 << 29 >> 31);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 2u;
  v7 = *(archive + 4);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(archive + 4) = v7;
  }

  v22.receiver = self;
  v22.super_class = TSTIdentifierNode;
  [(TSTExpressionNode *)&v22 saveToArchive:v7 archiver:archiverCopy];
  v13 = objc_msgSend_fullIdentifier(self, v9, v10, v11, v12);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    v20 = objc_msgSend_UTF8String(v15, v16, v17, v18, v19);
    sub_22147FF8C(archive, v20);
  }

  symbol = self->_symbol;
  if (symbol)
  {
    *(archive + 4) |= 4u;
    *(archive + 10) = symbol;
  }
}

@end