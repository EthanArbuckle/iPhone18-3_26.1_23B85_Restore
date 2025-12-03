@interface PGGraphLegacyLocationHelper
- (BOOL)_locationNodesRepresentSameCity:(id)city;
- (BOOL)locationIsInSupersetCategoryForLocationNode:(id)node;
- (CLLocationCoordinate2D)_approximateCoordinateForLocationNode:(id)node;
- (id)_closestLocationNodeFromLocationNode:(id)node withDimension:(unint64_t)dimension remapMatchingDimensionBlock:(id)block reverse:(BOOL)reverse;
- (id)_commonNodeForLocationNode:(id)node andLocationNode:(id)locationNode;
- (id)_mostVisitedLocationNodeForLocationNodes:(id)nodes;
- (id)_validLocationNodeForLocationNode:(id)node withLocationMask:(unint64_t)mask;
- (id)cityNodeFromAddressNode:(id)node;
- (id)commonLocationNodeForRelevantLocationNodes:(id)nodes locationMask:(unint64_t)mask;
- (id)countryNodeFromAddressNode:(id)node;
- (id)countyNodeFromCityNode:(id)node;
- (id)densestCloseLocationNodeFromLocationNode:(id)node withDateInterval:(id)interval locationMask:(unint64_t)mask;
- (id)districtNodeFromAddressNode:(id)node;
- (id)locationNodeWithDimension:(unint64_t)dimension rootNode:(id)node;
- (id)relevantLocationNodesForMomentNodes:(id)nodes applyDensestCloseLocationNode:(BOOL)node;
@end

@implementation PGGraphLegacyLocationHelper

- (id)countyNodeFromCityNode:(id)node
{
  collection = [node collection];
  countyNodes = [collection countyNodes];

  return countyNodes;
}

- (id)countryNodeFromAddressNode:(id)node
{
  collection = [node collection];
  countryNodes = [collection countryNodes];

  return countryNodes;
}

- (id)cityNodeFromAddressNode:(id)node
{
  collection = [node collection];
  cityNodes = [collection cityNodes];

  return cityNodes;
}

- (id)districtNodeFromAddressNode:(id)node
{
  collection = [node collection];
  districtNodes = [collection districtNodes];

  return districtNodes;
}

