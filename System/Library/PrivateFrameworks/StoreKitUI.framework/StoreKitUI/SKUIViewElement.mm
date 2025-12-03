@interface SKUIViewElement
- (BOOL)canMoveWithinCollection;
- (BOOL)descendsFromElementWithType:(unint64_t)type;
- (BOOL)handlesBackgroundColorDirectly;
- (BOOL)isDescendentFromViewElement:(id)element;
- (BOOL)isEnabled;
- (BOOL)rendersWithParallax;
- (BOOL)rendersWithPerspective;
- (IKEntityValueProviding)entityValueProvider;
- (NSArray)flattenedChildren;
- (NSCopying)uniquingMapKey;
- (NSSet)entityValueProperties;
- (NSSet)personalizationLibraryItems;
- (NSString)indexBarEntryID;
- (SKUIEntityProviding)entityProvider;
- (SKUIEntityProviding)explicitEntityProvider;
- (SKUIViewElement)elementWithIdentifier:(id)identifier;
- (SKUIViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)ancestorElementMatchingPredicate:(id)predicate;
- (id)ancestorElementOfType:(unint64_t)type;
- (id)applyUpdatesWithElement:(id)element;
- (id)expandableLabelElementForWidth:(double)width context:(id)context;
- (id)featureWithName:(id)name;
- (id)firstChildForElementName:(id)name;
- (id)firstChildForElementType:(unint64_t)type;
- (id)firstDescendentWithIndexBarEntryID:(id)d;
- (void)_entityProviderDidInvalidateNotification:(id)notification;
- (void)_entityValueProviderDidChange;
- (void)_registerForNotificationsForEntityProvider:(id)provider;
- (void)_unregisterForNotificationsForEntityProvider:(id)provider;
- (void)dealloc;
- (void)enumerateChildrenUsingBlock:(id)block;
- (void)enumerateViewElementsWithDictionary:(id)dictionary factory:(id)factory usingBlock:(id)block;
- (void)setEntityValueProvider:(id)provider;
@end

@implementation SKUIViewElement

- (id)firstDescendentWithIndexBarEntryID:(id)d
{
  dCopy = d;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIViewElement(SKUIIndexBarAdditions) firstDescendentWithIndexBarEntryID:];
  }

  if ([dCopy length])
  {
    indexBarEntryID = [(SKUIViewElement *)self indexBarEntryID];
    v6 = [indexBarEntryID isEqualToString:dCopy];

    if (v6)
    {
      selfCopy = self;
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy__2;
      v16 = __Block_byref_object_dispose__2;
      v17 = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __77__SKUIViewElement_SKUIIndexBarAdditions__firstDescendentWithIndexBarEntryID___block_invoke;
      v9[3] = &unk_2781F95F0;
      v10 = dCopy;
      v11 = &v12;
      [(SKUIViewElement *)self enumerateChildrenUsingBlock:v9];
      selfCopy = v13[5];

      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __77__SKUIViewElement_SKUIIndexBarAdditions__firstDescendentWithIndexBarEntryID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v6 = [v11 indexBarEntryID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v8 = [v11 firstDescendentWithIndexBarEntryID:*(a1 + 32)];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_5;
    }
  }

  *a3 = 1;
LABEL_5:
}

- (NSString)indexBarEntryID
{
  attributes = [(SKUIViewElement *)self attributes];
  v3 = [attributes objectForKey:@"indexBarEntryID"];

  if (v3 && ![v3 length])
  {

    v3 = 0;
  }

  return v3;
}

- (BOOL)handlesBackgroundColorDirectly
{
  if ([(SKUIViewElement *)self elementType]== 66)
  {
    selfCopy = self;
    if ([(SKUIViewElement *)selfCopy lockupViewType]== 7)
    {

      return 1;
    }

    lockupViewType = [(SKUIViewElement *)selfCopy lockupViewType];

    if (lockupViewType == 6)
    {
      return 1;
    }
  }

  return 0;
}

