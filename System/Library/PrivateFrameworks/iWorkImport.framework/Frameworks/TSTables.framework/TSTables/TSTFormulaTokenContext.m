@interface TSTFormulaTokenContext
+ (id)tokenContextWithExpressionNode:(id)a3 parenNestingLevel:(unint64_t)a4;
+ (id)tokenContextWithExpressionNode:(id)a3 parenNestingLevel:(unint64_t)a4 argumentIndex:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (TSTFormulaTokenContext)initWithExpressionNode:(id)a3 parenNestingLevel:(unint64_t)a4 argumentIndex:(unint64_t)a5;
- (id)debugDescription;
@end

@implementation TSTFormulaTokenContext

- (TSTFormulaTokenContext)initWithExpressionNode:(id)a3 parenNestingLevel:(unint64_t)a4 argumentIndex:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = TSTFormulaTokenContext;
  v10 = [(TSTFormulaTokenContext *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_expressionNode, a3);
    v11->_parenNestingLevel = a4;
    v11->_argumentIndex = a5;
  }

  return v11;
}

+ (id)tokenContextWithExpressionNode:(id)a3 parenNestingLevel:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v10 = objc_msgSend_initWithExpressionNode_parenNestingLevel_(v7, v8, v6, a4, v9);

  return v10;
}

+ (id)tokenContextWithExpressionNode:(id)a3 parenNestingLevel:(unint64_t)a4 argumentIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = [a1 alloc];
  v11 = objc_msgSend_initWithExpressionNode_parenNestingLevel_argumentIndex_(v9, v10, v8, a4, a5);

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v5->_expressionNode == self->_expressionNode && v5->_parenNestingLevel == self->_parenNestingLevel && v5->_argumentIndex == self->_argumentIndex;
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