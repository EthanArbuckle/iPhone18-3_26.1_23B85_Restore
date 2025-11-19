@interface TSSStylesheet
- (BOOL)cascadedContainsStyle:(id)a3;
- (BOOL)containsStyle:(id)a3;
- (BOOL)isAncestorOf:(id)a3;
- (BOOL)isDescendentOf:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSSet)styles;
- (TSSStylesheet)initWithContext:(id)a3 canCullStyles:(BOOL)a4;
- (id)_defaultCharacterStyleWasCreated:(BOOL *)a3;
- (id)_defaultColumnStyleWasCreated:(BOOL *)a3;
- (id)_defaultListStyleWasCreated:(BOOL *)a3;
- (id)_defaultParagraphStyleWasCreated:(BOOL *)a3;
- (id)_defaultStyleOfClass:(Class)a3 withIdentifier:(id)a4 wasCreated:(BOOL *)a5 usingBlock:(id)a6;
- (id)_hyperlinkStyleWasCreated:(BOOL *)a3;
- (id)cascadedFirstStyleWithName:(id)a3;
- (id)cascadedStyleWithIdentifier:(id)a3;
- (id)cascadedStyleWithIdentifier:(id)a3 componentMask:(int)a4;
- (id)childrenOfStyle:(id)a3;
- (id)firstRootlessStyleOfClass:(Class)a3 withOverridePropertyMap:(id)a4;
- (id)firstStyleWithName:(id)a3;
- (id)headerAndFooterStyle;
- (id)identifiedStyles;
- (id)identifiedStylesOfClass:(Class)a3;
- (id)namedStylesOfClass:(Class)a3;
- (id)pVariationOfStyle:(id)a3 propertyMap:(id)a4 matchStyles:(id)a5 context:(id)a6;
- (id)p_variationMapForVaryingCharacterStyle:(id)a3 overParagraphStyle:(id)a4 withPropertyMap:(id)a5;
- (id)rootAncestor;
- (id)styleWithIdentifier:(id)a3;
- (id)styleWithIdentifier:(id)a3 componentMask:(int)a4;
- (id)stylesOfClass:(Class)a3;
- (id)stylesPassingTest:(id)a3;
- (id)stylesWithName:(id)a3;
- (id)stylesWithName:(id)a3 ofClass:(Class)a4;
- (id)unusedStyleIdentifierWithPackageString:(id)a3 styleDescriptor:(id)a4 contentTag:(id)a5;
- (id)variationOfCharacterStyle:(id)a3 paragraphStyle:(id)a4 propertyMap:(id)a5;
- (id)variationOfStyle:(id)a3 exactPropertyMap:(id)a4;
- (id)variationOfStyle:(id)a3 propertyMap:(id)a4;
- (id)variationOfStyle:(id)a3 propertyMap:(id)a4 context:(id)a5;
- (id)variationOfStyle:(id)a3 propertyMap:(id)a4 matchStyles:(id)a5 context:(id)a6;
- (id)variationOfStyleMatchingStyle:(id)a3 withNewParentStyle:(id)a4;
- (unint64_t)descendantCount;
- (void)addStyle:(id)a3 withParent:(id)a4 identifier:(id)a5;
- (void)dealloc;
- (void)didLoadChildObjectFromDocumentSupport:(id)a3;
- (void)enumerateCascadedStylesUsingBlock:(id)a3;
- (void)enumerateStylesUsingBlock:(id)a3;
- (void)p_addStyle:(id)a3 withParent:(id)a4 identifier:(id)a5;
- (void)p_addStyleToParentChildren:(id)a3;
- (void)p_removeStyle:(id)a3;
- (void)p_removeStyleFromParentChildren:(id)a3;
- (void)p_setIdentifier:(id)a3 ofStyle:(id)a4;
- (void)p_setParent:(id)a3 ofStyle:(id)a4;
- (void)removeStyle:(id)a3;
- (void)setIdentifier:(id)a3 ofStyle:(id)a4;
- (void)setParent:(id)a3 ofStyle:(id)a4;
- (void)setParent:(id)a3 withParentStyleMap:(__CFDictionary *)a4;
- (void)unlockStylesheetForDurationOfBlock:(id)a3;
@end

@implementation TSSStylesheet

- (TSSStylesheet)initWithContext:(id)a3 canCullStyles:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = TSSStylesheet;
  v5 = [(TSPObject *)&v7 initWithContext:a3];
  if (v5)
  {
    v5->mStyles = objc_alloc_init(MEMORY[0x277D6C318]);
    v5->mIdentifierToStyleMap = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5->mParentToChildrenStyleMap = objc_alloc_init(MEMORY[0x277D6C368]);
    v5->mCanCullStyles = a4;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSSStylesheet;
  [(TSSStylesheet *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (a3)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      objc_sync_enter(self);
      objc_sync_enter(a3);
      if ([*(a3 + 8) isEqual:self->mStyles])
      {
        v6 = [*(a3 + 9) isEqualToDictionary:self->mIdentifierToStyleMap];
        objc_sync_exit(a3);
        objc_sync_exit(self);
        if (v6)
        {
          return 1;
        }
      }

      else
      {
        objc_sync_exit(a3);
        objc_sync_exit(self);
      }
    }
  }

  return 0;
}