- (SKUIViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        [(SKUIViewElement *)v11 initWithDOMElement:v12 parent:v13 elementFactory:v14, v15, v16, v17, v18];
      }
    }
  }

  v25.receiver = self;
  v25.super_class = SKUIViewElement;
  v19 = [(SKUIViewElement *)&v25 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v19)
  {
    v20 = [elementCopy getAttribute:@"pin"];
    if ([v20 isEqualToString:@"alone"])
    {
      v21 = 2;
    }

    else if ([v20 isEqualToString:@"group"])
    {
      v21 = 3;
    }

    else if ([v20 isEqualToString:@"rubberband"])
    {
      v21 = 4;
    }

    else if ([v20 isEqualToString:@"group-rubberband"])
    {
      v21 = 5;
    }

    else
    {
      if (![v20 length])
      {
LABEL_18:
        v23 = [elementCopy getAttribute:@"pinGroup"];
        v19->_pinGroup = [v23 isEqualToString:@"before-top"];

        goto LABEL_19;
      }

      bOOLValue = [v20 BOOLValue];
      v21 = 1;
      if (bOOLValue)
      {
        v21 = 2;
      }
    }

    v19->_pinStyle = v21;
    goto LABEL_18;
  }

LABEL_19:

  return v19;
}

- (void)dealloc
{
  if (self->_entityProvider)
  {
    [(SKUIViewElement *)self _unregisterForNotificationsForEntityProvider:?];
  }

  v3.receiver = self;
  v3.super_class = SKUIViewElement;
  [(SKUIViewElement *)&v3 dealloc];
}

- (BOOL)canMoveWithinCollection
{
  attributes = [(SKUIViewElement *)self attributes];
  v3 = [attributes objectForKey:@"canMoveWithinCollection"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)ancestorElementMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  parent = [(SKUIViewElement *)self parent];
  if (parent)
  {
    while (!predicateCopy[2](predicateCopy, parent))
    {
      v5Parent = [parent parent];

      parent = v5Parent;
      if (!v5Parent)
      {
        goto LABEL_7;
      }
    }

    parent = parent;
    v5Parent = parent;
  }

  else
  {
    v5Parent = 0;
  }

LABEL_7:

  return parent;
}

- (id)ancestorElementOfType:(unint64_t)type
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__SKUIViewElement_ancestorElementOfType___block_invoke;
  v5[3] = &__block_descriptor_40_e25_B16__0__SKUIViewElement_8l;
  v5[4] = type;
  v3 = [(SKUIViewElement *)self ancestorElementMatchingPredicate:v5];

  return v3;
}

- (BOOL)descendsFromElementWithType:(unint64_t)type
{
  parent = [(SKUIViewElement *)self parent];
  if (!parent)
  {
    return 0;
  }

  v5 = parent;
  do
  {
    elementType = [v5 elementType];
    parent2 = [v5 parent];

    v5 = parent2;
    v8 = elementType == type;
  }

  while (!v8 && parent2);

  return v8;
}

- (BOOL)isDescendentFromViewElement:(id)element
{
  selfCopy = self;
  if (!selfCopy)
  {
    return 0;
  }

  v5 = selfCopy;
  do
  {
    parent = [(SKUIViewElement *)v5 parent];

    v7 = v5 == element;
    v8 = v5 == element;
    v5 = parent;
  }

  while (!v7 && parent);

  return v8;
}

