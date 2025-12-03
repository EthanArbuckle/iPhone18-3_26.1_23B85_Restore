@interface TSSStylesheet
- (BOOL)cascadedContainsStyle:(id)style;
- (BOOL)containsStyle:(id)style;
- (BOOL)isAncestorOf:(id)of;
- (BOOL)isDescendentOf:(id)of;
- (BOOL)isEqual:(id)equal;
- (NSSet)styles;
- (TSSStylesheet)initWithContext:(id)context canCullStyles:(BOOL)styles;
- (id)_defaultCharacterStyleWasCreated:(BOOL *)created;
- (id)_defaultColumnStyleWasCreated:(BOOL *)created;
- (id)_defaultListStyleWasCreated:(BOOL *)created;
- (id)_defaultParagraphStyleWasCreated:(BOOL *)created;
- (id)_defaultStyleOfClass:(Class)class withIdentifier:(id)identifier wasCreated:(BOOL *)created usingBlock:(id)block;
- (id)_hyperlinkStyleWasCreated:(BOOL *)created;
- (id)cascadedFirstStyleWithName:(id)name;
- (id)cascadedStyleWithIdentifier:(id)identifier;
- (id)cascadedStyleWithIdentifier:(id)identifier componentMask:(int)mask;
- (id)childrenOfStyle:(id)style;
- (id)firstRootlessStyleOfClass:(Class)class withOverridePropertyMap:(id)map;
- (id)firstStyleWithName:(id)name;
- (id)headerAndFooterStyle;
- (id)identifiedStyles;
- (id)identifiedStylesOfClass:(Class)class;
- (id)namedStylesOfClass:(Class)class;
- (id)pVariationOfStyle:(id)style propertyMap:(id)map matchStyles:(id)styles context:(id)context;
- (id)p_variationMapForVaryingCharacterStyle:(id)style overParagraphStyle:(id)paragraphStyle withPropertyMap:(id)map;
- (id)rootAncestor;
- (id)styleWithIdentifier:(id)identifier;
- (id)styleWithIdentifier:(id)identifier componentMask:(int)mask;
- (id)stylesOfClass:(Class)class;
- (id)stylesPassingTest:(id)test;
- (id)stylesWithName:(id)name;
- (id)stylesWithName:(id)name ofClass:(Class)class;
- (id)unusedStyleIdentifierWithPackageString:(id)string styleDescriptor:(id)descriptor contentTag:(id)tag;
- (id)variationOfCharacterStyle:(id)style paragraphStyle:(id)paragraphStyle propertyMap:(id)map;
- (id)variationOfStyle:(id)style exactPropertyMap:(id)map;
- (id)variationOfStyle:(id)style propertyMap:(id)map;
- (id)variationOfStyle:(id)style propertyMap:(id)map context:(id)context;
- (id)variationOfStyle:(id)style propertyMap:(id)map matchStyles:(id)styles context:(id)context;
- (id)variationOfStyleMatchingStyle:(id)style withNewParentStyle:(id)parentStyle;
- (unint64_t)descendantCount;
- (void)addStyle:(id)style withParent:(id)parent identifier:(id)identifier;
- (void)dealloc;
- (void)didLoadChildObjectFromDocumentSupport:(id)support;
- (void)enumerateCascadedStylesUsingBlock:(id)block;
- (void)enumerateStylesUsingBlock:(id)block;
- (void)p_addStyle:(id)style withParent:(id)parent identifier:(id)identifier;
- (void)p_addStyleToParentChildren:(id)children;
- (void)p_removeStyle:(id)style;
- (void)p_removeStyleFromParentChildren:(id)children;
- (void)p_setIdentifier:(id)identifier ofStyle:(id)style;
- (void)p_setParent:(id)parent ofStyle:(id)style;
- (void)removeStyle:(id)style;
- (void)setIdentifier:(id)identifier ofStyle:(id)style;
- (void)setParent:(id)parent ofStyle:(id)style;
- (void)setParent:(id)parent withParentStyleMap:(__CFDictionary *)map;
- (void)unlockStylesheetForDurationOfBlock:(id)block;
@end

@implementation TSSStylesheet

