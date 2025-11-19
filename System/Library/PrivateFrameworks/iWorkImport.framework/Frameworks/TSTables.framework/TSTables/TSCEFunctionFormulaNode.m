@interface TSCEFunctionFormulaNode
- (TSCEFunctionFormulaNode)initWithFunctionIndex:(unsigned __int16)a3 children:(id)a4;
- (TSCEFunctionFormulaNode)initWithFunctionIndex:(unsigned __int16)a3 numArgs:(unsigned int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6;
@end

@implementation TSCEFunctionFormulaNode

- (TSCEFunctionFormulaNode)initWithFunctionIndex:(unsigned __int16)a3 numArgs:(unsigned int)a4
{
  v11.receiver = self;
  v11.super_class = TSCEFunctionFormulaNode;
  v6 = [(TSCEFormulaNode *)&v11 initWithNodeType:14];
  v7 = v6;
  if (v6)
  {
    *(&v6->super._nodeType + 1) = a3;
    v8 = objc_opt_new();
    children = v7->super._children;
    v7->super._children = v8;

    *(&v7->super._nodeType + 1) = a4;
  }

  return v7;
}

- (TSCEFunctionFormulaNode)initWithFunctionIndex:(unsigned __int16)a3 children:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = TSCEFunctionFormulaNode;
  v7 = [(TSCEFormulaNode *)&v20 initWithNodeType:14];
  v12 = v7;
  if (v7)
  {
    *(&v7->super._nodeType + 1) = a3;
    if (v6)
    {
      v13 = objc_msgSend_mutableCopy(v6, v8, v9, v10, v11);
    }

    else
    {
      v13 = objc_opt_new();
    }

    children = v12->super._children;
    v12->super._children = v13;

    *(&v12->super._nodeType + 1) = objc_msgSend_count(v12->super._children, v15, v16, v17, v18);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = TSCEFunctionFormulaNode;
  v4 = [(TSCEFunctionFormulaNode *)&v12 copy];
  v4[21] = *(&self->super._nodeType + 1);
  *(v4 + 11) = *(&self->super._nodeType + 1);
  v9 = objc_msgSend_copy(*&self->_functionIndex, v5, v6, v7, v8);
  v10 = *(v4 + 6);
  *(v4 + 6) = v9;

  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)a3 hostCellRef:(const TSCECellRef *)a4 symbolTable:(void *)a5 calcEngine:(id)a6
{
  v187 = a6;
  v185 = self;
  v12 = objc_msgSend_children(self, v8, v9, v10, v11);
  v188 = v12;
  v17 = objc_msgSend_count(v12, v13, v14, v15, v16);
  v21 = v17;
  v22 = *(&self->super._nodeType + 1);
  if (v22 == 363)
  {
    if (v17 >= 3)
    {
      v183 = objc_msgSend_lastObject(v12, v18, v22, v19, v20);
      v63 = 0;
      v64 = 0;
      do
      {
        v65 = v12;
        v66 = objc_msgSend_objectAtIndexedSubscript_(v12, v60, v63, v61, v62);
        v70 = objc_msgSend_objectAtIndexedSubscript_(v65, v67, v63 + 1, v68, v69);
        if (objc_msgSend_isIdentifierNode(v66, v71, v72, v73, v74))
        {
          v79 = v66;
          isIdentifierNode = objc_msgSend_isIdentifierNode(v79, v80, v81, v82, v83);
        }

        else
        {
          v79 = 0;
          isIdentifierNode = objc_msgSend_isIdentifierNode(0, v75, v76, v77, v78);
        }

        if ((isIdentifierNode & 1) == 0)
        {
          v89 = MEMORY[0x277D81150];
          v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "[TSCEFunctionFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v87, v88);
          v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v92, v93);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v95, v90, v94, 775, 0, "Must be identifier at this spot");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v96, v97, v98, v99);
        }

        if (objc_msgSend_isIdentifierNode(v79, v85, v86, v87, v88))
        {
          objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v70, v100, a3, a4, a5, v187);
          v105 = objc_msgSend_fullIdentifier(v79, v101, v102, v103, v104);
          TSCESymbolTable::beginScope(a5);
          ++v64;
          if (v105)
          {
            Symbol = TSCESymbolTable::createSymbol(a5, &v105->var0);
          }

          else
          {
            Symbol = 0;
          }
        }

        else
        {
          Symbol = 0;
          v105 = 0;
        }

        TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v190, 0);
        TSCEASTLetBindElement::appendLetNodeHeader(a3, v105, v190, Symbol, v63 != 0);
        v191 = v190;
        sub_22107C2C0(&v191);

        v107 = v63 + 3;
        v63 += 2;
        v12 = v188;
      }

      while (v107 < v21);
      objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v183, v60, a3, a4, a5, v187);
      for (; v64; --v64)
      {
        TSCEASTLetBindElement::appendEndScopeNode(a3, v108, v109, v110, v111);
        TSCESymbolTable::endScope(a5, v112, v113, v114, v115);
      }
    }

    goto LABEL_52;
  }

  if (v22 == 364)
  {
    if (v17)
    {
      objc_msgSend_lastObject(v12, v18, v22, v19, v20);
      objc_claimAutoreleasedReturnValue();
      v23 = objc_opt_new();
      TSCESymbolTable::beginScope(a5);
      v27 = v21 - 1;
      if (v21 != 1)
      {
        v184 = 0;
        v28 = 0;
        do
        {
          v29 = objc_msgSend_objectAtIndex_(v188, v24, v28, v25, v26);
          if ((objc_msgSend_isEmptyNode(v29, v30, v31, v32, v33) & 1) == 0 && objc_msgSend_isIdentifierNode(v29, v34, v35, v36, v37) && (v38 = v29, objc_msgSend_fullIdentifier(v38, v39, v40, v41, v42), v43 = objc_claimAutoreleasedReturnValue(), v38, v43))
          {
            v44 = TSCESymbolTable::createSymbol(a5, &v43->isa);
            if (v184)
            {
              v48 = v184;
            }

            else
            {
              v48 = v44;
            }

            v184 = v48;
          }

          else
          {
            v49 = MEMORY[0x277D81150];
            v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSCEFunctionFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v36, v37);
            v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v52, v53);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v55, v50, v54, 741, 0, "This likely messes up our TSCESymbol offsetting - I don't think its reachable though");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
            v43 = &stru_2834BADA0;
          }

          objc_msgSend_addObject_(v23, v45, v43, v46, v47);

          ++v28;
        }

        while (v27 != v28);
      }

      __C();
    }

