@interface REUIUpNextDataSource
- (REUIUpNextDataSource)initWithRelevanceEngine:(id)a3;
- (REUIUpNextDataSource)initWithRelevanceEngine:(id)a3 sectionOrder:(id)a4;
- (id)_sectionTitleAtIndex:(unint64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation REUIUpNextDataSource

- (REUIUpNextDataSource)initWithRelevanceEngine:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v4 configuration];
  v7 = [v6 sectionDescriptors];

  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 historicSectionDescriptor];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 name];
          [v5 addObject:v15];
        }

        v16 = [v12 name];
        [v5 addObject:v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = [v5 copy];
  v18 = [(REUIUpNextDataSource *)self initWithRelevanceEngine:v4 sectionOrder:v17];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (REUIUpNextDataSource)initWithRelevanceEngine:(id)a3 sectionOrder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = REUIUpNextDataSource;
  v8 = [(REUIUpNextDataSource *)&v12 init];
  if (v8)
  {
    v9 = [[REUIRelevanceEngineController alloc] initWithRelevanceEngine:v6 sectionOrder:v7];
    controller = v8->_controller;
    v8->_controller = v9;
  }

  return v8;
}

- (id)_sectionTitleAtIndex:(unint64_t)a3
{
  v4 = [(REUIUpNextDataSource *)self sectionOrder];
  v5 = [v4 objectAtIndexedSubscript:a3];

  if (v5 == *MEMORY[0x277D44500])
  {
    v8 = @"Up Next";
  }

  else if (v5 == *MEMORY[0x277D44528])
  {
    v8 = @"Upcoming";
  }

  else if (v5 == *MEMORY[0x277D444C0])
  {
    v8 = @"All Day";
  }

  else if (v5 == *MEMORY[0x277D44530])
  {
    v8 = @"Tomorrow";
  }

  else
  {
    v6 = [*MEMORY[0x277D44500] stringByAppendingString:@"_historic"];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v8 = @"Recent";
    }

    else
    {
      v8 = @"Unknown";
    }
  }

  return v8;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 headersRegistered])
  {
    v11 = *MEMORY[0x277D767D8];
  }

  else
  {
    v12 = objc_opt_class();
    v11 = *MEMORY[0x277D767D8];
    [v8 registerClass:v12 forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"REUpNextHeaderReuseIdentifier"];
    [v8 setHeadersRegistered:1];
  }

  if ([v9 isEqualToString:v11])
  {
    v13 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"REUpNextHeaderReuseIdentifier" forIndexPath:v10];
    v14 = -[REUIUpNextDataSource _sectionTitleAtIndex:](self, "_sectionTitleAtIndex:", [v10 section]);
    v15 = objc_alloc(MEMORY[0x277CCA898]);
    v16 = [v14 uppercaseString];
    v17 = [v15 initWithString:v16];
    [v13 setAttributedText:v17];
  }

  else
  {
    v13 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:&stru_287437DE8 forIndexPath:v10];
  }

  return v13;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 cellRegistered] & 1) == 0)
  {
    [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"REUpNextLargeTextCellReuseIdentifier"];
    [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"REUpNextMultilineCellReuseIdentifier"];
    [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"REUpNextThumbnailCellReuseIdentifier"];
    [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"REUpNextLargeWithDetailTextCellReuseIdentifier"];
    [v6 setCellRegistered:1];
  }

  v8 = [(REUIRelevanceEngineController *)self->_controller contentAtIndexPath:v7];
  v9 = [v8 style];
  if (v9 > 5)
  {
    v10 = @"REUpNextLargeTextCellReuseIdentifier";
  }

  else
  {
    v10 = off_279AF6448[v9];
  }

  v11 = [v6 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v7];
  [v11 configureWithContent:v8];
  v12 = [MEMORY[0x277D755B8] imageNamed:@"siriblur"];
  [v11 setContentImage:v12 animated:0];

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 cellRegistered] & 1) == 0)
  {
    [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];
    [v6 setCellRegistered:1];
  }

  v8 = [v6 dequeueReusableCellWithIdentifier:@"cell"];
  v9 = [(REUIRelevanceEngineController *)self->_controller contentAtIndexPath:v7];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v9)
  {
    [v8 configureWithContent:v9];
  }

  return v8;
}

@end