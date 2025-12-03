@interface PXStoryAutoEditMomentsProvider
- (NSArray)moments;
- (PXStoryAutoEditMomentsProvider)initWithConfiguration:(id)configuration assetCollection:(id)collection displayAssets:(id)assets;
- (id)_diagnosticSwiftCodeForMomentsUnitTest;
- (id)_faceprintDatasByAssetUUIDWithAssets:(id)assets;
- (id)_faceprintsByAssetUUIDWithAssets:(id)assets;
- (id)_faceprintsByAssetUUIDWithAssets:(id)assets faceprintDatas:(id)datas;
- (id)_locationsByAssetUUIDWithAssets:(id)assets;
- (id)momentForDisplayAssetIndex:(unint64_t)index;
- (unint64_t)count;
- (void)_computeClustering;
- (void)enumerateMomentsUsingBlock:(id)block;
@end

@implementation PXStoryAutoEditMomentsProvider

- (id)_diagnosticSwiftCodeForMomentsUnitTest
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v74 = [(PXStoryAutoEditMomentsProvider *)self count];
  v4 = [(PXDisplayAssetFetchResult *)self->_displayAssets count];
  v83 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  v82 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  v81 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  v73 = v4;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  v77 = [(PXStoryAutoEditMomentsProvider *)self _faceprintDatasByAssetUUIDWithAssets:self->_displayAssets];
  v76 = [(PXStoryAutoEditMomentsProvider *)self _locationsByAssetUUIDWithAssets:self->_displayAssets];
  v80 = v5;
  if ([(PXDisplayAssetFetchResult *)self->_displayAssets count])
  {
    v6 = 0;
    v7 = MEMORY[0x1E695E0F0];
    selfCopy = self;
    do
    {
      v8 = [(PXDisplayAssetFetchResult *)self->_displayAssets objectAtIndex:v6];
      uuid = [v8 uuid];
      v10 = [v76 objectForKeyedSubscript:uuid];

      v78 = v10;
      if (v10)
      {
        [v10 coordinate];
        v12 = v11;
        v13 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        [v83 addObject:v13];

        v14 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        [v82 addObject:v14];
      }

      else
      {
        [v83 addObject:&unk_1F190E088];
        [v82 addObject:&unk_1F190E088];
      }

      creationDate = [v8 creationDate];
      [v81 addObject:creationDate];
      uuid2 = [v8 uuid];
      v17 = [v77 objectForKeyedSubscript:uuid2];
      v18 = v17;
      v19 = v7;
      if (v17)
      {
        v20 = v17;
      }

      else
      {
        v20 = v7;
      }

      v21 = v20;

      array = [MEMORY[0x1E695DF70] array];
      if ([v21 count])
      {
        v23 = 0;
        do
        {
          v24 = [v21 objectAtIndexedSubscript:v23];
          v25 = [v24 base64EncodedStringWithOptions:34];
          if (v25)
          {
            [array addObject:v25];
          }

          ++v23;
        }

        while (v23 < [v21 count]);
      }

      v7 = v19;
      if (array)
      {
        v26 = array;
      }

      else
      {
        v26 = v19;
      }

      v5 = v80;
      [v80 addObject:v26];

      ++v6;
      self = selfCopy;
    }

    while (v6 < [(PXDisplayAssetFetchResult *)selfCopy->_displayAssets count]);
  }

  statistics = [(PXStoryAutoEditMomentsProvider *)self statistics];
  [v3 appendFormat:@"    func testFromTTR() throws {\n"];
  [v3 appendFormat:@"        let dictionary: [AnyHashable : Any] = [\n"];
  [v3 appendFormat:@"            version : PFStoryAutoEditConfiguration.currentVersion, \n"];
  [v3 appendFormat:@"            memoryCategories : [\n"];
  memoryCategoryName = [statistics memoryCategoryName];
  [v3 appendFormat:@"                %@ : [\n", memoryCategoryName];

  [v3 appendFormat:@"                    clustering : [\n"];
  clusteringProperties = [statistics clusteringProperties];
  algorithm = [clusteringProperties algorithm];
  [v3 appendFormat:@"                        algorithm : %@, \n", algorithm];

  [v3 appendFormat:@"                        algorithmProperties : [\n"];
  clusteringProperties2 = [statistics clusteringProperties];
  algorithmProperties = [clusteringProperties2 algorithmProperties];
  v33 = [algorithmProperties objectForKeyedSubscript:@"minimumNumberOfObjects"];
  v34 = v33;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = &unk_1F190B4E8;
  }

  [v3 appendFormat:@"                            minimumNumberOfObjects : %@, \n", v35];

  clusteringProperties3 = [statistics clusteringProperties];
  algorithmProperties2 = [clusteringProperties3 algorithmProperties];
  v38 = [algorithmProperties2 objectForKeyedSubscript:@"maximumDistance"];
  v39 = v38;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = &unk_1F190B4E8;
  }

  [v3 appendFormat:@"                            maximumDistance : %@\n", v40];

  [v3 appendFormat:@"                        ], \n"];
  [v3 appendFormat:@"                        distanceWeights : [\n"];
  clusteringProperties4 = [statistics clusteringProperties];
  distanceWeights = [clusteringProperties4 distanceWeights];
  v43 = [distanceWeights objectForKeyedSubscript:@"time"];
  v44 = v43;
  if (v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = &unk_1F190B500;
  }

  [v3 appendFormat:@"                            time : %@, \n", v45];

  clusteringProperties5 = [statistics clusteringProperties];
  distanceWeights2 = [clusteringProperties5 distanceWeights];
  v48 = [distanceWeights2 objectForKeyedSubscript:@"location"];
  v49 = v48;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = &unk_1F190B500;
  }

  [v3 appendFormat:@"                            location : %@, \n", v50];

  v79 = statistics;
  clusteringProperties6 = [statistics clusteringProperties];
  distanceWeights3 = [clusteringProperties6 distanceWeights];
  v53 = [distanceWeights3 objectForKeyedSubscript:@"face"];
  v54 = v53;
  if (v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = &unk_1F190B500;
  }

  [v3 appendFormat:@"                            face : %@, \n", v55];

  [v3 appendFormat:@"                        ]\n"];
  [v3 appendFormat:@"                    ]\n"];
  [v3 appendFormat:@"                ]\n"];
  [v3 appendFormat:@"            ]\n"];
  [v3 appendFormat:@"        ]\n"];
  [v3 appendFormat:@"        \n"];
  [v3 appendFormat:@"        let config = PFStoryAutoEditConfiguration(configurationDictionary: dictionary)\n"];
  [v3 appendFormat:@"        XCTAssertNotNil(config)\n"];
  [v3 appendFormat:@"        \n"];
  [v3 appendFormat:@"        let faceStrings : [[String]] = ["];
  if ([v5 count])
  {
    v56 = 0;
    do
    {
      v57 = [v5 objectAtIndexedSubscript:v56];
      [v3 appendFormat:@"[\n            "];
      if ([v57 count])
      {
        v58 = 0;
        do
        {
          [v3 appendString:@"\n            "];
          v59 = [v57 objectAtIndexedSubscript:v58];
          v60 = [v59 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n            "];

          [v3 appendString:v60];
          [v3 appendString:{@"\n            , "}];

          ++v58;
        }

        while (v58 < [v57 count]);
      }

      [v3 appendFormat:@"], "];

      ++v56;
      v5 = v80;
    }

    while (v56 < [v80 count]);
  }

  [v3 appendFormat:@"        ]\n"];
  [v3 appendFormat:@"        \n"];
  [v3 appendFormat:@"        let assets : [PXDisplayAsset] = [\n"];
  if (v73)
  {
    for (i = 0; i != v73; ++i)
    {
      v62 = [v83 objectAtIndexedSubscript:i];
      [v62 doubleValue];
      v64 = v63;
      v65 = [v82 objectAtIndexedSubscript:i];
      [v65 doubleValue];
      v67 = CLLocationCoordinate2DMake(v64, v66);

      v68 = [v81 objectAtIndex:i];
      [v68 timeIntervalSince1970];
      [v3 appendFormat:@"            PXSyntheticPHAsset(date: Date(timeIntervalSince1970:%f), location: CLLocationCoordinate2D(latitude: %f, longitude: %f), faceStrings: faceStrings[%lu]), ", v69, *&v67.latitude, *&v67.longitude, i];
      v70 = [v68 description];
      [v3 appendFormat:@"// %@ ", v70];

      if (!CLLocationCoordinate2DIsValid(v67))
      {
        [v3 appendFormat:@"// Invalid location information"];
      }

      [v3 appendFormat:@"\n"];
    }
  }

  [v3 appendFormat:@"        ]\n"];
  [v3 appendFormat:@"        \n"];
  [v3 appendFormat:@"        let assetCollection = MockPHAssetCollection() { collection in\n"];
  [v3 appendFormat:@"            collection.testAssetCollectionType = .memory\n"];
  memoryCategoryName2 = [v79 memoryCategoryName];
  [v3 appendFormat:@"            collection.testCategory = .%@\n", memoryCategoryName2];

  [v3 appendFormat:@"        }\n"];
  [v3 appendFormat:@"        let displayAssets = PXDisplayAssetFetchResultFromArray(assets)\n"];
  [v3 appendFormat:@"        let provider = PXStoryAutoEditMomentsProvider(configuration: config!, assetCollection: assetCollection, displayAssets:displayAssets)\n"];
  [v3 appendFormat:@"        \n"];
  [v3 appendFormat:@"        let momentCount = provider.count\n"];
  [v3 appendFormat:@"        let stats = provider.statistics\n"];
  [v3 appendFormat:@"        XCTAssert(momentCount == %ld)\n", v74];
  [v3 appendFormat:@"        XCTAssertLessThan(stats.clusteringDuration, 0.2)\n"];
  [v3 appendFormat:@"    }\n\n"];

  return v3;
}