- (NSSet)styles
{
  objc_sync_enter(self);
  v3 = [(TSUMutableRetainedPointerSet *)self->mStyles copy];
  objc_sync_exit(self);

  return v3;
}

- (void)setParent:(id)a3 withParentStyleMap:(__CFDictionary *)a4
{
  [(TSPObject *)self willModify:a3];
  mParent = self->mParent;
  if (mParent)
  {
    mParent->mChild = 0;

    self->mParent = 0;
  }

  v7 = a3;
  self->mParent = v7;
  if (v7)
  {
    v7->mChild = self;
  }
}

- (BOOL)isDescendentOf:(id)a3
{
  mParent = self->mParent;
  if (mParent)
  {
    LOBYTE(mParent) = mParent == a3 || [(TSSStylesheet *)mParent isDescendentOf:?];
  }

  return mParent;
}

- (BOOL)isAncestorOf:(id)a3
{
  v5 = [a3 parent];
  if (v5)
  {
    if ([a3 parent] == self)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v6 = [a3 parent];

      LOBYTE(v5) = [(TSSStylesheet *)self isAncestorOf:v6];
    }
  }

  return v5;
}

- (id)rootAncestor
{
  while (1)
  {
    v2 = self;
    if (![(TSSStylesheet *)self parent])
    {
      break;
    }

    self = [(TSSStylesheet *)v2 parent];
  }

  return v2;
}

- (unint64_t)descendantCount
{
  v2 = self;
  for (i = 0; [(TSSStylesheet *)v2 child]; v2 = [(TSSStylesheet *)v2 child])
  {
    ++i;
  }

  return i;
}

- (void)addStyle:(id)a3 withParent:(id)a4 identifier:(id)a5
{
  [(TSPObject *)self willModify];
  objc_sync_enter(self);
  [(TSSStylesheet *)self p_addStyle:a3 withParent:a4 identifier:a5];

  objc_sync_exit(self);
}

- (void)removeStyle:(id)a3
{
  [(TSPObject *)self willModify];
  objc_sync_enter(self);
  [(TSSStylesheet *)self p_removeStyle:a3];

  objc_sync_exit(self);
}

- (BOOL)containsStyle:(id)a3
{
  objc_sync_enter(self);
  LOBYTE(a3) = [(TSUMutableRetainedPointerSet *)self->mStyles containsObject:a3];
  objc_sync_exit(self);
  return a3;
}

- (BOOL)cascadedContainsStyle:(id)a3
{
  if ([(TSSStylesheet *)self containsStyle:?])
  {
    LOBYTE(mParent) = 1;
  }

  else
  {
    mParent = self->mParent;
    if (mParent)
    {

      LOBYTE(mParent) = [(TSSStylesheet *)mParent cascadedContainsStyle:a3];
    }
  }

  return mParent;
}

- (id)styleWithIdentifier:(id)a3
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->mIdentifierToStyleMap objectForKeyedSubscript:a3];
  objc_sync_exit(self);
  return v5;
}

- (id)cascadedStyleWithIdentifier:(id)a3
{
  result = [(TSSStylesheet *)self styleWithIdentifier:?];
  if (!result)
  {
    mParent = self->mParent;

    return [(TSSStylesheet *)mParent cascadedStyleWithIdentifier:a3];
  }

  return result;
}

