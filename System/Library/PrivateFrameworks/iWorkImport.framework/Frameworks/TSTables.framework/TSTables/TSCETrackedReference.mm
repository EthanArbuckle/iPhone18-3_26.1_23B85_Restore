@interface TSCETrackedReference
- (BOOL)isEqualToTrackedReference:(id)reference;
- (TSCECellRef)refersToCellRefForCalculationEngine:(SEL)engine referenceTrackerUID:(id)d;
- (TSCETrackedReference)initWithCellRef:(const TSCECellRef *)ref;
- (TSCETrackedReference)initWithRangeRef:(const TSCERangeRef *)ref;
- (TSCETrackedReference)initWithSpanningRangeRef:(const TSCESpanningRangeRef *)ref;
- (TSCETrackedReference)initWithTrackedReferenceTSPObjectDeprecated:(id)deprecated;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getPrecedentsWithCalcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d;
- (id)initByCopyingASTNodeArray:(TSCEASTNodeArray *)array atFormulaCoord:(const TSUCellCoord *)coord;
- (id)initFromArchive:(const void *)archive;
- (id)initFromExpandedArchive:(const void *)archive;
- (id)precedentsWithCalcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d;
- (id)referencesForCalcEngine:(id)engine referenceTrackerUID:(const TSKUIDStruct *)d;
- (void)dealloc;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)encodeToExpandedArchive:(void *)archive archiver:(id)archiver;
- (void)registerWithCalcEngine:(id)engine inOwner:(const TSKUIDStruct *)owner;
- (void)replaceContentsWithContentsOfTrackedReference:(id)reference;
@end

@implementation TSCETrackedReference

- (void)dealloc
{
  TSCEASTNodeArray::freeNodeArray(self->_AST, a2);
  v3.receiver = self;
  v3.super_class = TSCETrackedReference;
  [(TSCETrackedReference *)&v3 dealloc];
}

- (BOOL)isEqualToTrackedReference:(id)reference
{
  referenceCopy = reference;
  v9 = referenceCopy;
  if (referenceCopy && (v10 = objc_msgSend_formulaCoord(referenceCopy, v5, v6, v7, v8), formulaCoord = self->_formulaCoord, formulaCoord.row == v10) && ((*&formulaCoord ^ v10) & 0x101FFFF00000000) == 0)
  {
    AST = self->_AST;
    v19 = objc_msgSend_ast(v9, v11, v12, v13, v14);
    v16 = sub_2215C5CA0(AST, v19);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (TSCETrackedReference)initWithCellRef:(const TSCECellRef *)ref
{
  v5._upper = self;
  v6 = TSCETrackedReference;
  v3 = objc_msgSendSuper2(&v5._upper, sel_init);
  if (v3)
  {
    v3[2] = 0x7FFF7FFFFFFFLL;
    __C();
  }

  return 0;
}

- (TSCETrackedReference)initWithRangeRef:(const TSCERangeRef *)ref
{
  v5._upper = self;
  v6 = TSCETrackedReference;
  v3 = objc_msgSendSuper2(&v5._upper, sel_init);
  if (v3)
  {
    v3[2] = 0x7FFF7FFFFFFFLL;
    __C();
  }

  return 0;
}

- (TSCETrackedReference)initWithSpanningRangeRef:(const TSCESpanningRangeRef *)ref
{
  v5.receiver = self;
  v5.super_class = TSCETrackedReference;
  v3 = [(TSCETrackedReference *)&v5 init];
  if (v3)
  {
    v3->_formulaCoord = 0x7FFF7FFFFFFFLL;
    __C();
  }

  return 0;
}

- (id)initByCopyingASTNodeArray:(TSCEASTNodeArray *)array atFormulaCoord:(const TSUCellCoord *)coord
{
  v9.receiver = self;
  v9.super_class = TSCETrackedReference;
  v7 = [(TSCETrackedReference *)&v9 init];
  if (v7)
  {
    v7->_AST = TSCEASTNodeArray::copyNodeArray(array, v6);
    v7->_formulaCoord = *coord;
  }

  return v7;
}

- (void)replaceContentsWithContentsOfTrackedReference:(id)reference
{
  referenceCopy = reference;
  if (!referenceCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCETrackedReference replaceContentsWithContentsOfTrackedReference:]", v5, v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETrackedReference.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 112, 0, "can't replace contents with contents of a nil tracked reference");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  TSCEASTNodeArray::freeNodeArray(self->_AST, v4);
  self->_AST = TSCEASTNodeArray::copyNodeArray(*(referenceCopy + 1), v18);
  self->_formulaCoord = *(referenceCopy + 2);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCETrackedReference alloc];
  AST = self->_AST;

  return MEMORY[0x2821F9670](v4, sel_initByCopyingASTNodeArray_atFormulaCoord_, AST, &self->_formulaCoord, v5);
}

- (TSCECellRef)refersToCellRefForCalculationEngine:(SEL)engine referenceTrackerUID:(id)d
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4812000000;
  v16 = sub_221490874;
  v17 = nullsub_82;
  v18 = &unk_22188E88F;
  v20 = 0;
  v21 = 0;
  v19 = 0x7FFF7FFFFFFFLL;
  v7 = objc_msgSend_referencesForCalcEngine_referenceTrackerUID_(self, engine, d, a5, v5);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22149088C;
  v12[3] = &unk_2784634A0;
  v12[4] = &v13;
  objc_msgSend_foreachCellRef_(v7, v8, v12, v9, v10);
  *retstr = v14[2];

  _Block_object_dispose(&v13, 8);
  return result;
}

