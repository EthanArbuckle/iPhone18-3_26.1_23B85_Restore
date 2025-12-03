@interface TSCEFormulaNodeTree
- (TSCEFormulaNodeTree)initWithFormula:(id)formula options:(unsigned int)options partialResults:(id)results calcEngine:(id)engine hostCellRef:(const TSCECellRef *)ref;
- (TSCEFormulaNodeTree)initWithRootNode:(id)node calcEngine:(id)engine hostCellRef:(const TSCECellRef *)ref;
- (TSKUIDStruct)hostColumnUID;
- (TSKUIDStruct)hostRowUID;
- (TSKUIDStruct)hostTableUID;
- (id).cxx_construct;
- (id)convertToFormula:(id *)formula;
- (id)variableUsageError;
- (void)resolveIdentifiers;
@end

@implementation TSCEFormulaNodeTree

- (TSCEFormulaNodeTree)initWithRootNode:(id)node calcEngine:(id)engine hostCellRef:(const TSCECellRef *)ref
{
  nodeCopy = node;
  engineCopy = engine;
  v15.receiver = self;
  v15.super_class = TSCEFormulaNodeTree;
  v11 = [(TSCEFormulaNodeTree *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_calcEngine, engine);
    v13 = *&ref->coordinate.row;
    v12->_hostCellRef._tableUID._upper = ref->_tableUID._upper;
    *&v12->_hostCellRef.coordinate.row = v13;
    v12->_translationFlags._flags = 0;
    objc_storeStrong(&v12->_root, node);
    v12->_hostRowUID = 0u;
    v12->_hostColumnUID = 0u;
    v12->_hostTableUID = 0u;
  }

  return v12;
}

- (TSCEFormulaNodeTree)initWithFormula:(id)formula options:(unsigned int)options partialResults:(id)results calcEngine:(id)engine hostCellRef:(const TSCECellRef *)ref
{
  v10 = *&options;
  formulaCopy = formula;
  resultsCopy = results;
  engineCopy = engine;
  v27.receiver = self;
  v27.super_class = TSCEFormulaNodeTree;
  v15 = [(TSCEFormulaNodeTree *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_calcEngine, engine);
    v21 = *&ref->coordinate.row;
    v16->_hostCellRef._tableUID._upper = ref->_tableUID._upper;
    *&v16->_hostCellRef.coordinate.row = v21;
    v16->_translationFlags._flags = 0;
    if (formulaCopy)
    {
      v16->_translationFlags._flags = objc_msgSend_translationFlags(formulaCopy, v17, v18, v19, v20);
      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v26, engineCopy, ref);
      v23 = TSCEFormulaNodeTreeCreator::formulaNodeTreeFromFormula(formulaCopy, v10, resultsCopy, &v26, v22);
      root = v16->_root;
      v16->_root = v23;
    }

    v16->_hostRowUID = 0u;
    v16->_hostColumnUID = 0u;
    v16->_hostTableUID = 0u;
  }

  return v16;
}

