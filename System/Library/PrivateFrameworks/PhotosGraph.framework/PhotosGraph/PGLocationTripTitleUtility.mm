@interface PGLocationTripTitleUtility
+ (BOOL)visitedLocations:(id)locations onlyDuringMoments:(id)moments locationHelper:(id)helper;
+ (id)_filteredCityNodesByNameForCityNodes:(id)nodes;
+ (void)_aoiTitleWithLocationNodes:(id)nodes momentNodes:(id)momentNodes allowLongAOI:(BOOL)i graph:(id)graph locationHelper:(id)helper result:(id)result;
+ (void)_cityStateAndCountryNodesForLocationNodes:(id)nodes result:(id)result;
- (PGLocationTripTitleUtility)initWithMomentNodes:(id)nodes filterMomentsAndCities:(BOOL)cities allowLongAOI:(BOOL)i locationHelper:(id)helper;
- (id)_bestAddressNodeForCityNodes:(id)nodes inMomentNodes:(id)momentNodes;
- (id)_cityNodesFromMomentNodes:(id)nodes;
- (id)_locationTitleWithLocationNode:(id)node addressNode:(id)addressNode countryNode:(id)countryNode allowSecondPart:(BOOL)part;
- (void)_cityTitleWithCityNode:(id)node countryNode:(id)countryNode visitedCountryOnlyOnce:(BOOL)once momentNodes:(id)nodes result:(id)result;
- (void)_generateLocationTitle;
- (void)_generateTitleForMomentNodes:(id)nodes resolvedMomentNodes:(id)momentNodes resolvedLocations:(id)locations;
- (void)_resolveMomentNodes:(id)nodes withResult:(id)result;
@end

@implementation PGLocationTripTitleUtility

- (id)_locationTitleWithLocationNode:(id)node addressNode:(id)addressNode countryNode:(id)countryNode allowSecondPart:(BOOL)part
{
  partCopy = part;
  nodeCopy = node;
  addressNodeCopy = addressNode;
  countryNodeCopy = countryNode;
  v13 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:nodeCopy locationHelper:self->_locationHelper];
  if (partCopy)
  {
    graph = [countryNodeCopy graph];
    supersetCountryNodes = [graph supersetCountryNodes];

    if ([supersetCountryNodes containsNode:countryNodeCopy])
    {
    }

    else
    {
      name = [countryNodeCopy name];
      v17 = [PGCountrySize isLargeCountry:name];

      if (v17)
      {
        v18 = 8;
      }

      else
      {
        v18 = 9;
      }

      v19 = [PGLocationTitleUtility _twoPartLocationTitleWithFirstPartTitle:v13 withDimension:v18 usedFirstPartLocationNode:nodeCopy addressNode:addressNodeCopy locationHelper:self->_locationHelper];

      if (v19)
      {
        goto LABEL_9;
      }
    }
  }

  v19 = v13;
LABEL_9:

  return v19;
}

- (id)_bestAddressNodeForCityNodes:(id)nodes inMomentNodes:(id)momentNodes
{
  v59 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  momentNodesCopy = momentNodes;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = nodesCopy;
  v29 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v29)
  {
    bestAddressNode = 0;
    v27 = *v53;
    v7 = -1.79769313e308;
    do
    {
      v8 = 0;
      do
      {
        if (*v53 != v27)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v30 = v8;
        v10 = *(*(&v52 + 1) + 8 * v8);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v31 = momentNodesCopy;
        v11 = [v31 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v11)
        {
          v12 = *v49;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v49 != v12)
              {
                objc_enumerationMutation(v31);
              }

              v14 = *(*(&v48 + 1) + 8 * i);
              v44 = 0;
              v45 = &v44;
              v46 = 0x2020000000;
              v47 = 0;
              *buf = 0;
              v39 = buf;
              v40 = 0x3032000000;
              v41 = __Block_byref_object_copy__48759;
              v42 = __Block_byref_object_dispose__48760;
              v43 = 0;
              v37[0] = MEMORY[0x277D85DD0];
              v37[1] = 3221225472;
              v37[2] = __73__PGLocationTripTitleUtility__bestAddressNodeForCityNodes_inMomentNodes___block_invoke;
              v37[3] = &unk_2788852E8;
              v37[4] = self;
              v37[5] = v10;
              v37[6] = &v44;
              v37[7] = buf;
              [v14 enumerateAddressEdgesAndNodesUsingBlock:v37];
              v15 = v45[3];
              if (v15 > v7)
              {
                v16 = *(v39 + 5);
                v17 = bestAddressNode;
                bestAddressNode = v16;

                v7 = v15;
              }

              _Block_object_dispose(buf, 8);

              _Block_object_dispose(&v44, 8);
            }

            v11 = [v31 countByEnumeratingWithState:&v48 objects:v57 count:16];
          }

          while (v11);
        }

        v8 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v29);

    if (bestAddressNode)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v18 = +[PGLogging sharedLogging];
  loggingConnection = [v18 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Could not find best address for city in moments. Using any address", buf, 2u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = momentNodesCopy;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v56 count:16];
  if (v21)
  {
    v22 = *v34;
LABEL_24:
    v23 = 0;
    while (1)
    {
      if (*v34 != v22)
      {
        objc_enumerationMutation(v20);
      }

      bestAddressNode = [*(*(&v33 + 1) + 8 * v23) bestAddressNode];
      if (bestAddressNode)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [v20 countByEnumeratingWithState:&v33 objects:v56 count:16];
        if (v21)
        {
          goto LABEL_24;
        }

        goto LABEL_30;
      }
    }
  }

  else
  {
LABEL_30:
    bestAddressNode = 0;
  }

