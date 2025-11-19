@interface PGLocationTitleUtility
+ (BOOL)_titleComponentsAreInSameSupersetCity:(id)a3 graph:(id)a4 locationHelper:(id)a5;
+ (BOOL)containsAmusementParkPOIFromMomentNodes:(id)a3;
+ (double)_weightForAreaNode:(id)a3 withAddressNodes:(id)a4;
+ (id)_aoiSubsetsFromAOI:(id)a3 idx:(unint64_t)a4 currentSubset:(id)a5 subsetSize:(unint64_t)a6;
+ (id)_aoiSubsetsFromAOI:(id)a3 maxSubsetSize:(unint64_t)a4;
+ (id)_beautifiedLocationStringWithTitleComponents:(id)a3 momentNodes:(id)a4 lineBreakBehavior:(unint64_t)a5 keyAssetAddressNode:(id)a6 curationAddressNodes:(id)a7 isMatchingKeyAsset:(BOOL *)a8 useDistrict:(BOOL)a9 allowFamilyHome:(BOOL)a10 showAllCities:(BOOL)a11 locationHelper:(id)a12 serviceManager:(id)a13;
+ (id)_commonCityTitleComponentsFromMomentNodes:(id)a3 remainingAddressNodes:(id)a4 ignoredAddressNodes:(id)a5 incompleteLocationResolver:(id)a6 locationHelper:(id)a7;
+ (id)_filteredAOINodeCombinationsForCombinations:(id)a3 minSize:(unint64_t)a4 maxSize:(unint64_t)a5 maxTitleLength:(unint64_t)a6 minNumberOfAssets:(unint64_t)a7 aoiNodesToAddressNodesMapTable:(id)a8 assetCountByAddressNodeIdentifier:(id)a9 locationHelper:(id)a10;
+ (id)_filteredAOINodesForAddressNodes:(id)a3 aoiTitleMaximumLength:(unint64_t)a4 locationHelper:(id)a5;
+ (id)_filteredAddressNodesWithAddressNodes:(id)a3 momentNodes:(id)a4 incompleteLocationResolver:(id)a5 filterSignificantLocationsOption:(unint64_t)a6 locationHelper:(id)a7;
+ (id)_firstComponentInTimeFromComponents:(id)a3 momentNodes:(id)a4 curationAddressNodes:(id)a5 allowFamilyHome:(BOOL)a6 serviceManager:(id)a7;
+ (id)_localizedStringForMultipleLocationsWithFirstComponentForTitle:(id)a3 secondComponentForTitle:(id)a4 firstLocation:(id)a5 otherLocation:(id)a6;
+ (id)_localizedStringForTwoLocationsWithFirstComponentForTitle:(id)a3 secondComponentForTitle:(id)a4 firstLocation:(id)a5 otherLocation:(id)a6;
+ (id)_locationStringWithDistrictsFromTitleComponents:(id)a3 momentNodes:(id)a4 lineBreakBehavior:(unint64_t)a5 allowFamilyHome:(BOOL)a6 locationHelper:(id)a7 serviceManager:(id)a8;
+ (id)_peopleLocationFromAddressNode:(id)a3 serviceManager:(id)a4;
+ (id)_sortedAOINodeCombinationsForCombinations:(id)a3 aoiNodesToAddressNodesMapTable:(id)a4 assetCountByAddressNodeIdentifier:(id)a5 locationHelper:(id)a6;
+ (id)_sortedComponentsFromComponents:(id)a3;
+ (id)_titleWithLineBreakBehavior:(unint64_t)a3 forTitle:(id)a4 titleComponents:(id)a5;
+ (id)_twoPartLocationTitleWithFirstPartTitle:(id)a3 withDimension:(unint64_t)a4 usedFirstPartLocationNode:(id)a5 addressNode:(id)a6 locationHelper:(id)a7;
+ (id)beautifiedLocationNodeStringWithPlaceNode:(id)a3 locationHelper:(id)a4;
+ (id)businessNodeForTitlingFromMomentNodes:(id)a3 businessNodesByMomentNode:(id)a4;
+ (id)commonAOIComponentsForMomentNodes:(id)a3 addressNodes:(id)a4 aoiDisplayType:(unint64_t)a5 containsAmusementParkPOI:(BOOL)a6 locationHelper:(id)a7;
+ (id)commonCityTitleComponentsFromMomentNodes:(id)a3 addressNodes:(id)a4 incompleteLocationResolver:(id)a5 locationHelper:(id)a6;
+ (id)peopleLocationTitleComponentsFromAddressNodes:(id)a3 peopleDisplayType:(unint64_t)a4 serviceManager:(id)a5;
+ (id)peopleLocationTitleComponentsFromAddressNodesSet:(id)a3 peopleDisplayType:(unint64_t)a4 serviceManager:(id)a5;
+ (void)generateBusinessItemLocationWithOptions:(id)a3 result:(id)a4;
+ (void)generateHighlightLocationTitleForTripWithMomentNodes:(id)a3 lineBreakBehavior:(unint64_t)a4 locationHelper:(id)a5 result:(id)a6;
+ (void)generateLocationTitleForTripWithMomentNodes:(id)a3 locationHelper:(id)a4 result:(id)a5;
+ (void)generateLocationTitleWithOptions:(id)a3 locationHelper:(id)a4 serviceManager:(id)a5 result:(id)a6;
@end

@implementation PGLocationTitleUtility

+ (id)_peopleLocationFromAddressNode:(id)a3 serviceManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__67482;
  v30 = __Block_byref_object_dispose__67483;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__67482;
  v24 = __Block_byref_object_dispose__67483;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __72__PGLocationTitleUtility__peopleLocationFromAddressNode_serviceManager___block_invoke;
  v13 = &unk_2788897B8;
  v7 = v6;
  v14 = v7;
  v15 = &v26;
  v16 = &v20;
  v17 = v18;
  [v5 enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:@"IS_HOME_WORK" domain:202 usingBlock:&v10];
  if (v21[5] && v27[5])
  {
    v8 = objc_alloc_init(PGLocationTitleComponent);
    [(PGLocationTitleComponent *)v8 setNode:v21[5], v10, v11, v12, v13];
    [(PGLocationTitleComponent *)v8 setEdge:v27[5]];
    [(PGLocationTitleComponent *)v8 addAddressNode:v5];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v8;
}

void __72__PGLocationTitleUtility__peopleLocationFromAddressNode_serviceManager___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__PGLocationTitleUtility__peopleLocationFromAddressNode_serviceManager___block_invoke_2;
  v12[3] = &unk_278889790;
  v13 = *(a1 + 32);
  v14 = v8;
  v16 = *(a1 + 40);
  v9 = *(a1 + 56);
  v15 = v7;
  v17 = v9;
  v18 = a4;
  v10 = v7;
  v11 = v8;
  [v11 enumerateNeighborNodesThroughEdgesWithLabel:@"IS_OWNED_BY" domain:202 usingBlock:v12];
}

void __72__PGLocationTitleUtility__peopleLocationFromAddressNode_serviceManager___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v18 = v6;
  v8 = [PGPeopleTitleUtility nameFromPersonNode:"nameFromPersonNode:serviceManager:" serviceManager:?];
  if ([v8 length])
  {
    v9 = [v18 isMeNode];
    v10 = [*(a1 + 40) label];
    v11 = [v10 isEqualToString:@"Home"];

    v12 = [*(*(*(a1 + 56) + 8) + 40) targetNode];
    v13 = [v12 label];
    v14 = [v13 isEqualToString:@"Home"];

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      *(*(*(a1 + 72) + 8) + 24) = 1;
      v15 = *(*(a1 + 56) + 8);
      v17 = *(v15 + 40);
      v16 = (v15 + 40);
      if (!v17 || ((v14 | v11 ^ 1) & 1) == 0)
      {
        objc_storeStrong(v16, *(a1 + 48));
        if (v11)
        {
          **(a1 + 80) = 1;
          *a3 = 1;
        }
      }
    }

    else if (((*(*(*(a1 + 72) + 8) + 24) == 0) & v11) == 1 && !*(*(*(a1 + 56) + 8) + 40))
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 48));
    }
  }
}

+ (id)peopleLocationTitleComponentsFromAddressNodesSet:(id)a3 peopleDisplayType:(unint64_t)a4 serviceManager:(id)a5
{
  v22 = a4;
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v25 = a5;
  v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v31;
    obj = v8;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [a1 _peopleLocationFromAddressNode:*(*(&v30 + 1) + 8 * i) serviceManager:{v25, v22}];
        if (v14)
        {
          ++v11;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v15 = v24;
          v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v27;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v27 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                if ([*(*(&v26 + 1) + 8 * j) canMergeWithTitleComponent:v14])
                {

                  goto LABEL_17;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          [v15 addObject:v14];
        }

LABEL_17:
      }

      v8 = obj;
      v10 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if (v22 == 2 && [v8 count] && v11 != objc_msgSend(v8, "count"))
  {
    [v24 removeAllObjects];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)peopleLocationTitleComponentsFromAddressNodes:(id)a3 peopleDisplayType:(unint64_t)a4 serviceManager:(id)a5
{
  v7 = a5;
  v8 = [a3 set];
  v9 = [PGLocationTitleUtility peopleLocationTitleComponentsFromAddressNodesSet:v8 peopleDisplayType:a4 serviceManager:v7];

  return v9;
}

+ (id)beautifiedLocationNodeStringWithPlaceNode:(id)a3 locationHelper:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 name];
  v8 = v7;
  if (v7)
  {
    if ([v7 length])
    {
      v9 = [v5 label];
      v10 = [v9 isEqualToString:@"Country"];

      if (!v10)
      {
        if (([v5 supportsNameShortening] & 1) == 0 || (+[PGAOINameShortener shortenedAOIForLocationOrAreaNode:locationHelper:](PGAOINameShortener, "shortenedAOIForLocationOrAreaNode:locationHelper:", v5, v6), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v16 = v8;
        }

        goto LABEL_17;
      }

      v11 = v8;
      v12 = shouldLocationRemoveParenthesesForCountryCode(v11);
      v13 = [MEMORY[0x277CBEAF8] currentLocale];
      v14 = [v13 localizedStringForCountryCode:v11];
      v15 = v14;
      if (v14 && [v14 length])
      {
        v16 = v15;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v21 = 138412290;
          v22 = v11;
          _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not find name for country code %@", &v21, 0xCu);
        }

        v16 = 0;
      }

      if (!v16)
      {
        v16 = v11;
        v17 = v16;
        if ((v12 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v17 = v16;
      if (v12)
      {
LABEL_17:
        v17 = [v16 pg_stringByRemovingParentheses];

        v16 = v17;
      }
    }

    else
    {
      v17 = 0;
      v16 = v8;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

LABEL_18:
  v18 = v16;

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)_twoPartLocationTitleWithFirstPartTitle:(id)a3 withDimension:(unint64_t)a4 usedFirstPartLocationNode:(id)a5 addressNode:(id)a6 locationHelper:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (a4 - 10 < 0xFFFFFFFFFFFFFFF7)
  {
    v16 = v12;
    goto LABEL_15;
  }

  v17 = 0;
  v18 = 0;
  do
  {
    v19 = v18;
    v18 = [v15 closestLocationNodeFromLocationNode:v14 withDimension:a4 remapMatchingDimensionBlock:&__block_literal_global_433];

    if (v18)
    {
      v20 = [a1 beautifiedLocationNodeStringWithPlaceNode:v18 locationHelper:v15];

      v21 = [v13 name];
      v22 = [v20 isEqualToString:v21];

      v17 = v20;
      if (!v22)
      {
        break;
      }
    }

    ++a4;
  }

  while (a4 != 10);
  if (![v17 length])
  {
    v25 = v12;
    goto LABEL_13;
  }

  v16 = 0;
  if ([v12 rangeOfString:v17 options:0] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v12 length])
    {
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"PGLocationTitleFormatTwoPartWithFirstLocation %@ secondLocation %@ invisibleSeparator %@" value:@"PGLocationTitleFormatTwoPartWithFirstLocation %@ secondLocation %@ invisibleSeparator %@" table:@"Localizable"];

      v16 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v24, v12, v17, @"\n"];

      goto LABEL_14;
    }

    v25 = v17;
LABEL_13:
    v16 = v25;
  }

LABEL_14:

LABEL_15:

  return v16;
}

uint64_t __133__PGLocationTitleUtility__twoPartLocationTitleWithFirstPartTitle_withDimension_usedFirstPartLocationNode_addressNode_locationHelper___block_invoke(uint64_t a1, uint64_t a2)
{
  result = a2;
  v3 = a2 - 2;
  if (a2 - 2) <= 5 && ((0x2Bu >> v3))
  {
    return qword_22F78CE50[v3];
  }

  return result;
}

+ (id)_titleWithLineBreakBehavior:(unint64_t)a3 forTitle:(id)a4 titleComponents:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  if ((v6 & 2) != 0)
  {
    v10 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];

    v9 = [PGCommonTitleUtility titleWithNoLineBreakSpaceForTitle:v10 andUsedNames:v8];
    v7 = v10;
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    v9 = [PGCommonTitleUtility titleWithLineBreakForTitle:v7 andUsedNames:v8];
  }

  v7 = v9;
LABEL_6:

  return v7;
}