- (void)resolveIdentifiers
{
  selfCopy = self;
  v6 = objc_msgSend_documentLocale(self->_calcEngine, a2, v2, v3, v4);
  TSCESymbolTable::TSCESymbolTable(&v193, v6);

  p_undoSymbolTableMaps = 0;
  v191 = 0;
  v192 = 0;
  v7 = selfCopy->_root;
  v188 = 0;
  v189 = 0;
  v187 = v7;
  sub_221458860(&p_undoSymbolTableMaps, &v187);

  v8 = [TSCEEndScopeFormulaNode alloc];
  inited = objc_msgSend_initAsEndScope(v8, v9, v10, v11, v12);
  v13 = v191;
  if (p_undoSymbolTableMaps != v191)
  {
    v183 = selfCopy;
    do
    {
      v14 = *(v13 - 3);
      v15 = *(v13 - 2);
      v16 = *(v13 - 1);
      sub_221459050(&p_undoSymbolTableMaps, (v191 - 3));
      v17 = v14;
      v22 = objc_msgSend_nodeType(v17, v18, v19, v20, v21);
      v27 = 0;
      if (v22 > 23)
      {
        if (v22 == 24)
        {
          v39 = v17;
          v96 = objc_msgSend_identifier(v39, v92, v93, v94, v95);
          v97 = TSCESymbolTable::lookup(&v193, v96, 0);

          objc_msgSend_setSymbol_(v39, v98, v97, v99, v100);
LABEL_21:
          v27 = 0;
LABEL_39:

          goto LABEL_40;
        }

        if (v22 != 25)
        {
          if (v22 != 26)
          {
            goto LABEL_40;
          }

LABEL_11:
          v28 = MEMORY[0x277D81150];
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSCEFormulaNodeTree resolveIdentifiers]", v25, v26);
          v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTree.mm", v31, v32);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 231, 0, "Consider handling these, so we don't REQUIRE formula to be in the vague setup using FunctionNode for Let/Lambda?");

          v27 = 0;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
          goto LABEL_40;
        }

        v27 = 0;
        TSCESymbolTable::endScope(&v193, v23, v24, v25, v26);
      }

      else
      {
        v186 = v15;
        switch(v22)
        {
          case 14:
            v39 = v17;
            v44 = objc_msgSend_functionIndex(v39, v40, v41, v42, v43);
            if (v44 == 363)
            {
              TSCESymbolTable::beginScope(&v193);
              v115 = objc_msgSend_children(v39, v111, v112, v113, v114);
              v120 = objc_msgSend_count(v115, v116, v117, v118, v119);
              v125 = v120;
              v126 = v120 - 2;
              if (v120 >= 2)
              {
                v182 = v120 - 2;
                v185 = v115;
                v127 = 1;
                v128 = 1;
                v129 = 1;
                do
                {
                  v130 = v127;
                  v131 = objc_msgSend_objectAtIndexedSubscript_(v185, v121, v129 - 1, v123, v124);
                  TSCESymbolTable::beginScope(&v193);
                  if (objc_msgSend_isIdentifierNode(v131, v132, v133, v134, v135))
                  {
                    v136 = v131;
                    v141 = objc_msgSend_fullIdentifier(v136, v137, v138, v139, v140);
                    v142 = TSCESymbolTable::createSymbol(&v193, v141);

                    objc_msgSend_setSymbol_(v136, v143, v142, v144, v145);
                  }

                  v129 += 2;
                  --v128;
                  v127 = v130 + 1;
                }

                while (v129 < v125);
                v146 = v128 == 1;
                v115 = v185;
                v126 = v182;
                if (!v146)
                {
                  do
                  {
                    v147 = inited;
                    v148 = v39;
                    v187 = v147;
                    v188 = v148;
                    v189 = 0;
                    sub_221458860(&p_undoSymbolTableMaps, &v187);

                    --v130;
                  }

                  while (v130);
                }
              }

              v149 = objc_msgSend_children(v39, v121, v122, v123, v124);
              v154 = objc_msgSend_lastObject(v149, v150, v151, v152, v153);
              v91 = v39;
              v187 = v154;
              v188 = v91;
              v189 = v125 - 1;
              sub_221458860(&p_undoSymbolTableMaps, &v187);
              selfCopy = v183;

              v15 = v186;
              if (v126 >= 1)
              {
                do
                {
                  v125 -= 2;
                  v158 = objc_msgSend_objectAtIndexedSubscript_(v115, v155, v125, v156, v157);
                  v159 = v91;
                  v187 = v158;
                  v188 = v159;
                  v189 = v125;
                  sub_221458860(&p_undoSymbolTableMaps, &v187);
                }

                while (v125 > 2);
              }

              v27 = 0;
              goto LABEL_44;
            }

            if (v44 == 364)
            {
              TSCESymbolTable::beginScope(&v193);
              v49 = objc_msgSend_children(v39, v45, v46, v47, v48);
              v54 = objc_msgSend_count(v49, v50, v51, v52, v53) - 1;

              if (v54)
              {
                for (i = 0; i != v54; ++i)
                {
                  v60 = objc_msgSend_children(v39, v55, v56, v57, v58);
                  v64 = objc_msgSend_objectAtIndexedSubscript_(v60, v61, i, v62, v63);

                  if (objc_msgSend_isIdentifierNode(v64, v65, v66, v67, v68))
                  {
                    v69 = v64;
                    v74 = objc_msgSend_fullIdentifier(v69, v70, v71, v72, v73);
                    v75 = TSCESymbolTable::createSymbol(&v193, v74);

                    objc_msgSend_setSymbol_(v69, v76, v75, v77, v78);
                  }
                }
              }

              v79 = inited;
              v80 = v39;
              v187 = v79;
              v188 = v80;
              v189 = 0;
              sub_221458860(&p_undoSymbolTableMaps, &v187);

              v85 = objc_msgSend_children(v80, v81, v82, v83, v84);
              v90 = objc_msgSend_lastObject(v85, v86, v87, v88, v89);
              v91 = v80;
              v187 = v90;
              v188 = v91;
              v189 = v54;
              sub_221458860(&p_undoSymbolTableMaps, &v187);

              v27 = 0;
              v15 = v186;
              selfCopy = v183;
              goto LABEL_44;
            }

            goto LABEL_21;
          case 21:
            v101 = v17;
            v27 = objc_msgSend_resolveIdentifier_hostTable_baseHostCell_symbolTable_(v101, v102, selfCopy->_calcEngine, 0, *&selfCopy->_hostCellRef.coordinate, &v193);

            if (v27 && v27 != v101)
            {
              v103 = v15;
              v39 = v103;
              if (v103)
              {
                root = objc_msgSend_children(v103, v104, v105, v106, v107);
                objc_msgSend_setObject_atIndexedSubscript_(root, v109, v27, v16, v110);
              }

              else
              {
                v160 = v27;
                root = selfCopy->_root;
                selfCopy->_root = v160;
              }

              goto LABEL_39;
            }

            break;
          case 23:
            goto LABEL_11;
        }
      }

LABEL_40:
      v161 = objc_msgSend_children(v17, v23, v24, v25, v26);
      v166 = objc_msgSend_count(v161, v162, v163, v164, v165);

      if (v166)
      {
        v91 = objc_msgSend_children(v17, v167, v168, v169, v170);
        v175 = objc_msgSend_count(v91, v171, v172, v173, v174);
        if (v175)
        {
          v179 = v175 - 1;
          do
          {
            v180 = objc_msgSend_objectAtIndexedSubscript_(v91, v176, v179, v177, v178);
            v181 = v17;
            v187 = v180;
            v188 = v181;
            v189 = v179;
            sub_221458860(&p_undoSymbolTableMaps, &v187);

            --v179;
          }

          while (v179 != -1);
        }

LABEL_44:
      }

      v13 = v191;
    }

    while (p_undoSymbolTableMaps != v191);
  }

  v187 = &p_undoSymbolTableMaps;
  sub_221458FFC(&v187);
  p_undoSymbolTableMaps = &v193._undoSymbolTableMaps;
  sub_2210C8268(&p_undoSymbolTableMaps);
  sub_221087B80(&v193._identifierMap);
  sub_2210C82EC(&v193._symbolTableMap);
}

