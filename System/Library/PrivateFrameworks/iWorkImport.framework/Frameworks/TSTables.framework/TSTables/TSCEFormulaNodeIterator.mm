@interface TSCEFormulaNodeIterator
- (TSCEFormulaNodeIterator)initWithFormulaNodeTree:(id)tree rewriteContext:(TSCEFormulaRewriteContext *)context;
- (TSKUIDStruct)containingTableUID;
- (id).cxx_construct;
- (id)findReplacementNode:(id)node;
- (void)depthFirstIteration;
- (void)p_visitChildrenAndNodePostOrder:(id)order;
- (void)replaceNode:(id)node withNode:(id)withNode;
- (void)topDownIteration;
- (void)visitNode:(id)node;
@end

@implementation TSCEFormulaNodeIterator

- (TSCEFormulaNodeIterator)initWithFormulaNodeTree:(id)tree rewriteContext:(TSCEFormulaRewriteContext *)context
{
  treeCopy = tree;
  v11.receiver = self;
  v11.super_class = TSCEFormulaNodeIterator;
  v8 = [(TSCEFormulaNodeIterator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_rewriteContext = context;
    objc_storeStrong(&v8->_formula, tree);
  }

  return v9;
}

- (TSKUIDStruct)containingTableUID
{
  v2 = TSCEFormulaRewriteContext::containingTableUID(self->_rewriteContext);
  result._upper = v3;
  result._lower = v2;
  return result;
}

- (void)p_visitChildrenAndNodePostOrder:(id)order
{
  v26 = *MEMORY[0x277D85DE8];
  orderCopy = order;
  v9 = orderCopy;
  if (!self->_aborted)
  {
    objc_msgSend_children(orderCopy, v5, v6, v7, v8);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v10 = v22 = 0u;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v21, v25, 16);
    if (v15)
    {
      v16 = *v22;
      do
      {
        v17 = 0;
        do
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v10);
          }

          objc_msgSend_p_visitChildrenAndNodePostOrder_(self, v12, *(*(&v21 + 1) + 8 * v17++), v13, v14, v21);
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v21, v25, 16);
      }

      while (v15);
    }

    objc_msgSend_visitNode_(self, v18, v9, v19, v20);
  }
}

- (void)replaceNode:(id)node withNode:(id)withNode
{
  nodeCopy = node;
  withNodeCopy = withNode;
  if (nodeCopy != withNodeCopy)
  {
    v8 = nodeCopy;
    v9 = withNodeCopy;
    v18 = v8;
    v19 = v9;
    sub_2214D154C(&self->_replacedNodes.__begin_, &v18);

    v14 = objc_msgSend_root(self->_formula, v10, v11, v12, v13);

    if (v14 == v8)
    {
      objc_msgSend_setRoot_(self->_formula, v15, v9, v16, v17);
    }
  }
}

