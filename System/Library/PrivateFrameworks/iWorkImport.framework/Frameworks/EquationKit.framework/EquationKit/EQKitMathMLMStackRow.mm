@interface EQKitMathMLMStackRow
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLMStackRow)initWithChildren:(id)children;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMStackRow

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v6 = objc_msgSend_parseChildrenAsArrayFromXMLNode_(parser, a2, node, parser);

  return objc_msgSend_initWithChildren_(self, v5, v6, v7);
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A389A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A389A0))
  {
    sub_275C8E754(qword_280A38988, &dword_275D0BF1C, &qword_275D0BF20);
    __cxa_guard_release(&qword_280A389A0);
  }

  return qword_280A38988;
}

- (EQKitMathMLMStackRow)initWithChildren:(id)children
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = EQKitMathMLMStackRow;
  v4 = [(EQKitMathMLMStackRow *)&v18 init];
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

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMStackRow;
  [(EQKitMathMLMStackRow *)&v3 dealloc];
}

- (BOOL)isBaseFontNameUsed
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mChildren = self->mChildren;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(mChildren, a2, &v11, v15, 16);
  if (v3)
  {
    v7 = v3;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(mChildren);
        }

        if (objc_msgSend_isBaseFontNameUsed(*(*(&v11 + 1) + 8 * v9), v4, v5, v6))
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v9;
      }

      while (v7 != v9);
      v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(mChildren, v4, &v11, v15, 16);
      v7 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 14;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

@end