- (TSSStylesheet)initWithContext:(id)context canCullStyles:(BOOL)styles
{
  v7.receiver = self;
  v7.super_class = TSSStylesheet;
  v5 = [(TSPObject *)&v7 initWithContext:context];
  if (v5)
  {
    v5->mStyles = objc_alloc_init(MEMORY[0x277D6C318]);
    v5->mIdentifierToStyleMap = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5->mParentToChildrenStyleMap = objc_alloc_init(MEMORY[0x277D6C368]);
    v5->mCanCullStyles = styles;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSSStylesheet;
  [(TSSStylesheet *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (equal)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      objc_sync_enter(self);
      objc_sync_enter(equal);
      if ([*(equal + 8) isEqual:self->mStyles])
      {
        v6 = [*(equal + 9) isEqualToDictionary:self->mIdentifierToStyleMap];
        objc_sync_exit(equal);
        objc_sync_exit(self);
        if (v6)
        {
          return 1;
        }
      }

      else
      {
        objc_sync_exit(equal);
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

- (void)setParent:(id)parent withParentStyleMap:(__CFDictionary *)map
{
  [(TSPObject *)self willModify:parent];
  mParent = self->mParent;
  if (mParent)
  {
    mParent->mChild = 0;

    self->mParent = 0;
  }

  parentCopy = parent;
  self->mParent = parentCopy;
  if (parentCopy)
  {
    parentCopy->mChild = self;
  }
}

- (BOOL)isDescendentOf:(id)of
{
  mParent = self->mParent;
  if (mParent)
  {
    LOBYTE(mParent) = mParent == of || [(TSSStylesheet *)mParent isDescendentOf:?];
  }

  return mParent;
}

- (BOOL)isAncestorOf:(id)of
{
  parent = [of parent];
  if (parent)
  {
    if ([of parent] == self)
    {
      LOBYTE(parent) = 1;
    }

    else
    {
      parent2 = [of parent];

      LOBYTE(parent) = [(TSSStylesheet *)self isAncestorOf:parent2];
    }
  }

  return parent;
}

- (id)rootAncestor
{
  while (1)
  {
    selfCopy = self;
    if (![(TSSStylesheet *)self parent])
    {
      break;
    }

    self = [(TSSStylesheet *)selfCopy parent];
  }

  return selfCopy;
}

- (unint64_t)descendantCount
{
  selfCopy = self;
  for (i = 0; [(TSSStylesheet *)selfCopy child]; selfCopy = [(TSSStylesheet *)selfCopy child])
  {
    ++i;
  }

  return i;
}

- (void)addStyle:(id)style withParent:(id)parent identifier:(id)identifier
{
  [(TSPObject *)self willModify];
  objc_sync_enter(self);
  [(TSSStylesheet *)self p_addStyle:style withParent:parent identifier:identifier];

  objc_sync_exit(self);
}

- (void)removeStyle:(id)style
{
  [(TSPObject *)self willModify];
  objc_sync_enter(self);
  [(TSSStylesheet *)self p_removeStyle:style];

  objc_sync_exit(self);
}

- (BOOL)containsStyle:(id)style
{
  objc_sync_enter(self);
  LOBYTE(style) = [(TSUMutableRetainedPointerSet *)self->mStyles containsObject:style];
  objc_sync_exit(self);
  return style;
}

- (BOOL)cascadedContainsStyle:(id)style
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

      LOBYTE(mParent) = [(TSSStylesheet *)mParent cascadedContainsStyle:style];
    }
  }

  return mParent;
}

- (id)styleWithIdentifier:(id)identifier
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->mIdentifierToStyleMap objectForKeyedSubscript:identifier];
  objc_sync_exit(self);
  return v5;
}

- (id)cascadedStyleWithIdentifier:(id)identifier
{
  result = [(TSSStylesheet *)self styleWithIdentifier:?];
  if (!result)
  {
    mParent = self->mParent;

    return [(TSSStylesheet *)mParent cascadedStyleWithIdentifier:identifier];
  }

  return result;
}

