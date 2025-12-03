@interface EQKitMathMLMRow
- (BOOL)isBaseFontNameUsed;
- (BOOL)isEmbellishedOperator;
- (EQKitMathMLMRow)init;
- (EQKitMathMLMRow)initWithChildren:(id)children node:(_xmlNode *)node;
- (NSString)description;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)operatorCore;
- (void)dealloc;
@end

@implementation EQKitMathMLMRow

- (EQKitMathMLMRow)init
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEA60], a2, v2, v3);

  return objc_msgSend_initWithChildren_(self, v5, v6, v7);
}

- (EQKitMathMLMRow)initWithChildren:(id)children node:(_xmlNode *)node
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = EQKitMathMLMRow;
  v6 = [(EQKitMathMLMRow *)&v20 init];
  if (v6)
  {
    v6->mChildren = children;
    v6->mFlags.mImplied = node == 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    mChildren = v6->mChildren;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(mChildren, v8, &v16, v21, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(mChildren);
          }

          objc_msgSend_setParent_(*(*(&v16 + 1) + 8 * i), v10, v6, v11);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(mChildren, v10, &v16, v21, 16);
      }

      while (v12);
    }
  }

  return v6;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v6 = objc_msgSend_parseChildrenAsArrayFromXMLNode_(parser, a2, node, parser);

  return MEMORY[0x2821F9670](self, sel_initWithChildren_node_, v6, node);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMRow;
  [(EQKitMathMLMRow *)&v3 dealloc];
}

- (BOOL)isEmbellishedOperator
{
  v4 = sub_275CC5BA0(self->mChildren, a2, v2, v3);
  if (objc_msgSend_count(v4, v5, v6, v7) != 1)
  {
    return 0;
  }

  Object = objc_msgSend_firstObject(v4, v8, v9, v10);

  return objc_msgSend_isEmbellishedOperator(Object, v12, v13, v14);
}

- (id)operatorCore
{
  v4 = sub_275CC5BA0(self->mChildren, a2, v2, v3);
  if (objc_msgSend_count(v4, v5, v6, v7) != 1)
  {
    return 0;
  }

  Object = objc_msgSend_firstObject(v4, v8, v9, v10);

  return objc_msgSend_operatorCore(Object, v12, v13, v14);
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
  if (self->mFlags.mImplied)
  {
    return objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p %@%@>", v7, v5, self, @"implied ", self->mChildren);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p %@%@>", v7, v5, self, &stru_2884CC9F8, self->mChildren);
  }
}

@end