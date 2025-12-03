@interface TSTExpressionNode
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToExpressionNode:(id)node;
- (BOOL)isOptional;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTExpressionNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTExpressionNode)parentNode;
- (TSTWPTokenAttachment)tokenAttachment;
- (_NSRange)range;
- (_NSRange)rangeEncompassingExpressionNodesInRange:(_NSRange)range;
- (_NSRange)rangeEncompassingExpressionNodesInRange:(_NSRange)range outStartingNode:(id *)node;
- (id)convertEmptyArgumentsToPlaceholders;
- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map;
- (id)copyIntoContext:(id)context bakeModes:(BOOL)modes children:(id)children;
- (id)deepCopyIntoContext:(id)context bakeModes:(BOOL)modes withTokenDict:(id)dict;
- (id)description;
- (id)exportString;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)mostSpecificNodeContainingIndex:(unint64_t)index correspondingIndex:(unint64_t)correspondingIndex;
- (id)transformToUseScopedVariables:(void *)variables;
- (id)variableUsageErrorWithSymbolTable:(void *)table;
- (int64_t)compareFirstLastIndices:(id)indices;
- (unint64_t)firstIndexOfSubtree;
- (unint64_t)indexInParent;
- (unint64_t)lastIndexOfSubtree;
- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges deepSearch:(BOOL)search calcEngine:(id)engine allVisitedNodes:(id)self0;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)clearAllChildren;
- (void)clearAndCollectAllChildren:(id)children;
- (void)enumerateExpressionNodesUsingBlock:(id)block;
- (void)fixStorageLanguage:(id)language;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack;
- (void)insertFormulaTextNonRecursive:(id)recursive printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)resetParentNodes;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setArgumentSpec:(id)spec;
- (void)setChildren:(id)children;
@end

@implementation TSTExpressionNode

- (TSTExpressionNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  childrenCopy = children;
  v24.receiver = self;
  v24.super_class = TSTExpressionNode;
  v16 = [(TSTExpressionNode *)&v24 initWithContext:contextCopy];
  if (v16)
  {
    v17 = objc_msgSend_copy(childrenCopy, v12, v13, v14, v15);
    children = v16->_children;
    v16->_children = v17;

    v16->_firstIndex = index;
    v16->_lastIndex = lastIndex;
    objc_msgSend_resetParentNodes(v16, v19, v20, v21, v22);
  }

  return v16;
}

- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children
{
  ofCopy = of;
  contextCopy = context;
  childrenCopy = children;
  v23.receiver = self;
  v23.super_class = TSTExpressionNode;
  v15 = [(TSTExpressionNode *)&v23 initWithContext:contextCopy];
  if (v15)
  {
    v16 = objc_msgSend_copy(childrenCopy, v11, v12, v13, v14);
    children = v15->_children;
    v15->_children = v16;

    v15->_firstIndex = *(ofCopy + 12);
    v15->_lastIndex = *(ofCopy + 13);
    objc_storeStrong(&v15->_whitespaceBefore, *(ofCopy + 14));
    objc_storeStrong(&v15->_whitespaceAfter, *(ofCopy + 15));
    objc_storeStrong(&v15->_argumentSpec, *(ofCopy + 10));
    objc_msgSend_resetParentNodes(v15, v18, v19, v20, v21);
  }

  return v15;
}

- (id)copyIntoContext:(id)context bakeModes:(BOOL)modes children:(id)children
{
  contextCopy = context;
  childrenCopy = children;
  v9 = objc_alloc(objc_opt_class());
  inited = objc_msgSend_initAsCopyOf_intoContext_children_(v9, v10, self, contextCopy, childrenCopy);

  return inited;
}

