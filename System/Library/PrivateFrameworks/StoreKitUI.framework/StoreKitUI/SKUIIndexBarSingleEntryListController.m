@interface SKUIIndexBarSingleEntryListController
- (SKUIIndexBarSingleEntryListController)initWithEntryViewElement:(id)a3;
- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)a3 returningRelativeSectionIndex:(int64_t *)a4;
- (void)reloadViewElementData;
@end

@implementation SKUIIndexBarSingleEntryListController

- (SKUIIndexBarSingleEntryListController)initWithEntryViewElement:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v6->_entryViewElement, a3);
  }

  return v7;
}

- (void)reloadViewElementData
{
  v7.receiver = self;
  v7.super_class = SKUIIndexBarSingleEntryListController;
  [(SKUIIndexBarEntryListController *)&v7 reloadViewElementData];
  v3 = [(SKUIIndexBarEntryViewElement *)self->_entryViewElement childElement];
  descriptiveViewElement = self->_descriptiveViewElement;
  if (descriptiveViewElement != v3 && ([(SKUIViewElement *)descriptiveViewElement isEqual:v3]& 1) == 0)
  {
    objc_storeStrong(&self->_descriptiveViewElement, v3);
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

- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)a3 returningRelativeSectionIndex:(int64_t *)a4
{
  if (a4)
  {
    *a4 = 0;
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