@interface TSTArgumentPlaceholderNode
+ (id)argumentSpecForFunctionIndex:(unsigned __int16)a3 argumentIndex:(int)a4;
- (BOOL)hasMenu;
- (BOOL)isEqualToExpressionNode:(id)a3;
- (TSTArgumentPlaceholderNode)initWithContext:(id)a3 argumentSpec:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3;
- (id)argumentName;
- (id)bakedValue;
- (id)copyIntoContext:(id)a3 bakeModes:(BOOL)a4 children:(id)a5;
- (id)detokenizedText;
- (id)initAsCopyOf:(id)a3 intoContext:(id)a4 children:(id)a5;
- (id)modes;
- (id)string;
- (unint64_t)allowsNewIdentifier;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5;
- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_invalidate;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setArgumentSpec:(id)a3;
- (void)setMode:(unsigned __int16)a3;
@end

@implementation TSTArgumentPlaceholderNode

- (unint64_t)allowsNewIdentifier
{
  v5 = objc_msgSend_argumentSpec(self, a2, v2, v3, v4);
  v10 = objc_msgSend_argumentType(v5, v6, v7, v8, v9) == 20;

  return 2 * v10;
}

- (TSTArgumentPlaceholderNode)initWithContext:(id)a3 argumentSpec:(id)a4 firstIndex:(unint64_t)a5 lastIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = TSTArgumentPlaceholderNode;
  v12 = [(TSTExpressionNode *)&v18 initWithContext:v10 children:0 firstIndex:a5 lastIndex:a6];
  v16 = v12;
  if (v12)
  {
    v12->_mode = -1;
    objc_msgSend_setArgumentSpec_(v12, v13, v11, v14, v15);
  }

  return v16;
}

- (id)initAsCopyOf:(id)a3 intoContext:(id)a4 children:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  v14 = TSUDynamicCast();
  if (!v14)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTArgumentPlaceholderNode initAsCopyOf:intoContext:children:]", v12, v13);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArgumentPlaceholderNode.mm", v18, v19);
    v22 = @"nil";
    if (v8)
    {
      v22 = v8;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v21, 114, 0, "Unexpected object in initAsCopyOf:... expected TSTArgumentPlaceholderNode, got %@", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v30.receiver = self;
  v30.super_class = TSTArgumentPlaceholderNode;
  v27 = [(TSTExpressionNode *)&v30 initAsCopyOf:v8 intoContext:v9 children:v10];
  v28 = v27;
  if (v27)
  {
    v27[68] = v14[68];
  }

  return v28;
}