- (SKUIViewElement)elementWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__32;
  v19 = __Block_byref_object_dispose__32;
  v20 = 0;
  itmlID = [(SKUIViewElement *)self itmlID];
  v6 = [itmlID isEqualToString:identifierCopy];

  if (v6)
  {
    v7 = v16;
    selfCopy = self;
    v9 = v7[5];
    v7[5] = selfCopy;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__SKUIViewElement_elementWithIdentifier___block_invoke;
    v12[3] = &unk_2781FC560;
    v14 = &v15;
    v13 = identifierCopy;
    [(SKUIViewElement *)self enumerateChildrenUsingBlock:v12];
    v9 = v13;
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __41__SKUIViewElement_elementWithIdentifier___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = [a2 elementWithIdentifier:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (SKUIEntityProviding)entityProvider
{
  explicitEntityProvider = [(SKUIViewElement *)self explicitEntityProvider];
  v4 = explicitEntityProvider;
  if (explicitEntityProvider)
  {
    entityProvider = explicitEntityProvider;
  }

  else
  {
    parent = [(SKUIViewElement *)self parent];
    entityProvider = [parent entityProvider];
  }

  return entityProvider;
}

- (IKEntityValueProviding)entityValueProvider
{
  explicitEntityValueProvider = [(SKUIViewElement *)self explicitEntityValueProvider];
  if (!explicitEntityValueProvider)
  {
    entityProvider = [(SKUIViewElement *)self entityProvider];
    parent = [(SKUIViewElement *)self parent];
    if (parent)
    {
      while (1)
      {
        entityProvider2 = [parent entityProvider];
        if (entityProvider != entityProvider2 && ([entityProvider isEqual:entityProvider2] & 1) == 0)
        {
          break;
        }

        explicitEntityValueProvider2 = [parent explicitEntityValueProvider];
        if (explicitEntityValueProvider2)
        {
          goto LABEL_12;
        }

        v5Parent = [parent parent];

        parent = v5Parent;
        if (!v5Parent)
        {
          goto LABEL_9;
        }
      }
    }

LABEL_9:
    if ([entityProvider numberOfSections] && objc_msgSend(entityProvider, "numberOfEntitiesInSection:", 0))
    {
      entityProvider2 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
      explicitEntityValueProvider2 = [entityProvider entityValueProviderAtIndexPath:entityProvider2];
LABEL_12:
      explicitEntityValueProvider = explicitEntityValueProvider2;
    }

    else
    {
      explicitEntityValueProvider = 0;
    }
  }

  return explicitEntityValueProvider;
}

- (SKUIEntityProviding)explicitEntityProvider
{
  if (!self->_hasValidEntityProvider)
  {
    self->_hasValidEntityProvider = 1;
    attributes = [(SKUIViewElement *)self attributes];
    v4 = [attributes objectForKey:@"entityProviderID"];

    if ([v4 length])
    {
      entityProviderList = [(IKViewElement *)self entityProviderList];
      v6 = [entityProviderList entityProviderWithIdentifier:v4];
      entityProvider = self->_entityProvider;
      self->_entityProvider = v6;

      if (self->_entityProvider)
      {
        [(SKUIViewElement *)self _registerForNotificationsForEntityProvider:?];
      }

      else
      {
        v8 = [(SKUIViewElement *)self description];
        NSLog(&cfstr_ErrorNoEntityP.isa, v4, v8);
      }
    }
  }

  v9 = self->_entityProvider;

  return v9;
}

- (NSSet)entityValueProperties
{
  v15 = *MEMORY[0x277D85DE8];
  children = [(SKUIViewElement *)self children];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [children countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(children);
        }

        entityValueProperties = [*(*(&v10 + 1) + 8 * i) entityValueProperties];
        if (entityValueProperties)
        {
          if (!v5)
          {
            v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
          }

          [v5 unionSet:entityValueProperties];
        }
      }

      v4 = [children countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  children = [(SKUIViewElement *)self children];
  v6 = [children countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v6)
  {
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(children);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __47__SKUIViewElement_enumerateChildrenUsingBlock___block_invoke;
        v10[3] = &unk_2781FC588;
        v11 = blockCopy;
        v12 = &v17;
        [v9 enumerateChildrenUsingBlock:v10];
      }

      else
      {
        (*(blockCopy + 2))(blockCopy, v9, v18 + 3);
      }

      if (v18[3])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [children countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v17, 8);
}

uint64_t __47__SKUIViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)enumerateViewElementsWithDictionary:(id)dictionary factory:(id)factory usingBlock:(id)block
{
  factoryCopy = factory;
  blockCopy = block;
  v10 = [dictionary objectForKey:@"c"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SKUIViewElement_enumerateViewElementsWithDictionary_factory_usingBlock___block_invoke;
  v13[3] = &unk_2781FC5B0;
  v14 = factoryCopy;
  selfCopy = self;
  v16 = blockCopy;
  v11 = blockCopy;
  v12 = factoryCopy;
  [v10 enumerateObjectsUsingBlock:v13];
}

uint64_t __74__SKUIViewElement_enumerateViewElementsWithDictionary_factory_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) elementForDictionary:a2 parent:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 48) + 16))();
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)featureWithName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  [(SKUIViewElement *)self features];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        featureName = [v9 featureName];
        v11 = [featureName isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)firstChildForElementType:(unint64_t)type
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__32;
  v10 = __Block_byref_object_dispose__32;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SKUIViewElement_firstChildForElementType___block_invoke;
  v5[3] = &unk_2781FC5D8;
  v5[4] = &v6;
  v5[5] = type;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__SKUIViewElement_firstChildForElementType___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 elementType] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)firstChildForElementName:(id)name
{
  nameCopy = name;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__32;
  v15 = __Block_byref_object_dispose__32;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SKUIViewElement_firstChildForElementName___block_invoke;
  v8[3] = &unk_2781F95F0;
  v5 = nameCopy;
  v9 = v5;
  v10 = &v11;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __44__SKUIViewElement_firstChildForElementName___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = [a2 elementName];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (NSArray)flattenedChildren
{
  flattenedChildren = self->_flattenedChildren;
  if (!flattenedChildren)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_flattenedChildren;
    self->_flattenedChildren = v4;

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SKUIViewElement_flattenedChildren__block_invoke;
    v7[3] = &unk_2781F9640;
    v7[4] = self;
    [(SKUIViewElement *)self enumerateChildrenUsingBlock:v7];
    flattenedChildren = self->_flattenedChildren;
  }

  return flattenedChildren;
}