+ (id)_sortedComponentsFromComponents:(id)a3
{
  v3 = [a3 allObjects];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_67521];

  return v4;
}

uint64_t __58__PGLocationTitleUtility__sortedComponentsFromComponents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 weight];
  v7 = v6;
  [v5 weight];
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      v9 = 1;
      goto LABEL_39;
    }

    v10 = [v4 node];
    v11 = [v5 node];
    v12 = [v10 domain];
    v13 = [v11 domain];
    if (v12 == 300 && v13 != 300)
    {
      goto LABEL_8;
    }

    if (v13 != 300 && v12 == 300)
    {
      goto LABEL_11;
    }

    if (v12 == 300 && v13 == 300)
    {
      v14 = [v10 graph];
      v15 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v14];

      v16 = [v15 containsNode:v10];
      v17 = [v15 containsNode:v11];
      if (v16 && !v17)
      {
        v9 = -1;
LABEL_37:

        goto LABEL_38;
      }

      v18 = v17 ^ 1;
      if (((v16 | v17 ^ 1) & 1) == 0)
      {
        goto LABEL_36;
      }

      if (!v16)
      {
        v18 = v17;
      }

      if ((v18 & 1) == 0)
      {
        v24 = [v4 edge];
        v23 = [v24 targetNode];

        v25 = [v5 edge];
        v26 = [v25 targetNode];

        v27 = [v23 label];
        v28 = [v27 isEqualToString:@"Home"];

        v29 = [v26 label];
        v30 = [v29 isEqualToString:@"Home"];

        if (v28 && (v30 & 1) == 0)
        {

          goto LABEL_33;
        }

        if (!(v28 & 1 | ((v30 & 1) == 0)))
        {
LABEL_36:
          v9 = 1;
          goto LABEL_37;
        }
      }
    }

    [v4 timestampStart];
    v20 = v19;
    [v5 timestampStart];
    if (v20 < v21)
    {
LABEL_8:
      v9 = -1;
LABEL_38:

      goto LABEL_39;
    }

    if (v20 > v21)
    {
LABEL_11:
      v9 = 1;
      goto LABEL_38;
    }

    v15 = [v10 name];
    v22 = [v11 name];
    v23 = v22;
    if (!v15 && v22)
    {
      v15 = 0;
      v9 = 1;
LABEL_34:

      goto LABEL_37;
    }

    if (!v15 || v22)
    {
      v9 = [v15 localizedCompare:v22];
      goto LABEL_34;
    }

LABEL_33:
    v9 = -1;
    goto LABEL_34;
  }

  v9 = -1;
LABEL_39:

  return v9;
}

+ (id)_firstComponentInTimeFromComponents:(id)a3 momentNodes:(id)a4 curationAddressNodes:(id)a5 allowFamilyHome:(BOOL)a6 serviceManager:(id)a7
{
  v52 = a6;
  v81 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v59 = a4;
  v11 = a5;
  v55 = a7;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__67482;
  v78 = __Block_byref_object_dispose__67483;
  v79 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0x7FEFFFFFFFFFFFFFLL;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0xFFEFFFFFFFFFFFFFLL;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v62 objects:v80 count:16];
  if (v12)
  {
    v58 = *v63;
    do
    {
      v60 = v12;
      for (i = 0; i != v60; ++i)
      {
        if (*v63 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v62 + 1) + 8 * i);
        [v14 updateWithMomentNodes:v59];
        if ([v11 count])
        {
          v15 = [v14 addressNodes];
          v16 = [v15 intersectsSet:v11];

          if ((v16 & 1) == 0)
          {
            continue;
          }
        }

        [v14 timestampStart];
        v18 = v17;
        [v14 weight];
        v20 = v19;
        v21 = [v14 node];
        v22 = [v21 name];

        if (![v22 length])
        {
          goto LABEL_14;
        }

        if (!v75[5] || (v23 = v71[3], v23 > v18))
        {
          v24 = 1;
          goto LABEL_15;
        }

        if (v23 == v18)
        {
          v24 = v67[3] < v20;
        }

        else
        {
LABEL_14:
          v24 = 0;
        }

LABEL_15:
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __126__PGLocationTitleUtility__firstComponentInTimeFromComponents_momentNodes_curationAddressNodes_allowFamilyHome_serviceManager___block_invoke;
        aBlock[3] = &unk_278889700;
        *&aBlock[8] = v18;
        *&aBlock[9] = v20;
        aBlock[6] = &v66;
        aBlock[7] = &v74;
        aBlock[4] = v14;
        aBlock[5] = &v70;
        v25 = _Block_copy(aBlock);
        v26 = v25;
        if (v24)
        {
          v25[2](v25);
LABEL_39:

          continue;
        }

        v27 = v75[5];
        if (!v27 || v71[3] != v18 || v67[3] != v20)
        {
          goto LABEL_39;
        }

        v28 = [v27 node];
        v29 = [v28 domain];

        v30 = [v14 node];
        v31 = [v30 domain];

        if (v29 != 300 && v31 == 300)
        {
          v26[2](v26);
          goto LABEL_39;
        }

        if (v29 == 300 && v31 == 300)
        {
          v32 = [v14 node];
          v33 = [v32 graph];
          v34 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v33];

          v35 = [v14 node];
          v36 = [v34 containsNode:v35];

          if (v36)
          {
            goto LABEL_24;
          }

          v38 = [v75[5] edge];
          v39 = [v38 targetNode];

          v40 = [v14 edge];
          v56 = [v40 targetNode];

          v41 = [v39 label];
          v42 = [v41 isEqualToString:@"Home"];

          v43 = [v56 label];
          v44 = [v43 isEqualToString:@"Home"];

          if (v42 & 1 | ((v44 & 1) == 0))
          {
            if (v42 == v44)
            {
              v53 = [v75[5] node];
              v45 = [v75[5] edge];
              v46 = [PGPeopleTitleUtility beautifiedLocationStringWithPersonNode:v53 peopleAddressEdge:v45 titleComponent:v75[5] insertLineBreak:0 allowFamilyHome:v52 serviceManager:v55];

              v54 = [v14 node];
              v47 = [v14 edge];
              v48 = [PGPeopleTitleUtility beautifiedLocationStringWithPersonNode:v54 peopleAddressEdge:v47 titleComponent:v14 insertLineBreak:0 allowFamilyHome:v52 serviceManager:v55];

              if ([v48 length] && (!objc_msgSend(v46, "length") || objc_msgSend(v46, "localizedCompare:", v48) == 1))
              {
                v26[2](v26);
              }
            }
          }

          else
          {
            v26[2](v26);
          }
        }

        else
        {
          if (v29 == 300)
          {
            goto LABEL_39;
          }

          v37 = [v75[5] node];
          v34 = [v37 name];

          if ([v34 localizedCompare:v22] == 1)
          {
LABEL_24:
            v26[2](v26);
          }
        }

        goto LABEL_39;
      }

      v12 = [obj countByEnumeratingWithState:&v62 objects:v80 count:16];
    }

    while (v12);
  }

  v49 = v75[5];
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);

  v50 = *MEMORY[0x277D85DE8];

  return v49;
}

void __126__PGLocationTitleUtility__firstComponentInTimeFromComponents_momentNodes_curationAddressNodes_allowFamilyHome_serviceManager___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(a1 + 64);
  *(*(*(a1 + 48) + 8) + 24) = *(a1 + 72);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
}