- (id)copyIntoContext:(id)a3 bakeModes:(BOOL)a4 children:(id)a5
{
  v6 = a4;
  v8 = a3;
  v13 = a5;
  if (v6 && self->_mode != 0xFFFF)
  {
    v15 = objc_msgSend_argumentSpec(self, v9, v10, v11, v12);
    v19 = v15;
    if (!v15)
    {
      Index_lastIndex = 0;
LABEL_15:

      goto LABEL_16;
    }

    v20 = objc_msgSend_valueForModeIndex_(v15, v16, self->_mode, v17, v18);
    v25 = objc_msgSend_nativeType(v20, v21, v22, v23, v24);
    if (v25 == 2)
    {
      v64 = objc_msgSend_coercedBool(v20, v26, v27, v28, v29);
      v65 = [TSTBooleanNode alloc];
      Index = objc_msgSend_firstIndex(self, v66, v67, v68, v69);
      v75 = objc_msgSend_lastIndex(self, v71, v72, v73, v74);
      Index_lastIndex = objc_msgSend_initWithContext_BOOLValue_firstIndex_lastIndex_(v65, v76, v8, v64, Index, v75);
    }

    else
    {
      if (v25 == 5)
      {
        objc_msgSend_coercedDouble(v20, v26, v27, v28, v29);
        v48 = [TSTNumberNode alloc];
        TSUDecimal::operator=();
        v34 = objc_msgSend_objectLocale(v8, v49, v50, v51, v52);
        v57 = objc_msgSend_firstIndex(self, v53, v54, v55, v56);
        v62 = objc_msgSend_lastIndex(self, v58, v59, v60, v61);
        v47 = objc_msgSend_initWithContext_number_locale_firstIndex_lastIndex_(v48, v63, v8, v90, v34, v57, v62);
      }

      else
      {
        if (v25 != 7)
        {
          v77 = MEMORY[0x277D81150];
          v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSTArgumentPlaceholderNode copyIntoContext:bakeModes:children:]", v28, v29);
          v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArgumentPlaceholderNode.mm", v80, v81);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v83, v78, v82, 149, 0, "Unexpected mode value type");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85, v86, v87);
          Index_lastIndex = 0;
          goto LABEL_14;
        }

        v30 = objc_msgSend_objectLocale(v8, v26, v27, v28, v29);
        v34 = objc_msgSend_coercedStringWithLocale_(v20, v31, v30, v32, v33);

        v35 = [TSTStringNode alloc];
        v40 = objc_msgSend_firstIndex(self, v36, v37, v38, v39);
        v45 = objc_msgSend_lastIndex(self, v41, v42, v43, v44);
        v47 = objc_msgSend_initWithContext_stringValue_firstIndex_lastIndex_(v35, v46, v8, v34, v40, v45);
      }

      Index_lastIndex = v47;
    }

LABEL_14:

    goto LABEL_15;
  }

  v89.receiver = self;
  v89.super_class = TSTArgumentPlaceholderNode;
  Index_lastIndex = [(TSTExpressionNode *)&v89 copyIntoContext:v8 bakeModes:v6 children:v13];
LABEL_16:

  return Index_lastIndex;
}

- (void)p_invalidate
{
  detokenizedText = self->_detokenizedText;
  self->_detokenizedText = 0;

  v12 = objc_msgSend_tokenAttachment(self, v4, v5, v6, v7);
  objc_msgSend_invalidate(v12, v8, v9, v10, v11);
}

- (void)setMode:(unsigned __int16)a3
{
  if (self->_mode != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_mode = a3;

    objc_msgSend_p_invalidate(self, v7, v8, v9, v10);
  }
}

- (id)modes
{
  v6 = objc_msgSend_argumentSpec(self, a2, v2, v3, v4);
  v11 = v6;
  if (v6 && (objc_msgSend_isMode(v6, v7, v8, v9, v10) & 1) != 0)
  {
    v16 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13, v14, v15);
    v21 = objc_msgSend_numModes(v11, v17, v18, v19, v20);
    v30 = objc_msgSend_objectLocale(self, v22, v23, v24, v25);
    if (v21)
    {
      for (i = 0; i < v21; ++i)
      {
        if (objc_msgSend_isModeEnabled_(v11, v26, i, v28, v29))
        {
          v32 = objc_msgSend_localizedModeNameForModeIndex_locale_(v11, v26, i, v30, v29);
          v33 = MEMORY[0x277D812A8];
          v37 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v34, i, v35, v36);
          v40 = objc_msgSend_pairWithFirst_second_(v33, v38, v32, v37, v39);
          objc_msgSend_addObject_(v16, v41, v40, v42, v43);
        }
      }
    }

    v44 = objc_msgSend_copy(v16, v26, v27, v28, v29);
  }

  else
  {
    v44 = MEMORY[0x277CBEBF8];
  }

  return v44;
}

