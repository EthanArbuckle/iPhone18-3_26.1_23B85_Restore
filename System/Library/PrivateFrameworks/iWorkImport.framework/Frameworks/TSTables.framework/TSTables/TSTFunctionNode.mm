@interface TSTFunctionNode
+ (id)newDefaultFunctionNodeWithContext:(id)context functionIndex:(unsigned __int16)index parentFunctionIndex:(unsigned __int16)functionIndex argumentIndexInParent:(unsigned int)parent;
+ (id)newSumNodeWithContext:(id)context children:(id)children;
+ (id)placeholderWithContext:(id)context argSpec:(id)spec;
- (BOOL)isDescendantOfChild:(id)child;
- (BOOL)isEmptyFunctionNode;
- (BOOL)isEqualToExpressionNode:(id)node;
- (BOOL)isInvalidFunction;
- (BOOL)isMissingRequiredArgument;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTFunctionNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTFunctionNode)initWithContext:(id)context functionIndex:(unsigned __int16)index children:(id)children firstIndex:(unint64_t)firstIndex lastIndex:(unint64_t)lastIndex;
- (id)convertEmptyArgumentsToPlaceholders;
- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map;
- (id)exportString;
- (id)formulaPlainText;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)mostSpecificNodeContainingIndex:(unint64_t)index correspondingIndex:(unint64_t)correspondingIndex;
- (id)p_functionSpec;
- (id)p_whitespaceBeforeParam:(unint64_t)param;
- (id)string;
- (id)transformToUseScopedVariables:(void *)variables;
- (id)variableUsageErrorWithSymbolTable:(void *)table;
- (unint64_t)allowsNewIdentifier;
- (unint64_t)lastIndexOfSubtree;
- (unint64_t)maxArguments;
- (unint64_t)minArguments;
- (unint64_t)numArguments;
- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges deepSearch:(BOOL)search calcEngine:(id)engine allVisitedNodes:(id)self0;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options unwrapped:(BOOL)unwrapped;
- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_fixupNodeIfFunctionNode:(id)node;
- (void)p_resetArgumentSpecForChildren;
- (void)resurrectModeTokens;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setChildren:(id)children;
- (void)setFunctionEndNode:(id)node;
@end

@implementation TSTFunctionNode

+ (id)placeholderWithContext:(id)context argSpec:(id)spec
{
  contextCopy = context;
  specCopy = spec;
  v7 = [TSTArgumentPlaceholderNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_argumentSpec_firstIndex_lastIndex_(v7, v8, contextCopy, specCopy, 0, 0);

  return Index_lastIndex;
}

+ (id)newDefaultFunctionNodeWithContext:(id)context functionIndex:(unsigned __int16)index parentFunctionIndex:(unsigned __int16)functionIndex argumentIndexInParent:(unsigned int)parent
{
  functionIndexCopy = functionIndex;
  indexCopy = index;
  contextCopy = context;
  v13 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v10, indexCopy, v11, v12);
  v18 = objc_msgSend_numArguments(v13, v14, v15, v16, v17);
  v22 = v18;
  v94 = indexCopy;
  if (indexCopy == 364 && (functionIndexCopy == 372 || functionIndexCopy == 366) && v18 <= parent + 1)
  {
    v22 = parent + 1;
  }

  v23 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v19, v22, v20, v21);
  v28 = objc_msgSend_objectLocale(contextCopy, v24, v25, v26, v27);
  if (v22)
  {
    v31 = v28;
    v32 = 0;
    v96 = v13;
    v97 = v23;
    v95 = v22;
    do
    {
      v33 = objc_msgSend_argumentSpecForIndex_numArgs_(v13, v29, v32, v22, v30);
      if (objc_msgSend_argumentType(v33, v34, v35, v36, v37) == 19)
      {
        v41 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v38, 364, v39, v40);
        v42 = objc_opt_new();
        v47 = objc_msgSend_numLambdaIdentifiers(v33, v43, v44, v45, v46);
        if (v47)
        {
          v52 = 0;
          v53 = v47;
          do
          {
            v56 = objc_msgSend_localizedLambdaIdentifierForLambdaIndex_locale_(v33, v48, v52, v31, v51);
            if (!v56)
            {
              v57 = objc_msgSend_argumentSpecForIndex_numArgs_(v41, v54, v52, 0, v55);
              v56 = objc_msgSend_localizedArgumentNameForLocale_(v57, v58, v31, v59, v60);
            }

            v61 = [TSTIdentifierNode alloc];
            Index_lastIndex = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v61, v62, contextCopy, v56, 0, 0);
            objc_msgSend_addObject_(v42, v64, Index_lastIndex, v65, v66);

            ++v52;
          }

          while (v53 != v52);
        }

        v67 = objc_msgSend_numArguments(v41, v48, v49, v50, v51);
        v72 = objc_msgSend_numArguments(v41, v68, v69, v70, v71);
        v75 = objc_msgSend_argumentSpecForIndex_numArgs_(v41, v73, v67 - 1, v72, v74);
        v76 = [TSTArgumentPlaceholderNode alloc];
        v78 = objc_msgSend_initWithContext_argumentSpec_firstIndex_lastIndex_(v76, v77, contextCopy, v75, 0, 0);
        objc_msgSend_addObject_(v42, v79, v78, v80, v81);
        v82 = [TSTFunctionNode alloc];
        v84 = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v82, v83, contextCopy, 364, v42, 0, 0);

        v13 = v96;
        v23 = v97;
        v22 = v95;
        if (v84)
        {
LABEL_18:
          objc_msgSend_addObject_(v23, v85, v84, v86, v87);
          goto LABEL_19;
        }
      }

      else
      {
        v84 = objc_msgSend_placeholderWithContext_argSpec_(self, v38, contextCopy, v33, v40);
        if (v84)
        {
          goto LABEL_18;
        }
      }

      v88 = [TSTArgumentPlaceholderNode alloc];
      v84 = objc_msgSend_initWithContext_argumentSpec_firstIndex_lastIndex_(v88, v89, contextCopy, v33, 0, 0);
      if (v84)
      {
        goto LABEL_18;
      }

LABEL_19:

      ++v32;
    }

    while (v32 != v22);
  }

  v90 = [self alloc];
  v92 = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v90, v91, contextCopy, v94, v23, 0, 0);

  return v92;
}

+ (id)newSumNodeWithContext:(id)context children:(id)children
{
  contextCopy = context;
  childrenCopy = children;
  v8 = [self alloc];
  Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v8, v9, contextCopy, 168, childrenCopy, 0, 0);

  return Index_lastIndex;
}

- (TSTFunctionNode)initWithContext:(id)context functionIndex:(unsigned __int16)index children:(id)children firstIndex:(unint64_t)firstIndex lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  childrenCopy = children;
  v25.receiver = self;
  v25.super_class = TSTFunctionNode;
  v14 = [(TSTExpressionNode *)&v25 initWithContext:contextCopy children:childrenCopy firstIndex:firstIndex lastIndex:lastIndex];
  v19 = v14;
  if (v14)
  {
    v14->_functionIndex = index;
    objc_msgSend_p_resetArgumentSpecForChildren(v14, v15, v16, v17, v18);
    v20 = [TSTFunctionEndNode alloc];
    Index_lastIndex = objc_msgSend_initWithContext_functionNode_firstIndex_lastIndex_(v20, v21, contextCopy, v19, firstIndex, lastIndex);
    functionEndNode = v19->_functionEndNode;
    v19->_functionEndNode = Index_lastIndex;
  }

  return v19;
}

- (TSTFunctionNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  childrenCopy = children;
  if (objc_msgSend_count(childrenCopy, v12, v13, v14, v15))
  {
    Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(self, v16, contextCopy, 168, childrenCopy, index, lastIndex);
  }

  else
  {
    Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(self, v16, contextCopy, 104, childrenCopy, index, lastIndex);
  }

  v18 = Index_lastIndex;

  return v18;
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
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTFunctionNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v18, v19);
    v22 = @"nil";
    if (ofCopy)
    {
      v22 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 204, 0, "Unexpected object in initAsCopyOf:... expected TSTFunctionNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v44.receiver = self;
  v44.super_class = TSTFunctionNode;
  v27 = [(TSTExpressionNode *)&v44 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v28 = v27;
  if (v27)
  {
    v27[68] = *(v14 + 136);
    v29 = [TSTFunctionEndNode alloc];
    Index = objc_msgSend_firstIndex(*(v14 + 128), v30, v31, v32, v33);
    v39 = objc_msgSend_lastIndex(*(v14 + 128), v35, v36, v37, v38);
    Index_lastIndex = objc_msgSend_initWithContext_functionNode_firstIndex_lastIndex_(v29, v40, contextCopy, v28, Index, v39);
    v42 = *(v28 + 128);
    *(v28 + 128) = Index_lastIndex;

    objc_storeStrong((v28 + 160), *(v14 + 160));
    objc_storeStrong((v28 + 144), *(v14 + 144));
    objc_storeStrong((v28 + 152), *(v14 + 152));
    objc_storeStrong((v28 + 168), *(v14 + 168));
  }

  return v28;
}

- (void)p_fixupNodeIfFunctionNode:(id)node
{
  nodeCopy = node;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [TSTFunctionEndNode alloc];
    v9 = objc_msgSend_context(self, v5, v6, v7, v8);
    Index = objc_msgSend_firstIndex(self, v10, v11, v12, v13);
    v19 = objc_msgSend_lastIndex(self, v15, v16, v17, v18);
    Index_lastIndex = objc_msgSend_initWithContext_functionNode_firstIndex_lastIndex_(v4, v20, v9, nodeCopy, Index, v19);

    objc_msgSend_setFunctionEndNode_(nodeCopy, v22, Index_lastIndex, v23, v24);
  }
}

- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map
{
  interpretationCopy = interpretation;
  identifiersCopy = identifiers;
  tableCopy = table;
  mapCopy = map;
  selfCopy = self;
  if (objc_msgSend_isLambdaFunction(self, v12, v13, v14, v15))
  {
    v466 = objc_msgSend_forceReferenceInterpretationOfChildren(self, v16, v17, v18, v19);
    v24 = objc_msgSend_children(self, v20, v21, v22, v23);
    v465 = v24;
    v33 = objc_msgSend_count(v24, v25, v26, v27, v28);
    if (!v33)
    {
      inited = 0;
      goto LABEL_68;
    }

    v457 = objc_msgSend_lastObject(v24, v29, v30, v31, v32);
    v463 = objc_opt_new();
    TSCESymbolTable::beginScope(symbolTable);
    v37 = v33 - 1;
    if (v33 == 1)
    {
LABEL_4:
      v42 = objc_msgSend_copyByResolvingIdentifiers_hostTable_baseHostCell_forceReferenceInterpretation_symbolTable_oldToNewNodeMap_(v457, v34, identifiersCopy, tableCopy, *&cell, v466, symbolTable, mapCopy);
      if (v42)
      {
        objc_msgSend_p_fixupNodeIfFunctionNode_(selfCopy, v38, v42, v40, v41);
        objc_msgSend_addObject_(v463, v43, v42, v44, v45);
      }

      TSCESymbolTable::endScope(symbolTable, v38, v39, v40, v41);
      v46 = [TSTFunctionNode alloc];
      v51 = objc_msgSend_context(selfCopy, v47, v48, v49, v50);
      inited = objc_msgSend_initAsCopyOf_intoContext_children_(v46, v52, selfCopy, v51, v463);

      if (inited)
      {
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    v254 = 0;
    while (1)
    {
      v255 = objc_msgSend_objectAtIndex_(v465, v34, v254, v35, v36);
      if (objc_msgSend_isIdentifierNode(v255, v256, v257, v258, v259))
      {
        v264 = objc_msgSend_string(v255, v260, v261, v262, v263);
        v269 = TSCESymbolTable::trimIdentifierString(v264, v265, v266, v267, v268);

        Symbol = TSCESymbolTable::createSymbol(symbolTable, v269);
        v271 = [TSTIdentifierNode alloc];
        v276 = objc_msgSend_context(v255, v272, v273, v274, v275);
        Index = objc_msgSend_firstIndex(v255, v277, v278, v279, v280);
        v286 = objc_msgSend_lastIndex(v255, v282, v283, v284, v285);
        Index_lastIndex = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v271, v287, v276, v269, Index, v286);

        objc_msgSend_setSymbol_(Index_lastIndex, v289, Symbol, v290, v291);
        v296 = objc_msgSend_whitespaceBefore(v255, v292, v293, v294, v295);
        objc_msgSend_setWhitespaceBefore_(Index_lastIndex, v297, v296, v298, v299);

        v304 = objc_msgSend_whitespaceAfter(v255, v300, v301, v302, v303);
        objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v305, v304, v306, v307);
        goto LABEL_50;
      }

      if (objc_msgSend_isVariableNode(v255, v260, v261, v262, v263))
      {
        break;
      }

      if (objc_msgSend_isArgumentPlaceholderNode(v255, v308, v309, v310, v311))
      {
        v383 = objc_msgSend_string(v255, v379, v380, v381, v382);
        v269 = TSCESymbolTable::trimIdentifierString(v383, v384, v385, v386, v387);

        if (objc_msgSend_length(v269, v388, v389, v390, v391))
        {
          v392 = TSCESymbolTable::createSymbol(symbolTable, v269);
          v393 = [TSTIdentifierNode alloc];
          v398 = objc_msgSend_context(v255, v394, v395, v396, v397);
          v403 = objc_msgSend_firstIndex(v255, v399, v400, v401, v402);
          v408 = objc_msgSend_lastIndex(v255, v404, v405, v406, v407);
          Index_lastIndex = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v393, v409, v398, v269, v403, v408);

          objc_msgSend_setSymbol_(Index_lastIndex, v410, v392, v411, v412);
          v417 = objc_msgSend_whitespaceBefore(v255, v413, v414, v415, v416);
          objc_msgSend_setWhitespaceBefore_(Index_lastIndex, v418, v417, v419, v420);

          v304 = objc_msgSend_whitespaceAfter(v255, v421, v422, v423, v424);
          objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v425, v304, v426, v427);
LABEL_50:

LABEL_51:
          goto LABEL_52;
        }

LABEL_58:
        Index_lastIndex = 0;
        goto LABEL_51;
      }

      Index_lastIndex = objc_msgSend_copyByResolvingIdentifiers_hostTable_baseHostCell_forceReferenceInterpretation_symbolTable_oldToNewNodeMap_(v255, v379, identifiersCopy, tableCopy, *&cell, v466, symbolTable, mapCopy);
      objc_msgSend_p_fixupNodeIfFunctionNode_(selfCopy, v437, Index_lastIndex, v438, v439);
LABEL_52:
      if (Index_lastIndex)
      {
        objc_msgSend_addObject_(v463, v428, Index_lastIndex, v429, v430);
        if (v255)
        {
          if (objc_msgSend_isIdentifierNode(Index_lastIndex, v431, v432, v433, v434))
          {
            objc_msgSend_setObject_forUncopiedKey_(mapCopy, v435, Index_lastIndex, v255, v436);
          }
        }
      }

      if (v37 == ++v254)
      {
        goto LABEL_4;
      }
    }

    objc_opt_class();
    v269 = TSUDynamicCast();
    v316 = objc_msgSend_identifier(v269, v312, v313, v314, v315);

    if (!v316)
    {
      v321 = MEMORY[0x277D81150];
      v322 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v317, "[TSTFunctionNode copyByResolvingIdentifiers:hostTable:baseHostCell:forceReferenceInterpretation:symbolTable:oldToNewNodeMap:]", v319, v320);
      v326 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v323, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v324, v325);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v321, v327, v322, v326, 278, 0, "We require the identifier name is set to convert this this variable back to an identifier");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v328, v329, v330, v331);
    }

    v332 = objc_msgSend_identifier(v269, v317, v318, v319, v320);

    if (v332)
    {
      v337 = objc_msgSend_identifier(v269, v333, v334, v335, v336);
      v304 = TSCESymbolTable::trimIdentifierString(v337, v338, v339, v340, v341);

      v342 = TSCESymbolTable::createSymbol(symbolTable, v304);
      v343 = [TSTIdentifierNode alloc];
      v348 = objc_msgSend_context(v255, v344, v345, v346, v347);
      v353 = objc_msgSend_firstIndex(v255, v349, v350, v351, v352);
      v358 = objc_msgSend_lastIndex(v255, v354, v355, v356, v357);
      Index_lastIndex = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v343, v359, v348, v304, v353, v358);

      objc_msgSend_setSymbol_(Index_lastIndex, v360, v342, v361, v362);
      v367 = objc_msgSend_whitespaceBefore(v269, v363, v364, v365, v366);
      objc_msgSend_setWhitespaceBefore_(Index_lastIndex, v368, v367, v369, v370);

      v375 = objc_msgSend_whitespaceAfter(v269, v371, v372, v373, v374);
      objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v376, v375, v377, v378);

      goto LABEL_50;
    }

    goto LABEL_58;
  }

  if (!objc_msgSend_isLetFunction(self, v16, v17, v18, v19))
  {
    v469.receiver = self;
    v469.super_class = TSTFunctionNode;
    inited = [(TSTExpressionNode *)&v469 copyByResolvingIdentifiers:identifiersCopy hostTable:tableCopy baseHostCell:cell forceReferenceInterpretation:interpretationCopy symbolTable:symbolTable oldToNewNodeMap:mapCopy];
    goto LABEL_69;
  }

  v458 = objc_msgSend_forceReferenceInterpretationOfChildren(self, v56, v57, v58, v59);
  v465 = objc_msgSend_children(self, v60, v61, v62, v63);
  v68 = objc_msgSend_count(v465, v64, v65, v66, v67);
  v73 = v68;
  inited = 0;
  if (v68 < 3 || (v68 & 1) == 0)
  {
    goto LABEL_68;
  }

  v457 = objc_msgSend_lastObject(v465, v69, v70, v71, v72);
  v463 = objc_opt_new();
  v74 = 0;
  v75 = 1;
  do
  {
    TSCESymbolTable::beginScope(symbolTable);
    v79 = objc_msgSend_objectAtIndex_(v465, v76, v75 - 1, v77, v78);
    v467 = objc_msgSend_objectAtIndex_(v465, v80, v75, v81, v82);
    if (objc_msgSend_isIdentifierNode(v79, v83, v84, v85, v86))
    {
      v91 = objc_msgSend_string(v79, v87, v88, v89, v90);
      v96 = TSCESymbolTable::trimIdentifierString(v91, v92, v93, v94, v95);

      v97 = TSCESymbolTable::nextSymbol(symbolTable);
      v98 = [TSTIdentifierNode alloc];
      v103 = objc_msgSend_context(v79, v99, v100, v101, v102);
      v108 = objc_msgSend_firstIndex(v79, v104, v105, v106, v107);
      v113 = objc_msgSend_lastIndex(v79, v109, v110, v111, v112);
      v115 = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v98, v114, v103, v96, v108, v113);

      objc_msgSend_setSymbol_(v115, v116, v97, v117, v118);
      v123 = objc_msgSend_whitespaceBefore(v79, v119, v120, v121, v122);
      objc_msgSend_setWhitespaceBefore_(v115, v124, v123, v125, v126);

      v131 = objc_msgSend_whitespaceAfter(v79, v127, v128, v129, v130);
      objc_msgSend_setWhitespaceAfter_(v115, v132, v131, v133, v134);
LABEL_24:

      v239 = v96;
      goto LABEL_25;
    }

    if (objc_msgSend_isVariableNode(v79, v87, v88, v89, v90))
    {
      objc_opt_class();
      v131 = TSUDynamicCast();
      v143 = objc_msgSend_identifier(v131, v139, v140, v141, v142);

      if (!v143)
      {
        v148 = MEMORY[0x277D81150];
        v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v144, "[TSTFunctionNode copyByResolvingIdentifiers:hostTable:baseHostCell:forceReferenceInterpretation:symbolTable:oldToNewNodeMap:]", v146, v147);
        v153 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v150, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v151, v152);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v148, v154, v149, v153, 396, 0, "We require the identifier name is set to convert this this variable back to an identifier");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v155, v156, v157, v158);
      }

      v159 = objc_msgSend_identifier(v131, v144, v145, v146, v147);

      if (v159)
      {
        v164 = objc_msgSend_identifier(v131, v160, v161, v162, v163);
        v96 = TSCESymbolTable::trimIdentifierString(v164, v165, v166, v167, v168);

        v97 = TSCESymbolTable::nextSymbol(symbolTable);
        v169 = [TSTIdentifierNode alloc];
        v174 = objc_msgSend_context(v79, v170, v171, v172, v173);
        v179 = objc_msgSend_firstIndex(v79, v175, v176, v177, v178);
        v184 = objc_msgSend_lastIndex(v79, v180, v181, v182, v183);
        v115 = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v169, v185, v174, v96, v179, v184);

        objc_msgSend_setSymbol_(v115, v186, v97, v187, v188);
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (objc_msgSend_isArgumentPlaceholderNode(v79, v135, v136, v137, v138))
    {
      v193 = objc_msgSend_string(v79, v189, v190, v191, v192);
      v131 = TSCESymbolTable::trimIdentifierString(v193, v194, v195, v196, v197);

      if (objc_msgSend_length(v131, v198, v199, v200, v201))
      {
        v97 = TSCESymbolTable::nextSymbol(symbolTable);
        v202 = [TSTIdentifierNode alloc];
        v207 = objc_msgSend_context(v79, v203, v204, v205, v206);
        v212 = objc_msgSend_firstIndex(v79, v208, v209, v210, v211);
        v217 = objc_msgSend_lastIndex(v79, v213, v214, v215, v216);
        v115 = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v202, v218, v207, v131, v212, v217);

        objc_msgSend_setSymbol_(v115, v219, v97, v220, v221);
        v226 = objc_msgSend_whitespaceBefore(v79, v222, v223, v224, v225);
        objc_msgSend_setWhitespaceBefore_(v115, v227, v226, v228, v229);

        v234 = objc_msgSend_whitespaceAfter(v79, v230, v231, v232, v233);
        objc_msgSend_setWhitespaceAfter_(v115, v235, v234, v236, v237);

LABEL_23:
        v96 = 0;
        goto LABEL_24;
      }

