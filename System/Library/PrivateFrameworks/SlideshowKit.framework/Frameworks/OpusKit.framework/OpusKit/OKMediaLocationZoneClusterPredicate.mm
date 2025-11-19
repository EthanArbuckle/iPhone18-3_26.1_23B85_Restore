@interface OKMediaLocationZoneClusterPredicate
- (OKMediaLocationZoneClusterPredicate)initWithDistance:(double)a3;
- (id)_containsInSet:(id)a3 withinItems:(id)a4 distance:(double)a5;
- (id)_titleWithPlacemark:(id)a3;
- (id)evaluateItems:(id)a3 progressBlock:(id)a4;
- (void)dealloc;
@end

@implementation OKMediaLocationZoneClusterPredicate

- (OKMediaLocationZoneClusterPredicate)initWithDistance:(double)a3
{
  v7.receiver = self;
  v7.super_class = OKMediaLocationZoneClusterPredicate;
  v4 = [(OKMediaClusterPredicate *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_distance = a3;
    -[OKMediaClusterPredicate setUniqueID:](v4, "setUniqueID:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%f", @"locationZone", *&a3]);
    [(OKMediaClusterPredicate *)v5 setCategory:1];
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKMediaLocationZoneClusterPredicate;
  [(OKMediaClusterPredicate *)&v2 dealloc];
}

- (id)_containsInSet:(id)a3 withinItems:(id)a4 distance:(double)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBFC70];
  v9 = [a4 valueForKeyPath:@"location"];
  v10 = [v8 regionWithLocations:v9 andIdentifier:{objc_msgSend(MEMORY[0x277CCACA8], "generateUUID")}];
  v11 = objc_alloc(MEMORY[0x277CBFBC8]);
  [v10 center];
  v14 = [v11 initWithCenter:-[OKMediaClusterPredicate uniqueID](self radius:"uniqueID") identifier:{v12, v13, a5}];
  v15 = [MEMORY[0x277CBEB58] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(a3);
        }

        v20 = *(*(&v22 + 1) + 8 * i);
        [objc_msgSend(v20 "metadata")];
        if ([v14 containsCoordinate:?])
        {
          [v15 addObject:v20];
        }
      }

      v17 = [a3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

  return v15;
}

- (id)_titleWithPlacemark:(id)a3
{
  result = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Unspecified", @"Unspecified", @"Localizable"}];
  if (a3)
  {
    if ([a3 areasOfInterest] && objc_msgSend(a3, "areasOfInterest"))
    {
      v5 = [a3 areasOfInterest];

      return [v5 firstObject];
    }

    else if ([a3 inlandWater])
    {

      return [a3 inlandWater];
    }

    else if ([a3 ocean])
    {

      return [a3 ocean];
    }

    else if ([a3 locality])
    {
      if ([a3 administrativeArea])
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", objc_msgSend(a3, "locality"), objc_msgSend(a3, "administrativeArea")];
      }

      else
      {

        return [a3 locality];
      }
    }

    else
    {

      return [a3 name];
    }
  }

  return result;
}