+ (BOOL)_titleComponentsAreInSameSupersetCity:(id)a3 graph:(id)a4 locationHelper:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v30 = a5;
  if ([v7 count])
  {
    v9 = [MEMORY[0x277CBEB58] set];
    v10 = [v8 supersetCityNodes];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      v28 = v8;
      v29 = v7;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v17 = [v16 node];
          v18 = [v17 label];
          v19 = [v18 isEqualToString:@"City"];

          if (v19)
          {
            v20 = v17;
          }

          else
          {
            if ([v17 domain] != 300)
            {
              goto LABEL_16;
            }

            v21 = [v16 edge];
            v22 = [v21 sourceNode];

            v23 = [v30 cityNodeFromAddressNode:v22];
            v20 = [v23 anyNode];

            if (!v20)
            {
LABEL_16:

LABEL_17:
              v25 = 0;
              v8 = v28;
              v7 = v29;
              goto LABEL_18;
            }
          }

          [v9 addObject:v20];
          v24 = [v10 containsNode:v20];

          if (!v24)
          {
            goto LABEL_17;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
        v8 = v28;
        v7 = v29;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v25 = [v9 count] == 1;
LABEL_18:
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (id)_locationStringWithDistrictsFromTitleComponents:(id)a3 momentNodes:(id)a4 lineBreakBehavior:(unint64_t)a5 allowFamilyHome:(BOOL)a6 locationHelper:(id)a7 serviceManager:(id)a8
{
  v91 = a6;
  v145 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v103 = a4;
  v105 = a7;
  v93 = a8;
  v135 = 0;
  v136 = &v135;
  v137 = 0x2020000000;
  v138 = 0;
  v131 = 0;
  v132 = &v131;
  v133 = 0x2020000000;
  v134 = 0x7FFFFFFFFFFFFFFFLL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __150__PGLocationTitleUtility__locationStringWithDistrictsFromTitleComponents_momentNodes_lineBreakBehavior_allowFamilyHome_locationHelper_serviceManager___block_invoke;
  aBlock[3] = &unk_2788896D8;
  aBlock[4] = &v135;
  aBlock[5] = &v131;
  v102 = _Block_copy(aBlock);
  v94 = [MEMORY[0x277CBEB58] set];
  v104 = [MEMORY[0x277CBEB38] dictionary];
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v126 objects:v144 count:16];
  v13 = 0;
  if (v12)
  {
    v98 = *v127;
LABEL_3:
    v96 = v12;
    v14 = 0;
    while (1)
    {
      if (*v127 != v98)
      {
        objc_enumerationMutation(obj);
      }

      if (v136[3])
      {
        break;
      }

      v15 = *(*(&v126 + 1) + 8 * v14);
      v100 = [v15 node];
      v16 = [v100 label];
      v17 = [v16 isEqualToString:@"City"];

      if (v17)
      {
        v18 = [v100 collection];
        v102[2](v102, v18);

        if (v136[3])
        {
          goto LABEL_36;
        }

        v19 = [v15 addressNodes];
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v122 objects:v143 count:16];
        if (v21)
        {
          v22 = *v123;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v123 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v122 + 1) + 8 * i);
              v25 = [v105 districtNodeFromAddressNode:v24];
              v26 = [v25 anyNode];

              if (!v26)
              {
                *(v136 + 24) = 1;
                goto LABEL_31;
              }

              v27 = [v104 objectForKeyedSubscript:v26];
              if (!v27)
              {
                v27 = objc_alloc_init(PGLocationTitleComponent);
                [(PGLocationTitleComponent *)v27 setNode:v26];
                [v104 setObject:v27 forKeyedSubscript:v26];
              }

              [(PGLocationTitleComponent *)v27 addAddressNode:v24];

              v13 = 1;
            }

            v21 = [v20 countByEnumeratingWithState:&v122 objects:v143 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

LABEL_31:
      }

      else
      {
        v28 = [v15 addressNodes];
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v20 = v28;
        v29 = [v20 countByEnumeratingWithState:&v118 objects:v142 count:16];
        if (v29)
        {
          v30 = *v119;
LABEL_22:
          v31 = 0;
          while (1)
          {
            if (*v119 != v30)
            {
              objc_enumerationMutation(v20);
            }

            v32 = [v105 cityNodeFromAddressNode:*(*(&v118 + 1) + 8 * v31)];
            v102[2](v102, v32);
            v33 = *(v136 + 24);

            if (v33)
            {
              break;
            }

            if (v29 == ++v31)
            {
              v29 = [v20 countByEnumeratingWithState:&v118 objects:v142 count:16];
              if (v29)
              {
                goto LABEL_22;
              }

              break;
            }
          }
        }

        if (*(v136 + 24) == 1)
        {

LABEL_36:
          break;
        }

        [v94 addObject:v15];
      }

      if (++v14 == v96)
      {
        v12 = [obj countByEnumeratingWithState:&v126 objects:v144 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v34 = v136;
  v35 = *(v136 + 24) | ~v13;
  *(v136 + 24) = v136[3] & 1 | ((v13 & 1) == 0);
  if (v35)
  {
    v36 = 0;
    *(v34 + 24) = 1;
    goto LABEL_106;
  }

  v37 = v132[3] == 0x7FFFFFFFFFFFFFFFLL;
  *(v34 + 24) = v37;
  if (v37)
  {
    v36 = 0;
    goto LABEL_106;
  }

  v38 = [v103 anyObject];
  v39 = [v38 graph];
  v87 = [v39 nodeForIdentifier:v132[3]];

  v88 = [a1 beautifiedLocationNodeStringWithPlaceNode:v87 locationHelper:v105];
  if (![v88 length])
  {
    v36 = 0;
    goto LABEL_105;
  }

  v40 = [v104 allValues];
  [v94 addObjectsFromArray:v40];

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v41 = v94;
  v42 = [v41 countByEnumeratingWithState:&v114 objects:v141 count:16];
  if (v42)
  {
    v43 = *v115;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v115 != v43)
        {
          objc_enumerationMutation(v41);
        }

        [*(*(&v114 + 1) + 8 * j) updateWithMomentNodes:v103];
      }

      v42 = [v41 countByEnumeratingWithState:&v114 objects:v141 count:16];
    }

    while (v42);
  }

  v45 = [a1 _firstComponentInTimeFromComponents:v41 momentNodes:v103 curationAddressNodes:0 allowFamilyHome:v91 serviceManager:v93];
  v86 = v45;
  if (!v45)
  {
    v36 = 0;
    goto LABEL_104;
  }

  v46 = [MEMORY[0x277CBEB18] arrayWithObject:v45];
  if ([v41 count] >= 2)
  {
    v47 = [v41 mutableCopy];
    [v47 removeObject:v86];
    v48 = [a1 _sortedComponentsFromComponents:v47];
    [v46 addObjectsFromArray:v48];
  }

  v101 = [MEMORY[0x277CBEB18] array];
  v97 = [MEMORY[0x277CBEB18] array];
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v99 = v46;
  v49 = [v99 countByEnumeratingWithState:&v110 objects:v140 count:16];
  if (!v49)
  {
    goto LABEL_73;
  }

  v50 = *v111;
  while (2)
  {
    for (k = 0; k != v49; ++k)
    {
      if (*v111 != v50)
      {
        objc_enumerationMutation(v99);
      }

      v52 = *(*(&v110 + 1) + 8 * k);
      v53 = [v52 node];
      if ([v53 domain] == 300)
      {
        v54 = [v52 edge];
        v55 = [PGPeopleTitleUtility beautifiedLocationStringWithPersonNode:v53 peopleAddressEdge:v54 titleComponent:v52 insertLineBreak:a5 & 1 allowFamilyHome:v91 serviceManager:v93];

        if (!v55 || ([v101 containsObject:v55] & 1) != 0)
        {
          goto LABEL_66;
        }

LABEL_65:
        [v101 addObject:v55];
        [v97 addObject:v52];
        goto LABEL_66;
      }

      v56 = [v53 label];
      v57 = [v56 isEqualToString:@"District"];

      if (!v57)
      {
        goto LABEL_67;
      }

      v55 = [a1 beautifiedLocationNodeStringWithPlaceNode:v53 locationHelper:v105];
      if (![v55 length])
      {
        *(v136 + 24) = 1;

        goto LABEL_73;
      }

      if (([v101 containsObject:v55] & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_66:

LABEL_67:
    }

    v49 = [v99 countByEnumeratingWithState:&v110 objects:v140 count:16];
    if (v49)
    {
      continue;
    }

    break;
  }

LABEL_73:

  if (v136[3])
  {
    v36 = 0;
    goto LABEL_103;
  }

  v58 = [v88 componentsSeparatedByString:@" "];
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v92 = v101;
  v59 = [v92 countByEnumeratingWithState:&v106 objects:v139 count:16];
  if (v59)
  {
    v60 = *v107;
    while (2)
    {
      v61 = v59;
      for (m = 0; m != v61; ++m)
      {
        if (*v107 != v60)
        {
          objc_enumerationMutation(v92);
        }

        v63 = [*(*(&v106 + 1) + 8 * m) componentsSeparatedByString:@" "];
        v64 = [v63 count];
        v65 = [v58 count];
        v66 = v64 - v65;
        if (v64 >= v65)
        {
          v67 = 0;
          while (1)
          {
            v68 = [v63 subarrayWithRange:{v67, v65}];
            v69 = [v68 isEqualToArray:v58];

            if (v69)
            {
              break;
            }

            if (++v67 > v66)
            {
              goto LABEL_84;
            }
          }

          v36 = 0;
          v75 = v92;
          goto LABEL_100;
        }

LABEL_84:
      }

      v59 = [v92 countByEnumeratingWithState:&v106 objects:v139 count:16];
      if (v59)
      {
        continue;
      }

      break;
    }
  }

  v70 = [v92 count];
  if (v70 != 2)
  {
    if (v70 == 1)
    {
      v71 = MEMORY[0x277CCACA8];
      v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v73 = [v72 localizedStringForKey:@"PGLocationTitleFormatOneDistrict %@ city %@" value:@"PGLocationTitleFormatOneDistrict %@ city %@" table:@"Localizable"];
      v74 = [v92 firstObject];
      v75 = [v71 localizedStringWithFormat:v73, v74, v88];
      goto LABEL_98;
    }

    goto LABEL_101;
  }

  v72 = [v92 firstObject];
  v73 = [v92 lastObject];
  v76 = [v97 firstObject];
  v77 = [v76 type];

  v78 = [v97 lastObject];
  v79 = [v78 type];

  if (v77 || v79 != 1)
  {
    v83 = MEMORY[0x277CCACA8];
    if (v77 != 1 || v79)
    {
      v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v81 = [v74 localizedStringForKey:@"PGLocationTitleFormatDistrict %@ otherDistrict %@ inCity %@" value:@"PGLocationTitleFormatDistrict %@ otherDistrict %@ inCity %@" table:@"Localizable"];
      v82 = [v83 localizedStringWithFormat:v81, v72, v73, v88];
    }

    else
    {
      v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v81 = [v74 localizedStringForKey:@"PGLocationTitleFormatHomeAndDistrict %@ inCity %@" value:@"PGLocationTitleFormatHomeAndDistrict %@ inCity %@" table:@"Localizable"];
      v82 = [v83 localizedStringWithFormat:v81, v73, v88];
    }
  }

  else
  {
    v80 = MEMORY[0x277CCACA8];
    v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v81 = [v74 localizedStringForKey:@"PGLocationTitleFormatDistrict %@ andHomeInCity %@" value:@"PGLocationTitleFormatDistrict %@ andHomeInCity %@" table:@"Localizable"];
    v82 = [v80 localizedStringWithFormat:v81, v72, v88];
  }

  v75 = v82;

LABEL_98:
  if (v75)
  {
    [v92 addObject:v88];
    v36 = [a1 _titleWithLineBreakBehavior:a5 forTitle:v75 titleComponents:v92];
LABEL_100:
  }

  else
  {
LABEL_101:
    v36 = 0;
  }

LABEL_103:
LABEL_104:

LABEL_105:
LABEL_106:

  _Block_object_dispose(&v131, 8);
  _Block_object_dispose(&v135, 8);

  v84 = *MEMORY[0x277D85DE8];

  return v36;
}

void __150__PGLocationTitleUtility__locationStringWithDistrictsFromTitleComponents_momentNodes_lineBreakBehavior_allowFamilyHome_locationHelper_serviceManager___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 count])
  {
    v3 = [v8 elementIdentifiers];
    v4 = [v3 firstElement];

    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 24);
    v7 = v8;
    if (v4 != v6)
    {
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v5 + 24) = v4;
      }

      else
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v7 = v8;
  }
}

+ (id)_localizedStringForMultipleLocationsWithFirstComponentForTitle:(id)a3 secondComponentForTitle:(id)a4 firstLocation:(id)a5 otherLocation:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 type];
  v14 = [v10 type];
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      if (v13 == 3)
      {
        if (v14 <= 1)
        {
          if (!v14)
          {
            v22 = MEMORY[0x277CCACA8];
            v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatMultipleLocationsWithSomeonesHome %@ andLocation %@" value:@"PGLocationTitleFormatMultipleLocationsWithSomeonesHome %@ andLocation %@" table:@"Localizable"];
            v42 = [v9 personName];
            v35 = v42;
            v47 = v12;
LABEL_69:
            [v22 localizedStringWithFormat:v32, v42, v47];
            goto LABEL_70;
          }

          if (v14 != 1)
          {
            goto LABEL_78;
          }

          v22 = MEMORY[0x277CCACA8];
          v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v23;
          v24 = @"PGLocationTitleFormatMultipleLocationsWithSomeonesHome %@ andHome";
        }

        else
        {
          switch(v14)
          {
            case 2:
              v22 = MEMORY[0x277CCACA8];
              v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v20 = v23;
              v24 = @"PGLocationTitleFormatMultipleLocationsWithSomeonesHome %@ andWork";
              break;
            case 3:
              v34 = MEMORY[0x277CCACA8];
              v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatMultipleLocationsWithSomeonesHome %@ andAnothersHome %@" value:@"PGLocationTitleFormatMultipleLocationsWithSomeonesHome %@ andAnothersHome %@" table:@"Localizable"];
              v35 = [v9 personName];
              v36 = [v10 personName];
              v37 = [v34 localizedStringWithFormat:v32, v35, v36];

LABEL_71:
LABEL_76:

LABEL_77:
              if (v37)
              {
                goto LABEL_79;
              }

              goto LABEL_78;
            case 4:
              v22 = MEMORY[0x277CCACA8];
              v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v20 = v23;
              v24 = @"PGLocationTitleFormatMultipleLocationsWithSomeonesHome %@ andFamilyHome";
              break;
            default:
              goto LABEL_78;
          }
        }

        v32 = [v23 localizedStringForKey:v24 value:v24 table:@"Localizable"];
        v33 = v9;
LABEL_68:
        v42 = [v33 personName];
        v35 = v42;
        goto LABEL_69;
      }

      if (v13 != 4)
      {
        goto LABEL_78;
      }

      if (v14 > 1)
      {
        if (v14 != 2)
        {
          if (v14 != 3)
          {
            if (v14 == 4)
            {
              v15 = +[PGLogging sharedLogging];
              v16 = [v15 loggingConnection];

              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v48 = 0;
                v17 = "Attempted to create location string with Multiple title components both of type Family Home";
                v18 = &v48;
LABEL_83:
                _os_log_error_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_ERROR, v17, v18, 2u);
                goto LABEL_50;
              }

              goto LABEL_50;
            }

            goto LABEL_78;
          }

          v22 = MEMORY[0x277CCACA8];
          v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v30;
          v31 = @"PGLocationTitleFormatMultipleLocationsWithFamilyHomeAndSomeonesHome %@";
          goto LABEL_67;
        }

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v19;
        v21 = @"PGLocationTitleFormatMultipleLocationsWithFamilyHomeAndWork";
LABEL_63:
        v37 = [v19 localizedStringForKey:v21 value:v21 table:@"Localizable"];
        goto LABEL_77;
      }

      if (v14)
      {
        if (v14 != 1)
        {
          goto LABEL_78;
        }

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v19;
        v21 = @"PGLocationTitleFormatMultipleLocationsWithFamilyHomeAndHome";
        goto LABEL_63;
      }

      v38 = MEMORY[0x277CCACA8];
      v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v39;
      v40 = @"PGLocationTitleFormatMultipleLocationsWithFamilyHomeAndLocation %@";
      goto LABEL_74;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v29 = +[PGLogging sharedLogging];
        v16 = [v29 loggingConnection];

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v17 = "Attempted to create location string with two title components both of type Work";
          v18 = buf;
          goto LABEL_83;
        }

        goto LABEL_50;
      }

      if (v14 != 3)
      {
        if (v14 != 4)
        {
          goto LABEL_78;
        }

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v19;
        v21 = @"PGLocationTitleFormatMultipleLocationsWithWorkAndFamilyHome";
        goto LABEL_63;
      }

      v22 = MEMORY[0x277CCACA8];
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v30;
      v31 = @"PGLocationTitleFormatMultipleLocationsWithWorkAndSomeonesHome %@";
      goto LABEL_67;
    }

    if (v14)
    {
      if (v14 != 1)
      {
        goto LABEL_78;
      }

      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"PGLocationTitleFormatMultipleLocationsWithWorkAndHome";
      goto LABEL_63;
    }

    v38 = MEMORY[0x277CCACA8];
    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = v39;
    v40 = @"PGLocationTitleFormatMultipleLocationsWithWorkAndLocation %@";
LABEL_74:
    v32 = [v39 localizedStringForKey:v40 value:v40 table:@"Localizable"];
    [v38 localizedStringWithFormat:v32, v12, v47];
    goto LABEL_75;
  }

  if (!v13)
  {
    if (v14 <= 1)
    {
      if (!v14)
      {
        v25 = MEMORY[0x277CCACA8];
        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatMultipleLocationsWithLocation %@ otherLocation %@" value:@"PGLocationTitleFormatMultipleLocationsWithLocation %@ otherLocation %@" table:@"Localizable"];
        v47 = v12;
        goto LABEL_65;
      }

      if (v14 != 1)
      {
        goto LABEL_78;
      }

      v25 = MEMORY[0x277CCACA8];
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v26;
      v27 = @"PGLocationTitleFormatMultipleLocationsWithLocation %@ andHome";
    }

    else
    {
      switch(v14)
      {
        case 2:
          v25 = MEMORY[0x277CCACA8];
          v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v26;
          v27 = @"PGLocationTitleFormatMultipleLocationsWithLocation %@ andWork";
          break;
        case 3:
          v41 = MEMORY[0x277CCACA8];
          v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatMultipleLocationsWithLocation %@ andSomeonesHome %@" value:@"PGLocationTitleFormatMultipleLocationsWithLocation %@ andSomeonesHome %@" table:@"Localizable"];
          v35 = [v10 personName];
          [v41 localizedStringWithFormat:v32, v11, v35];
          v37 = LABEL_70:;
          goto LABEL_71;
        case 4:
          v25 = MEMORY[0x277CCACA8];
          v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v26;
          v27 = @"PGLocationTitleFormatMultipleLocationsWithLocation %@ andFamilyHome";
          break;
        default:
          goto LABEL_78;
      }
    }

    v32 = [v26 localizedStringForKey:v27 value:v27 table:@"Localizable"];
LABEL_65:
    [v25 localizedStringWithFormat:v32, v11, v47];
    v37 = LABEL_75:;
    goto LABEL_76;
  }

  if (v13 != 1)
  {
    goto LABEL_78;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"PGLocationTitleFormatMultipleLocationsWithHomeAndWork";
      goto LABEL_63;
    }

    if (v14 != 3)
    {
      if (v14 != 4)
      {
        goto LABEL_78;
      }

      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"PGLocationTitleFormatMultipleLocationsWithHomeAndFamilyHome";
      goto LABEL_63;
    }

    v22 = MEMORY[0x277CCACA8];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = v30;
    v31 = @"PGLocationTitleFormatMultipleLocationsWithHomeAndSomeonesHome %@";