LABEL_22:
      v115 = 0;
      LODWORD(v97) = 0;
      goto LABEL_23;
    }

    v115 = objc_msgSend_copyByResolvingIdentifiers_hostTable_baseHostCell_forceReferenceInterpretation_symbolTable_oldToNewNodeMap_(v79, v189, identifiersCopy, tableCopy, *&cell, v458, symbolTable, mapCopy);
    v239 = 0;
    objc_msgSend_p_fixupNodeIfFunctionNode_(selfCopy, v251, v115, v252, v253);
    LODWORD(v97) = 0;
LABEL_25:
    v244 = objc_msgSend_copyByResolvingIdentifiers_hostTable_baseHostCell_forceReferenceInterpretation_symbolTable_oldToNewNodeMap_(v467, v238, identifiersCopy, tableCopy, *&cell, v458, symbolTable, mapCopy);
    if (v97)
    {
      TSCESymbolTable::setSymbol(symbolTable, v97, v239);
    }

    if (v115)
    {
      objc_msgSend_addObject_(v463, v240, v115, v242, v243);
    }

    if (v244)
    {
      objc_msgSend_p_fixupNodeIfFunctionNode_(selfCopy, v240, v244, v242, v243);
      objc_msgSend_addObject_(v463, v245, v244, v246, v247);
    }

    if (v115 && objc_msgSend_isIdentifierNode(v115, v240, v241, v242, v243))
    {
      objc_msgSend_setObject_forUncopiedKey_(mapCopy, v248, v115, v79, v249);
    }

    v75 += 2;
    --v74;
  }

  while (v75 < v73);
  v440 = objc_msgSend_copyByResolvingIdentifiers_hostTable_baseHostCell_forceReferenceInterpretation_symbolTable_oldToNewNodeMap_(v457, v250, identifiersCopy, tableCopy, *&cell, v458, symbolTable, mapCopy);
  v42 = v440;
  if (v440)
  {
    objc_msgSend_p_fixupNodeIfFunctionNode_(selfCopy, v441, v440, v443, v444);
    objc_msgSend_addObject_(v463, v445, v42, v446, v447);
  }

  if (v74)
  {
    do
    {
      TSCESymbolTable::endScope(symbolTable, v441, v442, v443, v444);
    }

    while (!__CFADD__(v74++, 1));
  }

  v449 = [TSTFunctionNode alloc];
  v454 = objc_msgSend_context(selfCopy, v450, v451, v452, v453);
  inited = objc_msgSend_initAsCopyOf_intoContext_children_(v449, v455, selfCopy, v454, v463);

  if (inited)
  {
LABEL_66:
    objc_msgSend_setObject_forUncopiedKey_(mapCopy, v54, inited, selfCopy, v55);
  }

LABEL_67:

LABEL_68:
LABEL_69:

  return inited;
}

- (id)convertEmptyArgumentsToPlaceholders
{
  v6 = objc_msgSend_children(self, a2, v2, v3, v4);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);

  if (v11 && ((objc_msgSend_isLetFunction(self, v12, v13, v14, v15) & 1) != 0 || (objc_msgSend_isLambdaFunction(self, v16, v17, v18, v19) & 1) != 0))
  {
    v20 = objc_msgSend_children(self, v16, v17, v18, v19);
    v92 = objc_msgSend_mutableCopy(v20, v21, v22, v23, v24);
    v29 = objc_msgSend_functionIndex(self, v25, v26, v27, v28);
    v33 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v30, v29, v31, v32);
    v42 = v11;
    if (objc_msgSend_maxArguments(v33, v34, v35, v36, v37) == -1 || ((v43 = objc_msgSend_maxArguments(v33, v38, v39, v40, v41), v43 >= v11) ? (v42 = v11) : (v42 = v43), v43))
    {
      v91 = v33;
      v44 = 0;
      do
      {
        v45 = objc_msgSend_objectAtIndexedSubscript_(v20, v38, v44, v40, v41, v91);
        v50 = objc_msgSend_convertEmptyArgumentsToPlaceholders(v45, v46, v47, v48, v49);

        if (objc_msgSend_isEmptyNode(v50, v51, v52, v53, v54) && (objc_msgSend_isArgumentPlaceholderNode(v50, v55, v56, v57, v58) & 1) == 0)
        {
          v61 = objc_msgSend_argumentSpecForIndex_numArgs_(v91, v59, v44, v11, v60);
          v62 = [TSTArgumentPlaceholderNode alloc];
          v67 = objc_msgSend_context(self, v63, v64, v65, v66);
          Index = objc_msgSend_firstIndex(v50, v68, v69, v70, v71);
          v77 = objc_msgSend_lastIndex(v50, v73, v74, v75, v76);
          Index_lastIndex = objc_msgSend_initWithContext_argumentSpec_firstIndex_lastIndex_(v62, v78, v67, v61, Index, v77);

          objc_msgSend_replaceObjectAtIndex_withObject_(v92, v80, v44, Index_lastIndex, v81);
        }

        ++v44;
      }

      while (v42 != v44);
    }

    v82 = [TSTFunctionNode alloc];
    v87 = objc_msgSend_context(self, v83, v84, v85, v86);
    inited = objc_msgSend_initAsCopyOf_intoContext_children_(v82, v88, self, v87, v92);
  }

  else
  {
    inited = self;
  }

  return inited;
}