- (id)evaluateItems:(id)a3 progressBlock:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CBEB58] setWithSet:a3];
  v7 = [v6 filteredSetUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithBlock:", &__block_literal_global_10)}];
  if ([v7 count])
  {
    v8 = objc_alloc_init(OKMediaCluster);
    -[OKMediaCluster setTitle:](v8, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Unspecified", @"Unspecified", @"Localizable"}]);
    [(OKMediaCluster *)v8 setIsUnknown:1];
    v34 = v8;
    -[NSMutableArray addObjectsFromArray:](-[OKMediaCluster items](v8, "items"), "addObjectsFromArray:", [v7 allObjects]);
    [v6 minusSet:v7];
  }

  else
  {
    v34 = 0;
  }

  v9 = obj;
  while ([v6 count])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = objc_alloc_init(OKMediaCluster);
    v12 = [v6 anyObject];
    [(NSMutableArray *)[(OKMediaCluster *)v11 items] addObject:v12];
    [v6 minusSet:{objc_msgSend(MEMORY[0x277CBEB98], "setWithObject:", v12)}];
    v13 = -[OKMediaLocationZoneClusterPredicate _containsInSet:withinItems:distance:](self, "_containsInSet:withinItems:distance:", v6, [MEMORY[0x277CBEB98] setWithObject:v12], self->_distance);
    if ([v13 count])
    {
LABEL_6:
      -[NSMutableArray addObjectsFromArray:](-[OKMediaCluster items](v11, "items"), "addObjectsFromArray:", [v13 allObjects]);
      [v6 minusSet:v13];
      while ([v13 count])
      {
        v13 = -[OKMediaLocationZoneClusterPredicate _containsInSet:withinItems:distance:](self, "_containsInSet:withinItems:distance:", v6, [MEMORY[0x277CBEB98] setWithArray:{-[OKMediaCluster items](v11, "items")}], self->_distance);
        if ([v13 count])
        {
          goto LABEL_6;
        }
      }
    }

    v9 = obj;
    [obj addObject:v11];

    objc_autoreleasePoolPop(v10);
  }

  v14 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"creationDate" ascending:0];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  v16 = v34;
  if (v15)
  {
    v17 = v15;
    v18 = *v37;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v36 + 1) + 8 * i);
        if (v20 != v16)
        {
          v21 = [MEMORY[0x277CBFC70] regionWithLocations:objc_msgSend(objc_msgSend(*(*(&v36 + 1) + 8 * i) andIdentifier:{"items"), "valueForKeyPath:", @"location", -[OKMediaClusterPredicate uniqueID](self, "uniqueID")}];
          v22 = objc_alloc(MEMORY[0x277CE41F8]);
          [v21 center];
          v24 = v23;
          [v21 center];
          v25 = [v22 initWithLatitude:v24 longitude:?];
          v26 = MEMORY[0x277D62788];
          [MEMORY[0x277D62788] recommendedAccuracy];
          v27 = [v26 operationWithLocation:v25 accuracy:?];

          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __67__OKMediaLocationZoneClusterPredicate_evaluateItems_progressBlock___block_invoke_2;
          v35[3] = &unk_279C8FB38;
          v35[4] = v20;
          v35[5] = self;
          [v27 setFinishBlock:v35];
          [v27 setContext:self];
          v16 = v34;
          [v27 performSynchronously:0 timeout:{dispatch_time(0, 2000000000)}];
        }

        v28 = [(OKMediaCluster *)v20 items];
        -[NSMutableArray sortUsingDescriptors:](v28, "sortUsingDescriptors:", [MEMORY[0x277CBEA60] arrayWithObject:v14]);
      }

      v9 = obj;
      v17 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v17);
  }

  v29 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"title" ascending:1];
  [v9 sortUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v29)}];
  if (v16)
  {
    v30 = [(OKMediaCluster *)v16 items];
    -[NSMutableArray sortUsingDescriptors:](v30, "sortUsingDescriptors:", [MEMORY[0x277CBEA60] arrayWithObject:v14]);
    [v9 addObject:v16];
  }

  objc_autoreleasePoolPop(context);
  return v9;
}

uint64_t __67__OKMediaLocationZoneClusterPredicate_evaluateItems_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = [objc_msgSend(a2 "metadata")];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  [v2 coordinate];
  if (!CLLocationCoordinate2DIsValid(v5))
  {
    return 1;
  }

  [v3 coordinate];
  [v3 coordinate];
  return 0;
}

uint64_t __67__OKMediaLocationZoneClusterPredicate_evaluateItems_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    v5 = [*(a1 + 40) _titleWithPlacemark:{objc_msgSend(objc_msgSend(a2, "placemarks"), "firstObject")}];
    v6 = *(a1 + 32);

    return [v6 setTitle:v5];
  }

  return result;
}

@end