- (id)argumentName
{
  v10 = objc_msgSend_argumentSpec(self, a2, v2, v3, v4);
  if (v10)
  {
    v11 = objc_msgSend_objectLocale(self, v6, v7, v8, v9);
    v15 = objc_msgSend_localizedArgumentNameForLocale_(v10, v12, v11, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setArgumentSpec:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_argumentSpec(self, v5, v6, v7, v8);

  v23.receiver = self;
  v23.super_class = TSTArgumentPlaceholderNode;
  [(TSTExpressionNode *)&v23 setArgumentSpec:v4];
  if (v9 != v4)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    if ((objc_msgSend_isOptional(v4, v10, v11, v12, v13) & 1) == 0 && objc_msgSend_isMode(v4, v14, v15, v16, v17))
    {
      v18 = objc_msgSend_defaultModeIndex(v4, v14, v15, v16, v17);
      objc_msgSend_setMode_(self, v19, v18, v20, v21);
    }

    if ((objc_msgSend_isMode(v4, v14, v15, v16, v17) & 1) == 0)
    {
LABEL_7:
      objc_msgSend_setMode_(self, v10, 0xFFFFLL, v12, v13);
    }

    objc_msgSend_p_invalidate(self, v10, v22, v12, v13);
  }
}

- (id)bakedValue
{
  if (self->_mode == 0xFFFF)
  {
    v6 = self;
  }

  else
  {
    v7 = objc_msgSend_context(self, a2, v2, v3, v4);
    v6 = objc_msgSend_copyIntoContext_bakeModes_children_(self, v8, v7, 1, 0);
  }

  return v6;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)a3
{
  mode = self->_mode;
  objc_msgSend_recordExpression_data_(a3, a2, self, mode | 0xC000000, 1);
  v4 = mode | 0xC000000;
  v5 = 1;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSTArgumentPlaceholderNode;
    v5 = [(TSTExpressionNode *)&v7 isEqualToExpressionNode:v4]&& self->_mode == v4->_mode;
  }

  return v5;
}

- (id)string
{
  v6 = objc_msgSend_argumentSpec(self, a2, v2, v3, v4);

  if (!v6)
  {
    v33 = sub_2214AAEA8(v7, v8, v9, v10, v11);
    v43 = objc_msgSend_localizedStringForKey_value_table_(v33, v42, @"value", &stru_2834BADA0, @"TSTables");
    goto LABEL_10;
  }

  v12 = objc_msgSend_mode(self, v8, v9, v10, v11);
  if (v12 == 0xFFFF)
  {
    goto LABEL_8;
  }

  v17 = v12;
  v18 = objc_msgSend_argumentSpec(self, v13, v14, v15, v16);
  if ((objc_msgSend_isMode(v18, v19, v20, v21, v22) & 1) == 0)
  {

    goto LABEL_8;
  }

  v27 = objc_msgSend_argumentSpec(self, v23, v24, v25, v26);
  v32 = objc_msgSend_numModes(v27, v28, v29, v30, v31);

  if (v17 >= v32)
  {
LABEL_8:
    v33 = objc_msgSend_argumentSpec(self, v13, v14, v15, v16);
    v38 = objc_msgSend_objectLocale(self, v44, v45, v46, v47);
    v41 = objc_msgSend_localizedArgumentNameForLocale_(v33, v48, v38, v49, v50);
    goto LABEL_9;
  }

  v33 = objc_msgSend_argumentSpec(self, v13, v14, v15, v16);
  v38 = objc_msgSend_objectLocale(self, v34, v35, v36, v37);
  v41 = objc_msgSend_localizedModeNameForModeIndex_locale_(v33, v39, v17, v38, v40);
LABEL_9:
  v43 = v41;

LABEL_10:

  return v43;
}

- (void)insertFormulaText:(id)a3 printingOptions:(unsigned int)a4
{
  v4 = a4;
  v43 = a3;
  if (v4)
  {
    v10 = objc_msgSend_whitespaceBefore(self, v6, v7, v8, v9);

    if (v10)
    {
      v15 = objc_msgSend_whitespaceBefore(self, v11, v12, v13, v14);
      objc_msgSend_takeText_(v43, v16, v15, v17, v18);
    }
  }

  v19 = [TSTWPTokenAttachment alloc];
  v24 = objc_msgSend_context(self, v20, v21, v22, v23);
  v27 = objc_msgSend_initWithContext_expressionNode_(v19, v25, v24, self, v26);

  objc_msgSend_insertUIGraphicalAttachment_withLanguage_(v43, v28, v27, *MEMORY[0x277D81448], v29);
  if (v4)
  {
    v34 = objc_msgSend_whitespaceAfter(self, v30, v31, v32, v33);

    if (v34)
    {
      v39 = objc_msgSend_whitespaceAfter(self, v35, v36, v37, v38);
      objc_msgSend_takeText_(v43, v40, v39, v41, v42);
    }
  }
}