- (id)variableUsageErrorWithSymbolTable:(void *)table
{
  if ((objc_msgSend_isLambdaFunction(self, a2, table, v3, v4) & 1) != 0 || objc_msgSend_isLetFunction(self, v7, v8, v9, v10))
  {
    v11 = objc_msgSend_children(self, v7, v8, v9, v10);
    v16 = objc_msgSend_count(v11, v12, v13, v14, v15);
    v21 = objc_msgSend_functionIndex(self, v17, v18, v19, v20);
    v25 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v22, v21, v23, v24);
    if (v16 > objc_msgSend_maxArguments(v25, v26, v27, v28, v29))
    {
      v34 = objc_msgSend_tooManyVariablesError(TSCEError, v30, v31, v32, v33);
LABEL_27:

      goto LABEL_28;
    }

    v35 = v16 - 1;
    v36 = v16 > 1;
    if (v16 >= 2)
    {
      TSCESymbolTable::beginScope(table);
      v44 = 0;
      if (objc_msgSend_isLetFunction(self, v37, v38, v39, v40))
      {
        v45 = 2;
      }

      else
      {
        v45 = 1;
      }

      while (1)
      {
        v46 = objc_msgSend_objectAtIndexedSubscript_(v11, v41, v44, v42, v43);
        if ((objc_msgSend_isIdentifierNode(v46, v47, v48, v49, v50) & 1) == 0 && !objc_msgSend_isArgumentPlaceholderNode(v46, v51, v52, v53, v54))
        {
          if (objc_msgSend_isEmptyNode(v46, v51, v52, v53, v54))
          {
            objc_msgSend_isLambdaFunction(self, v84, v85, v86, v87);
          }

          v88 = objc_msgSend_functionIndex(self, v84, v85, v86, v87);
          v55 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v89, v88, v90, v91);
          v83 = objc_msgSend_requiresIdentifierError_argIndex_(TSCEError, v92, v55, (v44 + 1), v93);
          goto LABEL_25;
        }

        v55 = objc_msgSend_string(v46, v51, v52, v53, v54);
        if ((TSCESymbolTable::isAcceptableIdentifier(v55, v56) & 1) == 0)
        {
          break;
        }

        if (TSCESymbolTable::lookup(table, &v55->_locale, 1))
        {
          v83 = objc_msgSend_repeatedIdentifierError_(TSCEError, v60, v55, v61, v62);
          goto LABEL_25;
        }

        TSCESymbolTable::createSymbol(table, &v55->_locale);

        v44 += v45;
        if (v44 >= v35)
        {
          goto LABEL_14;
        }
      }

      v67 = objc_msgSend_argumentSpecForIndex_(v25, v57, v44, v58, v59);
      if (objc_msgSend_argumentType(v67, v68, v69, v70, v71) == 20)
      {
        v76 = objc_msgSend_functionIndex(self, v72, v73, v74, v75);
        v80 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v77, v76, v78, v79);
        v34 = objc_msgSend_requiresIdentifierError_argIndex_(TSCEError, v81, v80, (v44 + 1), v82);

        goto LABEL_26;
      }

      v83 = objc_msgSend_unacceptableIdentifierError_(TSCEError, v72, v55, v74, v75);
LABEL_25:
      v34 = v83;
LABEL_26:

      goto LABEL_27;
    }

LABEL_14:
  }

  else
  {
    v36 = 0;
  }

  v95.receiver = self;
  v95.super_class = TSTFunctionNode;
  v34 = [(TSTExpressionNode *)&v95 variableUsageErrorWithSymbolTable:table];
  if (v36)
  {
    TSCESymbolTable::endScope(table, v63, v64, v65, v66);
  }

LABEL_28:

  return v34;
}

- (id)transformToUseScopedVariables:(void *)variables
{
  selfCopy = self;
  if (!objc_msgSend_isLambdaFunction(selfCopy, v5, v6, v7, v8))
  {
    if (!objc_msgSend_isLetFunction(selfCopy, v9, v10, v11, v12))
    {
      v162.receiver = selfCopy;
      v162.super_class = TSTFunctionNode;
      v147 = [(TSTExpressionNode *)&v162 transformToUseScopedVariables:variables];

      v148 = v147;
      goto LABEL_39;
    }

    v159 = selfCopy;
    v87 = objc_msgSend_children(selfCopy, v83, v84, v85, v86);
    v161 = v87;
    v92 = objc_msgSend_count(v87, v88, v89, v90, v91);
    v96 = v92 - 1;
    if (v92 == 1)
    {
      v98 = 0;
      v97 = 0;
LABEL_29:
      v149 = objc_msgSend_objectAtIndexedSubscript_(v87, v93, v96, v94, v95);
      v157 = objc_msgSend_transformToUseScopedVariables_(v149, v150, variables, v151, v152);
      if (v149 != v157)
      {
        if (!v98)
        {
          v98 = objc_msgSend_mutableCopy(v87, v153, v154, v155, v156);
        }

        objc_msgSend_setObject_atIndexedSubscript_(v98, v153, v157, v96, v156);
      }

      if (v98)
      {
        objc_msgSend_setChildren_(v159, v153, v98, v155, v156);
      }

      for (; v97; --v97)
      {
        TSCESymbolTable::endScope(variables, v153, v154, v155, v156);
      }

      goto LABEL_38;
    }

    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 1;
    v160 = v92 - 1;
    while (1)
    {
      v101 = objc_msgSend_objectAtIndexedSubscript_(v87, v93, v99, v94, v95);
      v105 = v101;
      if (v100)
      {
        TSCESymbolTable::beginScope(variables);
        ++v97;
        if (!objc_msgSend_isIdentifierNode(v105, v106, v107, v108, v109))
        {
          v135 = MEMORY[0x277D81150];
          v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, "[TSTFunctionNode transformToUseScopedVariables:]", v111, v112);
          v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v138, v139);
          v141 = objc_opt_class();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v135, v142, v136, v140, 680, 0, "LET argument %lu is not an identifier: %@", v99, v141);

          v87 = v161;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v143, v144, v145, v146);
          v96 = v160;
          goto LABEL_25;
        }

        v113 = v105;
        v117 = objc_msgSend_trimIdentifier_(v113, v114, variables, v115, v116);
        v122 = objc_msgSend_fullIdentifier(v117, v118, v119, v120, v121);
        Symbol = TSCESymbolTable::createSymbol(variables, v122);

        objc_msgSend_setSymbol_(v117, v124, Symbol, v125, v126);
        if (v117 != v113)
        {
          if (!v98)
          {
            v98 = objc_msgSend_mutableCopy(v161, v127, v128, v129, v130);
          }

          objc_msgSend_setObject_atIndexedSubscript_(v98, v127, v117, v99, v130);
        }

        v96 = v160;
        v87 = v161;
      }

      else
      {
        v113 = objc_msgSend_transformToUseScopedVariables_(v101, v102, variables, v103, v104);
        if (v113 != v105)
        {
          if (!v98)
          {
            v98 = objc_msgSend_mutableCopy(v87, v131, v132, v133, v134);
          }

          objc_msgSend_setObject_atIndexedSubscript_(v98, v131, v113, v99, v134);
        }
      }

LABEL_25:
      v100 ^= 1u;

      if (v96 == ++v99)
      {
        goto LABEL_29;
      }
    }
  }

  TSCESymbolTable::beginScope(variables);
  v159 = selfCopy;
  v17 = objc_msgSend_children(selfCopy, v13, v14, v15, v16);
  v18 = objc_opt_new();
  v23 = objc_msgSend_count(v17, v19, v20, v21, v22);
  v27 = v23 - 1;
  if (v23 != 1)
  {
    v28 = 0;
    do
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(v17, v24, v28, v25, v26);
      if (objc_msgSend_isIdentifierNode(v29, v30, v31, v32, v33))
      {
        v37 = v29;
        v41 = objc_msgSend_trimIdentifier_(v37, v38, variables, v39, v40);

        v46 = objc_msgSend_fullIdentifier(v41, v42, v43, v44, v45);
        v47 = TSCESymbolTable::createSymbol(variables, v46);

        objc_msgSend_setSymbol_(v41, v48, v47, v49, v50);
        objc_msgSend_addObject_(v18, v51, v41, v52, v53);
      }

      else
      {
        v54 = MEMORY[0x277D81150];
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTFunctionNode transformToUseScopedVariables:]", v35, v36);
        v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v57, v58);
        v60 = objc_opt_class();
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v61, v55, v59, 636, 0, "LAMBDA argument %lu is not an identifier: %@", v28, v60);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
        objc_msgSend_addObject_(v18, v66, v29, v67, v68);
      }

      ++v28;
    }

    while (v27 != v28);
  }

  v69 = objc_msgSend_objectAtIndexedSubscript_(v17, v24, v27, v25, v26);
  v73 = objc_msgSend_transformToUseScopedVariables_(v69, v70, variables, v71, v72);
  objc_msgSend_setObject_atIndexedSubscript_(v18, v74, v73, v27, v75);
  objc_msgSend_setChildren_(v159, v76, v18, v77, v78);
  TSCESymbolTable::endScope(variables, v79, v80, v81, v82);

LABEL_38:
  v148 = v159;
LABEL_39:

  return v148;
}

- (unint64_t)lastIndexOfSubtree
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v16.receiver = self;
  v16.super_class = TSTFunctionNode;
  lastIndexOfSubtree = [(TSTExpressionNode *)&v16 lastIndexOfSubtree];
  if (v18[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = objc_msgSend_children(self, v3, v4, v5, v6);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_221291414;
    v15[3] = &unk_278462538;
    v15[4] = &v17;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v7, v8, 2, v15, v9);

    if (v18[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14.receiver = self;
      v14.super_class = TSTFunctionNode;
      lastIndex = [(TSTExpressionNode *)&v14 lastIndex];
      v18[3] = lastIndex;
    }
  }

  v11 = objc_msgSend_functionEndNode(self, v3, v4, v5, v6);

  v12 = v18[3];
  if (v11)
  {
    v18[3] = ++v12;
  }

  _Block_object_dispose(&v17, 8);
  return v12;
}