LABEL_32:
  v24 = *MEMORY[0x277D85DE8];

  return bestAddressNode;
}

void __73__PGLocationTripTitleUtility__bestAddressNodeForCityNodes_inMomentNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) cityNodeFromAddressNode:v5];
  v7 = [v6 anyNode];

  if (!v7)
  {
    v7 = [*(*(a1 + 32) + 48) resolvedLocationNodeForIncompleteAddressNode:v5 withTargetDimension:6];
  }

  if ([*(a1 + 40) isSameNodeAsNode:v7])
  {
    [v10 relevance];
    if (v8 > *(*(*(a1 + 48) + 8) + 24))
    {
      [v10 relevance];
      *(*(*(a1 + 48) + 8) + 24) = v9;
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    }
  }
}

- (void)_cityTitleWithCityNode:(id)node countryNode:(id)countryNode visitedCountryOnlyOnce:(BOOL)once momentNodes:(id)nodes result:(id)result
{
  onceCopy = once;
  selfCopy = self;
  v41 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  countryNodeCopy = countryNode;
  nodesCopy = nodes;
  resultCopy = result;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = nodesCopy;
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v14)
  {
    v15 = *v32;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v32 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v31 + 1) + 8 * v16);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __107__PGLocationTripTitleUtility__cityTitleWithCityNode_countryNode_visitedCountryOnlyOnce_momentNodes_result___block_invoke;
      v30[3] = &unk_2788852C0;
      v30[4] = &v35;
      [v17 enumerateROINodesUsingBlock:{v30, selfCopy, nodeCopy}];
      if (v36[3])
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v18 = countryNodeCopy;
  v19 = *(v36 + 24);
  v20 = nodeCopy;
  v21 = v20;
  if (!onceCopy || (v19 & 1) != 0)
  {
    name = [v20 name];
  }

  else
  {
    v39 = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    v23 = [(PGLocationTripTitleUtility *)selfCopy _bestAddressNodeForCityNodes:v22 inMomentNodes:v13];

    name = [(PGLocationTripTitleUtility *)selfCopy _locationTitleWithLocationNode:v21 addressNode:v23 countryNode:v18 allowSecondPart:1];
  }

  if (v21)
  {
    [MEMORY[0x277CBEB98] setWithObject:v21];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v25 = ;
  if (resultCopy)
  {
    resultCopy[2](resultCopy, name, v25);
  }

  _Block_object_dispose(&v35, 8);
  v26 = *MEMORY[0x277D85DE8];
}

void __107__PGLocationTripTitleUtility__cityTitleWithCityNode_countryNode_visitedCountryOnlyOnce_momentNodes_result___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 label];
  v6 = [v5 isEqualToString:@"Urban"];

  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (id)_cityNodesFromMomentNodes:(id)nodes
{
  v26 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = nodesCopy;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __56__PGLocationTripTitleUtility__cityNodesFromMomentNodes___block_invoke;
        v18[3] = &unk_278885270;
        v18[4] = self;
        v19 = v6;
        v20 = array;
        [v11 enumerateAddressEdgesAndNodesUsingBlock:v18];
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__PGLocationTripTitleUtility__cityNodesFromMomentNodes___block_invoke_2;
  v16[3] = &unk_278885298;
  v17 = v6;
  v12 = v6;
  [array sortUsingComparator:v16];

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

void __56__PGLocationTripTitleUtility__cityNodesFromMomentNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) closestLocationNodeFromLocationNode:v5 withDimension:6 reverse:0];
  v7 = [v6 label];
  v8 = [PGCommonTitleUtility dimensionForLabel:v7];

  if (v8 >= 7)
  {
    v9 = [*(*(a1 + 32) + 48) resolvedLocationNodeForIncompleteAddressNode:v5 withTargetDimension:6];
    v10 = v9;
    if (v9)
    {
      v11 = v9;

      v8 = 6;
      v6 = v11;
    }
  }

  if (v6)
  {
    v12 = [v15 universalStartDate];
    v13 = [*(a1 + 40) objectForKey:v6];
    v14 = v13;
    if (v12 && (!v13 || [v12 compare:v13] == -1))
    {
      [*(a1 + 40) setObject:v12 forKey:v6];
    }

    if (v8 == 6 && ([*(a1 + 48) containsObject:v6] & 1) == 0)
    {
      [*(a1 + 48) addObject:v6];
    }
  }
}

