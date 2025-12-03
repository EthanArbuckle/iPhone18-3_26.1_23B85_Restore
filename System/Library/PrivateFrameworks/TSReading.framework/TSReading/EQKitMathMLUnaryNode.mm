@interface EQKitMathMLUnaryNode
- (EQKitMathMLUnaryNode)initWithChild:(id)child;
- (EQKitMathMLUnaryNode)initWithChildren:(id)children;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)dealloc;
@end

@implementation EQKitMathMLUnaryNode

- (EQKitMathMLUnaryNode)initWithChild:(id)child
{
  if (!child)
  {
    [(EQKitMathMLUnaryNode *)a2 initWithChild:?];
  }

  v8.receiver = self;
  v8.super_class = EQKitMathMLUnaryNode;
  v5 = [(EQKitMathMLUnaryNode *)&v8 init];
  if (v5)
  {
    childCopy = child;
    v5->mChild = childCopy;
    [(EQKitMathMLNode *)childCopy setParent:v5];
  }

  return v5;
}

- (EQKitMathMLUnaryNode)initWithChildren:(id)children
{
  v6.receiver = self;
  v6.super_class = EQKitMathMLUnaryNode;
  v4 = [(EQKitMathMLUnaryNode *)&v6 init];
  if (v4)
  {
    v4->mChild = [[EQKitMathMLMRow alloc] initWithChildren:children];
  }

  return v4;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v7 = [parser parseChildrenAsNodeFromXMLNode:?];
  if (v7)
  {

    return [(EQKitMathMLUnaryNode *)self initWithChild:v7];
  }

  else
  {
    [parser reportError:5 withNode:node];

    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLUnaryNode;
  [(EQKitMathMLUnaryNode *)&v3 dealloc];
}

- (uint64_t)initWithChild:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"EQKitMathMLUnaryNode.mm" lineNumber:22 description:@"child should not be nil"];
}

@end