@interface PGFoodieMemoryTitleGenerator
- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)nodes addressNode:(id)node titleGenerationContext:(id)context;
- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)nodes businessNode:(id)node titleGenerationContext:(id)context;
- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)nodes cityNode:(id)node titleGenerationContext:(id)context;
- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)nodes personNode:(id)node titleGenerationContext:(id)context;
- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)nodes tripLocationNode:(id)node tripTitleLocationType:(unint64_t)type titleGenerationContext:(id)context;
- (id)_timeTitleForTripAndWeekend;
- (id)_typeString;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGFoodieMemoryTitleGenerator

- (id)_typeString
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PGTripMemoryTypeStringTrip" value:@"PGTripMemoryTypeStringTrip" table:@"Localizable"];

  return v3;
}

- (id)_timeTitleForTripAndWeekend
{
  v3 = objc_alloc_init(PGTimeTitleOptions);
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v3 setMomentNodes:momentNodes];

  locale = [(PGTitleGenerator *)self locale];
  [(PGTimeTitleOptions *)v3 setLocale:locale];

  v6 = [PGTimeTitleUtility timeTitleWithOptions:v3];
  _typeString = [(PGFoodieMemoryTitleGenerator *)self _typeString];
  if (!_typeString)
  {
    v12 = v6;
LABEL_6:
    v11 = v12;
    goto LABEL_7;
  }

  if (![v6 length])
  {
    v12 = _typeString;
    goto LABEL_6;
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"PGTripMemorySubtitleFormatWithLocalizedDate %@" value:@"PGTripMemorySubtitleFormatWithLocalizedDate %@" table:@"Localizable"];
  v11 = [v8 localizedStringWithFormat:v10, v6];

LABEL_7:
  v13 = v11;

  return v11;
}

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
  _timeTitleForTripAndWeekend = 0;
  type = self->_type;
  if (type <= 2)
  {
    if (type)
    {
      if (type != 1)
      {
        if (type != 2)
        {
          goto LABEL_32;
        }

        ownerNodes = objc_alloc_init(PGLocationTitleOptions);
        momentNodes = [(PGTitleGenerator *)self momentNodes];
        [(PGLocationTitleOptions *)ownerNodes setMomentNodes:momentNodes];

        v49 = 0;
        v50 = &v49;
        v51 = 0x3032000000;
        v52 = __Block_byref_object_copy__69517;
        v53 = __Block_byref_object_dispose__69518;
        v54 = 0;
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __68__PGFoodieMemoryTitleGenerator__generateTitleAndSubtitleWithResult___block_invoke;
        v48[3] = &unk_27888A018;
        v48[4] = &v49;
        [PGLocationTitleUtility generateBusinessItemLocationWithOptions:ownerNodes result:v48];
        if (v50[5])
        {
          v9 = MEMORY[0x277CCACA8];
          v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:@"PGFoodieMemoryTitleWithBusinessName %@" value:@"PGFoodieMemoryTitleWithBusinessName %@" table:@"Localizable"];
          v12 = [v9 localizedStringWithFormat:v11, v50[5]];

          title = [PGTitle titleWithString:v12 category:4];
        }

        else
        {
          title = 0;
        }

        _Block_object_dispose(&v49, 8);

LABEL_31:
        _timeTitleForTripAndWeekend = 0;
        v24 = 0;
        if (!title)
        {
          goto LABEL_32;
        }

LABEL_35:
        v44 = objc_alloc_init(PGTimeTitleOptions);
        momentNodes2 = [(PGTitleGenerator *)self momentNodes];
        [(PGTimeTitleOptions *)v44 setMomentNodes:momentNodes2];

        featuredYearNodes = [(PGTitleGenerator *)self featuredYearNodes];
        [(PGTimeTitleOptions *)v44 setFeaturedYearNodes:featuredYearNodes];

        [(PGTimeTitleOptions *)v44 setAllowedFormats:20];
        _timeTitleForTripAndWeekend = [PGTimeTitleUtility timeTitleWithOptions:v44];

        goto LABEL_36;
      }

      name = [(PGGraphNamedLocationNode *)self->_cityNode name];
      v32 = [name length];

      if (!v32)
      {
        _timeTitleForTripAndWeekend = 0;
        goto LABEL_32;
      }

      cityNode = self->_cityNode;
      titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
      locationHelper = [titleGenerationContext locationHelper];
      momentNodes5 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:cityNode locationHelper:locationHelper];

      momentNodes4 = [PGTitleSpecFactory specCollectionForFoodieMemoryWithPersonNodes:0 locationName:momentNodes5 tripTitleLocationType:0 allowInspiredTastesTitle:0 genericOnly:0];
      v36 = [PGSpecBasedTitleGenerator alloc];
      momentNodes3 = [(PGTitleGenerator *)self momentNodes];
      titleGenerationContext2 = [(PGTitleGenerator *)self titleGenerationContext];
      v24 = [(PGSpecBasedTitleGenerator *)v36 initWithMomentNodes:momentNodes3 specCollection:momentNodes4 titleGenerationContext:titleGenerationContext2];

LABEL_17:
      _timeTitleForTripAndWeekend = 0;
      if (!v24)
      {
        goto LABEL_32;
      }

