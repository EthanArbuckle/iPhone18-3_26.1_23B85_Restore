@interface DBTDuxburyFormatENode
- (BOOL)foundInnerCode:(id)code;
- (DBTDuxburyFormatEExpressionNode)expressionNode;
- (id)LaTeXRepresentation;
@end

@implementation DBTDuxburyFormatENode

- (id)LaTeXRepresentation
{
  v3 = [(DBTDuxburyFormatNode *)self firstChildMatchingBlock:&__block_literal_global];
  v4 = [(DBTDuxburyFormatNode *)self firstChildMatchingBlock:&__block_literal_global_132];
  expressionNode = [(DBTDuxburyFormatENode *)self expressionNode];
  laTeXRepresentation = [expressionNode LaTeXRepresentation];
  v7 = [laTeXRepresentation mutableCopy];

  if (v3 | v4)
  {
    [v7 appendString:@"\\limits"];
    if (v3)
    {
      laTeXRepresentation2 = [v3 LaTeXRepresentation];
      [v7 appendFormat:@"^{%@}", laTeXRepresentation2];
    }

    if (v4)
    {
      laTeXRepresentation3 = [v4 LaTeXRepresentation];
      [v7 appendFormat:@"_{%@}", laTeXRepresentation3];
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

- (BOOL)foundInnerCode:(id)code
{
  codeCopy = code;
  if (![(DBTDuxburyFormatENode *)self hasSeenOverNode]&& ![(DBTDuxburyFormatENode *)self hasSeenUnderNode])
  {
    v5 = objc_alloc_init(DBTDuxburyFormatEExpressionNode);
    children = [(DBTDuxburyFormatNode *)self children];
    [(DBTDuxburyFormatNode *)v5 addChildren:children];

    [(DBTDuxburyFormatNode *)self removeAllChildren];
    [(DBTDuxburyFormatNode *)self addChild:v5];
    objc_storeWeak(&self->_expressionNode, v5);
  }

  v7 = +[DBTDuxburyFormatONode beginCode];
  v8 = [codeCopy isEqualToString:v7];

  if (v8)
  {
    self->_seenOverNode = 1;
  }

  v9 = +[DBTDuxburyFormatUNode beginCode];
  v10 = [codeCopy isEqualToString:v9];

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