@interface PGSpecialPOIResolver
+ (BOOL)specialPOIContainsCoordinate:(CLLocationCoordinate2D)coordinate;
+ (BOOL)specialPOINameIsInString:(id)string;
+ (id)_nameBySpecialPOI;
+ (id)_regionsBySpecialPOI;
+ (unint64_t)specialPOIsContainingCoordinate:(CLLocationCoordinate2D)coordinate;
+ (unint64_t)specialPOIsWithNameInString:(id)string;
- (BOOL)anyMomentHasPOIAmusementPark;
- (PGSpecialPOIResolver)initWithMomentNodes:(id)nodes;
- (unint64_t)_numberOfMomentsInRegions:(id)regions containingAOIName:(id)name;
- (unint64_t)_numberOfMomentsMatchingSpecialPOI:(unint64_t)i;
- (unint64_t)specialPOIsInAnyMoment;
- (unint64_t)specialPOIsWithMomentRatio:(double)ratio;
@end

@implementation PGSpecialPOIResolver

- (unint64_t)_numberOfMomentsInRegions:(id)regions containingAOIName:(id)name
{
  v30 = *MEMORY[0x277D85DE8];
  regionsCopy = regions;
  nameCopy = name;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_momentNodes;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        collection = [*(*(&v21 + 1) + 8 * v10) collection];
        addressNodes = [collection addressNodes];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __68__PGSpecialPOIResolver__numberOfMomentsInRegions_containingAOIName___block_invoke;
        v17[3] = &unk_278888148;
        v18 = nameCopy;
        v19 = regionsCopy;
        v20 = &v25;
        [addressNodes enumerateNodesUsingBlock:v17];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  v13 = v26[3];
  _Block_object_dispose(&v25, 8);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __68__PGSpecialPOIResolver__numberOfMomentsInRegions_containingAOIName___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v6 = [v5 collection];
  v7 = [v6 areaNodes];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__PGSpecialPOIResolver__numberOfMomentsInRegions_containingAOIName___block_invoke_2;
  v18[3] = &unk_278888120;
  v19 = *(a1 + 32);
  v20 = &v21;
  [v7 enumerateNodesUsingBlock:v18];

  if (*(v22 + 24) == 1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v25 count:16];
    if (v9)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          [v5 coordinate];
          if ([v12 containsCoordinate:?])
          {
            ++*(*(*(a1 + 48) + 8) + 24);
            *a3 = 1;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  _Block_object_dispose(&v21, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __68__PGSpecialPOIResolver__numberOfMomentsInRegions_containingAOIName___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 name];
  v6 = [v5 lowercaseString];
  v7 = [v6 containsString:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (unint64_t)_numberOfMomentsMatchingSpecialPOI:(unint64_t)i
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
  v5 = [(NSMutableDictionary *)self->_countBySpecialPOI objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = +[PGSpecialPOIResolver _regionsBySpecialPOI];
    v7 = [v6 objectForKeyedSubscript:v4];

    v8 = +[PGSpecialPOIResolver _nameBySpecialPOI];
    v9 = [v8 objectForKeyedSubscript:v4];

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGSpecialPOIResolver _numberOfMomentsInRegions:containingAOIName:](self, "_numberOfMomentsInRegions:containingAOIName:", v7, v9)}];
    [(NSMutableDictionary *)self->_countBySpecialPOI setObject:v5 forKeyedSubscript:v4];
  }

  unsignedIntegerValue = [v5 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)anyMomentHasPOIAmusementPark
{
  if ([(PGSpecialPOIResolver *)self anyMomentContainsSpecialPOI:1])
  {
    return 1;
  }

  return [(PGSpecialPOIResolver *)self anyMomentContainsSpecialPOI:2];
}

- (unint64_t)specialPOIsWithMomentRatio:(double)ratio
{
  v5 = 0;
  v6 = 1;
  do
  {
    if ([(PGSpecialPOIResolver *)self momentsContainSpecialPOI:v6 withMomentRatio:ratio])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v5 |= v7;
    v8 = v6 >= 2;
    v6 *= 2;
  }

  while (!v8);
  return v5;
}

- (unint64_t)specialPOIsInAnyMoment
{
  v3 = 0;
  v4 = 1;
  do
  {
    if ([(PGSpecialPOIResolver *)self anyMomentContainsSpecialPOI:v4])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v3 |= v5;
    v6 = v4 >= 2;
    v4 *= 2;
  }

  while (!v6);
  return v3;
}

- (PGSpecialPOIResolver)initWithMomentNodes:(id)nodes
{
  nodesCopy = nodes;
  v9.receiver = self;
  v9.super_class = PGSpecialPOIResolver;
  v6 = [(PGSpecialPOIResolver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_momentNodes, nodes);
  }

  return v7;
}

+ (id)_nameBySpecialPOI
{
  if (_nameBySpecialPOI_onceToken != -1)
  {
    dispatch_once(&_nameBySpecialPOI_onceToken, &__block_literal_global_256_62056);
  }

  v3 = _nameBySpecialPOI_nameBySpecialPOI;

  return v3;
}