LABEL_26:
      title = [(PGSpecBasedTitleGenerator *)v24 title];
      if (_timeTitleForTripAndWeekend)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    momentNodes5 = [PGTitleSpecFactory specCollectionForFoodieMemoryWithPersonNodes:0 locationName:0 tripTitleLocationType:0 allowInspiredTastesTitle:0 genericOnly:1];
    v26 = [PGSpecBasedTitleGenerator alloc];
    momentNodes4 = [(PGTitleGenerator *)self momentNodes];
    momentNodes3 = [(PGTitleGenerator *)self titleGenerationContext];
    v29 = [(PGSpecBasedTitleGenerator *)v26 initWithMomentNodes:momentNodes4 specCollection:momentNodes5 titleGenerationContext:momentNodes3];
LABEL_14:
    v24 = v29;
    goto LABEL_17;
  }

  switch(type)
  {
    case 3:
      v30 = [PGSpecBasedTitleGenerator alloc];
      momentNodes5 = [(PGTitleGenerator *)self momentNodes];
      momentNodes4 = [MEMORY[0x277CBEB98] setWithObject:self->_personNode];
      momentNodes3 = [(PGTitleGenerator *)self titleGenerationContext];
      v29 = [(PGSpecBasedTitleGenerator *)v30 initWithMomentNodes:momentNodes5 personNodes:momentNodes4 memoryCategory:301 subcategory:218 titleGenerationContext:momentNodes3];
      goto LABEL_14;
    case 4:
      collection = [(PGGraphAddressNode *)self->_addressNode collection];
      homeNodes = [collection homeNodes];
      ownerNodes = [homeNodes ownerNodes];

      graph = [(MANode *)self->_addressNode graph];
      v41 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graph];

      if (-[PGLocationTitleOptions intersectsCollection:](ownerNodes, "intersectsCollection:", v41) && ([MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()], v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "localizedStringForKey:value:table:", @"PGFoodieMemoryTitleForHome", @"PGFoodieMemoryTitleForHome", @"Localizable"), v43 = objc_claimAutoreleasedReturnValue(), v42, v43))
      {
        title = [PGTitle titleWithString:v43 category:4];
      }

      else
      {
        title = 0;
      }

      goto LABEL_31;
    case 5:
      name2 = [(PGGraphLocationOrArea *)self->_tripLocationNode name];
      v15 = [name2 length];

      if (v15)
      {
        tripLocationNode = self->_tripLocationNode;
        titleGenerationContext3 = [(PGTitleGenerator *)self titleGenerationContext];
        locationHelper2 = [titleGenerationContext3 locationHelper];
        v19 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:tripLocationNode locationHelper:locationHelper2];

        v20 = [PGTitleSpecFactory specCollectionForFoodieMemoryWithPersonNodes:0 locationName:v19 tripTitleLocationType:self->_tripTitleLocationType allowInspiredTastesTitle:1 genericOnly:0];
        v21 = [PGSpecBasedTitleGenerator alloc];
        momentNodes6 = [(PGTitleGenerator *)self momentNodes];
        titleGenerationContext4 = [(PGTitleGenerator *)self titleGenerationContext];
        v24 = [(PGSpecBasedTitleGenerator *)v21 initWithMomentNodes:momentNodes6 specCollection:v20 titleGenerationContext:titleGenerationContext4];
      }

      else
      {
        v24 = 0;
      }

      _timeTitleForTripAndWeekend = [(PGFoodieMemoryTitleGenerator *)self _timeTitleForTripAndWeekend];
      if (v24)
      {
        goto LABEL_26;
      }

      break;
  }

LABEL_32:
  if (resultCopy)
  {
    (*(resultCopy + 2))(resultCopy, 0, 0);
    goto LABEL_39;
  }

  v24 = 0;
  title = 0;
  if (!_timeTitleForTripAndWeekend)
  {
    goto LABEL_35;
  }

LABEL_36:
  v47 = [PGTitle titleWithString:_timeTitleForTripAndWeekend category:5];
  if (resultCopy)
  {
    (*(resultCopy + 2))(resultCopy, title, v47);
  }

LABEL_39:
}

- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)nodes tripLocationNode:(id)node tripTitleLocationType:(unint64_t)type titleGenerationContext:(id)context
{
  nodeCopy = node;
  v15.receiver = self;
  v15.super_class = PGFoodieMemoryTitleGenerator;
  v12 = [(PGTitleGenerator *)&v15 initWithMomentNodes:nodes type:0 titleGenerationContext:context];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tripLocationNode, node);
    v13->_tripTitleLocationType = type;
    v13->_type = 5;
  }

  return v13;
}

- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)nodes addressNode:(id)node titleGenerationContext:(id)context
{
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = PGFoodieMemoryTitleGenerator;
  v10 = [(PGTitleGenerator *)&v13 initWithMomentNodes:nodes type:0 titleGenerationContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_addressNode, node);
    v11->_type = 4;
  }

  return v11;
}

- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)nodes personNode:(id)node titleGenerationContext:(id)context
{
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = PGFoodieMemoryTitleGenerator;
  v10 = [(PGTitleGenerator *)&v13 initWithMomentNodes:nodes type:0 titleGenerationContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_personNode, node);
    v11->_type = 3;
  }

  return v11;
}

- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)nodes businessNode:(id)node titleGenerationContext:(id)context
{
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = PGFoodieMemoryTitleGenerator;
  v10 = [(PGTitleGenerator *)&v13 initWithMomentNodes:nodes type:0 titleGenerationContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_businessNode, node);
    v11->_type = 2;
  }

  return v11;
}

- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)nodes cityNode:(id)node titleGenerationContext:(id)context
{
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = PGFoodieMemoryTitleGenerator;
  v10 = [(PGTitleGenerator *)&v13 initWithMomentNodes:nodes type:0 titleGenerationContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_cityNode, node);
    v11->_type = 1;
  }

  return v11;
}

@end