- (id)variableUsageError
{
  v6 = objc_msgSend_documentLocale(self->_calcEngine, a2, v2, v3, v4);
  TSCESymbolTable::TSCESymbolTable(&v115, v6);

  p_undoSymbolTableMaps = 0;
  v113 = 0;
  v114 = 0;
  v7 = self->_root;
  v110 = 0;
  v111 = 0;
  v109 = v7;
  sub_221458860(&p_undoSymbolTableMaps, &v109);

  while (1)
  {
    v8 = v113;
    if (p_undoSymbolTableMaps == v113)
    {
      v98 = 0;
      goto LABEL_43;
    }

    v9 = *(v113 - 3);
    v10 = *(v8 - 2);
    sub_221459050(&p_undoSymbolTableMaps, (v113 - 3));
    v11 = v9;
    v16 = objc_msgSend_nodeType(v11, v12, v13, v14, v15);
    if (v16 <= 24)
    {
      break;
    }

    if (v16 != 25)
    {
      if (v16 != 26)
      {
        goto LABEL_25;
      }

LABEL_9:
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSCEFormulaNodeTree variableUsageError]", v19, v20);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTree.mm", v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 368, 0, "Consider handling these, so we don't REQUIRE formula to be in the vague setup using FunctionNode for Let/Lambda?");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
      goto LABEL_25;
    }

    TSCESymbolTable::endScope(&v115, v17, v18, v19, v20);