- (id)momentForDisplayAssetIndex:(unint64_t)index
{
  moments = [(PXStoryAutoEditMomentsProvider *)self moments];
  firstObject = [moments firstObject];
  if ([firstObject firstGlobalIndex] > index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryAutoEditMomentsProvider.m" lineNumber:590 description:{@"Invalid asset index: %lu", index}];
  }

  if ([firstObject lastGlobalIndex] >= index)
  {
    v13 = firstObject;
  }

  else
  {
    lastObject = [moments lastObject];
    if ([lastObject lastGlobalIndex] < index)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryAutoEditMomentsProvider.m" lineNumber:596 description:{@"Invalid asset index: %lu", index}];
    }

    if ([lastObject firstGlobalIndex] <= index)
    {
      v14 = lastObject;
    }

    else
    {
      v9 = [moments count] - 1;
      if (v9 >= 2)
      {
        v10 = 0;
        while (1)
        {
          v11 = (v10 + v9) >> 1;
          v12 = [moments objectAtIndexedSubscript:v11];
          if ([v12 firstGlobalIndex] <= index)
          {
            if ([v12 lastGlobalIndex] >= index)
            {

              goto LABEL_21;
            }

            v10 = (v10 + v9) >> 1;
          }

          else
          {
            v9 = (v10 + v9) >> 1;
          }

          if (v10 + 1 >= v9)
          {
            goto LABEL_18;
          }
        }
      }

      v10 = 0;
LABEL_18:
      v11 = v9;
      if (v10 != v9)
      {
        PXAssertGetLog();
      }

LABEL_21:
      v14 = [moments objectAtIndexedSubscript:v11];
    }

    v13 = v14;
  }

  return v13;
}