LABEL_67:
    v32 = [v30 localizedStringForKey:v31 value:v31 table:@"Localizable"];
    v33 = v10;
    goto LABEL_68;
  }

  if (!v14)
  {
    v38 = MEMORY[0x277CCACA8];
    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = v39;
    v40 = @"PGLocationTitleFormatMultipleLocationsWithHomeAndLocation %@";
    goto LABEL_74;
  }

  if (v14 == 1)
  {
    v28 = +[PGLogging sharedLogging];
    v16 = [v28 loggingConnection];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v50 = 0;
      v17 = "Attempted to create location string with two title components both of type Home";
      v18 = &v50;
      goto LABEL_83;
    }

LABEL_50:
  }

LABEL_78:
  v43 = MEMORY[0x277CCACA8];
  v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v45 = [v44 localizedStringForKey:@"PGLocationTitleFormatMultipleLocationsWithLocation %@ otherLocation %@" value:@"PGLocationTitleFormatMultipleLocationsWithLocation %@ otherLocation %@" table:@"Localizable"];
  v37 = [v43 localizedStringWithFormat:v45, v11, v12];

LABEL_79:

  return v37;
}

+ (id)_localizedStringForTwoLocationsWithFirstComponentForTitle:(id)a3 secondComponentForTitle:(id)a4 firstLocation:(id)a5 otherLocation:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 type];
  v14 = [v10 type];
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      if (v13 == 3)
      {
        if (v14 <= 1)
        {
          if (!v14)
          {
            v22 = MEMORY[0x277CCACA8];
            v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatTwoLocationsWithSomeonesHome %@ andLocation %@" value:@"PGLocationTitleFormatTwoLocationsWithSomeonesHome %@ andLocation %@" table:@"Localizable"];
            v42 = [v9 personName];
            v35 = v42;
            v47 = v12;
LABEL_69:
            [v22 localizedStringWithFormat:v32, v42, v47];
            goto LABEL_70;
          }

          if (v14 != 1)
          {
            goto LABEL_78;
          }

          v22 = MEMORY[0x277CCACA8];
          v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v23;
          v24 = @"PGLocationTitleFormatTwoLocationsWithSomeonesHome %@ andHome";
        }

        else
        {
          switch(v14)
          {
            case 2:
              v22 = MEMORY[0x277CCACA8];
              v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v20 = v23;
              v24 = @"PGLocationTitleFormatTwoLocationsWithSomeonesHome %@ andWork";
              break;
            case 3:
              v34 = MEMORY[0x277CCACA8];
              v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatTwoLocationsWithSomeonesHome %@ andAnothersHome %@" value:@"PGLocationTitleFormatTwoLocationsWithSomeonesHome %@ andAnothersHome %@" table:@"Localizable"];
              v35 = [v9 personName];
              v36 = [v10 personName];
              v37 = [v34 localizedStringWithFormat:v32, v35, v36];

LABEL_71:
LABEL_76:

LABEL_77:
              if (v37)
              {
                goto LABEL_79;
              }

              goto LABEL_78;
            case 4:
              v22 = MEMORY[0x277CCACA8];
              v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v20 = v23;
              v24 = @"PGLocationTitleFormatTwoLocationsWithSomeonesHome %@ andFamilyHome";
              break;
            default:
              goto LABEL_78;
          }
        }

        v32 = [v23 localizedStringForKey:v24 value:v24 table:@"Localizable"];
        v33 = v9;
LABEL_68:
        v42 = [v33 personName];
        v35 = v42;
        goto LABEL_69;
      }

      if (v13 != 4)
      {
        goto LABEL_78;
      }

      if (v14 > 1)
      {
        if (v14 != 2)
        {
          if (v14 != 3)
          {
            if (v14 == 4)
            {
              v15 = +[PGLogging sharedLogging];
              v16 = [v15 loggingConnection];

              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v48 = 0;
                v17 = "Attempted to create location string with two title components both of type Family Home";
                v18 = &v48;
LABEL_83:
                _os_log_error_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_ERROR, v17, v18, 2u);
                goto LABEL_50;
              }

              goto LABEL_50;
            }

            goto LABEL_78;
          }

          v22 = MEMORY[0x277CCACA8];
          v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v30;
          v31 = @"PGLocationTitleFormatTwoLocationsWithFamilyHomeAndSomeonesHome %@";
          goto LABEL_67;
        }

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v19;
        v21 = @"PGLocationTitleFormatTwoLocationsWithFamilyHomeAndWork";
LABEL_63:
        v37 = [v19 localizedStringForKey:v21 value:v21 table:@"Localizable"];
        goto LABEL_77;
      }

      if (v14)
      {
        if (v14 != 1)
        {
          goto LABEL_78;
        }

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v19;
        v21 = @"PGLocationTitleFormatTwoLocationsWithFamilyHomeAndHome";
        goto LABEL_63;
      }

      v38 = MEMORY[0x277CCACA8];
      v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v39;
      v40 = @"PGLocationTitleFormatTwoLocationsWithFamilyHomeAndLocation %@";
      goto LABEL_74;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v29 = +[PGLogging sharedLogging];
        v16 = [v29 loggingConnection];

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v17 = "Attempted to create location string with two title components both of type Work";
          v18 = buf;
          goto LABEL_83;
        }

        goto LABEL_50;
      }

      if (v14 != 3)
      {
        if (v14 != 4)
        {
          goto LABEL_78;
        }

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v19;
        v21 = @"PGLocationTitleFormatTwoLocationsWithWorkAndFamilyHome";
        goto LABEL_63;
      }

      v22 = MEMORY[0x277CCACA8];
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v30;
      v31 = @"PGLocationTitleFormatTwoLocationsWithWorkAndSomeonesHome %@";
      goto LABEL_67;
    }

    if (v14)
    {
      if (v14 != 1)
      {
        goto LABEL_78;
      }

      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"PGLocationTitleFormatTwoLocationsWithWorkAndHome";
      goto LABEL_63;
    }

    v38 = MEMORY[0x277CCACA8];
    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = v39;
    v40 = @"PGLocationTitleFormatTwoLocationsWithWorkAndLocation %@";
LABEL_74:
    v32 = [v39 localizedStringForKey:v40 value:v40 table:@"Localizable"];
    [v38 localizedStringWithFormat:v32, v12, v47];
    goto LABEL_75;
  }

  if (!v13)
  {
    if (v14 <= 1)
    {
      if (!v14)
      {
        v25 = MEMORY[0x277CCACA8];
        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatTwoLocationsWithLocation %@ otherLocation %@" value:@"PGLocationTitleFormatTwoLocationsWithLocation %@ otherLocation %@" table:@"Localizable"];
        v47 = v12;
        goto LABEL_65;
      }

      if (v14 != 1)
      {
        goto LABEL_78;
      }

      v25 = MEMORY[0x277CCACA8];
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v26;
      v27 = @"PGLocationTitleFormatTwoLocationsWithLocation %@ andHome";
    }

    else
    {
      switch(v14)
      {
        case 2:
          v25 = MEMORY[0x277CCACA8];
          v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v26;
          v27 = @"PGLocationTitleFormatTwoLocationsWithLocation %@ andWork";
          break;
        case 3:
          v41 = MEMORY[0x277CCACA8];
          v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatTwoLocationsWithLocation %@ andSomeonesHome %@" value:@"PGLocationTitleFormatTwoLocationsWithLocation %@ andSomeonesHome %@" table:@"Localizable"];
          v35 = [v10 personName];
          [v41 localizedStringWithFormat:v32, v11, v35];
          v37 = LABEL_70:;
          goto LABEL_71;
        case 4:
          v25 = MEMORY[0x277CCACA8];
          v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v26;
          v27 = @"PGLocationTitleFormatTwoLocationsWithLocation %@ andFamilyHome";
          break;
        default:
          goto LABEL_78;
      }
    }

    v32 = [v26 localizedStringForKey:v27 value:v27 table:@"Localizable"];
LABEL_65:
    [v25 localizedStringWithFormat:v32, v11, v47];
    v37 = LABEL_75:;
    goto LABEL_76;
  }

  if (v13 != 1)
  {
    goto LABEL_78;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"PGLocationTitleFormatTwoLocationsWithHomeAndWork";
      goto LABEL_63;
    }

    if (v14 != 3)
    {
      if (v14 != 4)
      {
        goto LABEL_78;
      }

      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"PGLocationTitleFormatTwoLocationsWithHomeAndFamilyHome";
      goto LABEL_63;
    }

    v22 = MEMORY[0x277CCACA8];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = v30;
    v31 = @"PGLocationTitleFormatTwoLocationsWithHomeAndSomeonesHome %@";
LABEL_67:
    v32 = [v30 localizedStringForKey:v31 value:v31 table:@"Localizable"];
    v33 = v10;
    goto LABEL_68;
  }

  if (!v14)
  {
    v38 = MEMORY[0x277CCACA8];
    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = v39;
    v40 = @"PGLocationTitleFormatTwoLocationsWithHomeAndLocation %@";
    goto LABEL_74;
  }

  if (v14 == 1)
  {
    v28 = +[PGLogging sharedLogging];
    v16 = [v28 loggingConnection];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v50 = 0;
      v17 = "Attempted to create location string with two title components both of type Home";
      v18 = &v50;
      goto LABEL_83;
    }

LABEL_50:
  }

LABEL_78:
  v43 = MEMORY[0x277CCACA8];
  v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v45 = [v44 localizedStringForKey:@"PGLocationTitleFormatTwoLocationsWithLocation %@ otherLocation %@" value:@"PGLocationTitleFormatTwoLocationsWithLocation %@ otherLocation %@" table:@"Localizable"];
  v37 = [v43 localizedStringWithFormat:v45, v11, v12];

LABEL_79:

  return v37;
}