- (unint64_t)numArguments
{
  v5 = objc_msgSend_p_functionSpec(self, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_numArguments(v5, v6, v7, v8, v9);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (unint64_t)minArguments
{
  v5 = objc_msgSend_p_functionSpec(self, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_minArguments(v5, v6, v7, v8, v9);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (unint64_t)maxArguments
{
  v5 = objc_msgSend_p_functionSpec(self, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_maxArguments(v5, v6, v7, v8, v9);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)setChildren:(id)children
{
  childrenCopy = children;
  v13.receiver = self;
  v13.super_class = TSTFunctionNode;
  [(TSTExpressionNode *)&v13 setChildren:childrenCopy];
  objc_msgSend_p_resetArgumentSpecForChildren(self, v5, v6, v7, v8);
  objc_msgSend_resurrectModeTokens(self, v9, v10, v11, v12);
}

- (void)setFunctionEndNode:(id)node
{
  nodeCopy = node;
  if (self->_functionEndNode != nodeCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_msgSend_setFunctionNode_(self->_functionEndNode, v9, 0, v10, v11);
    objc_msgSend_setFunctionNode_(nodeCopy, v12, self, v13, v14);
    objc_storeStrong(&self->_functionEndNode, node);
  }
}

- (id)mostSpecificNodeContainingIndex:(unint64_t)index correspondingIndex:(unint64_t)correspondingIndex
{
  v8 = objc_msgSend_functionEndNode(self, a2, index, correspondingIndex, v4);
  if (v8)
  {
    v12 = v8;
    v13 = objc_msgSend_subtreeContainsIndex_(self, v9, index, v10, v11);

    if (v13)
    {
      if (!objc_msgSend_subtreeContainsIndex_(self, v14, correspondingIndex, v15, v16) || objc_msgSend_firstIndex(self, v17, v18, v19, v20) == correspondingIndex || (objc_msgSend_functionEndNode(self, v17, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), Index = objc_msgSend_firstIndex(v21, v22, v23, v24, v25), v21, Index == correspondingIndex))
      {
        if (index <= correspondingIndex)
        {
          selfCopy = self;
          if (selfCopy)
          {
            goto LABEL_11;
          }
        }

        else
        {
          selfCopy = objc_msgSend_functionEndNode(self, v17, v18, v19, v20);
          if (selfCopy)
          {
            goto LABEL_11;
          }
        }
      }
    }
  }

  v29.receiver = self;
  v29.super_class = TSTFunctionNode;
  selfCopy = [(TSTExpressionNode *)&v29 mostSpecificNodeContainingIndex:index correspondingIndex:correspondingIndex];
LABEL_11:

  return selfCopy;
}

- (void)resurrectModeTokens
{
  v129 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_functionIndex(self, a2, v2, v3, v4))
  {
    selfCopy = self;
    v10 = objc_msgSend_children(self, v6, v7, v8, v9);
    v118 = objc_msgSend_mutableCopy(v10, v11, v12, v13, v14);

    v19 = objc_msgSend_functionIndex(selfCopy, v15, v16, v17, v18);
    v121 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v20, v19, v21, v22);
    if (!objc_msgSend_numArguments(v121, v23, v24, v25, v26))
    {
      goto LABEL_26;
    }

    v31 = objc_msgSend_children(selfCopy, v27, v28, v29, v30);
    v120 = objc_msgSend_count(v31, v32, v33, v34, v35);

    v40 = objc_msgSend_maxArguments(v121, v36, v37, v38, v39);
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    obj = objc_msgSend_children(selfCopy, v41, v42, v43, v44);
    v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v124, v128, 16);
    if (v48)
    {
      v117 = 0;
      v49 = 0;
      v50 = *v125;
      while (1)
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v125 != v50)
          {
            objc_enumerationMutation(obj);
          }

          if (v40 != -1 && v49 >= v40)
          {
            v52 = 0;
            goto LABEL_20;
          }

          v52 = objc_msgSend_argumentSpecForIndex_numArgs_(v121, v46, v49, v120, v47);
          if (v52)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              v53 = TSUDynamicCast();
              v123._decimal.w[0] = objc_msgSend_number(v53, v54, v55, v56, v57);
              v123._decimal.w[1] = v58;
              TSUDecimal::doubleValue(&v123);
              v60 = v59;
              v65 = objc_msgSend_objectLocale(selfCopy, v61, v62, v63, v64);
              v69 = objc_msgSend_indexForModeNumber_locale_(v52, v66, v65, v67, v68, v60);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                v70 = TSUDynamicCast();
                v75 = objc_msgSend_value(v70, v71, v72, v73, v74);
                v80 = objc_msgSend_objectLocale(selfCopy, v76, v77, v78, v79);
                v69 = objc_msgSend_indexForModeBool_locale_(v52, v81, v75, v80, v82);
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_20;
                }

                objc_opt_class();
                v83 = TSUDynamicCast();
                v88 = objc_msgSend_value(v83, v84, v85, v86, v87);
                v93 = objc_msgSend_objectLocale(selfCopy, v89, v90, v91, v92);
                v69 = objc_msgSend_indexForModeString_locale_(v52, v94, v88, v93, v95);
              }
            }

            if (v69 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v96 = [TSTArgumentPlaceholderNode alloc];
              v101 = objc_msgSend_context(selfCopy, v97, v98, v99, v100);
              Index_lastIndex = objc_msgSend_initWithContext_argumentSpec_firstIndex_lastIndex_(v96, v102, v101, v52, 0, 0);

              objc_msgSend_setMode_(Index_lastIndex, v104, v69, v105, v106);
              objc_msgSend_replaceObjectAtIndex_withObject_(v118, v107, v49, Index_lastIndex, v108);

              v117 = 1;
            }
          }

LABEL_20:

          ++v49;
        }

        v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v124, v128, 16);
        if (!v48)
        {

          if (v117)
          {
            v113 = objc_msgSend_copy(v118, v109, v110, v111, v112);
            objc_msgSend_setChildren_(selfCopy, v114, v113, v115, v116);
            goto LABEL_25;
          }

          goto LABEL_26;
        }
      }
    }

    v113 = obj;
LABEL_25:

LABEL_26:
  }
}

- (BOOL)isEmptyFunctionNode
{
  v6 = objc_msgSend_children(self, a2, v2, v3, v4);
  if (objc_msgSend_count(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_children(self, v11, v12, v13, v14);
    if (objc_msgSend_count(v15, v16, v17, v18, v19) == 1)
    {
      v24 = objc_msgSend_children(self, v20, v21, v22, v23);
      v28 = objc_msgSend_objectAtIndex_(v24, v25, 0, v26, v27);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

- (BOOL)isMissingRequiredArgument
{
  v47 = *MEMORY[0x277D85DE8];
  v41 = objc_msgSend_children(self, a2, v2, v3, v4);
  v10 = objc_msgSend_count(v41, v6, v7, v8, v9);
  v16 = objc_msgSend_minArguments(self, v11, v12, v13, v14);
  if (v16 <= v10)
  {
    objc_msgSend_subarrayWithRange_(v41, v15, 0, v16, v17);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v19 = v43 = 0u;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v42, v46, 16);
    if (v21)
    {
      v22 = *v43;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v43 != v22)
          {
            objc_enumerationMutation(v19);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_17;
          }

          objc_opt_class();
          v24 = TSUDynamicCast();
          v29 = v24;
          if (v24)
          {
            v30 = objc_msgSend_argumentSpec(v24, v25, v26, v27, v28);
            if ((objc_msgSend_isMode(v30, v31, v32, v33, v34) & 1) == 0)
            {

LABEL_17:
              v18 = 1;
              goto LABEL_18;
            }

            v39 = objc_msgSend_mode(v29, v35, v36, v37, v38) == 0xFFFF;

            if (v39)
            {
              goto LABEL_17;
            }
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v25, &v42, v46, 16);
        v18 = 0;
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_18:
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (BOOL)isDescendantOfChild:(id)child
{
  v41 = *MEMORY[0x277D85DE8];
  childCopy = child;
  v9 = objc_msgSend_children(self, v5, v6, v7, v8);
  v13 = objc_msgSend_containsObject_(v9, v10, childCopy, v11, v12);

  if (v13)
  {
    isDescendantOfChild = 0;
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = objc_msgSend_children(self, v14, v15, v16, v17, 0);
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v36, v40, 16);
    if (v25)
    {
      v26 = *v37;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v19);
          }

          v28 = objc_msgSend_children(*(*(&v36 + 1) + 8 * i), v21, v22, v23, v24);
          v32 = objc_msgSend_containsObject_(v28, v29, childCopy, v30, v31);

          if (v32)
          {
            isDescendantOfChild = 1;
            goto LABEL_16;
          }

          objc_opt_class();
          v33 = TSUDynamicCast();
          v34 = v33;
          if (v33)
          {
            isDescendantOfChild = objc_msgSend_isDescendantOfChild_(v33, v21, childCopy, v23, v24);

            goto LABEL_16;
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v36, v40, 16);
        isDescendantOfChild = 0;
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      isDescendantOfChild = 0;
    }

LABEL_16:
  }

  return isDescendantOfChild;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  v34 = *MEMORY[0x277D85DE8];
  subexpressionsCopy = subexpressions;
  functionIndex = self->_functionIndex;
  v10 = objc_msgSend_hash(self->_invalidFunctionName, v6, v7, v8, v9);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = objc_msgSend_children(self, v11, v12, v13, v14, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v29, v33, 16);
  v21 = v10 ^ (functionIndex | 0x8000000);
  if (v20)
  {
    v22 = 0;
    v23 = *v30;
    do
    {
      v24 = 0;
      do
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v15);
        }

        v21 ^= objc_msgSend_recordHashesForSubexpressions_(*(*(&v29 + 1) + 8 * v24), v17, subexpressionsCopy, v18, v19);
        v22 += v17;
        ++v24;
      }

      while (v20 != v24);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v29, v33, 16);
    }

    while (v20);
    v25 = v22 + 1;
  }

  else
  {
    v25 = 1;
  }

  objc_msgSend_recordExpression_data_(subexpressionsCopy, v26, self, v21, v25);
  v27 = v21;
  v28 = v25;
  result.var1 = v28;
  result.var0 = v27;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSTFunctionNode;
    v5 = [(TSTExpressionNode *)&v7 isEqualToExpressionNode:nodeCopy]&& self->_functionIndex == nodeCopy->_functionIndex;
  }

  return v5;
}

