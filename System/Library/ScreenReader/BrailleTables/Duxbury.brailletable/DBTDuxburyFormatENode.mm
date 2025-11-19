@interface DBTDuxburyFormatENode
- (BOOL)foundInnerCode:(id)a3;
- (DBTDuxburyFormatEExpressionNode)expressionNode;
- (id)LaTeXRepresentation;
@end

@implementation DBTDuxburyFormatENode

- (id)LaTeXRepresentation
{
  v3 = [(DBTDuxburyFormatNode *)self firstChildMatchingBlock:&__block_literal_global];
  v4 = [(DBTDuxburyFormatNode *)self firstChildMatchingBlock:&__block_literal_global_132];
  v5 = [(DBTDuxburyFormatENode *)self expressionNode];
  v6 = [v5 LaTeXRepresentation];
  v7 = [v6 mutableCopy];

  if (v3 | v4)
  {
    [v7 appendString:@"\\limits"];
    if (v3)
    {
      v8 = [v3 LaTeXRepresentation];
      [v7 appendFormat:@"^{%@}", v8];
    }

    if (v4)
    {
      v9 = [v4 LaTeXRepresentation];
      [v7 appendFormat:@"_{%@}", v9];
    }
  }

  return v7;
}

BOOL __44__DBTDuxburyFormatENode_LaTeXRepresentation__block_invoke(id a1, DBTDuxburyFormatNode *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL __44__DBTDuxburyFormatENode_LaTeXRepresentation__block_invoke_2(id a1, DBTDuxburyFormatNode *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)foundInnerCode:(id)a3
{
  v4 = a3;
  if (![(DBTDuxburyFormatENode *)self hasSeenOverNode]&& ![(DBTDuxburyFormatENode *)self hasSeenUnderNode])
  {
    v5 = objc_alloc_init(DBTDuxburyFormatEExpressionNode);
    v6 = [(DBTDuxburyFormatNode *)self children];
    [(DBTDuxburyFormatNode *)v5 addChildren:v6];

    [(DBTDuxburyFormatNode *)self removeAllChildren];
    [(DBTDuxburyFormatNode *)self addChild:v5];
    objc_storeWeak(&self->_expressionNode, v5);
  }

  v7 = +[DBTDuxburyFormatONode beginCode];
  v8 = [v4 isEqualToString:v7];

  if (v8)
  {
    self->_seenOverNode = 1;
  }

  v9 = +[DBTDuxburyFormatUNode beginCode];
  v10 = [v4 isEqualToString:v9];

  if (v10)
  {
    self->_seenUnderNode = 1;
  }

  return 0;
}

- (DBTDuxburyFormatEExpressionNode)expressionNode
{
  WeakRetained = objc_loadWeakRetained(&self->_expressionNode);

  return WeakRetained;
}

@end