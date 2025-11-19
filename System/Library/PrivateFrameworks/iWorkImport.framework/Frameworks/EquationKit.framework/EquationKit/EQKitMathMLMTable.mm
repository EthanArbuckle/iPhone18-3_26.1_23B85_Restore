@interface EQKitMathMLMTable
- (BOOL)isBaseFontNameUsed;
- (NSString)description;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMTable

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 19;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  objc_msgSend_pushState_(a4, a2, 2, a4);
  v9 = objc_msgSend_parseChildrenAsArrayFromXMLNode_(a4, v7, a3, v8);
  v26.receiver = self;
  v26.super_class = EQKitMathMLMTable;
  v10 = [(EQKitMathMLMTable *)&v26 init];
  v14 = v10;
  if (a4)
  {
    if (a3)
    {
      if (v10)
      {
        v15 = v9;
        v14->mChildren = v15;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v22, v27, 16);
        if (v17)
        {
          v18 = v17;
          v19 = *v23;
          do
          {
            v20 = 0;
            do
            {
              if (*v23 != v19)
              {
                objc_enumerationMutation(v15);
              }

              objc_msgSend_setParent_(*(*(&v22 + 1) + 8 * v20++), v11, v14, v13);
            }

            while (v18 != v20);
            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v11, &v22, v27, 16);
          }

          while (v18);
        }
      }
    }
  }

  objc_msgSend_popState(a4, v11, v12, v13);
  return v14;
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38BF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38BF8))
  {
    sub_275C8E754(qword_280A38BE0, dword_275D0C20C, &unk_275D0C220);
    __cxa_guard_release(&qword_280A38BF8);
  }

  return qword_280A38BE0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMTable;
  [(EQKitMathMLMTable *)&v3 dealloc];
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