- (id)deepCopyIntoContext:(id)context bakeModes:(BOOL)modes withTokenDict:(id)dict
{
  modesCopy = modes;
  v64 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dictCopy = dict;
  children = self->_children;
  v58 = contextCopy;
  if (children)
  {
    selfCopy = self;
    v57 = modesCopy;
    v15 = MEMORY[0x277CBEB18];
    v16 = objc_msgSend_count(children, v9, v10, v11, v12);
    v20 = objc_msgSend_arrayWithCapacity_(v15, v17, v16, v18, v19);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = self->_children;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v59, v63, 16);
    if (v26)
    {
      v27 = *v60;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v60 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v59 + 1) + 8 * i);
          v33 = objc_msgSend_tokenAttachment(v29, v22, v23, v24, v25);
          if (v33)
          {
            v34 = objc_msgSend_objectForKey_(dictCopy, v30, v33, v31, v32);
            v39 = v34;
            if (v34)
            {
              v40 = objc_msgSend_expressionNode(v34, v35, v36, v37, v38);
            }

            else
            {
              v40 = objc_msgSend_deepCopyIntoContext_bakeModes_withTokenDict_(v29, v35, v58, v57, dictCopy);
              v44 = [TSTWPTokenAttachment alloc];
              v39 = objc_msgSend_initWithContext_expressionNode_(v44, v45, v58, v40, v46);
              objc_msgSend_setObject_forUncopiedKey_(dictCopy, v47, v39, v33, v48);
            }

            objc_msgSend_addObject_(v20, v49, v40, v50, v51);
          }

          else
          {
            v40 = objc_msgSend_deepCopyIntoContext_bakeModes_withTokenDict_(v29, v30, v58, v57, dictCopy);
            objc_msgSend_addObject_(v20, v41, v40, v42, v43);
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v59, v63, 16);
      }

      while (v26);
    }

    v53 = objc_msgSend_copyIntoContext_bakeModes_children_(selfCopy, v52, v58, v57, v20);
  }

  else
  {
    v53 = objc_msgSend_copyIntoContext_bakeModes_children_(self, v9, contextCopy, modesCopy, 0);
  }

  return v53;
}

- (BOOL)isOptional
{
  argumentSpec = self->_argumentSpec;
  if (argumentSpec)
  {
    LOBYTE(argumentSpec) = objc_msgSend_isOptional(argumentSpec, a2, v2, v3, v4);
  }

  return argumentSpec;
}

- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map
{
  v81 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  tableCopy = table;
  mapCopy = map;
  if (!objc_msgSend_count(self->_children, v12, v13, v14, v15))
  {
    v62 = objc_msgSend_context(self, v16, v17, v18, v19);
    v61 = objc_msgSend_copyIntoContext_bakeModes_children_(self, v63, v62, 0, 0);

    goto LABEL_22;
  }

  if (self->_children)
  {
    v20 = objc_msgSend_forceReferenceInterpretationOfChildren(self, v16, v17, v18, v19);
    v21 = objc_alloc(MEMORY[0x277CBEB18]);
    v26 = objc_msgSend_count(self->_children, v22, v23, v24, v25);
    v72 = objc_msgSend_initWithCapacity_(v21, v27, v26, v28, v29);
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v30 = self->_children;
    obj = v30;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v76, v80, 16);
    if (v33)
    {
      v34 = *v77;
      while (2)
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v77 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = objc_msgSend_copyByResolvingIdentifiers_hostTable_baseHostCell_forceReferenceInterpretation_symbolTable_oldToNewNodeMap_(*(*(&v76 + 1) + 8 * i), v32, identifiersCopy, tableCopy, *&cell, v20, symbolTable, mapCopy);
          if (!v36)
          {

            v61 = 0;
            v64 = obj;
            goto LABEL_21;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v40 = [TSTFunctionEndNode alloc];
            v45 = objc_msgSend_context(self, v41, v42, v43, v44);
            Index = objc_msgSend_firstIndex(self, v46, v47, v48, v49);
            v55 = objc_msgSend_lastIndex(self, v51, v52, v53, v54);
            Index_lastIndex = objc_msgSend_initWithContext_functionNode_firstIndex_lastIndex_(v40, v56, v45, v36, Index, v55);

            objc_msgSend_setFunctionEndNode_(v36, v58, Index_lastIndex, v59, v60);
          }

          objc_msgSend_addObject_(v72, v37, v36, v38, v39);
        }

        v30 = obj;
        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v76, v80, 16);
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    if (!v72)
    {
      v61 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v72 = 0;
  }

  v65 = objc_msgSend_context(self, v16, v17, v18, v19);
  v61 = objc_msgSend_copyIntoContext_bakeModes_children_(self, v66, v65, 0, v72);

  if (v61)
  {
    objc_msgSend_setObject_forUncopiedKey_(mapCopy, v67, v61, self, v68);
  }

  v64 = v72;