- (id)styleWithIdentifier:(id)identifier componentMask:(int)mask
{
  v30 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v7 = String(identifier, v6);
  v8 = [v7 count] > 2;
  v9 = [v7 count] > 2;
  v10 = [v7 count] > 2;
  v11 = [v7 count] == 4;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  keyEnumerator = [(NSMutableDictionary *)self->mIdentifierToStyleMap keyEnumerator];
  v13 = [keyEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = mask & v8;
    v15 = v9 & (mask >> 1);
    v16 = v10 & (mask >> 2);
    v24 = v11 & (mask >> 3);
    v17 = *v26;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(keyEnumerator);
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

      v13 = [keyEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
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

- (id)cascadedStyleWithIdentifier:(id)identifier componentMask:(int)mask
{
  v4 = *&mask;
  result = [TSSStylesheet styleWithIdentifier:"styleWithIdentifier:componentMask:" componentMask:?];
  if (!result)
  {
    mParent = self->mParent;

    return [(TSSStylesheet *)mParent cascadedStyleWithIdentifier:identifier componentMask:v4];
  }

  return result;
}

- (void)setIdentifier:(id)identifier ofStyle:(id)style
{
  [(TSPObject *)self willModify];
  objc_sync_enter(self);
  [(TSSStylesheet *)self p_setIdentifier:identifier ofStyle:style];

  objc_sync_exit(self);
}

- (void)setParent:(id)parent ofStyle:(id)style
{
  [(TSPObject *)self willModify];
  objc_sync_enter(self);
  [(TSSStylesheet *)self p_setParent:parent ofStyle:style];

  objc_sync_exit(self);
}

- (id)childrenOfStyle:(id)style
{
  objc_sync_enter(self);
  v5 = [MEMORY[0x277CBEB98] setWithArray:{-[TSURetainedPointerKeyDictionary objectForKeyedSubscript:](self->mParentToChildrenStyleMap, "objectForKeyedSubscript:", style)}];
  objc_sync_exit(self);
  return v5;
}

- (id)firstStyleWithName:(id)name
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
      if ([name isEqualToString:{objc_msgSend(v9, "name")}])
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

- (id)cascadedFirstStyleWithName:(id)name
{
  result = [(TSSStylesheet *)self firstStyleWithName:?];
  if (!result)
  {
    parent = [(TSSStylesheet *)self parent];

    return [(TSSStylesheet *)parent cascadedFirstStyleWithName:name];
  }

  return result;
}

- (id)stylesWithName:(id)name
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
        if ([name isEqualToString:{objc_msgSend(v10, "name")}])
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

- (id)stylesWithName:(id)name ofClass:(Class)class
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
        if ([name isEqualToString:{objc_msgSend(v12, "name")}] && objc_msgSend(v12, "isMemberOfClass:", class))
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

- (id)stylesOfClass:(Class)class
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
        if ([v10 isMemberOfClass:class])
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
  allValues = [(NSMutableDictionary *)self->mIdentifierToStyleMap allValues];
  objc_sync_exit(self);
  return allValues;
}

- (id)identifiedStylesOfClass:(Class)class
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
        if ([v10 isMemberOfClass:class])
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

- (void)enumerateStylesUsingBlock:(id)block
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
      (*(block + 2))(block, v9, &v10);
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

- (void)enumerateCascadedStylesUsingBlock:(id)block
{
  [(TSSStylesheet *)self enumerateStylesUsingBlock:?];
  if ([(TSSStylesheet *)self parent])
  {
    parent = [(TSSStylesheet *)self parent];

    [(TSSStylesheet *)parent enumerateStylesUsingBlock:block];
  }
}

- (id)stylesPassingTest:(id)test
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
      if ((*(test + 2))(test, v10, &v12))
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

- (id)namedStylesOfClass:(Class)class
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__TSSStylesheet_namedStylesOfClass___block_invoke;
  v4[3] = &unk_279D48058;
  v4[4] = class;
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

- (id)firstRootlessStyleOfClass:(Class)class withOverridePropertyMap:(id)map
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
      if ([v11 isMemberOfClass:class])
      {
        if (![v11 styleIdentifier] && (objc_msgSend(v11, "isVariation") & 1) == 0 && !objc_msgSend(v11, "parent") && (objc_msgSend(v11, "overridePropertyMapIsEqualTo:", map) & 1) != 0)
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

- (id)variationOfStyle:(id)style propertyMap:(id)map
{
  if (!style)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet variationOfStyle:propertyMap:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 713, @"invalid nil value for '%s'", "style"}];
  }

  styleCopy = style;
  if ([style isVariation])
  {
    styleCopy = [style parent];
  }

  if (!styleCopy)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet variationOfStyle:propertyMap:]"];
    [currentHandler2 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 717, @"Cannot create a variation of variation style <%p> with no parent", style}];
  }

  if ([styleCopy isVariation])
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet variationOfStyle:propertyMap:]"];
    [currentHandler3 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 718, @"Can't create variation with a variation base style <%p>.", styleCopy}];
  }

  v14 = [style newOverridePropertyMapWithPropertyMap:map];
  if ([v14 count])
  {
    if (!styleCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v14 = 0;
    if (!styleCopy)
    {
      goto LABEL_15;
    }
  }

  if (!v14)
  {
    styleCopy2 = styleCopy;
    goto LABEL_24;
  }

LABEL_15:
  if (styleCopy != style && [style stylesheet] == self && (v19 = objc_msgSend(style, "overridePropertyMapIsEqualTo:", v14), style) && (v19 & 1) != 0)
  {
    styleCopy2 = style;
  }

  else
  {
    objc_sync_enter(self);
    v16 = [(TSURetainedPointerKeyDictionary *)self->mParentToChildrenStyleMap objectForKeyedSubscript:styleCopy];
    v17 = [v16 count] - 1;
    do
    {
      if (v17 == -1)
      {
        objc_sync_exit(self);
        goto LABEL_23;
      }

      styleCopy2 = [v16 objectAtIndexedSubscript:v17--];
    }

    while (([styleCopy2 overridePropertyMapIsEqualTo:v14] & 1) == 0);
    objc_sync_exit(self);
    if (styleCopy2)
    {
      goto LABEL_24;
    }

LABEL_23:
    styleCopy2 = [objc_alloc(objc_opt_class()) initWithContext:-[TSPObject context](self name:"context") overridePropertyMap:0 isVariation:{v14, 1}];
    [(TSPObject *)self willModify];
    objc_sync_enter(self);
    [(TSSStylesheet *)self p_addStyle:styleCopy2 withParent:styleCopy identifier:0];
    objc_sync_exit(self);
  }

LABEL_24:

  return styleCopy2;
}

