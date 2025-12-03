@interface PGGraphLocationHelper
+ (id)inefficientLocationHelper;
- (BOOL)_locationNodesRepresentSameCity:(id)city;
- (BOOL)locationIsInSupersetCategoryForLocationNode:(id)node;
- (CLLocationCoordinate2D)_approximateCoordinateForLocationNode:(id)node;
- (PGGraphLocationHelper)initWithGraph:(id)graph;
- (id)_closestLocationNodeFromLocationNode:(id)node withDimension:(unint64_t)dimension remapMatchingDimensionBlock:(id)block reverse:(BOOL)reverse;
- (id)_commonNodeForLocationNode:(id)node andLocationNode:(id)locationNode;
- (id)_mostVisitedLocationNodeForLocationNodes:(id)nodes;
- (id)_parentLocationNodeForLocationNode:(id)node;
- (id)_parentLocationNodeWithDimension:(unint64_t)dimension ofLocationNode:(id)node;
- (id)_parentLocationNodeWithDimension:(unint64_t)dimension sourceLocationNodeAsCollection:(id)collection sourceLabel:(id)label;
- (id)_validLocationNodeForLocationNode:(id)node withLocationMask:(unint64_t)mask;
- (id)addressNodes;
- (id)addressNodesByAreaNode;
- (id)addressNodesByMomentNode;
- (id)addressNodesByMomentNodeAdjacency;
- (id)addressNodesFromAreaNodes:(id)nodes;
- (id)addressNodesFromLocationNodes:(id)nodes;
- (id)areaNodesByAddressNode;
- (id)areaNodesFromAddressNodes:(id)nodes;
- (id)cityNodesByLocationNode;
- (id)cityNodesFromAddressNodes:(id)nodes;
- (id)commonLocationNodeForRelevantLocationNodes:(id)nodes locationMask:(unint64_t)mask;
- (id)countryNodesByLocationNode;
- (id)countyNodesByLocationNode;
- (id)densestCloseLocationNodeFromLocationNode:(id)node withDateInterval:(id)interval locationMask:(unint64_t)mask;
- (id)districtNodesByLocationNode;
- (id)locationNodesByCityNode;
- (id)locationNodesByCountryNode;
- (id)locationNodesByCountyNode;
- (id)locationNodesByDistrictNode;
- (id)locationNodesByNumberNode;
- (id)locationNodesByStateNode;
- (id)locationNodesByStreetNode;
- (id)momentNodesByAddressNode;
- (id)momentNodesByAddressNodeIntersectingAddressNodes:(id)nodes;
- (id)numberNodesByLocationNode;
- (id)relevantLocationNodesForMomentNodes:(id)nodes applyDensestCloseLocationNode:(BOOL)node;
- (id)stateNodesByLocationNode;
- (id)stateNodesFromAddressNodes:(id)nodes;
- (id)streetNodesByLocationNode;
- (void)_fetchAddressNodes;
- (void)_fetchLocationNodesByCityNode;
- (void)_fetchLocationNodesByCountryNode;
- (void)_fetchLocationNodesByCountyNode;
- (void)_fetchLocationNodesByDistrictNode;
- (void)_fetchLocationNodesByNumberNode;
- (void)_fetchLocationNodesByStateNode;
- (void)_fetchLocationNodesByStreetNode;
@end

@implementation PGGraphLocationHelper

- (id)_validLocationNodeForLocationNode:(id)node withLocationMask:(unint64_t)mask
{
  nodeCopy = node;
  if (([nodeCopy locationMask] & mask) != 0)
  {
LABEL_7:
    nodeCopy = nodeCopy;
    v9 = nodeCopy;
    goto LABEL_8;
  }

  while (1)
  {
    outEdgesCount = [nodeCopy outEdgesCount];
    if (outEdgesCount == 1)
    {
      v8 = [(PGGraphLocationHelper *)self _parentLocationNodeForLocationNode:nodeCopy];

      goto LABEL_6;
    }

    if (!outEdgesCount)
    {
      break;
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__31376;
    v16 = __Block_byref_object_dispose__31377;
    v17 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__PGGraphLocationHelper__validLocationNodeForLocationNode_withLocationMask___block_invoke;
    v11[3] = &unk_278882DB0;
    v11[4] = &v12;
    [nodeCopy enumerateNeighborEdgesAndNodesThroughOutEdgesUsingBlock:v11];
    v8 = v13[5];

    _Block_object_dispose(&v12, 8);
LABEL_6:
    nodeCopy = v8;
    if (([v8 locationMask] & mask) != 0)
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

void __76__PGGraphLocationHelper__validLocationNodeForLocationNode_withLocationMask___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([a2 domain] == 200)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (CLLocationCoordinate2D)_approximateCoordinateForLocationNode:(id)node
{
  nodeCopy = node;
  if ([nodeCopy domain] != 200)
  {
    v12 = *MEMORY[0x277CE4278];
    v13 = *(MEMORY[0x277CE4278] + 8);
LABEL_12:

    goto LABEL_13;
  }

  locationMask = [nodeCopy locationMask];
  if (nodeCopy)
  {
    v6 = locationMask;
    while (1)
    {
      label = [nodeCopy label];
      v8 = [label isEqualToString:@"Address"];

      if (v8)
      {
        break;
      }

      if (v6 < 0x10)
      {
        v11 = [(PGGraphLocationHelper *)self _parentLocationNodeForLocationNode:nodeCopy];
      }

      else
      {
        v25[0] = 0;
        v25[1] = v25;
        v25[2] = 0x2020000000;
        v25[3] = 0;
        v19 = 0;
        v20 = &v19;
        v21 = 0x3032000000;
        v22 = __Block_byref_object_copy__31376;
        v23 = __Block_byref_object_dispose__31377;
        v24 = 0;
        locationNodeCollection = [nodeCopy locationNodeCollection];
        childLocationNodes = [locationNodeCollection childLocationNodes];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __63__PGGraphLocationHelper__approximateCoordinateForLocationNode___block_invoke;
        v18[3] = &unk_278882D88;
        v18[4] = self;
        v18[5] = v25;
        v18[6] = &v19;
        [childLocationNodes enumerateIdentifiersAsCollectionsWithBlock:v18];

        v11 = v20[5];
        v6 >>= 1;
        _Block_object_dispose(&v19, 8);

        _Block_object_dispose(v25, 8);
      }

      nodeCopy = v11;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    [nodeCopy coordinate];
    v12 = v14;
    v13 = v15;
    goto LABEL_12;
  }

LABEL_9:
  v12 = *MEMORY[0x277CE4278];
  v13 = *(MEMORY[0x277CE4278] + 8);
LABEL_13:
  v16 = v12;
  v17 = v13;
  result.longitude = v17;
  result.latitude = v16;
  return result;
}

void __63__PGGraphLocationHelper__approximateCoordinateForLocationNode___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v4 = [*(a1 + 32) addressNodesFromLocationNodes:?];
  v5 = [*(a1 + 32) momentNodesByAddressNode];
  v6 = [v5 targetsForSources:v4];
  v7 = [v6 count];

  v8 = *(*(a1 + 40) + 8);
  if (v7 > *(v8 + 24))
  {
    *(v8 + 24) = v7;
    v9 = [v12 anyNode];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (id)_commonNodeForLocationNode:(id)node andLocationNode:(id)locationNode
{
  nodeCopy = node;
  locationNodeCopy = locationNode;
  if (nodeCopy == locationNodeCopy)
  {
    v25 = nodeCopy;
  }

  else
  {
    v32 = 0;
    v33[0] = &v32;
    v33[1] = 0x3032000000;
    v33[2] = __Block_byref_object_copy__31376;
    v33[3] = __Block_byref_object_dispose__31377;
    v8 = nodeCopy;
    v34 = v8;
    label = [v8 label];
    v10 = [label isEqualToString:@"Address"];

    if (v10)
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __68__PGGraphLocationHelper__commonNodeForLocationNode_andLocationNode___block_invoke;
      v31[3] = &unk_278885998;
      v31[4] = &v32;
      [v8 enumerateNeighborNodesThroughOutEdgesUsingBlock:v31];
    }

    v28 = 0;
    v29[0] = &v28;
    v29[1] = 0x3032000000;
    v29[2] = __Block_byref_object_copy__31376;
    v29[3] = __Block_byref_object_dispose__31377;
    v11 = locationNodeCopy;
    v30 = v11;
    label2 = [v11 label];
    v13 = [label2 isEqualToString:@"Address"];

    if (v13)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __68__PGGraphLocationHelper__commonNodeForLocationNode_andLocationNode___block_invoke_2;
      v27[3] = &unk_278885998;
      v27[4] = &v28;
      [v11 enumerateNeighborNodesThroughOutEdgesUsingBlock:v27];
    }

    v14 = *(v33[0] + 40);
    v15 = *(v29[0] + 40);
    v16 = v14 == v15;
    if (v14 != v15 && v14 && v15)
    {
      do
      {
        locationMask = [v14 locationMask];
        if (locationMask <= [*(v29[0] + 40) locationMask])
        {
          v18 = [(PGGraphLocationHelper *)self _parentLocationNodeForLocationNode:*(v33[0] + 40)];
          v19 = v33;
        }

        else
        {
          v18 = [(PGGraphLocationHelper *)self _parentLocationNodeForLocationNode:*(v29[0] + 40)];
          v19 = v29;
        }

        v20 = *v19;
        v21 = *(v20 + 40);
        *(v20 + 40) = v18;

        v14 = *(v33[0] + 40);
        v22 = *(v29[0] + 40);
        v16 = v14 == v22;
      }

      while (v14 != v22 && v14 != 0 && v22 != 0);
    }

    if (v16)
    {
      v25 = v14;
    }

    else
    {
      v25 = 0;
    }

    _Block_object_dispose(&v28, 8);

    _Block_object_dispose(&v32, 8);
  }

  return v25;
}

void __68__PGGraphLocationHelper__commonNodeForLocationNode_andLocationNode___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 domain] == 200)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __68__PGGraphLocationHelper__commonNodeForLocationNode_andLocationNode___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 domain] == 200)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)_mostVisitedLocationNodeForLocationNodes:(id)nodes
{
  v30 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  anyObject = [nodesCopy anyObject];
  if ([nodesCopy count] >= 2)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = nodesCopy;
    obj = nodesCopy;
    v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v24)
    {
      v6 = 0;
      v23 = *v26;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v26 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v25 + 1) + 8 * i);
          locationNodeCollection = [v8 locationNodeCollection];
          v10 = [(PGGraphLocationHelper *)self addressNodesFromLocationNodes:locationNodeCollection];

          momentNodesByAddressNode = [(PGGraphLocationHelper *)self momentNodesByAddressNode];
          v12 = [momentNodesByAddressNode targetsForSources:v10];
          v13 = [v12 count];

          if (v13 > v6 || v13 == v6 && ([v8 UUID], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(anyObject, "UUID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "compare:", v16), v16, v15, v17 == -1))
          {
            v14 = v8;

            v6 = v13;
            anyObject = v14;
          }
        }

        v24 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v24);
    }

    nodesCopy = v21;
  }

  v18 = anyObject;

  v19 = *MEMORY[0x277D85DE8];
  return anyObject;
}