LABEL_21:

LABEL_22:
  return v61;
}

- (id)convertEmptyArgumentsToPlaceholders
{
  v64 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_children, a2, v2, v3, v4))
  {
    if (self->_children)
    {
      v10 = objc_alloc(MEMORY[0x277CBEB18]);
      v15 = objc_msgSend_count(self->_children, v11, v12, v13, v14);
      v19 = objc_msgSend_initWithCapacity_(v10, v16, v15, v17, v18);
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v20 = self->_children;
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v59, v63, 16);
      if (v26)
      {
        v27 = *v60;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v60 != v27)
            {
              objc_enumerationMutation(v20);
            }

            v29 = *(*(&v59 + 1) + 8 * i);
            v33 = objc_msgSend_convertEmptyArgumentsToPlaceholders(v29, v22, v23, v24, v25, v59);
            if (v33 != v29)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v34 = [TSTFunctionEndNode alloc];
                v39 = objc_msgSend_context(self, v35, v36, v37, v38);
                Index = objc_msgSend_firstIndex(self, v40, v41, v42, v43);
                v49 = objc_msgSend_lastIndex(self, v45, v46, v47, v48);
                Index_lastIndex = objc_msgSend_initWithContext_functionNode_firstIndex_lastIndex_(v34, v50, v39, v33, Index, v49);

                objc_msgSend_setFunctionEndNode_(v33, v52, Index_lastIndex, v53, v54);
              }
            }

            objc_msgSend_addObject_(v19, v30, v33, v31, v32);
          }

          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v59, v63, 16);
        }

        while (v26);
      }

      if (!v19)
      {
        selfCopy = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v19 = 0;
    }

    v56 = objc_msgSend_context(self, v6, v7, v8, v9, v59);
    selfCopy = objc_msgSend_copyIntoContext_bakeModes_children_(self, v57, v56, 0, v19);
  }

  else
  {
    selfCopy = self;
  }

LABEL_18:

  return selfCopy;
}

- (id)variableUsageErrorWithSymbolTable:(void *)table
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_children;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v9)
  {
    v10 = *v15;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v4);
      }

      v12 = objc_msgSend_variableUsageErrorWithSymbolTable_(*(*(&v14 + 1) + 8 * v11), v6, table, v7, v8, v14);
      if (v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v14, v18, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  return v12;
}

- (id)transformToUseScopedVariables:(void *)variables
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = self->_children;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v25, v29, 16);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v4);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v19 = objc_msgSend_transformToUseScopedVariables_(v14, v6, variables, v7, v8);
        if (v19 != v14)
        {
          if (!v11)
          {
            v11 = objc_msgSend_mutableCopy(self->_children, v15, v16, v17, v18);
          }

          objc_msgSend_setObject_atIndexedSubscript_(v11, v15, v19, v10, v18);
        }

        ++v10;
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v25, v29, 16);
    }

    while (v9);

    if (v11)
    {
      objc_msgSend_setChildren_(self, v20, v11, v21, v22);
    }
  }

  else
  {

    v11 = 0;
  }

  return self;
}

- (void)setArgumentSpec:(id)spec
{
  specCopy = spec;
  if (self->_argumentSpec != specCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    objc_storeStrong(&self->_argumentSpec, spec);
  }
}

- (void)resetParentNodes
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_children;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_setParentNode_(*(*(&v11 + 1) + 8 * v10++), v5, self, v6, v7, v11);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v11, v15, 16);
    }

    while (v8);
  }
}

- (unint64_t)indexInParent
{
  WeakRetained = objc_loadWeakRetained(&self->_parentNode);

  if (!WeakRetained)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained(&self->_parentNode);
  v9 = objc_msgSend_children(v4, v5, v6, v7, v8);

  v13 = objc_msgSend_indexOfObjectIdenticalTo_(v9, v10, self, v11, v12);
  return v13;
}

- (void)setChildren:(id)children
{
  childrenCopy = children;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  objc_storeStrong(&self->_children, children);
  objc_msgSend_resetParentNodes(self, v9, v10, v11, v12);
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  v4 = *&options;
  v19 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_children;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v14, v18, 16);
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_insertFormulaText_printingOptions_(*(*(&v14 + 1) + 8 * v13++), v9, textCopy, v4, v10, v14);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v14, v18, 16);
    }

    while (v11);
  }
}