uint64_t __56__PGLocationTripTitleUtility__cityNodesFromMomentNodes___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  if (v7)
  {
    if (v8)
    {
      v9 = [v7 compare:v8];
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_resolveMomentNodes:(id)nodes withResult:(id)result
{
  nodesCopy = nodes;
  resultCopy = result;
  v8 = [[PGLocationsResolver alloc] initWithSortedMomentNodes:nodesCopy incompleteLocationResolver:self->_incompleteLocationResolver locationHelper:self->_locationHelper];
  if (self->_filterMomentsAndCities)
  {
    firstObject = [nodesCopy firstObject];
    graph = [firstObject graph];

    v11 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:nodesCopy graph:graph];
    frequentLocationNodes = [(PGGraphMomentNodeCollection *)v11 frequentLocationNodes];

    addressNodes = [frequentLocationNodes addressNodes];
    cityNodes = [addressNodes cityNodes];

    temporarySet = [cityNodes temporarySet];
    [(PGLocationsResolver *)v8 setIgnoredLocationNodes:temporarySet];
  }

  resolvedMomentNodes = [(PGLocationsResolver *)v8 resolvedMomentNodes];
  resolvedLocationNodes = [(PGLocationsResolver *)v8 resolvedLocationNodes];
  if (![resolvedMomentNodes count])
  {
    v18 = +[PGLogging sharedLogging];
    loggingConnection = [v18 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Filtered out all moments. Resetting to all moments.", v24, 2u);
    }

    v20 = nodesCopy;
    resolvedMomentNodes = v20;
  }

  if (![resolvedLocationNodes count])
  {
    v21 = [(PGLocationTripTitleUtility *)self _cityNodesFromMomentNodes:resolvedMomentNodes];

    resolvedLocationNodes = v21;
  }

  if (self->_filterMomentsAndCities)
  {
    v22 = [[PGLocationsFilterer alloc] initWithSortedMomentNodes:nodesCopy locationNodes:resolvedLocationNodes incompleteLocationResolver:self->_incompleteLocationResolver];
    filteredLocationNodes = [(PGLocationsFilterer *)v22 filteredLocationNodes];

    resolvedLocationNodes = filteredLocationNodes;
  }

  if (resultCopy)
  {
    resultCopy[2](resultCopy, resolvedMomentNodes, resolvedLocationNodes);
  }
}

- (void)_generateTitleForMomentNodes:(id)nodes resolvedMomentNodes:(id)momentNodes resolvedLocations:(id)locations
{
  v281 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  momentNodesCopy = momentNodes;
  locationsCopy = locations;
  v192 = momentNodesCopy;
  firstObject = [momentNodesCopy firstObject];
  graph = [firstObject graph];

  if (graph)
  {
    *buf = 0;
    v258 = buf;
    v259 = 0x3032000000;
    v260 = __Block_byref_object_copy__48759;
    v261 = __Block_byref_object_dispose__48760;
    v262 = 0;
    v251 = 0;
    v252 = &v251;
    v253 = 0x3032000000;
    v254 = __Block_byref_object_copy__48759;
    v255 = __Block_byref_object_dispose__48760;
    v256 = [MEMORY[0x277CBEB98] set];
    v245 = 0;
    v246 = &v245;
    v247 = 0x3032000000;
    v248 = __Block_byref_object_copy__48759;
    v249 = __Block_byref_object_dispose__48760;
    v250 = [MEMORY[0x277CBEB98] set];
    v239 = 0;
    v240 = &v239;
    v241 = 0x3032000000;
    v242 = __Block_byref_object_copy__48759;
    v243 = __Block_byref_object_dispose__48760;
    v244 = 0;
    v233 = 0;
    v234 = &v233;
    v235 = 0x3032000000;
    v236 = __Block_byref_object_copy__48759;
    v237 = __Block_byref_object_dispose__48760;
    v238 = 0;
    v227 = 0;
    v228 = &v227;
    v229 = 0x3032000000;
    v230 = __Block_byref_object_copy__48759;
    v231 = __Block_byref_object_dispose__48760;
    v232 = 0;
    v9 = objc_opt_class();
    v226[0] = MEMORY[0x277D85DD0];
    v226[1] = 3221225472;
    v226[2] = __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke;
    v226[3] = &unk_278885158;
    v226[4] = &v239;
    v226[5] = &v233;
    v226[6] = &v227;
    [v9 _cityStateAndCountryNodesForLocationNodes:locationsCopy result:v226];
    if (![v228[5] count])
    {
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      v224 = 0u;
      v225 = 0u;
      v222 = 0u;
      v223 = 0u;
      obj = nodesCopy;
      v12 = [obj countByEnumeratingWithState:&v222 objects:v280 count:16];
      if (v12)
      {
        v13 = *v223;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v223 != v13)
            {
              objc_enumerationMutation(obj);
            }

            collection = [*(*(&v222 + 1) + 8 * i) collection];
            addressNodes = [collection addressNodes];
            stateNodes = [addressNodes stateNodes];
            v219[0] = MEMORY[0x277D85DD0];
            v219[1] = 3221225472;
            v219[2] = __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_2;
            v219[3] = &unk_2788851A8;
            v220 = array2;
            v221 = array;
            [stateNodes enumerateNodesUsingBlock:v219];
          }

          v12 = [obj countByEnumeratingWithState:&v222 objects:v280 count:16];
        }

        while (v12);
      }

      v18 = v228[5];
      v228[5] = array;
      v19 = array;

      v20 = v234[5];
      v234[5] = array2;
    }

    if ([v228[5] count] == 1 && (objc_msgSend(v228[5], "firstObject"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "name"), v22 = objc_claimAutoreleasedReturnValue(), v23 = +[PGCountrySize isLargeCountry:](PGCountrySize, "isLargeCountry:", v22), v22, v21, v23))
    {
      v24 = [v234[5] count];
      v189 = 1;
    }

    else
    {
      v24 = [v228[5] count];
      v189 = 0;
    }

    obja = [graph supersetCountryNodes];
    supersetStateNodes = [graph supersetStateNodes];
    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    v25 = v228[5];
    v26 = [v25 countByEnumeratingWithState:&v215 objects:v279 count:16];
    v187 = v24;
    if (v26)
    {
      v27 = *v216;
      while (2)
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v216 != v27)
          {
            objc_enumerationMutation(v25);
          }

          if (([obja containsNode:*(*(&v215 + 1) + 8 * j)] & 1) == 0)
          {
            v188 = 0;
            goto LABEL_25;
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v215 objects:v279 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v188 = 1;
LABEL_25:

    selfCopy2 = self;
    v190 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:self->_momentNodes graph:graph];
    if (v228[5])
    {
      v30 = [PGGraphLocationCountryNodeCollection alloc];
      v31 = [(MAElementCollection *)v30 initWithArray:v228[5] graph:graph];
      v32 = [(PGGraphLocationHelper *)self->_locationHelper addressNodesFromLocationNodes:v31];
      v185 = [objc_opt_class() visitedLocations:v32 onlyDuringMoments:v190 locationHelper:self->_locationHelper];

      selfCopy2 = self;
    }

    else
    {
      v185 = 0;
    }

    v35 = v234;
    if (v234[5])
    {
      v36 = [PGGraphLocationStateNodeCollection alloc];
      v37 = [(MAElementCollection *)v36 initWithArray:v234[5] graph:graph];
      v38 = [(PGGraphLocationHelper *)selfCopy2->_locationHelper addressNodesFromLocationNodes:v37];
      v186 = [objc_opt_class() visitedLocations:v38 onlyDuringMoments:v190 locationHelper:selfCopy2->_locationHelper];

      v35 = v234;
    }

    else
    {
      v186 = 0;
    }

    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v39 = v35[5];
    v40 = [v39 countByEnumeratingWithState:&v211 objects:v278 count:16];
    if (v40)
    {
      v41 = *v212;
      while (2)
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v212 != v41)
          {
            objc_enumerationMutation(v39);
          }

          if ([supersetStateNodes containsNode:*(*(&v211 + 1) + 8 * k)])
          {
            v184 = 1;
            goto LABEL_44;
          }
        }

        v40 = [v39 countByEnumeratingWithState:&v211 objects:v278 count:16];
        if (v40)
        {
          continue;
        }

        break;
      }
    }

    v184 = 0;