- (BOOL)_locationNodesRepresentSameCity:(id)city
{
  v48 = *MEMORY[0x277D85DE8];
  cityCopy = city;
  anyObject = [cityCopy anyObject];
  name = [anyObject name];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = cityCopy;
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        name2 = [v12 name];
        if (![name2 isEqualToString:name])
        {
          LOBYTE(v15) = 0;
          v22 = v7;
          goto LABEL_33;
        }

        label = [v12 label];
        v15 = [label isEqualToString:@"City"];

        if (!v15)
        {
          v22 = v7;
          goto LABEL_34;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = [v7 mutableCopy];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  name2 = v7;
  v17 = [name2 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    while (2)
    {
      v20 = 0;
      v31 = v18;
      do
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(name2);
        }

        v21 = *(*(&v37 + 1) + 8 * v20);
        v36.latitude = 0.0;
        v36.longitude = 0.0;
        [(PGGraphLocationHelper *)self _approximateCoordinateForLocationNode:v21];
        v36 = v49;
        if (!CLLocationCoordinate2DIsValid(v49))
        {
          LOBYTE(v15) = 0;
          goto LABEL_32;
        }

        [v16 removeObject:v21];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v22 = v16;
        v23 = [v22 countByEnumeratingWithState:&v32 objects:v45 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v33;
          v30 = v19;
          while (2)
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v33 != v25)
              {
                objc_enumerationMutation(v22);
              }

              [(PGGraphLocationHelper *)self _approximateCoordinateForLocationNode:*(*(&v32 + 1) + 8 * j), v30];
              if (CLLocationCoordinate2DIsValid(v50))
              {
                CLLocationCoordinate2DGetDistanceFrom();
                if (v27 <= 50000.0)
                {
                  continue;
                }
              }

              LOBYTE(v15) = 0;
              goto LABEL_33;
            }

            v24 = [v22 countByEnumeratingWithState:&v32 objects:v45 count:16];
            v19 = v30;
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        ++v20;
      }

      while (v20 != v31);
      v18 = [name2 countByEnumeratingWithState:&v37 objects:v46 count:16];
      LOBYTE(v15) = 1;
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v15) = 1;
LABEL_32:
    v22 = v16;
  }

LABEL_33:

LABEL_34:
  v28 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)commonLocationNodeForRelevantLocationNodes:(id)nodes locationMask:(unint64_t)mask
{
  v37 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  if ([nodesCopy count] <= 1)
  {
    anyObject = [nodesCopy anyObject];
    goto LABEL_32;
  }

  if (![(PGGraphLocationHelper *)self _locationNodesRepresentSameCity:nodesCopy])
  {
    anyObject2 = [nodesCopy anyObject];
    graph = [anyObject2 graph];

    if ([nodesCopy count] >= 3)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v10 = nodesCopy;
      v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v11)
      {
        v12 = v11;
        allObjects = 0;
        v14 = *v33;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v33 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v32 + 1) + 8 * i);
            if (allObjects)
            {
              v17 = [(PGGraphLocationHelper *)self _commonNodeForLocationNode:allObjects andLocationNode:v16, v32];

              allObjects = v17;
              if (!v17)
              {
                goto LABEL_25;
              }
            }

            else
            {
              allObjects = v16;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v12);

        if (allObjects)
        {
          label = [allObjects label];
          if (([label isEqualToString:@"Country"] & 1) == 0)
          {

LABEL_38:
            anyObject = [(PGGraphLocationHelper *)self _validLocationNodeForLocationNode:allObjects withLocationMask:mask, v32];
            goto LABEL_36;
          }

          supersetCountryNodes = [graph supersetCountryNodes];
          v20 = [supersetCountryNodes containsNode:allObjects];

          if (!v20)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
LABEL_25:

        allObjects = 0;
      }

      goto LABEL_29;
    }

    if ([nodesCopy count] != 2)
    {
LABEL_30:
      anyObject = 0;
      goto LABEL_31;
    }

    allObjects = [nodesCopy allObjects];
    firstObject = [allObjects firstObject];
    lastObject = [allObjects lastObject];
    v23 = [(PGGraphLocationHelper *)self _commonNodeForLocationNode:firstObject andLocationNode:lastObject];

    label2 = [v23 label];
    LODWORD(lastObject) = [label2 isEqualToString:@"State"];

    if (lastObject)
    {
      anyNode = v23;
      if (!anyNode)
      {
        goto LABEL_28;
      }
    }

    else
    {
      locationNodeCollection = [v23 locationNodeCollection];
      v27 = [locationNodeCollection nearestDeepParentLocationNodesWithLabel:@"State"];
      anyNode = [v27 anyNode];

      if (!anyNode)
      {
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }
    }

    supersetStateNodes = [graph supersetStateNodes];
    v29 = [supersetStateNodes containsNode:anyNode];

    if (!v29)
    {
      anyObject = [(PGGraphLocationHelper *)self _validLocationNodeForLocationNode:v23 withLocationMask:mask];

LABEL_36:
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  graph = [(PGGraphLocationHelper *)self _mostVisitedLocationNodeForLocationNodes:nodesCopy];
  anyObject = [(PGGraphLocationHelper *)self _validLocationNodeForLocationNode:graph withLocationMask:mask];
LABEL_31:

LABEL_32:
  v30 = *MEMORY[0x277D85DE8];

  return anyObject;
}