- (void)insertFormulaTextNonRecursive:(id)recursive printingOptions:(unsigned int)options
{
  v4 = *&options;
  recursiveCopy = recursive;
  v7 = objc_opt_new();
  objc_msgSend_setPrintingOptions_(v7, v8, v4, v9, v10);
  v30[0] = self;
  v30[1] = 0;
  objc_msgSend_push_(v7, v11, v30, v12, v13);

  while ((objc_msgSend_isEmpty(v7, v14, v15, v16, v17) & 1) == 0)
  {
    v22 = objc_msgSend_top(v7, v18, v19, v20, v21);
    v23 = *v22;
    v24 = *(v22 + 8);
    objc_msgSend_pop(v7, v25, v26, v27, v28);
    objc_msgSend_insertFormulaTextNonRecursive_phase_deferredWorkStack_(v23, v29, recursiveCopy, v24, v7);
  }
}

- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack
{
  recursiveCopy = recursive;
  stackCopy = stack;
  v12 = objc_msgSend_printingOptions(stackCopy, v8, v9, v10, v11);
  objc_msgSend_insertFormulaText_printingOptions_(self, v13, recursiveCopy, v12, v14);
}

- (void)clearAndCollectAllChildren:(id)children
{
  childrenCopy = children;
  children = self->_children;
  if (children)
  {
    v10 = childrenCopy;
    objc_msgSend_addObjectsFromArray_(childrenCopy, v5, children, v6, v7);
    v9 = self->_children;
    self->_children = 0;

    childrenCopy = v10;
  }
}

- (void)clearAllChildren
{
  if (objc_msgSend_count(self->_children, a2, v2, v3, v4))
  {
    v25 = objc_opt_new();
    objc_msgSend_addObject_(v25, v6, self, v7, v8);
    while (objc_msgSend_count(v25, v9, v10, v11, v12))
    {
      v17 = objc_msgSend_lastObject(v25, v13, v14, v15, v16);
      objc_msgSend_removeLastObject(v25, v18, v19, v20, v21);
      objc_msgSend_clearAndCollectAllChildren_(v17, v22, v25, v23, v24);
    }
  }
}

- (void)fixStorageLanguage:(id)language
{
  v38 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  if (objc_msgSend_firstIndex(self, v5, v6, v7, v8) != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_lastIndex(self, v9, v10, v11, v12) != 0x7FFFFFFFFFFFFFFFLL)
  {
    Index = objc_msgSend_firstIndex(self, v9, v10, v11, v12);
    v18 = objc_msgSend_lastIndex(self, v14, v15, v16, v17);
    v23 = objc_msgSend_firstIndex(self, v19, v20, v21, v22);
    objc_msgSend_setLanguage_forCharRange_undoTransaction_(languageCopy, v24, *MEMORY[0x277D81448], Index, v18 - v23 + 1, 0);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = objc_msgSend_children(self, v9, v10, v11, v12, 0);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v33, v37, 16);
  if (v30)
  {
    v31 = *v34;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(v25);
        }

        objc_msgSend_fixStorageLanguage_(*(*(&v33 + 1) + 8 * i), v27, languageCopy, v28, v29);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v33, v37, 16);
    }

    while (v30);
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell
{
  v8 = objc_msgSend_context(self, a2, array, *&cell, v4);
  v13 = objc_msgSend_objectLocale(v8, v9, v10, v11, v12);
  TSCESymbolTable::TSCESymbolTable(&v15, v13);

  objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(self, v14, array, *&cell, &v15);
  p_undoSymbolTableMaps = &v15._undoSymbolTableMaps;
  sub_2210C8268(&p_undoSymbolTableMaps);
  sub_221087B80(&v15._identifierMap);
  sub_2210C82EC(&v15._symbolTableMap);
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_children;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v14, v18, 16);
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(*(*(&v14 + 1) + 8 * v13++), v10, array, *&cell, table, v14);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v14, v18, 16);
    }

    while (v11);
  }
}

- (id)exportString
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTExpressionNode exportString]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionNode.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 418, 0, "Children of TSTExpressionNode that is tokenized should implement exportString().");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return &stru_2834BADA0;
}

- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges deepSearch:(BOOL)search calcEngine:(id)engine allVisitedNodes:(id)self0
{
  searchCopy = search;
  rangesCopy = ranges;
  contextCopy = context;
  v69 = *MEMORY[0x277D85DE8];
  setCopy = set;
  helperCopy = helper;
  storageCopy = storage;
  engineCopy = engine;
  nodesCopy = nodes;
  selfCopy = self;
  p_isa = &selfCopy->super.super.isa;
  v24 = selfCopy;
  if (storageCopy)
  {
    Index = objc_msgSend_firstIndex(selfCopy, v20, selfCopy, v21, v22);
    v24 = p_isa;
    if (Index != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_opt_class();
      v30 = objc_msgSend_firstIndex(p_isa, v26, v27, v28, v29);
      v34 = objc_msgSend_attachmentAtCharIndex_(storageCopy, v31, v30, v32, v33);
      v35 = TSUDynamicCast();

      v40 = p_isa;
      if (v35)
      {
        v61 = v35;
        v41 = objc_msgSend_expressionNode(v35, v36, v37, v38, v39);
        v42 = objc_opt_class();
        isMemberOfClass = objc_msgSend_isMemberOfClass_(v41, v43, v42, v44, v45);

        v40 = p_isa;
        v35 = v61;
        if (isMemberOfClass)
        {
          v40 = objc_msgSend_expressionNode(v61, v47, v48, v49, v50);

          v35 = v61;
        }
      }

      v24 = v40;
    }
  }

  v62 = v24;
  if ((objc_msgSend_containsObject_(nodesCopy, v20, v24, v21, v22) & 1) == 0)
  {
    objc_msgSend_addObject_(nodesCopy, v51, v62, v52, v53);
    if (searchCopy)
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v54 = p_isa[8];
      v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v64, v68, 16);
      if (v57)
      {
        v58 = *v65;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v65 != v58)
            {
              objc_enumerationMutation(v54);
            }

            objc_msgSend_addTSTCanvasReferencesToSet_inRangeContext_withColorHelper_preferringNodesFromStorage_showingSpillRanges_deepSearch_calcEngine_allVisitedNodes_(*(*(&v64 + 1) + 8 * i), v56, setCopy, contextCopy, helperCopy, storageCopy, rangesCopy, 1, engineCopy, nodesCopy);
          }

          v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v56, &v64, v68, 16);
        }

        while (v57);
      }
    }
  }
}

- (void)enumerateExpressionNodesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_initWithObjects_(v5, v6, self, v7, v8, 0);
  v33 = 0;
  do
  {
    if (!objc_msgSend_count(v13, v9, v10, v11, v12))
    {
      break;
    }

    v17 = objc_msgSend_objectAtIndex_(v13, v14, 0, v15, v16);
    objc_msgSend_removeObjectAtIndex_(v13, v18, 0, v19, v20);
    v25 = objc_msgSend_children(v17, v21, v22, v23, v24);
    if (objc_msgSend_count(v25, v26, v27, v28, v29))
    {
      objc_msgSend_addObjectsFromArray_(v13, v30, v25, v31, v32);
    }

    blockCopy[2](blockCopy, v17, &v33);
  }

  while ((v33 & 1) == 0);
}