LABEL_44:

    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v43 = v228[5];
    v44 = [v43 countByEnumeratingWithState:&v207 objects:v277 count:16];
    if (v44)
    {
      v45 = *v208;
      v46 = 1;
      v47 = 1;
      do
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v208 != v45)
          {
            objc_enumerationMutation(v43);
          }

          v49 = *(*(&v207 + 1) + 8 * m);
          v50 = [obja containsNode:v49];
          name = [v49 name];
          v52 = [PGCountrySize isLargeCountry:name];

          v47 &= v50 ^ 1;
          v46 &= !v52;
        }

        v44 = [v43 countByEnumeratingWithState:&v207 objects:v277 count:16];
      }

      while (v44);
      v53 = v46 ^ 1;
      v54 = v47 ^ 1;
    }

    else
    {
      v53 = 0;
      v54 = 0;
    }

    firstObject2 = [nodesCopy firstObject];
    lastObject = [nodesCopy lastObject];
    universalEndDate = [lastObject universalEndDate];
    universalStartDate = [firstObject2 universalStartDate];
    [universalEndDate timeIntervalSinceDate:universalStartDate];
    v60 = v59;

    v61 = v60 < 1209600.0 || [v228[5] count] < 5;
    v62 = [objc_opt_class() _filteredCityNodesByNameForCityNodes:v240[5]];
    v63 = v240[5];
    v240[5] = v62;

    v64 = lastObject;
    v65 = [v240[5] count];
    v66 = v65;
    v68 = (v187 * 1.2) > v65 && v65 != 0;
    selfCopy5 = self;
    v70 = self->_locationHelper;
    v71 = [v234[5] count];
    v72 = v189 | v188;
    if (v71 != 1)
    {
      v72 = 0;
    }

    if ((v72 & v186) == 1)
    {
      firstObject3 = [v234[5] firstObject];
      v74 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:firstObject3 locationHelper:v70];
      v75 = v74;
      if (v74)
      {
        v276 = v74;
        v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v276 count:1];
        v77 = *(v258 + 5);
        *(v258 + 5) = v76;

        v78 = [MEMORY[0x277CBEB98] setWithObject:firstObject3];
        v79 = v252[5];
        v252[5] = v78;

        v80 = [MEMORY[0x277CBEB98] setWithObject:firstObject3];
        v81 = v246[5];
        v246[5] = v80;

        self->_tripTitleLocationType = 2;
        if (v188)
        {
          self->_tripTitleType = 2;
        }
      }
    }

    else
    {
      v82 = [v228[5] count];
      v83 = v189;
      if (v82 != 1)
      {
        v83 = 1;
      }

      if ((v188 | v83) & 1) != 0 || ((v185 ^ 1))
      {
        if (v66 == 1)
        {
          firstObject3 = [v240[5] firstObject];
          firstObject4 = [v228[5] firstObject];
          v206[0] = MEMORY[0x277D85DD0];
          v206[1] = 3221225472;
          v206[2] = __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_4;
          v206[3] = &unk_2788851D0;
          v206[6] = &v251;
          v206[7] = &v245;
          v206[4] = self;
          v206[5] = buf;
          [(PGLocationTripTitleUtility *)self _cityTitleWithCityNode:firstObject3 countryNode:firstObject4 visitedCountryOnlyOnce:v185 momentNodes:v192 result:v206];

          goto LABEL_109;
        }

        if (((v184 | v189 ^ 1) & 1) != 0 || v66 < 3)
        {
          if ((v66 < 3) | (v53 | v54) & 1 || !v61)
          {
            if (v68)
            {
              goto LABEL_98;
            }

            v111 = v188 ^ 1;
            if (v66 - 1 > 3)
            {
              v111 = 1;
            }

            if (v111)
            {
              if (!v189 || ![v234[5] count] || objc_msgSend(v234[5], "count") >= 5)
              {
                if (!v188)
                {
                  if (![v228[5] count])
                  {
                    goto LABEL_110;
                  }

                  firstObject3 = [v228[5] firstObject];
                  lastObject2 = [v228[5] lastObject];
                  v166 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:firstObject3 locationHelper:v70];
                  v167 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:lastObject2 locationHelper:v70];
                  v168 = [MEMORY[0x277CBEB98] setWithObjects:{firstObject3, lastObject2, 0}];
                  v169 = v252[5];
                  v252[5] = v168;

                  v170 = [MEMORY[0x277CBEB98] setWithArray:v228[5]];
                  v171 = v246[5];
                  v246[5] = v170;

                  self->_tripTitleLocationType = 3;
                  if (v166)
                  {
                    v172 = [firstObject3 isSameNodeAsNode:lastObject2];
                    if (v167)
                    {
                      v173 = v172;
                    }

                    else
                    {
                      v173 = 1;
                    }

                    if (v173 == 1)
                    {
                      v266 = v166;
                      v174 = [MEMORY[0x277CBEA60] arrayWithObjects:&v266 count:1];
                      v175 = *(v258 + 5);
                      *(v258 + 5) = v174;
                    }

                    else if (v61)
                    {
                      v265[0] = v166;
                      v265[1] = v167;
                      v178 = [MEMORY[0x277CBEA60] arrayWithObjects:v265 count:2];
                      v179 = *(v258 + 5);
                      *(v258 + 5) = v178;

                      if ([v228[5] count] >= 3)
                      {
                        self->_tripTitleType = 4;
                      }
                    }

                    else
                    {
                      v180 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                      v181 = [v180 localizedStringForKey:@"PGLocationTitleFormatTripWorldTrip" value:@"PGLocationTitleFormatTripWorldTrip" table:@"Localizable"];
                      v264 = v181;
                      v182 = [MEMORY[0x277CBEA60] arrayWithObjects:&v264 count:1];
                      v183 = *(v258 + 5);
                      *(v258 + 5) = v182;
                    }
                  }

                  goto LABEL_109;
                }

                if (![v234[5] count])
                {
                  goto LABEL_110;
                }
              }

              firstObject3 = [v234[5] firstObject];
              lastObject3 = [v234[5] lastObject];
              v153 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:firstObject3 locationHelper:v70];
              v154 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:lastObject3 locationHelper:v70];
              v155 = [MEMORY[0x277CBEB98] setWithObjects:{firstObject3, lastObject3, 0}];
              v156 = v252[5];
              v252[5] = v155;

              v157 = [MEMORY[0x277CBEB98] setWithArray:v234[5]];
              v158 = v246[5];
              v246[5] = v157;

              self->_tripTitleLocationType = 2;
              if (v153)
              {
                v159 = [firstObject3 isSameNodeAsNode:lastObject3];
                if (v154)
                {
                  v160 = v159;
                }

                else
                {
                  v160 = 1;
                }

                if (v160 == 1)
                {
                  v268 = v153;
                  v161 = [MEMORY[0x277CBEA60] arrayWithObjects:&v268 count:1];
                  v162 = *(v258 + 5);
                  *(v258 + 5) = v161;
                }

                else
                {
                  v267[0] = v153;
                  v267[1] = v154;
                  v176 = [MEMORY[0x277CBEA60] arrayWithObjects:v267 count:2];
                  v177 = *(v258 + 5);
                  *(v258 + 5) = v176;

                  if ([v234[5] count] >= 3)
                  {
                    self->_tripTitleType = 4;
                  }
                }
              }
            }

            else
            {
LABEL_98:
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_5;
              aBlock[3] = &unk_278885220;
              v202 = v192;
              v112 = v70;
              v203 = v112;
              selfCopy4 = self;
              v205 = &v239;
              v113 = _Block_copy(aBlock);
              v114 = (*(v113 + 2))(v113, 0, 0);
              v115 = (*(v113 + 2))(v113, 1, v114);
              v116 = [MEMORY[0x277CBEB98] setWithObjects:{v114, v115, 0}];
              v117 = v252[5];
              v252[5] = v116;

              v118 = [MEMORY[0x277CBEB98] setWithArray:v240[5]];
              v119 = v246[5];
              v246[5] = v118;

              self->_tripTitleLocationType = 1;
              v120 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:v114 locationHelper:v112];
              v121 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:v115 locationHelper:v112];
              v122 = v121;
              if (v120)
              {
                if (v121 && ![v114 isSameNodeAsNode:v115])
                {
                  v269[0] = v120;
                  v269[1] = v122;
                  v163 = [MEMORY[0x277CBEA60] arrayWithObjects:v269 count:2];
                  v164 = *(v258 + 5);
                  *(v258 + 5) = v163;

                  if ([v240[5] count] >= 3)
                  {
                    self->_tripTitleType = 4;
                  }
                }

                else
                {
                  v270 = v120;
                  v123 = [MEMORY[0x277CBEA60] arrayWithObjects:&v270 count:1];
                  v124 = *(v258 + 5);
                  *(v258 + 5) = v123;
                }
              }

              firstObject3 = v202;
            }

