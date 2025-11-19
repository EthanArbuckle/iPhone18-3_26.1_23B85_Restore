@interface EQKitMathMLMAction
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLMAction

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v19.receiver = self;
  v19.super_class = EQKitMathMLMAction;
  v8 = [(EQKitMathMLMAction *)&v19 init];
  if (v8)
  {
    v9 = objc_msgSend_parseChildrenAsArrayFromXMLNode_(a4, v6, a3, v7);
    if (objc_msgSend_count(v9, v10, v11, v12))
    {
      v15 = objc_msgSend_objectAtIndex_(v9, v13, 0, v14);
      v8->mExpression = v15;
      objc_msgSend_setParent_(v15, v16, v8, v17);
    }

    else
    {
      objc_msgSend_reportError_withNode_(a4, v13, 5, a3);

      return 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMAction;
  [(EQKitMathMLMAction *)&v3 dealloc];
}

@end