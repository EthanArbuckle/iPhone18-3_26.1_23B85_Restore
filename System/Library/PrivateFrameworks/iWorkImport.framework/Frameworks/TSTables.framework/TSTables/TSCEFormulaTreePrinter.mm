@interface TSCEFormulaTreePrinter
- (TSCEFormulaTreePrinter)initWithFormulaNodeTree:(id)a3 rewriteContext:(TSCEFormulaRewriteContext *)a4;
- (id)popArgString;
- (id)rewriteForDescription;
- (void)BOOLeanNode:(id)a3;
- (void)anyReferenceNode:(id)a3;
- (void)arrayNode:(id)a3;
- (void)binaryInfixOperatorNode:(id)a3;
- (void)categoryRefNode:(id)a3;
- (void)colonTractNode:(id)a3;
- (void)dateNode:(id)a3;
- (void)durationNode:(id)a3;
- (void)endScopeNode:(id)a3;
- (void)functionNode:(id)a3;
- (void)lambdaNode:(id)a3;
- (void)letBindNode:(id)a3;
- (void)linkedRefNode:(id)a3;
- (void)listNode:(id)a3;
- (void)numberNode:(id)a3;
- (void)pushArgString:(id)a3;
- (void)pushFunctionOp:(id)a3 numArgs:(int)a4;
- (void)pushInfixOp:(id)a3;
- (void)pushPrefixOp:(id)a3;
- (void)stringNode:(id)a3;
- (void)uidReferenceNode:(id)a3;
- (void)unaryOperatorNode:(id)a3 isPostfix:(BOOL)a4;
- (void)unboundIdentNode:(id)a3;
- (void)unknownFunctionNode:(id)a3;
- (void)variableNode:(id)a3;
- (void)viewTractRefNode:(id)a3;
@end

@implementation TSCEFormulaTreePrinter

- (TSCEFormulaTreePrinter)initWithFormulaNodeTree:(id)a3 rewriteContext:(TSCEFormulaRewriteContext *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = TSCEFormulaTreePrinter;
  v7 = [(TSCEFormulaNodeIterator *)&v11 initWithFormulaNodeTree:v6 rewriteContext:a4];
  if (v7)
  {
    v8 = objc_opt_new();
    argStack = v7->_argStack;
    v7->_argStack = v8;
  }

  return v7;
}

- (id)rewriteForDescription
{
  objc_msgSend_depthFirstIteration(self, a2, v2, v3, v4);
  if (objc_msgSend_count(self->_argStack, v6, v7, v8, v9) != 1)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEFormulaTreePrinter rewriteForDescription]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaTreePrinter.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 33, 0, "Should only have one argument on _argStack at this point, the final result. ArgStack: %@", self->_argStack);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  return objc_msgSend_popArgString(self, v10, v11, v12, v13);
}