LABEL_109:

            selfCopy5 = self;
LABEL_110:
            v133 = objc_opt_class();
            v134 = v252[5];
            allowLongAOI = selfCopy5->_allowLongAOI;
            v200[0] = MEMORY[0x277D85DD0];
            v200[1] = 3221225472;
            v200[2] = __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_7;
            v200[3] = &unk_278885248;
            v200[6] = &v251;
            v200[7] = &v245;
            v200[4] = selfCopy5;
            v200[5] = buf;
            [v133 _aoiTitleWithLocationNodes:v134 momentNodes:v192 allowLongAOI:allowLongAOI graph:graph locationHelper:v70 result:v200];
            firstObject5 = [*(v258 + 5) firstObject];
            lastObject4 = [*(v258 + 5) lastObject];
            v138 = v64;
            if ([*(v258 + 5) count] == 1 && objc_msgSend(firstObject5, "length"))
            {
              if (self->_tripTitleType != 2)
              {
                self->_tripTitleType = 1;
              }

              v139 = firstObject5;
            }

            else
            {
              if ([*(v258 + 5) count] < 2 || !objc_msgSend(firstObject5, "length") || !objc_msgSend(lastObject4, "length"))
              {
                goto LABEL_123;
              }

              if (self->_tripTitleType == 4)
              {
                v140 = MEMORY[0x277CCACA8];
                v141 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                [v141 localizedStringForKey:@"PGLocationTitleTitleFormatTripMultipleLocationsWithLocation %@ otherLocation %@" value:@"PGLocationTitleTitleFormatTripMultipleLocationsWithLocation %@ otherLocation %@" table:@"Localizable"];
              }

              else
              {
                self->_tripTitleType = 3;
                v140 = MEMORY[0x277CCACA8];
                v141 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                [v141 localizedStringForKey:@"PGLocationTitleFormatTwoLocationsWithLocation %@ otherLocation %@" value:@"PGLocationTitleFormatTwoLocationsWithLocation %@ otherLocation %@" table:@"Localizable"];
              }
              v142 = ;
              v137 = [v140 localizedStringWithFormat:v142, firstObject5, lastObject4];

              v263[0] = firstObject5;
              v263[1] = lastObject4;
              v144 = [MEMORY[0x277CBEA60] arrayWithObjects:v263 count:2];
              v139 = [PGCommonTitleUtility titleWithLineBreakForTitle:v137 andUsedNames:v144];
            }

            if (v139)
            {
LABEL_126:
              title = self->_title;
              self->_title = v139;
              v150 = v139;

              objc_storeStrong(&self->_usedLocationNodes, v252[5]);
              objc_storeStrong(&self->_filteredLocationNodes, v246[5]);
              objc_storeStrong(&self->_usedTitleComponents, *(v258 + 5));

              _Block_object_dispose(&v227, 8);
              _Block_object_dispose(&v233, 8);

              _Block_object_dispose(&v239, 8);
              _Block_object_dispose(&v245, 8);

              _Block_object_dispose(&v251, 8);
              _Block_object_dispose(buf, 8);

              goto LABEL_127;
            }