- (id)densestCloseLocationNodeFromLocationNode:(id)node withDateInterval:(id)interval locationMask:(unint64_t)mask
{
  nodeCopy = node;
  intervalCopy = interval;
  label = [nodeCopy label];
  v11 = [label isEqualToString:@"Address"];

  if (!v11)
  {
LABEL_4:
    v14 = [(PGGraphLocationHelper *)self _parentLocationNodeForLocationNode:nodeCopy];
    if (!v14)
    {
      v19 = nodeCopy;
LABEL_20:

      goto LABEL_21;
    }

    v15 = [(PGGraphLocationHelper *)self _parentLocationNodeForLocationNode:v14];
    if (v15)
    {
      [(PGGraphLocationHelper *)self _approximateCoordinateForLocationNode:nodeCopy];
      latitude = v110.latitude;
      longitude = v110.longitude;
      v18 = CLLocationCoordinate2DIsValid(v110);
      v19 = nodeCopy;
      if (v18)
      {
        v46 = v15;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        v108[0] = 0;
        v108[1] = v108;
        v108[2] = 0x2020000000;
        v108[3] = 0;
        v107[0] = 0;
        v107[1] = v107;
        v107[2] = 0x2020000000;
        v107[3] = 0;
        v106[0] = 0;
        v106[1] = v106;
        v106[2] = 0x2020000000;
        v106[3] = 0;
        v105[0] = 0;
        v105[1] = v105;
        v105[2] = 0x2020000000;
        v105[3] = 0;
        v104[0] = 0;
        v104[1] = v104;
        v104[2] = 0x2020000000;
        v104[3] = 0;
        v92[0] = MEMORY[0x277D85DD0];
        v92[1] = 3221225472;
        v92[2] = __96__PGGraphLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke;
        v92[3] = &unk_278882D10;
        v92[4] = self;
        v102 = latitude;
        v103 = longitude;
        v93 = intervalCopy;
        v47 = dictionary;
        v94 = v47;
        v22 = dictionary2;
        v95 = v22;
        v97 = v107;
        v98 = v106;
        v96 = v14;
        v99 = v108;
        v100 = v105;
        v101 = v104;
        [v15 enumerateNeighborNodesThroughInEdgesUsingBlock:v92];
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "identifier")}];
        v24 = [v47 objectForKeyedSubscript:v23];
        [v24 doubleValue];
        v26 = v25;
        v27 = [v22 objectForKeyedSubscript:v23];
        [v27 doubleValue];
        v29 = v28;
        v45 = v23;

        v88 = 0;
        v89 = &v88;
        v90 = 0x2020000000;
        v91 = 0;
        v84 = 0;
        v85 = &v84;
        v86 = 0x2020000000;
        v87 = 0;
        v80 = 0;
        v81 = &v80;
        v82 = 0x2020000000;
        v83 = 0;
        graph = [v19 graph];
        v74 = 0;
        v75 = &v74;
        v76 = 0x3032000000;
        v77 = __Block_byref_object_copy__31376;
        v78 = __Block_byref_object_dispose__31377;
        v31 = v19;
        v79 = v31;
        v70 = 0;
        v71 = &v70;
        v72 = 0x2020000000;
        v73 = v29 * 0.4 + v26 * 0.6;
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __96__PGGraphLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke_3;
        v62[3] = &unk_278882D38;
        v32 = v22;
        v63 = v32;
        v65 = &v88;
        v66 = &v84;
        v67 = &v80;
        v68 = &v70;
        v33 = graph;
        v64 = v33;
        v69 = &v74;
        [v47 enumerateKeysAndObjectsUsingBlock:v62];
        v34 = v89[3];
        v35 = 0.0;
        if (v34 >= 2)
        {
          v35 = v81[3] / (v34 - 1);
        }

        v81[3] = v35;
        v58 = 0;
        v59 = &v58;
        v60 = 0x2020000000;
        v61 = 0;
        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v57 = 0;
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __96__PGGraphLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke_4;
        v48[3] = &unk_278882D60;
        v36 = sqrt(v35);
        v37 = v32;
        v49 = v37;
        v50 = &v84;
        v53 = v36;
        v51 = &v54;
        v52 = &v58;
        [v47 enumerateKeysAndObjectsUsingBlock:v48];
        if (v59[3] <= 1 && v55[3] < 3)
        {
          if (v71[3] - v85[3] < v36 + v36)
          {
            v40 = v31;
            goto LABEL_13;
          }

          v38 = v37;
          v40 = v75[5];
          v39 = v31;
        }

        else
        {
          v38 = v37;
          v39 = [(PGGraphLocationHelper *)self _parentLocationNodeForLocationNode:v75[5]];
          v40 = [(PGGraphLocationHelper *)self _commonNodeForLocationNode:v31 andLocationNode:v39];
        }

        v37 = v38;
LABEL_13:
        v41 = [(PGGraphLocationHelper *)self _validLocationNodeForLocationNode:v40 withLocationMask:mask];
        v42 = v41;
        if (v41)
        {
          v43 = v41;
        }

        else
        {
          v43 = v31;
        }

        v19 = v43;

        _Block_object_dispose(&v54, 8);
        _Block_object_dispose(&v58, 8);

        _Block_object_dispose(&v70, 8);
        _Block_object_dispose(&v74, 8);

        _Block_object_dispose(&v80, 8);
        _Block_object_dispose(&v84, 8);
        _Block_object_dispose(&v88, 8);

        _Block_object_dispose(v104, 8);
        _Block_object_dispose(v105, 8);
        _Block_object_dispose(v106, 8);
        _Block_object_dispose(v107, 8);
        _Block_object_dispose(v108, 8);

        v15 = v46;
      }
    }

    else
    {
      v19 = nodeCopy;
    }

    goto LABEL_20;
  }

  v12 = [(PGGraphLocationHelper *)self _parentLocationNodeForLocationNode:nodeCopy];
  if (v12)
  {
    v13 = v12;

    nodeCopy = v13;
    goto LABEL_4;
  }

  v19 = [(PGGraphLocationHelper *)self _validLocationNodeForLocationNode:nodeCopy withLocationMask:mask];
LABEL_21:

  return v19;
}

