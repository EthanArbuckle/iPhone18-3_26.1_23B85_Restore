@interface SKUIIndexBarDynamicElementEntryListController
- (BOOL)hidesIndexBar;
- (SKUIIndexBarDynamicElementEntryListController)initWithEntryListViewElement:(id)element;
- (id)entryDescriptorAtIndex:(int64_t)index;
- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)index returningRelativeSectionIndex:(int64_t *)sectionIndex;
- (int64_t)numberOfEntryDescriptors;
- (void)_entityProviderDidInvalidateNotification:(id)notification;
- (void)dealloc;
- (void)reloadViewElementData;
- (void)setRootTargetViewElement:(id)element;
@end

@implementation SKUIIndexBarDynamicElementEntryListController

- (SKUIIndexBarDynamicElementEntryListController)initWithEntryListViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIndexBarDynamicElementEntryListController initWithEntryListViewElement:];
  }

  v9.receiver = self;
  v9.super_class = SKUIIndexBarDynamicElementEntryListController;
  v6 = [(SKUIIndexBarDynamicElementEntryListController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryListViewElement, element);
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = defaultCenter;
  if (self->_entityProvider)
  {
    [defaultCenter removeObserver:self name:*MEMORY[0x277D1AF58] object:?];
  }

  v5.receiver = self;
  v5.super_class = SKUIIndexBarDynamicElementEntryListController;
  [(SKUIIndexBarDynamicElementEntryListController *)&v5 dealloc];
}

- (id)entryDescriptorAtIndex:(int64_t)index
{
  v4 = [(SKUIEntityProviding *)self->_entityProvider indexBarEntryEntityValueProviderAtIndex:index];
  [(SKUIViewElement *)self->_templateElement setEntityValueProvider:v4];
  v5 = SKUIIndexBarEntryDescriptorForIndexBarEntryViewElement(self->_indexBarEntryViewElement, self->_templateElement);
  [v5 setVisibilityPriority:{objc_msgSend(v4, "visibilityPriority")}];

  return v5;
}

- (BOOL)hidesIndexBar
{
  isIndexBarHiddenWhenEmpty = [(SKUIIndexBarEntryListViewElement *)self->_entryListViewElement isIndexBarHiddenWhenEmpty];
  if (isIndexBarHiddenWhenEmpty)
  {
    totalNumberOfEntities = [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicIndexMapper totalNumberOfEntities];
    LOBYTE(isIndexBarHiddenWhenEmpty) = totalNumberOfEntities < [(SKUIIndexBarEntryListViewElement *)self->_entryListViewElement minimumEntityCount];
  }

  return isIndexBarHiddenWhenEmpty;
}

- (int64_t)numberOfEntryDescriptors
{
  if (!self->_templateElement)
  {
    return 0;
  }

  totalNumberOfEntities = [(SKUIDynamicPageSectionIndexMapper *)self->_dynamicIndexMapper totalNumberOfEntities];
  if (totalNumberOfEntities < [(SKUIIndexBarEntryListViewElement *)self->_entryListViewElement minimumEntityCount]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  entityProvider = self->_entityProvider;

  return [(SKUIEntityProviding *)entityProvider numberOfIndexBarEntries];
}

- (void)reloadViewElementData
{
  v9.receiver = self;
  v9.super_class = SKUIIndexBarDynamicElementEntryListController;
  [(SKUIIndexBarEntryListController *)&v9 reloadViewElementData];
  childIndexBarEntryElements = [(SKUIIndexBarEntryListViewElement *)self->_entryListViewElement childIndexBarEntryElements];
  firstObject = [childIndexBarEntryElements firstObject];

  indexBarEntryViewElement = self->_indexBarEntryViewElement;
  if (indexBarEntryViewElement == firstObject || ([(SKUIIndexBarEntryViewElement *)indexBarEntryViewElement isEqual:firstObject]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    objc_storeStrong(&self->_indexBarEntryViewElement, firstObject);
    v6 = 1;
  }

  childElement = [(SKUIIndexBarEntryViewElement *)firstObject childElement];
  templateElement = self->_templateElement;
  if (templateElement == childElement || ([(SKUIViewElement *)templateElement isEqual:childElement]& 1) != 0)
  {
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    objc_storeStrong(&self->_templateElement, childElement);
  }

  [(SKUIIndexBarEntryListController *)self _didInvalidate];
LABEL_11:
}

- (void)setRootTargetViewElement:(id)element
{
  v14.receiver = self;
  v14.super_class = SKUIIndexBarDynamicElementEntryListController;
  [(SKUIIndexBarEntryListController *)&v14 setRootTargetViewElement:element];
  rootTargetViewElement = [(SKUIIndexBarEntryListController *)self rootTargetViewElement];
  if (objc_opt_respondsToSelector())
  {
    entityProvider = [rootTargetViewElement entityProvider];
    entityProvider = self->_entityProvider;
    if (entityProvider != entityProvider && ([(SKUIEntityProviding *)entityProvider isEqual:entityProvider]& 1) == 0)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v8 = defaultCenter;
      v9 = MEMORY[0x277D1AF58];
      if (self->_entityProvider)
      {
        [defaultCenter removeObserver:self name:*MEMORY[0x277D1AF58] object:?];
      }

      objc_storeStrong(&self->_entityProvider, entityProvider);
      v10 = self->_entityProvider;
      dynamicIndexMapper = self->_dynamicIndexMapper;
      if (v10)
      {
        if (!dynamicIndexMapper)
        {
          v12 = objc_alloc_init(SKUIDynamicPageSectionIndexMapper);
          v13 = self->_dynamicIndexMapper;
          self->_dynamicIndexMapper = v12;

          dynamicIndexMapper = self->_dynamicIndexMapper;
          v10 = self->_entityProvider;
        }

        [(SKUIDynamicPageSectionIndexMapper *)dynamicIndexMapper setEntityProvider:v10];
        [v8 addObserver:self selector:sel__entityProviderDidInvalidateNotification_ name:*v9 object:self->_entityProvider];
      }

      else
      {
        self->_dynamicIndexMapper = 0;
      }

      [(SKUIIndexBarEntryListController *)self _didInvalidate];
    }
  }
}

- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)index returningRelativeSectionIndex:(int64_t *)sectionIndex
{
  if (sectionIndex)
  {
    indexCopy = index;
    if (objc_opt_respondsToSelector())
    {
      indexCopy = [(SKUIEntityProviding *)self->_entityProvider sectionForSectionIndexBarEntryAtIndex:indexCopy];
    }

    *sectionIndex = indexCopy;
  }

  entryListViewElement = self->_entryListViewElement;

  return [(SKUIIndexBarEntryListViewElement *)entryListViewElement targetIndexBarEntryID];
}

- (void)_entityProviderDidInvalidateNotification:(id)notification
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__SKUIIndexBarDynamicElementEntryListController__entityProviderDidInvalidateNotification___block_invoke;
  aBlock[3] = &unk_2781F80F0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3[2](v3);
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __90__SKUIIndexBarDynamicElementEntryListController__entityProviderDidInvalidateNotification___block_invoke_2;
    v4[3] = &unk_2781F9990;
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

uint64_t __90__SKUIIndexBarDynamicElementEntryListController__entityProviderDidInvalidateNotification___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) reloadData];
  v2 = *(a1 + 32);

  return [v2 _didInvalidate];
}

- (void)initWithEntryListViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIndexBarDynamicElementEntryListController initWithEntryListViewElement:]";
}

@end