LABEL_123:
            v145 = +[PGLogging sharedLogging];
            loggingConnection = [v145 loggingConnection];

            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
            {
              *v199 = 0;
              _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Falling back to normal title generation", v199, 2u);
            }

            v147 = v252[5];
            v252[5] = 0;

            v148 = v246[5];
            v246[5] = 0;

            v139 = 0;
            goto LABEL_126;
          }

          firstObject3 = [v228[5] firstObject];
          lastObject5 = [v228[5] lastObject];
          v93 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:firstObject3 locationHelper:v70];
          v94 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:lastObject5 locationHelper:v70];
          v103 = [MEMORY[0x277CBEB98] setWithArray:v228[5]];
          v104 = v246[5];
          v246[5] = v103;

          self->_tripTitleLocationType = 3;
          if (v93)
          {
            v105 = [firstObject3 isSameNodeAsNode:lastObject5];
            if (v94)
            {
              v106 = v105;
            }

            else
            {
              v106 = 1;
            }

            if (v106 == 1)
            {
              v272 = v93;
              v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v272 count:1];
              v108 = *(v258 + 5);
              *(v258 + 5) = v107;

              v109 = [MEMORY[0x277CBEB98] setWithObject:firstObject3];
              v110 = v252[5];
              v252[5] = v109;
            }

            else
            {
              v271[0] = v93;
              v271[1] = v94;
              v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v271 count:2];
              v130 = *(v258 + 5);
              *(v258 + 5) = v129;

              v131 = [MEMORY[0x277CBEB98] setWithObjects:{firstObject3, lastObject5, 0}];
              v132 = v252[5];
              v252[5] = v131;

              if ([v228[5] count] >= 3)
              {
                self->_tripTitleType = 4;
              }
            }
          }
        }

        else
        {
          firstObject3 = [v234[5] firstObject];
          lastObject5 = [v234[5] lastObject];
          v93 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:firstObject3 locationHelper:v70];
          v94 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:lastObject5 locationHelper:v70];
          v95 = [MEMORY[0x277CBEB98] setWithArray:v234[5]];
          v96 = v246[5];
          v246[5] = v95;

          self->_tripTitleLocationType = 2;
          if (v93)
          {
            v97 = [firstObject3 isSameNodeAsNode:lastObject5];
            if (v94)
            {
              v98 = v97;
            }

            else
            {
              v98 = 1;
            }

            if (v98 == 1)
            {
              v274 = v93;
              v99 = [MEMORY[0x277CBEA60] arrayWithObjects:&v274 count:1];
              v100 = *(v258 + 5);
              *(v258 + 5) = v99;

              v101 = [MEMORY[0x277CBEB98] setWithObject:firstObject3];
              v102 = v252[5];
              v252[5] = v101;
            }

            else
            {
              v273[0] = v93;
              v273[1] = v94;
              v125 = [MEMORY[0x277CBEA60] arrayWithObjects:v273 count:2];
              v126 = *(v258 + 5);
              *(v258 + 5) = v125;

              v127 = [MEMORY[0x277CBEB98] setWithObjects:{firstObject3, lastObject5, 0}];
              v128 = v252[5];
              v252[5] = v127;

              if ([v234[5] count] >= 3)
              {
                self->_tripTitleType = 4;
              }
            }
          }
        }

        goto LABEL_109;
      }

      firstObject3 = [v228[5] firstObject];
      v84 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:firstObject3 locationHelper:v70];
      v75 = v84;
      if (v84)
      {
        v275 = v84;
        v85 = [MEMORY[0x277CBEA60] arrayWithObjects:&v275 count:1];
        v86 = *(v258 + 5);
        *(v258 + 5) = v85;

        v87 = [MEMORY[0x277CBEB98] setWithObject:firstObject3];
        v88 = v252[5];
        v252[5] = v87;

        v89 = [MEMORY[0x277CBEB98] setWithObject:firstObject3];
        v90 = v246[5];
        v246[5] = v89;

        self->_tripTitleLocationType = 3;
      }
    }

    goto LABEL_109;
  }

  v33 = +[PGLogging sharedLogging];
  loggingConnection2 = [v33 loggingConnection];

  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "No filtered moment nodes, falling back to normal title generation", buf, 2u);
  }

