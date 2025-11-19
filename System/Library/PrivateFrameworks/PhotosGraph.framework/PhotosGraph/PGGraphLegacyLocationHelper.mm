@interface PGGraphLegacyLocationHelper
- (BOOL)_locationNodesRepresentSameCity:(id)a3;
- (BOOL)locationIsInSupersetCategoryForLocationNode:(id)a3;
- (CLLocationCoordinate2D)_approximateCoordinateForLocationNode:(id)a3;
- (id)_closestLocationNodeFromLocationNode:(id)a3 withDimension:(unint64_t)a4 remapMatchingDimensionBlock:(id)a5 reverse:(BOOL)a6;
- (id)_commonNodeForLocationNode:(id)a3 andLocationNode:(id)a4;
- (id)_mostVisitedLocationNodeForLocationNodes:(id)a3;
- (id)_validLocationNodeForLocationNode:(id)a3 withLocationMask:(unint64_t)a4;
- (id)cityNodeFromAddressNode:(id)a3;
- (id)commonLocationNodeForRelevantLocationNodes:(id)a3 locationMask:(unint64_t)a4;
- (id)countryNodeFromAddressNode:(id)a3;
- (id)countyNodeFromCityNode:(id)a3;
- (id)densestCloseLocationNodeFromLocationNode:(id)a3 withDateInterval:(id)a4 locationMask:(unint64_t)a5;
- (id)districtNodeFromAddressNode:(id)a3;
- (id)locationNodeWithDimension:(unint64_t)a3 rootNode:(id)a4;
- (id)relevantLocationNodesForMomentNodes:(id)a3 applyDensestCloseLocationNode:(BOOL)a4;
@end

@implementation PGGraphLegacyLocationHelper

- (id)countyNodeFromCityNode:(id)a3
{
  v3 = [a3 collection];
  v4 = [v3 countyNodes];

  return v4;
}

- (id)countryNodeFromAddressNode:(id)a3
{
  v3 = [a3 collection];
  v4 = [v3 countryNodes];

  return v4;
}

- (id)cityNodeFromAddressNode:(id)a3
{
  v3 = [a3 collection];
  v4 = [v3 cityNodes];

  return v4;
}

- (id)districtNodeFromAddressNode:(id)a3
{
  v3 = [a3 collection];
  v4 = [v3 districtNodes];

  return v4;
}