void __96__PGGraphLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__PGGraphLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke_2;
  v9[3] = &unk_278882CE8;
  v14 = *(a1 + 112);
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = &v15;
  v13 = *(a1 + 72);
  [v3 enumerateNeighborNodesThroughInEdgesUsingBlock:v9];
  if (*(a1 + 64) == v3)
  {
    *(*(*(a1 + 88) + 8) + 24) += v16[3];
    *(*(*(a1 + 96) + 8) + 24) += *(*(*(a1 + 72) + 8) + 24);
    *(*(*(a1 + 104) + 8) + 24) += *(*(*(a1 + 80) + 8) + 24);
  }

  _Block_object_dispose(&v15, 8);
}

void __96__PGGraphLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  [a3 doubleValue];
  v6 = v5;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v19];
  [v7 doubleValue];
  v9 = v8;

  v10 = v19;
  v11 = v9 * 0.4 + v6 * 0.6;
  ++*(*(*(a1 + 48) + 8) + 24);
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 24);
  *(v12 + 24) = v13 + (v11 - v13) / *(*(*(a1 + 48) + 8) + 24);
  *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) + (v11 - v13) * (v11 - *(*(*(a1 + 56) + 8) + 24));
  if (v11 >= *(*(*(a1 + 72) + 8) + 24))
  {
    v14 = [*(a1 + 40) nodeForIdentifier:{objc_msgSend(v19, "unsignedIntValue")}];
    v15 = *(*(a1 + 72) + 8);
    if (v11 == *(v15 + 24))
    {
      v16 = [*(*(*(a1 + 80) + 8) + 40) locationMask];
      if ([v14 locationMask] >= v16)
      {
LABEL_6:

        v10 = v19;
        goto LABEL_7;
      }

      v15 = *(*(a1 + 72) + 8);
    }

    *(v15 + 24) = v11;
    v17 = *(*(a1 + 80) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v14;
    v14 = v18;
    goto LABEL_6;
  }

LABEL_7:
}

void __96__PGGraphLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke_4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  [a3 doubleValue];
  v9 = v8;
  v10 = [*(a1 + 32) objectForKeyedSubscript:v7];

  [v10 doubleValue];
  v12 = v11;

  v13 = v12 * 0.4 + v9 * 0.6;
  v14 = *(a1 + 64);
  if (v13 > *(*(*(a1 + 40) + 8) + 24) + v14)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    if (v13 > *(*(*(a1 + 40) + 8) + 24) + v14 * 2.0)
    {
      ++*(*(*(a1 + 56) + 8) + 24);
    }

    if (*(*(*(a1 + 56) + 8) + 24) > 1uLL || *(*(*(a1 + 48) + 8) + 24) >= 3uLL)
    {
      *a4 = 1;
    }
  }
}

void __96__PGGraphLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _approximateCoordinateForLocationNode:v3];
  v26 = v29;
  if (CLLocationCoordinate2DIsValid(v29))
  {
    CLLocationCoordinate2DGetDistanceFrom();
    if (v4 <= 20000.0)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "identifier")}];
      v6 = [v3 inEdgesCount];
      v7 = *(a1 + 32);
      v8 = [v3 locationNodeCollection];
      v9 = [v7 addressNodesFromLocationNodes:v8];

      v10 = [*(a1 + 32) momentNodesByAddressNode];
      v11 = [v10 targetsForSources:v9];

      if (*(a1 + 40))
      {
        v21 = v6;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = [v11 universalDateIntervals];
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = *v23;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v15 += [*(a1 + 40) intersectsDateInterval:*(*(&v22 + 1) + 8 * i)];
            }

            v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
          }

          while (v14);
        }

        else
        {
          v15 = 0;
        }

        v6 = v21;
      }

      else
      {
        v15 = [v11 count];
      }

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      [*(a1 + 48) setObject:v18 forKeyedSubscript:v5];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
      [*(a1 + 56) setObject:v19 forKeyedSubscript:v5];

      ++*(*(*(a1 + 64) + 8) + 24);
      *(*(*(a1 + 72) + 8) + 24) += v6;
      *(*(*(a1 + 80) + 8) + 24) += v15;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)locationIsInSupersetCategoryForLocationNode:(id)node
{
  v23 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  label = [nodeCopy label];
  v6 = [PGCommonTitleUtility dimensionForLabel:label];

  graph = [nodeCopy graph];
  v8 = graph;
  v9 = 0;
  if (v6 > 5)
  {
    if (v6 > 7)
    {
      if (v6 == 8)
      {
        supersetStateNodes = [graph supersetStateNodes];
      }

      else
      {
        if (v6 != 9)
        {
          goto LABEL_16;
        }

        supersetStateNodes = [graph supersetCountryNodes];
      }
    }

    else
    {
      if (v6 == 6)
      {
        [graph supersetCityNodes];
      }

      else
      {
        [graph supersetCountyNodes];
      }
      supersetStateNodes = ;
    }

    v9 = supersetStateNodes;
    goto LABEL_16;
  }

  if (v6 < 6)
  {
    v10 = +[PGLogging sharedLogging];
    loggingConnection = [v10 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[PGGraphLocationHelper locationIsInSupersetCategoryForLocationNode:]";
      *&buf[12] = 2048;
      *&buf[14] = v6;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "%s called with unsupported dimension %lu", buf, 0x16u);
    }

    v9 = 0;
  }

LABEL_16:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v22 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__PGGraphLocationHelper_locationIsInSupersetCategoryForLocationNode___block_invoke;
  v17[3] = &unk_278882CC0;
  v19 = buf;
  v20 = v6;
  v17[4] = self;
  v13 = nodeCopy;
  v18 = v13;
  [v9 enumerateNodesUsingBlock:v17];
  v14 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

void __69__PGGraphLocationHelper_locationIsInSupersetCategoryForLocationNode___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) closestLocationNodeFromLocationNode:a2 withDimension:*(a1 + 56) reverse:0];
  *(*(*(a1 + 48) + 8) + 24) = [v5 isSameNodeAsNode:*(a1 + 40)];
  *a3 = *(*(*(a1 + 48) + 8) + 24);
}

