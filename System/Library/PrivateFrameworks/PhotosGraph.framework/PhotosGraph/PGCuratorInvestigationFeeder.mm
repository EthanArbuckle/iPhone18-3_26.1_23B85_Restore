@interface PGCuratorInvestigationFeeder
- (PGCuratorInvestigationFeeder)initWithItems:(id)items;
- (id)approximateLocation;
- (id)localEndDateComponents;
- (id)localStartDateComponents;
- (id)privateItems;
- (id)sharedItems;
- (id)universalEndDate;
- (id)universalStartDate;
@end

@implementation PGCuratorInvestigationFeeder

- (id)sharedItems
{
  items = self->_items;
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clsIsInSharedLibrary == YES"];
  v4 = [(NSArray *)items filteredArrayUsingPredicate:v3];

  return v4;
}

- (id)privateItems
{
  items = self->_items;
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clsIsInSharedLibrary == NO"];
  v4 = [(NSArray *)items filteredArrayUsingPredicate:v3];

  return v4;
}

- (id)approximateLocation
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        clsLocation = [*(*(&v11 + 1) + 8 * i) clsLocation];
        if (clsLocation)
        {
          v8 = clsLocation;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)localEndDateComponents
{
  lastObject = [(NSArray *)self->_items lastObject];
  cls_localDateComponents = [lastObject cls_localDateComponents];

  return cls_localDateComponents;
}

- (id)localStartDateComponents
{
  firstObject = [(NSArray *)self->_items firstObject];
  cls_localDateComponents = [firstObject cls_localDateComponents];

  return cls_localDateComponents;
}

- (id)universalEndDate
{
  lastObject = [(NSArray *)self->_items lastObject];
  cls_universalDate = [lastObject cls_universalDate];

  return cls_universalDate;
}

- (id)universalStartDate
{
  firstObject = [(NSArray *)self->_items firstObject];
  cls_universalDate = [firstObject cls_universalDate];

  return cls_universalDate;
}

- (PGCuratorInvestigationFeeder)initWithItems:(id)items
{
  v14[2] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v13.receiver = self;
  v13.super_class = PGCuratorInvestigationFeeder;
  v5 = [(CLSInvestigationFeeder *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"cls_universalDate" ascending:1];
    v14[0] = v6;
    v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"clsIdentifier" ascending:1];
    v14[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v9 = [itemsCopy sortedArrayUsingDescriptors:v8];
    items = v5->_items;
    v5->_items = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

@end