- (id)variationOfStyleMatchingStyle:(id)style withNewParentStyle:(id)parentStyle
{
  propertyMap = [style propertyMap];

  return [(TSSStylesheet *)self variationOfStyle:parentStyle propertyMap:propertyMap];
}

- (id)variationOfStyle:(id)style propertyMap:(id)map context:(id)context
{
  if ([(TSPObject *)self context]== context)
  {

    return [(TSSStylesheet *)self variationOfStyle:style propertyMap:map];
  }

  else
  {

    return [(TSSStylesheet *)self pVariationOfStyle:style propertyMap:map matchStyles:0 context:context];
  }
}

- (id)variationOfStyle:(id)style propertyMap:(id)map matchStyles:(id)styles context:(id)context
{
  if ([(TSPObject *)self context]== context)
  {

    return [(TSSStylesheet *)self variationOfStyle:style propertyMap:map];
  }

  else
  {

    return [(TSSStylesheet *)self pVariationOfStyle:style propertyMap:map matchStyles:styles context:context];
  }
}

- (id)variationOfStyle:(id)style exactPropertyMap:(id)map
{
  if (style)
  {
    if (map)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet variationOfStyle:exactPropertyMap:]"];
    [currentHandler handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 837, @"invalid nil value for '%s'", "originalStyle"}];
    if (map)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet variationOfStyle:exactPropertyMap:]"];
  [currentHandler2 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 838, @"invalid nil value for '%s'", "propertyMap"}];