LABEL_25:
    v76 = objc_msgSend_children(v11, v17, v18, v19, v20);
    v81 = objc_msgSend_count(v76, v77, v78, v79, v80);

    if (v81)
    {
      v86 = objc_msgSend_children(v11, v82, v83, v84, v85);
      v91 = objc_msgSend_count(v86, v87, v88, v89, v90);
      if (v91)
      {
        v95 = v91 - 1;
        do
        {
          v96 = objc_msgSend_objectAtIndexedSubscript_(v86, v92, v95, v93, v94);
          v97 = v11;
          v109 = v96;
          v110 = v97;
          v111 = v95;
          sub_221458860(&p_undoSymbolTableMaps, &v109);

          --v95;
        }

        while (v95 != -1);
      }
    }
  }

  if (v16 != 14)
  {
    if (v16 == 23)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  v32 = v11;
  v41 = objc_msgSend_functionIndex(v32, v33, v34, v35, v36);
  if ((v41 - 363) > 1u)
  {
LABEL_23:

    goto LABEL_25;
  }

  v108 = objc_msgSend_children(v32, v37, v38, v39, v40);
  v46 = objc_msgSend_count(v108, v42, v43, v44, v45);
  if (v46 < 2)
  {
LABEL_22:

    goto LABEL_23;
  }

  TSCESymbolTable::beginScope(&v115);
  v50 = 0;
  if (v41 == 363)
  {
    v51 = 2;
  }

  else
  {
    v51 = 1;
  }

  v52 = v46 - 1;
  while (1)
  {
    v53 = objc_msgSend_objectAtIndexedSubscript_(v108, v47, v50, v48, v49);
    if (!objc_msgSend_isIdentifierNode(v53, v54, v55, v56, v57))
    {
      break;
    }

    v62 = v53;
    v67 = objc_msgSend_fullIdentifier(v62, v63, v64, v65, v66);
    if ((TSCESymbolTable::isAcceptableIdentifier(v67, v68) & 1) == 0)
    {
      v106 = objc_msgSend_unacceptableIdentifierError_(TSCEError, v69, v67, v70, v71);
LABEL_41:
      v98 = v106;

      goto LABEL_42;
    }

    if (v41 == 364 && TSCESymbolTable::lookup(&v115, &v67->_locale, 1))
    {
      v106 = objc_msgSend_repeatedIdentifierError_(TSCEError, v72, v67, v73, v74);
      goto LABEL_41;
    }

    TSCESymbolTable::createSymbol(&v115, &v67->_locale);

    v50 += v51;
    if (v50 >= v52)
    {
      TSCESymbolTable::endScope(&v115, v47, v75, v48, v49);
      goto LABEL_22;
    }
  }

  isEmptyNode = objc_msgSend_isEmptyNode(v53, v58, v59, v60, v61);
  if (v41 == 364)
  {
    v103 = isEmptyNode;
  }

  else
  {
    v103 = 0;
  }

  if (v103 == 1)
  {
    objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v100, 364, v101, v102);
  }

  else
  {
    objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v100, v41, v101, v102);
  }
  v62 = ;
  v98 = objc_msgSend_requiresIdentifierError_argIndex_(TSCEError, v104, v62, (v50 + 1), v105);
LABEL_42:

LABEL_43:
  v109 = &p_undoSymbolTableMaps;
  sub_221458FFC(&v109);
  p_undoSymbolTableMaps = &v115._undoSymbolTableMaps;
  sub_2210C8268(&p_undoSymbolTableMaps);
  sub_221087B80(&v115._identifierMap);
  sub_2210C82EC(&v115._symbolTableMap);

  return v98;
}

- (id)convertToFormula:(id *)formula
{
  objc_msgSend_resolveIdentifiers(self, a2, formula, v3, v4);
  v11 = objc_msgSend_variableUsageError(self, v7, v8, v9, v10);
  v12 = v11;
  if (!v11)
  {
    __C();
  }

  if (formula)
  {
    v13 = v11;
    *formula = v12;
  }

  return 0;
}

- (TSKUIDStruct)hostTableUID
{
  upper = self->_hostTableUID._upper;
  lower = self->_hostTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)hostColumnUID
{
  upper = self->_hostColumnUID._upper;
  lower = self->_hostColumnUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)hostRowUID
{
  upper = self->_hostRowUID._upper;
  lower = self->_hostRowUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0x7FFF7FFFFFFFLL;
  return self;
}

@end