- (id)popArgString
{
  if (objc_msgSend_count(self->_argStack, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_lastObject(self->_argStack, v6, v7, v8, v9);
    objc_msgSend_removeLastObject(self->_argStack, v11, v12, v13, v14);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)pushArgString:(id)a3
{
  v7 = a3;
  if (v7)
  {
    objc_msgSend_addObject_(self->_argStack, v4, v7, v5, v6);
  }
}

- (void)pushInfixOp:(id)a3
{
  v78 = a3;
  if (v78)
  {
    v9 = objc_msgSend_popArgString(self, v5, v6, v7, v8);
    v14 = objc_msgSend_popArgString(self, v10, v11, v12, v13);
    if (!objc_msgSend_isEqualToString_(v78, v15, @":", v16, v17))
    {
      v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v78, @"(%@ %@ %@)", v19, v20, v14, v78, v9);
      objc_msgSend_pushArgString_(self, v57, v21, v58, v59);
LABEL_25:

      goto LABEL_26;
    }

    v21 = objc_msgSend_componentsSeparatedByString_(v14, v18, @"::", v19, v20);
    v25 = objc_msgSend_componentsSeparatedByString_(v9, v22, @"::", v23, v24);
    if (objc_msgSend_count(v21, v26, v27, v28, v29) == 2 && objc_msgSend_count(v25, v30, v31, v32, v33) == 2)
    {
      v34 = objc_msgSend_objectAtIndexedSubscript_(v21, v30, 0, v32, v33);
      v3 = objc_msgSend_objectAtIndexedSubscript_(v25, v35, 0, v36, v37);
      isEqualToString = objc_msgSend_isEqualToString_(v34, v38, v3, v39, v40);

      if (isEqualToString)
      {
        v42 = objc_msgSend_objectAtIndexedSubscript_(v25, v30, 1, v32, v33);

        v9 = v42;
      }
    }

    if (objc_msgSend_count(v21, v30, v31, v32, v33) == 2 && objc_msgSend_count(v25, v43, v44, v45, v46) == 2)
    {
      v47 = objc_msgSend_objectAtIndexedSubscript_(v21, v43, 1, v45, v46);
      v3 = objc_msgSend_objectAtIndexedSubscript_(v25, v48, 1, v49, v50);
      if (objc_msgSend_isEqualToString_(v47, v51, v3, v52, v53))
      {

LABEL_23:
        objc_msgSend_pushArgString_(self, v54, v14, v55, v56);
        goto LABEL_24;
      }

      v77 = v47;
      v60 = 1;
    }

    else
    {
      v60 = 0;
    }

    if (objc_msgSend_count(v21, v43, v44, v45, v46) == 1 && objc_msgSend_count(v25, v61, v62, v55, v56) == 1)
    {
      v64 = objc_msgSend_objectAtIndexedSubscript_(v21, v63, 0, v55, v56);
      v68 = objc_msgSend_objectAtIndexedSubscript_(v25, v65, 0, v66, v67);
      v72 = objc_msgSend_isEqualToString_(v64, v69, v68, v70, v71);

      if (v60)
      {

        if (v72)
        {
          goto LABEL_23;
        }
      }

      else if (v72)
      {
        goto LABEL_23;
      }
    }

    else if (v60)
    {
    }

    v73 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v78, @"%@%@%@", v55, v56, v14, v78, v9);
    objc_msgSend_pushArgString_(self, v74, v73, v75, v76);

LABEL_24:
    goto LABEL_25;
  }

LABEL_26:
}

- (void)pushPrefixOp:(id)a3
{
  v23 = a3;
  if (v23)
  {
    v8 = objc_msgSend_popArgString(self, v4, v5, v6, v7);
    if (objc_msgSend_hasPrefix_(v8, v9, @"("), v10, v11 && objc_msgSend_hasSuffix_(v8, v12, @""), v13, v14))
    {
      v15 = v8;
    }

    else
    {
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"(%@)", v13, v14, v8);
    }

    v18 = v15;
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"(%@%@)", v16, v17, v23, v15);
    objc_msgSend_pushArgString_(self, v20, v19, v21, v22);
  }
}

- (void)pushFunctionOp:(id)a3 numArgs:(int)a4
{
  v6 = a3;
  if (v6)
  {
    v21 = v6;
    if (a4 < 1)
    {
      goto LABEL_9;
    }

    v11 = 0;
    do
    {
      v15 = objc_msgSend_popArgString(self, v7, v8, v9, v10);
      if (v11)
      {
        v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%@,%@", v13, v14, v15, v11);

        v11 = v16;
      }

      else
      {
        v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%@", v13, v14, v15);
      }

      --a4;
    }

    while (a4);
    if (!v11)
    {
LABEL_9:
      v11 = &stru_2834BADA0;
    }

    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v21, @"%@(%@)", v9, v10, v21, v11);
    objc_msgSend_pushArgString_(self, v18, v17, v19, v20);

    v6 = v21;
  }
}

