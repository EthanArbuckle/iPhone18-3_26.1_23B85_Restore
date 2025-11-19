@interface SKUIIndexBarLocaleStandardEntryListController
- (SKUIIndexBarLocaleStandardEntryListController)initWithSKUIIndexBarEntryListViewElement:(id)a3;
- (id)entryDescriptorAtIndex:(int64_t)a3;
- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)a3 returningRelativeSectionIndex:(int64_t *)a4;
- (int64_t)numberOfEntryDescriptors;
- (void)reloadViewElementData;
@end

@implementation SKUIIndexBarLocaleStandardEntryListController

- (SKUIIndexBarLocaleStandardEntryListController)initWithSKUIIndexBarEntryListViewElement:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v14->_entryListViewElement, a3);
    v16 = SKUIRequiredVisibilitySetForLocalizedIndexedCollation();
    requiredVisibilitySet = v15->_requiredVisibilitySet;
    v15->_requiredVisibilitySet = v16;
  }

  return v15;
}

- (int64_t)numberOfEntryDescriptors
{
  v2 = [MEMORY[0x277D75700] currentCollation];
  v3 = [v2 sectionIndexTitles];
  v4 = [v3 count];

  return v4;
}

- (id)entryDescriptorAtIndex:(int64_t)a3
{
  v5 = [MEMORY[0x277D75700] currentCollation];
  v6 = [v5 sectionIndexTitles];
  v7 = [v6 objectAtIndex:a3];

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

- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)a3 returningRelativeSectionIndex:(int64_t *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v5 = [MEMORY[0x277D75700] currentCollation];
  v6 = [v5 sectionForSectionIndexTitleAtIndex:a3];

  v7 = [MEMORY[0x277D75700] currentCollation];
  v8 = [v7 sectionTitles];
  v9 = [v8 objectAtIndex:v6];

  v10 = SKUIIndexBarIDForLocaleStandardIndexBarEntrySectionTitle(v9);

  return v10;
}

- (void)reloadViewElementData
{
  v5.receiver = self;
  v5.super_class = SKUIIndexBarLocaleStandardEntryListController;
  [(SKUIIndexBarEntryListController *)&v5 reloadViewElementData];
  v3 = [(SKUIIndexBarEntryListViewElement *)self->_entryListViewElement style];
  style = self->_style;
  if (style != v3 && ([(IKViewElementStyle *)style isEqual:v3]& 1) == 0)
  {
    objc_storeStrong(&self->_style, v3);
    [(SKUIIndexBarEntryListController *)self _didInvalidate];
  }
}

@end