void __41__PGSpecialPOIResolver__nameBySpecialPOI__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_284484608;
  v3[1] = &unk_284484620;
  v4[0] = @"disney";
  v4[1] = @"universal";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = _nameBySpecialPOI_nameBySpecialPOI;
  _nameBySpecialPOI_nameBySpecialPOI = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)_regionsBySpecialPOI
{
  if (_regionsBySpecialPOI_onceToken != -1)
  {
    dispatch_once(&_regionsBySpecialPOI_onceToken, &__block_literal_global_62070);
  }

  v3 = _regionsBySpecialPOI_regionsBySpecialPOI;

  return v3;
}

void __44__PGSpecialPOIResolver__regionsBySpecialPOI__block_invoke()
{
  v32[6] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBFBC8]);
  v1 = CLLocationCoordinate2DMake(28.3826407, -81.5640857);
  v2 = [v0 initWithCenter:@"DisneyOrlando" radius:v1.latitude identifier:{v1.longitude, 5740.0}];
  v32[0] = v2;
  v3 = objc_alloc(MEMORY[0x277CBFBC8]);
  v4 = CLLocationCoordinate2DMake(33.8103178, -117.922078);
  v5 = [v3 initWithCenter:@"DisneyAnaheim" radius:v4.latitude identifier:{v4.longitude, 820.0}];
  v32[1] = v5;
  v6 = objc_alloc(MEMORY[0x277CBFBC8]);
  v7 = CLLocationCoordinate2DMake(48.8687234, 2.7833537);
  v8 = [v6 initWithCenter:@"DisneyParis" radius:v7.latitude identifier:{v7.longitude, 1110.0}];
  v32[2] = v8;
  v9 = objc_alloc(MEMORY[0x277CBFBC8]);
  v10 = CLLocationCoordinate2DMake(35.6296051, 139.881228);
  v11 = [v9 initWithCenter:@"DisneyTokyo" radius:v10.latitude identifier:{v10.longitude, 1050.0}];
  v32[3] = v11;
  v12 = objc_alloc(MEMORY[0x277CBFBC8]);
  v13 = CLLocationCoordinate2DMake(22.3143489, 114.040808);
  v14 = [v12 initWithCenter:@"DisneyHongkong" radius:v13.latitude identifier:{v13.longitude, 1090.0}];
  v32[4] = v14;
  v15 = objc_alloc(MEMORY[0x277CBFBC8]);
  v16 = CLLocationCoordinate2DMake(31.1416439, 121.664522);
  v17 = [v15 initWithCenter:@"DisneyShanghai" radius:v16.latitude identifier:{v16.longitude, 1290.0}];
  v32[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:6];

  v19 = objc_alloc(MEMORY[0x277CBFBC8]);
  v20 = CLLocationCoordinate2DMake(28.4712567, -81.4676208);
  v21 = [v19 initWithCenter:@"UniversalOrlando" radius:v20.latitude identifier:{v20.longitude, 1440.0}];
  v31[0] = v21;
  v22 = objc_alloc(MEMORY[0x277CBFBC8]);
  v23 = CLLocationCoordinate2DMake(34.1391594, -118.353077);
  v24 = [v22 initWithCenter:@"UniversalHolywood" radius:v23.latitude identifier:{v23.longitude, 780.0}];
  v31[1] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];

  v29[0] = &unk_284484608;
  v29[1] = &unk_284484620;
  v30[0] = v18;
  v30[1] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v27 = _regionsBySpecialPOI_regionsBySpecialPOI;
  _regionsBySpecialPOI_regionsBySpecialPOI = v26;

  v28 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)specialPOIsWithNameInString:(id)string
{
  stringCopy = string;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  _nameBySpecialPOI = [self _nameBySpecialPOI];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__PGSpecialPOIResolver_specialPOIsWithNameInString___block_invoke;
  v9[3] = &unk_2788880F8;
  v6 = stringCopy;
  v10 = v6;
  v11 = &v12;
  [_nameBySpecialPOI enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__PGSpecialPOIResolver_specialPOIsWithNameInString___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) containsString:a3])
  {
    *(*(*(a1 + 40) + 8) + 24) |= [v5 unsignedIntegerValue];
  }
}

+ (BOOL)specialPOINameIsInString:(id)string
{
  v17 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _nameBySpecialPOI = [self _nameBySpecialPOI];
  allValues = [_nameBySpecialPOI allValues];

  v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        if ([stringCopy containsString:*(*(&v12 + 1) + 8 * i)])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (unint64_t)specialPOIsContainingCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  _regionsBySpecialPOI = [self _regionsBySpecialPOI];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__PGSpecialPOIResolver_specialPOIsContainingCoordinate___block_invoke;
  v8[3] = &unk_2788880D0;
  *&v8[5] = latitude;
  *&v8[6] = longitude;
  v8[4] = &v9;
  [_regionsBySpecialPOI enumerateKeysAndObjectsUsingBlock:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __56__PGSpecialPOIResolver_specialPOIsContainingCoordinate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v12 + 1) + 8 * i) containsCoordinate:{*(a1 + 40), *(a1 + 48), v12}])
        {
          *(*(*(a1 + 32) + 8) + 24) |= [v5 unsignedIntegerValue];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

+ (BOOL)specialPOIContainsCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  _regionsBySpecialPOI = [self _regionsBySpecialPOI];
  allValues = [_regionsBySpecialPOI allValues];

  v7 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([*(*(&v20 + 1) + 8 * j) containsCoordinate:{latitude, longitude}])
              {

                v17 = 1;
                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
      v17 = 0;
    }

    while (v8);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

@end