- (id)_validLocationNodeForLocationNode:(id)node withLocationMask:(unint64_t)mask
{
  nodeCopy = node;
  if (([nodeCopy locationMask] & mask) != 0)
  {
LABEL_7:
    nodeCopy = nodeCopy;
    v11 = nodeCopy;
    goto LABEL_8;
  }

  while (1)
  {
    outEdgesCount = [nodeCopy outEdgesCount];
    if (outEdgesCount == 1)
    {
      locationNodeCollection = [nodeCopy locationNodeCollection];
      parentLocationNodes = [locationNodeCollection parentLocationNodes];
      anyNode = [parentLocationNodes anyNode];

      nodeCopy = anyNode;
      goto LABEL_6;
    }

    if (!outEdgesCount)
    {
      break;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__20105;
    v18 = __Block_byref_object_dispose__20106;
    v19 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82__PGGraphLegacyLocationHelper__validLocationNodeForLocationNode_withLocationMask___block_invoke;
    v13[3] = &unk_278882DB0;
    v13[4] = &v14;
    [nodeCopy enumerateNeighborEdgesAndNodesThroughOutEdgesUsingBlock:v13];
    v7 = v15[5];

    _Block_object_dispose(&v14, 8);
    nodeCopy = v7;
LABEL_6:
    if (([nodeCopy locationMask] & mask) != 0)
    {
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
}

void __82__PGGraphLegacyLocationHelper__validLocationNodeForLocationNode_withLocationMask___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
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
    v14 = *MEMORY[0x277CE4278];
    v15 = *(MEMORY[0x277CE4278] + 8);
LABEL_12:

    goto LABEL_13;
  }

  locationMask = [nodeCopy locationMask];
  if (nodeCopy)
  {
    v5 = locationMask;
    while (1)
    {
      label = [nodeCopy label];
      v7 = [label isEqualToString:@"Address"];

      if (v7)
      {
        break;
      }

      if (v5 < 0x10)
      {
        locationNodeCollection = [nodeCopy locationNodeCollection];
        parentLocationNodes = [locationNodeCollection parentLocationNodes];
        anyNode = [parentLocationNodes anyNode];

        nodeCopy = anyNode;
        if (!anyNode)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v27[0] = 0;
        v27[1] = v27;
        v27[2] = 0x2020000000;
        v27[3] = 0;
        v21 = 0;
        v22 = &v21;
        v23 = 0x3032000000;
        v24 = __Block_byref_object_copy__20105;
        v25 = __Block_byref_object_dispose__20106;
        v26 = 0;
        locationNodeCollection2 = [nodeCopy locationNodeCollection];
        childLocationNodes = [locationNodeCollection2 childLocationNodes];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __69__PGGraphLegacyLocationHelper__approximateCoordinateForLocationNode___block_invoke;
        v20[3] = &unk_2788813B8;
        v20[4] = v27;
        v20[5] = &v21;
        [childLocationNodes enumerateIdentifiersAsCollectionsWithBlock:v20];

        v10 = v22[5];
        v5 >>= 1;
        _Block_object_dispose(&v21, 8);

        _Block_object_dispose(v27, 8);
        nodeCopy = v10;
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    [nodeCopy coordinate];
    v14 = v16;
    v15 = v17;
    goto LABEL_12;
  }

LABEL_9:
  v14 = *MEMORY[0x277CE4278];
  v15 = *(MEMORY[0x277CE4278] + 8);
LABEL_13:
  v18 = v14;
  v19 = v15;
  result.longitude = v19;
  result.latitude = v18;
  return result;
}

void __69__PGGraphLegacyLocationHelper__approximateCoordinateForLocationNode___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [v11 addressNodes];
  v5 = [v4 momentNodes];
  v6 = [v5 count];

  v7 = *(*(a1 + 32) + 8);
  if (v6 > *(v7 + 24))
  {
    *(v7 + 24) = v6;
    v8 = [v11 anyNode];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (id)_commonNodeForLocationNode:(id)node andLocationNode:(id)locationNode
{
  nodeCopy = node;
  locationNodeCopy = locationNode;
  if (nodeCopy == locationNodeCopy)
  {
    v24 = nodeCopy;
  }

  else
  {
    v31 = 0;
    v32[0] = &v31;
    v32[1] = 0x3032000000;
    v32[2] = __Block_byref_object_copy__20105;
    v32[3] = __Block_byref_object_dispose__20106;
    v7 = nodeCopy;
    v33 = v7;
    label = [v7 label];
    v9 = [label isEqualToString:@"Address"];

    if (v9)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __74__PGGraphLegacyLocationHelper__commonNodeForLocationNode_andLocationNode___block_invoke;
      v30[3] = &unk_278885998;
      v30[4] = &v31;
      [v7 enumerateNeighborNodesThroughOutEdgesUsingBlock:v30];
    }

    v27 = 0;
    v28[0] = &v27;
    v28[1] = 0x3032000000;
    v28[2] = __Block_byref_object_copy__20105;
    v28[3] = __Block_byref_object_dispose__20106;
    v10 = locationNodeCopy;
    v29 = v10;
    label2 = [v10 label];
    v12 = [label2 isEqualToString:@"Address"];

    if (v12)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __74__PGGraphLegacyLocationHelper__commonNodeForLocationNode_andLocationNode___block_invoke_2;
      v26[3] = &unk_278885998;
      v26[4] = &v27;
      [v10 enumerateNeighborNodesThroughOutEdgesUsingBlock:v26];
    }

    v13 = *(v32[0] + 40);
    v14 = *(v28[0] + 40);
    v15 = v13 == v14;
    if (v13 != v14 && v13 && v14)
    {
      do
      {
        locationMask = [v13 locationMask];
        if (locationMask <= [*(v28[0] + 40) locationMask])
        {
          locationNodeCollection = [*(v32[0] + 40) locationNodeCollection];
          parentLocationNodes = [locationNodeCollection parentLocationNodes];
          anyNode = [parentLocationNodes anyNode];
          v20 = v32;
        }

        else
        {
          locationNodeCollection = [*(v28[0] + 40) locationNodeCollection];
          parentLocationNodes = [locationNodeCollection parentLocationNodes];
          anyNode = [parentLocationNodes anyNode];
          v20 = v28;
        }

        v21 = *v20;
        v22 = *(v21 + 40);
        *(v21 + 40) = anyNode;

        v13 = *(v32[0] + 40);
        v23 = *(v28[0] + 40);
        v15 = v13 == v23;
      }

      while (v13 != v23 && v13 && v23);
    }

    if (v15)
    {
      v24 = v13;
    }

    else
    {
      v24 = 0;
    }

    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(&v31, 8);
  }

  return v24;
}

void __74__PGGraphLegacyLocationHelper__commonNodeForLocationNode_andLocationNode___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 domain] == 200)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __74__PGGraphLegacyLocationHelper__commonNodeForLocationNode_andLocationNode___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
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
  v29 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  anyObject = [nodesCopy anyObject];
  if ([nodesCopy count] >= 2)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = nodesCopy;
    obj = nodesCopy;
    v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v25;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          locationNodeCollection = [v10 locationNodeCollection];
          addressNodes = [locationNodeCollection addressNodes];
          momentNodes = [addressNodes momentNodes];
          v14 = [momentNodes count];

          if (v14 <= v7)
          {
            if (v14 != v7)
            {
              continue;
            }

            uUID = [v10 UUID];
            uUID2 = [anyObject UUID];
            v18 = [uUID compare:uUID2];

            if (v18 != -1)
            {
              continue;
            }
          }

          v15 = v10;

          v7 = v14;
          anyObject = v15;
        }

        v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v6);
    }

    nodesCopy = v22;
  }

  v19 = anyObject;

  v20 = *MEMORY[0x277D85DE8];
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
        [(PGGraphLegacyLocationHelper *)self _approximateCoordinateForLocationNode:v21];
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

              [(PGGraphLegacyLocationHelper *)self _approximateCoordinateForLocationNode:*(*(&v32 + 1) + 8 * j), v30];
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

  if (![(PGGraphLegacyLocationHelper *)self _locationNodesRepresentSameCity:nodesCopy])
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
              v17 = [(PGGraphLegacyLocationHelper *)self _commonNodeForLocationNode:allObjects andLocationNode:v16, v32];

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
            anyObject = [(PGGraphLegacyLocationHelper *)self _validLocationNodeForLocationNode:allObjects withLocationMask:mask, v32];
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
    v23 = [(PGGraphLegacyLocationHelper *)self _commonNodeForLocationNode:firstObject andLocationNode:lastObject];

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
      anyObject = [(PGGraphLegacyLocationHelper *)self _validLocationNodeForLocationNode:v23 withLocationMask:mask];