- (BOOL)isEnabled
{
  parent = [(SKUIViewElement *)self parent];
  v3 = parent;
  if (parent)
  {
    isEnabled = [parent isEnabled];
  }

  else
  {
    isEnabled = 1;
  }

  return isEnabled;
}

- (NSSet)personalizationLibraryItems
{
  v3 = [MEMORY[0x277CBEB58] set];
  children = [(SKUIViewElement *)self children];
  SKUIViewElementAccumulatePersonalizationLibraryItemsForChildren(v3, children);

  return v3;
}

- (BOOL)rendersWithPerspective
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  children = [(SKUIViewElement *)self children];
  v3 = [children countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(children);
        }

        if ([*(*(&v7 + 1) + 8 * i) rendersWithPerspective])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [children countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)rendersWithParallax
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  children = [(SKUIViewElement *)self children];
  v3 = [children countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(children);
        }

        if ([*(*(&v7 + 1) + 8 * i) rendersWithParallax])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [children countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)setEntityValueProvider:(id)provider
{
  providerCopy = provider;
  entityValueProvider = self->_entityValueProvider;
  if (entityValueProvider != providerCopy)
  {
    v7 = providerCopy;
    entityValueProvider = [entityValueProvider isEqual:providerCopy];
    providerCopy = v7;
    if ((entityValueProvider & 1) == 0)
    {
      objc_storeStrong(&self->_entityValueProvider, provider);
      entityValueProvider = [(SKUIViewElement *)self _entityValueProviderDidChange];
      providerCopy = v7;
    }
  }

  MEMORY[0x2821F96F8](entityValueProvider, providerCopy);
}

