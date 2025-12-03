@interface REUIUpNextDataSource
- (REUIUpNextDataSource)initWithRelevanceEngine:(id)engine;
- (REUIUpNextDataSource)initWithRelevanceEngine:(id)engine sectionOrder:(id)order;
- (id)_sectionTitleAtIndex:(unint64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation REUIUpNextDataSource

- (REUIUpNextDataSource)initWithRelevanceEngine:(id)engine
{
  v26 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  configuration = [engineCopy configuration];
  sectionDescriptors = [configuration sectionDescriptors];

  v8 = [sectionDescriptors countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(sectionDescriptors);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        historicSectionDescriptor = [v12 historicSectionDescriptor];
        v14 = historicSectionDescriptor;
        if (historicSectionDescriptor)
        {
          name = [historicSectionDescriptor name];
          [array addObject:name];
        }

        name2 = [v12 name];
        [array addObject:name2];
      }

      v9 = [sectionDescriptors countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = [array copy];
  v18 = [(REUIUpNextDataSource *)self initWithRelevanceEngine:engineCopy sectionOrder:v17];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (REUIUpNextDataSource)initWithRelevanceEngine:(id)engine sectionOrder:(id)order
{
  engineCopy = engine;
  orderCopy = order;
  v12.receiver = self;
  v12.super_class = REUIUpNextDataSource;
  v8 = [(REUIUpNextDataSource *)&v12 init];
  if (v8)
  {
    v9 = [[REUIRelevanceEngineController alloc] initWithRelevanceEngine:engineCopy sectionOrder:orderCopy];
    controller = v8->_controller;
    v8->_controller = v9;
  }

  return v8;
}

- (id)_sectionTitleAtIndex:(unint64_t)index
{
  sectionOrder = [(REUIUpNextDataSource *)self sectionOrder];
  v5 = [sectionOrder objectAtIndexedSubscript:index];

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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if ([viewCopy headersRegistered])
  {
    v11 = *MEMORY[0x277D767D8];
  }

  else
  {
    v12 = objc_opt_class();
    v11 = *MEMORY[0x277D767D8];
    [viewCopy registerClass:v12 forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"REUpNextHeaderReuseIdentifier"];
    [viewCopy setHeadersRegistered:1];
  }

  if ([kindCopy isEqualToString:v11])
  {
    v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"REUpNextHeaderReuseIdentifier" forIndexPath:pathCopy];
    v14 = -[REUIUpNextDataSource _sectionTitleAtIndex:](self, "_sectionTitleAtIndex:", [pathCopy section]);
    v15 = objc_alloc(MEMORY[0x277CCA898]);
    uppercaseString = [v14 uppercaseString];
    v17 = [v15 initWithString:uppercaseString];
    [v13 setAttributedText:v17];
  }

  else
  {
    v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:&stru_287437DE8 forIndexPath:pathCopy];
  }

  return v13;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (([viewCopy cellRegistered] & 1) == 0)
  {
    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"REUpNextLargeTextCellReuseIdentifier"];
    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"REUpNextMultilineCellReuseIdentifier"];
    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"REUpNextThumbnailCellReuseIdentifier"];
    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"REUpNextLargeWithDetailTextCellReuseIdentifier"];
    [viewCopy setCellRegistered:1];
  }

  v8 = [(REUIRelevanceEngineController *)self->_controller contentAtIndexPath:pathCopy];
  style = [v8 style];
  if (style > 5)
  {
    v10 = @"REUpNextLargeTextCellReuseIdentifier";
  }

  else
  {
    v10 = off_279AF6448[style];
  }

  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];
  [v11 configureWithContent:v8];
  v12 = [MEMORY[0x277D755B8] imageNamed:@"siriblur"];
  [v11 setContentImage:v12 animated:0];

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (([viewCopy cellRegistered] & 1) == 0)
  {
    [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];
    [viewCopy setCellRegistered:1];
  }

  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"cell"];
  v9 = [(REUIRelevanceEngineController *)self->_controller contentAtIndexPath:pathCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v9)
  {
    [v8 configureWithContent:v9];
  }

  return v8;
}

@end