- (id)referencesForCalcEngine:(id)engine referenceTrackerUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  v11 = engineCopy;
  if (engineCopy)
  {
    v12 = objc_msgSend_emptyReferenceSetWrapper(engineCopy, v7, v8, v9, v10);
  }

  else
  {
    v12 = objc_opt_new();
  }

  v16 = v12;
  if (v12)
  {
    v43 = 0;
    v44 = *d;
    sub_2212C7294(v40, &v43);
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v45, v11, v40);
    AST = self->_AST;
    v22 = objc_msgSend_referenceSet(v16, v18, v19, v20, v21);
    sub_22126254C(v40, AST, &v45, v22);
    v41[33] = 0;
    sub_221262B44(v40, v23, v24, v25, v26);
    v40[0].var0.coordinate = &unk_2834A37F0;

    v43 = v41;
    sub_2211FEAB8(&v43);
    TSCEASTStreamIterator::~TSCEASTStreamIterator(v40, v27);
  }

  else
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSCETrackedReference referencesForCalcEngine:referenceTrackerUID:]", v14, v15);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETrackedReference.mm", v31, v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 140, 0, "Non-nil TSCEReferenceSetWrapper is required to use referencesForCalcEngine:");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  return v16;
}

- (id)getPrecedentsWithCalcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d
{
  v5 = objc_msgSend_referencesForCalcEngine_referenceTrackerUID_(self, a2, engine, d, v4);

  return v5;
}

- (id)precedentsWithCalcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  v11 = engineCopy;
  if (engineCopy)
  {
    v12 = objc_msgSend_emptyReferenceSetWrapper(engineCopy, v7, v8, v9, v10);
  }

  else
  {
    v12 = objc_opt_new();
  }

  v16 = v12;
  if (v12)
  {
    v42 = 0;
    v43 = *d;
    sub_2212C7294(v40, &v42);
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v44, v11, v40);
    AST = self->_AST;
    v22 = objc_msgSend_referenceSet(v16, v18, v19, v20, v21);
    sub_22126254C(v40, AST, &v44, v22);
    sub_221262B44(v40, v23, v24, v25, v26);
    v40[0].var0.coordinate = &unk_2834A37F0;

    v42 = v41;
    sub_2211FEAB8(&v42);
    TSCEASTStreamIterator::~TSCEASTStreamIterator(v40, v27);
  }

  else
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSCETrackedReference precedentsWithCalcEngine:hostOwnerUID:]", v14, v15);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETrackedReference.mm", v31, v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 160, 0, "Non-nil precedents pointer is required to use precedentsWithCalcEngine:");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  return v16;
}

- (void)registerWithCalcEngine:(id)engine inOwner:(const TSKUIDStruct *)owner
{
  engineCopy = engine;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v12, 0, 1);
  v9 = objc_msgSend_precedentsWithCalcEngine_hostOwnerUID_(self, v7, engineCopy, owner, v8);
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v11, &v12);
  objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(engineCopy, v10, &self->_formulaCoord, owner, v9, &v11);
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  v10 = archiverCopy;
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v8);
    *(archive + 3) = v7;
    archiverCopy = v10;
  }

  sub_2215C8340(v7, self->_AST, archiverCopy);
  v9 = self->_formulaCoord.column + (self->_formulaCoord.row << 15);
  *(archive + 4) |= 2u;
  *(archive + 8) = v9;
}

- (void)encodeToExpandedArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  v12 = archiverCopy;
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v8);
    *(archive + 3) = v7;
    archiverCopy = v12;
  }

  sub_2215C8340(v7, self->_AST, archiverCopy);
  column = self->_formulaCoord.column;
  v10 = *(archive + 4);
  *(archive + 4) = v10 | 2;
  row = self->_formulaCoord.row;
  *(archive + 4) = v10 | 6;
  *(archive + 8) = column;
  *(archive + 9) = row;
}

- (id)initFromArchive:(const void *)archive
{
  v4.receiver = self;
  v4.super_class = TSCETrackedReference;
  if ([(TSCETrackedReference *)&v4 init])
  {
    sub_2215C86F8();
  }

  return 0;
}

- (id)initFromExpandedArchive:(const void *)archive
{
  v4.receiver = self;
  v4.super_class = TSCETrackedReference;
  if ([(TSCETrackedReference *)&v4 init])
  {
    sub_2215C86F8();
  }

  return 0;
}

- (TSCETrackedReference)initWithTrackedReferenceTSPObjectDeprecated:(id)deprecated
{
  deprecatedCopy = deprecated;
  v18.receiver = self;
  v18.super_class = TSCETrackedReference;
  v9 = [(TSCETrackedReference *)&v18 init];
  if (v9)
  {
    if (objc_msgSend_ast(deprecatedCopy, v5, v6, v7, v8))
    {
      v14 = objc_msgSend_ast(deprecatedCopy, v10, v11, v12, v13);
      v9->_AST = TSCEASTNodeArray::copyNodeArray(v14, v15);
    }

    v16 = objc_msgSend_formulaID(deprecatedCopy, v10, v11, v12, v13);
    v9->_formulaCoord = ((v16 >> 15) & 0x7FFFFFFF | ((v16 & 0x7FFF) << 32));
  }

  return v9;
}

@end