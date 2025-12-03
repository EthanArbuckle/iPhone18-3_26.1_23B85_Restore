@interface EQKitMathMLMTr
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLMTr)init;
- (EQKitMathMLMTr)initWithChildren:(id)children node:(_xmlNode *)node;
- (NSString)description;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMTr

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 20;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

- (EQKitMathMLMTr)init
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEA60], a2, v2, v3);

  return objc_msgSend_initWithChildren_(self, v5, v6, v7);
}

- (EQKitMathMLMTr)initWithChildren:(id)children node:(_xmlNode *)node
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = EQKitMathMLMTr;
  v5 = [(EQKitMathMLMTr *)&v19 init:children];
  if (v5)
  {
    childrenCopy = children;
    v5->mChildren = childrenCopy;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(childrenCopy, v7, &v15, v20, 16);
    if (v8)
    {
      v11 = v8;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(childrenCopy);
          }

          objc_msgSend_setParent_(*(*(&v15 + 1) + 8 * v13++), v9, v5, v10);
        }

        while (v11 != v13);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(childrenCopy, v9, &v15, v20, 16);
      }

      while (v11);
    }
  }

  return v5;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  objc_msgSend_pushState_(parser, a2, 3, parser);
  v9 = objc_msgSend_parseChildrenAsArrayFromXMLNode_(parser, v7, node, v8);
  objc_msgSend_popState(parser, v10, v11, v12);

  return MEMORY[0x2821F9670](self, sel_initWithChildren_node_, v9, node);
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38C18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38C18))
  {
    sub_275C8E754(qword_280A38C00, &unk_275D0C220, dword_275D0C228);
    __cxa_guard_release(&qword_280A38C18);
  }

  return qword_280A38C00;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMTr;
  [(EQKitMathMLMTr *)&v3 dealloc];
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

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p %@>", v7, v5, self, self->mChildren);
}

@end