- (id)styleWithIdentifier:(id)a3 componentMask:(int)a4
{
  v30 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v7 = String(a3, v6);
  v8 = [v7 count] > 2;
  v9 = [v7 count] > 2;
  v10 = [v7 count] > 2;
  v11 = [v7 count] == 4;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [(NSMutableDictionary *)self->mIdentifierToStyleMap keyEnumerator];
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = a4 & v8;
    v15 = v9 & (a4 >> 1);
    v16 = v10 & (a4 >> 2);
    v24 = v11 & (a4 >> 3);
    v17 = *v26;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        if (!v14 || [objc_msgSend(v7 objectAtIndexedSubscript:{0), "isEqual:", String(v19)}])
        {
          if (!v15 || (v20 = [objc_msgSend(v7 objectAtIndexedSubscript:{1), "intValue"}], String(v19) == v20))
          {
            if ((!v16 || [objc_msgSend(v7 objectAtIndexedSubscript:{2), "isEqual:", String(v19)}]) && (!v24 || objc_msgSend(objc_msgSend(v7, "objectAtIndexedSubscript:", 3), "isEqual:", String(v19))))
            {
              v21 = [(NSMutableDictionary *)self->mIdentifierToStyleMap objectForKeyedSubscript:v19];
              goto LABEL_18;
            }
          }
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_18:
  objc_sync_exit(self);
  return v21;
}

- (id)cascadedStyleWithIdentifier:(id)a3 componentMask:(int)a4
{
  v4 = *&a4;
  result = [TSSStylesheet styleWithIdentifier:"styleWithIdentifier:componentMask:" componentMask:?];
  if (!result)
  {
    mParent = self->mParent;

    return [(TSSStylesheet *)mParent cascadedStyleWithIdentifier:a3 componentMask:v4];
  }

  return result;
}

- (void)setIdentifier:(id)a3 ofStyle:(id)a4
{
  [(TSPObject *)self willModify];
  objc_sync_enter(self);
  [(TSSStylesheet *)self p_setIdentifier:a3 ofStyle:a4];

  objc_sync_exit(self);
}

- (void)setParent:(id)a3 ofStyle:(id)a4
{
  [(TSPObject *)self willModify];
  objc_sync_enter(self);
  [(TSSStylesheet *)self p_setParent:a3 ofStyle:a4];

  objc_sync_exit(self);
}

- (id)childrenOfStyle:(id)a3
{
  objc_sync_enter(self);
  v5 = [MEMORY[0x277CBEB98] setWithArray:{-[TSURetainedPointerKeyDictionary objectForKeyedSubscript:](self->mParentToChildrenStyleMap, "objectForKeyedSubscript:", a3)}];
  objc_sync_exit(self);
  return v5;
}

- (id)firstStyleWithName:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mStyles = self->mStyles;
  v6 = [(TSUMutableRetainedPointerSet *)mStyles countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(mStyles);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      if ([a3 isEqualToString:{objc_msgSend(v9, "name")}])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(TSUMutableRetainedPointerSet *)mStyles countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  objc_sync_exit(self);
  return v9;
}

- (id)cascadedFirstStyleWithName:(id)a3
{
  result = [(TSSStylesheet *)self firstStyleWithName:?];
  if (!result)
  {
    v6 = [(TSSStylesheet *)self parent];

    return [(TSSStylesheet *)v6 cascadedFirstStyleWithName:a3];
  }

  return result;
}

- (id)stylesWithName:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mStyles = self->mStyles;
  v6 = 0;
  v7 = [(TSUMutableRetainedPointerSet *)mStyles countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(mStyles);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([a3 isEqualToString:{objc_msgSend(v10, "name")}])
        {
          if (!v6)
          {
            v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v6 addObject:v10];
        }
      }

      v7 = [(TSUMutableRetainedPointerSet *)mStyles countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(self);
  return v6;
}

- (id)stylesWithName:(id)a3 ofClass:(Class)a4
{
  v19 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  mStyles = self->mStyles;
  v8 = 0;
  v9 = [(TSUMutableRetainedPointerSet *)mStyles countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(mStyles);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([a3 isEqualToString:{objc_msgSend(v12, "name")}] && objc_msgSend(v12, "isMemberOfClass:", a4))
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v8 addObject:v12];
        }
      }

      v9 = [(TSUMutableRetainedPointerSet *)mStyles countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  objc_sync_exit(self);
  return v8;
}

- (id)stylesOfClass:(Class)a3
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mStyles = self->mStyles;
  v6 = 0;
  v7 = [(TSUMutableRetainedPointerSet *)mStyles countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(mStyles);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isMemberOfClass:a3])
        {
          if (!v6)
          {
            v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v6 addObject:v10];
        }
      }

      v7 = [(TSUMutableRetainedPointerSet *)mStyles countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(self);
  return v6;
}

- (id)identifiedStyles
{
  objc_sync_enter(self);
  v3 = [(NSMutableDictionary *)self->mIdentifierToStyleMap allValues];
  objc_sync_exit(self);
  return v3;
}

- (id)identifiedStylesOfClass:(Class)a3
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mIdentifierToStyleMap = self->mIdentifierToStyleMap;
  v6 = 0;
  v7 = [(NSMutableDictionary *)mIdentifierToStyleMap countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(mIdentifierToStyleMap);
        }

        v10 = [(NSMutableDictionary *)self->mIdentifierToStyleMap objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        if ([v10 isMemberOfClass:a3])
        {
          if (!v6)
          {
            v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v6 addObject:v10];
        }
      }

      v7 = [(NSMutableDictionary *)mIdentifierToStyleMap countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(self);
  return v6;
}

- (void)enumerateStylesUsingBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mStyles = self->mStyles;
  v6 = [(TSUMutableRetainedPointerSet *)mStyles countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(mStyles);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      v10 = 0;
      (*(a3 + 2))(a3, v9, &v10);
      if (v10)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(TSUMutableRetainedPointerSet *)mStyles countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_sync_exit(self);
}

- (void)enumerateCascadedStylesUsingBlock:(id)a3
{
  [(TSSStylesheet *)self enumerateStylesUsingBlock:?];
  if ([(TSSStylesheet *)self parent])
  {
    v5 = [(TSSStylesheet *)self parent];

    [(TSSStylesheet *)v5 enumerateStylesUsingBlock:a3];
  }
}

