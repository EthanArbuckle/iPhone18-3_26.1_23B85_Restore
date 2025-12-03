@interface EQKitMathMLMLabeledTr
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
@end

@implementation EQKitMathMLMLabeledTr

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  objc_msgSend_pushState_(parser, a2, 3, parser);
  v9 = objc_msgSend_parseChildrenAsArrayFromXMLNode_(parser, v7, node, v8);
  objc_msgSend_popState(parser, v10, v11, v12);
  if (objc_msgSend_count(v9, v13, v14, v15))
  {
    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    v19 = objc_msgSend_initWithArray_(v16, v17, v9, v18);
    objc_msgSend_removeObjectAtIndex_(v19, v20, 0, v21);
    v24.receiver = self;
    v24.super_class = EQKitMathMLMLabeledTr;
    v22 = [(EQKitMathMLMTr *)&v24 initWithChildren:v19 node:node];
  }

  else
  {

    return 0;
  }

  return v22;
}

@end