- (id)_validLocationNodeForLocationNode:(id)a3 withLocationMask:(unint64_t)a4
{
  v5 = a3;
  if (([v5 locationMask] & a4) != 0)
  {
LABEL_7:
    v5 = v5;
    v11 = v5;
    goto LABEL_8;
  }

  while (1)
  {
    v6 = [v5 outEdgesCount];
    if (v6 == 1)
    {
      v8 = [v5 locationNodeCollection];
      v9 = [v8 parentLocationNodes];
      v10 = [v9 anyNode];

      v5 = v10;
      goto LABEL_6;
    }

    if (!v6)
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
    [v5 enumerateNeighborEdgesAndNodesThroughOutEdgesUsingBlock:v13];
    v7 = v15[5];

    _Block_object_dispose(&v14, 8);
    v5 = v7;
LABEL_6:
    if (([v5 locationMask] & a4) != 0)
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

- (CLLocationCoordinate2D)_approximateCoordinateForLocationNode:(id)a3
{
  v3 = a3;
  if ([v3 domain] != 200)
  {
    v14 = *MEMORY[0x277CE4278];
    v15 = *(MEMORY[0x277CE4278] + 8);
LABEL_12:

    goto LABEL_13;
  }

  v4 = [v3 locationMask];
  if (v3)
  {
    v5 = v4;
    while (1)
    {
      v6 = [v3 label];
      v7 = [v6 isEqualToString:@"Address"];

      if (v7)
      {
        break;
      }

      if (v5 < 0x10)
      {
        v11 = [v3 locationNodeCollection];
        v12 = [v11 parentLocationNodes];
        v13 = [v12 anyNode];

        v3 = v13;
        if (!v13)
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
        v8 = [v3 locationNodeCollection];
        v9 = [v8 childLocationNodes];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __69__PGGraphLegacyLocationHelper__approximateCoordinateForLocationNode___block_invoke;
        v20[3] = &unk_2788813B8;
        v20[4] = v27;
        v20[5] = &v21;
        [v9 enumerateIdentifiersAsCollectionsWithBlock:v20];

        v10 = v22[5];
        v5 >>= 1;
        _Block_object_dispose(&v21, 8);

        _Block_object_dispose(v27, 8);
        v3 = v10;
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    [v3 coordinate];
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

- (id)_commonNodeForLocationNode:(id)a3 andLocationNode:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 == v6)
  {
    v24 = v5;
  }

  else
  {
    v31 = 0;
    v32[0] = &v31;
    v32[1] = 0x3032000000;
    v32[2] = __Block_byref_object_copy__20105;
    v32[3] = __Block_byref_object_dispose__20106;
    v7 = v5;
    v33 = v7;
    v8 = [v7 label];
    v9 = [v8 isEqualToString:@"Address"];

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
    v10 = v6;
    v29 = v10;
    v11 = [v10 label];
    v12 = [v11 isEqualToString:@"Address"];

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
        v16 = [v13 locationMask];
        if (v16 <= [*(v28[0] + 40) locationMask])
        {
          v17 = [*(v32[0] + 40) locationNodeCollection];
          v18 = [v17 parentLocationNodes];
          v19 = [v18 anyNode];
          v20 = v32;
        }

        else
        {
          v17 = [*(v28[0] + 40) locationNodeCollection];
          v18 = [v17 parentLocationNodes];
          v19 = [v18 anyNode];
          v20 = v28;
        }

        v21 = *v20;
        v22 = *(v21 + 40);
        *(v21 + 40) = v19;

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

- (id)_mostVisitedLocationNodeForLocationNodes:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 anyObject];
  if ([v3 count] >= 2)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = v3;
    obj = v3;
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
          v11 = [v10 locationNodeCollection];
          v12 = [v11 addressNodes];
          v13 = [v12 momentNodes];
          v14 = [v13 count];

          if (v14 <= v7)
          {
            if (v14 != v7)
            {
              continue;
            }

            v16 = [v10 UUID];
            v17 = [v4 UUID];
            v18 = [v16 compare:v17];

            if (v18 != -1)
            {
              continue;
            }
          }

          v15 = v10;

          v7 = v14;
          v4 = v15;
        }

        v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v6);
    }

    v3 = v22;
  }

  v19 = v4;

  v20 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_locationNodesRepresentSameCity:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 anyObject];
  v6 = [v5 name];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v4;
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
        v13 = [v12 name];
        if (![v13 isEqualToString:v6])
        {
          LOBYTE(v15) = 0;
          v22 = v7;
          goto LABEL_33;
        }

        v14 = [v12 label];
        v15 = [v14 isEqualToString:@"City"];

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
  v13 = v7;
  v17 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
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
          objc_enumerationMutation(v13);
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
      v18 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
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

