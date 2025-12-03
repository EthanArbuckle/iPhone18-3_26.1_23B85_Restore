@interface EQKitMathMLMStackGroup
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLMStackGroup)initWithChildren:(id)children;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMStackGroup

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v6 = objc_msgSend_parseChildrenAsArrayFromXMLNode_(parser, a2, node, parser);

  return objc_msgSend_initWithChildren_(self, v5, v6, v7);
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38940))
  {
    sub_275C8E754(qword_280A38928, &unk_275D0BEEC, &dword_275D0BEF4);
    __cxa_guard_release(&qword_280A38940);
  }

  return qword_280A38928;
}

- (EQKitMathMLMStackGroup)initWithChildren:(id)children
{
  v40 = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = EQKitMathMLMStackGroup;
  v7 = [(EQKitMathMLMStackGroup *)&v38 init];
  if (v7)
  {
    v8 = objc_msgSend_count(children, v4, v5, v6);
    if (v8)
    {
      v11 = v8;
      v12 = 0;
      for (i = 0; i != v11; ++i)
      {
        v14 = objc_msgSend_objectAtIndex_(children, v9, i, v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!v12)
                {
                  v12 = objc_msgSend_mutableCopy(children, v9, v15, v10);
                  children = v12;
                }

                v16 = objc_alloc(MEMORY[0x277CBEA60]);
                v19 = objc_msgSend_initWithObjects_(v16, v17, v14, v18, 0);
                v20 = [EQKitMathMLMStackRow alloc];
                v23 = objc_msgSend_initWithChildren_(v20, v21, v19, v22);
                objc_msgSend_replaceObjectAtIndex_withObject_(v12, v24, i, v23);
              }
            }
          }
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v7->mChildren = children;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    mChildren = v7->mChildren;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(mChildren, v26, &v34, v39, 16);
    if (v27)
    {
      v30 = v27;
      v31 = *v35;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(mChildren);
          }

          objc_msgSend_setParent_(*(*(&v34 + 1) + 8 * j), v28, v7, v29);
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(mChildren, v28, &v34, v39, 16);
      }

      while (v30);
    }
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMStackGroup;
  [(EQKitMathMLMStackGroup *)&v3 dealloc];
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
  *(a2 + 8) = 13;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

@end