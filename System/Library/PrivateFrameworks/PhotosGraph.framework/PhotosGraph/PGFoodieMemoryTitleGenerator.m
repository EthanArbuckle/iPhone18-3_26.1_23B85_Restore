@interface PGFoodieMemoryTitleGenerator
- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)a3 addressNode:(id)a4 titleGenerationContext:(id)a5;
- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)a3 businessNode:(id)a4 titleGenerationContext:(id)a5;
- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)a3 cityNode:(id)a4 titleGenerationContext:(id)a5;
- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)a3 personNode:(id)a4 titleGenerationContext:(id)a5;
- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)a3 tripLocationNode:(id)a4 tripTitleLocationType:(unint64_t)a5 titleGenerationContext:(id)a6;
- (id)_timeTitleForTripAndWeekend;
- (id)_typeString;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
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
  v4 = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v3 setMomentNodes:v4];

  v5 = [(PGTitleGenerator *)self locale];
  [(PGTimeTitleOptions *)v3 setLocale:v5];

  v6 = [PGTimeTitleUtility timeTitleWithOptions:v3];
  v7 = [(PGFoodieMemoryTitleGenerator *)self _typeString];
  if (!v7)
  {
    v12 = v6;
LABEL_6:
    v11 = v12;
    goto LABEL_7;
  }

  if (![v6 length])
  {
    v12 = v7;
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

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v4 = a3;
  v5 = 0;
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

        v7 = objc_alloc_init(PGLocationTitleOptions);
        v8 = [(PGTitleGenerator *)self momentNodes];
        [(PGLocationTitleOptions *)v7 setMomentNodes:v8];

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
        [PGLocationTitleUtility generateBusinessItemLocationWithOptions:v7 result:v48];
        if (v50[5])
        {
          v9 = MEMORY[0x277CCACA8];
          v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:@"PGFoodieMemoryTitleWithBusinessName %@" value:@"PGFoodieMemoryTitleWithBusinessName %@" table:@"Localizable"];
          v12 = [v9 localizedStringWithFormat:v11, v50[5]];

          v13 = [PGTitle titleWithString:v12 category:4];
        }

        else
        {
          v13 = 0;
        }

        _Block_object_dispose(&v49, 8);

LABEL_31:
        v5 = 0;
        v24 = 0;
        if (!v13)
        {
          goto LABEL_32;
        }

LABEL_35:
        v44 = objc_alloc_init(PGTimeTitleOptions);
        v45 = [(PGTitleGenerator *)self momentNodes];
        [(PGTimeTitleOptions *)v44 setMomentNodes:v45];

        v46 = [(PGTitleGenerator *)self featuredYearNodes];
        [(PGTimeTitleOptions *)v44 setFeaturedYearNodes:v46];

        [(PGTimeTitleOptions *)v44 setAllowedFormats:20];
        v5 = [PGTimeTitleUtility timeTitleWithOptions:v44];

        goto LABEL_36;
      }

      v31 = [(PGGraphNamedLocationNode *)self->_cityNode name];
      v32 = [v31 length];

      if (!v32)
      {
        v5 = 0;
        goto LABEL_32;
      }

      cityNode = self->_cityNode;
      v34 = [(PGTitleGenerator *)self titleGenerationContext];
      v35 = [v34 locationHelper];
      v25 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:cityNode locationHelper:v35];

      v27 = [PGTitleSpecFactory specCollectionForFoodieMemoryWithPersonNodes:0 locationName:v25 tripTitleLocationType:0 allowInspiredTastesTitle:0 genericOnly:0];
      v36 = [PGSpecBasedTitleGenerator alloc];
      v28 = [(PGTitleGenerator *)self momentNodes];
      v37 = [(PGTitleGenerator *)self titleGenerationContext];
      v24 = [(PGSpecBasedTitleGenerator *)v36 initWithMomentNodes:v28 specCollection:v27 titleGenerationContext:v37];

LABEL_17:
      v5 = 0;
      if (!v24)
      {
        goto LABEL_32;
      }

LABEL_26:
      v13 = [(PGSpecBasedTitleGenerator *)v24 title];
      if (v5)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v25 = [PGTitleSpecFactory specCollectionForFoodieMemoryWithPersonNodes:0 locationName:0 tripTitleLocationType:0 allowInspiredTastesTitle:0 genericOnly:1];
    v26 = [PGSpecBasedTitleGenerator alloc];
    v27 = [(PGTitleGenerator *)self momentNodes];
    v28 = [(PGTitleGenerator *)self titleGenerationContext];
    v29 = [(PGSpecBasedTitleGenerator *)v26 initWithMomentNodes:v27 specCollection:v25 titleGenerationContext:v28];