LABEL_127:
  v151 = *MEMORY[0x277D85DE8];
}

void __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

void __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }

  v4 = [v3 collection];
  v5 = [v4 countryNodes];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_3;
  v6[3] = &unk_278885180;
  v7 = *(a1 + 40);
  [v5 enumerateNodesUsingBlock:v6];
}

void __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_4(void *a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a2)
  {
    v13[0] = a2;
    v7 = MEMORY[0x277CBEA60];
    v8 = a2;
    v9 = [v7 arrayWithObjects:v13 count:1];
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
    *(a1[4] + 72) = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_5(uint64_t a1, unsigned int a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = [v5 reverseObjectEnumerator];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v24 = [v25 name];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v8)
  {
    v23 = *v43;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v43 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v42 + 1) + 8 * v9);
      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x2020000000;
      v41[3] = a2 - 1;
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__48759;
      v39 = __Block_byref_object_dispose__48760;
      v40 = 0;
      v11 = [v10 collection];
      v12 = [v11 addressNodes];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_6;
      v26[3] = &unk_2788851F8;
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v27 = v13;
      v28 = v14;
      v15 = v25;
      v16 = *(a1 + 56);
      v29 = v15;
      v31 = v16;
      v17 = v24;
      v34 = a2;
      v30 = v17;
      v32 = v41;
      v33 = &v35;
      [v12 enumerateNodesUsingBlock:v26];

      v18 = v36[5];
      if (v18)
      {
        v22 = v18;
      }

      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(v41, 8);
      if (v18)
      {
        break;
      }

      if (v8 == ++v9)
      {
        v8 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v22 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v22;
}

void __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_7(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if ([v7 count])
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
    *(a1[4] + 72) = 4;
  }
}

void __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_6(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) cityNodeFromAddressNode:?];
  v4 = [v3 anyNode];

  if (v4 || ([*(*(a1 + 40) + 48) resolvedLocationNodeForIncompleteAddressNode:v11 withTargetDimension:6], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (([v4 isSameNodeAsNode:*(a1 + 48)] & 1) == 0)
    {
      if ([*(*(*(a1 + 64) + 8) + 40) containsObject:v4])
      {
        v5 = *(a1 + 56);
        if (!v5 || ([v4 name], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, (v7 & 1) == 0))
        {
          if ((v8 = [*(*(*(a1 + 64) + 8) + 40) indexOfObject:v4], v9 = v8, v10 = *(a1 + 88), v10 == 1) && v8 >= *(*(*(a1 + 72) + 8) + 24) || (v10 & 1) == 0 && v8 < *(*(*(a1 + 72) + 8) + 24))
          {
            objc_storeStrong((*(*(a1 + 80) + 8) + 40), v4);
            *(*(*(a1 + 72) + 8) + 24) = v9;
          }
        }
      }
    }
  }
}

