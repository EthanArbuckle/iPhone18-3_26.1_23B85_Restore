@interface PGCuratorInvestigationFeeder
- (PGCuratorInvestigationFeeder)initWithItems:(id)a3;
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

        v7 = [*(*(&v11 + 1) + 8 * i) clsLocation];
        if (v7)
        {
          v8 = v7;
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
  v2 = [(NSArray *)self->_items lastObject];
  v3 = [v2 cls_localDateComponents];

  return v3;
}

- (id)localStartDateComponents
{
  v2 = [(NSArray *)self->_items firstObject];
  v3 = [v2 cls_localDateComponents];

  return v3;
}

- (id)universalEndDate
{
  v2 = [(NSArray *)self->_items lastObject];
  v3 = [v2 cls_universalDate];

  return v3;
}

- (id)universalStartDate
{
  v2 = [(NSArray *)self->_items firstObject];
  v3 = [v2 cls_universalDate];

  return v3;
}

- (PGCuratorInvestigationFeeder)initWithItems:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v9 = [v4 sortedArrayUsingDescriptors:v8];
    items = v5->_items;
    v5->_items = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

@end