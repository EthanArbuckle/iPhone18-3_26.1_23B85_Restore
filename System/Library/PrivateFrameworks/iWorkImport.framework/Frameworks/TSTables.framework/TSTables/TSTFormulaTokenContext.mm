@interface TSTFormulaTokenContext
+ (id)tokenContextWithExpressionNode:(id)node parenNestingLevel:(unint64_t)level;
+ (id)tokenContextWithExpressionNode:(id)node parenNestingLevel:(unint64_t)level argumentIndex:(unint64_t)index;
- (BOOL)isEqual:(id)equal;
- (TSTFormulaTokenContext)initWithExpressionNode:(id)node parenNestingLevel:(unint64_t)level argumentIndex:(unint64_t)index;
- (id)debugDescription;
@end

@implementation TSTFormulaTokenContext

- (TSTFormulaTokenContext)initWithExpressionNode:(id)node parenNestingLevel:(unint64_t)level argumentIndex:(unint64_t)index
{
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = TSTFormulaTokenContext;
  v10 = [(TSTFormulaTokenContext *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_expressionNode, node);
    v11->_parenNestingLevel = level;
    v11->_argumentIndex = index;
  }

  return v11;
}

+ (id)tokenContextWithExpressionNode:(id)node parenNestingLevel:(unint64_t)level
{
  nodeCopy = node;
  v7 = [self alloc];
  v10 = objc_msgSend_initWithExpressionNode_parenNestingLevel_(v7, v8, nodeCopy, level, v9);

  return v10;
}

+ (id)tokenContextWithExpressionNode:(id)node parenNestingLevel:(unint64_t)level argumentIndex:(unint64_t)index
{
  nodeCopy = node;
  v9 = [self alloc];
  v11 = objc_msgSend_initWithExpressionNode_parenNestingLevel_argumentIndex_(v9, v10, nodeCopy, level, index);

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v5->_expressionNode == self->_expressionNode && v5->_parenNestingLevel == self->_parenNestingLevel && v5->_argumentIndex == self->_argumentIndex;
  }

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p>: expressionNode:%@, parenNestingLevel:%lu argumentIndex:%lu", v7, v8, v5, self, self->_expressionNode, self->_parenNestingLevel, self->_argumentIndex);

  return v9;
}

@end