- (id)detokenizedText
{
  if (!self->_detokenizedText)
  {
    if (objc_msgSend_mode(self, a2, v2, v3, v4) == 0xFFFF)
    {
      detokenizedText = self->_detokenizedText;
      self->_detokenizedText = &stru_2834BADA0;
    }

    else
    {
      detokenizedText = objc_msgSend_bakedValue(self, v6, v7, v8, v9);
      if (detokenizedText == self)
      {
        v15 = MEMORY[0x277D81150];
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTArgumentPlaceholderNode detokenizedText]", v13, v14);
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArgumentPlaceholderNode.mm", v18, v19);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 300, 0, "expected set placeholder node to return a different node for bakedValue");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
      }

      v26 = objc_msgSend_detokenizedText(detokenizedText, v11, v12, v13, v14);
      v27 = self->_detokenizedText;
      self->_detokenizedText = v26;
    }
  }

  v28 = self->_detokenizedText;

  return v28;
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)a3 hostCell:(TSUCellCoord)a4 symbolTable:(void *)a5
{
  v7 = objc_msgSend_children(self, a2, a3, *&a4, a5);
  v12 = objc_msgSend_count(v7, v8, v9, v10, v11);

  if (v12)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTArgumentPlaceholderNode buildASTNodeArray:hostCell:symbolTable:]", v15, v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArgumentPlaceholderNode.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 312, 0, "ArgumentPlaceholderNode shouldn't have children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_argumentSpec(self, v13, v14, v15, v16);

  if (!v28)
  {
    TSCEASTTokenElement::appendTokenElement(a3, 1, v30, v31, v32);
    goto LABEL_15;
  }

  v33 = objc_msgSend_mode(self, v29, v30, v31, v32);
  if (v33 == 0xFFFF)
  {
    goto LABEL_13;
  }

  v38 = v33;
  v39 = objc_msgSend_argumentSpec(self, v34, v35, v36, v37);
  if ((objc_msgSend_isMode(v39, v40, v41, v42, v43) & 1) == 0)
  {

    goto LABEL_13;
  }

  v48 = objc_msgSend_argumentSpec(self, v44, v45, v46, v47);
  v53 = objc_msgSend_numModes(v48, v49, v50, v51, v52);

  if (v38 >= v53)
  {
LABEL_13:
    v58 = objc_msgSend_argumentSpec(self, v34, v35, v36, v37);
    isOptional = objc_msgSend_isOptional(v58, v78, v79, v80, v81);
    TSCEASTTokenElement::appendTokenElement(a3, isOptional, v83, v84, v85);
    goto LABEL_14;
  }

  v54 = objc_msgSend_argumentSpec(self, v34, v35, v36, v37);
  v58 = objc_msgSend_valueForModeIndex_(v54, v55, v38, v56, v57);

  v67 = objc_msgSend_nativeType(v58, v59, v60, v61, v62);
  if ((v67 - 4) < 2)
  {
    v68 = objc_msgSend_number(v58, v63, v64, v65, v66);
    v118._decimal.w[0] = objc_msgSend_decimalRepresentation(v68, v98, v99, v100, v101);
    v118._decimal.w[1] = v102;
    TSCEASTNumberElement::appendNumberElement(a3, &v118, v103, v104, v105);
LABEL_23:

    goto LABEL_14;
  }

  if (v67 != 2)
  {
    if (v67 == 7)
    {
      v68 = objc_msgSend_objectLocale(self, v63, v64, v65, v66);
      v72 = objc_msgSend_asStringWithLocale_(v58, v69, v68, v70, v71);
      TSCEASTStringElement::appendStringElement(a3, v72, v73);
    }

    else
    {
      v68 = objc_msgSend_argumentSpec(self, v63, v64, v65, v66);
      v114 = objc_msgSend_isOptional(v68, v110, v111, v112, v113);
      TSCEASTTokenElement::appendTokenElement(a3, v114, v115, v116, v117);
    }

    goto LABEL_23;
  }

  v106 = objc_msgSend_BOOLean(v58, v63, v64, v65, v66);
  TSCEASTBooleanElement::appendBooleanElement(a3, v106, v107, v108, v109);