- (void)binaryInfixOperatorNode:(id)a3
{
  v6 = objc_msgSend_operatorNodeTag(a3, a2, a3, v3, v4);
  if ((v6 - 1) >= 0xC)
  {
    v11 = v6;
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEFormulaTreePrinter binaryInfixOperatorNode:]", v8, v9);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaTreePrinter.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 160, 0, "Unknown operator tag: %d", v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    v10 = &stru_2834BADA0;
  }

  else
  {
    v10 = off_278465960[(v6 - 1)];
  }

  MEMORY[0x2821F9670](self, sel_pushInfixOp_, v10, v8, v9);
}

- (void)unaryOperatorNode:(id)a3 isPostfix:(BOOL)a4
{
  v7 = objc_msgSend_operatorNodeTag(a3, a2, a3, a4, v4);
  v12 = v7;
  if (v7 > 14)
  {
    switch(v7)
    {
      case 0xF:
        v9 = @"%";
        if (!a4)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      case 0x45:
        v9 = @"@";
        if (!a4)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      case 0x46:
        if (!a4)
        {
          v9 = @"#";
LABEL_23:

          MEMORY[0x2821F9670](self, sel_pushPrefixOp_, v9, v10, v11);
          return;
        }

        goto LABEL_17;
    }

LABEL_22:
    v28 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEFormulaTreePrinter unaryOperatorNode:isPostfix:]", v10, v11);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaTreePrinter.mm", v30, v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v39, v32, 194, 0, "Unknown operator tag: %d", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    v9 = &stru_2834BADA0;
    if (!a4)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (v7 != 13)
  {
    if (v7 == 14)
    {
      v9 = @"+";
      if (!a4)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v9 = @"-";
  if (!a4)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v12 != 70)
  {
    v21 = MEMORY[0x277CCACA8];
    v38 = objc_msgSend_popArgString(self, v8, v9, v10, v11);
    v17 = objc_msgSend_stringWithFormat_(v21, v22, @"((%@)%%)", v23, v24, v38);
    objc_msgSend_pushArgString_(self, v25, v17, v26, v27);
    goto LABEL_19;
  }

LABEL_17:
  v13 = MEMORY[0x277CCACA8];
  v38 = objc_msgSend_popArgString(self, v8, v9, v10, v11);
  v17 = objc_msgSend_stringWithFormat_(v13, v14, @"((%@)#)", v15, v16, v38);
  objc_msgSend_pushArgString_(self, v18, v17, v19, v20);
LABEL_19:
}

- (void)functionNode:(id)a3
{
  v20 = a3;
  v8 = objc_msgSend_functionIndex(v20, v4, v5, v6, v7);
  v13 = objc_msgSend_numArgs(v20, v9, v10, v11, v12);
  v17 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v14, v8, v15, v16);
  objc_msgSend_pushFunctionOp_numArgs_(self, v18, v17, v13, v19);
}

- (void)unknownFunctionNode:(id)a3
{
  v16 = a3;
  v8 = objc_msgSend_functionName(v16, v4, v5, v6, v7);
  v13 = objc_msgSend_numArgs(v16, v9, v10, v11, v12);
  objc_msgSend_pushFunctionOp_numArgs_(self, v14, v8, v13, v15);
}

