@interface EQKitMathMLMStackCarries
- (BOOL)isBaseFontNameUsed;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMStackCarries

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 16;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v41 = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = EQKitMathMLMStackCarries;
  v8 = [(EQKitMathMLMStackCarries *)&v39 init];
  if (v8)
  {
    v9 = objc_msgSend_parseChildrenAsArrayFromXMLNode_(parser, v6, node, v7);
    v13 = objc_msgSend_count(v9, v10, v11, v12);
    if (v13)
    {
      v16 = v13;
      v17 = 0;
      for (i = 0; i != v16; ++i)
      {
        v19 = objc_msgSend_objectAtIndex_(v9, v14, i, v15);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v17)
            {
              v17 = objc_msgSend_mutableCopy(v9, v14, v20, v15);
              v9 = v17;
            }

            v21 = [EQKitMathMLMStackCarry alloc];
            v24 = objc_msgSend_initWithChild_(v21, v22, v19, v23);
            objc_msgSend_replaceObjectAtIndex_withObject_(v17, v25, i, v24);
          }
        }
      }
    }

    else
    {
      v17 = 0;
    }

    v26 = v9;
    v8->mChildren = v26;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v35, v40, 16);
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
            objc_enumerationMutation(v26);
          }

          objc_msgSend_setParent_(*(*(&v35 + 1) + 8 * v33++), v29, v8, v30);
        }

        while (v31 != v33);
        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v35, v40, 16);
      }

      while (v31);
    }
  }

  return v8;
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38B38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38B38))
  {
    sub_275C8E754(qword_280A38B20, &unk_275D0C194, &dword_275D0C19C);
    __cxa_guard_release(&qword_280A38B38);
  }

  return qword_280A38B20;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMStackCarries;
  [(EQKitMathMLMStackCarries *)&v3 dealloc];
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