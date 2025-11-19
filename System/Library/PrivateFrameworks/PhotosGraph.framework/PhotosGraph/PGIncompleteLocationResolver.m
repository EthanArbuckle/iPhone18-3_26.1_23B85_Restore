@interface PGIncompleteLocationResolver
+ (double)_maxDistanceForDimension:(unint64_t)a3;
- (PGIncompleteLocationResolver)initWithAddressNodes:(id)a3 locationHelper:(id)a4;
- (id)_resolvedAddressForIncompleteAddress:(id)a3 withTargetDimension:(unint64_t)a4 resolvedDimension:(unint64_t *)a5 resolvedLocation:(id *)a6 addresses:(id)a7;
- (id)_resolvedAddressForIncompleteAddress:(id)a3 withTargetDimension:(unint64_t)a4 resolvedDimension:(unint64_t *)a5 resolvedLocation:(id *)a6 sortedAddresses:(id)a7;
- (id)_resolvedLocationNodeForIncompleteAddressNode:(id)a3 withTargetDimension:(unint64_t)a4 resolvedDimension:(unint64_t *)a5 continueResolvingHigherDimensions:(BOOL)a6;
@end

@implementation PGIncompleteLocationResolver

- (id)_resolvedAddressForIncompleteAddress:(id)a3 withTargetDimension:(unint64_t)a4 resolvedDimension:(unint64_t *)a5 resolvedLocation:(id *)a6 addresses:(id)a7
{
  v43 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  v35 = self;
  [objc_opt_class() _maxDistanceForDimension:a4];
  v15 = v14;
  [v12 coordinate];
  v40 = v16;
  v41 = v17;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v18 = v13;
  v19 = [v18 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v32 = a6;
    v33 = a5;
    v21 = *v37;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v36 + 1) + 8 * i);
        if (([v23 isSameNodeAsNode:{v12, v32, v33}] & 1) == 0)
        {
          [v23 coordinate];
          if (CLLocationCoordinate2DIsValid(v45))
          {
            CLLocationCoordinate2DGetDistanceFrom();
            if (v24 <= v15)
            {
              v25 = [(PGGraphLocationHelper *)v35->_locationHelper closestLocationNodeFromLocationNode:v23 withDimension:a4 reverse:0];
              v26 = [v25 label];
              v27 = [PGCommonTitleUtility dimensionForLabel:v26];

              if (v27 == a4)
              {
                v28 = v23;
                v29 = v25;
                *v32 = v25;
                if (v33)
                {
                  *v33 = a4;
                }

                goto LABEL_19;
              }
            }

            else if (isKindOfClass)
            {
              goto LABEL_15;
            }
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
  v28 = 0;
LABEL_19:

  v30 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)_resolvedAddressForIncompleteAddress:(id)a3 withTargetDimension:(unint64_t)a4 resolvedDimension:(unint64_t *)a5 resolvedLocation:(id *)a6 sortedAddresses:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = [(PGIncompleteLocationResolver *)self _resolvedAddressForIncompleteAddress:v12 withTargetDimension:a4 resolvedDimension:a5 resolvedLocation:a6 addresses:v13];
  if (!v14)
  {
    v15 = [v12 graph];
    v16 = MEMORY[0x277CBEB58];
    v17 = [v15 nodesForLabel:@"Address" domain:200];
    v18 = [v16 setWithSet:v17];

    if (v13 && [v13 count])
    {
      v19 = [MEMORY[0x277CBEB98] setWithArray:v13];
      [v18 minusSet:v19];
    }

    v14 = [(PGIncompleteLocationResolver *)self _resolvedAddressForIncompleteAddress:v12 withTargetDimension:a4 resolvedDimension:a5 resolvedLocation:a6 addresses:v18];
  }

  return v14;
}

- (id)_resolvedLocationNodeForIncompleteAddressNode:(id)a3 withTargetDimension:(unint64_t)a4 resolvedDimension:(unint64_t *)a5 continueResolvingHigherDimensions:(BOOL)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [(PGIncompleteLocationResolver *)self _resolveIdentifierForIncompleteAddressNode:v10 withTargetDimension:a4];
  v12 = [(NSMutableDictionary *)self->_resolvedLocationNodesCache objectForKeyedSubscript:v11];
  if (v12)
  {
    v13 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v13 = 0;
    }

    v14 = [v13 label];
    v15 = v14;
    if (a5 && v14)
    {
      *a5 = [PGCommonTitleUtility dimensionForLabel:v14];
    }

    v16 = v13;

