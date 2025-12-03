@interface SKUIIndexBarEntryListController
+ (id)entryListControllerForEntryListViewElement:(id)element;
+ (id)entryListControllerForEntryViewElement:(id)element;
- (SKUIIndexBarEntryListControllerDelegate)delegate;
- (id)entryDescriptorAtIndex:(int64_t)index;
- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)index returningRelativeSectionIndex:(int64_t *)sectionIndex;
- (void)_didInvalidate;
- (void)reloadViewElementData;
@end

@implementation SKUIIndexBarEntryListController

+ (id)entryListControllerForEntryViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIIndexBarEntryListController *)v4 entryListControllerForEntryViewElement:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = [[SKUIIndexBarSingleEntryListController alloc] initWithEntryViewElement:elementCopy];

  return v12;
}

+ (id)entryListControllerForEntryListViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIIndexBarEntryListController *)v4 entryListControllerForEntryListViewElement:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  entryListElementType = [elementCopy entryListElementType];
  if (entryListElementType == 2)
  {
    v13 = [[SKUIIndexBarLocaleStandardEntryListController alloc] initWithSKUIIndexBarEntryListViewElement:elementCopy];
    goto LABEL_9;
  }

  if (entryListElementType == 1)
  {
    v13 = [[SKUIIndexBarDynamicElementEntryListController alloc] initWithEntryListViewElement:elementCopy];
LABEL_9:
    v14 = v13;
    goto LABEL_11;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)entryDescriptorAtIndex:(int64_t)index
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIIndexBarEntryListController *)v3 entryDescriptorAtIndex:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0;
}

- (void)reloadViewElementData
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v2)
    {
      [(SKUIIndexBarEntryListController *)v2 reloadViewElementData:v3];
    }
  }
}

- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)index returningRelativeSectionIndex:(int64_t *)sectionIndex
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIIndexBarEntryListController *)v4 targetIndexBarEntryIDForEntryDescriptorAtIndex:v5 returningRelativeSectionIndex:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  return 0;
}

- (void)_didInvalidate
{
  delegate = [(SKUIIndexBarEntryListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate indexBarEntryListControllerDidInvalidate:self];
  }
}

- (SKUIIndexBarEntryListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end