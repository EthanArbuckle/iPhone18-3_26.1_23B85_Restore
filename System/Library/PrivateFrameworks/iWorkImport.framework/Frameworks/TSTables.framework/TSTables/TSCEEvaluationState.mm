@interface TSCEEvaluationState
- (TSCEEvaluationState)initWithAST:(const TSCEASTNodeArray *)t rewriteContext:(TSCEFormulaRewriteContext *)context warnings:(id)warnings;
- (void)dealloc;
@end

@implementation TSCEEvaluationState

- (TSCEEvaluationState)initWithAST:(const TSCEASTNodeArray *)t rewriteContext:(TSCEFormulaRewriteContext *)context warnings:(id)warnings
{
  warningsCopy = warnings;
  v10.receiver = self;
  v10.super_class = TSCEEvaluationState;
  v8 = [(TSCEEvaluationState *)&v10 init];
  if (v8)
  {
    v8->_AST = t;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  ownedAST = self->_ownedAST;
  if (ownedAST)
  {
    TSCEASTNodeArray::~TSCEASTNodeArray(ownedAST);
    MEMORY[0x223DA1450]();
  }

  elementIterator = self->_elementIterator;
  if (elementIterator)
  {
    (*(*elementIterator + 8))(elementIterator, a2);
  }

  v5.receiver = self;
  v5.super_class = TSCEEvaluationState;
  [(TSCEEvaluationState *)&v5 dealloc];
}

@end