- (int64_t)compareFirstLastIndices:(id)indices
{
  indicesCopy = indices;
  v9 = indicesCopy;
  if (self == indicesCopy)
  {
    v19 = 0;
    goto LABEL_8;
  }

  if (!indicesCopy)
  {
    goto LABEL_7;
  }

  Index = objc_msgSend_firstIndex(self, v5, v6, v7, v8);
  if (Index >= objc_msgSend_firstIndex(v9, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_firstIndex(self, v15, v16, v17, v18);
    if (v20 <= objc_msgSend_firstIndex(v9, v21, v22, v23, v24))
    {
      v30 = objc_msgSend_lastIndex(self, v25, v26, v27, v28);
      if (v30 >= objc_msgSend_lastIndex(v9, v31, v32, v33, v34))
      {
        v39 = objc_msgSend_lastIndex(self, v35, v36, v37, v38);
        v19 = v39 > objc_msgSend_lastIndex(v9, v40, v41, v42, v43);
        goto LABEL_8;
      }

      goto LABEL_4;
    }

LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

LABEL_4:
  v19 = -1;
LABEL_8:

  return v19;
}

- (unint64_t)firstIndexOfSubtree
{
  Index = objc_msgSend_firstIndex(self, a2, v2, v3, v4);
  v11 = objc_msgSend_children(self, v7, v8, v9, v10);
  v16 = objc_msgSend_count(v11, v12, v13, v14, v15);

  if (!v16)
  {
    return Index;
  }

  v21 = objc_msgSend_children(self, v17, v18, v19, v20);
  v26 = objc_msgSend_firstObject(v21, v22, v23, v24, v25);
  IndexOfSubtree = objc_msgSend_firstIndexOfSubtree(v26, v27, v28, v29, v30);

  if (Index >= IndexOfSubtree)
  {
    return IndexOfSubtree;
  }

  else
  {
    return Index;
  }
}

- (unint64_t)lastIndexOfSubtree
{
  Index = objc_msgSend_lastIndex(self, a2, v2, v3, v4);
  v11 = objc_msgSend_children(self, v7, v8, v9, v10);
  v16 = objc_msgSend_count(v11, v12, v13, v14, v15);

  if (!v16)
  {
    return Index;
  }

  v21 = objc_msgSend_children(self, v17, v18, v19, v20);
  v26 = objc_msgSend_lastObject(v21, v22, v23, v24, v25);
  IndexOfSubtree = objc_msgSend_lastIndexOfSubtree(v26, v27, v28, v29, v30);

  if (Index <= IndexOfSubtree)
  {
    return IndexOfSubtree;
  }

  else
  {
    return Index;
  }
}

- (_NSRange)range
{
  IndexOfSubtree = objc_msgSend_firstIndexOfSubtree(self, a2, v2, v3, v4);
  v11 = objc_msgSend_lastIndexOfSubtree(self, v7, v8, v9, v10) - IndexOfSubtree + 1;
  v12 = IndexOfSubtree;
  result.length = v11;
  result.location = v12;
  return result;
}

- (_NSRange)rangeEncompassingExpressionNodesInRange:(_NSRange)range outStartingNode:(id *)node
{
  length = range.length;
  location = range.location;
  v8 = range.length + range.location - 1;
  v9 = objc_msgSend_mostSpecificNodeContainingIndex_correspondingIndex_(self, a2, range.location, v8, node);
  v12 = objc_msgSend_mostSpecificNodeContainingIndex_correspondingIndex_(self, v10, v8, location, v11);
  objc_opt_class();
  v13 = TSUDynamicCast();
  objc_opt_class();
  v14 = TSUDynamicCast();
  v19 = v14;
  if (v9 == v12 && v13 | v14)
  {
    if (v13)
    {
      v20 = objc_msgSend_functionEndNode(v13, v15, v16, v17, v18);

      if (v20)
      {
        v21 = objc_msgSend_functionEndNode(v13, v15, v16, v17, v18);
        v22 = v12;
        v12 = v21;
LABEL_9:

        goto LABEL_10;
      }
    }

    if (v19)
    {
      v23 = objc_msgSend_functionNode(v19, v15, v16, v17, v18);

      if (v23)
      {
        v24 = objc_msgSend_functionNode(v19, v15, v16, v17, v18);
        v22 = v9;
        v9 = v24;
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  if (v9)
  {
    if (v12)
    {
      Index = objc_msgSend_firstIndex(v9, v15, v16, v17, v18);
      if (Index <= objc_msgSend_lastIndex(v12, v26, v27, v28, v29))
      {
        location = objc_msgSend_firstIndex(v9, v30, v31, v32, v33);
        v38 = objc_msgSend_lastIndex(v12, v34, v35, v36, v37);
        length = v38 - objc_msgSend_firstIndex(v9, v39, v40, v41, v42) + 1;
        if (node)
        {
          v43 = v9;
          *node = v9;
        }
      }
    }
  }

  v44 = location;
  v45 = length;
  result.length = v45;
  result.location = v44;
  return result;
}

- (_NSRange)rangeEncompassingExpressionNodesInRange:(_NSRange)range
{
  v3 = MEMORY[0x2821F9670](self, sel_rangeEncompassingExpressionNodesInRange_outStartingNode_, range.location, range.length, 0);
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)mostSpecificNodeContainingIndex:(unint64_t)index correspondingIndex:(unint64_t)correspondingIndex
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_22124B558;
  v35 = sub_22124B568;
  v36 = 0;
  if (objc_msgSend_subtreeContainsIndex_(self, a2, index, correspondingIndex, v4))
  {
    v12 = objc_msgSend_children(self, v8, v9, v10, v11);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_22124B570;
    v30[3] = &unk_278461E98;
    v30[5] = index;
    v30[6] = correspondingIndex;
    v30[4] = &v31;
    objc_msgSend_enumerateObjectsUsingBlock_(v12, v13, v30, v14, v15);

    if (!v32[5])
    {
      objc_storeStrong(v32 + 5, self);
    }
  }

  objc_opt_class();
  v16 = TSUDynamicCast();
  v21 = v16;
  if (v16 && objc_msgSend_lastIndexOfSubtree(v16, v17, v18, v19, v20) == index)
  {
    v26 = objc_msgSend_functionEndNode(v21, v22, v23, v24, v25);
    v27 = v32[5];
    v32[5] = v26;
  }

  v28 = v32[5];

  _Block_object_dispose(&v31, 8);

  return v28;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTExpressionNode recordHashesForSubexpressions:]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionNode.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 884, 0, "subclasses must override recordHashesForSubexpressions so CSE works properly");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  v16 = 0;
  v17 = 0;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToExpressionNode = objc_msgSend_isEqualToExpressionNode_(self, v5, equalCopy, v6, v7);
  }

  else
  {
    isEqualToExpressionNode = 0;
  }

  return isEqualToExpressionNode;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v36 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(nodeCopy, v6, v5, v7, v8))
    {
      v13 = objc_msgSend_children(self, v9, v10, v11, v12);
      v18 = objc_msgSend_count(v13, v14, v15, v16, v17);

      v23 = objc_msgSend_children(nodeCopy, v19, v20, v21, v22);
      if (v18 == objc_msgSend_count(v23, v24, v25, v26, v27))
      {
        v35 = objc_msgSend_children(self, v28, v29, v30, v31);
        if (v18)
        {
          v36 = 0;
          for (i = 0; i != v18; v36 = i >= v18)
          {
            v38 = objc_msgSend_objectAtIndex_(v35, v32, i, v33, v34);
            v42 = objc_msgSend_objectAtIndex_(v23, v39, i, v40, v41);
            isEqualToExpressionNode = objc_msgSend_isEqualToExpressionNode_(v38, v43, v42, v44, v45);

            if ((isEqualToExpressionNode & 1) == 0)
            {
              break;
            }

            ++i;
          }
        }

        else
        {
          v36 = 1;
        }
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v36 = 0;
    }
  }

  return v36;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[198], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, unarchiverCopy, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22124C164, off_2812E4498[198], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, archiverCopy, v8);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = unarchiverCopy;
  if (*(archive + 8))
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22124BBB0;
    v17[3] = &unk_27845D8D8;
    v17[4] = self;
    v8 = unarchiverCopy;
    v9 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v8, v10, archive + 24, v9, 0, v17);
  }

  else
  {
    children = self->_children;
    self->_children = 0;
  }

  v16 = *(archive + 7);
  self->_firstIndex = *(archive + 6);
  self->_lastIndex = v16;
  objc_msgSend_resetParentNodes(self, v11, v12, v13, v14);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  children = self->_children;
  if (children && objc_msgSend_count(children, v6, v7, v8, v9))
  {
    objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v11, self->_children, archive + 24, v12);
  }

  firstIndex = self->_firstIndex;
  lastIndex = self->_lastIndex;
  *(archive + 4) |= 3u;
  *(archive + 6) = firstIndex;
  *(archive + 7) = lastIndex;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_string(self, v6, v7, v8, v9);
  v14 = objc_msgSend_stringWithFormat_(v3, v11, @"<%@ %p>: '%@'", v12, v13, v5, self, v10);

  return v14;
}

- (TSTExpressionNode)parentNode
{
  WeakRetained = objc_loadWeakRetained(&self->_parentNode);

  return WeakRetained;
}

- (TSTWPTokenAttachment)tokenAttachment
{
  WeakRetained = objc_loadWeakRetained(&self->_tokenAttachment);

  return WeakRetained;
}

@end