- (BOOL)isInvalidFunction
{
  if (!self->_functionIndex)
  {
    return 1;
  }

  v5 = objc_msgSend_functionIndex(self, a2, v2, v3, v4);
  v9 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v6, v5, v7, v8);
  v10 = v9 == 0;

  return v10;
}

- (id)string
{
  if (self->_functionIndex)
  {
    v6 = objc_msgSend_functionIndex(self, a2, v2, v3, v4);
    v10 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v7, v6, v8, v9);
    v18 = objc_msgSend_objectLocale(self, v11, v12, v13, v14);
    if (v10)
    {
      objc_msgSend_localizedFunctionNameForLocale_(v10, v15, v18, v16, v17);
    }

    else
    {
      objc_msgSend_unsupportedFunctionNameForLocale_(TSCEFunctionSpec, v15, v18, v16, v17);
    }
    v20 = ;
  }

  else
  {
    invalidFunctionName = self->_invalidFunctionName;
    if (invalidFunctionName)
    {
      v20 = invalidFunctionName;
      goto LABEL_9;
    }

    v10 = objc_msgSend_objectLocale(self, a2, v2, v3, v4);
    v20 = objc_msgSend_unsupportedFunctionNameForLocale_(TSCEFunctionSpec, v22, v10, v23, v24);
  }

LABEL_9:

  return v20;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options unwrapped:(BOOL)unwrapped
{
  v6 = *&options;
  textCopy = text;
  v16 = objc_msgSend_context(self, v8, v9, v10, v11);
  unwrappedCopy = unwrapped;
  v94 = v16;
  if (!unwrapped)
  {
    if (v6)
    {
      v17 = objc_msgSend_whitespaceBefore(self, v12, whitespaceAfterLeftParen, v14, v15);

      if (v17)
      {
        v19 = objc_msgSend_whitespaceBefore(self, v12, v18, v14, v15);
        objc_msgSend_takeText_(textCopy, v20, v19, v21, v22);
      }
    }

    if (self->_functionIndex)
    {
      v23 = [TSTWPTokenAttachment alloc];
      v26 = objc_msgSend_initWithContext_expressionNode_(v23, v24, v16, self, v25);
      objc_msgSend_insertUIGraphicalAttachment_withLanguage_(textCopy, v27, v26, *MEMORY[0x277D81448], v28);
    }

    else
    {
      objc_msgSend_takeText_(textCopy, v12, self->_invalidFunctionName, v14, v15);
      if (v6)
      {
        whitespaceAfterFunctionName = self->_whitespaceAfterFunctionName;
        if (whitespaceAfterFunctionName)
        {
          objc_msgSend_takeText_(textCopy, v29, whitespaceAfterFunctionName, v30, v31);
        }
      }

      objc_msgSend_takeText_withLanguage_(textCopy, v29, @"("), *MEMORY[0x277D81448], v31;
    }
  }

  if (v6)
  {
    whitespaceAfterLeftParen = self->_whitespaceAfterLeftParen;
    if (whitespaceAfterLeftParen)
    {
      objc_msgSend_takeText_(textCopy, v12, whitespaceAfterLeftParen, v14, v15);
    }
  }

  v33 = objc_msgSend_objectLocale(v16, v12, whitespaceAfterLeftParen, v14, v15);
  v38 = objc_msgSend_listSeparator(v33, v34, v35, v36, v37);

  v43 = objc_msgSend_count(self->_whitespaceAfterDelimiters, v39, v40, v41, v42);
  v48 = objc_msgSend_children(self, v44, v45, v46, v47);
  v57 = objc_msgSend_count(v48, v49, v50, v51, v52);
  if (v57)
  {
    v58 = objc_msgSend_objectAtIndex_(v48, v53, 0, v55, v56);
    objc_msgSend_insertFormulaText_printingOptions_(v58, v59, textCopy, v6, v60);

    if (v57 != 1)
    {
      v61 = *MEMORY[0x277D81448];
      for (i = 1; i != v57; ++i)
      {
        objc_msgSend_takeText_withLanguage_(textCopy, v53, v38, v61, v56);
        if ((v6 & 1) != 0 && v43 >= i)
        {
          v66 = objc_msgSend_objectAtIndex_(self->_whitespaceAfterDelimiters, v63, i - 1, v64, v65);
          objc_msgSend_takeText_(textCopy, v67, v66, v68, v69);
        }

        v70 = objc_msgSend_objectAtIndex_(v48, v63, i, v64, v65);
        objc_msgSend_insertFormulaText_printingOptions_(v70, v71, textCopy, v6, v72);
      }
    }
  }

  if (!unwrappedCopy)
  {
    if (self->_functionIndex)
    {
      v73 = objc_msgSend_functionEndNode(self, v53, v54, v55, v56);
      v74 = [TSTWPTokenAttachment alloc];
      v77 = objc_msgSend_initWithContext_expressionNode_(v74, v75, v94, v73, v76);
      objc_msgSend_insertUIGraphicalAttachment_withLanguage_(textCopy, v78, v77, *MEMORY[0x277D81448], v79);
    }

    else
    {
      objc_msgSend_takeText_withLanguage_(textCopy, v53, @""), *MEMORY[0x277D81448], v56);
    }

    if (v6)
    {
      v84 = objc_msgSend_whitespaceAfter(self, v80, v81, v82, v83);

      if (v84)
      {
        v89 = objc_msgSend_whitespaceAfter(self, v85, v86, v87, v88);
        objc_msgSend_takeText_(textCopy, v90, v89, v91, v92);
      }
    }
  }
}

- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack
{
  recursiveCopy = recursive;
  stackCopy = stack;
  v14 = objc_msgSend_printingOptions(stackCopy, v10, v11, v12, v13);
  v23 = objc_msgSend_context(self, v15, v16, v17, v18);
  if (!phase)
  {
    if (v14)
    {
      v24 = objc_msgSend_whitespaceBefore(self, v19, whitespaceAfterLeftParen, v21, v22);

      if (v24)
      {
        v26 = objc_msgSend_whitespaceBefore(self, v19, v25, v21, v22);
        objc_msgSend_takeText_(recursiveCopy, v27, v26, v28, v29);
      }
    }

    if (self->_functionIndex)
    {
      v30 = [TSTWPTokenAttachment alloc];
      v33 = objc_msgSend_initWithContext_expressionNode_(v30, v31, v23, self, v32);
      objc_msgSend_insertUIGraphicalAttachment_withLanguage_(recursiveCopy, v34, v33, *MEMORY[0x277D81448], v35);
    }

    else
    {
      objc_msgSend_takeText_(recursiveCopy, v19, self->_invalidFunctionName, v21, v22);
      if (v14)
      {
        whitespaceAfterFunctionName = self->_whitespaceAfterFunctionName;
        if (whitespaceAfterFunctionName)
        {
          objc_msgSend_takeText_(recursiveCopy, v36, whitespaceAfterFunctionName, v37, v38);
        }
      }

      objc_msgSend_takeText_withLanguage_(recursiveCopy, v36, @"("), *MEMORY[0x277D81448], v38;
    }

    if (v14)
    {
      whitespaceAfterLeftParen = self->_whitespaceAfterLeftParen;
      if (whitespaceAfterLeftParen)
      {
        objc_msgSend_takeText_(recursiveCopy, v19, whitespaceAfterLeftParen, v21, v22);
      }
    }
  }

  v40 = objc_msgSend_children(self, v19, whitespaceAfterLeftParen, v21, v22);
  v49 = objc_msgSend_count(v40, v41, v42, v43, v44);
  if (v49 > phase)
  {
    v103 = v23;
    selfCopy = self;
    v104 = selfCopy;
    v105 = phase + 1;
    v102 = stackCopy;
    objc_msgSend_push_(stackCopy, v51, &v104, v52, v53);

    if (phase)
    {
      v58 = objc_msgSend_count(selfCopy->_whitespaceAfterDelimiters, v54, v55, v56, v57);
      v63 = objc_msgSend_objectLocale(v103, v59, v60, v61, v62);
      v68 = objc_msgSend_listSeparator(v63, v64, v65, v66, v67);

      objc_msgSend_takeText_withLanguage_(recursiveCopy, v69, v68, *MEMORY[0x277D81448], v70);
      if ((v14 & 1) != 0 && v58 >= phase)
      {
        v74 = objc_msgSend_objectAtIndex_(selfCopy->_whitespaceAfterDelimiters, v71, phase - 1, v72, v73);
        objc_msgSend_takeText_(recursiveCopy, v75, v74, v76, v77);
      }
    }

    v104 = objc_msgSend_objectAtIndex_(v40, v54, phase, v56, v57);
    v105 = 0;
    v78 = v104;
    stackCopy = v102;
    v23 = v103;
    objc_msgSend_push_(v102, v79, &v104, v80, v81);
  }

  if (v49 == phase)
  {
    if (self->_functionIndex)
    {
      v82 = objc_msgSend_functionEndNode(self, v45, v46, v47, v48);
      v83 = [TSTWPTokenAttachment alloc];
      v86 = objc_msgSend_initWithContext_expressionNode_(v83, v84, v23, v82, v85);
      objc_msgSend_insertUIGraphicalAttachment_withLanguage_(recursiveCopy, v87, v86, *MEMORY[0x277D81448], v88);
    }

    else
    {
      objc_msgSend_takeText_withLanguage_(recursiveCopy, v45, @""), *MEMORY[0x277D81448], v48);
    }

    if (v14)
    {
      v93 = objc_msgSend_whitespaceAfter(self, v89, v90, v91, v92);

      if (v93)
      {
        v98 = objc_msgSend_whitespaceAfter(self, v94, v95, v96, v97);
        objc_msgSend_takeText_(recursiveCopy, v99, v98, v100, v101);
      }
    }
  }
}

