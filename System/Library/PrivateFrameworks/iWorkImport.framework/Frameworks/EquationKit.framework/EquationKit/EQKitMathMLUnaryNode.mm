@interface EQKitMathMLUnaryNode
- (EQKitMathMLUnaryNode)initWithChild:(id)child;
- (EQKitMathMLUnaryNode)initWithChildren:(id)children;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)dealloc;
@end

@implementation EQKitMathMLUnaryNode

- (EQKitMathMLUnaryNode)initWithChild:(id)child
{
  v9.receiver = self;
  v9.super_class = EQKitMathMLUnaryNode;
  v4 = [(EQKitMathMLUnaryNode *)&v9 init];
  if (v4)
  {
    childCopy = child;
    v4->mChild = childCopy;
    objc_msgSend_setParent_(childCopy, v6, v4, v7);
  }

  return v4;
}

- (EQKitMathMLUnaryNode)initWithChildren:(id)children
{
  v9.receiver = self;
  v9.super_class = EQKitMathMLUnaryNode;
  v4 = [(EQKitMathMLUnaryNode *)&v9 init];
  if (v4)
  {
    v5 = [EQKitMathMLMRow alloc];
    v4->mChild = objc_msgSend_initWithChildren_(v5, v6, children, v7);
  }

  return v4;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v7 = objc_msgSend_parseChildrenAsNodeFromXMLNode_(parser, a2, node, parser);
  if (v7)
  {

    return objc_msgSend_initWithChild_(self, v8, v7, v9);
  }

  else
  {
    objc_msgSend_reportError_withNode_(parser, v8, 5, node);

    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLUnaryNode;
  [(EQKitMathMLUnaryNode *)&v3 dealloc];
}

@end