- (id)stylesPassingTest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mStyles = self->mStyles;
  v6 = 0;
  v7 = [(TSUMutableRetainedPointerSet *)mStyles countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(mStyles);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v12 = 0;
      if ((*(a3 + 2))(a3, v10, &v12))
      {
        if (!v6)
        {
          v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        [v6 addObject:v10];
      }

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(TSUMutableRetainedPointerSet *)mStyles countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_sync_exit(self);
  if (v6)
  {
    return v6;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (id)namedStylesOfClass:(Class)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__TSSStylesheet_namedStylesOfClass___block_invoke;
  v4[3] = &unk_279D48058;
  v4[4] = a3;
  return [(TSSStylesheet *)self stylesPassingTest:v4];
}

uint64_t __36__TSSStylesheet_namedStylesOfClass___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 name];
  if (result)
  {
    v5 = *(a1 + 32);

    return [a2 isMemberOfClass:v5];
  }

  return result;
}

- (id)firstRootlessStyleOfClass:(Class)a3 withOverridePropertyMap:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mStyles = self->mStyles;
  v8 = [(TSUMutableRetainedPointerSet *)mStyles countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(mStyles);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      if ([v11 isMemberOfClass:a3])
      {
        if (![v11 styleIdentifier] && (objc_msgSend(v11, "isVariation") & 1) == 0 && !objc_msgSend(v11, "parent") && (objc_msgSend(v11, "overridePropertyMapIsEqualTo:", a4) & 1) != 0)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [(TSUMutableRetainedPointerSet *)mStyles countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v11 = 0;
  }

  objc_sync_exit(self);
  return v11;
}

- (id)variationOfStyle:(id)a3 propertyMap:(id)a4
{
  if (!a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet variationOfStyle:propertyMap:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 713, @"invalid nil value for '%s'", "style"}];
  }

  v9 = a3;
  if ([a3 isVariation])
  {
    v9 = [a3 parent];
  }

  if (!v9)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet variationOfStyle:propertyMap:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 717, @"Cannot create a variation of variation style <%p> with no parent", a3}];
  }

  if ([v9 isVariation])
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet variationOfStyle:propertyMap:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 718, @"Can't create variation with a variation base style <%p>.", v9}];
  }

  v14 = [a3 newOverridePropertyMapWithPropertyMap:a4];
  if ([v14 count])
  {
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v14 = 0;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  if (!v14)
  {
    v15 = v9;
    goto LABEL_24;
  }

LABEL_15:
  if (v9 != a3 && [a3 stylesheet] == self && (v19 = objc_msgSend(a3, "overridePropertyMapIsEqualTo:", v14), a3) && (v19 & 1) != 0)
  {
    v15 = a3;
  }

  else
  {
    objc_sync_enter(self);
    v16 = [(TSURetainedPointerKeyDictionary *)self->mParentToChildrenStyleMap objectForKeyedSubscript:v9];
    v17 = [v16 count] - 1;
    do
    {
      if (v17 == -1)
      {
        objc_sync_exit(self);
        goto LABEL_23;
      }

      v15 = [v16 objectAtIndexedSubscript:v17--];
    }

    while (([v15 overridePropertyMapIsEqualTo:v14] & 1) == 0);
    objc_sync_exit(self);
    if (v15)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = [objc_alloc(objc_opt_class()) initWithContext:-[TSPObject context](self name:"context") overridePropertyMap:0 isVariation:{v14, 1}];
    [(TSPObject *)self willModify];
    objc_sync_enter(self);
    [(TSSStylesheet *)self p_addStyle:v15 withParent:v9 identifier:0];
    objc_sync_exit(self);
  }

LABEL_24:

  return v15;
}

- (id)variationOfStyleMatchingStyle:(id)a3 withNewParentStyle:(id)a4
{
  v6 = [a3 propertyMap];

  return [(TSSStylesheet *)self variationOfStyle:a4 propertyMap:v6];
}

- (id)variationOfStyle:(id)a3 propertyMap:(id)a4 context:(id)a5
{
  if ([(TSPObject *)self context]== a5)
  {

    return [(TSSStylesheet *)self variationOfStyle:a3 propertyMap:a4];
  }

  else
  {

    return [(TSSStylesheet *)self pVariationOfStyle:a3 propertyMap:a4 matchStyles:0 context:a5];
  }
}

- (id)variationOfStyle:(id)a3 propertyMap:(id)a4 matchStyles:(id)a5 context:(id)a6
{
  if ([(TSPObject *)self context]== a6)
  {

    return [(TSSStylesheet *)self variationOfStyle:a3 propertyMap:a4];
  }

  else
  {

    return [(TSSStylesheet *)self pVariationOfStyle:a3 propertyMap:a4 matchStyles:a5 context:a6];
  }
}

- (id)variationOfStyle:(id)a3 exactPropertyMap:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet variationOfStyle:exactPropertyMap:]"];
    [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 837, @"invalid nil value for '%s'", "originalStyle"}];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x277D6C290] currentHandler];
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet variationOfStyle:exactPropertyMap:]"];
  [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 838, @"invalid nil value for '%s'", "propertyMap"}];
