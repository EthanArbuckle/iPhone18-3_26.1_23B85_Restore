@interface TSTCellFormulaSpec
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalent:(id)equivalent;
- (BOOL)p_mightBeEqual:(id)equal;
- (NSString)description;
- (TSTCellFormulaSpec)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTCellFormulaSpec)initWithFormulaObject:(id)object fromTableInfo:(id)info fromCellID:(TSUCellCoord)d;
- (TSTCellFormulaSpec)initWithFormulaObject:(id)object locale:(id)locale;
- (id)cellSpecReplacingFormulaObject:(id)object locale:(id)locale;
- (void)p_computeinteractionType:(id)type;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTCellFormulaSpec

- (void)p_computeinteractionType:(id)type
{
  typeCopy = type;
  self->_interactionType = 1;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v30);
  v9 = objc_msgSend_const_astNodeArray(self->_formulaObject, v5, v6, v7, v8);
  sub_22113D1F8(v21, v9, &v30, typeCopy);
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

- (TSTCellFormulaSpec)initWithFormulaObject:(id)object locale:(id)locale
{
  objectCopy = object;
  localeCopy = locale;
  v31.receiver = self;
  v31.super_class = TSTCellFormulaSpec;
  v12 = [(TSTCellSpec *)&v31 init];
  if (v12)
  {
    if (!objectCopy)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCellFormulaSpec initWithFormulaObject:locale:]", v10, v11);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormulaSpec.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 239, 0, "TSTCellFormulaSpec requires a formula.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
      v18 = 0;
      goto LABEL_6;
    }

    v13 = objc_msgSend_copy(objectCopy, v8, v9, v10, v11);
    formulaObject = v12->_formulaObject;
    v12->_formulaObject = v13;

    objc_msgSend_p_computeinteractionType_(v12, v15, localeCopy, v16, v17);
  }

  v18 = v12;
LABEL_6:

  return v18;
}

- (TSTCellFormulaSpec)initWithFormulaObject:(id)object fromTableInfo:(id)info fromCellID:(TSUCellCoord)d
{
  objectCopy = object;
  infoCopy = info;
  v18 = objc_msgSend_calcEngine(infoCopy, v10, v11, v12, v13);
  if (objectCopy)
  {
    v39.coordinate = d;
    v39._tableUID._lower = objc_msgSend_tableUID(infoCopy, v14, v15, v16, v17);
    v39._tableUID._upper = v19;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v40, v18, &v39);

    v18 = objc_msgSend_copyByRewritingReferencesToUidForm_(objectCopy, v20, &v40, v21, v22);
    v27 = objc_msgSend_calcEngine(infoCopy, v23, v24, v25, v26);
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

- (id)cellSpecReplacingFormulaObject:(id)object locale:(id)locale
{
  objectCopy = object;
  localeCopy = locale;
  v7 = [TSTCellFormulaSpec alloc];
  v10 = objc_msgSend_initWithFormulaObject_locale_(v7, v8, objectCopy, localeCopy, v9);

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

- (BOOL)p_mightBeEqual:(id)equal
{
  equalCopy = equal;
  v9 = objc_msgSend_asFormulaSpec(equalCopy, v5, v6, v7, v8);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy || objc_msgSend_p_mightBeEqual_(self, v4, equalCopy, v6, v7))
  {
    formulaObject = self->_formulaObject;
    v10 = objc_msgSend_formulaObject(equalCopy, v4, v5, v6, v7);
    isEqualToFormula = objc_msgSend_isEqualToFormula_(formulaObject, v11, v10, v12, v13);
  }

  else
  {
    isEqualToFormula = 0;
  }

  return isEqualToFormula;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  if (self == equivalentCopy || objc_msgSend_p_mightBeEqual_(self, v4, equivalentCopy, v6, v7))
  {
    formulaObject = self->_formulaObject;
    v10 = objc_msgSend_formulaObject(equivalentCopy, v4, v5, v6, v7);
    isEquivalentToFormula = objc_msgSend_isEquivalentToFormula_(formulaObject, v11, v10, v12, v13);
  }

  else
  {
    isEquivalentToFormula = 0;
  }

  return isEquivalentToFormula;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSTCellFormulaSpec alloc];
  v9 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, archive, unarchiverCopy, v8);

  return v9;
}

- (TSTCellFormulaSpec)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 16))
  {
    v12 = [TSCEFormulaObject alloc];
    if (*(archive + 3))
    {
      isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v12, v13, *(archive + 3), 0, v14);
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

  v16 = objc_msgSend_context(unarchiverCopy, v6, v7, v8, v9);
  v21 = objc_msgSend_documentRoot(v16, v17, v18, v19, v20);
  v26 = objc_msgSend_documentLocale(v21, v22, v23, v24, v25);
  v29 = objc_msgSend_initWithFormulaObject_locale_(self, v27, v11, v26, v28);

  return v29;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v10 = objc_msgSend_interactionType(self, v6, v7, v8, v9);
  *(archive + 4) |= 0x20u;
  *(archive + 16) = v10;
  v17 = objc_msgSend_formulaObject(self, v11, v12, v13, v14);
  if (v17)
  {
    *(archive + 4) |= 1u;
    v18 = *(archive + 3);
    if (!v18)
    {
      v19 = *(archive + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v19);
      *(archive + 3) = v18;
    }

    objc_msgSend_encodeToArchive_archiver_(v17, v15, v18, archiverCopy, v16);
  }
}

@end