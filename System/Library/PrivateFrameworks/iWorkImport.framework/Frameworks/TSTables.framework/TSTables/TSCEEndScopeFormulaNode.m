@interface TSCEEndScopeFormulaNode
- (id)initAsEndScope;
@end

@implementation TSCEEndScopeFormulaNode

- (id)initAsEndScope
{
  v3.receiver = self;
  v3.super_class = TSCEEndScopeFormulaNode;
  return [(TSCEFormulaNode *)&v3 initWithNodeType:25];
}

@end