void __90__PGGraphLocationHelper_relevantAddressNodesForMomentNodes_applyDensestCloseLocationNode___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  if (([*(a1 + 32) containsIdentifier:a2] & 1) == 0)
  {
    v7 = [*(a1 + 40) label];
    v8 = [v12 nearestDeepParentLocationNodesWithLabel:v7];
    v9 = [v8 anyNode];

    if (v9 == *(a1 + 40))
    {
      v10 = *(a1 + 48);
      v11 = [v12 anyNode];
      [v10 addObject:v11];

      *(*(*(a1 + 56) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (id)relevantLocationNodesForMomentNodes:(id)nodes applyDensestCloseLocationNode:(BOOL)node
{
  v48 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  firstObject = [nodesCopy firstObject];
  graph = [firstObject graph];

  if (graph)
  {
    v9 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:nodesCopy graph:graph];
    addressNodesByMomentNode = [(PGGraphLocationHelper *)self addressNodesByMomentNode];
    v11 = [addressNodesByMomentNode targetsForSources:v9];
    temporarySet = [v11 temporarySet];

    if ([temporarySet count])
    {
      v13 = [[PGIncompleteLocationResolver alloc] initWithAddressNodes:temporarySet locationHelper:self];
      v14 = [[PGLocationsResolver alloc] initWithSortedMomentNodes:nodesCopy incompleteLocationResolver:v13 locationHelper:self];
      resolvedMomentNodes = [(PGLocationsResolver *)v14 resolvedMomentNodes];
      resolvedLocationNodes = [(PGLocationsResolver *)v14 resolvedLocationNodes];
      v39 = [[PGLocationsFilterer alloc] initWithSortedMomentNodes:resolvedMomentNodes locationNodes:resolvedLocationNodes incompleteLocationResolver:v13];
      filteredLocationNodes = [(PGLocationsFilterer *)v39 filteredLocationNodes];
      if (node)
      {
        v32 = resolvedMomentNodes;
        v33 = v14;
        v34 = v13;
        v35 = temporarySet;
        v36 = v9;
        v37 = graph;
        v38 = nodesCopy;
        v17 = filteredLocationNodes;
        v18 = [MEMORY[0x277CBEB58] set];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v31 = v17;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v42;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v42 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v41 + 1) + 8 * i);
              v25 = [(PGGraphLocationHelper *)self densestCloseLocationNodeFromLocationNode:v24 withDateInterval:0 locationMask:-1, v31];
              if (v25)
              {
                [v18 addObject:v25];
              }

              else
              {
                v26 = +[PGLogging sharedLogging];
                loggingConnection = [v26 loggingConnection];

                if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v46 = v24;
                  _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "No densestLocationNode for locationNode %@", buf, 0xCu);
                }
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v41 objects:v47 count:16];
          }

          while (v21);
        }

        graph = v37;
        nodesCopy = v38;
        temporarySet = v35;
        v9 = v36;
        v14 = v33;
        v13 = v34;
        v28 = v31;
        resolvedMomentNodes = v32;
      }

      else
      {
        v28 = filteredLocationNodes;
        v18 = [MEMORY[0x277CBEB98] setWithArray:filteredLocationNodes];
      }
    }

    else
    {
      v18 = [MEMORY[0x277CBEB98] set];
    }
  }

  else
  {
    v18 = [MEMORY[0x277CBEB98] set];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)stateNodesFromAddressNodes:(id)nodes
{
  v4 = MEMORY[0x277D22BD0];
  nodesCopy = nodes;
  v6 = objc_alloc_init(v4);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __52__PGGraphLocationHelper_stateNodesFromAddressNodes___block_invoke;
  v14 = &unk_278885E20;
  selfCopy = self;
  v16 = v6;
  v7 = v6;
  [nodesCopy enumerateNodesUsingBlock:&v11];

  v8 = [PGGraphLocationStateNodeCollection alloc];
  selfCopy = [(MAElementCollection *)v8 initWithGraph:self->_graph elementIdentifiers:v7, v11, v12, v13, v14, selfCopy];

  return selfCopy;
}

void __52__PGGraphLocationHelper_stateNodesFromAddressNodes___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) stateNodeFromAddressNode:a2];
  v3 = *(a1 + 40);
  v4 = [v5 elementIdentifiers];
  [v3 unionWithIdentifierSet:v4];
}

- (id)cityNodesFromAddressNodes:(id)nodes
{
  v4 = MEMORY[0x277D22BD0];
  nodesCopy = nodes;
  v6 = objc_alloc_init(v4);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __51__PGGraphLocationHelper_cityNodesFromAddressNodes___block_invoke;
  v14 = &unk_278885E20;
  selfCopy = self;
  v16 = v6;
  v7 = v6;
  [nodesCopy enumerateNodesUsingBlock:&v11];

  v8 = [PGGraphLocationCityNodeCollection alloc];
  selfCopy = [(MAElementCollection *)v8 initWithGraph:self->_graph elementIdentifiers:v7, v11, v12, v13, v14, selfCopy];

  return selfCopy;
}

void __51__PGGraphLocationHelper_cityNodesFromAddressNodes___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) cityNodeFromAddressNode:a2];
  v3 = *(a1 + 40);
  v4 = [v5 elementIdentifiers];
  [v3 unionWithIdentifierSet:v4];
}

- (id)momentNodesByAddressNodeIntersectingAddressNodes:(id)nodes
{
  nodesCopy = nodes;
  momentNodesByAddressNode = [(PGGraphLocationHelper *)self momentNodesByAddressNode];
  v6 = [momentNodesByAddressNode intersectingSourcesWith:nodesCopy];

  return v6;
}

- (id)addressNodesFromLocationNodes:(id)nodes
{
  nodesCopy = nodes;
  locationNodesByCountryNode = [(PGGraphLocationHelper *)self locationNodesByCountryNode];
  sources = [locationNodesByCountryNode sources];
  v49 = [sources collectionByIntersecting:nodesCopy];

  locationNodesByCountryNode2 = [(PGGraphLocationHelper *)self locationNodesByCountryNode];
  v8 = [locationNodesByCountryNode2 targetsForSources:v49];
  v9 = [nodesCopy collectionByFormingUnionWith:v8];

  locationNodesByStateNode = [(PGGraphLocationHelper *)self locationNodesByStateNode];
  sources2 = [locationNodesByStateNode sources];
  v48 = [sources2 collectionByIntersecting:v9];

  locationNodesByStateNode2 = [(PGGraphLocationHelper *)self locationNodesByStateNode];
  v13 = [locationNodesByStateNode2 targetsForSources:v48];
  v14 = [v9 collectionByFormingUnionWith:v13];

  locationNodesByCountyNode = [(PGGraphLocationHelper *)self locationNodesByCountyNode];
  sources3 = [locationNodesByCountyNode sources];
  v17 = [sources3 collectionByIntersecting:v14];

  locationNodesByCountyNode2 = [(PGGraphLocationHelper *)self locationNodesByCountyNode];
  v19 = [locationNodesByCountyNode2 targetsForSources:v17];
  v20 = [v14 collectionByFormingUnionWith:v19];

  locationNodesByCityNode = [(PGGraphLocationHelper *)self locationNodesByCityNode];
  sources4 = [locationNodesByCityNode sources];
  v23 = [sources4 collectionByIntersecting:v20];

  locationNodesByCityNode2 = [(PGGraphLocationHelper *)self locationNodesByCityNode];
  v25 = [locationNodesByCityNode2 targetsForSources:v23];
  v26 = [v20 collectionByFormingUnionWith:v25];

  locationNodesByDistrictNode = [(PGGraphLocationHelper *)self locationNodesByDistrictNode];
  sources5 = [locationNodesByDistrictNode sources];
  v29 = [sources5 collectionByIntersecting:v26];

  locationNodesByDistrictNode2 = [(PGGraphLocationHelper *)self locationNodesByDistrictNode];
  v31 = [locationNodesByDistrictNode2 targetsForSources:v29];
  v32 = [v26 collectionByFormingUnionWith:v31];

  locationNodesByStreetNode = [(PGGraphLocationHelper *)self locationNodesByStreetNode];
  sources6 = [locationNodesByStreetNode sources];
  v35 = [sources6 collectionByIntersecting:v32];

  locationNodesByStreetNode2 = [(PGGraphLocationHelper *)self locationNodesByStreetNode];
  v37 = [locationNodesByStreetNode2 targetsForSources:v35];
  v38 = [v32 collectionByFormingUnionWith:v37];

  locationNodesByNumberNode = [(PGGraphLocationHelper *)self locationNodesByNumberNode];
  sources7 = [locationNodesByNumberNode sources];
  v41 = [sources7 collectionByIntersecting:v38];

  locationNodesByNumberNode2 = [(PGGraphLocationHelper *)self locationNodesByNumberNode];
  v43 = [locationNodesByNumberNode2 targetsForSources:v41];
  v44 = [v38 collectionByFormingUnionWith:v43];

  addressNodes = [(PGGraphLocationHelper *)self addressNodes];
  v46 = [addressNodes collectionByIntersecting:v44];

  return v46;
}

- (id)areaNodesFromAddressNodes:(id)nodes
{
  nodesCopy = nodes;
  areaNodesByAddressNode = [(PGGraphLocationHelper *)self areaNodesByAddressNode];
  v6 = [areaNodesByAddressNode targetsForSources:nodesCopy];

  return v6;
}