LABEL_3:
  styleCopy = style;
  if ([style isVariation])
  {
    styleCopy = [style parent];
  }

  if (!styleCopy)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet variationOfStyle:exactPropertyMap:]"];
    [currentHandler3 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 841, @"Cannot create a variation of variation style <%p> with no parent", style}];
  }

  if ([styleCopy isVariation])
  {
    currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet variationOfStyle:exactPropertyMap:]"];
    [currentHandler4 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 842, @"Can't create variation with a variation base style <%p>.", styleCopy}];
  }

  mapCopy = map;
  objc_sync_enter(self);
  v13 = [(TSURetainedPointerKeyDictionary *)self->mParentToChildrenStyleMap objectForKeyedSubscript:styleCopy];
  v14 = [v13 count];
  if (!v14)
  {
LABEL_14:
    objc_sync_exit(self);
LABEL_15:
    v17 = [objc_alloc(objc_opt_class()) initWithContext:-[TSPObject context](self name:"context") overridePropertyMap:0 isVariation:{mapCopy, 1}];
    [(TSPObject *)self willModify];
    objc_sync_enter(self);
    [(TSSStylesheet *)self p_addStyle:v17 withParent:styleCopy identifier:0];
    objc_sync_exit(self);

    goto LABEL_16;
  }

  v15 = v14 - 1;
  while (1)
  {
    v16 = [v13 objectAtIndexedSubscript:v15];
    v17 = v16;
    if (v16 != style && ([v16 overridePropertyMapIsEqualTo:mapCopy] & 1) != 0)
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

- (void)didLoadChildObjectFromDocumentSupport:(id)support
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

- (void)unlockStylesheetForDurationOfBlock:(id)block
{
  mIsLocked = self->mIsLocked;
  self->mIsLocked = 0;
  (*(block + 2))(block, a2);
  self->mIsLocked = mIsLocked;
}

- (void)p_addStyle:(id)style withParent:(id)parent identifier:(id)identifier
{
  if (style)
  {
    objc_sync_enter(self);
    if (-[TSSStylesheet containsStyle:](self, "containsStyle:", style) || [style stylesheet])
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet p_addStyle:withParent:identifier:]"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"];
      v12 = TSUObjectReferenceDescription();
      [currentHandler handleFailureInFunction:v10 file:v11 lineNumber:995 description:{@"Adding style %@ to stylesheet %@ when style is already in a stylesheet.", v12, TSUObjectReferenceDescription()}];
      if ([style stylesheet] != self)
      {
        [objc_msgSend(style "stylesheet")];
      }
    }

    [(TSUMutableRetainedPointerSet *)self->mStyles addObject:style];
    [style setStylesheet:self];
    if (parent)
    {
      [(TSSStylesheet *)self p_setParent:parent ofStyle:style];
    }

    if (identifier)
    {
      [(TSSStylesheet *)self p_setIdentifier:identifier ofStyle:style];
    }

    objc_sync_exit(self);
  }
}

- (void)p_removeStyle:(id)style
{
  if (style)
  {
    objc_sync_enter(self);
    if (!-[TSSStylesheet containsStyle:](self, "containsStyle:", style) || [style stylesheet] != self)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet p_removeStyle:]"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"];
      v8 = TSUObjectReferenceDescription();
      [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:1037 description:{@"Removing style %@ from stylesheet %@ when style not in stylesheet.", v8, TSUObjectReferenceDescription()}];
    }

    if ([style parent])
    {
      [(TSSStylesheet *)self p_setParent:0 ofStyle:style];
    }

    if ([style styleIdentifier])
    {
      [(TSSStylesheet *)self p_setIdentifier:0 ofStyle:style];
    }

    [style setStylesheet:0];
    [(TSUMutableRetainedPointerSet *)self->mStyles removeObject:style];

    objc_sync_exit(self);
  }
}

- (void)p_setIdentifier:(id)identifier ofStyle:(id)style
{
  v7 = [identifier isEqual:&stru_287D36338];
  if (style && (v7 & 1) == 0)
  {
    objc_sync_enter(self);
    if ([(TSSStylesheet *)self containsStyle:style])
    {
      if ([style stylesheet] == self)
      {
        v8 = [(TSSStylesheet *)self styleWithIdentifier:identifier];
        if (v8 != style)
        {
          if (v8)
          {
            [(TSSStylesheet *)self p_setIdentifier:0 ofStyle:v8];
          }

          if ([style styleIdentifier])
          {
            -[NSMutableDictionary removeObjectForKey:](self->mIdentifierToStyleMap, "removeObjectForKey:", [style styleIdentifier]);
          }

          [style setStyleIdentifier:identifier];
          if (identifier)
          {
            [(NSMutableDictionary *)self->mIdentifierToStyleMap setObject:style forKeyedSubscript:identifier];
          }
        }
      }
    }

    objc_sync_exit(self);
  }
}