LABEL_36:
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  graph = [(PGGraphLegacyLocationHelper *)self _mostVisitedLocationNodeForLocationNodes:nodesCopy];
  anyObject = [(PGGraphLegacyLocationHelper *)self _validLocationNodeForLocationNode:graph withLocationMask:mask];
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
    locationNodeCollection = [nodeCopy locationNodeCollection];
    parentLocationNodes = [locationNodeCollection parentLocationNodes];
    anyNode = [parentLocationNodes anyNode];

    if (!anyNode)
    {
      v24 = nodeCopy;
LABEL_20:

      goto LABEL_21;
    }

    locationNodeCollection2 = [anyNode locationNodeCollection];
    parentLocationNodes2 = [locationNodeCollection2 parentLocationNodes];
    anyNode2 = [parentLocationNodes2 anyNode];

    if (anyNode2)
    {
      [(PGGraphLegacyLocationHelper *)self _approximateCoordinateForLocationNode:nodeCopy];
      latitude = v119.latitude;
      longitude = v119.longitude;
      v23 = CLLocationCoordinate2DIsValid(v119);
      v24 = nodeCopy;
      if (v23)
      {
        v56 = anyNode2;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        v117[0] = 0;
        v117[1] = v117;
        v117[2] = 0x2020000000;
        v117[3] = 0;
        v116[0] = 0;
        v116[1] = v116;
        v116[2] = 0x2020000000;
        v116[3] = 0;
        v115[0] = 0;
        v115[1] = v115;
        v115[2] = 0x2020000000;
        v115[3] = 0;
        v114[0] = 0;
        v114[1] = v114;
        v114[2] = 0x2020000000;
        v114[3] = 0;
        v113[0] = 0;
        v113[1] = v113;
        v113[2] = 0x2020000000;
        v113[3] = 0;
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = __102__PGGraphLegacyLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke;
        v101[3] = &unk_278882D10;
        v101[4] = self;
        v111 = latitude;
        v112 = longitude;
        v54 = intervalCopy;
        v102 = intervalCopy;
        v27 = dictionary;
        v103 = v27;
        v28 = dictionary2;
        v104 = v28;
        v106 = v116;
        v107 = v115;
        v105 = anyNode;
        v108 = v117;
        v109 = v114;
        v110 = v113;
        [anyNode2 enumerateNeighborNodesThroughInEdgesUsingBlock:v101];
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "identifier")}];
        v30 = [v27 objectForKeyedSubscript:v29];
        [v30 doubleValue];
        v32 = v31;
        v33 = [v28 objectForKeyedSubscript:v29];
        [v33 doubleValue];
        v35 = v34;
        v55 = v27;

        v97 = 0;
        v98 = &v97;
        v99 = 0x2020000000;
        v100 = 0;
        v93 = 0;
        v94 = &v93;
        v95 = 0x2020000000;
        v96 = 0;
        v89 = 0;
        v90 = &v89;
        v91 = 0x2020000000;
        v92 = 0;
        graph = [v24 graph];
        v83 = 0;
        v84 = &v83;
        v85 = 0x3032000000;
        v86 = __Block_byref_object_copy__20105;
        v87 = __Block_byref_object_dispose__20106;
        v37 = v24;
        v88 = v37;
        v79 = 0;
        v80 = &v79;
        v81 = 0x2020000000;
        v82 = v35 * 0.4 + v32 * 0.6;
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __102__PGGraphLegacyLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke_234;
        v71[3] = &unk_278882D38;
        v38 = v28;
        v72 = v38;
        v74 = &v97;
        v75 = &v93;
        v76 = &v89;
        v77 = &v79;
        v39 = graph;
        v73 = v39;
        v78 = &v83;
        [v55 enumerateKeysAndObjectsUsingBlock:v71];
        v51 = v39;
        v40 = v98[3];
        v41 = 0.0;
        if (v40 >= 2)
        {
          v41 = v90[3] / (v40 - 1);
        }

        v90[3] = v41;
        v67 = 0;
        v68 = &v67;
        v69 = 0x2020000000;
        v70 = 0;
        v63 = 0;
        v64 = &v63;
        v65 = 0x2020000000;
        v66 = 0;
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __102__PGGraphLegacyLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke_2_236;
        v57[3] = &unk_278882D60;
        v42 = sqrt(v41);
        v53 = v38;
        v58 = v53;
        v59 = &v93;
        v62 = v42;
        v60 = &v63;
        v61 = &v67;
        [v55 enumerateKeysAndObjectsUsingBlock:v57];
        if (v68[3] <= 1 && v64[3] < 3)
        {
          if (v80[3] - v94[3] < v42 + v42)
          {
            v46 = v37;
            goto LABEL_13;
          }

          v46 = v84[5];
          anyNode3 = v37;
        }

        else
        {
          locationNodeCollection3 = [v84[5] locationNodeCollection];
          parentLocationNodes3 = [locationNodeCollection3 parentLocationNodes];
          anyNode3 = [parentLocationNodes3 anyNode];

          v46 = [(PGGraphLegacyLocationHelper *)self _commonNodeForLocationNode:v37 andLocationNode:anyNode3];
        }