- (id)addressNodesFromAreaNodes:(id)nodes
{
  nodesCopy = nodes;
  addressNodesByAreaNode = [(PGGraphLocationHelper *)self addressNodesByAreaNode];
  v6 = [addressNodesByAreaNode targetsForSources:nodesCopy];

  return v6;
}

- (id)_closestLocationNodeFromLocationNode:(id)node withDimension:(unint64_t)dimension remapMatchingDimensionBlock:(id)block reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  nodeCopy = node;
  blockCopy = block;
  v12 = blockCopy;
  if (blockCopy)
  {
    dimension = (*(blockCopy + 2))(blockCopy, dimension);
  }

  v13 = [PGCommonTitleUtility locationLabelForDimension:dimension];
  label = [nodeCopy label];
  v26 = v13;
  v15 = [v13 isEqualToString:label];

  if (v15)
  {
    anyNode = nodeCopy;
  }

  else
  {
    anyNode = 0;
    if (reverseCopy)
    {
      v18 = 4;
    }

    else
    {
      v18 = 9;
    }

    v19 = dimension < v18 && reverseCopy;
    if (dimension && !v19)
    {
      if (reverseCopy)
      {
        v20 = -1;
      }

      else
      {
        v20 = 1;
      }

      v25 = v12 + 2;
      while (dimension <= v18 || reverseCopy)
      {
        v21 = [(PGGraphLocationHelper *)self _parentLocationNodeWithDimension:dimension ofLocationNode:nodeCopy, v25];
        anyNode = [v21 anyNode];

        if (!anyNode)
        {
          dimension += v20;
          if (v12)
          {
            v22 = !reverseCopy;
            v23 = dimension < v18 || !reverseCopy;
            if (dimension > v18)
            {
              v22 = 0;
            }

            if (v22 || (v23 & 1) == 0)
            {
              dimension = v12[2](v12, dimension);
            }
          }

          anyNode = 0;
          v24 = dimension < v18 && reverseCopy;
          if (dimension && !v24)
          {
            continue;
          }
        }

        goto LABEL_5;
      }

      anyNode = 0;
    }
  }

LABEL_5:

  return anyNode;
}

- (id)_parentLocationNodeForLocationNode:(id)node
{
  v28[7] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  numberNodesByLocationNode = [(PGGraphLocationHelper *)self numberNodesByLocationNode];
  v28[0] = numberNodesByLocationNode;
  streetNodesByLocationNode = [(PGGraphLocationHelper *)self streetNodesByLocationNode];
  v28[1] = streetNodesByLocationNode;
  districtNodesByLocationNode = [(PGGraphLocationHelper *)self districtNodesByLocationNode];
  v28[2] = districtNodesByLocationNode;
  cityNodesByLocationNode = [(PGGraphLocationHelper *)self cityNodesByLocationNode];
  v28[3] = cityNodesByLocationNode;
  countyNodesByLocationNode = [(PGGraphLocationHelper *)self countyNodesByLocationNode];
  v28[4] = countyNodesByLocationNode;
  stateNodesByLocationNode = [(PGGraphLocationHelper *)self stateNodesByLocationNode];
  v28[5] = stateNodesByLocationNode;
  countryNodesByLocationNode = [(PGGraphLocationHelper *)self countryNodesByLocationNode];
  v28[6] = countryNodesByLocationNode;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:7];

  locationNodeCollection = [nodeCopy locationNodeCollection];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v24 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = [*(*(&v23 + 1) + 8 * v18) targetsForSources:{locationNodeCollection, v23}];
      if ([v19 count])
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v19 = 0;
  }

  anyNode = [v19 anyNode];

  v21 = *MEMORY[0x277D85DE8];

  return anyNode;
}

- (id)_parentLocationNodeWithDimension:(unint64_t)dimension sourceLocationNodeAsCollection:(id)collection sourceLabel:(id)label
{
  collectionCopy = collection;
  labelCopy = label;
  v10 = labelCopy;
  if (labelCopy)
  {
    anyObject = labelCopy;
  }

  else
  {
    labels = [collectionCopy labels];
    anyObject = [labels anyObject];
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = [PGCommonTitleUtility dimensionForLabel:anyObject];
  v13 = v32[3];
  if (v13 == dimension)
  {
    v14 = collectionCopy;
  }

  else if (v13 >= dimension)
  {
    v14 = 0;
  }

  else
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__31376;
    v29 = __Block_byref_object_dispose__31377;
    v30 = collectionCopy;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __101__PGGraphLocationHelper__parentLocationNodeWithDimension_sourceLocationNodeAsCollection_sourceLabel___block_invoke;
    aBlock[3] = &unk_278882C70;
    aBlock[5] = &v25;
    aBlock[6] = dimension;
    aBlock[4] = &v31;
    v15 = _Block_copy(aBlock);
    numberNodesByLocationNode = [(PGGraphLocationHelper *)self numberNodesByLocationNode];
    v15[2](v15, 3, numberNodesByLocationNode);

    streetNodesByLocationNode = [(PGGraphLocationHelper *)self streetNodesByLocationNode];
    v15[2](v15, 4, streetNodesByLocationNode);

    districtNodesByLocationNode = [(PGGraphLocationHelper *)self districtNodesByLocationNode];
    v15[2](v15, 5, districtNodesByLocationNode);

    cityNodesByLocationNode = [(PGGraphLocationHelper *)self cityNodesByLocationNode];
    v15[2](v15, 6, cityNodesByLocationNode);

    countyNodesByLocationNode = [(PGGraphLocationHelper *)self countyNodesByLocationNode];
    v15[2](v15, 7, countyNodesByLocationNode);

    stateNodesByLocationNode = [(PGGraphLocationHelper *)self stateNodesByLocationNode];
    v15[2](v15, 8, stateNodesByLocationNode);

    countryNodesByLocationNode = [(PGGraphLocationHelper *)self countryNodesByLocationNode];
    v15[2](v15, 9, countryNodesByLocationNode);

    if (v32[3] == dimension)
    {
      v14 = v26[5];
    }

    else
    {
      v14 = 0;
    }

    _Block_object_dispose(&v25, 8);
  }

  _Block_object_dispose(&v31, 8);

  return v14;
}

void __101__PGGraphLocationHelper__parentLocationNodeWithDimension_sourceLocationNodeAsCollection_sourceLabel___block_invoke(void *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (*(*(a1[4] + 8) + 24) < a2 && a1[6] >= a2)
  {
    v7 = v5;
    v6 = [v5 targetsForSources:*(*(a1[5] + 8) + 40)];
    if ([v6 count] || a1[6] == a2)
    {
      objc_storeStrong((*(a1[5] + 8) + 40), v6);
      *(*(a1[4] + 8) + 24) = a2;
    }

    v5 = v7;
  }
}

- (id)_parentLocationNodeWithDimension:(unint64_t)dimension ofLocationNode:(id)node
{
  nodeCopy = node;
  locationNodeCollection = [nodeCopy locationNodeCollection];
  label = [nodeCopy label];

  v9 = [(PGGraphLocationHelper *)self _parentLocationNodeWithDimension:dimension sourceLocationNodeAsCollection:locationNodeCollection sourceLabel:label];

  return v9;
}

- (id)addressNodesByMomentNodeAdjacency
{
  addressNodesByMomentNode = [(PGGraphLocationHelper *)self addressNodesByMomentNode];
  adjacency = [addressNodesByMomentNode adjacency];

  return adjacency;
}

