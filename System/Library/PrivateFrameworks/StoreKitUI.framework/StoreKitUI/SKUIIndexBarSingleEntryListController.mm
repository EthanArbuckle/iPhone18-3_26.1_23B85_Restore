@interface SKUIIndexBarSingleEntryListController
- (SKUIIndexBarSingleEntryListController)initWithEntryViewElement:(id)element;
- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)index returningRelativeSectionIndex:(int64_t *)sectionIndex;
- (void)reloadViewElementData;
@end

@implementation SKUIIndexBarSingleEntryListController

- (SKUIIndexBarSingleEntryListController)initWithEntryViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIndexBarSingleEntryListController initWithEntryViewElement:];
  }

  v9.receiver = self;
  v9.super_class = SKUIIndexBarSingleEntryListController;
  v6 = [(SKUIIndexBarSingleEntryListController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryViewElement, element);
  }

  return v7;
}

- (void)reloadViewElementData
{
  v7.receiver = self;
  v7.super_class = SKUIIndexBarSingleEntryListController;
  [(SKUIIndexBarEntryListController *)&v7 reloadViewElementData];
  childElement = [(SKUIIndexBarEntryViewElement *)self->_entryViewElement childElement];
  descriptiveViewElement = self->_descriptiveViewElement;
  if (descriptiveViewElement != childElement && ([(SKUIViewElement *)descriptiveViewElement isEqual:childElement]& 1) == 0)
  {
    objc_storeStrong(&self->_descriptiveViewElement, childElement);
    [(SKUIIndexBarEntryListController *)self _didInvalidate];
  }

  v5 = SKUIIndexBarEntryDescriptorForIndexBarEntryViewElement(self->_entryViewElement, self->_descriptiveViewElement);
  entryDescriptor = self->_entryDescriptor;
  if (entryDescriptor != v5 && ![(SKUIIndexBarEntryDescriptor *)entryDescriptor isEqual:v5])
  {
    objc_storeStrong(&self->_entryDescriptor, v5);
    [(SKUIIndexBarEntryListController *)self _didInvalidate];
  }
}

- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)index returningRelativeSectionIndex:(int64_t *)sectionIndex
{
  if (sectionIndex)
  {
    *sectionIndex = 0;
  }

  return [(SKUIIndexBarEntryViewElement *)self->_entryViewElement targetIndexBarEntryID];
}

- (void)initWithEntryViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIndexBarSingleEntryListController initWithEntryViewElement:]";
}

@end