LABEL_13:
        v47 = [(PGGraphLegacyLocationHelper *)self _validLocationNodeForLocationNode:v46 withLocationMask:mask, v51];
        v48 = v47;
        if (v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = v37;
        }

        v24 = v49;

        _Block_object_dispose(&v63, 8);
        _Block_object_dispose(&v67, 8);

        _Block_object_dispose(&v79, 8);
        _Block_object_dispose(&v83, 8);

        _Block_object_dispose(&v89, 8);
        _Block_object_dispose(&v93, 8);
        _Block_object_dispose(&v97, 8);

        _Block_object_dispose(v113, 8);
        _Block_object_dispose(v114, 8);
        _Block_object_dispose(v115, 8);
        _Block_object_dispose(v116, 8);
        _Block_object_dispose(v117, 8);

        intervalCopy = v54;
        anyNode2 = v56;
      }
    }

    else
    {
      v24 = nodeCopy;
    }

    goto LABEL_20;
  }

  locationNodeCollection4 = [nodeCopy locationNodeCollection];
  parentLocationNodes4 = [locationNodeCollection4 parentLocationNodes];
  anyNode4 = [parentLocationNodes4 anyNode];

  if (anyNode4)
  {

    nodeCopy = anyNode4;
    goto LABEL_4;
  }

  v24 = [(PGGraphLegacyLocationHelper *)self _validLocationNodeForLocationNode:nodeCopy withLocationMask:mask];