- (void)p_setParent:(id)parent ofStyle:(id)style
{
  if (style)
  {
    objc_sync_enter(self);
    if (-[TSSStylesheet containsStyle:](self, "containsStyle:", style) && [style stylesheet] == self)
    {
      if ([style parent])
      {
        [(TSSStylesheet *)self p_removeStyleFromParentChildren:style];
      }

      [style setParent:parent];
      if (parent)
      {
        [(TSSStylesheet *)self p_addStyleToParentChildren:style];
      }
    }

    objc_sync_exit(self);
  }
}

- (void)p_addStyleToParentChildren:(id)children
{
  objc_sync_enter(self);
  v5 = -[TSURetainedPointerKeyDictionary objectForKeyedSubscript:](self->mParentToChildrenStyleMap, "objectForKeyedSubscript:", [children parent]);
  v6 = v5;
  if (v5)
  {
    if ([v5 indexOfObjectIdenticalTo:children] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 addObject:children];
    }
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{children, 0}];
    -[TSURetainedPointerKeyDictionary setObject:forKeyedSubscript:](self->mParentToChildrenStyleMap, "setObject:forKeyedSubscript:", v7, [children parent]);
  }

  objc_sync_exit(self);
}

- (void)p_removeStyleFromParentChildren:(id)children
{
  objc_sync_enter(self);
  v5 = -[TSURetainedPointerKeyDictionary objectForKeyedSubscript:](self->mParentToChildrenStyleMap, "objectForKeyedSubscript:", [children parent]);
  v6 = [v5 indexOfObjectIdenticalTo:children];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 removeObjectAtIndex:v6];
  }

  if (v5 && ![v5 count])
  {
    -[TSURetainedPointerKeyDictionary removeObjectForKey:](self->mParentToChildrenStyleMap, "removeObjectForKey:", [children parent]);
  }

  objc_sync_exit(self);
}