- (id)addressNodesByMomentNode
{
  momentNodesByAddressNode = [(PGGraphLocationHelper *)self momentNodesByAddressNode];
  os_unfair_lock_lock(&self->_locationHelperLock);
  if (!self->_addressNodes)
  {
    [(PGGraphLocationHelper *)self _fetchAddressNodes];
  }

  addressNodesByMomentNode = self->_addressNodesByMomentNode;
  if (!addressNodesByMomentNode)
  {
    transposed = [momentNodesByAddressNode transposed];
    v6 = self->_addressNodesByMomentNode;
    self->_addressNodesByMomentNode = transposed;

    addressNodesByMomentNode = self->_addressNodesByMomentNode;
  }

  v7 = addressNodesByMomentNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v7;
}

- (id)momentNodesByAddressNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  if (!self->_addressNodes)
  {
    [(PGGraphLocationHelper *)self _fetchAddressNodes];
  }

  momentNodesByAddressNode = self->_momentNodesByAddressNode;
  if (!momentNodesByAddressNode)
  {
    v4 = MEMORY[0x277D22BF8];
    addressNodes = self->_addressNodes;
    v6 = +[PGGraphAddressNode momentOfAddress];
    v7 = [v4 adjacencyWithSources:addressNodes relation:v6 targetsClass:objc_opt_class()];
    v8 = self->_momentNodesByAddressNode;
    self->_momentNodesByAddressNode = v7;

    momentNodesByAddressNode = self->_momentNodesByAddressNode;
  }

  v9 = momentNodesByAddressNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v9;
}

- (id)areaNodesByAddressNode
{
  addressNodesByAreaNode = [(PGGraphLocationHelper *)self addressNodesByAreaNode];
  os_unfair_lock_lock(&self->_locationHelperLock);
  if (!self->_addressNodes)
  {
    [(PGGraphLocationHelper *)self _fetchAddressNodes];
  }

  areaNodesByAddressNode = self->_areaNodesByAddressNode;
  if (!areaNodesByAddressNode)
  {
    transposed = [addressNodesByAreaNode transposed];
    v6 = self->_areaNodesByAddressNode;
    self->_areaNodesByAddressNode = transposed;

    areaNodesByAddressNode = self->_areaNodesByAddressNode;
  }

  v7 = areaNodesByAddressNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v7;
}

- (id)addressNodesByAreaNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  if (!self->_addressNodes)
  {
    [(PGGraphLocationHelper *)self _fetchAddressNodes];
  }

  addressNodesByAreaNode = self->_addressNodesByAreaNode;
  if (!addressNodesByAreaNode)
  {
    v4 = MEMORY[0x277D22BF8];
    addressNodes = self->_addressNodes;
    v6 = +[PGGraphAddressNode areaOfAddress];
    v7 = [v4 adjacencyWithSources:addressNodes relation:v6 targetsClass:objc_opt_class()];
    transposed = [v7 transposed];
    v9 = self->_addressNodesByAreaNode;
    self->_addressNodesByAreaNode = transposed;

    addressNodesByAreaNode = self->_addressNodesByAreaNode;
  }

  v10 = addressNodesByAreaNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v10;
}

- (id)addressNodes
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  addressNodes = self->_addressNodes;
  if (!addressNodes)
  {
    [(PGGraphLocationHelper *)self _fetchAddressNodes];
    addressNodes = self->_addressNodes;
  }

  v4 = addressNodes;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v4;
}

- (void)_fetchAddressNodes
{
  v3 = [(PGGraphNodeCollection *)PGGraphAddressNodeCollection nodesInGraph:self->_graph];
  addressNodes = self->_addressNodes;
  self->_addressNodes = v3;
}

- (id)numberNodesByLocationNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  if (!self->_locationNodesByNumberNode)
  {
    [(PGGraphLocationHelper *)self _fetchLocationNodesByNumberNode];
  }

  numberNodesByLocationNode = self->_numberNodesByLocationNode;
  if (!numberNodesByLocationNode)
  {
    transposed = [(MABinaryAdjacency *)self->_locationNodesByNumberNode transposed];
    v5 = self->_numberNodesByLocationNode;
    self->_numberNodesByLocationNode = transposed;

    numberNodesByLocationNode = self->_numberNodesByLocationNode;
  }

  v6 = numberNodesByLocationNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v6;
}

- (id)locationNodesByNumberNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  locationNodesByNumberNode = self->_locationNodesByNumberNode;
  if (!locationNodesByNumberNode)
  {
    [(PGGraphLocationHelper *)self _fetchLocationNodesByNumberNode];
    locationNodesByNumberNode = self->_locationNodesByNumberNode;
  }

  v4 = locationNodesByNumberNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v4;
}

- (void)_fetchLocationNodesByNumberNode
{
  v3 = MEMORY[0x277D22BF8];
  v8 = [(PGGraphNodeCollection *)PGGraphLocationNumberNodeCollection nodesInGraph:self->_graph];
  v4 = +[PGGraphLocationNumberEdge filter];
  inRelation = [v4 inRelation];
  v6 = [v3 adjacencyWithSources:v8 relation:inRelation targetsClass:objc_opt_class()];
  locationNodesByNumberNode = self->_locationNodesByNumberNode;
  self->_locationNodesByNumberNode = v6;
}

- (id)streetNodesByLocationNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  if (!self->_locationNodesByStreetNode)
  {
    [(PGGraphLocationHelper *)self _fetchLocationNodesByStreetNode];
  }

  streetNodesByLocationNode = self->_streetNodesByLocationNode;
  if (!streetNodesByLocationNode)
  {
    transposed = [(MABinaryAdjacency *)self->_locationNodesByStreetNode transposed];
    v5 = self->_streetNodesByLocationNode;
    self->_streetNodesByLocationNode = transposed;

    streetNodesByLocationNode = self->_streetNodesByLocationNode;
  }

  v6 = streetNodesByLocationNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v6;
}

- (id)locationNodesByStreetNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  locationNodesByStreetNode = self->_locationNodesByStreetNode;
  if (!locationNodesByStreetNode)
  {
    [(PGGraphLocationHelper *)self _fetchLocationNodesByStreetNode];
    locationNodesByStreetNode = self->_locationNodesByStreetNode;
  }

  v4 = locationNodesByStreetNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v4;
}

- (void)_fetchLocationNodesByStreetNode
{
  v3 = MEMORY[0x277D22BF8];
  v8 = [(PGGraphNodeCollection *)PGGraphLocationStreetNodeCollection nodesInGraph:self->_graph];
  v4 = +[PGGraphLocationStreetEdge filter];
  inRelation = [v4 inRelation];
  v6 = [v3 adjacencyWithSources:v8 relation:inRelation targetsClass:objc_opt_class()];
  locationNodesByStreetNode = self->_locationNodesByStreetNode;
  self->_locationNodesByStreetNode = v6;
}

- (id)districtNodesByLocationNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  if (!self->_locationNodesByDistrictNode)
  {
    [(PGGraphLocationHelper *)self _fetchLocationNodesByDistrictNode];
  }

  districtNodesByLocationNode = self->_districtNodesByLocationNode;
  if (!districtNodesByLocationNode)
  {
    transposed = [(MABinaryAdjacency *)self->_locationNodesByDistrictNode transposed];
    v5 = self->_districtNodesByLocationNode;
    self->_districtNodesByLocationNode = transposed;

    districtNodesByLocationNode = self->_districtNodesByLocationNode;
  }

  v6 = districtNodesByLocationNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v6;
}

- (id)locationNodesByDistrictNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  locationNodesByDistrictNode = self->_locationNodesByDistrictNode;
  if (!locationNodesByDistrictNode)
  {
    [(PGGraphLocationHelper *)self _fetchLocationNodesByDistrictNode];
    locationNodesByDistrictNode = self->_locationNodesByDistrictNode;
  }

  v4 = locationNodesByDistrictNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v4;
}