LABEL_21:

  return v24;
}

void __102__PGGraphLegacyLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __102__PGGraphLegacyLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke_2;
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

void __102__PGGraphLegacyLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke_234(uint64_t a1, void *a2, void *a3)
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

void __102__PGGraphLegacyLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke_2_236(uint64_t a1, void *a2, void *a3, _BYTE *a4)
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

void __102__PGGraphLegacyLocationHelper_densestCloseLocationNodeFromLocationNode_withDateInterval_locationMask___block_invoke_2(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _approximateCoordinateForLocationNode:v3];
  v43 = v46;
  if (CLLocationCoordinate2DIsValid(v46))
  {
    CLLocationCoordinate2DGetDistanceFrom();
    if (v4 <= 20000.0)
    {
      v5 = 0x277CCA000uLL;
      v36 = a1;
      v6 = MEMORY[0x277CCABB0];
      v7 = [v3 identifier];
      v8 = v6;
      v9 = a1;
      v10 = [v8 numberWithUnsignedInteger:v7];
      v11 = [v3 inEdgesCount];
      v12 = *(a1 + 40);
      v13 = [v3 locationNodeCollection];
      v14 = [v13 addressNodes];
      v15 = [v14 momentNodes];
      v16 = v15;
      if (v12)
      {
        v17 = [v15 temporarySet];

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v14 = v17;
        v18 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v18)
        {
          v19 = v18;
          v33 = v11;
          v34 = v10;
          v35 = v3;
          v20 = 0;
          obj = v14;
          v38 = *v40;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v40 != v38)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v39 + 1) + 8 * i);
              v23 = *(v9 + 40);
              v24 = v22;
              v25 = [v23 startDate];
              v26 = [v24 universalEndDate];
              if ([v25 compare:v26] == 1)
              {
                v27 = 0;
              }

              else
              {
                v28 = [v23 endDate];
                v29 = [v24 universalStartDate];
                v27 = [v28 compare:v29] != -1;

                v9 = v36;
              }

              v20 += v27;
            }

            v19 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
          }

          while (v19);
          v14 = obj;
          v13 = obj;
          v10 = v34;
          v3 = v35;
          v11 = v33;
          v5 = 0x277CCA000;
        }

        else
        {
          v20 = 0;
          v13 = v14;
        }
      }

      else
      {
        v20 = [v15 count];
      }

      v30 = [*(v5 + 2992) numberWithUnsignedInteger:v11];
      [*(v9 + 48) setObject:v30 forKeyedSubscript:v10];

      v31 = [*(v5 + 2992) numberWithUnsignedInteger:v20];
      [*(v9 + 56) setObject:v31 forKeyedSubscript:v10];

      ++*(*(*(v9 + 64) + 8) + 24);
      *(*(*(v9 + 72) + 8) + 24) += v11;
      *(*(*(v9 + 80) + 8) + 24) += v20;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
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
      *&buf[4] = "[PGGraphLegacyLocationHelper locationIsInSupersetCategoryForLocationNode:]";
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
  v17[2] = __75__PGGraphLegacyLocationHelper_locationIsInSupersetCategoryForLocationNode___block_invoke;
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

void __75__PGGraphLegacyLocationHelper_locationIsInSupersetCategoryForLocationNode___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) closestLocationNodeFromLocationNode:a2 withDimension:*(a1 + 56) reverse:0];
  *(*(*(a1 + 48) + 8) + 24) = [v5 isSameNodeAsNode:*(a1 + 40)];
  *a3 = *(*(*(a1 + 48) + 8) + 24);
}

