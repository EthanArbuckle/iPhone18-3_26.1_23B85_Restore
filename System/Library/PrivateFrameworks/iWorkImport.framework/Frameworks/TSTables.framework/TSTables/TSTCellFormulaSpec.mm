@interface TSTCellFormulaSpec
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalent:(id)a3;
- (BOOL)p_mightBeEqual:(id)a3;
- (NSString)description;
- (TSTCellFormulaSpec)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSTCellFormulaSpec)initWithFormulaObject:(id)a3 fromTableInfo:(id)a4 fromCellID:(TSUCellCoord)a5;
- (TSTCellFormulaSpec)initWithFormulaObject:(id)a3 locale:(id)a4;
- (id)cellSpecReplacingFormulaObject:(id)a3 locale:(id)a4;
- (void)p_computeinteractionType:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSTCellFormulaSpec

- (void)p_computeinteractionType:(id)a3
{
  v4 = a3;
  self->_interactionType = 1;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v30);
  v9 = objc_msgSend_const_astNodeArray(self->_formulaObject, v5, v6, v7, v8);
  sub_22113D1F8(v21, v9, &v30, v4);
  TSCEASTStreamIterator::rewrite(v21, v10, v11, v12, v13);
  if (v23)
  {
    v14 = v22;
    if ((v24 & 1) == 0 && (v22 & 1) == 0)
    {
      self->_interactionType = 3;
      self->_categoryAggregateType = v27;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = v22;
  }

  if ((v14 & 1) != 0 && ((v24 | v23) & 1) == 0)
  {
    self->_interactionType = 2;
    v15 = v25;
    v18 = objc_msgSend_detailsWithSymbol_attribute_(TSTStockDetails, v16, v15, v26, v17);
    stockDetails = self->_stockDetails;
    self->_stockDetails = v18;
  }

LABEL_9:
  v21[0] = &unk_2834A1FF0;
  v31 = &v29;
  sub_22113E320(&v31);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v21, v20);
}

- (TSTCellFormulaSpec)initWithFormulaObject:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = TSTCellFormulaSpec;
  v12 = [(TSTCellSpec *)&v31 init];
  if (v12)
  {
    if (!v6)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCellFormulaSpec initWithFormulaObject:locale:]", v10, v11);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormulaSpec.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 239, 0, "TSTCellFormulaSpec requires a formula.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
      v18 = 0;
      goto LABEL_6;
    }

    v13 = objc_msgSend_copy(v6, v8, v9, v10, v11);
    formulaObject = v12->_formulaObject;
    v12->_formulaObject = v13;

    objc_msgSend_p_computeinteractionType_(v12, v15, v7, v16, v17);
  }

  v18 = v12;
LABEL_6:

  return v18;
}

- (TSTCellFormulaSpec)initWithFormulaObject:(id)a3 fromTableInfo:(id)a4 fromCellID:(TSUCellCoord)a5
{
  v8 = a3;
  v9 = a4;
  v18 = objc_msgSend_calcEngine(v9, v10, v11, v12, v13);
  if (v8)
  {
    v39.coordinate = a5;
    v39._tableUID._lower = objc_msgSend_tableUID(v9, v14, v15, v16, v17);
    v39._tableUID._upper = v19;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v40, v18, &v39);

    v18 = objc_msgSend_copyByRewritingReferencesToUidForm_(v8, v20, &v40, v21, v22);
    v27 = objc_msgSend_calcEngine(v9, v23, v24, v25, v26);
    v32 = objc_msgSend_documentLocale(v27, v28, v29, v30, v31);
    v35 = objc_msgSend_initWithFormulaObject_locale_(self, v33, v18, v32, v34);
  }

  else
  {
    v27 = objc_msgSend_documentLocale(v18, v14, v15, v16, v17);
    v35 = objc_msgSend_initWithFormulaObject_locale_(self, v36, 0, v27, v37);
  }

  return v35;
}

- (id)cellSpecReplacingFormulaObject:(id)a3 locale:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [TSTCellFormulaSpec alloc];
  v10 = objc_msgSend_initWithFormulaObject_locale_(v7, v8, v5, v6, v9);

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  formulaObject = self->_formulaObject;
  if (formulaObject)
  {
    v10 = objc_msgSend_description(self->_formulaObject, v4, v5, v6, v7);
    objc_msgSend_stringWithFormat_(v3, v11, @"<%@: %p>: %@", v12, v13, v8, self, v10);
  }

  else
  {
    v10 = @"null formula";
    objc_msgSend_stringWithFormat_(v3, v4, @"<%@: %p>: %@", v6, v7, v8, self, @"null formula");
  }
  v14 = ;
  if (formulaObject)
  {
  }

  return v14;
}

- (BOOL)p_mightBeEqual:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_asFormulaSpec(v4, v5, v6, v7, v8);
  if (v9)
  {
    interactionType = self->_interactionType;
    v15 = interactionType == objc_msgSend_interactionType(v9, v10, v11, v12, v13);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (self == v8 || objc_msgSend_p_mightBeEqual_(self, v4, v8, v6, v7))
  {
    formulaObject = self->_formulaObject;
    v10 = objc_msgSend_formulaObject(v8, v4, v5, v6, v7);
    isEqualToFormula = objc_msgSend_isEqualToFormula_(formulaObject, v11, v10, v12, v13);
  }

  else
  {
    isEqualToFormula = 0;
  }

  return isEqualToFormula;
}

- (BOOL)isEquivalent:(id)a3
{
  v8 = a3;
  if (self == v8 || objc_msgSend_p_mightBeEqual_(self, v4, v8, v6, v7))
  {
    formulaObject = self->_formulaObject;
    v10 = objc_msgSend_formulaObject(v8, v4, v5, v6, v7);
    isEquivalentToFormula = objc_msgSend_isEquivalentToFormula_(formulaObject, v11, v10, v12, v13);
  }

  else
  {
    isEquivalentToFormula = 0;
  }

  return isEquivalentToFormula;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSTCellFormulaSpec alloc];
  v9 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, a3, v5, v8);

  return v9;
}

- (TSTCellFormulaSpec)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v10 = a4;
  if (*(a3 + 16))
  {
    v12 = [TSCEFormulaObject alloc];
    if (*(a3 + 3))
    {
      isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v12, v13, *(a3 + 3), 0, v14);
    }

    else
    {
      isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v12, v13, &TSCE::_FormulaArchive_default_instance_, 0, v14);
    }

    v11 = isPreUFF;
  }

  else
  {
    v11 = 0;
  }

  v16 = objc_msgSend_context(v10, v6, v7, v8, v9);
  v21 = objc_msgSend_documentRoot(v16, v17, v18, v19, v20);
  v26 = objc_msgSend_documentLocale(v21, v22, v23, v24, v25);
  v29 = objc_msgSend_initWithFormulaObject_locale_(self, v27, v11, v26, v28);

  return v29;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v20 = a4;
  v10 = objc_msgSend_interactionType(self, v6, v7, v8, v9);
  *(a3 + 4) |= 0x20u;
  *(a3 + 16) = v10;
  v17 = objc_msgSend_formulaObject(self, v11, v12, v13, v14);
  if (v17)
  {
    *(a3 + 4) |= 1u;
    v18 = *(a3 + 3);
    if (!v18)
    {
      v19 = *(a3 + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v19);
      *(a3 + 3) = v18;
    }

    objc_msgSend_encodeToArchive_archiver_(v17, v15, v18, v20, v16);
  }
}

@end