- (void)colonTractNode:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_relativeTractRef(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_tableUID(v9, v10, v11, v12, v13);
  v16 = v15;
  v84._lower = v14;
  v84._upper = v15;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = sub_2214818D8;
  v82 = sub_2214818E8;
  v83 = 0;
  v24 = objc_msgSend_containingCell(self, v15, v17, v18, v19);
  v77 = v24;
  if ((v24 == 0x7FFFFFFF || (v24 & 0xFFFF00000000) == 0x7FFF00000000) && objc_msgSend_preserveFlags(v9, v20, v21, v22, v23) == 15)
  {
    v24 = 0;
    v77 = 0;
  }

  if (v24 != 0x7FFFFFFF && (v24 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v25 = objc_msgSend_absoluteCellTractRefForHostCell_(v9, v20, &v77, v22, v23);
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = sub_2214818F0;
    v76[3] = &unk_278461420;
    v76[4] = &v78;
    objc_msgSend_foreachAnyRef_(v25, v26, v76, v27, v28);
LABEL_8:

    goto LABEL_12;
  }

  if (objc_msgSend_isRectangularRange(v9, v20, v21, v22, v23) && !objc_msgSend_preserveFlags(v9, v33, v34, v35, v36))
  {
    v75 = objc_msgSend_relativeTopLeft(v9, v33, v37, v35, v36);
    v74 = objc_msgSend_relativeBottomRight(v9, v63, v64, v65, v66);
    v67 = MEMORY[0x277CCAB68];
    v25 = TSCERelativeCellCoordinate::description(&v75);
    v68 = TSCERelativeCellCoordinate::description(&v74);
    v72 = objc_msgSend_stringWithFormat_(v67, v69, @"%@:%@", v70, v71, v25, v68, v74);
    v73 = v79[5];
    v79[5] = v72;

    goto LABEL_8;
  }

  v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v33, @"[%@]", v35, v36, v9);
  v39 = v79[5];
  v79[5] = v38;

LABEL_12:
  if (!v79[5])
  {
    v40 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v29, @"<error in colonTractNode() - got nil>", v31, v32);
    v41 = v79[5];
    v79[5] = v40;

    v42 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSCEFormulaTreePrinter colonTractNode:]", v44, v45);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaTreePrinter.mm", v48, v49);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v51, v46, v50, 290, 0, "Why would this happen?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
  }

  if (v14 | v16 && (v14 != objc_msgSend_containingTableUID(self, v29, v30, v31, v32) || v16 != v29))
  {
    v56 = MEMORY[0x277CCAB68];
    v57 = TSKUIDStruct::description(&v84);
    v61 = objc_msgSend_stringWithFormat_(v56, v58, @"%@::%@", v59, v60, v57, v79[5]);
    v62 = v79[5];
    v79[5] = v61;
  }

  objc_msgSend_pushArgString_(self, v29, v79[5], v31, v32);
  _Block_object_dispose(&v78, 8);
}

- (void)viewTractRefNode:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_calcEngine(self, v5, v6, v7, v8);

  if (v9)
  {
    v14 = objc_msgSend_viewTractRef(v4, v10, v11, v12, v13);
    v19 = objc_msgSend_calcEngine(self, v15, v16, v17, v18);
    v40[0] = objc_msgSend_tableUID(v14, v20, v21, v22, v23);
    v40[1] = v24;
    v27 = objc_msgSend_tableResolverForTableUID_(v19, v24, v40, v25, v26);

    if (v27)
    {
      v31 = objc_msgSend_cellTractRefForViewTractRef_(v27, v28, v14, v29, v30);
      v36 = objc_msgSend_description(v31, v32, v33, v34, v35);
    }

    else
    {
      v36 = @"<#REF! VTR>";
    }

    objc_msgSend_pushArgString_(self, v37, v36, v38, v39);
  }

  else
  {
    v36 = @"<VTR>";
    objc_msgSend_pushArgString_(self, v10, @"<VTR>", v12, v13);
  }
}

- (void)numberNode:(id)a3
{
  v4 = a3;
  v19._decimal.w[0] = objc_msgSend_value(v4, v5, v6, v7, v8);
  v19._decimal.w[1] = v9;
  v10 = MEMORY[0x277CCACA8];
  v11 = TSUDecimal::description(&v19);
  v15 = objc_msgSend_stringWithFormat_(v10, v12, @"%@", v13, v14, v11);
  objc_msgSend_pushArgString_(self, v16, v15, v17, v18);
}

- (void)BOOLeanNode:(id)a3
{
  if (objc_msgSend_value(a3, a2, a3, v3, v4))
  {
    v9 = @"TRUE";
  }

  else
  {
    v9 = @"FALSE";
  }

  objc_msgSend_pushArgString_(self, v6, v9, v7, v8);
}

- (void)stringNode:(id)a3
{
  v12 = objc_msgSend_value(a3, a2, a3, v3, v4);
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%@", v6, v7, v12);
  objc_msgSend_pushArgString_(self, v9, v8, v10, v11);
}