LABEL_3:
  v7 = a3;
  if ([a3 isVariation])
  {
    v7 = [a3 parent];
  }

  if (!v7)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet variationOfStyle:exactPropertyMap:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 841, @"Cannot create a variation of variation style <%p> with no parent", a3}];
  }

  if ([v7 isVariation])
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet variationOfStyle:exactPropertyMap:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 842, @"Can't create variation with a variation base style <%p>.", v7}];
  }

  v12 = a4;
  objc_sync_enter(self);
  v13 = [(TSURetainedPointerKeyDictionary *)self->mParentToChildrenStyleMap objectForKeyedSubscript:v7];
  v14 = [v13 count];
  if (!v14)
  {
LABEL_14:
    objc_sync_exit(self);
LABEL_15:
    v17 = [objc_alloc(objc_opt_class()) initWithContext:-[TSPObject context](self name:"context") overridePropertyMap:0 isVariation:{v12, 1}];
    [(TSPObject *)self willModify];
    objc_sync_enter(self);
    [(TSSStylesheet *)self p_addStyle:v17 withParent:v7 identifier:0];
    objc_sync_exit(self);

    goto LABEL_16;
  }

  v15 = v14 - 1;
  while (1)
  {
    v16 = [v13 objectAtIndexedSubscript:v15];
    v17 = v16;
    if (v16 != a3 && ([v16 overridePropertyMapIsEqualTo:v12] & 1) != 0)
    {
      break;
    }

    if (--v15 == -1)
    {
      goto LABEL_14;
    }
  }

  objc_sync_exit(self);
  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v17;
}

- (void)didLoadChildObjectFromDocumentSupport:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    if ([v4 stylesheet] == self)
    {
      objc_sync_enter(self);
      if (([(TSUMutableRetainedPointerSet *)self->mStyles containsObject:v5]& 1) == 0)
      {
        [(TSPObject *)self willModify];
        if ([v5 styleIdentifier])
        {
          -[NSMutableDictionary setObject:forKeyedSubscript:](self->mIdentifierToStyleMap, "setObject:forKeyedSubscript:", v5, [v5 styleIdentifier]);
        }

        if ([v5 parent])
        {
          [(TSSStylesheet *)self p_addStyleToParentChildren:v5];
        }

        [(TSUMutableRetainedPointerSet *)self->mStyles addObject:v5];
      }

      objc_sync_exit(self);
    }
  }
}

- (void)unlockStylesheetForDurationOfBlock:(id)a3
{
  mIsLocked = self->mIsLocked;
  self->mIsLocked = 0;
  (*(a3 + 2))(a3, a2);
  self->mIsLocked = mIsLocked;
}

- (void)p_addStyle:(id)a3 withParent:(id)a4 identifier:(id)a5
{
  if (a3)
  {
    objc_sync_enter(self);
    if (-[TSSStylesheet containsStyle:](self, "containsStyle:", a3) || [a3 stylesheet])
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet p_addStyle:withParent:identifier:]"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"];
      v12 = TSUObjectReferenceDescription();
      [v9 handleFailureInFunction:v10 file:v11 lineNumber:995 description:{@"Adding style %@ to stylesheet %@ when style is already in a stylesheet.", v12, TSUObjectReferenceDescription()}];
      if ([a3 stylesheet] != self)
      {
        [objc_msgSend(a3 "stylesheet")];
      }
    }

    [(TSUMutableRetainedPointerSet *)self->mStyles addObject:a3];
    [a3 setStylesheet:self];
    if (a4)
    {
      [(TSSStylesheet *)self p_setParent:a4 ofStyle:a3];
    }

    if (a5)
    {
      [(TSSStylesheet *)self p_setIdentifier:a5 ofStyle:a3];
    }

    objc_sync_exit(self);
  }
}

- (void)p_removeStyle:(id)a3
{
  if (a3)
  {
    objc_sync_enter(self);
    if (!-[TSSStylesheet containsStyle:](self, "containsStyle:", a3) || [a3 stylesheet] != self)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet p_removeStyle:]"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"];
      v8 = TSUObjectReferenceDescription();
      [v5 handleFailureInFunction:v6 file:v7 lineNumber:1037 description:{@"Removing style %@ from stylesheet %@ when style not in stylesheet.", v8, TSUObjectReferenceDescription()}];
    }

    if ([a3 parent])
    {
      [(TSSStylesheet *)self p_setParent:0 ofStyle:a3];
    }

    if ([a3 styleIdentifier])
    {
      [(TSSStylesheet *)self p_setIdentifier:0 ofStyle:a3];
    }

    [a3 setStylesheet:0];
    [(TSUMutableRetainedPointerSet *)self->mStyles removeObject:a3];

    objc_sync_exit(self);
  }
}