void __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)_generateLocationTitle
{
  v11[1] = *MEMORY[0x277D85DE8];
  momentNodes = self->_momentNodes;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestampUTCStart" ascending:1];
  v11[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [(NSSet *)momentNodes sortedArrayUsingDescriptors:v5];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__PGLocationTripTitleUtility__generateLocationTitle__block_invoke;
  v9[3] = &unk_278885130;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  [(PGLocationTripTitleUtility *)self _resolveMomentNodes:v7 withResult:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (PGLocationTripTitleUtility)initWithMomentNodes:(id)nodes filterMomentsAndCities:(BOOL)cities allowLongAOI:(BOOL)i locationHelper:(id)helper
{
  nodesCopy = nodes;
  helperCopy = helper;
  v19.receiver = self;
  v19.super_class = PGLocationTripTitleUtility;
  v13 = [(PGLocationTripTitleUtility *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_momentNodes, nodes);
    v14->_filterMomentsAndCities = cities;
    v14->_allowLongAOI = i;
    v15 = [PGCommonTitleUtility addressNodesFromMomentNodes:nodesCopy];
    v16 = [[PGIncompleteLocationResolver alloc] initWithAddressNodes:v15 locationHelper:helperCopy];
    incompleteLocationResolver = v14->_incompleteLocationResolver;
    v14->_incompleteLocationResolver = v16;

    objc_storeStrong(&v14->_locationHelper, helper);
    [(PGLocationTripTitleUtility *)v14 _generateLocationTitle];
  }

  return v14;
}

+ (void)_cityStateAndCountryNodesForLocationNodes:(id)nodes result:(id)result
{
  v33 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  resultCopy = result;
  if ([nodesCopy count])
  {
    firstObject = [nodesCopy firstObject];
    label = [firstObject label];

    if ([label isEqualToString:@"City"])
    {
      v9 = nodesCopy;
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
    }

    else
    {
      if ([label isEqualToString:@"State"])
      {
        array = nodesCopy;
        array2 = [MEMORY[0x277CBEB18] array];
      }

      else
      {
        if ([label isEqualToString:@"Country"])
        {
          array2 = nodesCopy;
        }

        else
        {
          array2 = 0;
        }

        array = 0;
      }

      v9 = 0;
    }

    if (([label isEqualToString:@"Country"] & 1) == 0)
    {
      v24 = v9;
      v25 = resultCopy;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = nodesCopy;
      obj = nodesCopy;
      v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v29;
        do
        {
          v15 = 0;
          do
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v28 + 1) + 8 * v15);
            if (array && ([label isEqualToString:@"State"] & 1) == 0)
            {
              locationNodeCollection = [v16 locationNodeCollection];
              v18 = [locationNodeCollection nearestDeepParentLocationNodesWithLabel:@"State"];
              anyNode = [v18 anyNode];

              if (anyNode && ([array containsObject:anyNode] & 1) == 0)
              {
                [array addObject:anyNode];
              }
            }

            locationNodeCollection2 = [v16 locationNodeCollection];
            v21 = [locationNodeCollection2 nearestDeepParentLocationNodesWithLabel:@"Country"];
            anyNode2 = [v21 anyNode];

            if (anyNode2 && ([array2 containsObject:anyNode2] & 1) == 0)
            {
              [array2 addObject:anyNode2];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v13);
      }

      resultCopy = v25;
      nodesCopy = v26;
      v9 = v24;
    }

    if (resultCopy)
    {
      resultCopy[2](resultCopy, v9, array, array2);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (BOOL)visitedLocations:(id)locations onlyDuringMoments:(id)moments locationHelper:(id)helper
{
  momentsCopy = moments;
  v8 = [helper momentNodesByAddressNodeIntersectingAddressNodes:locations];
  v9 = [v8 subtractingTargetsWith:momentsCopy];

  LOBYTE(v8) = [v9 sourcesCount] == 0;
  return v8;
}

+ (void)_aoiTitleWithLocationNodes:(id)nodes momentNodes:(id)momentNodes allowLongAOI:(BOOL)i graph:(id)graph locationHelper:(id)helper result:(id)result
{
  iCopy = i;
  v56[2] = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  momentNodesCopy = momentNodes;
  graphCopy = graph;
  helperCopy = helper;
  resultCopy = result;
  v17 = [MEMORY[0x277CBEB58] set];
  array = [MEMORY[0x277CBEB18] array];
  context = objc_autoreleasePoolPush();
  v19 = [MEMORY[0x277CBEB98] setWithArray:momentNodesCopy];
  v20 = [PGLocationTitleUtility containsAmusementParkPOIFromMomentNodes:v19];
  v49 = momentNodesCopy;
  v21 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:momentNodesCopy graph:graphCopy];
  v50 = nodesCopy;
  v48 = graphCopy;
  v22 = [(MAElementCollection *)[PGGraphLocationNodeCollection alloc] initWithSet:nodesCopy graph:graphCopy];
  v44 = v21;
  addressNodes = [(PGGraphMomentNodeCollection *)v21 addressNodes];
  v43 = v22;
  addressNodes2 = [(PGGraphLocationNodeCollection *)v22 addressNodes];
  v25 = [addressNodes collectionByIntersecting:addressNodes2];

  if (iCopy)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  v42 = v25;
  temporarySet = [v25 temporarySet];
  v45 = v19;
  v28 = [PGLocationTitleUtility commonAOIComponentsForMomentNodes:v19 addressNodes:temporarySet aoiDisplayType:v26 containsAmusementParkPOI:v20 locationHelper:helperCopy];

  v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestampStart" ascending:1];
  v56[0] = v29;
  v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"node.name" ascending:1];
  v56[1] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  v41 = v28;
  v32 = [v28 sortedArrayUsingDescriptors:v31];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v33 = v32;
  v34 = [v33 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v52;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v52 != v36)
        {
          objc_enumerationMutation(v33);
        }

        node = [*(*(&v51 + 1) + 8 * i) node];
        v39 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:node locationHelper:helperCopy];
        if ([v39 length])
        {
          [array addObject:v39];
          [v17 addObject:node];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v35);
  }

  objc_autoreleasePoolPop(context);
  if (resultCopy)
  {
    resultCopy[2](resultCopy, array, v17);
  }

  v40 = *MEMORY[0x277D85DE8];
}

+ (id)_filteredCityNodesByNameForCityNodes:(id)nodes
{
  v20 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(nodesCopy, "count")}];
  v5 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = nodesCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        name = [v11 name];
        if (name && ([v5 containsObject:name] & 1) == 0)
        {
          [v4 addObject:v11];
          [v5 addObject:name];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end