@interface SKUIIndexBarLocaleStandardEntryListController
- (SKUIIndexBarLocaleStandardEntryListController)initWithSKUIIndexBarEntryListViewElement:(id)element;
- (id)entryDescriptorAtIndex:(int64_t)index;
- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)index returningRelativeSectionIndex:(int64_t *)sectionIndex;
- (int64_t)numberOfEntryDescriptors;
- (void)reloadViewElementData;
@end

@implementation SKUIIndexBarLocaleStandardEntryListController

- (SKUIIndexBarLocaleStandardEntryListController)initWithSKUIIndexBarEntryListViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIIndexBarLocaleStandardEntryListController *)v6 initWithSKUIIndexBarEntryListViewElement:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v19.receiver = self;
  v19.super_class = SKUIIndexBarLocaleStandardEntryListController;
  v14 = [(SKUIIndexBarLocaleStandardEntryListController *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_entryListViewElement, element);
    v16 = SKUIRequiredVisibilitySetForLocalizedIndexedCollation();
    requiredVisibilitySet = v15->_requiredVisibilitySet;
    v15->_requiredVisibilitySet = v16;
  }

  return v15;
}

- (int64_t)numberOfEntryDescriptors
{
  currentCollation = [MEMORY[0x277D75700] currentCollation];
  sectionIndexTitles = [currentCollation sectionIndexTitles];
  v4 = [sectionIndexTitles count];

  return v4;
}

- (id)entryDescriptorAtIndex:(int64_t)index
{
  currentCollation = [MEMORY[0x277D75700] currentCollation];
  sectionIndexTitles = [currentCollation sectionIndexTitles];
  v7 = [sectionIndexTitles objectAtIndex:index];

  v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v7];
  v9 = [v8 length];
  v10 = SKUIViewElementFontWithStyle(self->_style);
  if (v10)
  {
    [v8 addAttribute:*MEMORY[0x277D740A8] value:v10 range:{0, v9}];
  }

  v11 = SKUIViewElementPlainColorWithStyle(self->_style, 0);
  if (v11)
  {
    [v8 addAttribute:*MEMORY[0x277D740C0] value:v11 range:{0, v9}];
  }

  v12 = [SKUIIndexBarEntryDescriptor entryDescriptorWithAttributedString:v8];
  if ([(NSSet *)self->_requiredVisibilitySet containsObject:v7])
  {
    [v12 setVisibilityPriority:1000];
  }

  return v12;
}

- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)index returningRelativeSectionIndex:(int64_t *)sectionIndex
{
  if (sectionIndex)
  {
    *sectionIndex = 0;
  }

  currentCollation = [MEMORY[0x277D75700] currentCollation];
  v6 = [currentCollation sectionForSectionIndexTitleAtIndex:index];

  currentCollation2 = [MEMORY[0x277D75700] currentCollation];
  sectionTitles = [currentCollation2 sectionTitles];
  v9 = [sectionTitles objectAtIndex:v6];

  v10 = SKUIIndexBarIDForLocaleStandardIndexBarEntrySectionTitle(v9);

  return v10;
}

- (void)reloadViewElementData
{
  v5.receiver = self;
  v5.super_class = SKUIIndexBarLocaleStandardEntryListController;
  [(SKUIIndexBarEntryListController *)&v5 reloadViewElementData];
  style = [(SKUIIndexBarEntryListViewElement *)self->_entryListViewElement style];
  style = self->_style;
  if (style != style && ([(IKViewElementStyle *)style isEqual:style]& 1) == 0)
  {
    objc_storeStrong(&self->_style, style);
    [(SKUIIndexBarEntryListController *)self _didInvalidate];
  }
}

@end