- (void)dateNode:(id)a3
{
  v12 = objc_msgSend_value(a3, a2, a3, v3, v4);
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%@", v6, v7, v12);
  objc_msgSend_pushArgString_(self, v9, v8, v10, v11);
}

- (void)durationNode:(id)a3
{
  v6 = objc_msgSend_value(a3, a2, a3, v3, v4);
  sub_221387CBC(*(v6 + 8));
  v16 = TSUDurationFormatterFormatFromDurationUnits();
  v11 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v7, v8, v9, v10);
  v12 = TSUDurationFormatterStringFromTimeIntervalWithFormat();

  objc_msgSend_pushArgString_(self, v13, v12, v14, v15);
}

- (void)arrayNode:(id)a3
{
  v44 = a3;
  v8 = objc_msgSend_numColumns(v44, v4, v5, v6, v7);
  v13 = objc_msgSend_numRows(v44, v9, v10, v11, v12);
  v43 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"array cols:%d rows:%d ", v15, v16, v8, v13);;
  v21 = objc_msgSend_string(MEMORY[0x277CCACA8], v17, v18, v19, v20);
  v26 = v21;
  if (v8)
  {
    v27 = 0;
    do
    {
      if (v13)
      {
        v28 = 0;
        do
        {
          v29 = objc_msgSend_popArgString(self, v22, v23, v24, v25);
          if (objc_msgSend_length(v26, v30, v31, v32, v33))
          {
            v37 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"%@ %@", v35, v36, v29, v26);;
          }

          else
          {
            v37 = v29;
          }

          v38 = v37;

          ++v28;
          v26 = v38;
        }

        while (v13 > v28);
      }

      else
      {
        v38 = v26;
      }

      ++v27;
      v26 = v38;
    }

    while (v8 > v27);
  }

  else
  {
    v38 = v21;
  }

  v39 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"{%@ %@}", v24, v25, v43, v38);

  objc_msgSend_pushArgString_(self, v40, v39, v41, v42);
}

- (void)listNode:(id)a3
{
  v15 = a3;
  v8 = objc_msgSend_numArgs(v15, v4, v5, v6, v7);
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"<list, len:%d>", v10, v11, v8);
  objc_msgSend_pushFunctionOp_numArgs_(self, v13, v12, v8, v14);
}

- (void)letBindNode:(id)a3
{
  v26 = a3;
  v8 = objc_msgSend_identifier(v26, v4, v5, v6, v7);
  isContinued = objc_msgSend_isContinued(v26, v9, v10, v11, v12);
  v21 = objc_msgSend_popArgString(self, v14, v15, v16, v17);
  if (isContinued)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"LET%@(%@, %@, "), v19, v20, CFSTR("-continued"), v8, v21;
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"LET%@(%@, %@, "), v19, v20, &stru_2834BADA0, v8, v21;
  }
  v22 = ;
  objc_msgSend_pushArgString_(self, v23, v22, v24, v25);
}

- (void)lambdaNode:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_identifiers(a3, a2, a3, v3, v4);
  v10 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v7, @"LAMBDA("), v8, v9;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = v6;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v31, v35, 16);
  if (v16)
  {
    v17 = *v32;
    do
    {
      v18 = 0;
      do
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_appendFormat_(v10, v13, @"%@, ", v14, v15, *(*(&v31 + 1) + 8 * v18++));
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v31, v35, 16);
    }

    while (v16);
  }

  v23 = objc_msgSend_popArgString(self, v19, v20, v21, v22);
  v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%@%@"), v25, v26, v10, v23, v31);
  objc_msgSend_pushArgString_(self, v28, v27, v29, v30);
}

- (void)endScopeNode:(id)a3
{
  v17 = objc_msgSend_popArgString(self, a2, a3, v3, v4);
  v10 = objc_msgSend_popArgString(self, v6, v7, v8, v9);
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%@%@"), v11, v12, v10, v17);
  objc_msgSend_pushArgString_(self, v14, v13, v15, v16);
}