- (id)commonLocationNodeForRelevantLocationNodes:(id)a3 locationMask:(unint64_t)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 count] <= 1)
  {
    v7 = [v6 anyObject];
    goto LABEL_32;
  }

  if (![(PGGraphLegacyLocationHelper *)self _locationNodesRepresentSameCity:v6])
  {
    v9 = [v6 anyObject];
    v8 = [v9 graph];

    if ([v6 count] >= 3)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
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
            if (v13)
            {
              v17 = [(PGGraphLegacyLocationHelper *)self _commonNodeForLocationNode:v13 andLocationNode:v16, v32];

              v13 = v17;
              if (!v17)
              {
                goto LABEL_25;
              }
            }

            else
            {
              v13 = v16;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v12);

        if (v13)
        {
          v18 = [v13 label];
          if (([v18 isEqualToString:@"Country"] & 1) == 0)
          {

LABEL_38:
            v7 = [(PGGraphLegacyLocationHelper *)self _validLocationNodeForLocationNode:v13 withLocationMask:a4, v32];
            goto LABEL_36;
          }

          v19 = [v8 supersetCountryNodes];
          v20 = [v19 containsNode:v13];

          if (!v20)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
LABEL_25:

        v13 = 0;
      }

      goto LABEL_29;
    }

    if ([v6 count] != 2)
    {
LABEL_30:
      v7 = 0;
      goto LABEL_31;
    }

    v13 = [v6 allObjects];
    v21 = [v13 firstObject];
    v22 = [v13 lastObject];
    v23 = [(PGGraphLegacyLocationHelper *)self _commonNodeForLocationNode:v21 andLocationNode:v22];

    v24 = [v23 label];
    LODWORD(v22) = [v24 isEqualToString:@"State"];

    if (v22)
    {
      v25 = v23;
      if (!v25)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v26 = [v23 locationNodeCollection];
      v27 = [v26 nearestDeepParentLocationNodesWithLabel:@"State"];
      v25 = [v27 anyNode];

      if (!v25)
      {
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }
    }

    v28 = [v8 supersetStateNodes];
    v29 = [v28 containsNode:v25];

    if (!v29)
    {
      v7 = [(PGGraphLegacyLocationHelper *)self _validLocationNodeForLocationNode:v23 withLocationMask:a4];

LABEL_36:
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v8 = [(PGGraphLegacyLocationHelper *)self _mostVisitedLocationNodeForLocationNodes:v6];
  v7 = [(PGGraphLegacyLocationHelper *)self _validLocationNodeForLocationNode:v8 withLocationMask:a4];
LABEL_31:

LABEL_32:
  v30 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)densestCloseLocationNodeFromLocationNode:(id)a3 withDateInterval:(id)a4 locationMask:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 label];
  v11 = [v10 isEqualToString:@"Address"];

  if (!v11)
  {
LABEL_4:
    v15 = [v8 locationNodeCollection];
    v16 = [v15 parentLocationNodes];
    v17 = [v16 anyNode];

    if (!v17)
    {
      v24 = v8;
LABEL_20:

      goto LABEL_21;
    }

    v18 = [v17 locationNodeCollection];
    v19 = [v18 parentLocationNodes];
    v20 = [v19 anyNode];

    if (v20)
    {
      [(PGGraphLegacyLocationHelper *)self _approximateCoordinateForLocationNode:v8];
      latitude = v119.latitude;
      longitude = v119.longitude;
      v23 = CLLocationCoordinate2DIsValid(v119);
      v24 = v8;
      if (v23)
      {
        v56 = v20;
        v25 = [MEMORY[0x277CBEB38] dictionary];
        v26 = [MEMORY[0x277CBEB38] dictionary];
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
        v54 = v9;
        v102 = v9;
        v27 = v25;
        v103 = v27;
        v28 = v26;
        v104 = v28;
        v106 = v116;
        v107 = v115;
        v105 = v17;
        v108 = v117;
        v109 = v114;
        v110 = v113;
        [v20 enumerateNeighborNodesThroughInEdgesUsingBlock:v101];
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
        v36 = [v24 graph];
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
        v39 = v36;
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
          v45 = v37;
        }

        else
        {
          v43 = [v84[5] locationNodeCollection];
          v44 = [v43 parentLocationNodes];
          v45 = [v44 anyNode];

          v46 = [(PGGraphLegacyLocationHelper *)self _commonNodeForLocationNode:v37 andLocationNode:v45];
        }

LABEL_13:
        v47 = [(PGGraphLegacyLocationHelper *)self _validLocationNodeForLocationNode:v46 withLocationMask:a5, v51];
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

        v9 = v54;
        v20 = v56;
      }
    }

    else
    {
      v24 = v8;
    }

    goto LABEL_20;
  }

  v12 = [v8 locationNodeCollection];
  v13 = [v12 parentLocationNodes];
  v14 = [v13 anyNode];

  if (v14)
  {

    v8 = v14;
    goto LABEL_4;
  }

  v24 = [(PGGraphLegacyLocationHelper *)self _validLocationNodeForLocationNode:v8 withLocationMask:a5];
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

- (BOOL)locationIsInSupersetCategoryForLocationNode:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 label];
  v6 = [PGCommonTitleUtility dimensionForLabel:v5];

  v7 = [v4 graph];
  v8 = v7;
  v9 = 0;
  if (v6 > 5)
  {
    if (v6 > 7)
    {
      if (v6 == 8)
      {
        v12 = [v7 supersetStateNodes];
      }

      else
      {
        if (v6 != 9)
        {
          goto LABEL_16;
        }

        v12 = [v7 supersetCountryNodes];
      }
    }

    else
    {
      if (v6 == 6)
      {
        [v7 supersetCityNodes];
      }

      else
      {
        [v7 supersetCountyNodes];
      }
      v12 = ;
    }

    v9 = v12;
    goto LABEL_16;
  }

  if (v6 < 6)
  {
    v10 = +[PGLogging sharedLogging];
    v11 = [v10 loggingConnection];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[PGGraphLegacyLocationHelper locationIsInSupersetCategoryForLocationNode:]";
      *&buf[12] = 2048;
      *&buf[14] = v6;
      _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "%s called with unsupported dimension %lu", buf, 0x16u);
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
  v13 = v4;
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