- (id)p_whitespaceBeforeParam:(unint64_t)param
{
  if (param)
  {
    if (objc_msgSend_count(self->_whitespaceAfterDelimiters, a2, param, v3, v4) >= param)
    {
      v10 = objc_msgSend_objectAtIndex_(self->_whitespaceAfterDelimiters, v7, param - 1, v8, v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = self->_whitespaceAfterLeftParen;
  }

  return v10;
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v232 = objc_msgSend_children(self, a2, array, *&cell, table);
  v10 = objc_msgSend_count(v232, v6, v7, v8, v9);
  selfCopy = self;
  if (objc_msgSend_isLambdaFunction(self, v11, v12, v13, v14))
  {
    if (v10)
    {
      v227 = objc_msgSend_lastObject(v232, v15, v16, v17, v18);
      v23 = objc_msgSend_whitespaceBefore(self, v19, v20, v21, v22);
      TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v23);

      v229 = objc_opt_new();
      TSCESymbolTable::beginScope(table);
      TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v237, 0);
      TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v236, 0);
      v27 = v10 - 1;
      if (v10 == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        do
        {
          v31 = objc_msgSend_objectAtIndex_(v232, v24, v30, v25, v26);
          v35 = objc_msgSend_p_whitespaceBeforeParam_(selfCopy, v32, v30, v33, v34);

          if (objc_msgSend_length(v35, v36, v37, v38, v39))
          {
            TSCEASTCompactWhitespace::setStringAtIndex(v237, v35, v30);
          }

          v44 = objc_msgSend_whitespaceBefore(v31, v40, v41, v42, v43);

          if (objc_msgSend_length(v44, v45, v46, v47, v48))
          {
            TSCEASTCompactWhitespace::setStringAtIndex(v237, v44, v30);
          }

          v28 = objc_msgSend_whitespaceAfter(v31, v49, v50, v51, v52);

          if (objc_msgSend_length(v28, v53, v54, v55, v56))
          {
            TSCEASTCompactWhitespace::setStringAtIndex(v236, v28, v30);
          }

          v65 = objc_msgSend_string(v31, v57, v58, v59, v60);
          if (v65)
          {
            v66 = objc_msgSend_symbol(v31, v61, v62, v63, v64);
            if (v66)
            {
              TSCESymbolTable::setSymbol(table, v66, &v65->isa);
            }

            else
            {
              TSCESymbolTable::createSymbol(table, &v65->isa);
            }

            if (!v29)
            {
              v29 = v66;
            }

            objc_msgSend_addObject_(v229, v67, v65, v68, v69);
          }

          else
          {
            v70 = MEMORY[0x277D81150];
            v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "[TSTFunctionNode buildASTNodeArray:hostCell:symbolTable:]", v63, v64);
            v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v73, v74);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v76, v71, v75, 1206, 0, "This likely messes up our TSCESymbol offsetting - I don't think its reachable though");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78, v79, v80);
            v65 = &stru_2834BADA0;
            objc_msgSend_addObject_(v229, v81, &stru_2834BADA0, v82, v83);
          }

          ++v30;
        }

        while (v27 != v30);
      }

      v158 = objc_msgSend_p_whitespaceBeforeParam_(selfCopy, v24, v27, v25, v26);

      if (objc_msgSend_length(v158, v159, v160, v161, v162))
      {
        objc_msgSend_setWhitespaceBefore_(v227, v163, v158, v164, v165);
      }

      __C();
    }

    goto LABEL_66;
  }

  if (!objc_msgSend_isLetFunction(self, v15, v16, v17, v18))
  {
    if (v10 == 1)
    {
      v156 = objc_msgSend_firstObject(v232, v84, v85, v86, v87);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (selfCopy->_functionIndex)
        {
          TSCEASTFunctionElement::appendFunctionElement(array, selfCopy->_functionIndex, 0, selfCopy->_whitespaceAfterFunctionName, v157);
        }

        else
        {
          TSCEASTUnknownFunctionElement::appendUnknownFunctionElement(array, selfCopy->_invalidFunctionName, 0);
        }

LABEL_65:

        goto LABEL_66;
      }
    }

    v166 = objc_msgSend_functionIndex(selfCopy, v84, v85, v86, v87);
    v170 = objc_msgSend_functionIndexUsesThunks_(TSCEFunctionSpec, v167, v166, v168, v169);
    if (v10)
    {
      v175 = v170;
      v176 = objc_msgSend_objectAtIndex_(v232, v171, 0, v173, v174);
      objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v176, v177, array, *&cell, table);

      TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, selfCopy->_whitespaceAfterLeftParen);
      if (v10 != 1)
      {
        for (i = 1; i != v10; ++i)
        {
          v180 = objc_msgSend_objectAtIndex_(v232, v171, i, v173, v174);
          if (v175)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              __C();
            }
          }

          objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v180, v179, array, *&cell, table);
          v184 = objc_msgSend_p_whitespaceBeforeParam_(selfCopy, v181, i, v182, v183);
          TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v184);
        }
      }
    }

    functionIndex = selfCopy->_functionIndex;
    if (selfCopy->_functionIndex)
    {
      v186 = objc_msgSend_count(v232, v171, v172, v173, v174);
      v190 = v186;
      if (HIDWORD(v186))
      {
        v205 = MEMORY[0x277D81150];
        v206 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v187, "[TSTFunctionNode buildASTNodeArray:hostCell:symbolTable:]", v188, v189);
        v210 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v207, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v208, v209);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v205, v211, v206, v210, 1340, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v212, v213, v214, v215);
        v190 = -1;
      }

      TSCEASTFunctionElement::appendFunctionElement(array, functionIndex, v190, selfCopy->_whitespaceAfterFunctionName, v189);
    }

    else
    {
      invalidFunctionName = selfCopy->_invalidFunctionName;
      v197 = objc_msgSend_count(v232, v171, v172, v173, v174);
      if (HIDWORD(v197))
      {
        v216 = MEMORY[0x277D81150];
        v217 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v196, "[TSTFunctionNode buildASTNodeArray:hostCell:symbolTable:]", v198, v199);
        v221 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v218, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v219, v220);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v216, v222, v217, v221, 1338, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v223, v224, v225, v226);
        v197 = 0xFFFFFFFFLL;
      }

      TSCEASTUnknownFunctionElement::appendUnknownFunctionElement(array, invalidFunctionName, v197);
    }

    v200 = objc_msgSend_whitespaceBefore(selfCopy, v191, v192, v193, v194);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v200);

    v156 = objc_msgSend_whitespaceAfter(selfCopy, v201, v202, v203, v204);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v156);
    goto LABEL_65;
  }

  if (v10 >= 3 && (v10 & 1) != 0)
  {
    v230 = v10;
    v228 = objc_msgSend_lastObject(v232, v84, v85, v86, v87);
    v91 = 0;
    v92 = 0;
    v93 = 0;
    do
    {
      v94 = objc_msgSend_objectAtIndex_(v232, v88, v91, v89, v90, v228);
      v98 = objc_msgSend_objectAtIndex_(v232, v95, v91 + 1, v96, v97);
      objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v98, v99, array, *&cell, table);
      v103 = objc_msgSend_p_whitespaceBeforeParam_(selfCopy, v100, v91 + 1, v101, v102);

      TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v103);
      v108 = objc_msgSend_string(v94, v104, v105, v106, v107);
      Symbol = objc_msgSend_symbol(v94, v109, v110, v111, v112);
      TSCESymbolTable::beginScope(table);
      if (v108)
      {
        if (Symbol)
        {
          TSCESymbolTable::setSymbol(table, Symbol, &v108->var0);
        }

        else
        {
          Symbol = TSCESymbolTable::createSymbol(table, &v108->var0);
        }
      }

      v118 = objc_msgSend_whitespaceBefore(v94, v114, v115, v116, v117);
      v93 = objc_msgSend_p_whitespaceBeforeParam_(selfCopy, v119, v91, v120, v121);

      if (objc_msgSend_length(v93, v122, v123, v124, v125))
      {
        if (v118)
        {
          v130 = objc_msgSend_stringByAppendingString_(v93, v126, v118, v128, v129);

          v118 = v130;
        }

        else
        {
          v118 = v93;
        }
      }

      v131 = objc_msgSend_whitespaceAfter(v94, v126, v127, v128, v129);
      TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v237, v118, v131, 0, 0);

      TSCEASTLetBindElement::appendLetNodeHeader(array, v108, v237, Symbol, v91 != 0);
      v236[0] = v237;
      sub_22107C2C0(v236);

      --v92;
      v132 = v91 + 3;
      v91 += 2;
    }

    while (v132 < v230);
    v133 = objc_msgSend_p_whitespaceBeforeParam_(selfCopy, v88, v230 - 1, v89, v90);

    if (objc_msgSend_length(v133, v134, v135, v136, v137))
    {
      objc_msgSend_setWhitespaceBefore_(v228, v138, v133, v139, v140);
    }

    objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v228, v138, array, *&cell, table);
    if (v92)
    {
      do
      {
        TSCEASTLetBindElement::appendEndScopeNode(array, v141, v142, v143, v144);
        TSCESymbolTable::endScope(table, v145, v146, v147, v148);
      }

      while (!__CFADD__(v92++, 1));
    }

    v150 = objc_msgSend_whitespaceBefore(selfCopy, v141, v142, v143, v144);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v150);

    v155 = objc_msgSend_whitespaceAfter(selfCopy, v151, v152, v153, v154);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v155);
  }

LABEL_66:
}