- (void)variableNode:(id)a3
{
  v31 = a3;
  v8 = objc_msgSend_identifier(v31, v4, v5, v6, v7);

  v13 = MEMORY[0x277CCACA8];
  if (v8)
  {
    v14 = objc_msgSend_identifier(v31, v9, v10, v11, v12);
    v19 = objc_msgSend_symbol(v31, v15, v16, v17, v18);
    v23 = objc_msgSend_stringWithFormat_(v13, v20, @"<<%@|%u>>", v21, v22, v14, v19);
  }

  else
  {
    v27 = objc_msgSend_symbol(v31, v9, v10, v11, v12);
    v23 = objc_msgSend_stringWithFormat_(v13, v28, @"<<var %u>>", v29, v30, v27);
  }

  objc_msgSend_pushArgString_(self, v24, v23, v25, v26);
}

- (void)unboundIdentNode:(id)a3
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_fullIdentifier(a3, a2, a3, v3, v4);
  v14 = objc_msgSend_stringWithFormat_(v6, v8, @"<<%@>>", v9, v10, v7);

  objc_msgSend_pushArgString_(self, v11, v14, v12, v13);
}

- (void)anyReferenceNode:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_relativeCellCoord(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_refFlags(v4, v10, v11, v12, v13);
  v19 = objc_msgSend_containingCell(self, v15, v16, v17, v18);
  v24 = (v19 & 0xFFFF00000000) == 0x7FFF00000000 || v19 == 0x7FFFFFFF;
  if (!v24 || (v14 & 0x30) == 0x30)
  {
    if (WORD2(v9) == 0x7FFF)
    {
      v25 = 0;
    }

    else
    {
      if ((v14 & 0x10) == 0)
      {
        objc_msgSend_containingCell(self, v20, v21, v22, v23);
      }

      v25 = TSUColumnLabel();
    }

    if (v9 == 0x7FFFFFFF)
    {
      v29 = 0;
    }

    else
    {
      if ((v14 & 0x20) == 0)
      {
        objc_msgSend_containingCell(self, v20, v21, v22, v23);
      }

      v29 = TSURowLabel();
    }

    if ((v14 & 0x10) != 0)
    {
      v42 = @"$";
    }

    else
    {
      v42 = &stru_2834BADA0;
    }

    v31 = v42;
    if ((v14 & 0x20) != 0)
    {
      v43 = @"$";
    }

    else
    {
      v43 = &stru_2834BADA0;
    }

    v44 = v43;
    v37 = v44;
    v48 = (v14 >> 2) & 3;
    if (v48 > 1)
    {
      if (v48 != 2)
      {
        v52 = MEMORY[0x277D81150];
        v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSCEFormulaTreePrinter anyReferenceNode:]", v46, v47);
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaTreePrinter.mm", v55, v56);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v58, v53, v57, 463, 0, "We shouldn't actually reach here - the tag indicates this reference is valid or spanning");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
        goto LABEL_48;
      }

      v49 = v31;
      v50 = v25;
    }

    else
    {
      v49 = v44;
      v50 = v29;
      if (!v48)
      {
        v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v45, @"%@%@%@%@", v46, v47, v31, v25, v44, v29);
        goto LABEL_45;
      }
    }

    v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v45, @"%@%@", v46, v47, v49, v50);
    goto LABEL_45;
  }

  if ((v14 & 0x10) != 0)
  {
    TSUColumnLabel();
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%+d", v22, v23, SWORD2(v9));
  }
  v25 = ;
  if ((v14 & 0x20) != 0)
  {
    TSURowLabel();
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%+d", v27, v28, v9);
  }
  v29 = ;
  v30 = @"C";
  if ((v14 & 0x10) != 0)
  {
    v30 = @"$";
  }

  v31 = v30;
  v32 = @"R";
  if ((v14 & 0x20) != 0)
  {
    v32 = @"$";
  }

  v33 = v32;
  v37 = v33;
  v38 = (v14 >> 2) & 3;
  if (v38 <= 1)
  {
    v39 = v33;
    v40 = v29;
    if (!v38)
    {
      v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"[%@%@, %@%@]", v35, v36, v31, v25, v33, v29);
LABEL_45:
      v51 = v41;
      goto LABEL_49;
    }