- (NSCopying)uniquingMapKey
{
  parent = [(SKUIViewElement *)self parent];
  v3 = parent;
  if (parent)
  {
    uniquingMapKey = [parent uniquingMapKey];
  }

  else
  {
    uniquingMapKey = 0;
  }

  return uniquingMapKey;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v17.receiver = self;
  v17.super_class = SKUIViewElement;
  v5 = [(SKUIViewElement *)&v17 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self)
  {
    if (!elementCopy)
    {
      goto LABEL_17;
    }

LABEL_6:
    self->_hasValidEntityProvider = 0;
    if (self->_entityProvider)
    {
      [(SKUIViewElement *)self _unregisterForNotificationsForEntityProvider:?];
      entityProvider = self->_entityProvider;
      self->_entityProvider = 0;
    }

    flattenedChildren = self->_flattenedChildren;
    self->_flattenedChildren = 0;

    self->_pinStyle = [(SKUIViewElement *)elementCopy pinStyle];
    explicitEntityValueProvider = [(SKUIViewElement *)elementCopy explicitEntityValueProvider];
    entityValueProvider = self->_entityValueProvider;
    if (entityValueProvider == explicitEntityValueProvider || ([(IKEntityValueProviding *)entityValueProvider isEqual:explicitEntityValueProvider]& 1) != 0)
    {
      v12 = 0;
    }

    else
    {
      objc_storeStrong(&self->_entityValueProvider, explicitEntityValueProvider);
      v12 = 1;
    }

    explicitEntityProvider = [(SKUIViewElement *)elementCopy explicitEntityProvider];
    v14 = self->_entityProvider;
    if (v14 == explicitEntityProvider || ([(SKUIEntityProviding *)v14 isEqual:explicitEntityProvider]& 1) != 0)
    {
      if (!v12)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      if (self->_entityProvider)
      {
        [(SKUIViewElement *)self _unregisterForNotificationsForEntityProvider:?];
      }

      objc_storeStrong(&self->_entityProvider, explicitEntityProvider);
      if (self->_entityProvider)
      {
        [(SKUIViewElement *)self _registerForNotificationsForEntityProvider:?];
      }

      if (self->_entityValueProvider)
      {
        v16 = v12;
      }

      else
      {
        v16 = 1;
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    [(SKUIViewElement *)self _entityValueProviderDidChange];
    goto LABEL_16;
  }

  updateType = [v5 updateType];
  if (elementCopy && updateType)
  {
    goto LABEL_6;
  }

LABEL_17:

  return v6;
}

- (void)_entityProviderDidInvalidateNotification:(id)notification
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__SKUIViewElement__entityProviderDidInvalidateNotification___block_invoke;
  aBlock[3] = &unk_2781F80F0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3[2](v3);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v3);
  }
}

- (void)_entityValueProviderDidChange
{
  [(SKUIViewElement *)self entityValueProviderDidChange];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__32;
  v6[4] = __Block_byref_object_dispose__32;
  v7 = 0;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v5 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__SKUIViewElement__entityValueProviderDidChange__block_invoke;
  v3[3] = &unk_2781FC600;
  v3[5] = v4;
  v3[6] = v6;
  v3[4] = self;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v3];
  _Block_object_dispose(v4, 8);
  _Block_object_dispose(v6, 8);
}

void __48__SKUIViewElement__entityValueProviderDidChange__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 explicitEntityValueProvider];

  v4 = v11;
  if (!v3)
  {
    v5 = *(*(a1 + 40) + 8);
    if ((*(v5 + 24) & 1) == 0)
    {
      *(v5 + 24) = 1;
      v6 = [*(a1 + 32) entityProvider];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    v9 = [v11 entityProvider];
    v10 = *(*(*(a1 + 48) + 8) + 40);
    if (v10 == v9 || [v10 isEqual:v9])
    {
      [v11 _entityValueProviderDidChange];
    }

    v4 = v11;
  }
}

- (void)_registerForNotificationsForEntityProvider:(id)provider
{
  if (provider)
  {
    v4 = MEMORY[0x277CCAB98];
    providerCopy = provider;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter addObserver:self selector:sel__entityProviderDidInvalidateNotification_ name:*MEMORY[0x277D1AF58] object:providerCopy];
  }
}

- (void)_unregisterForNotificationsForEntityProvider:(id)provider
{
  if (provider)
  {
    v4 = MEMORY[0x277CCAB98];
    providerCopy = provider;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D1AF58] object:providerCopy];
  }
}

- (id)expandableLabelElementForWidth:(double)width context:(id)context
{
  contextCopy = context;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__60;
  v18 = __Block_byref_object_dispose__60;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__SKUIViewElement_SKUIReviewListPageSection__expandableLabelElementForWidth_context___block_invoke;
  v10[3] = &unk_2781F95A0;
  v7 = contextCopy;
  widthCopy = width;
  v11 = v7;
  v12 = &v14;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __85__SKUIViewElement_SKUIReviewListPageSection__expandableLabelElementForWidth_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if ([v8 elementType] == 138 && objc_msgSend(v8, "labelViewStyle") == 1)
  {
    v6 = [*(a1 + 32) editorialLayoutForLabelElement:v8 width:*(a1 + 48)];
    if (([*(a1 + 32) isEditorialLayoutExpanded:v6] & 1) == 0)
    {
      v7 = [v6 bodyTextLayoutForOrientation:0];
      if ([v7 requiresTruncation])
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *a3 = 1;
      }
    }
  }
}

@end