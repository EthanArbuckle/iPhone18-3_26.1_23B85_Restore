@interface EQKitMathMLTernaryNode
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLTernaryNode)initWithFirst:(id)first second:(id)second third:(id)third;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)dealloc;
@end

@implementation EQKitMathMLTernaryNode

- (EQKitMathMLTernaryNode)initWithFirst:(id)first second:(id)second third:(id)third
{
  v16.receiver = self;
  v16.super_class = EQKitMathMLTernaryNode;
  v8 = [(EQKitMathMLTernaryNode *)&v16 init];
  if (v8)
  {
    v8->mFirst = first;
    v8->mSecond = second;
    v8->mThird = third;
    objc_msgSend_setParent_(v8->mFirst, v9, v8, v10);
    objc_msgSend_setParent_(v8->mSecond, v11, v8, v12);
    objc_msgSend_setParent_(v8->mThird, v13, v8, v14);
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLTernaryNode;
  [(EQKitMathMLTernaryNode *)&v3 dealloc];
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v7 = objc_msgSend_parseChildrenAsArrayFromXMLNode_(parser, a2, node, parser);
  if (objc_msgSend_count(v7, v8, v9, v10) == 3)
  {
    v13 = objc_msgSend_objectAtIndex_(v7, v11, 0, v12);
    v16 = objc_msgSend_objectAtIndex_(v7, v14, 1, v15);
    objc_msgSend_objectAtIndex_(v7, v17, 2, v18);

    return MEMORY[0x2821F9670](self, sel_initWithFirst_second_third_, v13, v16);
  }

  else
  {
    objc_msgSend_reportError_withNode_(parser, v11, 5, node);

    return 0;
  }
}

- (BOOL)isBaseFontNameUsed
{
  if (objc_msgSend_isBaseFontNameUsed(self->mFirst, a2, v2, v3) & 1) != 0 || (objc_msgSend_isBaseFontNameUsed(self->mSecond, v5, v6, v7))
  {
    return 1;
  }

  mThird = self->mThird;

  return objc_msgSend_isBaseFontNameUsed(mThird, v8, v9, v10);
}

@end