- (unint64_t)count
{
  moments = [(PXStoryAutoEditMomentsProvider *)self moments];
  v3 = [moments count];

  return v3;
}

- (void)enumerateMomentsUsingBlock:(id)block
{
  blockCopy = block;
  moments = [(PXStoryAutoEditMomentsProvider *)self moments];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PXStoryAutoEditMomentsProvider_enumerateMomentsUsingBlock___block_invoke;
  v7[3] = &unk_1E7734A40;
  v8 = blockCopy;
  v6 = blockCopy;
  [moments enumerateObjectsUsingBlock:v7];
}

- (NSArray)moments
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_moments)
  {
    [(PXStoryAutoEditMomentsProvider *)selfCopy _computeClustering];
  }

  objc_sync_exit(selfCopy);

  moments = selfCopy->_moments;

  return moments;
}

- (void)_computeClustering
{
  v115[7] = *MEMORY[0x1E69E9840];
  if ([(PXDisplayAssetFetchResult *)self->_displayAssets count]>= 1)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v4 = v3;
    assetCollection = [(PXStoryAutoEditMomentsProvider *)self assetCollection];
    if (objc_opt_respondsToSelector())
    {
      category = [assetCollection category];
      v7 = @"singleMoment";
      switch(category)
      {
        case 1:
          break;
        case 2:
          v7 = @"personOverTime";
          break;
        case 3:
          v7 = @"person";
          break;
        case 4:
          v7 = @"earlyMomentsWithPerson";
          break;
        case 5:
          v7 = @"socialGroupOverTime";
          break;
        case 6:
          v7 = @"socialGroup";
          break;
        case 7:
          v7 = @"lastMonthAtHome";
          break;
        case 8:
          v7 = @"lastYearInReview";
          break;
        case 9:
          v7 = @"foodie";
          break;
        case 10:
          v7 = @"pet";
          break;
        case 11:
          v7 = @"baby";
          break;
        case 12:
          v7 = @"cityLocation";
          break;
        case 13:
          v7 = @"regionLocation";
          break;
        case 14:
          v7 = @"areaLocation";
          break;
        case 15:
          v7 = @"businessLocation";
          break;
        case 16:
        case 17:
          v7 = @"meaningfulEvent";
          break;
        case 18:
        case 19:
        case 31:
          v7 = @"trip";
          break;
        case 20:
        case 22:
        case 30:
          goto LABEL_6;
        case 21:
          v7 = @"season";
          break;
        case 23:
          goto LABEL_67;
        case 24:
          v7 = @"recentHighlights";
          break;
        case 25:
          v7 = @"childActivity";
          break;
        case 26:
          v7 = @"excitingMoments";
          break;
        case 27:
          v7 = @"trends";
          break;
        case 28:
          v7 = @"petOutdoor";
          break;
        case 29:
          v7 = @"childAndPerson";
          break;
        default:
          if (category == 202)
          {
LABEL_67:
            v7 = @"dayInHistory";
          }

          else
          {
            if (category != 216)
            {
              goto LABEL_6;
            }

            v7 = @"lastSeason";
          }

          break;
      }
    }

    else
    {
      category = 0;
LABEL_6:
      v7 = @"default";
    }

    v88 = category;
    v8 = os_signpost_id_make_with_pointer(self->_log, self);
    v9 = self->_log;
    v10 = v9;
    v91 = v8 - 1;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v11 = [(PXDisplayAssetFetchResult *)self->_displayAssets count];
      *buf = 134218242;
      v102 = v11;
      v103 = 2114;
      v104 = v7;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PXStoryAutoEditMomentsClustering", "count: %ld, category: %{public}@", buf, 0x16u);
    }

    v12 = [(PFStoryAutoEditConfiguration *)self->_configuration clusteringPropertiesForMemoryCategoryName:v7];
    clusteringProperties = [(PXStoryAutoEditMomentsProvider *)self clusteringProperties];

    v95 = assetCollection;
    spid = v8;
    if (clusteringProperties)
    {
      clusteringProperties2 = [(PXStoryAutoEditMomentsProvider *)self clusteringProperties];

      v12 = clusteringProperties2;
    }

    v93 = v7;
    v15 = self->_displayAssets;
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[PXDisplayAssetFetchResult count](v15, "count")}];
    if ([(PXDisplayAssetFetchResult *)v15 count]>= 1)
    {
      v17 = 0;
      do
      {
        v18 = [MEMORY[0x1E696AD98] numberWithInt:v17];
        [v16 addObject:v18];

        ++v17;
      }

      while ([(PXDisplayAssetFetchResult *)v15 count]> v17);
    }

    v19 = [(PXStoryAutoEditMomentsProvider *)self _locationsByAssetUUIDWithAssets:v15];
    selfCopy = self;
    v20 = [(PXStoryAutoEditMomentsProvider *)self _faceprintsByAssetUUIDWithAssets:v15];
    v21 = [PXStoryMemoryMomentConcreteClusteringDistanceCalculator alloc];
    distanceWeights = [v12 distanceWeights];
    v89 = v20;
    v90 = v19;
    v99 = [(PXStoryMemoryMomentConcreteClusteringDistanceCalculator *)v21 initWithWeights:distanceWeights locationsByAssetUUID:v19 faceprintsByAssetUUID:v20];

    algorithm = [v12 algorithm];
    v115[0] = objc_opt_class();
    v115[1] = objc_opt_class();
    v115[2] = objc_opt_class();
    v115[3] = objc_opt_class();
    v115[4] = objc_opt_class();
    v115[5] = objc_opt_class();
    v115[6] = objc_opt_class();
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:7];
    v25 = algorithm;
    v26 = v24;
    v100 = v15;
    if ([v26 count])
    {
      v27 = v16;
      v28 = 0;
      while (1)
      {
        v29 = [v26 objectAtIndexedSubscript:v28];
        v30 = NSStringFromClass(v29);
        v31 = [v25 isEqualToString:v30];

        if (v31)
        {
          break;
        }

        if ([v26 count] <= ++v28)
        {
          v32 = 0;
          v15 = v100;
          v16 = v27;
          goto LABEL_22;
        }
      }

      v33 = v29;
      v15 = v100;
      v16 = v27;
      v32 = v29;
    }

    else
    {
      v32 = 0;
    }