+ (id)_beautifiedLocationStringWithTitleComponents:(id)a3 momentNodes:(id)a4 lineBreakBehavior:(unint64_t)a5 keyAssetAddressNode:(id)a6 curationAddressNodes:(id)a7 isMatchingKeyAsset:(BOOL *)a8 useDistrict:(BOOL)a9 allowFamilyHome:(BOOL)a10 showAllCities:(BOOL)a11 locationHelper:(id)a12 serviceManager:(id)a13
{
  v18 = a10;
  v150 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  v23 = v20;
  v24 = a12;
  v25 = a13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __233__PGLocationTitleUtility__beautifiedLocationStringWithTitleComponents_momentNodes_lineBreakBehavior_keyAssetAddressNode_curationAddressNodes_isMatchingKeyAsset_useDistrict_allowFamilyHome_showAllCities_locationHelper_serviceManager___block_invoke;
  aBlock[3] = &unk_278889688;
  v113 = a5;
  v111 = a5 & 1;
  v146 = a5 & 1;
  v147 = a10;
  v115 = v25;
  v116 = a1;
  v143 = v115;
  v145 = a1;
  v26 = v19;
  v114 = v24;
  v144 = v114;
  v129 = _Block_copy(aBlock);
  v122 = v21;
  if (a9)
  {
    v117 = [v20 anyObject];
    v127 = [v117 graph];
    if ([v116 _titleComponentsAreInSameSupersetCity:v19 graph:? locationHelper:?])
    {
      v27 = [v116 _locationStringWithDistrictsFromTitleComponents:v19 momentNodes:v20 lineBreakBehavior:a5 allowFamilyHome:a10 locationHelper:v114 serviceManager:v115];
      if (v27)
      {
        v28 = v27;
        v29 = v28;
        goto LABEL_101;
      }
    }
  }

  if (a11)
  {
    v30 = [v116 _firstComponentInTimeFromComponents:v19 momentNodes:v20 curationAddressNodes:0 allowFamilyHome:a10 serviceManager:v115];
    if (v30)
    {
      v123 = v22;
      v105 = v20;
      v117 = v30;
      v31 = [MEMORY[0x277CBEB18] arrayWithObject:?];
      if ([v19 count] >= 2)
      {
        v32 = [v19 mutableCopy];
        [v32 removeObject:v117];
        v33 = [v116 _sortedComponentsFromComponents:v32];
        [v31 addObjectsFromArray:v33];
      }

      v108 = v19;
      v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v35 = v31;
      v36 = [v35 countByEnumeratingWithState:&v138 objects:v149 count:16];
      v127 = v35;
      if (v36)
      {
        v37 = v36;
        v38 = *v139;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v139 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v138 + 1) + 8 * i);
            v41 = [v40 node];
            if ([v41 domain] == 200)
            {
              v42 = [v41 label];
              if ([v42 isEqualToString:@"City"])
              {
              }

              else
              {
                v43 = [v41 domain];

                v44 = v43 == 300;
                v35 = v127;
                if (!v44)
                {
                  goto LABEL_26;
                }
              }
            }

            else if ([v41 domain] != 300)
            {
              goto LABEL_26;
            }

            v45 = v129[2](v129, v40);
            if (v45 && ([v34 containsObject:v45] & 1) == 0)
            {
              [v34 addObject:v45];
            }

LABEL_26:
          }

          v37 = [v35 countByEnumeratingWithState:&v138 objects:v149 count:16];
        }

        while (v37);
      }

      if ([v34 count] > 2)
      {
        v81 = [v34 lastObject];
        v82 = [v34 subarrayWithRange:{0, objc_msgSend(v34, "count") - 1}];
        v83 = MEMORY[0x277CCACA8];
        v84 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v85 = [v84 localizedStringForKey:@"PGLocationTitleFormatMultipleLocationsWithConcatenatedLocations %@ lastLocation %@" value:@"PGLocationTitleFormatMultipleLocationsWithConcatenatedLocations %@ lastLocation %@" table:@"Localizable"];
        v86 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v87 = [v86 localizedStringForKey:@"PGLocationTitleFormatMultipleLocationsConcatenator" value:@"PGLocationTitleFormatMultipleLocationsConcatenator" table:@"Localizable"];
        v88 = [v82 componentsJoinedByString:v87];
        v28 = [v83 localizedStringWithFormat:v85, v88, v81];

        v29 = [v116 _titleWithLineBreakBehavior:v113 forTitle:v28 titleComponents:v34];

        v23 = v105;
        v26 = v108;
        v22 = v123;
        goto LABEL_101;
      }

      v23 = v105;
      v26 = v108;
      v21 = v122;
      v30 = v117;
      v18 = a10;
    }
  }

  v46 = [v116 _firstComponentInTimeFromComponents:v26 momentNodes:v23 curationAddressNodes:v22 allowFamilyHome:v18 serviceManager:v115];
  v128 = v129[2](v129, v46);
  v117 = v46;
  if (v21)
  {
    v47 = [v46 addressNodes];
    v120 = [v47 containsObject:v21];

    v46 = v117;
  }

  else
  {
    v120 = 1;
  }

  v48 = [v26 count] == 1;
  v49 = [v26 count];
  v50 = [v26 count];
  v51 = 0;
  v52 = v116;
  if (!v46 || v50 < 2)
  {
    v71 = 0;
    goto LABEL_66;
  }

  v119 = v49;
  v124 = v48;
  v53 = [v26 mutableCopy];
  [v53 removeObject:v46];
  v104 = v53;
  v54 = [v116 _sortedComponentsFromComponents:v53];
  v55 = v46;
  v56 = v54;
  v57 = [v55 node];
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  obj = v56;
  v58 = [obj countByEnumeratingWithState:&v134 objects:v148 count:16];
  if (!v58)
  {
    v51 = 0;
    v71 = 0;
    goto LABEL_65;
  }

  v59 = v58;
  v106 = v23;
  v109 = v26;
  v118 = 0;
  v60 = *v135;
  do
  {
    v61 = 0;
    do
    {
      if (*v135 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v62 = *(*(&v134 + 1) + 8 * v61);
      v63 = [v62 node];
      if ([v22 count])
      {
        v64 = [v62 addressNodes];
        v65 = [v64 intersectsSet:v22];

        if (!v65)
        {
          goto LABEL_55;
        }
      }

      if ([v57 domain] == 200 && objc_msgSend(v63, "domain") == 200)
      {
        v66 = [v57 label];
        v67 = [v63 label];
        v68 = [v66 isEqualToString:v67];

        if (!v68)
        {
          goto LABEL_55;
        }
      }

      if (v122)
      {
        v69 = [v62 addressNodes];
        v70 = [v69 containsObject:v122];

        v124 = v70;
        if (((v120 | v70) & 1) == 0)
        {
          v124 = 0;
          goto LABEL_55;
        }
      }

      else
      {
        v124 = 1;
      }

      v71 = v129[2](v129, v62);
      if (![v71 length] || !objc_msgSend(v128, "length"))
      {
        goto LABEL_54;
      }

      if ([v128 isEqualToString:v71])
      {
        --v119;
LABEL_54:

LABEL_55:
        goto LABEL_56;
      }

      v51 = v62;

      if (v51)
      {
        goto LABEL_62;
      }

      v118 = v71;
LABEL_56:
      ++v61;
    }

    while (v59 != v61);
    v72 = [obj countByEnumeratingWithState:&v134 objects:v148 count:16];
    v59 = v72;
  }

  while (v72);
  v51 = 0;
  v71 = v118;
LABEL_62:
  v23 = v106;
  v26 = v109;
LABEL_65:

  v52 = v116;
  v46 = v117;
  v48 = v124;
  v49 = v119;
LABEL_66:
  if (a8)
  {
    *a8 = (v46 != 0) & (v120 | v48);
  }

  if (!v51 || ![v71 length])
  {
    v73 = v128;
    v75 = v73;
    goto LABEL_87;
  }

  v73 = v128;
  if (![v128 length])
  {
    v75 = 0;
    goto LABEL_87;
  }

  v130[0] = MEMORY[0x277D85DD0];
  v130[1] = 3221225472;
  v130[2] = __233__PGLocationTitleUtility__beautifiedLocationStringWithTitleComponents_momentNodes_lineBreakBehavior_keyAssetAddressNode_curationAddressNodes_isMatchingKeyAsset_useDistrict_allowFamilyHome_showAllCities_locationHelper_serviceManager___block_invoke_2;
  v130[3] = &unk_2788896B0;
  v133 = v52;
  v117 = v46;
  v131 = v117;
  v51 = v51;
  v132 = v51;
  v74 = _Block_copy(v130);
  v75 = v74[2](v74, v128, v71, v49);
  if ([v75 length] < 0x17 || (objc_msgSend(v128, "containsString:", v71) & 1) == 0 && !objc_msgSend(v71, "containsString:", v128))
  {
    goto LABEL_86;
  }

  v125 = v22;
  v107 = v23;
  v110 = v26;
  if (!v122)
  {
LABEL_83:
    v78 = v51;
    v79 = 0;
    v76 = v117;
    goto LABEL_84;
  }

  if ((v120 & 1) == 0)
  {
    if (v48)
    {
      v77 = v51;
      v80 = v71;
      v76 = v117;
      v78 = v51;
      goto LABEL_85;
    }

    goto LABEL_83;
  }

  v76 = v117;
  v77 = v117;
  v78 = v51;
  v79 = v128;
  v80 = v79;
  if (!v77)
  {
LABEL_84:
    v89 = [MEMORY[0x277CBEB98] setWithObjects:{v76, v78, 0}];
    v90 = [v116 _sortedComponentsFromComponents:v89];
    v77 = [v90 firstObject];
    v80 = v129[2](v129, v77);
  }

LABEL_85:
  v91 = v77;

  v92 = v80;
  v51 = 0;
  v71 = 0;
  v128 = v92;
  v117 = v91;
  v75 = v92;
  v23 = v107;
  v26 = v110;
  v22 = v125;
LABEL_86:

  v73 = v128;
LABEL_87:
  v127 = v73;
  if (v73)
  {
    v93 = v71 ? v111 : 0;
    if ((v113 & 2) != 0 || v93)
    {
      v126 = v51;
      v94 = [v75 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];
      v95 = [MEMORY[0x277CBEB18] array];
      v96 = [v73 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];
      [v95 addObject:v96];
      if (v71)
      {
        v97 = v23;
        v98 = v26;
        v99 = [v71 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];
        [v95 addObject:v99];
        if (v111)
        {
          v100 = [PGCommonTitleUtility titleWithLineBreakForTitle:v94 andUsedNames:v95];

          v94 = v100;
        }

        v26 = v98;
        v23 = v97;
      }

      if ((v113 & 2) != 0)
      {
        v101 = [PGCommonTitleUtility titleWithNoLineBreakSpaceForTitle:v94 andUsedNames:v95];

        v94 = v101;
      }

      v75 = v94;
      v51 = v126;
    }
  }

  v28 = v75;

  v29 = v28;
LABEL_101:

  v102 = *MEMORY[0x277D85DE8];

  return v29;
}

id __233__PGLocationTitleUtility__beautifiedLocationStringWithTitleComponents_momentNodes_lineBreakBehavior_keyAssetAddressNode_curationAddressNodes_isMatchingKeyAsset_useDistrict_allowFamilyHome_showAllCities_locationHelper_serviceManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 node];
  v5 = v4;
  if (v4)
  {
    if ([v4 domain] == 300)
    {
      v6 = [v3 edge];
      v7 = [PGPeopleTitleUtility beautifiedLocationStringWithPersonNode:v5 peopleAddressEdge:v6 titleComponent:v3 insertLineBreak:*(a1 + 56) allowFamilyHome:*(a1 + 57) serviceManager:*(a1 + 32)];
    }

    else
    {
      v7 = [*(a1 + 48) beautifiedLocationNodeStringWithPlaceNode:v5 locationHelper:*(a1 + 40)];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __233__PGLocationTitleUtility__beautifiedLocationStringWithTitleComponents_momentNodes_lineBreakBehavior_keyAssetAddressNode_curationAddressNodes_isMatchingKeyAsset_useDistrict_allowFamilyHome_showAllCities_locationHelper_serviceManager___block_invoke_2(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (!v8 || a4 == 1)
  {
    v12 = v7;
  }

  else
  {
    v10 = a1[5];
    v9 = a1[6];
    v11 = a1[4];
    if (a4 == 2)
    {
      [v9 _localizedStringForTwoLocationsWithFirstComponentForTitle:v11 secondComponentForTitle:v10 firstLocation:v7 otherLocation:v8];
    }

    else
    {
      [v9 _localizedStringForMultipleLocationsWithFirstComponentForTitle:v11 secondComponentForTitle:v10 firstLocation:v7 otherLocation:v8];
    }
    v12 = ;
  }

  v13 = v12;

  return v13;
}

+ (id)_commonCityTitleComponentsFromMomentNodes:(id)a3 remainingAddressNodes:(id)a4 ignoredAddressNodes:(id)a5 incompleteLocationResolver:(id)a6 locationHelper:(id)a7
{
  v112 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v77 = v11;
  v74 = v14;
  v16 = [[PGLocationsResolver alloc] initWithMomentNodes:v11 incompleteLocationResolver:v14 locationHelper:v15];
  [(PGLocationsResolver *)v16 setShouldCreateLocationToAddressMapTable:1];
  v75 = v13;
  [(PGLocationsResolver *)v16 setIgnoredAddressNodes:v13];
  LODWORD(v17) = 1051931443;
  [(PGLocationsResolver *)v16 setMaximumMissingLocationsThreshold:v17];
  v73 = v16;
  v18 = [(PGLocationsResolver *)v16 resolvedLocationNodesToAddressNodesMapTable];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v19 = [v18 keyEnumerator];
  v20 = [v19 allObjects];

  v21 = [v20 countByEnumeratingWithState:&v103 objects:v111 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v104;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v104 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v103 + 1) + 8 * i);
        v26 = [v18 objectForKey:v25];
        if (([v26 intersectsSet:v12] & 1) == 0)
        {
          [v18 removeObjectForKey:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v103 objects:v111 count:16];
    }

    while (v22);
  }

  v76 = v12;

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v27 = [v18 keyEnumerator];
  v28 = [v27 allObjects];

  v29 = [v28 countByEnumeratingWithState:&v99 objects:v110 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v100;
    v79 = v28;
    v80 = v15;
    v78 = *v100;
    do
    {
      v32 = 0;
      v81 = v30;
      do
      {
        if (*v100 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v99 + 1) + 8 * v32);
        v34 = [v33 name];
        v35 = [v34 lowercaseString];

        if (v35)
        {
          v83 = v35;
          if ([v35 length])
          {
            v82 = v32;
            v36 = [v33 label];
            if ([v36 isEqualToString:@"City"])
            {
              v37 = [v18 objectForKey:v33];

              v32 = v82;
              if (!v37)
              {
                goto LABEL_45;
              }

              v36 = v33;
              v38 = [v15 countyNodeFromCityNode:v36];
              v39 = [v38 anyNode];

              if (v39)
              {
                v40 = [v39 name];
                [v40 lowercaseString];
                v41 = v86 = v39;
                v42 = [v41 containsString:v35];

                v39 = v86;
                if (v42)
                {
                  v85 = [v18 objectForKey:v36];
                  v84 = [MEMORY[0x277CBEB58] set];
                  v95 = 0u;
                  v96 = 0u;
                  v97 = 0u;
                  v98 = 0u;
                  v43 = [v18 keyEnumerator];
                  v44 = [v43 allObjects];

                  v45 = [v44 countByEnumeratingWithState:&v95 objects:v109 count:16];
                  if (v45)
                  {
                    v46 = v45;
                    v47 = *v96;
                    do
                    {
                      for (j = 0; j != v46; ++j)
                      {
                        if (*v96 != v47)
                        {
                          objc_enumerationMutation(v44);
                        }

                        v49 = *(*(&v95 + 1) + 8 * j);
                        if (([v36 isSameNodeAsNode:v49] & 1) == 0)
                        {
                          v50 = [v49 label];
                          v51 = [v50 isEqualToString:@"City"];

                          if (v51)
                          {
                            v52 = v49;
                            v53 = [v52 collection];
                            v54 = [v53 countyNodes];
                            v55 = [v54 anyNode];

                            if ([v86 isSameNodeAsNode:v55])
                            {
                              v56 = [v18 objectForKey:v52];
                              [v85 unionSet:v56];
                              [v84 addObject:v52];
                            }
                          }
                        }
                      }

                      v46 = [v44 countByEnumeratingWithState:&v95 objects:v109 count:16];
                    }

                    while (v46);
                  }

                  v15 = v80;
                  v31 = v78;
                  if ([v84 count])
                  {
                    [v18 setObject:v85 forKey:v86];
                    v93 = 0u;
                    v94 = 0u;
                    v91 = 0u;
                    v92 = 0u;
                    v57 = v84;
                    v58 = [v57 countByEnumeratingWithState:&v91 objects:v108 count:16];
                    if (v58)
                    {
                      v59 = v58;
                      v60 = *v92;
                      do
                      {
                        for (k = 0; k != v59; ++k)
                        {
                          if (*v92 != v60)
                          {
                            objc_enumerationMutation(v57);
                          }

                          [v18 removeObjectForKey:*(*(&v91 + 1) + 8 * k)];
                        }

                        v59 = [v57 countByEnumeratingWithState:&v91 objects:v108 count:16];
                      }

                      while (v59);
                    }

                    [v18 removeObjectForKey:v36];
                  }

                  v28 = v79;
                  v30 = v81;
                  v39 = v86;
                }
              }
            }

            v32 = v82;
            v35 = v83;
          }
        }

LABEL_45:

        ++v32;
      }

      while (v32 != v30);
      v30 = [v28 countByEnumeratingWithState:&v99 objects:v110 count:16];
    }

    while (v30);
  }

  v62 = [MEMORY[0x277CBEB58] set];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v63 = [v18 keyEnumerator];
  v64 = [v63 countByEnumeratingWithState:&v87 objects:v107 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v88;
    do
    {
      for (m = 0; m != v65; ++m)
      {
        if (*v88 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v87 + 1) + 8 * m);
        v69 = objc_alloc_init(PGLocationTitleComponent);
        [(PGLocationTitleComponent *)v69 setNode:v68];
        v70 = [v18 objectForKey:v68];
        [(PGLocationTitleComponent *)v69 setAddressNodes:v70];

        [v62 addObject:v69];
      }

      v65 = [v63 countByEnumeratingWithState:&v87 objects:v107 count:16];
    }

    while (v65);
  }

  v71 = *MEMORY[0x277D85DE8];

  return v62;
}