- (id)relevantLocationNodesForMomentNodes:(id)a3 applyDensestCloseLocationNode:(BOOL)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 firstObject];
  v8 = [v7 graph];

  if (v8)
  {
    v9 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:v6 graph:v8];
    v10 = [(PGGraphMomentNodeCollection *)v9 addressNodes];
    v11 = [v10 temporarySet];

    if ([v11 count])
    {
      v12 = [[PGIncompleteLocationResolver alloc] initWithAddressNodes:v11 locationHelper:self];
      v13 = [[PGLocationsResolver alloc] initWithSortedMomentNodes:v6 incompleteLocationResolver:v12 locationHelper:self];
      v14 = [(PGLocationsResolver *)v13 resolvedMomentNodes];
      v39 = [(PGLocationsResolver *)v13 resolvedLocationNodes];
      v38 = [[PGLocationsFilterer alloc] initWithSortedMomentNodes:v14 locationNodes:v39 incompleteLocationResolver:v12];
      v15 = [(PGLocationsFilterer *)v38 filteredLocationNodes];
      if (a4)
      {
        v31 = v14;
        v32 = v13;
        v33 = v12;
        v34 = v11;
        v35 = v9;
        v36 = v8;
        v37 = v6;
        v16 = v15;
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
                v26 = [v25 loggingConnection];

                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v45 = v23;
                  _os_log_error_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_ERROR, "No densestLocationNode for locationNode %@", buf, 0xCu);
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v40 objects:v46 count:16];
          }

          while (v20);
        }

        v8 = v36;
        v6 = v37;
        v11 = v34;
        v9 = v35;
        v13 = v32;
        v12 = v33;
        v27 = v30;
        v14 = v31;
      }

      else
      {
        v27 = v15;
        v17 = [MEMORY[0x277CBEB98] setWithArray:v15];
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

- (id)_closestLocationNodeFromLocationNode:(id)a3 withDimension:(unint64_t)a4 remapMatchingDimensionBlock:(id)a5 reverse:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    a4 = (*(v11 + 2))(v11, a4);
  }

  v13 = [PGCommonTitleUtility locationLabelForDimension:a4];
  v14 = [v10 label];
  v15 = [v13 isEqualToString:v14];

  if (v15)
  {
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  if (v6)
  {
    v17 = 4;
  }

  else
  {
    v17 = 9;
  }

  if (!v16 && a4)
  {
    if (v6)
    {
      v18 = -1;
    }

    else
    {
      v18 = 1;
    }

    while (1)
    {
      if (v6)
      {
        v19 = a4 >= v17;
      }

      else
      {
        v19 = a4 <= v17;
      }

      if (!v19)
      {
LABEL_25:
        v16 = 0;
        goto LABEL_27;
      }

      v20 = [(PGGraphLegacyLocationHelper *)self locationNodeWithDimension:a4 rootNode:v10];
      if (v20)
      {
        break;
      }

      a4 += v18;
      if (v12)
      {
        v21 = a4 > v17;
        if (v6)
        {
          v21 = a4 < v17;
        }

        if (!v21)
        {
          a4 = v12[2](v12, a4);
        }
      }

      if (!a4)
      {
        goto LABEL_25;
      }
    }

    v16 = v20;
  }

LABEL_27:

  return v16;
}

- (id)locationNodeWithDimension:(unint64_t)a3 rootNode:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 1)
  {
    v7 = [v5 locationNodeCollection];
    v8 = [v7 addressNodes];
    v9 = [v8 areaNodes];
  }

  else
  {
    v7 = [PGCommonTitleUtility locationLabelForDimension:a3];
    if (!v7)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v10 = [v6 label];
    v11 = [v10 isEqualToString:v7];

    if (v11)
    {
      v12 = v6;
      goto LABEL_9;
    }

    v8 = [v6 locationNodeCollection];
    v9 = [v8 nearestDeepParentLocationNodesWithLabel:v7];
  }

  v13 = v9;
  v12 = [v9 anyNode];

LABEL_9:

  return v12;
}

@end