- (void)p_setIdentifier:(id)a3 ofStyle:(id)a4
{
  v7 = [a3 isEqual:&stru_287D36338];
  if (a4 && (v7 & 1) == 0)
  {
    objc_sync_enter(self);
    if ([(TSSStylesheet *)self containsStyle:a4])
    {
      if ([a4 stylesheet] == self)
      {
        v8 = [(TSSStylesheet *)self styleWithIdentifier:a3];
        if (v8 != a4)
        {
          if (v8)
          {
            [(TSSStylesheet *)self p_setIdentifier:0 ofStyle:v8];
          }

          if ([a4 styleIdentifier])
          {
            -[NSMutableDictionary removeObjectForKey:](self->mIdentifierToStyleMap, "removeObjectForKey:", [a4 styleIdentifier]);
          }

          [a4 setStyleIdentifier:a3];
          if (a3)
          {
            [(NSMutableDictionary *)self->mIdentifierToStyleMap setObject:a4 forKeyedSubscript:a3];
          }
        }
      }
    }

    objc_sync_exit(self);
  }
}

- (void)p_setParent:(id)a3 ofStyle:(id)a4
{
  if (a4)
  {
    objc_sync_enter(self);
    if (-[TSSStylesheet containsStyle:](self, "containsStyle:", a4) && [a4 stylesheet] == self)
    {
      if ([a4 parent])
      {
        [(TSSStylesheet *)self p_removeStyleFromParentChildren:a4];
      }

      [a4 setParent:a3];
      if (a3)
      {
        [(TSSStylesheet *)self p_addStyleToParentChildren:a4];
      }
    }

    objc_sync_exit(self);
  }
}

- (void)p_addStyleToParentChildren:(id)a3
{
  objc_sync_enter(self);
  v5 = -[TSURetainedPointerKeyDictionary objectForKeyedSubscript:](self->mParentToChildrenStyleMap, "objectForKeyedSubscript:", [a3 parent]);
  v6 = v5;
  if (v5)
  {
    if ([v5 indexOfObjectIdenticalTo:a3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 addObject:a3];
    }
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{a3, 0}];
    -[TSURetainedPointerKeyDictionary setObject:forKeyedSubscript:](self->mParentToChildrenStyleMap, "setObject:forKeyedSubscript:", v7, [a3 parent]);
  }

  objc_sync_exit(self);
}

- (void)p_removeStyleFromParentChildren:(id)a3
{
  objc_sync_enter(self);
  v5 = -[TSURetainedPointerKeyDictionary objectForKeyedSubscript:](self->mParentToChildrenStyleMap, "objectForKeyedSubscript:", [a3 parent]);
  v6 = [v5 indexOfObjectIdenticalTo:a3];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 removeObjectAtIndex:v6];
  }

  if (v5 && ![v5 count])
  {
    -[TSURetainedPointerKeyDictionary removeObjectForKey:](self->mParentToChildrenStyleMap, "removeObjectForKey:", [a3 parent]);
  }

  objc_sync_exit(self);
}