LABEL_52:
    v156 = objc_msgSend_whitespaceBefore(v185, v18, v22, v19, v20);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v156);

    v116 = objc_msgSend_whitespaceAfter(v185, v157, v158, v159, v160);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v116);
    goto LABEL_53;
  }

  if (v17 != 1)
  {
LABEL_37:
    v124 = objc_msgSend_functionIndexUsesThunks_(TSCEFunctionSpec, v18, v22, v19, v20);
    if (v21)
    {
      v129 = v124;
      v130 = objc_msgSend_objectAtIndex_(v12, v125, 0, v127, v128);
      objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v130, v131, a3, a4, a5, v187);

      if (v21 != 1)
      {
        for (i = 1; i != v21; ++i)
        {
          v133 = objc_msgSend_objectAtIndex_(v12, v125, i, v127, v128);
          v138 = v133;
          if (v129 && objc_msgSend_nodeType(v133, v134, v135, v136, v137) != 7)
          {
            __C();
          }

          objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v138, v134, a3, a4, a5, v187);
        }
      }
    }

    v139 = v185[21];
    if (v185[21])
    {
      v140 = objc_msgSend_count(v12, v125, v126, v127, v128);
      v144 = v140;
      if (HIDWORD(v140))
      {
        v172 = MEMORY[0x277D81150];
        v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v141, "[TSCEFunctionFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v142, v143);
        v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v175, v176);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v172, v178, v173, v177, 850, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v179, v180, v181, v182);
        v144 = -1;
      }

      TSCEASTFunctionElement::appendFunctionElement(a3, v139, v144, 0, v143);
    }

    else
    {
      v145 = MEMORY[0x277D81150];
      v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v125, "[TSCEFunctionFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v127, v128);
      v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v148, v149);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v145, v151, v146, v150, 847, 0, "Should be using TSCEUnknownFunctionFormulaNode instead");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v152, v153, v154, v155);
    }

    goto LABEL_52;
  }

  v116 = objc_msgSend_firstObject(v12, v18, v22, v19, v20);
  if (objc_msgSend_nodeType(v116, v117, v118, v119, v120) != 6)
  {

    v22 = v185[21];
    goto LABEL_37;
  }

  v123 = v185[21];
  if (v185[21])
  {
    TSCEASTFunctionElement::appendFunctionElement(a3, v123, 0, 0, v122);
  }

  else
  {
    v161 = MEMORY[0x277D81150];
    v162 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, "[TSCEFunctionFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v121, v122);
    v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v163, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v164, v165);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v161, v167, v162, v166, 813, 0, "Should be using TSCEUnknownFunctionFormulaNode instead");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v168, v169, v170, v171);
  }

LABEL_53:
}

@end