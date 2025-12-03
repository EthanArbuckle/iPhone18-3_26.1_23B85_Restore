@interface TSCEUidReferenceFormulaNode
- (TSCEUidReferenceFormulaNode)initWithTableUID:(TSKUIDStruct)d refFlags:(const TSCEASTRefFlags *)flags colonTractFlags:(const TSCEASTColonTractFlags *)tractFlags undoTractList:(id)list;
- (TSKUIDStruct)tableUID;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEUidReferenceFormulaNode

- (TSCEUidReferenceFormulaNode)initWithTableUID:(TSKUIDStruct)d refFlags:(const TSCEASTRefFlags *)flags colonTractFlags:(const TSCEASTColonTractFlags *)tractFlags undoTractList:(id)list
{
  upper = d._upper;
  lower = d._lower;
  listCopy = list;
  v16.receiver = self;
  v16.super_class = TSCEUidReferenceFormulaNode;
  v13 = [(TSCEFormulaNode *)&v16 initWithNodeType:17];
  v14 = v13;
  if (v13)
  {
    v13->_tableUID._lower = lower;
    v13->_tableUID._upper = upper;
    objc_storeStrong(&v13->_undoTractList, list);
    v14->_refFlags = flags->_flags;
    v14->_colonTractFlags = tractFlags->_flags;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = TSCEUidReferenceFormulaNode;
  v4 = [(TSCEUidReferenceFormulaNode *)&v12 copy];
  v4[3] = self->_tableUID;
  v9 = objc_msgSend_copy(self->_undoTractList, v5, v6, v7, v8);
  v10 = *(v4 + 8);
  *(v4 + 8) = v9;

  *(v4 + 72) = self->_refFlags._flags;
  *(v4 + 73) = self->_colonTractFlags._flags;
  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTUidReferenceElement::appendUidReferenceElement(array, &self->_tableUID, &self->_refFlags, &self->_colonTractFlags, self->_undoTractList, engine);
  v16 = objc_msgSend_whitespaceBefore(self, v8, v9, v10, v11);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v16);

  v17 = objc_msgSend_whitespaceAfter(self, v12, v13, v14, v15);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v17);
}

- (TSKUIDStruct)tableUID
{
  p_tableUID = &self->_tableUID;
  lower = self->_tableUID._lower;
  upper = p_tableUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 72) = 0;
  *(self + 73) = 0;
  return self;
}

@end