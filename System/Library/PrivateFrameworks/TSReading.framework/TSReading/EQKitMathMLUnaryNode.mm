@interface EQKitMathMLUnaryNode
- (EQKitMathMLUnaryNode)initWithChild:(id)a3;
- (EQKitMathMLUnaryNode)initWithChildren:(id)a3;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLUnaryNode

- (EQKitMathMLUnaryNode)initWithChild:(id)a3
{
  if (!a3)
  {
    [(EQKitMathMLUnaryNode *)a2 initWithChild:?];
  }

  v8.receiver = self;
  v8.super_class = EQKitMathMLUnaryNode;
  v5 = [(EQKitMathMLUnaryNode *)&v8 init];
  if (v5)
  {
    v6 = a3;
    v5->mChild = v6;
    [(EQKitMathMLNode *)v6 setParent:v5];
  }

  return v5;
}

- (EQKitMathMLUnaryNode)initWithChildren:(id)a3
{
  v6.receiver = self;
  v6.super_class = EQKitMathMLUnaryNode;
  v4 = [(EQKitMathMLUnaryNode *)&v6 init];
  if (v4)
  {
    v4->mChild = [[EQKitMathMLMRow alloc] initWithChildren:a3];
  }

  return v4;
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v7 = [a4 parseChildrenAsNodeFromXMLNode:?];
  if (v7)
  {

    return [(EQKitMathMLUnaryNode *)self initWithChild:v7];
  }

  else
  {
    [a4 reportError:5 withNode:a3];

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