LABEL_22:

    if ([(PXDisplayAssetFetchResult *)v15 count]> 1000)
    {
      v32 = objc_opt_class();
      v34 = PLStoryGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = [(PXDisplayAssetFetchResult *)v15 count];
        [v12 algorithm];
        v37 = v36 = v32;
        [v12 algorithm];
        v39 = v38 = v16;
        *buf = 134218498;
        v102 = v35;
        v103 = 2112;
        v104 = v37;
        v105 = 2112;
        v106 = v39;
        _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_INFO, "Moments clustering has %ld assets, using algorithm %@ instead of %@", buf, 0x20u);

        v16 = v38;
        v32 = v36;
      }
    }

    v96 = v12;
    aClass = v32;
    if (v32)
    {
      v40 = [(PXStoryMemoryMomentConcreteClusteringDistanceCalculator *)v99 densityClusteringDistanceBlockForAssets:v15];
      v41 = [[v32 alloc] initWithDistanceBlock:v40];
      algorithmProperties = [v12 algorithmProperties];
      [v41 setValuesForKeysWithDictionary:algorithmProperties];

      array = [v41 performWithDataset:v16 progressBlock:&__block_literal_global_68762];
    }

    else
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    v92 = v16;
    v97 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(array, "count")}];
    v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[PXDisplayAssetFetchResult count](v15, "count")}];
    if ([(PXDisplayAssetFetchResult *)v15 count]>= 1)
    {
      v45 = 0;
      do
      {
        [v44 addObject:&unk_1F190B4D0];
        ++v45;
      }

      while (v45 < [(PXDisplayAssetFetchResult *)v15 count]);
    }

    v98 = array;
    if ([array count])
    {
      v46 = 0;
      do
      {
        v47 = [array objectAtIndexedSubscript:v46];
        objects = [v47 objects];

        if ([objects count])
        {
          v49 = 0;
          do
          {
            v50 = [objects objectAtIndexedSubscript:v49];
            integerValue = [v50 integerValue];

            v52 = [v44 objectAtIndexedSubscript:integerValue];
            v53 = [v52 isEqual:&unk_1F190B4D0];

            if ((v53 & 1) == 0)
            {
              v54 = PLStoryGetLog();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
              {
                v55 = [v44 objectAtIndexedSubscript:integerValue];
                integerValue2 = [v55 integerValue];
                *buf = 134218496;
                v102 = integerValue;
                v103 = 2048;
                v104 = integerValue2;
                v105 = 2048;
                v106 = v46;
                _os_log_impl(&dword_1A3C1C000, v54, OS_LOG_TYPE_INFO, "Moments clustering reused asset %lu in multiple clusters, cluster %ld and %lu", buf, 0x20u);
              }
            }

            v57 = [MEMORY[0x1E696AD98] numberWithInteger:v46];
            [v44 setObject:v57 atIndexedSubscript:integerValue];

            ++v49;
          }

          while (v49 < [objects count]);
        }

        ++v46;
        array = v98;
      }

      while (v46 < [v98 count]);
    }

    v58 = 0;
    if ([v44 count])
    {
      v59 = 0;
      v60 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v61 = v59;
        v62 = [v44 objectAtIndexedSubscript:v59];
        integerValue3 = [v62 integerValue];

        v64 = v61 + 1;
        do
        {
          v59 = v64;
          if (v64 >= [v44 count])
          {
            break;
          }

          v65 = [v44 objectAtIndexedSubscript:v59];
          integerValue4 = [v65 integerValue];

          v64 = v59 + 1;
        }

        while (integerValue3 == integerValue4);
        v67 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v61, v59 - v61}];
        v68 = [[PXStoryMemoryMoment alloc] initWithDisplayAssets:v100 indexSet:v67 diagnosticDistanceCalculator:v99];
        v69 = [(PXStoryMemoryMoment *)v68 count];
        if (v60 >= v69)
        {
          v60 = v69;
        }

        v70 = [(PXStoryMemoryMoment *)v68 count];
        if (v58 <= v70)
        {
          v58 = v70;
        }

        [v97 addObject:v68];
      }

      while (v59 < [v44 count]);
    }

    else
    {
      v60 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v71 = [(PXDisplayAssetFetchResult *)v100 count];
    v72 = v71 / [v97 count];
    v73 = PLStoryGetLog();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle = [v95 localizedTitle];
      v75 = [MEMORY[0x1E69788F0] stringForCategory:v88];
      v76 = [v97 count];
      *buf = 138413826;
      v102 = localizedTitle;
      v103 = 2112;
      v104 = v75;
      v105 = 2112;
      v106 = v93;
      v107 = 2048;
      v108 = v76;
      v109 = 2048;
      v110 = *&v60;
      v111 = 2048;
      v112 = v58;
      v113 = 2048;
      v114 = v72;
      _os_log_impl(&dword_1A3C1C000, v73, OS_LOG_TYPE_DEFAULT, "clustering collection '%@' with category '%@' (%@) has %ld moments (min: %ld, max: %ld, avg: %.2f)", buf, 0x48u);
    }

    v77 = [v97 copy];
    moments = selfCopy->_moments;
    selfCopy->_moments = v77;

    [(PXStoryAutoEditConcreteMomentsStatistics *)selfCopy->_statistics setMinimumAssetCount:v60];
    [(PXStoryAutoEditConcreteMomentsStatistics *)selfCopy->_statistics setMaximumAssetCount:v58];
    [(PXStoryAutoEditConcreteMomentsStatistics *)selfCopy->_statistics setAverageAssetCount:v72];
    [(PXStoryAutoEditConcreteMomentsStatistics *)selfCopy->_statistics setMemoryCategoryName:v93];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(PXStoryAutoEditConcreteMomentsStatistics *)selfCopy->_statistics setClusteringDuration:v79 - v4];
    [(PXStoryAutoEditConcreteMomentsStatistics *)selfCopy->_statistics setClusteringProperties:v96];
    [(PXStoryAutoEditConcreteMomentsStatistics *)selfCopy->_statistics setClusteringDistanceCalculator:v99];
    v80 = selfCopy->_log;
    v81 = v80;
    if (v91 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
    {
      v82 = NSStringFromClass(aClass);
      v83 = [v97 count];
      *buf = 138544386;
      v102 = v82;
      v103 = 2048;
      v104 = v83;
      v105 = 2048;
      v106 = v60;
      v107 = 2048;
      v108 = v58;
      v109 = 2048;
      v110 = v72;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v81, OS_SIGNPOST_INTERVAL_END, spid, "PXStoryAutoEditMomentsClustering", "alg: %{public}@, moments: %ld (min: %ld, max: %ld, avg: %.2f)", buf, 0x34u);
    }

    v84 = PLStoryGetLog();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      [(PXStoryAutoEditConcreteMomentsStatistics *)selfCopy->_statistics clusteringDuration];
      *buf = 134217984;
      v102 = v85;
      _os_log_impl(&dword_1A3C1C000, v84, OS_LOG_TYPE_DEFAULT, "clustering finished in %.3fs", buf, 0xCu);
    }
  }
}