- (id)pVariationOfStyle:(id)style propertyMap:(id)map matchStyles:(id)styles context:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  if (!style)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet pVariationOfStyle:propertyMap:matchStyles:context:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 1173, @"invalid nil value for '%s'", "style"}];
  }

  styleCopy = style;
  if ([style isVariation])
  {
    styleCopy = [style parent];
  }

  if (!styleCopy)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet pVariationOfStyle:propertyMap:matchStyles:context:]"];
    [currentHandler2 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 1177, @"Cannot create a variation of variation style <%p> with no parent", style}];
  }

  if ([styleCopy isVariation])
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet pVariationOfStyle:propertyMap:matchStyles:context:]"];
    [currentHandler3 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStylesheet.m"), 1178, @"Can't create variation with a variation base style <%p>.", styleCopy}];
  }

  v18 = [style newOverridePropertyMapWithPropertyMap:map];
  if ([v18 count])
  {
    if (!styleCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v18 = 0;
    if (!styleCopy)
    {
      goto LABEL_15;
    }
  }

  if (!v18)
  {
    styleCopy2 = styleCopy;
    goto LABEL_40;
  }

LABEL_15:
  if (styleCopy != style && [style stylesheet] == self)
  {
    v26 = [style overridePropertyMapIsEqualTo:v18];
    if (style)
    {
      if (v26)
      {
        styleCopy2 = style;
        goto LABEL_40;
      }
    }
  }

  objc_sync_enter(self);
  v20 = [(TSURetainedPointerKeyDictionary *)self->mParentToChildrenStyleMap objectForKeyedSubscript:styleCopy];
  v21 = [v20 count] - 1;
  while (v21 != -1)
  {
    styleCopy2 = [v20 objectAtIndexedSubscript:v21--];
    if ([styleCopy2 overridePropertyMapIsEqualTo:v18])
    {
      goto LABEL_22;
    }
  }

  styleCopy2 = 0;
LABEL_22:
  objc_sync_exit(self);
  if (!styles || styleCopy2)
  {
LABEL_33:
    if (styleCopy2)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = [styles countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v22)
  {
    v23 = *v29;
LABEL_26:
    v24 = 0;
    while (1)
    {
      if (*v29 != v23)
      {
        objc_enumerationMutation(styles);
      }

      styleCopy2 = *(*(&v28 + 1) + 8 * v24);
      if ([styleCopy2 overridePropertyMapIsEqualTo:v18])
      {
        goto LABEL_33;
      }

      if (v22 == ++v24)
      {
        v22 = [styles countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v22)
        {
          goto LABEL_26;
        }

        break;
      }
    }
  }

LABEL_34:
  styleCopy2 = [objc_alloc(objc_opt_class()) initWithContext:context name:0 overridePropertyMap:v18 isVariation:1];
  [styleCopy2 setParent:styleCopy];
  if (styles)
  {
    [styles addObject:styleCopy2];
  }

  v25 = styleCopy2;
LABEL_40:

  return styleCopy2;
}

- (id)unusedStyleIdentifierWithPackageString:(id)string styleDescriptor:(id)descriptor contentTag:(id)tag
{
  v9 = 0;
  do
  {
    v10 = String(string, v9, descriptor);
    v11 = v10;
    if (tag)
    {
      v11 = String(v10, tag);
    }

    ++v9;
  }

  while ([(TSSStylesheet *)self styleWithIdentifier:v11]);
  return v11;
}

- (id)p_variationMapForVaryingCharacterStyle:(id)style overParagraphStyle:(id)paragraphStyle withPropertyMap:(id)map
{
  v8 = +[TSSPropertyMap propertyMap];
  if (style)
  {
    baseStyleForVariation = [style baseStyleForVariation];
    if ([style isVariation])
    {
      [v8 addValuesFromPropertyMap:{objc_msgSend(style, "overridePropertyMap")}];
    }

    if (map)
    {
      goto LABEL_5;
    }
  }

  else
  {
    baseStyleForVariation = 0;
    if (map)
    {
LABEL_5:
      [v8 addValuesFromPropertyMap:map];
    }
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__19;
  v19 = __Block_byref_object_dispose__19;
  v20 = 0;
  allProperties = [v8 allProperties];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__TSSStylesheet_TSWPStyleAdditions__p_variationMapForVaryingCharacterStyle_overParagraphStyle_withPropertyMap___block_invoke;
  v14[3] = &unk_279D48A68;
  v14[4] = v8;
  v14[5] = baseStyleForVariation;
  v14[6] = paragraphStyle;
  v14[7] = &v15;
  [allProperties enumeratePropertiesUsingBlock:v14];
  if (v16[5])
  {
    [v8 removeValuesForProperties:?];
  }

  if (!v8)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet(TSWPStyleAdditions) p_variationMapForVaryingCharacterStyle:overParagraphStyle:withPropertyMap:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStylesheetAdditions.mm"), 127, @"invalid nil value for '%s'", "newPropertyMap"}];
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

- (id)variationOfCharacterStyle:(id)style paragraphStyle:(id)paragraphStyle propertyMap:(id)map
{
  if (paragraphStyle)
  {
    if (map)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet(TSWPStyleAdditions) variationOfCharacterStyle:paragraphStyle:propertyMap:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStylesheetAdditions.mm"), 160, @"invalid nil value for '%s'", "inParagraphStyle"}];
    if (map)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet(TSWPStyleAdditions) variationOfCharacterStyle:paragraphStyle:propertyMap:]"];
  [currentHandler2 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStylesheetAdditions.mm"), 161, @"invalid nil value for '%s'", "inPropertyMap"}];
LABEL_3:
  v9 = [(TSSStylesheet *)self p_variationMapForVaryingCharacterStyle:style overParagraphStyle:paragraphStyle withPropertyMap:map];
  if (style)
  {
    baseStyleForVariation = [style baseStyleForVariation];
  }

  else
  {
    baseStyleForVariation = [(TSSStylesheet *)self defaultCharacterStyle];
  }

  v15 = baseStyleForVariation;
  if (!baseStyleForVariation)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStylesheet(TSWPStyleAdditions) variationOfCharacterStyle:paragraphStyle:propertyMap:]"];
    [currentHandler3 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPStylesheetAdditions.mm"), 170, @"invalid nil value for '%s'", "baseStyle"}];
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

- (id)_defaultCharacterStyleWasCreated:(BOOL *)created
{
  v5 = objc_opt_class();

  return [(TSSStylesheet *)self _defaultStyleOfClass:v5 withIdentifier:@"character-style-null" wasCreated:created usingBlock:&__block_literal_global_61];
}

uint64_t __67__TSSStylesheet_TSText_Internal___defaultCharacterStyleWasCreated___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [TSWPCharacterStyle alloc];
  v4 = [TSWPBundle() localizedStringForKey:@"None" value:&stru_287D36338 table:@"TSText"];

  return [(TSSStyle *)v3 initWithContext:a2 name:v4 overridePropertyMap:0 isVariation:0];
}

- (id)_hyperlinkStyleWasCreated:(BOOL *)created
{
  v5 = objc_opt_class();

  return [(TSSStylesheet *)self _defaultStyleOfClass:v5 withIdentifier:@"character-style-hyperlink" wasCreated:created usingBlock:&__block_literal_global_71];
}

uint64_t __60__TSSStylesheet_TSText_Internal___hyperlinkStyleWasCreated___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [TSWPCharacterStyle alloc];
  v4 = [TSWPBundle() localizedStringForKey:@"Link" value:&stru_287D36338 table:@"TSText"];
  v5 = [TSSPropertyMap propertyMapWithPropertiesAndValues:22, 1, 0];

  return [(TSSStyle *)v3 initWithContext:a2 name:v4 overridePropertyMap:v5 isVariation:0];
}

- (id)_defaultParagraphStyleWasCreated:(BOOL *)created
{
  v7 = 0;
  if (created)
  {
    createdCopy = created;
  }

  else
  {
    createdCopy = &v7;
  }

  v5 = [(TSSStylesheet *)self _defaultStyleOfClass:objc_opt_class() withIdentifier:@"paragraph-style-default" wasCreated:createdCopy usingBlock:&__block_literal_global_77_0];
  if (*createdCopy)
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

- (id)_defaultListStyleWasCreated:(BOOL *)created
{
  v5 = objc_opt_class();

  return [(TSSStylesheet *)self _defaultStyleOfClass:v5 withIdentifier:@"text-0-liststyle-None" wasCreated:created usingBlock:&__block_literal_global_84];
}

uint64_t __62__TSSStylesheet_TSText_Internal___defaultListStyleWasCreated___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [TSWPListStyle alloc];
  v4 = [TSWPBundle() localizedStringForKey:@"None" value:&stru_287D36338 table:@"TSText"];
  v5 = +[TSWPListStyle defaultPropertyMap];

  return [(TSWPListStyle *)v3 initWithContext:a2 name:v4 overridePropertyMap:v5 isVariation:0];
}

- (id)_defaultColumnStyleWasCreated:(BOOL *)created
{
  v5 = objc_opt_class();

  return [(TSSStylesheet *)self _defaultStyleOfClass:v5 withIdentifier:@"column-style-default" wasCreated:created usingBlock:&__block_literal_global_88];
}

uint64_t __64__TSSStylesheet_TSText_Internal___defaultColumnStyleWasCreated___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [TSWPColumnStyle alloc];

  return [(TSSStyle *)v3 initWithContext:a2 name:0 overridePropertyMap:0 isVariation:0];
}

- (id)_defaultStyleOfClass:(Class)class withIdentifier:(id)identifier wasCreated:(BOOL *)created usingBlock:(id)block
{
  v10 = [(TSSStylesheet *)self cascadedStyleWithIdentifier:identifier];
  if (!v10)
  {
    objc_sync_enter(self);
    v10 = [(TSSStylesheet *)self cascadedStyleWithIdentifier:identifier];
    if (!v10)
    {
      rootAncestor = [(TSSStylesheet *)self rootAncestor];
      isLocked = [rootAncestor isLocked];
      [rootAncestor setIsLocked:0];
      v10 = (*(block + 2))(block, [rootAncestor context]);
      [rootAncestor addStyle:v10 withIdentifier:identifier];
      [rootAncestor setIsLocked:isLocked];
      if (created)
      {
        *created = 1;
      }
    }

    objc_sync_exit(self);
  }

  return v10;
}

@end