+ (id)commonCityTitleComponentsFromMomentNodes:(id)a3 addressNodes:(id)a4 incompleteLocationResolver:(id)a5 locationHelper:(id)a6
{
  v10 = MEMORY[0x277CBEB98];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(v10);
  v16 = [a1 _commonCityTitleComponentsFromMomentNodes:v14 remainingAddressNodes:v13 ignoredAddressNodes:v15 incompleteLocationResolver:v12 locationHelper:v11];

  return v16;
}

+ (id)_filteredAOINodeCombinationsForCombinations:(id)a3 minSize:(unint64_t)a4 maxSize:(unint64_t)a5 maxTitleLength:(unint64_t)a6 minNumberOfAssets:(unint64_t)a7 aoiNodesToAddressNodesMapTable:(id)a8 assetCountByAddressNodeIdentifier:(id)a9 locationHelper:(id)a10
{
  v71 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v55 = a8;
  v54 = a9;
  v15 = a10;
  v44 = [MEMORY[0x277CBEB58] set];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v14;
  v16 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v65;
    v48 = a4;
    v49 = a5;
    v47 = *v65;
    do
    {
      v19 = 0;
      v50 = v17;
      do
      {
        if (*v65 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v64 + 1) + 8 * v19);
        v21 = [v20 count];
        if (v21 >= a4 && v21 <= a5)
        {
          v52 = v19;
          v23 = [MEMORY[0x277CBEB58] set];
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v24 = v20;
          v25 = [v24 countByEnumeratingWithState:&v60 objects:v69 count:16];
          v53 = v24;
          if (v25)
          {
            v26 = v25;
            v27 = 0;
            v28 = *v61;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v61 != v28)
                {
                  objc_enumerationMutation(v53);
                }

                v30 = *(*(&v60 + 1) + 8 * i);
                v31 = [a1 beautifiedLocationNodeStringWithPlaceNode:v30 locationHelper:v15];
                v27 += [v31 length];
                v32 = [v55 objectForKey:v30];
                v33 = [v32 allObjects];
                [v23 addObjectsFromArray:v33];
              }

              v26 = [v53 countByEnumeratingWithState:&v60 objects:v69 count:16];
            }

            while (v26);

            if (v27 > a6)
            {
              goto LABEL_31;
            }
          }

          else
          {
          }

          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v34 = v23;
          v35 = [v34 countByEnumeratingWithState:&v56 objects:v68 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = 0;
            v38 = *v57;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v57 != v38)
                {
                  objc_enumerationMutation(v34);
                }

                v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v56 + 1) + 8 * j), "identifier")}];
                v41 = [v54 objectForKeyedSubscript:v40];
                v37 += [v41 unsignedIntegerValue];
              }

              v36 = [v34 countByEnumeratingWithState:&v56 objects:v68 count:16];
            }

            while (v36);
          }

          else
          {
            v37 = 0;
          }

          if (v37 >= a7)
          {
            [v44 addObject:v53];
          }

LABEL_31:

          a4 = v48;
          a5 = v49;
          v18 = v47;
          v17 = v50;
          v19 = v52;
        }

        ++v19;
      }

      while (v19 != v17);
      v17 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v17);
  }

  v42 = *MEMORY[0x277D85DE8];

  return v44;
}

+ (id)_sortedAOINodeCombinationsForCombinations:(id)a3 aoiNodesToAddressNodesMapTable:(id)a4 assetCountByAddressNodeIdentifier:(id)a5 locationHelper:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 allObjects];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __148__PGLocationTitleUtility__sortedAOINodeCombinationsForCombinations_aoiNodesToAddressNodesMapTable_assetCountByAddressNodeIdentifier_locationHelper___block_invoke;
  v19[3] = &unk_278889660;
  v20 = v12;
  v21 = v10;
  v22 = v11;
  v23 = a1;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  v17 = [v13 sortedArrayUsingComparator:v19];

  return v17;
}

uint64_t __148__PGLocationTitleUtility__sortedAOINodeCombinationsForCombinations_aoiNodesToAddressNodesMapTable_assetCountByAddressNodeIdentifier_locationHelper___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v122 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v84 = a3;
  context = objc_autoreleasePoolPush();
  v88 = [MEMORY[0x277CBEB58] set];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v112 objects:v121 count:16];
  v8 = 0.0;
  obj = v6;
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v113;
    v12 = 0.0;
    v13 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v113 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v112 + 1) + 8 * i);
        v16 = [*(a1 + 56) beautifiedLocationNodeStringWithPlaceNode:v15 locationHelper:*(a1 + 32)];
        v10 += [v16 length];
        v17 = [*(a1 + 40) objectForKey:v15];
        v18 = [v17 allObjects];
        [v88 addObjectsFromArray:v18];

        [v15 popularityScore];
        v20 = v19 == -1.0;
        v21 = v19 != -1.0;
        v22 = v12 + v19;
        v13 &= v21;
        if (!v20)
        {
          v12 = v22;
        }
      }

      v6 = obj;
      v9 = [obj countByEnumeratingWithState:&v112 objects:v121 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v13 = 1;
    v12 = 0.0;
  }

  v23 = [v6 count];
  v24 = v12 / v23;
  if (!v23)
  {
    v24 = 0.0;
  }

  if (v13)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  v87 = [MEMORY[0x277CBEB58] set];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v26 = v84;
  v27 = [v26 countByEnumeratingWithState:&v108 objects:v120 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v85 = *v109;
    v8 = 0.0;
    v81 = v26;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v109 != v85)
        {
          objc_enumerationMutation(v81);
        }

        v31 = *(*(&v108 + 1) + 8 * j);
        v32 = [*(a1 + 56) beautifiedLocationNodeStringWithPlaceNode:v31 locationHelper:*(a1 + 32)];
        v29 += [v32 length];
        v33 = [*(a1 + 40) objectForKey:v31];
        v34 = [v33 allObjects];
        [v87 addObjectsFromArray:v34];

        [v31 popularityScore];
        v20 = v35 == -1.0;
        v36 = v35 != -1.0;
        v37 = v8 + v35;
        if (!v20)
        {
          v8 = v37;
        }

        v13 &= v36;
      }

      v26 = v81;
      v28 = [v81 countByEnumeratingWithState:&v108 objects:v120 count:16];
    }

    while (v28);
  }

  else
  {
    v29 = 0;
  }

  v38 = [v26 count];
  v39 = 0.0;
  if (v13 && v38)
  {
    v39 = v8 / v38;
  }

  if (v25 > v39)
  {
    goto LABEL_32;
  }

  if (v39 > v25)
  {
LABEL_34:
    v40 = 1;
    goto LABEL_58;
  }

  v82 = v26;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v41 = v88;
  v42 = [v41 countByEnumeratingWithState:&v104 objects:v119 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = 0;
    v45 = *v105;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v105 != v45)
        {
          objc_enumerationMutation(v41);
        }

        v47 = *(a1 + 48);
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v104 + 1) + 8 * k), "identifier")}];
        v49 = [v47 objectForKeyedSubscript:v48];
        v44 += [v49 unsignedIntegerValue];
      }

      v43 = [v41 countByEnumeratingWithState:&v104 objects:v119 count:16];
    }

    while (v43);
  }

  else
  {
    v44 = 0;
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v86 = v87;
  v50 = [v86 countByEnumeratingWithState:&v100 objects:v118 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = 0;
    v53 = *v101;
    do
    {
      for (m = 0; m != v51; ++m)
      {
        if (*v101 != v53)
        {
          objc_enumerationMutation(v86);
        }

        v55 = *(a1 + 48);
        v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v100 + 1) + 8 * m), "identifier")}];
        v57 = [v55 objectForKeyedSubscript:v56];
        v52 += [v57 unsignedIntegerValue];
      }

      v51 = [v86 countByEnumeratingWithState:&v100 objects:v118 count:16];
    }

    while (v51);
  }

  else
  {
    v52 = 0;
  }

  if (v44 > v52)
  {
    v40 = -1;
LABEL_57:
    v26 = v82;
    goto LABEL_58;
  }

  if (v52 > v44)
  {
    v40 = 1;
    goto LABEL_57;
  }

  v60 = [obj count];
  v26 = v82;
  if (v60 > [v82 count])
  {
    goto LABEL_34;
  }

  v61 = [v82 count];
  if (v61 <= [obj count])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __148__PGLocationTitleUtility__sortedAOINodeCombinationsForCombinations_aoiNodesToAddressNodesMapTable_assetCountByAddressNodeIdentifier_locationHelper___block_invoke_2;
    aBlock[3] = &unk_278889638;
    v62 = *(a1 + 40);
    v63 = *(a1 + 56);
    v98 = v62;
    v99 = v63;
    v64 = _Block_copy(aBlock);
    v65 = v64[2](v64, obj);
    v66 = v64[2](v64, v82);
    if (v65 <= v66)
    {
      v40 = 1;
      if (v66 > v65 || v10 > v29)
      {
        goto LABEL_63;
      }

      if (v29 <= v10)
      {
        v67 = [obj anyObject];
        v68 = [v67 identifier];

        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v69 = obj;
        v70 = [v69 countByEnumeratingWithState:&v93 objects:v117 count:16];
        if (v70)
        {
          v71 = v70;
          v72 = *v94;
          do
          {
            for (n = 0; n != v71; ++n)
            {
              if (*v94 != v72)
              {
                objc_enumerationMutation(v69);
              }

              v74 = [*(*(&v93 + 1) + 8 * n) identifier];
              if (v68 >= v74)
              {
                v68 = v74;
              }
            }

            v71 = [v69 countByEnumeratingWithState:&v93 objects:v117 count:16];
          }

          while (v71);
        }

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v75 = v82;
        v76 = [v75 countByEnumeratingWithState:&v89 objects:v116 count:16];
        if (v76)
        {
          v77 = v76;
          v78 = *v90;
          v40 = 1;
LABEL_78:
          v79 = 0;
          while (1)
          {
            if (*v90 != v78)
            {
              objc_enumerationMutation(v75);
            }

            if ([*(*(&v89 + 1) + 8 * v79) identifier] < v68)
            {
              break;
            }

            if (v77 == ++v79)
            {
              v77 = [v75 countByEnumeratingWithState:&v89 objects:v116 count:16];
              if (v77)
              {
                goto LABEL_78;
              }

              goto LABEL_84;
            }
          }
        }

        else
        {
LABEL_84:
          v40 = -1;
        }

        goto LABEL_63;
      }
    }

    v40 = -1;
LABEL_63:

    goto LABEL_58;
  }

