@interface EQKitMathMLBinaryNode
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLBinaryNode)initWithFirst:(id)first second:(id)second;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)dealloc;
@end

@implementation EQKitMathMLBinaryNode

- (EQKitMathMLBinaryNode)initWithFirst:(id)first second:(id)second
{
  v12.receiver = self;
  v12.super_class = EQKitMathMLBinaryNode;
  v6 = [(EQKitMathMLBinaryNode *)&v12 init];
  if (v6)
  {
    v6->mFirst = first;
    v6->mSecond = second;
    objc_msgSend_setParent_(v6->mFirst, v7, v6, v8);
    objc_msgSend_setParent_(v6->mSecond, v9, v6, v10);
  }

  return v6;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v7 = objc_msgSend_parseChildrenAsArrayFromXMLNode_(parser, a2, node, parser);
  if (objc_msgSend_count(v7, v8, v9, v10) == 2)
  {
    v13 = objc_msgSend_objectAtIndex_(v7, v11, 0, v12);
    v16 = objc_msgSend_objectAtIndex_(v7, v14, 1, v15);

    return MEMORY[0x2821F9670](self, sel_initWithFirst_second_, v13, v16);
  }

  else
  {
    objc_msgSend_reportError_withNode_(parser, v11, 5, node);

    return 0;
  }
}

- (BOOL)isBaseFontNameUsed
{
  if (objc_msgSend_isBaseFontNameUsed(self->mFirst, a2, v2, v3))
  {
    return 1;
  }

  mSecond = self->mSecond;

  return objc_msgSend_isBaseFontNameUsed(mSecond, v5, v6, v7);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLBinaryNode;
  [(EQKitMathMLBinaryNode *)&v3 dealloc];
}

@end