- (id)exportString
{
  if (self->_functionIndex)
  {
    v4 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, a2, self->_functionIndex, v2, v3);
    v9 = objc_msgSend_functionName(v4, v5, v6, v7, v8);

    v10 = v9;
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%@("), v12, v13, v9;
  }

  else
  {
    v10 = self->_invalidFunctionName;
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%@("), v15, v16, v10;
  }
  v17 = ;

  return v17;
}

- (id)formulaPlainText
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_string(self, a2, v2, v3, v4);
  v10 = objc_msgSend_stringWithFormat_(v5, v7, @"%@("), v8, v9, v6;

  return v10;
}

- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges deepSearch:(BOOL)search calcEngine:(id)engine allVisitedNodes:(id)self0
{
  searchCopy = search;
  rangesCopy = ranges;
  v128 = *MEMORY[0x277D85DE8];
  setCopy = set;
  helperCopy = helper;
  storageCopy = storage;
  engineCopy = engine;
  nodesCopy = nodes;
  selfCopy = self;
  v22 = selfCopy;
  if (storageCopy)
  {
    Index = objc_msgSend_firstIndex(selfCopy, v19, selfCopy, v20, v21);
    v22 = selfCopy;
    if (Index != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_opt_class();
      v28 = objc_msgSend_firstIndex(selfCopy, v24, v25, v26, v27);
      v32 = objc_msgSend_attachmentAtCharIndex_(storageCopy, v29, v28, v30, v31);
      v33 = TSUDynamicCast();

      v38 = selfCopy;
      if (v33)
      {
        v39 = objc_msgSend_expressionNode(v33, v34, v35, v36, v37);
        v40 = objc_opt_class();
        isMemberOfClass = objc_msgSend_isMemberOfClass_(v39, v41, v40, v42, v43);

        v38 = selfCopy;
        if (isMemberOfClass)
        {
          v38 = objc_msgSend_expressionNode(v33, v45, v46, v47, v48);
        }
      }

      v22 = v38;
    }
  }

  v119 = v22;
  if ((objc_msgSend_containsObject_(nodesCopy, v19, v22, v20, v21) & 1) == 0)
  {
    objc_msgSend_addObject_(nodesCopy, v49, v119, v50, v51);
    functionIndex = selfCopy->_functionIndex;
    if (selfCopy->_functionIndex)
    {
      v56 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v52, functionIndex, v53, v54);
      v61 = objc_msgSend_children(selfCopy, v57, v58, v59, v60);
      v121 = objc_msgSend_count(v61, v62, v63, v64, v65);

      v70 = selfCopy->_functionIndex;
      if (v70 == 130)
      {
        if (v121 != 2)
        {
          v120 = 0;
LABEL_36:
          if (objc_msgSend_numArguments(v56, v66, v67, v68, v69) && searchCopy && v121)
          {
            v96 = 0;
            while (1)
            {
              v97 = objc_msgSend_children(selfCopy, v92, v93, v94, v95);
              v101 = objc_msgSend_objectAtIndex_(v97, v98, v96, v99, v100);

              if (objc_msgSend_maxArguments(v56, v102, v103, v104, v105) != -1 && v96 >= objc_msgSend_maxArguments(v56, v106, v107, v108, v109))
              {
                break;
              }

              v110 = objc_msgSend_argumentSpecForIndex_numArgs_(v56, v106, v96, v121, v109);
              v114 = v110;
              if (!v110)
              {
                goto LABEL_45;
              }

              v115 = objc_msgSend_rangeContext(v110, v106, v111, v112, v113);
LABEL_46:
              if ((v120 & (v96 == 0)) != 0)
              {
                objc_msgSend_addTSTCanvasReferencesToSet_inRangeContext_withColorHelper_preferringNodesFromStorage_showingSpillRanges_deepSearch_calcEngine_allVisitedNodes_(v101, v106, setCopy, 0, helperCopy, storageCopy, rangesCopy, 1, engineCopy, nodesCopy);
              }

              else
              {
                objc_msgSend_addTSTCanvasReferencesToSet_inRangeContext_withColorHelper_preferringNodesFromStorage_showingSpillRanges_deepSearch_calcEngine_allVisitedNodes_(v101, v106, setCopy, v115, helperCopy, storageCopy, rangesCopy, 1, engineCopy, nodesCopy);
              }

              if (v121 == ++v96)
              {
                goto LABEL_50;
              }
            }

            v114 = 0;
LABEL_45:
            v115 = 0;
            goto LABEL_46;
          }

          goto LABEL_50;
        }
      }

      else
      {
        v120 = 0;
        if (v70 != 23 || v121 != 2)
        {
          goto LABEL_35;
        }
      }

      v76 = objc_msgSend_children(selfCopy, v66, v67, v68, v69);
      v80 = objc_msgSend_objectAtIndex_(v76, v77, 1, v78, v79);

      v81 = v80;
      if (v80)
      {
        objc_opt_class();
        v82 = TSUDynamicCast();
        if (v82)
        {
          v87 = v82;
          v120 = objc_msgSend_mode(v82, v83, v84, v85, v86) == 1;
        }

        else
        {
          v87 = 0;
          objc_opt_class();
          v117 = TSUDynamicCast();
          objc_opt_class();
          v116 = TSUDynamicCast();
          if (v117)
          {
            objc_msgSend_number(v117, v88, v89, v90, v91);
            TSUDecimal::operator=();
            v120 = TSUDecimal::operator==();
          }

          else if (v116)
          {
            v120 = objc_msgSend_value(v116, v88, v89, v90, v91);
          }

          else
          {
            v120 = 0;
          }
        }
      }

      else
      {
        v120 = 0;
      }

      v70 = selfCopy->_functionIndex;
LABEL_35:
      if (v70 != 337)
      {
        goto LABEL_36;
      }

LABEL_50:

      goto LABEL_51;
    }

    if (searchCopy)
    {
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v56 = objc_msgSend_children(selfCopy, v52, functionIndex, v53, v54);
      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v71, &v123, v127, 16);
      if (v73)
      {
        v74 = *v124;
        do
        {
          for (i = 0; i != v73; ++i)
          {
            if (*v124 != v74)
            {
              objc_enumerationMutation(v56);
            }

            objc_msgSend_addTSTCanvasReferencesToSet_inRangeContext_withColorHelper_preferringNodesFromStorage_showingSpillRanges_deepSearch_calcEngine_allVisitedNodes_(*(*(&v123 + 1) + 8 * i), v72, setCopy, 0, helperCopy, storageCopy, rangesCopy, 1, engineCopy, nodesCopy);
          }

          v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v72, &v123, v127, 16);
        }

        while (v73);
      }

      goto LABEL_50;
    }
  }

LABEL_51:
}

- (unint64_t)allowsNewIdentifier
{
  if (objc_msgSend_isLetFunction(self, a2, v2, v3, v4))
  {
    return 1;
  }

  else
  {
    return objc_msgSend_isLambdaFunction(self, v6, v7, v8, v9);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[218], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212949DC, off_2812E4498[218], v5);

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

  v15.receiver = self;
  v15.super_class = TSTFunctionNode;
  [(TSTExpressionNode *)&v15 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v11 = *(archive + 10);
  self->_functionIndex = v11;
  if (!v11)
  {
    v12 = *(archive + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      v12 = *v12;
    }

    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v12, v9, v10);
    invalidFunctionName = self->_invalidFunctionName;
    self->_invalidFunctionName = v13;
  }
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

  v16.receiver = self;
  v16.super_class = TSTFunctionNode;
  [(TSTExpressionNode *)&v16 saveToArchive:v7 archiver:archiverCopy];
  functionIndex = self->_functionIndex;
  *(archive + 4) |= 4u;
  *(archive + 10) = functionIndex;
  invalidFunctionName = self->_invalidFunctionName;
  if (invalidFunctionName)
  {
    v15 = objc_msgSend_UTF8String(invalidFunctionName, v9, v10, v11, v12);
    sub_22129452C(archive, v15);
  }
}

- (id)p_functionSpec
{
  if (objc_msgSend_functionIndex(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_functionIndex(self, v6, v7, v8, v9);
    v14 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v11, v10, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)p_resetArgumentSpecForChildren
{
  v62 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_functionIndex(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_functionIndex(self, v6, v7, v8, v9);
    v14 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v11, v10, v12, v13);
    v19 = objc_msgSend_children(self, v15, v16, v17, v18);
    v24 = objc_msgSend_count(v19, v20, v21, v22, v23);

    if (objc_msgSend_numArguments(v14, v25, v26, v27, v28))
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v33 = objc_msgSend_children(self, v29, v30, v31, v32, 0);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v57, v61, 16);
      if (v39)
      {
        v40 = 0;
        v41 = *v58;
        do
        {
          v42 = 0;
          do
          {
            if (*v58 != v41)
            {
              objc_enumerationMutation(v33);
            }

            v43 = *(*(&v57 + 1) + 8 * v42);
            v44 = objc_msgSend_maxArguments(v14, v35, v36, v37, v38);
            if (v44 == -1 || v40 < v44)
            {
              v49 = objc_msgSend_functionIndex(v14, v45, v46, v47, v48);
              if ((v24 & 1) == 0 && v49 == 363)
              {
                ++v24;
              }

              v53 = objc_msgSend_argumentSpecForIndex_numArgs_(v14, v50, v40, v24, v51);
              objc_msgSend_setArgumentSpec_(v43, v54, v53, v55, v56);

              ++v40;
            }

            else
            {
              objc_msgSend_setArgumentSpec_(v43, v45, 0, v47, v48);
            }

            ++v42;
          }

          while (v39 != v42);
          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v57, v61, 16);
        }

        while (v39);
      }
    }
  }
}

@end