- (void)_fetchLocationNodesByDistrictNode
{
  v3 = MEMORY[0x277D22BF8];
  v8 = [(PGGraphNodeCollection *)PGGraphLocationDistrictNodeCollection nodesInGraph:self->_graph];
  v4 = +[PGGraphLocationDistrictEdge filter];
  inRelation = [v4 inRelation];
  v6 = [v3 adjacencyWithSources:v8 relation:inRelation targetsClass:objc_opt_class()];
  locationNodesByDistrictNode = self->_locationNodesByDistrictNode;
  self->_locationNodesByDistrictNode = v6;
}

- (id)cityNodesByLocationNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  if (!self->_locationNodesByCityNode)
  {
    [(PGGraphLocationHelper *)self _fetchLocationNodesByCityNode];
  }

  cityNodesByLocationNode = self->_cityNodesByLocationNode;
  if (!cityNodesByLocationNode)
  {
    transposed = [(MABinaryAdjacency *)self->_locationNodesByCityNode transposed];
    v5 = self->_cityNodesByLocationNode;
    self->_cityNodesByLocationNode = transposed;

    cityNodesByLocationNode = self->_cityNodesByLocationNode;
  }

  v6 = cityNodesByLocationNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v6;
}

- (id)locationNodesByCityNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  locationNodesByCityNode = self->_locationNodesByCityNode;
  if (!locationNodesByCityNode)
  {
    [(PGGraphLocationHelper *)self _fetchLocationNodesByCityNode];
    locationNodesByCityNode = self->_locationNodesByCityNode;
  }

  v4 = locationNodesByCityNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v4;
}

- (void)_fetchLocationNodesByCityNode
{
  v3 = MEMORY[0x277D22BF8];
  v8 = [(PGGraphNodeCollection *)PGGraphLocationCityNodeCollection nodesInGraph:self->_graph];
  v4 = +[PGGraphLocationCityEdge filter];
  inRelation = [v4 inRelation];
  v6 = [v3 adjacencyWithSources:v8 relation:inRelation targetsClass:objc_opt_class()];
  locationNodesByCityNode = self->_locationNodesByCityNode;
  self->_locationNodesByCityNode = v6;
}

- (id)countyNodesByLocationNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  if (!self->_locationNodesByCountyNode)
  {
    [(PGGraphLocationHelper *)self _fetchLocationNodesByCountyNode];
  }

  countyNodesByLocationNode = self->_countyNodesByLocationNode;
  if (!countyNodesByLocationNode)
  {
    transposed = [(MABinaryAdjacency *)self->_locationNodesByCountyNode transposed];
    v5 = self->_countyNodesByLocationNode;
    self->_countyNodesByLocationNode = transposed;

    countyNodesByLocationNode = self->_countyNodesByLocationNode;
  }

  v6 = countyNodesByLocationNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v6;
}

- (id)locationNodesByCountyNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  locationNodesByCountyNode = self->_locationNodesByCountyNode;
  if (!locationNodesByCountyNode)
  {
    [(PGGraphLocationHelper *)self _fetchLocationNodesByCountyNode];
    locationNodesByCountyNode = self->_locationNodesByCountyNode;
  }

  v4 = locationNodesByCountyNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v4;
}

- (void)_fetchLocationNodesByCountyNode
{
  v3 = MEMORY[0x277D22BF8];
  v8 = [(PGGraphNodeCollection *)PGGraphLocationCountyNodeCollection nodesInGraph:self->_graph];
  v4 = +[PGGraphLocationCountyEdge filter];
  inRelation = [v4 inRelation];
  v6 = [v3 adjacencyWithSources:v8 relation:inRelation targetsClass:objc_opt_class()];
  locationNodesByCountyNode = self->_locationNodesByCountyNode;
  self->_locationNodesByCountyNode = v6;
}

- (id)stateNodesByLocationNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  if (!self->_locationNodesByStateNode)
  {
    [(PGGraphLocationHelper *)self _fetchLocationNodesByStateNode];
  }

  stateNodesByLocationNode = self->_stateNodesByLocationNode;
  if (!stateNodesByLocationNode)
  {
    transposed = [(MABinaryAdjacency *)self->_locationNodesByStateNode transposed];
    v5 = self->_stateNodesByLocationNode;
    self->_stateNodesByLocationNode = transposed;

    stateNodesByLocationNode = self->_stateNodesByLocationNode;
  }

  v6 = stateNodesByLocationNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v6;
}

- (id)locationNodesByStateNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  locationNodesByStateNode = self->_locationNodesByStateNode;
  if (!locationNodesByStateNode)
  {
    [(PGGraphLocationHelper *)self _fetchLocationNodesByStateNode];
    locationNodesByStateNode = self->_locationNodesByStateNode;
  }

  v4 = locationNodesByStateNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v4;
}

- (void)_fetchLocationNodesByStateNode
{
  v3 = MEMORY[0x277D22BF8];
  v8 = [(PGGraphNodeCollection *)PGGraphLocationStateNodeCollection nodesInGraph:self->_graph];
  v4 = +[PGGraphLocationStateEdge filter];
  inRelation = [v4 inRelation];
  v6 = [v3 adjacencyWithSources:v8 relation:inRelation targetsClass:objc_opt_class()];
  locationNodesByStateNode = self->_locationNodesByStateNode;
  self->_locationNodesByStateNode = v6;
}

- (id)countryNodesByLocationNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  if (!self->_locationNodesByCountryNode)
  {
    [(PGGraphLocationHelper *)self _fetchLocationNodesByCountryNode];
  }

  countryNodesByLocationNode = self->_countryNodesByLocationNode;
  if (!countryNodesByLocationNode)
  {
    transposed = [(MABinaryAdjacency *)self->_locationNodesByCountryNode transposed];
    v5 = self->_countryNodesByLocationNode;
    self->_countryNodesByLocationNode = transposed;

    countryNodesByLocationNode = self->_countryNodesByLocationNode;
  }

  v6 = countryNodesByLocationNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v6;
}

- (id)locationNodesByCountryNode
{
  os_unfair_lock_lock(&self->_locationHelperLock);
  locationNodesByCountryNode = self->_locationNodesByCountryNode;
  if (!locationNodesByCountryNode)
  {
    [(PGGraphLocationHelper *)self _fetchLocationNodesByCountryNode];
    locationNodesByCountryNode = self->_locationNodesByCountryNode;
  }

  v4 = locationNodesByCountryNode;
  os_unfair_lock_unlock(&self->_locationHelperLock);

  return v4;
}

- (void)_fetchLocationNodesByCountryNode
{
  v3 = MEMORY[0x277D22BF8];
  v8 = [(PGGraphNodeCollection *)PGGraphLocationCountryNodeCollection nodesInGraph:self->_graph];
  v4 = +[PGGraphLocationCountryEdge filter];
  inRelation = [v4 inRelation];
  v6 = [v3 adjacencyWithSources:v8 relation:inRelation targetsClass:objc_opt_class()];
  locationNodesByCountryNode = self->_locationNodesByCountryNode;
  self->_locationNodesByCountryNode = v6;
}

- (PGGraphLocationHelper)initWithGraph:(id)graph
{
  graphCopy = graph;
  v9.receiver = self;
  v9.super_class = PGGraphLocationHelper;
  v6 = [(PGGraphLocationHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, graph);
    v7->_locationHelperLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

+ (id)inefficientLocationHelper
{
  v2 = objc_alloc_init(PGGraphLegacyLocationHelper);

  return v2;
}

@end