- (id)pVariationOfStyle:(id)a3 propertyMap:(id)a4 matchStyles:(id)a5 context:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet pVariationOfStyle:propertyMap:matchStyles:context:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 1173, @"invalid nil value for '%s'", "style"}];
  }

  v13 = a3;
  if ([a3 isVariation])
  {
    v13 = [a3 parent];
  }

  if (!v13)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet pVariationOfStyle:propertyMap:matchStyles:context:]"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 1177, @"Cannot create a variation of variation style <%p> with no parent", a3}];
  }

  if ([v13 isVariation])
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet pVariationOfStyle:propertyMap:matchStyles:context:]"];
    [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 1178, @"Can't create variation with a variation base style <%p>.", v13}];
  }

  v18 = [a3 newOverridePropertyMapWithPropertyMap:a4];
  if ([v18 count])
  {
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v18 = 0;
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  if (!v18)
  {
    v19 = v13;
    goto LABEL_40;
  }

LABEL_15:
  if (v13 != a3 && [a3 stylesheet] == self)
  {
    v26 = [a3 overridePropertyMapIsEqualTo:v18];
    if (a3)
    {
      if (v26)
      {
        v19 = a3;
        goto LABEL_40;
      }
    }
  }

  objc_sync_enter(self);
  v20 = [(TSURetainedPointerKeyDictionary *)self->mParentToChildrenStyleMap objectForKeyedSubscript:v13];
  v21 = [v20 count] - 1;
  while (v21 != -1)
  {
    v19 = [v20 objectAtIndexedSubscript:v21--];
    if ([v19 overridePropertyMapIsEqualTo:v18])
    {
      goto LABEL_22;
    }
  }

  v19 = 0;
LABEL_22:
  objc_sync_exit(self);
  if (!a5 || v19)
  {
LABEL_33:
    if (v19)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = [a5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v22)
  {
    v23 = *v29;
LABEL_26:
    v24 = 0;
    while (1)
    {
      if (*v29 != v23)
      {
        objc_enumerationMutation(a5);
      }

      v19 = *(*(&v28 + 1) + 8 * v24);
      if ([v19 overridePropertyMapIsEqualTo:v18])
      {
        goto LABEL_33;
      }

      if (v22 == ++v24)
      {
        v22 = [a5 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v22)
        {
          goto LABEL_26;
        }

        break;
      }
    }
  }

LABEL_34:
  v19 = [objc_alloc(objc_opt_class()) initWithContext:a6 name:0 overridePropertyMap:v18 isVariation:1];
  [v19 setParent:v13];
  if (a5)
  {
    [a5 addObject:v19];
  }

  v25 = v19;
LABEL_40:

  return v19;
}

- (id)unusedStyleIdentifierWithPackageString:(id)a3 styleDescriptor:(id)a4 contentTag:(id)a5
{
  v9 = 0;
  do
  {
    v10 = String(a3, v9, a4);
    v11 = v10;
    if (a5)
    {
      v11 = String(v10, a5);
    }

    ++v9;
  }

  while ([(TSSStylesheet *)self styleWithIdentifier:v11]);
  return v11;
}

- (id)p_variationMapForVaryingCharacterStyle:(id)a3 overParagraphStyle:(id)a4 withPropertyMap:(id)a5
{
  v8 = +[TSSPropertyMap propertyMap];
  if (a3)
  {
    v9 = [a3 baseStyleForVariation];
    if ([a3 isVariation])
    {
      [v8 addValuesFromPropertyMap:{objc_msgSend(a3, "overridePropertyMap")}];
    }

    if (a5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = 0;
    if (a5)
    {
LABEL_5:
      [v8 addValuesFromPropertyMap:a5];
    }
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__19;
  v19 = __Block_byref_object_dispose__19;
  v20 = 0;
  v10 = [v8 allProperties];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__TSSStylesheet_TSWPStyleAdditions__p_variationMapForVaryingCharacterStyle_overParagraphStyle_withPropertyMap___block_invoke;
  v14[3] = &unk_279D48A68;
  v14[4] = v8;
  v14[5] = v9;
  v14[6] = a4;
  v14[7] = &v15;
  [v10 enumeratePropertiesUsingBlock:v14];
  if (v16[5])
  {
    [v8 removeValuesForProperties:?];
  }

  if (!v8)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet(TSWPStyleAdditions) p_variationMapForVaryingCharacterStyle:overParagraphStyle:withPropertyMap:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStylesheetAdditions.mm"), 127, @"invalid nil value for '%s'", "newPropertyMap"}];
  }

  _Block_object_dispose(&v15, 8);
  return v8;
}

uint64_t __111__TSSStylesheet_TSWPStyleAdditions__p_variationMapForVaryingCharacterStyle_overParagraphStyle_withPropertyMap___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) boxedObjectForProperty:a2];
  if (v4 == [MEMORY[0x277CBEB68] null])
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) boxedValueForProperty:a2];
  if (!v5)
  {
    v5 = [*(a1 + 48) boxedValueForProperty:a2];
  }

  if (v5 == [MEMORY[0x277CBEB68] null])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v4 == v6 || (result = [v4 isEqual:?], result))
  {
    v8 = *(*(*(a1 + 56) + 8) + 40);
    if (!v8)
    {
      *(*(*(a1 + 56) + 8) + 40) = objc_alloc_init(TSSMutablePropertySet);
      v8 = *(*(*(a1 + 56) + 8) + 40);
    }

    return [v8 addProperty:a2];
  }

  return result;
}

- (id)variationOfCharacterStyle:(id)a3 paragraphStyle:(id)a4 propertyMap:(id)a5
{
  if (a4)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet(TSWPStyleAdditions) variationOfCharacterStyle:paragraphStyle:propertyMap:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStylesheetAdditions.mm"), 160, @"invalid nil value for '%s'", "inParagraphStyle"}];
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x277D6C290] currentHandler];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet(TSWPStyleAdditions) variationOfCharacterStyle:paragraphStyle:propertyMap:]"];
  [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStylesheetAdditions.mm"), 161, @"invalid nil value for '%s'", "inPropertyMap"}];
LABEL_3:
  v9 = [(TSSStylesheet *)self p_variationMapForVaryingCharacterStyle:a3 overParagraphStyle:a4 withPropertyMap:a5];
  if (a3)
  {
    v10 = [a3 baseStyleForVariation];
  }

  else
  {
    v10 = [(TSSStylesheet *)self defaultCharacterStyle];
  }

  v15 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet(TSWPStyleAdditions) variationOfCharacterStyle:paragraphStyle:propertyMap:]"];
    [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStylesheetAdditions.mm"), 170, @"invalid nil value for '%s'", "baseStyle"}];
  }

  v18 = [(TSSStylesheet *)self variationOfStyle:v15 propertyMap:v9];
  if (v18 == [(TSSStylesheet *)self defaultCharacterStyle])
  {
    return 0;
  }

  else
  {
    return v18;
  }
}