LABEL_14:
    v24 = v29;
    goto LABEL_17;
  }

  switch(type)
  {
    case 3:
      v30 = [PGSpecBasedTitleGenerator alloc];
      v25 = [(PGTitleGenerator *)self momentNodes];
      v27 = [MEMORY[0x277CBEB98] setWithObject:self->_personNode];
      v28 = [(PGTitleGenerator *)self titleGenerationContext];
      v29 = [(PGSpecBasedTitleGenerator *)v30 initWithMomentNodes:v25 personNodes:v27 memoryCategory:301 subcategory:218 titleGenerationContext:v28];
      goto LABEL_14;
    case 4:
      v38 = [(PGGraphAddressNode *)self->_addressNode collection];
      v39 = [v38 homeNodes];
      v7 = [v39 ownerNodes];

      v40 = [(MANode *)self->_addressNode graph];
      v41 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v40];

      if (-[PGLocationTitleOptions intersectsCollection:](v7, "intersectsCollection:", v41) && ([MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()], v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "localizedStringForKey:value:table:", @"PGFoodieMemoryTitleForHome", @"PGFoodieMemoryTitleForHome", @"Localizable"), v43 = objc_claimAutoreleasedReturnValue(), v42, v43))
      {
        v13 = [PGTitle titleWithString:v43 category:4];
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_31;
    case 5:
      v14 = [(PGGraphLocationOrArea *)self->_tripLocationNode name];
      v15 = [v14 length];

      if (v15)
      {
        tripLocationNode = self->_tripLocationNode;
        v17 = [(PGTitleGenerator *)self titleGenerationContext];
        v18 = [v17 locationHelper];
        v19 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:tripLocationNode locationHelper:v18];

        v20 = [PGTitleSpecFactory specCollectionForFoodieMemoryWithPersonNodes:0 locationName:v19 tripTitleLocationType:self->_tripTitleLocationType allowInspiredTastesTitle:1 genericOnly:0];
        v21 = [PGSpecBasedTitleGenerator alloc];
        v22 = [(PGTitleGenerator *)self momentNodes];
        v23 = [(PGTitleGenerator *)self titleGenerationContext];
        v24 = [(PGSpecBasedTitleGenerator *)v21 initWithMomentNodes:v22 specCollection:v20 titleGenerationContext:v23];
      }

      else
      {
        v24 = 0;
      }

      v5 = [(PGFoodieMemoryTitleGenerator *)self _timeTitleForTripAndWeekend];
      if (v24)
      {
        goto LABEL_26;
      }

      break;
  }

LABEL_32:
  if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
    goto LABEL_39;
  }

  v24 = 0;
  v13 = 0;
  if (!v5)
  {
    goto LABEL_35;
  }

LABEL_36:
  v47 = [PGTitle titleWithString:v5 category:5];
  if (v4)
  {
    (*(v4 + 2))(v4, v13, v47);
  }

LABEL_39:
}

- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)a3 tripLocationNode:(id)a4 tripTitleLocationType:(unint64_t)a5 titleGenerationContext:(id)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = PGFoodieMemoryTitleGenerator;
  v12 = [(PGTitleGenerator *)&v15 initWithMomentNodes:a3 type:0 titleGenerationContext:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tripLocationNode, a4);
    v13->_tripTitleLocationType = a5;
    v13->_type = 5;
  }

  return v13;
}

- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)a3 addressNode:(id)a4 titleGenerationContext:(id)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PGFoodieMemoryTitleGenerator;
  v10 = [(PGTitleGenerator *)&v13 initWithMomentNodes:a3 type:0 titleGenerationContext:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_addressNode, a4);
    v11->_type = 4;
  }

  return v11;
}

- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)a3 personNode:(id)a4 titleGenerationContext:(id)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PGFoodieMemoryTitleGenerator;
  v10 = [(PGTitleGenerator *)&v13 initWithMomentNodes:a3 type:0 titleGenerationContext:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_personNode, a4);
    v11->_type = 3;
  }

  return v11;
}

- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)a3 businessNode:(id)a4 titleGenerationContext:(id)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PGFoodieMemoryTitleGenerator;
  v10 = [(PGTitleGenerator *)&v13 initWithMomentNodes:a3 type:0 titleGenerationContext:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_businessNode, a4);
    v11->_type = 2;
  }

  return v11;
}

- (PGFoodieMemoryTitleGenerator)initWithMomentNodes:(id)a3 cityNode:(id)a4 titleGenerationContext:(id)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PGFoodieMemoryTitleGenerator;
  v10 = [(PGTitleGenerator *)&v13 initWithMomentNodes:a3 type:0 titleGenerationContext:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_cityNode, a4);
    v11->_type = 1;
  }

  return v11;
}

@end