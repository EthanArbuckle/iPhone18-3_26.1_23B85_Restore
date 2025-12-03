@interface EQKitMathMLMath
- (NSString)description;
- (Schemata)layoutSchemata;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)newLayout;
- (void)dealloc;
@end

@implementation EQKitMathMLMath

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v22.receiver = self;
  v22.super_class = EQKitMathMLMath;
  v6 = [(EQKitMathMLMath *)&v22 init];
  if (v6)
  {
    v7 = operator new(0x230uLL, MEMORY[0x277D826F0]);
    if (v7)
    {
      v11 = v7;
      v12 = sub_275CB3F9C(v7);
      v6->mAttributeCollection = v13;
      objc_msgSend_setAttributeCollection_(parser, v14, v11, v15, v12);
      v18 = objc_msgSend_parseChildrenAsNodeFromXMLNode_(parser, v16, node, v17);
      v6->mExpression = v18;
      objc_msgSend_setParent_(v18, v19, v6, v20);
    }

    else
    {
      v6->mAttributeCollection = 0;
    }

    if (v6->mExpression)
    {
      v6->mEnvironment = objc_msgSend_environment(parser, v8, v9, v10);
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38920))
  {
    sub_275C8E754(qword_280A38908, dword_275D0BEC8, &dword_275D0BEC8[1]);
    __cxa_guard_release(&qword_280A38920);
  }

  return qword_280A38908;
}

- (void)dealloc
{
  mAttributeCollection = self->mAttributeCollection;
  if (mAttributeCollection)
  {
    (*(*mAttributeCollection + 8))(mAttributeCollection, a2);
  }

  v4.receiver = self;
  v4.super_class = EQKitMathMLMath;
  [(EQKitMathMLMath *)&v4 dealloc];
}

- (id)newLayout
{
  v3 = [EQKitLayout alloc];
  mEnvironment = self->mEnvironment;

  return MEMORY[0x2821F9670](v3, sel_initWithRoot_environment_, self, mEnvironment);
}

- (Schemata)layoutSchemata
{
  mExpression = self->mExpression;
  if (mExpression)
  {
    v6 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], a3, mExpression, v3);
  }

  else
  {
    v6 = objc_msgSend_array(MEMORY[0x277CBEA60], a3, 0, v3);
  }

  return sub_275CC771C(v6, v7, v8, v9, retstr);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p expr=%@>", v7, v5, self, self->mExpression);
}

@end