LABEL_32:
  v40 = -1;
LABEL_58:

  objc_autoreleasePoolPop(context);
  v58 = *MEMORY[0x277D85DE8];
  return v40;
}

double __148__PGLocationTitleUtility__sortedAOINodeCombinationsForCombinations_aoiNodesToAddressNodesMapTable_assetCountByAddressNodeIdentifier_locationHelper___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [*(a1 + 32) objectForKey:v9];
        [*(a1 + 40) _weightForAreaNode:v9 withAddressNodes:v10];
        v7 = v7 + v11;
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (double)_weightForAreaNode:(id)a3 withAddressNodes:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [v5 anyEdgeFromNode:*(*(&v17 + 1) + 8 * i)];
        [v12 relevance];
        v14 = 1.0 - v13;

        v10 = v10 + v14;
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)_aoiSubsetsFromAOI:(id)a3 maxSubsetSize:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB58] set];
  if (a4)
  {
    v8 = 1;
    do
    {
      v9 = [MEMORY[0x277CBEB98] set];
      v10 = [a1 _aoiSubsetsFromAOI:v6 idx:0 currentSubset:v9 subsetSize:v8];
      [v7 unionSet:v10];

      ++v8;
    }

    while (v8 <= a4);
  }

  return v7;
}

+ (id)_aoiSubsetsFromAOI:(id)a3 idx:(unint64_t)a4 currentSubset:(id)a5 subsetSize:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [MEMORY[0x277CBEB58] set];
  if ([v10 count] != a4 || objc_msgSend(v11, "count") >= a6)
  {
    if ([v11 count] == a6)
    {
      [v12 addObject:v11];
    }

    else
    {
      v13 = [a1 _aoiSubsetsFromAOI:v10 idx:a4 + 1 currentSubset:v11 subsetSize:a6];
      [v12 unionSet:v13];

      v14 = [v11 mutableCopy];
      v15 = [v10 objectAtIndexedSubscript:a4];
      [v14 addObject:v15];

      v16 = [a1 _aoiSubsetsFromAOI:v10 idx:a4 + 1 currentSubset:v14 subsetSize:a6];
      [v12 unionSet:v16];
    }
  }

  return v12;
}

+ (id)commonAOIComponentsForMomentNodes:(id)a3 addressNodes:(id)a4 aoiDisplayType:(unint64_t)a5 containsAmusementParkPOI:(BOOL)a6 locationHelper:(id)a7
{
  v8 = a6;
  v107 = *MEMORY[0x277D85DE8];
  v58 = a3;
  v11 = a4;
  v65 = a7;
  v73 = v11;
  if (![v11 count] || a5 - 1 >= 4)
  {
    v43 = objc_alloc_init(MEMORY[0x277CBEB98]);
    goto LABEL_40;
  }

  v12 = dbl_22F78CE30[a5 - 1];
  if (v8)
  {
    v13 = 0.55;
  }

  else
  {
    v13 = dbl_22F78CE30[a5 - 1];
  }

  v14 = a5 == 2 || a5 == 4;
  v15 = 24;
  if (v14)
  {
    v15 = 45;
  }

  v62 = v15;
  v74 = [MEMORY[0x277CBEB38] dictionary];
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v58;
  v16 = 0;
  v17 = [obj countByEnumeratingWithState:&v99 objects:v106 count:16];
  if (v17)
  {
    v18 = *v100;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v100 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v99 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v22 = [v20 numberOfAssets];
        v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v98[0] = 0;
        v98[1] = v98;
        v98[2] = 0x2020000000;
        v98[3] = 0;
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __128__PGLocationTitleUtility_commonAOIComponentsForMomentNodes_addressNodes_aoiDisplayType_containsAmusementParkPOI_locationHelper___block_invoke;
        v94[3] = &unk_2788895E8;
        v95 = v73;
        v24 = v23;
        v96 = v24;
        v97 = v98;
        [v20 enumerateAddressEdgesAndNodesUsingBlock:v94];
        v90[0] = MEMORY[0x277D85DD0];
        v90[1] = 3221225472;
        v90[2] = __128__PGLocationTitleUtility_commonAOIComponentsForMomentNodes_addressNodes_aoiDisplayType_containsAmusementParkPOI_locationHelper___block_invoke_2;
        v90[3] = &unk_278889610;
        v92 = v98;
        v91 = v74;
        v93 = v22;
        [v24 enumerateKeysAndObjectsUsingBlock:v90];

        _Block_object_dispose(v98, 8);
        objc_autoreleasePoolPop(v21);
        v16 += v22;
      }

      v17 = [obj countByEnumeratingWithState:&v99 objects:v106 count:16];
    }

    while (v17);
  }

  obja = [MEMORY[0x277CBEB38] dictionary];
  v75 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v63 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v59 = v73;
  v66 = [v59 countByEnumeratingWithState:&v86 objects:v105 count:16];
  v25 = vcvtpd_u64_f64(v13 * v16);
  v57 = v25;
  if (!v66)
  {

LABEL_44:
    v46 = [v75 keyEnumerator];
    v72 = [v46 allObjects];

    contexta = [a1 _aoiSubsetsFromAOI:v72 maxSubsetSize:2];
    v68 = [a1 _filteredAOINodeCombinationsForCombinations:contexta minSize:1 maxSize:2 maxTitleLength:v62 minNumberOfAssets:v57 aoiNodesToAddressNodesMapTable:v75 assetCountByAddressNodeIdentifier:v74 locationHelper:v65];
    v47 = [a1 _sortedAOINodeCombinationsForCombinations:v68 aoiNodesToAddressNodesMapTable:v75 assetCountByAddressNodeIdentifier:v74 locationHelper:v65];
    v48 = [v47 firstObject];
    v43 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v48, "count")}];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v49 = v48;
    v50 = [v49 countByEnumeratingWithState:&v78 objects:v103 count:16];
    if (v50)
    {
      v51 = *v79;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v79 != v51)
          {
            objc_enumerationMutation(v49);
          }

          v53 = *(*(&v78 + 1) + 8 * j);
          v54 = [v75 objectForKey:v53];
          v55 = objc_alloc_init(PGLocationTitleComponent);
          [(PGLocationTitleComponent *)v55 setNode:v53];
          [(PGLocationTitleComponent *)v55 setAddressNodes:v54];
          [v43 addObject:v55];
        }

        v50 = [v49 countByEnumeratingWithState:&v78 objects:v103 count:16];
      }

      while (v50);
    }

    goto LABEL_52;
  }

  v56 = v16 - v25;
  v60 = 0;
  v61 = *v87;
  do
  {
    v26 = 0;
    do
    {
      if (*v87 != v61)
      {
        v27 = v26;
        objc_enumerationMutation(v59);
        v26 = v27;
      }

      v67 = v26;
      v28 = *(*(&v86 + 1) + 8 * v26);
      context = objc_autoreleasePoolPush();
      v29 = [MEMORY[0x277CBEB98] setWithObject:v28];
      v71 = [a1 _filteredAOINodesForAddressNodes:v29 aoiTitleMaximumLength:v62 locationHelper:v65];

      [v63 setObject:v71 forKey:v28];
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v28, "identifier")}];
      v31 = [v74 objectForKeyedSubscript:v30];
      v32 = [v31 unsignedIntegerValue];

      if ([v71 count])
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v33 = v71;
        v34 = [v33 countByEnumeratingWithState:&v82 objects:v104 count:16];
        if (v34)
        {
          v35 = *v83;
          do
          {
            for (k = 0; k != v34; ++k)
            {
              if (*v83 != v35)
              {
                objc_enumerationMutation(v33);
              }

              v37 = *(*(&v82 + 1) + 8 * k);
              v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v37, "identifier")}];
              v39 = [obja objectForKeyedSubscript:v38];
              v40 = [v39 unsignedIntegerValue];

              v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40 + v32];
              [obja setObject:v41 forKeyedSubscript:v38];

              v42 = [v75 objectForKey:v37];
              if (!v42)
              {
                v42 = [MEMORY[0x277CBEB58] set];
                [v75 setObject:v42 forKey:v37];
              }

              [v42 addObject:v28];
            }

            v34 = [v33 countByEnumeratingWithState:&v82 objects:v104 count:16];
          }

          while (v34);
        }
      }

      else
      {
        v60 += v32;
      }

      objc_autoreleasePoolPop(context);
      v26 = v67 + 1;
    }

    while (v67 + 1 != v66);
    v66 = [v59 countByEnumeratingWithState:&v86 objects:v105 count:16];
  }

  while (v66);

  if (v60 <= v56)
  {
    goto LABEL_44;
  }

  v43 = objc_alloc_init(MEMORY[0x277CBEB98]);
LABEL_52:

LABEL_40:
  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

void __128__PGLocationTitleUtility_commonAOIComponentsForMomentNodes_addressNodes_aoiDisplayType_containsAmusementParkPOI_locationHelper___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v5])
  {
    [v11 relevance];
    v7 = v6;
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "identifier")}];
    [v9 setObject:v8 forKeyedSubscript:v10];

    *(*(*(a1 + 48) + 8) + 24) = v7 + *(*(*(a1 + 48) + 8) + 24);
  }
}

void __128__PGLocationTitleUtility_commonAOIComponentsForMomentNodes_addressNodes_aoiDisplayType_containsAmusementParkPOI_locationHelper___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 doubleValue];
  v7 = v6 / *(*(*(a1 + 40) + 8) + 24);
  v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v9 = [v8 unsignedIntegerValue];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:ceil(v7 * *(a1 + 48)) + v9];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v5];
}

+ (id)_filteredAOINodesForAddressNodes:(id)a3 aoiTitleMaximumLength:(unint64_t)a4 locationHelper:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  v8 = [MEMORY[0x277CBEB58] set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 collection];
        v16 = [v7 areaNodesFromAddressNodes:v15];
        v17 = [v16 temporarySet];

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __96__PGLocationTitleUtility__filteredAOINodesForAddressNodes_aoiTitleMaximumLength_locationHelper___block_invoke;
        v24[3] = &unk_2788895C0;
        v26 = a1;
        v25 = v7;
        v27 = a4;
        v18 = [v17 objectsPassingTest:v24];
        [v8 unionSet:v18];

        objc_autoreleasePoolPop(v14);
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

BOOL __96__PGLocationTitleUtility__filteredAOINodesForAddressNodes_aoiTitleMaximumLength_locationHelper___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isBlocked] & 1) == 0 && ((objc_msgSend(v3, "popularityScore"), v4 >= 500.0) || (objc_msgSend(v3, "popularityScore"), v5 == -1.0)))
  {
    v7 = [*(a1 + 40) beautifiedLocationNodeStringWithPlaceNode:v3 locationHelper:*(a1 + 32)];
    v8 = v7;
    if (v7)
    {
      v6 = [v7 length] <= *(a1 + 48);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_filteredAddressNodesWithAddressNodes:(id)a3 momentNodes:(id)a4 incompleteLocationResolver:(id)a5 filterSignificantLocationsOption:(unint64_t)a6 locationHelper:(id)a7
{
  v37[3] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = [[PGLocationsResolver alloc] initWithMomentNodes:v14 incompleteLocationResolver:v13 locationHelper:v12];

  LODWORD(v16) = 1051931443;
  [(PGLocationsResolver *)v15 setMaximumMissingLocationsThreshold:v16];
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v37[0] = v17;
  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
  v37[1] = v18;
  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v37[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];

  v21 = [v14 sortedArrayUsingDescriptors:v20];

  v22 = [(PGLocationsResolver *)v15 resolvedLocationNodes];
  v23 = [[PGLocationsFilterer alloc] initWithSortedMomentNodes:v21 locationNodes:v22 incompleteLocationResolver:v13];

  if (a6 == 3)
  {
    v24 = 2;
  }

  else
  {
    v24 = a6 == 2;
  }

  [(PGLocationsFilterer *)v23 setFilteringType:v24];
  v25 = [(PGLocationsFilterer *)v23 filteredLocationNodes];
  v26 = [v25 count];
  if (v26 < [v22 count] && objc_msgSend(v11, "count"))
  {
    v27 = [v11 anyObject];
    v28 = [v27 graph];

    v36 = [(MAElementCollection *)[PGGraphAddressNodeCollection alloc] initWithSet:v11 graph:v28];
    v29 = [(MAElementCollection *)[PGGraphLocationNodeCollection alloc] initWithArray:v25 graph:v28];
    [(PGGraphLocationNodeCollection *)v29 addressNodes];
    v31 = v30 = v11;
    v32 = [(MAElementCollection *)v36 collectionByIntersecting:v31];
    v35 = [v32 temporarySet];

    v11 = v35;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (void)generateHighlightLocationTitleForTripWithMomentNodes:(id)a3 lineBreakBehavior:(unint64_t)a4 locationHelper:(id)a5 result:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[PGLocationTripTitleUtility alloc] initWithMomentNodes:v12 filterMomentsAndCities:1 allowLongAOI:0 locationHelper:v11];

  v14 = [(PGLocationTripTitleUtility *)v13 usedTitleComponents];
  v15 = [(PGLocationTripTitleUtility *)v13 tripTitleType];
  v16 = 0;
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v17 = [v14 firstObject];
      v19 = [v14 lastObject];
      v22 = MEMORY[0x277CCACA8];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v23;
      v24 = @"PGTripHighlightTitleFormatToLocation %@ andLocation %@";
    }

    else
    {
      if (v15 != 4)
      {
        goto LABEL_15;
      }

      v17 = [v14 firstObject];
      v19 = [v14 lastObject];
      v22 = MEMORY[0x277CCACA8];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v23;
      v24 = @"PGTripHighlightTitleFormatFromLocation %@ toLocation %@";
    }

    v27 = [v23 localizedStringForKey:v24 value:v24 table:@"Localizable"];
    v21 = [v22 localizedStringWithFormat:v27, v17, v19];
  }

  else
  {
    if ((v15 - 1) >= 2)
    {
      if (v15)
      {
        goto LABEL_15;
      }

      v25 = +[PGLogging sharedLogging];
      v26 = [v25 loggingConnection];

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_ERROR, "Trip title type was not set properly, found to be PGTripTitleTypeOther", buf, 2u);
      }

LABEL_18:
      v16 = 0;
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v17 = [v14 firstObject];
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"PGTripHighlightTitleFormatOneLocation %@" value:@"PGTripHighlightTitleFormatOneLocation %@" table:@"Localizable"];
    v21 = [v18 localizedStringWithFormat:v20, v17];
  }

  if (!v21)
  {
    goto LABEL_18;
  }

  v16 = [a1 _titleWithLineBreakBehavior:a4 forTitle:v21 titleComponents:v14];