- (id)_locationsByAssetUUIDWithAssets:(id)assets
{
  assetsCopy = assets;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([assetsCopy count] >= 2)
  {
    firstObject = [assetsCopy firstObject];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      if ([assetsCopy count])
      {
        v8 = 0;
        do
        {
          v9 = [assetsCopy objectAtIndex:v8];
          location = [v9 location];
          uuid = [v9 uuid];
          v12 = uuid;
          if (location)
          {
            if (uuid)
            {
              [location coordinate];
              latitude = v18.latitude;
              longitude = v18.longitude;
              if (CLLocationCoordinate2DIsValid(v18))
              {
                v15 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
                [v5 setObject:v15 forKeyedSubscript:v12];
              }
            }
          }

          ++v8;
        }

        while (v8 < [assetsCopy count]);
      }
    }
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)_faceprintsByAssetUUIDWithAssets:(id)assets
{
  assetsCopy = assets;
  if ([assetsCopy count] >= 2)
  {
    v6 = [(PXStoryAutoEditMomentsProvider *)self _faceprintDatasByAssetUUIDWithAssets:assetsCopy];
    v5 = [(PXStoryAutoEditMomentsProvider *)self _faceprintsByAssetUUIDWithAssets:assetsCopy faceprintDatas:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_faceprintDatasByAssetUUIDWithAssets:(id)assets
{
  v33[1] = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v4 = objc_autoreleasePoolPush();
  if ([assetsCopy count] < 2)
  {
    v29 = 0;
    goto LABEL_23;
  }

  firstObject = [assetsCopy firstObject];
  if (objc_opt_respondsToSelector())
  {
    v29 = objc_opt_new();
    if ([assetsCopy count] >= 1)
    {
      v27 = firstObject;
      v6 = 0;
      v28 = assetsCopy;
      do
      {
        v7 = objc_autoreleasePoolPush();
        v8 = [assetsCopy objectAtIndexedSubscript:v6];
        uuid = [v8 uuid];
        if (objc_opt_respondsToSelector())
        {
          v30 = v7;
          v10 = v8;
          v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
          faceStrings = [v10 faceStrings];
          if ([faceStrings count])
          {
            v13 = 0;
            do
            {
              v14 = [faceStrings objectAtIndexedSubscript:v13];
              v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v14 options:1];
              if (v15)
              {
                [v11 addObject:v15];
              }

              ++v13;
            }

            while (v13 < [faceStrings count]);
          }

          [v29 setObject:v11 forKeyedSubscript:uuid];

          assetsCopy = v28;
          v7 = v30;
        }

        objc_autoreleasePoolPop(v7);
        ++v6;
      }

      while (v6 < [assetsCopy count]);
      firstObject = v27;
    }

    goto LABEL_22;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = 0;
LABEL_20:
    v29 = 0;
    goto LABEL_21;
  }

  photoLibrary = [firstObject photoLibrary];
  v17 = photoLibrary;
  if (!photoLibrary)
  {
    goto LABEL_20;
  }

  photoLibraryForCurrentQueueQoS = [photoLibrary photoLibraryForCurrentQueueQoS];

  if (!photoLibraryForCurrentQueueQoS)
  {
    goto LABEL_20;
  }

  librarySpecificFetchOptions = [v17 librarySpecificFetchOptions];
  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [librarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

  v33[0] = *MEMORY[0x1E6978D60];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v21];

  v22 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(assetsCopy, "count")}];
  v23 = [assetsCopy objectsAtIndexes:v22];
  v24 = [MEMORY[0x1E69787C8] fetchFacesGroupedByAssetLocalIdentifierForAssets:v23 options:librarySpecificFetchOptions];
  v25 = objc_opt_new();
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __71__PXStoryAutoEditMomentsProvider__faceprintDatasByAssetUUIDWithAssets___block_invoke;
  v31[3] = &unk_1E77349F8;
  v29 = v25;
  v32 = v29;
  [v24 enumerateKeysAndObjectsUsingBlock:v31];

LABEL_21:
LABEL_22:

LABEL_23:
  objc_autoreleasePoolPop(v4);

  return v29;
}