- (id)headerAndFooterStyle
{
  objc_opt_class();
  -[TSSStylesheet cascadedFirstStyleWithName:](self, "cascadedFirstStyleWithName:", [TSWPBundle() localizedStringForKey:@"Header & Footer" value:&stru_287D36338 table:@"TSText"]);
  result = TSUDynamicCast();
  if (!result)
  {

    return [(TSSStylesheet *)self defaultParagraphStyle];
  }

  return result;
}

- (id)_defaultCharacterStyleWasCreated:(BOOL *)a3
{
  v5 = objc_opt_class();

  return [(TSSStylesheet *)self _defaultStyleOfClass:v5 withIdentifier:@"character-style-null" wasCreated:a3 usingBlock:&__block_literal_global_61];
}

uint64_t __67__TSSStylesheet_TSText_Internal___defaultCharacterStyleWasCreated___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [TSWPCharacterStyle alloc];
  v4 = [TSWPBundle() localizedStringForKey:@"None" value:&stru_287D36338 table:@"TSText"];

  return [(TSSStyle *)v3 initWithContext:a2 name:v4 overridePropertyMap:0 isVariation:0];
}

- (id)_hyperlinkStyleWasCreated:(BOOL *)a3
{
  v5 = objc_opt_class();

  return [(TSSStylesheet *)self _defaultStyleOfClass:v5 withIdentifier:@"character-style-hyperlink" wasCreated:a3 usingBlock:&__block_literal_global_71];
}

uint64_t __60__TSSStylesheet_TSText_Internal___hyperlinkStyleWasCreated___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [TSWPCharacterStyle alloc];
  v4 = [TSWPBundle() localizedStringForKey:@"Link" value:&stru_287D36338 table:@"TSText"];
  v5 = [TSSPropertyMap propertyMapWithPropertiesAndValues:22, 1, 0];

  return [(TSSStyle *)v3 initWithContext:a2 name:v4 overridePropertyMap:v5 isVariation:0];
}

- (id)_defaultParagraphStyleWasCreated:(BOOL *)a3
{
  v7 = 0;
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &v7;
  }

  v5 = [(TSSStylesheet *)self _defaultStyleOfClass:objc_opt_class() withIdentifier:@"paragraph-style-default" wasCreated:v4 usingBlock:&__block_literal_global_77_0];
  if (*v4)
  {
    [v5 setInitialListStyle:{-[TSSStylesheet defaultListStyle](self, "defaultListStyle")}];
  }

  return v5;
}

uint64_t __67__TSSStylesheet_TSText_Internal___defaultParagraphStyleWasCreated___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [TSWPParagraphStyle alloc];
  v4 = [TSWPBundle() localizedStringForKey:@"Free Form" value:&stru_287D36338 table:@"TSText"];
  v5 = +[TSWPParagraphStyle defaultPropertyMap];

  return [(TSSStyle *)v3 initWithContext:a2 name:v4 overridePropertyMap:v5 isVariation:0];
}

- (id)_defaultListStyleWasCreated:(BOOL *)a3
{
  v5 = objc_opt_class();

  return [(TSSStylesheet *)self _defaultStyleOfClass:v5 withIdentifier:@"text-0-liststyle-None" wasCreated:a3 usingBlock:&__block_literal_global_84];
}

uint64_t __62__TSSStylesheet_TSText_Internal___defaultListStyleWasCreated___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [TSWPListStyle alloc];
  v4 = [TSWPBundle() localizedStringForKey:@"None" value:&stru_287D36338 table:@"TSText"];
  v5 = +[TSWPListStyle defaultPropertyMap];

  return [(TSWPListStyle *)v3 initWithContext:a2 name:v4 overridePropertyMap:v5 isVariation:0];
}

- (id)_defaultColumnStyleWasCreated:(BOOL *)a3
{
  v5 = objc_opt_class();

  return [(TSSStylesheet *)self _defaultStyleOfClass:v5 withIdentifier:@"column-style-default" wasCreated:a3 usingBlock:&__block_literal_global_88];
}

uint64_t __64__TSSStylesheet_TSText_Internal___defaultColumnStyleWasCreated___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [TSWPColumnStyle alloc];

  return [(TSSStyle *)v3 initWithContext:a2 name:0 overridePropertyMap:0 isVariation:0];
}

- (id)_defaultStyleOfClass:(Class)a3 withIdentifier:(id)a4 wasCreated:(BOOL *)a5 usingBlock:(id)a6
{
  v10 = [(TSSStylesheet *)self cascadedStyleWithIdentifier:a4];
  if (!v10)
  {
    objc_sync_enter(self);
    v10 = [(TSSStylesheet *)self cascadedStyleWithIdentifier:a4];
    if (!v10)
    {
      v11 = [(TSSStylesheet *)self rootAncestor];
      v12 = [v11 isLocked];
      [v11 setIsLocked:0];
      v10 = (*(a6 + 2))(a6, [v11 context]);
      [v11 addStyle:v10 withIdentifier:a4];
      [v11 setIsLocked:v12];
      if (a5)
      {
        *a5 = 1;
      }
    }

    objc_sync_exit(self);
  }

  return v10;
}

@end