LABEL_26:
    v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"[%@%@]", v35, v36, v39, v40);
    goto LABEL_45;
  }

  if (v38 == 2)
  {
    v39 = v31;
    v40 = v25;
    goto LABEL_26;
  }

  v63 = MEMORY[0x277D81150];
  v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSCEFormulaTreePrinter anyReferenceNode:]", v35, v36);
  v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaTreePrinter.mm", v66, v67);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v69, v64, v68, 481, 0, "We shouldn't actually reach here - the tag indicates this reference is valid or spanning");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
LABEL_48:
  v51 = @"#REF!";
LABEL_49:

  if (v14)
  {
    v96._lower = objc_msgSend_tableUID(v4, v74, v75, v76, v77);
    v96._upper = v78;
    v82 = objc_msgSend_calcEngine(self, v78, v79, v80, v81);
    v86 = objc_msgSend_tableResolverForTableUID_(v82, v83, &v96, v84, v85);

    if (v86)
    {
      objc_msgSend_tableName(v86, v87, v88, v89, v90);
    }

    else
    {
      TSKUIDStruct::description(&v96);
    }
    v91 = ;
    v95 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v92, @"%@::%@", v93, v94, v91, v51);

    v51 = v95;
  }

  objc_msgSend_pushArgString_(self, v74, v51, v76, v77);
}

- (void)linkedRefNode:(id)a3
{
  v4 = a3;
  v30._lower = objc_msgSend_tableUID(v4, v5, v6, v7, v8);
  v30._upper = v9;
  v13 = objc_msgSend_linkTag(v4, v9, v10, v11, v12);
  v14 = MEMORY[0x277CCACA8];
  if (v13 == 64)
  {
    v15 = TSKUIDStruct::description(&v30);
    v19 = objc_msgSend_stringWithFormat_(v14, v20, @"linkedColumnRef(%@) ", v21, v22, v15);
  }

  else
  {
    if (v13 == 65)
    {
      v15 = TSKUIDStruct::description(&v30);
      objc_msgSend_stringWithFormat_(v14, v16, @"linkedRowRef(%@) ", v17, v18, v15);
    }

    else
    {
      v15 = TSKUIDStruct::description(&v30);
      objc_msgSend_stringWithFormat_(v14, v23, @"linkedCellRef(%@) ", v24, v25, v15);
    }
    v19 = ;
  }

  v26 = v19;

  objc_msgSend_pushArgString_(self, v27, v26, v28, v29);
}

- (void)uidReferenceNode:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_undoTractList(v4, v5, v6, v7, v8);
  v10 = MEMORY[0x277CCACA8];
  v15 = objc_msgSend_preserveFlags(v9, v11, v12, v13, v14);
  v19 = objc_msgSend_stringWithFormat_(v10, v16, @"UidRef(%@ Preserve:%u) ", v17, v18, v9, v15);
  if (objc_msgSend_refFlags(v4, v20, v21, v22, v23))
  {
    v40._lower = objc_msgSend_tableUID(v4, v24, v25, v26, v27);
    v40._upper = v32;
    v28 = TSKUIDStruct::description(&v40);
    v36 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"%@::%@", v34, v35, v28, v19);
    objc_msgSend_pushArgString_(self, v37, v36, v38, v39);
  }

  else
  {
    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%@", v26, v27, v19);
    objc_msgSend_pushArgString_(self, v29, v28, v30, v31);
  }
}

- (void)categoryRefNode:(id)a3
{
  v14 = objc_msgSend_categoryRef(a3, a2, a3, v3, v4);
  v10 = objc_msgSend_description(v14, v6, v7, v8, v9);
  objc_msgSend_pushArgString_(self, v11, v10, v12, v13);
}

@end