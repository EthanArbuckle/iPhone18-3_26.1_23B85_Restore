@interface EQKitMathMLMLabeledTr
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
@end

@implementation EQKitMathMLMLabeledTr

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  objc_msgSend_pushState_(a4, a2, 3, a4);
  v9 = objc_msgSend_parseChildrenAsArrayFromXMLNode_(a4, v7, a3, v8);
  objc_msgSend_popState(a4, v10, v11, v12);
  if (objc_msgSend_count(v9, v13, v14, v15))
  {
    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    v19 = objc_msgSend_initWithArray_(v16, v17, v9, v18);
    objc_msgSend_removeObjectAtIndex_(v19, v20, 0, v21);
    v24.receiver = self;
    v24.super_class = EQKitMathMLMLabeledTr;
    v22 = [(EQKitMathMLMTr *)&v24 initWithChildren:v19 node:a3];
  }

  else
  {

    return 0;
  }

  return v22;
}

@end