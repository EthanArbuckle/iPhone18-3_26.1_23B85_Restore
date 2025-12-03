@interface EQKitMathMLMStackCarry
- (EQKitMathMLMStackCarry)initWithChild:(id)child;
- (EQKitMathMLMStackCarry)initWithChildren:(id)children;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMStackCarry

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v6 = objc_msgSend_parseChildrenAsArrayFromXMLNode_(parser, a2, node, parser);

  return objc_msgSend_initWithChildren_(self, v5, v6, v7);
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38A18))
  {
    sub_275C8E754(qword_280A38A00, &dword_275D0C148, &dword_275D0C14C);
    __cxa_guard_release(&qword_280A38A18);
  }

  return qword_280A38A00;
}

- (EQKitMathMLMStackCarry)initWithChildren:(id)children
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = EQKitMathMLMStackCarry;
  v4 = [(EQKitMathMLMStackCarry *)&v18 init];
  if (v4)
  {
    childrenCopy = children;
    v4->mChildren = childrenCopy;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(childrenCopy, v6, &v14, v19, 16);
    if (v7)
    {
      v10 = v7;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(childrenCopy);
          }

          objc_msgSend_setParent_(*(*(&v14 + 1) + 8 * v12++), v8, v4, v9);
        }

        while (v10 != v12);
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(childrenCopy, v8, &v14, v19, 16);
      }

      while (v10);
    }
  }

  return v4;
}

- (EQKitMathMLMStackCarry)initWithChild:(id)child
{
  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  v8 = objc_msgSend_initWithObjects_(v5, v6, child, v7, 0);
  v11 = objc_msgSend_initWithChildren_(self, v9, v8, v10);

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMStackCarry;
  [(EQKitMathMLMStackCarry *)&v3 dealloc];
}

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 17;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

@end