- (id)relevantLocationNodesForMomentNodes:(id)nodes applyDensestCloseLocationNode:(BOOL)node
{
  v47 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  firstObject = [nodesCopy firstObject];
  graph = [firstObject graph];

  if (graph)
  {
    v9 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:nodesCopy graph:graph];
    addressNodes = [(PGGraphMomentNodeCollection *)v9 addressNodes];
    temporarySet = [addressNodes temporarySet];

    if ([temporarySet count])
    {
      v12 = [[PGIncompleteLocationResolver alloc] initWithAddressNodes:temporarySet locationHelper:self];
      v13 = [[PGLocationsResolver alloc] initWithSortedMomentNodes:nodesCopy incompleteLocationResolver:v12 locationHelper:self];
      resolvedMomentNodes = [(PGLocationsResolver *)v13 resolvedMomentNodes];
      resolvedLocationNodes = [(PGLocationsResolver *)v13 resolvedLocationNodes];
      v38 = [[PGLocationsFilterer alloc] initWithSortedMomentNodes:resolvedMomentNodes locationNodes:resolvedLocationNodes incompleteLocationResolver:v12];
      filteredLocationNodes = [(PGLocationsFilterer *)v38 filteredLocationNodes];
      if (node)
      {
        v31 = resolvedMomentNodes;
        v32 = v13;
        v33 = v12;
        v34 = temporarySet;
        v35 = v9;
        v36 = graph;
        v37 = nodesCopy;
        v16 = filteredLocationNodes;
        v17 = [MEMORY[0x277CBEB58] set];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v30 = v16;
        v18 = v16;
        v19 = [v18 countByEnumeratingWithState:&v40 objects:v46 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v41;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v41 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v40 + 1) + 8 * i);
              v24 = [(PGGraphLegacyLocationHelper *)self densestCloseLocationNodeFromLocationNode:v23 withDateInterval:0 locationMask:-1, v30];
              if (v24)
              {
                [v17 addObject:v24];
              }

              else
              {
                v25 = +[PGLogging sharedLogging];
                loggingConnection = [v25 loggingConnection];

                if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v45 = v23;
                  _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "No densestLocationNode for locationNode %@", buf, 0xCu);
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v40 objects:v46 count:16];
          }

          while (v20);
        }

        graph = v36;
        nodesCopy = v37;
        temporarySet = v34;
        v9 = v35;
        v13 = v32;
        v12 = v33;
        v27 = v30;
        resolvedMomentNodes = v31;
      }

      else
      {
        v27 = filteredLocationNodes;
        v17 = [MEMORY[0x277CBEB98] setWithArray:filteredLocationNodes];
      }
    }

    else
    {
      v17 = [MEMORY[0x277CBEB98] set];
    }
  }

  else
  {
    v17 = [MEMORY[0x277CBEB98] set];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v17;
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
  v15 = [v13 isEqualToString:label];

  if (v15)
  {
    v16 = nodeCopy;
  }

  else
  {
    v16 = 0;
  }

  if (reverseCopy)
  {
    v17 = 4;
  }

  else
  {
    v17 = 9;
  }

  if (!v16 && dimension)
  {
    if (reverseCopy)
    {
      v18 = -1;
    }

    else
    {
      v18 = 1;
    }

    while (1)
    {
      if (reverseCopy)
      {
        v19 = dimension >= v17;
      }

      else
      {
        v19 = dimension <= v17;
      }

      if (!v19)
      {
LABEL_25:
        v16 = 0;
        goto LABEL_27;
      }

      v20 = [(PGGraphLegacyLocationHelper *)self locationNodeWithDimension:dimension rootNode:nodeCopy];
      if (v20)
      {
        break;
      }

      dimension += v18;
      if (v12)
      {
        v21 = dimension > v17;
        if (reverseCopy)
        {
          v21 = dimension < v17;
        }

        if (!v21)
        {
          dimension = v12[2](v12, dimension);
        }
      }

      if (!dimension)
      {
        goto LABEL_25;
      }
    }

    v16 = v20;
  }

LABEL_27:

  return v16;
}

- (id)locationNodeWithDimension:(unint64_t)dimension rootNode:(id)node
{
  nodeCopy = node;
  v6 = nodeCopy;
  if (dimension == 1)
  {
    locationNodeCollection = [nodeCopy locationNodeCollection];
    addressNodes = [locationNodeCollection addressNodes];
    areaNodes = [addressNodes areaNodes];
  }

  else
  {
    locationNodeCollection = [PGCommonTitleUtility locationLabelForDimension:dimension];
    if (!locationNodeCollection)
    {
      anyNode = 0;
      goto LABEL_9;
    }

    label = [v6 label];
    v11 = [label isEqualToString:locationNodeCollection];

    if (v11)
    {
      anyNode = v6;
      goto LABEL_9;
    }

    addressNodes = [v6 locationNodeCollection];
    areaNodes = [addressNodes nearestDeepParentLocationNodesWithLabel:locationNodeCollection];
  }

  v13 = areaNodes;
  anyNode = [areaNodes anyNode];

LABEL_9:

  return anyNode;
}

@end