LABEL_15:
  if (v10)
  {
LABEL_16:
    v28 = [(PGLocationTripTitleUtility *)v13 usedLocationNodes];
    v10[2](v10, v16, v28);
  }

LABEL_17:
}

+ (void)generateLocationTitleForTripWithMomentNodes:(id)a3 locationHelper:(id)a4 result:(id)a5
{
  v12 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [[PGLocationTripTitleUtility alloc] initWithMomentNodes:v8 filterMomentsAndCities:1 locationHelper:v7];

  if (v12)
  {
    v10 = [(PGLocationTripTitleUtility *)v9 title];
    v11 = [(PGLocationTripTitleUtility *)v9 usedLocationNodes];
    v12[2](v12, v10, v11);
  }
}

+ (BOOL)containsAmusementParkPOIFromMomentNodes:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __66__PGLocationTitleUtility_containsAmusementParkPOIFromMomentNodes___block_invoke;
      v11[3] = &unk_278889598;
      v11[4] = &v16;
      [v7 enumeratePOINodesUsingBlock:v11];
      if (v17[3])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v8 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void __66__PGLocationTitleUtility_containsAmusementParkPOIFromMomentNodes___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 label];
  *(*(*(a1 + 32) + 8) + 24) = [v5 isEqualToString:@"AmusementPark"];

  *a3 = *(*(*(a1 + 32) + 8) + 24);
}

+ (void)generateLocationTitleWithOptions:(id)a3 locationHelper:(id)a4 serviceManager:(id)a5 result:(id)a6
{
  v103 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v71 = a4;
  v67 = a5;
  v69 = a6;
  v70 = v10;
  v68 = [v10 momentNodes];
  if ([v68 count])
  {
    v11 = v10;
    if ([v10 useBusinessItems])
    {
      v94 = 0;
      v95 = &v94;
      v96 = 0x3032000000;
      v97 = __Block_byref_object_copy__67482;
      v98 = __Block_byref_object_dispose__67483;
      v99 = 0;
      v88 = 0;
      v89 = &v88;
      v90 = 0x3032000000;
      v91 = __Block_byref_object_copy__67482;
      v92 = __Block_byref_object_dispose__67483;
      v93 = 0;
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __96__PGLocationTitleUtility_generateLocationTitleWithOptions_locationHelper_serviceManager_result___block_invoke;
      v87[3] = &unk_278889568;
      v87[4] = &v94;
      v87[5] = &v88;
      [PGLocationTitleUtility generateBusinessItemLocationWithOptions:v10 result:v87];
      if (v95[5])
      {
        if (v69)
        {
          if (v89[5])
          {
            [MEMORY[0x277CBEB98] setWithObject:?];
          }

          else
          {
            [MEMORY[0x277CBEB98] set];
          }
          v56 = ;
          v69[2](v69, v95[5], v56);
        }

        _Block_object_dispose(&v88, 8);

        _Block_object_dispose(&v94, 8);
        goto LABEL_85;
      }

      _Block_object_dispose(&v88, 8);

      _Block_object_dispose(&v94, 8);
      v11 = v10;
    }

    v64 = [v11 keyAssetAddressNode];
    v63 = [v10 curationAddressNodes];
    v72 = [v10 lineBreakBehavior];
    v12 = [MEMORY[0x277CBEB58] set];
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v13 = v68;
    v14 = [v13 countByEnumeratingWithState:&v83 objects:v102 count:16];
    if (v14)
    {
      v15 = *v84;
      v16 = 1.79769313e308;
      v17 = -1.79769313e308;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v84 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v83 + 1) + 8 * i);
          [v19 timestampUTCStart];
          v21 = v20;
          [v19 timestampUTCEnd];
          if (v21 < v16)
          {
            v16 = v21;
          }

          if (v22 > v17)
          {
            v17 = v22;
          }

          v23 = [v19 addressNodes];
          if (v23)
          {
            [v12 unionSet:v23];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v83 objects:v102 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = 1.79769313e308;
      v17 = -1.79769313e308;
    }

    v24 = [v12 count];
    if (v69 && !v24)
    {
      v69[2](v69, 0, 0);
    }

    v25 = [v70 filterSignificantLocationsType];
    if (((v17 - v16 > 172800.0) & [v70 useTripTitleForLongDuration]) == 1)
    {
      v26 = [[PGLocationTripTitleUtility alloc] initWithMomentNodes:v13 filterMomentsAndCities:v25 != 0 locationHelper:v71];
      v66 = [(PGLocationTripTitleUtility *)v26 title];
      v61 = [(PGLocationTripTitleUtility *)v26 usedLocationNodes];

      if (v66)
      {
        v73 = v61;
LABEL_79:
        if (v69)
        {
          (v69)[2](v69, v66, v73);
        }

        goto LABEL_85;
      }
    }

    else
    {
      v61 = 0;
    }

    v62 = [[PGIncompleteLocationResolver alloc] initWithAddressNodes:v12 locationHelper:v71];
    if (v25)
    {
      v27 = [a1 _filteredAddressNodesWithAddressNodes:v12 momentNodes:v13 incompleteLocationResolver:v62 filterSignificantLocationsOption:objc_msgSend(v70 locationHelper:{"filterSignificantLocationsType"), v71}];
      v28 = v27;
      if (v27 != v12 || (v29 = [v27 count], v29 != objc_msgSend(v12, "count")))
      {
        v30 = [MEMORY[0x277CBEB58] setWithSet:v28];

        v12 = v30;
      }
    }

    v31 = [MEMORY[0x277CBEB58] set];
    if ([v70 peopleDisplayType])
    {
      v32 = [objc_opt_class() peopleLocationTitleComponentsFromAddressNodesSet:v12 peopleDisplayType:objc_msgSend(v70 serviceManager:{"peopleDisplayType"), v67}];
      [v31 unionSet:v32];
    }

    v74 = [MEMORY[0x277CBEB58] set];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v33 = v31;
    v34 = [v33 countByEnumeratingWithState:&v79 objects:v101 count:16];
    if (v34)
    {
      v35 = *v80;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v80 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = [*(*(&v79 + 1) + 8 * j) addressNodes];
          [v74 unionSet:v37];
          [v12 minusSet:v37];
        }

        v34 = [v33 countByEnumeratingWithState:&v79 objects:v101 count:16];
      }

      while (v34);
    }

    v38 = [v70 aoiDisplayType];
    if ((v38 - 1) > 3)
    {
      v65 = 0;
    }

    else
    {
      v65 = [a1 commonAOIComponentsForMomentNodes:v13 addressNodes:v12 aoiDisplayType:v38 containsAmusementParkPOI:objc_msgSend(a1 locationHelper:{"containsAmusementParkPOIFromMomentNodes:", v13), v71}];
    }

    if ([v70 useCities])
    {
      v60 = [a1 _commonCityTitleComponentsFromMomentNodes:v13 remainingAddressNodes:v12 ignoredAddressNodes:v74 incompleteLocationResolver:v62 locationHelper:v71];
      if (![v65 count])
      {
        if (v60)
        {
          [v33 unionSet:?];
        }

        else
        {
          v60 = 0;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v60 = 0;
      if (![v65 count])
      {
        goto LABEL_55;
      }
    }

    [v33 unionSet:v65];
LABEL_55:
    v39 = [v70 showAllCities];
    v40 = [v70 useDistrict];
    v41 = [v70 allowFamilyHome];
    LOBYTE(v94) = 0;
    BYTE2(v58) = v39;
    BYTE1(v58) = v41;
    LOBYTE(v58) = v40;
    v66 = [a1 _beautifiedLocationStringWithTitleComponents:v33 momentNodes:v13 lineBreakBehavior:v72 keyAssetAddressNode:v64 curationAddressNodes:v63 isMatchingKeyAsset:&v94 useDistrict:v58 allowFamilyHome:v71 showAllCities:v67 locationHelper:? serviceManager:?];
    if ((v94 & 1) == 0 && [v65 count])
    {
      [v33 minusSet:v65];
      if ([v60 count])
      {
        [v33 unionSet:v60];
      }

      BYTE2(v59) = v39;
      BYTE1(v59) = v41;
      LOBYTE(v59) = v40;
      v42 = [a1 _beautifiedLocationStringWithTitleComponents:v33 momentNodes:v13 lineBreakBehavior:v72 keyAssetAddressNode:v64 curationAddressNodes:v63 isMatchingKeyAsset:&v94 useDistrict:v59 allowFamilyHome:v71 showAllCities:v67 locationHelper:? serviceManager:?];

      v66 = v42;
    }

    v73 = [MEMORY[0x277CBEB58] set];
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v43 = v33;
    v44 = [v43 countByEnumeratingWithState:&v75 objects:v100 count:16];
    if (v44)
    {
      v45 = *v76;
      do
      {
        v46 = 0;
        do
        {
          if (*v76 != v45)
          {
            objc_enumerationMutation(v43);
          }

          v47 = *(*(&v75 + 1) + 8 * v46);
          v48 = [v47 node];
          v49 = v48;
          if (v48)
          {
            if ([v48 domain] == 200 || objc_msgSend(v49, "domain") == 201)
            {
              [v73 addObject:v49];
            }

            else if ([v49 domain] == 300)
            {
              v50 = [v47 edge];
              v51 = v50;
              if (v50)
              {
                v52 = [v50 sourceNode];
                v53 = [v71 cityNodeFromAddressNode:v52];
                v54 = [v53 anyNode];

                if (v54)
                {
                  [v73 addObject:v54];
                }
              }
            }
          }

          ++v46;
        }

        while (v44 != v46);
        v55 = [v43 countByEnumeratingWithState:&v75 objects:v100 count:16];
        v44 = v55;
      }

      while (v55);
    }

    goto LABEL_79;
  }

  if (v69)
  {
    v69[2](v69, 0, 0);
  }

LABEL_85:

  v57 = *MEMORY[0x277D85DE8];
}

void __96__PGLocationTitleUtility_generateLocationTitleWithOptions_locationHelper_serviceManager_result___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (id)businessNodeForTitlingFromMomentNodes:(id)a3 businessNodesByMomentNode:(id)a4
{
  v5 = a3;
  v6 = [a4 intersectingSourcesWith:v5];
  v7 = [v6 targets];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 1;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __90__PGLocationTitleUtility_businessNodeForTitlingFromMomentNodes_businessNodesByMomentNode___block_invoke;
    v18 = &unk_278889540;
    v9 = v6;
    v19 = v9;
    v20 = v21;
    [v5 enumerateIdentifiersAsCollectionsWithBlock:&v15];
    v10 = [v9 targets];
    v11 = [v10 anyNode];

    v12 = [v11 name];
    if ([v12 length] <= 0x1E && objc_msgSend(v12, "length"))
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(v21, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __90__PGLocationTitleUtility_businessNodeForTitlingFromMomentNodes_businessNodesByMomentNode___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) targetsForSources:?];
  v7 = [v6 count];

  if (!v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

+ (void)generateBusinessItemLocationWithOptions:(id)a3 result:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 momentNodes];
    v9 = [v8 anyObject];
    v10 = [v9 graph];

    if ([v8 count] && v10)
    {
      v11 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:v8 graph:v10];
      v12 = MEMORY[0x277D22BF8];
      v13 = +[PGGraphMomentNode businessOfMoment];
      v14 = [v12 adjacencyWithSources:v11 relation:v13 targetsClass:objc_opt_class()];

      v15 = [a1 businessNodeForTitlingFromMomentNodes:v11 businessNodesByMomentNode:v14];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 name];
        v22 = [v6 lineBreakBehavior];
        v23[0] = v17;
        [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
        v19 = v18 = v14;
        v20 = [a1 _titleWithLineBreakBehavior:v22 forTitle:v17 titleComponents:v19];

        v14 = v18;
        v7[2](v7, v20, v16);
      }

      else
      {
        v7[2](v7, 0, 0);
      }
    }

    else
    {
      v7[2](v7, 0, 0);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end