- (id)findReplacementNode:(id)node
{
  nodeCopy = node;
  v5 = nodeCopy;
  if (nodeCopy)
  {
    for (i = self->_replacedNodes.__begin_; i != self->_replacedNodes.__end_; i = (i + 16))
    {
      if (*i == nodeCopy)
      {
        v7 = *(i + 1);
        if (v7)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  v7 = v5;
LABEL_8:

  return v7;
}

- (void)depthFirstIteration
{
  v9 = objc_msgSend_root(self->_formula, a2, v2, v3, v4);
  objc_msgSend_p_visitChildrenAndNodePostOrder_(self, v6, v9, v7, v8);
}

- (void)topDownIteration
{
  v5[25] = *MEMORY[0x277D85DE8];
  memset(v5, 0, 24);
  objc_msgSend_root(self->_formula, a2, v2, v3, v4);
  objc_claimAutoreleasedReturnValue();
  v5[8] = v5;
  sub_22107C1F0(v5, 1uLL);
}

- (void)visitNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy)
  {
    if (!self->_aborted)
    {
      switch(objc_msgSend_nodeType(nodeCopy, v4, v5, v6, v7))
      {
        case 0u:
          v11 = MEMORY[0x277D81150];
          v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEFormulaNodeIterator visitNode:]", v9, v10);
          v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeIterator.mm", v14, v15);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 138, 0, "Saw and invalid nodeType");
          goto LABEL_6;
        case 1u:
          objc_msgSend_numberNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 2u:
          objc_msgSend_BOOLeanNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 3u:
          objc_msgSend_stringNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 4u:
          objc_msgSend_dateNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 5u:
          objc_msgSend_durationNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 6u:
          objc_msgSend_emptyArgumentNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 7u:
          objc_msgSend_tokenNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 8u:
          v40 = nodeCopy;
          v45 = objc_msgSend_operatorNodeTag(v40, v41, v42, v43, v44);
          v49 = v45;
          if ((v45 - 1) < 0xC)
          {
            objc_msgSend_binaryInfixOperatorNode_(self, v46, v40, v47, v48);
            goto LABEL_48;
          }

          if (v45 <= 14)
          {
            if ((v45 - 13) < 2)
            {
              objc_msgSend_unaryOperatorNode_isPostfix_(self, v46, v40, 0, v48);
              goto LABEL_48;
            }

            goto LABEL_49;
          }

          if (v45 == 15)
          {
LABEL_44:
            objc_msgSend_unaryOperatorNode_isPostfix_(self, v46, v40, 1, v48);
            goto LABEL_48;
          }

          if (v45 != 69)
          {
            if (v45 == 70)
            {
              goto LABEL_44;
            }

LABEL_49:
            v50 = MEMORY[0x277D81150];
            v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSCEFormulaNodeIterator visitNode:]", v47, v48);
            v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeIterator.mm", v53, v54);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v56, v51, v55, 198, 0, "Unhandled operator tag %d", v49);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59, v60);
            goto LABEL_48;
          }

          objc_msgSend_intersectionOperatorNode_isPostfix_(self, v46, v40, 0, v48);
LABEL_48:

          break;
        case 9u:
          objc_msgSend_arrayNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0xAu:
          objc_msgSend_listNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0xBu:
          v27 = nodeCopy;
          if ((objc_msgSend_relativeCellCoord(v27, v28, v29, v30, v31) & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
          {
            v36 = objc_msgSend_undoTractList(v27, v32, v33, v34, v35);

            if (v36)
            {
              objc_msgSend_referenceErrorWithUidsNode_(self, v37, v27, v38, v39);
            }

            else
            {
              objc_msgSend_referenceErrorNode_(self, v37, v27, v38, v39);
            }
          }

          else
          {
            objc_msgSend_anyReferenceNode_(self, v32, v27, v34, v35);
          }

          goto LABEL_48;
        case 0xCu:
          objc_msgSend_colonNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0xDu:
          objc_msgSend_colonTractNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0xEu:
          objc_msgSend_functionNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0xFu:
          objc_msgSend_unknownFunctionNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0x10u:
          objc_msgSend_combinedReferenceNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0x11u:
          objc_msgSend_uidReferenceNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0x12u:
          objc_msgSend_linkedRefNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0x13u:
          objc_msgSend_categoryRefNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0x14u:
          objc_msgSend_viewTractRefNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0x15u:
          objc_msgSend_unboundIdentNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0x16u:
          objc_msgSend_whitespaceNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0x17u:
          objc_msgSend_letBindNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0x18u:
          objc_msgSend_variableNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0x19u:
          objc_msgSend_endScopeNode_(self, v8, nodeCopy, v9, v10);
          break;
        case 0x1Au:
          objc_msgSend_lambdaNode_(self, v8, nodeCopy, v9, v10);
          break;
        default:
          break;
      }
    }
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCEFormulaNodeIterator visitNode:]", v6, v7);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeIterator.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v12, v16, 131, 0, "invalid nil value for '%{public}s'", "currentNode");
LABEL_6:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end