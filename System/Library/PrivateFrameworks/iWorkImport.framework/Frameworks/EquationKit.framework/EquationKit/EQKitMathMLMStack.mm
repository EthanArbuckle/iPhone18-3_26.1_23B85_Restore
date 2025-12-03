@interface EQKitMathMLMStack
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLMStack)initWithChildren:(id)children;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMStack

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 12;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v6 = objc_msgSend_parseChildrenAsArrayFromXMLNode_(parser, a2, node, parser);

  return objc_msgSend_initWithChildren_(self, v5, v6, v7);
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38B58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38B58))
  {
    sub_275C8E754(qword_280A38B40, &dword_275D0C19C, dword_275D0C1A0);
    __cxa_guard_release(&qword_280A38B58);
  }

  return qword_280A38B40;
}

- (EQKitMathMLMStack)initWithChildren:(id)children
{
  v41 = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = EQKitMathMLMStack;
  v4 = [(EQKitMathMLMStack *)&v39 init];
  v8 = v4;
  if (v4)
  {
    v4->mAlign = 0;
    v9 = objc_msgSend_count(children, v5, v6, v7);
    if (v9)
    {
      v12 = v9;
      v13 = 0;
      for (i = 0; i != v12; ++i)
      {
        v15 = objc_msgSend_objectAtIndex_(children, v10, i, v11);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v13)
          {
            v13 = objc_msgSend_mutableCopy(children, v10, v16, v11);
            children = v13;
          }

          v17 = objc_alloc(MEMORY[0x277CBEA60]);
          v20 = objc_msgSend_initWithObjects_(v17, v18, v15, v19, 0);
          v21 = [EQKitMathMLMStackGroup alloc];
          v24 = objc_msgSend_initWithChildren_(v21, v22, v20, v23);
          objc_msgSend_replaceObjectAtIndex_withObject_(v13, v25, i, v24);
        }
      }
    }

    else
    {
      v13 = 0;
    }

    childrenCopy = children;
    v8->mChildren = childrenCopy;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(childrenCopy, v27, &v35, v40, 16);
    if (v28)
    {
      v31 = v28;
      v32 = *v36;
      do
      {
        v33 = 0;
        do
        {
          if (*v36 != v32)
          {
            objc_enumerationMutation(childrenCopy);
          }

          objc_msgSend_setParent_(*(*(&v35 + 1) + 8 * v33++), v29, v8, v30);
        }

        while (v31 != v33);
        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(childrenCopy, v29, &v35, v40, 16);
      }

      while (v31);
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMStack;
  [(EQKitMathMLMStack *)&v3 dealloc];
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

@end