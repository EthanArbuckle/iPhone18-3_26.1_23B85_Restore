@interface PGIncompleteLocationResolver
+ (double)_maxDistanceForDimension:(unint64_t)dimension;
- (PGIncompleteLocationResolver)initWithAddressNodes:(id)nodes locationHelper:(id)helper;
- (id)_resolvedAddressForIncompleteAddress:(id)address withTargetDimension:(unint64_t)dimension resolvedDimension:(unint64_t *)resolvedDimension resolvedLocation:(id *)location addresses:(id)addresses;
- (id)_resolvedAddressForIncompleteAddress:(id)address withTargetDimension:(unint64_t)dimension resolvedDimension:(unint64_t *)resolvedDimension resolvedLocation:(id *)location sortedAddresses:(id)addresses;
- (id)_resolvedLocationNodeForIncompleteAddressNode:(id)node withTargetDimension:(unint64_t)dimension resolvedDimension:(unint64_t *)resolvedDimension continueResolvingHigherDimensions:(BOOL)dimensions;
@end

@implementation PGIncompleteLocationResolver

- (id)_resolvedAddressForIncompleteAddress:(id)address withTargetDimension:(unint64_t)dimension resolvedDimension:(unint64_t *)resolvedDimension resolvedLocation:(id *)location addresses:(id)addresses
{
  v43 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  addressesCopy = addresses;
  selfCopy = self;
  [objc_opt_class() _maxDistanceForDimension:dimension];
  v15 = v14;
  [addressCopy coordinate];
  v40 = v16;
  v41 = v17;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v18 = addressesCopy;
  v19 = [v18 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    locationCopy = location;
    resolvedDimensionCopy = resolvedDimension;
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
        if (([v23 isSameNodeAsNode:{addressCopy, locationCopy, resolvedDimensionCopy}] & 1) == 0)
        {
          [v23 coordinate];
          if (CLLocationCoordinate2DIsValid(v45))
          {
            CLLocationCoordinate2DGetDistanceFrom();
            if (v24 <= v15)
            {
              v25 = [(PGGraphLocationHelper *)selfCopy->_locationHelper closestLocationNodeFromLocationNode:v23 withDimension:dimension reverse:0];
              label = [v25 label];
              v27 = [PGCommonTitleUtility dimensionForLabel:label];

              if (v27 == dimension)
              {
                v28 = v23;
                v29 = v25;
                *locationCopy = v25;
                if (resolvedDimensionCopy)
                {
                  *resolvedDimensionCopy = dimension;
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

- (id)_resolvedAddressForIncompleteAddress:(id)address withTargetDimension:(unint64_t)dimension resolvedDimension:(unint64_t *)resolvedDimension resolvedLocation:(id *)location sortedAddresses:(id)addresses
{
  addressCopy = address;
  addressesCopy = addresses;
  v14 = [(PGIncompleteLocationResolver *)self _resolvedAddressForIncompleteAddress:addressCopy withTargetDimension:dimension resolvedDimension:resolvedDimension resolvedLocation:location addresses:addressesCopy];
  if (!v14)
  {
    graph = [addressCopy graph];
    v16 = MEMORY[0x277CBEB58];
    v17 = [graph nodesForLabel:@"Address" domain:200];
    v18 = [v16 setWithSet:v17];

    if (addressesCopy && [addressesCopy count])
    {
      v19 = [MEMORY[0x277CBEB98] setWithArray:addressesCopy];
      [v18 minusSet:v19];
    }

    v14 = [(PGIncompleteLocationResolver *)self _resolvedAddressForIncompleteAddress:addressCopy withTargetDimension:dimension resolvedDimension:resolvedDimension resolvedLocation:location addresses:v18];
  }

  return v14;
}

- (id)_resolvedLocationNodeForIncompleteAddressNode:(id)node withTargetDimension:(unint64_t)dimension resolvedDimension:(unint64_t *)resolvedDimension continueResolvingHigherDimensions:(BOOL)dimensions
{
  v40 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v11 = [(PGIncompleteLocationResolver *)self _resolveIdentifierForIncompleteAddressNode:nodeCopy withTargetDimension:dimension];
  v12 = [(NSMutableDictionary *)self->_resolvedLocationNodesCache objectForKeyedSubscript:v11];
  if (v12)
  {
    v13 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v13 = 0;
    }

    label = [v13 label];
    v15 = label;
    if (resolvedDimension && label)
    {
      *resolvedDimension = [PGCommonTitleUtility dimensionForLabel:label];
    }

    v16 = v13;

LABEL_31:
    goto LABEL_32;
  }

  [nodeCopy coordinate];
  latitude = v42.latitude;
  longitude = v42.longitude;
  if (CLLocationCoordinate2DIsValid(v42))
  {
    resolvedDimensionCopy = resolvedDimension;
    allObjects = [(NSSet *)self->_addressNodes allObjects];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __150__PGIncompleteLocationResolver__resolvedLocationNodeForIncompleteAddressNode_withTargetDimension_resolvedDimension_continueResolvingHigherDimensions___block_invoke;
    v35[3] = &__block_descriptor_48_e51_q24__0__PGGraphAddressNode_8__PGGraphAddressNode_16l;
    *&v35[4] = latitude;
    *&v35[5] = longitude;
    v20 = [allObjects sortedArrayUsingComparator:v35];

    v21 = 0;
    v34 = 0;
    dimensionCopy = dimension;
    do
    {
      v23 = dimensionCopy;
      v24 = v21;
      v33 = v21;
      v25 = [(PGIncompleteLocationResolver *)self _resolvedAddressForIncompleteAddress:nodeCopy withTargetDimension:dimensionCopy resolvedDimension:&v34 resolvedLocation:&v33 sortedAddresses:v20];
      v21 = v33;

      dimensionCopy = v23 + 1;
    }

    while (v23 + 1 <= 9 && !v25 && dimensions);
    if ([v25 isSameNodeAsNode:nodeCopy])
    {
    }

    else if (v21)
    {
LABEL_19:
      if (v23 >= dimension)
      {
        v27 = MEMORY[0x277D86220];
        do
        {
          v28 = v11;
          v11 = [(PGIncompleteLocationResolver *)self _resolveIdentifierForIncompleteAddressNode:nodeCopy withTargetDimension:v23];

          if (v21 && v23 == v34)
          {
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138478083;
              v37 = nodeCopy;
              v38 = 2113;
              v39 = v21;
              _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "Resolved incomplete address %{private}@ to location %{private}@", buf, 0x16u);
            }

            [(NSMutableDictionary *)self->_resolvedLocationNodesCache setObject:v21 forKeyedSubscript:v11];
          }

          else
          {
            null = [MEMORY[0x277CBEB68] null];
            [(NSMutableDictionary *)self->_resolvedLocationNodesCache setObject:null forKeyedSubscript:v11];
          }

          --v23;
        }

        while (v23 >= dimension);
      }

      if (resolvedDimensionCopy)
      {
        *resolvedDimensionCopy = v34;
      }

      v16 = v21;

      goto LABEL_31;
    }

    v21 = 0;
    v34 = 0;
    goto LABEL_19;
  }

  null2 = [MEMORY[0x277CBEB68] null];
  [(NSMutableDictionary *)self->_resolvedLocationNodesCache setObject:null2 forKeyedSubscript:v11];

  v16 = 0;
  if (resolvedDimension)
  {
    *resolvedDimension = 0;
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

- (PGIncompleteLocationResolver)initWithAddressNodes:(id)nodes locationHelper:(id)helper
{
  nodesCopy = nodes;
  helperCopy = helper;
  v14.receiver = self;
  v14.super_class = PGIncompleteLocationResolver;
  v9 = [(PGIncompleteLocationResolver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_addressNodes, nodes);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    resolvedLocationNodesCache = v10->_resolvedLocationNodesCache;
    v10->_resolvedLocationNodesCache = dictionary;

    objc_storeStrong(&v10->_locationHelper, helper);
  }

  return v10;
}

+ (double)_maxDistanceForDimension:(unint64_t)dimension
{
  result = 0.0;
  if (dimension - 6 <= 3)
  {
    return dbl_22F78C6E8[dimension - 6];
  }

  return result;
}

@end