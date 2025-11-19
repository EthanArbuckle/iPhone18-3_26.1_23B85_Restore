@interface EQKitMathMLUnaryNode
- (EQKitMathMLUnaryNode)initWithChild:(id)a3;
- (EQKitMathMLUnaryNode)initWithChildren:(id)a3;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLUnaryNode

- (EQKitMathMLUnaryNode)initWithChild:(id)a3
{
  v9.receiver = self;
  v9.super_class = EQKitMathMLUnaryNode;
  v4 = [(EQKitMathMLUnaryNode *)&v9 init];
  if (v4)
  {
    v5 = a3;
    v4->mChild = v5;
    objc_msgSend_setParent_(v5, v6, v4, v7);
  }

  return v4;
}

- (EQKitMathMLUnaryNode)initWithChildren:(id)a3
{
  v9.receiver = self;
  v9.super_class = EQKitMathMLUnaryNode;
  v4 = [(EQKitMathMLUnaryNode *)&v9 init];
  if (v4)
  {
    v5 = [EQKitMathMLMRow alloc];
    v4->mChild = objc_msgSend_initWithChildren_(v5, v6, a3, v7);
  }

  return v4;
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v7 = objc_msgSend_parseChildrenAsNodeFromXMLNode_(a4, a2, a3, a4);
  if (v7)
  {

    return objc_msgSend_initWithChild_(self, v8, v7, v9);
  }

  else
  {
    objc_msgSend_reportError_withNode_(a4, v8, 5, a3);

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