void __71__PXStoryAutoEditMomentsProvider__faceprintDatasByAssetUUIDWithAssets___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E6978630] uuidFromLocalIdentifier:a2];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) faceClusteringProperties];
        v14 = [v13 faceprint];
        v15 = [v14 faceprintData];

        if (v15)
        {
          [v7 addObject:v15];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)_faceprintsByAssetUUIDWithAssets:(id)assets faceprintDatas:(id)datas
{
  assetsCopy = assets;
  datasCopy = datas;
  v6 = objc_autoreleasePoolPush();
  if ([assetsCopy count] >= 2)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([assetsCopy count] >= 1)
    {
      v18 = v6;
      v19 = assetsCopy;
      v8 = 0;
      do
      {
        v9 = [assetsCopy objectAtIndexedSubscript:{v8, v18}];
        uuid = [v9 uuid];
        v11 = [datasCopy objectForKeyedSubscript:uuid];
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ([v11 count])
        {
          v13 = 0;
          do
          {
            v14 = [v11 objectAtIndexedSubscript:v13];
            if (v14)
            {
              v15 = objc_alloc(NSClassFromString(&cfstr_Vnfacetorsopri.isa));
              v21 = 0;
              v16 = [v15 initWithState:v14 error:&v21];
              if (v16)
              {
                [v12 addObject:v16];
              }
            }

            ++v13;
          }

          while (v13 < [v11 count]);
        }

        [v7 setObject:v12 forKeyedSubscript:uuid];

        ++v8;
        assetsCopy = v19;
      }

      while (v8 < [v19 count]);
      v6 = v18;
    }
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v6);

  return v7;
}

- (PXStoryAutoEditMomentsProvider)initWithConfiguration:(id)configuration assetCollection:(id)collection displayAssets:(id)assets
{
  configurationCopy = configuration;
  collectionCopy = collection;
  assetsCopy = assets;
  v22.receiver = self;
  v22.super_class = PXStoryAutoEditMomentsProvider;
  v12 = [(PXStoryAutoEditMomentsProvider *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, configuration);
    objc_storeStrong(&v13->_assetCollection, collection);
    objc_storeStrong(&v13->_displayAssets, assets);
    v14 = objc_alloc_init(PXStoryAutoEditConcreteMomentsStatistics);
    statistics = v13->_statistics;
    v13->_statistics = v14;

    v16 = *MEMORY[0x1E69BFF60];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = os_log_create(v16, [v18 UTF8String]);
    log = v13->_log;
    v13->_log = v19;
  }

  return v13;
}

@end