LABEL_14:

LABEL_15:
  v86 = objc_msgSend_whitespaceBefore(self, v74, v75, v76, v77);

  if (v86)
  {
    v91 = objc_msgSend_whitespaceBefore(self, v87, v88, v89, v90);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 31, v91);
  }

  v92 = objc_msgSend_whitespaceAfter(self, v87, v88, v89, v90);

  if (v92)
  {
    v97 = objc_msgSend_whitespaceAfter(self, v93, v94, v95, v96);
    TSCEASTWhitespaceElement::appendWhitespaceElement(a3, 32, v97);
  }
}

- (BOOL)hasMenu
{
  v10 = objc_msgSend_argumentSpec(self, a2, v2, v3, v4);
  if (v10)
  {
    v11 = objc_msgSend_argumentSpec(self, v6, v7, v8, v9);
    isMode = objc_msgSend_isMode(v11, v12, v13, v14, v15);
  }

  else
  {
    isMode = 0;
  }

  return isMode;
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812E4498[228], v5, v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v10, v9);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_2212F6D24, off_2812E4498[228], v5);

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v9, v8);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 3))
  {
    v7 = *(a3 + 3);
  }

  else
  {
    v7 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v16.receiver = self;
  v16.super_class = TSTArgumentPlaceholderNode;
  [(TSTExpressionNode *)&v16 loadFromArchive:v7 unarchiver:v6];
  v10 = *(a3 + 4);
  if ((~v10 & 6) == 0)
  {
    v11 = objc_msgSend_argumentSpecForFunctionIndex_argumentIndex_(TSTArgumentPlaceholderNode, v8, *(a3 + 16), *(a3 + 9), v9);
    objc_msgSend_setArgumentSpec_(self, v12, v11, v13, v14);

    v10 = *(a3 + 4);
  }

  if ((v10 & 8) != 0)
  {
    v15 = (a3 + 40);
  }

  else
  {
    v15 = &word_2217E0E1E;
  }

  self->_mode = *v15;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  *(a3 + 4) |= 1u;
  v7 = *(a3 + 3);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(a3 + 3) = v7;
  }

  v40.receiver = self;
  v40.super_class = TSTArgumentPlaceholderNode;
  [(TSTExpressionNode *)&v40 saveToArchive:v7 archiver:v6];
  v13 = objc_msgSend_argumentSpec(self, v9, v10, v11, v12);

  if (v13)
  {
    v18 = objc_msgSend_argumentSpec(self, v14, v15, v16, v17);
    v23 = objc_msgSend_functionSpec(v18, v19, v20, v21, v22);
    v28 = objc_msgSend_functionIndex(v23, v24, v25, v26, v27);
    *(a3 + 4) |= 2u;
    *(a3 + 8) = v28;

    v33 = objc_msgSend_argumentSpec(self, v29, v30, v31, v32);
    v38 = objc_msgSend_index(v33, v34, v35, v36, v37);
    *(a3 + 4) |= 4u;
    *(a3 + 9) = v38;
  }

  mode = self->_mode;
  *(a3 + 4) |= 8u;
  *(a3 + 10) = mode;
}

+ (id)argumentSpecForFunctionIndex:(unsigned __int16)a3 argumentIndex:(int)a4
{
  v6 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, a2, a3, *&a4, v4);
  v10 = v6;
  if (v6)
  {
    v11 = objc_msgSend_argumentSpecForIndex_(v6, v7, a4, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end