LABEL_31:
    goto LABEL_32;
  }

  [v10 coordinate];
  latitude = v42.latitude;
  longitude = v42.longitude;
  if (CLLocationCoordinate2DIsValid(v42))
  {
    v32 = a5;
    v19 = [(NSSet *)self->_addressNodes allObjects];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __150__PGIncompleteLocationResolver__resolvedLocationNodeForIncompleteAddressNode_withTargetDimension_resolvedDimension_continueResolvingHigherDimensions___block_invoke;
    v35[3] = &__block_descriptor_48_e51_q24__0__PGGraphAddressNode_8__PGGraphAddressNode_16l;
    *&v35[4] = latitude;
    *&v35[5] = longitude;
    v20 = [v19 sortedArrayUsingComparator:v35];

    v21 = 0;
    v34 = 0;
    v22 = a4;
    do
    {
      v23 = v22;
      v24 = v21;
      v33 = v21;
      v25 = [(PGIncompleteLocationResolver *)self _resolvedAddressForIncompleteAddress:v10 withTargetDimension:v22 resolvedDimension:&v34 resolvedLocation:&v33 sortedAddresses:v20];
      v21 = v33;

      v22 = v23 + 1;
    }

    while (v23 + 1 <= 9 && !v25 && a6);
    if ([v25 isSameNodeAsNode:v10])
    {
    }

    else if (v21)
    {
LABEL_19:
      if (v23 >= a4)
      {
        v27 = MEMORY[0x277D86220];
        do
        {
          v28 = v11;
          v11 = [(PGIncompleteLocationResolver *)self _resolveIdentifierForIncompleteAddressNode:v10 withTargetDimension:v23];

          if (v21 && v23 == v34)
          {
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138478083;
              v37 = v10;
              v38 = 2113;
              v39 = v21;
              _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "Resolved incomplete address %{private}@ to location %{private}@", buf, 0x16u);
            }

            [(NSMutableDictionary *)self->_resolvedLocationNodesCache setObject:v21 forKeyedSubscript:v11];
          }

          else
          {
            v29 = [MEMORY[0x277CBEB68] null];
            [(NSMutableDictionary *)self->_resolvedLocationNodesCache setObject:v29 forKeyedSubscript:v11];
          }

          --v23;
        }

        while (v23 >= a4);
      }

      if (v32)
      {
        *v32 = v34;
      }

      v16 = v21;

      goto LABEL_31;
    }

    v21 = 0;
    v34 = 0;
    goto LABEL_19;
  }

  v26 = [MEMORY[0x277CBEB68] null];
  [(NSMutableDictionary *)self->_resolvedLocationNodesCache setObject:v26 forKeyedSubscript:v11];

  v16 = 0;
  if (a5)
  {
    *a5 = 0;
  }

LABEL_32:

  v30 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __150__PGIncompleteLocationResolver__resolvedLocationNodeForIncompleteAddressNode_withTargetDimension_resolvedDimension_continueResolvingHigherDimensions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 coordinate];
  v6 = v5;
  v8 = v7;
  [v4 coordinate];
  v10 = v9;
  v12 = v11;

  v20.latitude = v6;
  v20.longitude = v8;
  v13 = CLLocationCoordinate2DIsValid(v20);
  v21.latitude = v10;
  v21.longitude = v12;
  v14 = CLLocationCoordinate2DIsValid(v21);
  if (!v13 && !v14)
  {
    return 0;
  }

  if (!v13 && v14)
  {
    return 1;
  }

  if (!v14 && v13)
  {
    return -1;
  }

  CLLocationCoordinate2DGetDistanceFrom();
  v17 = v16;
  CLLocationCoordinate2DGetDistanceFrom();
  if (v18 <= v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = -1;
  }

  if (v17 > v18)
  {
    return 1;
  }

  else
  {
    return v19;
  }
}

- (PGIncompleteLocationResolver)initWithAddressNodes:(id)a3 locationHelper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PGIncompleteLocationResolver;
  v9 = [(PGIncompleteLocationResolver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_addressNodes, a3);
    v11 = [MEMORY[0x277CBEB38] dictionary];
    resolvedLocationNodesCache = v10->_resolvedLocationNodesCache;
    v10->_resolvedLocationNodesCache = v11;

    objc_storeStrong(&v10->_locationHelper, a4);
  }

  return v10;
}

+ (double)_maxDistanceForDimension:(unint64_t)a3
{
  result = 0.0;
  if (a3 - 6 <= 3)
  {
    return dbl_22F78C6E8[a3 - 6];
  }

  return result;
}

@end