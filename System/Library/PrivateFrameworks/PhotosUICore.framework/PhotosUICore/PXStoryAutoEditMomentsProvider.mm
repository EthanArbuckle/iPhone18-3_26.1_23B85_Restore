@interface PXStoryAutoEditMomentsProvider
- (NSArray)moments;
- (PXStoryAutoEditMomentsProvider)initWithConfiguration:(id)a3 assetCollection:(id)a4 displayAssets:(id)a5;
- (id)_diagnosticSwiftCodeForMomentsUnitTest;
- (id)_faceprintDatasByAssetUUIDWithAssets:(id)a3;
- (id)_faceprintsByAssetUUIDWithAssets:(id)a3;
- (id)_faceprintsByAssetUUIDWithAssets:(id)a3 faceprintDatas:(id)a4;
- (id)_locationsByAssetUUIDWithAssets:(id)a3;
- (id)momentForDisplayAssetIndex:(unint64_t)a3;
- (unint64_t)count;
- (void)_computeClustering;
- (void)enumerateMomentsUsingBlock:(id)a3;
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
    v75 = self;
    do
    {
      v8 = [(PXDisplayAssetFetchResult *)self->_displayAssets objectAtIndex:v6];
      v9 = [v8 uuid];
      v10 = [v76 objectForKeyedSubscript:v9];

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

      v15 = [v8 creationDate];
      [v81 addObject:v15];
      v16 = [v8 uuid];
      v17 = [v77 objectForKeyedSubscript:v16];
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

      v22 = [MEMORY[0x1E695DF70] array];
      if ([v21 count])
      {
        v23 = 0;
        do
        {
          v24 = [v21 objectAtIndexedSubscript:v23];
          v25 = [v24 base64EncodedStringWithOptions:34];
          if (v25)
          {
            [v22 addObject:v25];
          }

          ++v23;
        }

        while (v23 < [v21 count]);
      }

      v7 = v19;
      if (v22)
      {
        v26 = v22;
      }

      else
      {
        v26 = v19;
      }

      v5 = v80;
      [v80 addObject:v26];

      ++v6;
      self = v75;
    }

    while (v6 < [(PXDisplayAssetFetchResult *)v75->_displayAssets count]);
  }

  v27 = [(PXStoryAutoEditMomentsProvider *)self statistics];
  [v3 appendFormat:@"    func testFromTTR() throws {\n"];
  [v3 appendFormat:@"        let dictionary: [AnyHashable : Any] = [\n"];
  [v3 appendFormat:@"            version : PFStoryAutoEditConfiguration.currentVersion, \n"];
  [v3 appendFormat:@"            memoryCategories : [\n"];
  v28 = [v27 memoryCategoryName];
  [v3 appendFormat:@"                %@ : [\n", v28];

  [v3 appendFormat:@"                    clustering : [\n"];
  v29 = [v27 clusteringProperties];
  v30 = [v29 algorithm];
  [v3 appendFormat:@"                        algorithm : %@, \n", v30];

  [v3 appendFormat:@"                        algorithmProperties : [\n"];
  v31 = [v27 clusteringProperties];
  v32 = [v31 algorithmProperties];
  v33 = [v32 objectForKeyedSubscript:@"minimumNumberOfObjects"];
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

  v36 = [v27 clusteringProperties];
  v37 = [v36 algorithmProperties];
  v38 = [v37 objectForKeyedSubscript:@"maximumDistance"];
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
  v41 = [v27 clusteringProperties];
  v42 = [v41 distanceWeights];
  v43 = [v42 objectForKeyedSubscript:@"time"];
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

  v46 = [v27 clusteringProperties];
  v47 = [v46 distanceWeights];
  v48 = [v47 objectForKeyedSubscript:@"location"];
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

  v79 = v27;
  v51 = [v27 clusteringProperties];
  v52 = [v51 distanceWeights];
  v53 = [v52 objectForKeyedSubscript:@"face"];
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
  v71 = [v79 memoryCategoryName];
  [v3 appendFormat:@"            collection.testCategory = .%@\n", v71];

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

- (id)momentForDisplayAssetIndex:(unint64_t)a3
{
  v6 = [(PXStoryAutoEditMomentsProvider *)self moments];
  v7 = [v6 firstObject];
  if ([v7 firstGlobalIndex] > a3)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXStoryAutoEditMomentsProvider.m" lineNumber:590 description:{@"Invalid asset index: %lu", a3}];
  }

  if ([v7 lastGlobalIndex] >= a3)
  {
    v13 = v7;
  }

  else
  {
    v8 = [v6 lastObject];
    if ([v8 lastGlobalIndex] < a3)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"PXStoryAutoEditMomentsProvider.m" lineNumber:596 description:{@"Invalid asset index: %lu", a3}];
    }

    if ([v8 firstGlobalIndex] <= a3)
    {
      v14 = v8;
    }

    else
    {
      v9 = [v6 count] - 1;
      if (v9 >= 2)
      {
        v10 = 0;
        while (1)
        {
          v11 = (v10 + v9) >> 1;
          v12 = [v6 objectAtIndexedSubscript:v11];
          if ([v12 firstGlobalIndex] <= a3)
          {
            if ([v12 lastGlobalIndex] >= a3)
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
      v14 = [v6 objectAtIndexedSubscript:v11];
    }

    v13 = v14;
  }

  return v13;
}

- (unint64_t)count
{
  v2 = [(PXStoryAutoEditMomentsProvider *)self moments];
  v3 = [v2 count];

  return v3;
}

- (void)enumerateMomentsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryAutoEditMomentsProvider *)self moments];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PXStoryAutoEditMomentsProvider_enumerateMomentsUsingBlock___block_invoke;
  v7[3] = &unk_1E7734A40;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (NSArray)moments
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_moments)
  {
    [(PXStoryAutoEditMomentsProvider *)v2 _computeClustering];
  }

  objc_sync_exit(v2);

  moments = v2->_moments;

  return moments;
}

- (void)_computeClustering
{
  v115[7] = *MEMORY[0x1E69E9840];
  if ([(PXDisplayAssetFetchResult *)self->_displayAssets count]>= 1)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v4 = v3;
    v5 = [(PXStoryAutoEditMomentsProvider *)self assetCollection];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 category];
      v7 = @"singleMoment";
      switch(v6)
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
          if (v6 == 202)
          {
LABEL_67:
            v7 = @"dayInHistory";
          }

          else
          {
            if (v6 != 216)
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
      v6 = 0;
LABEL_6:
      v7 = @"default";
    }

    v88 = v6;
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
    v13 = [(PXStoryAutoEditMomentsProvider *)self clusteringProperties];

    v95 = v5;
    spid = v8;
    if (v13)
    {
      v14 = [(PXStoryAutoEditMomentsProvider *)self clusteringProperties];

      v12 = v14;
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
    v94 = self;
    v20 = [(PXStoryAutoEditMomentsProvider *)self _faceprintsByAssetUUIDWithAssets:v15];
    v21 = [PXStoryMemoryMomentConcreteClusteringDistanceCalculator alloc];
    v22 = [v12 distanceWeights];
    v89 = v20;
    v90 = v19;
    v99 = [(PXStoryMemoryMomentConcreteClusteringDistanceCalculator *)v21 initWithWeights:v22 locationsByAssetUUID:v19 faceprintsByAssetUUID:v20];

    v23 = [v12 algorithm];
    v115[0] = objc_opt_class();
    v115[1] = objc_opt_class();
    v115[2] = objc_opt_class();
    v115[3] = objc_opt_class();
    v115[4] = objc_opt_class();
    v115[5] = objc_opt_class();
    v115[6] = objc_opt_class();
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:7];
    v25 = v23;
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
      v42 = [v12 algorithmProperties];
      [v41 setValuesForKeysWithDictionary:v42];

      v43 = [v41 performWithDataset:v16 progressBlock:&__block_literal_global_68762];
    }

    else
    {
      v43 = [MEMORY[0x1E695DEC8] array];
    }

    v92 = v16;
    v97 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v43, "count")}];
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

    v98 = v43;
    if ([v43 count])
    {
      v46 = 0;
      do
      {
        v47 = [v43 objectAtIndexedSubscript:v46];
        v48 = [v47 objects];

        if ([v48 count])
        {
          v49 = 0;
          do
          {
            v50 = [v48 objectAtIndexedSubscript:v49];
            v51 = [v50 integerValue];

            v52 = [v44 objectAtIndexedSubscript:v51];
            v53 = [v52 isEqual:&unk_1F190B4D0];

            if ((v53 & 1) == 0)
            {
              v54 = PLStoryGetLog();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
              {
                v55 = [v44 objectAtIndexedSubscript:v51];
                v56 = [v55 integerValue];
                *buf = 134218496;
                v102 = v51;
                v103 = 2048;
                v104 = v56;
                v105 = 2048;
                v106 = v46;
                _os_log_impl(&dword_1A3C1C000, v54, OS_LOG_TYPE_INFO, "Moments clustering reused asset %lu in multiple clusters, cluster %ld and %lu", buf, 0x20u);
              }
            }

            v57 = [MEMORY[0x1E696AD98] numberWithInteger:v46];
            [v44 setObject:v57 atIndexedSubscript:v51];

            ++v49;
          }

          while (v49 < [v48 count]);
        }

        ++v46;
        v43 = v98;
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
        v63 = [v62 integerValue];

        v64 = v61 + 1;
        do
        {
          v59 = v64;
          if (v64 >= [v44 count])
          {
            break;
          }

          v65 = [v44 objectAtIndexedSubscript:v59];
          v66 = [v65 integerValue];

          v64 = v59 + 1;
        }

        while (v63 == v66);
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
      v74 = [v95 localizedTitle];
      v75 = [MEMORY[0x1E69788F0] stringForCategory:v88];
      v76 = [v97 count];
      *buf = 138413826;
      v102 = v74;
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
    moments = v94->_moments;
    v94->_moments = v77;

    [(PXStoryAutoEditConcreteMomentsStatistics *)v94->_statistics setMinimumAssetCount:v60];
    [(PXStoryAutoEditConcreteMomentsStatistics *)v94->_statistics setMaximumAssetCount:v58];
    [(PXStoryAutoEditConcreteMomentsStatistics *)v94->_statistics setAverageAssetCount:v72];
    [(PXStoryAutoEditConcreteMomentsStatistics *)v94->_statistics setMemoryCategoryName:v93];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(PXStoryAutoEditConcreteMomentsStatistics *)v94->_statistics setClusteringDuration:v79 - v4];
    [(PXStoryAutoEditConcreteMomentsStatistics *)v94->_statistics setClusteringProperties:v96];
    [(PXStoryAutoEditConcreteMomentsStatistics *)v94->_statistics setClusteringDistanceCalculator:v99];
    v80 = v94->_log;
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
      [(PXStoryAutoEditConcreteMomentsStatistics *)v94->_statistics clusteringDuration];
      *buf = 134217984;
      v102 = v85;
      _os_log_impl(&dword_1A3C1C000, v84, OS_LOG_TYPE_DEFAULT, "clustering finished in %.3fs", buf, 0xCu);
    }
  }
}

- (id)_locationsByAssetUUIDWithAssets:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v3 count] >= 2)
  {
    v6 = [v3 firstObject];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      if ([v3 count])
      {
        v8 = 0;
        do
        {
          v9 = [v3 objectAtIndex:v8];
          v10 = [v9 location];
          v11 = [v9 uuid];
          v12 = v11;
          if (v10)
          {
            if (v11)
            {
              [v10 coordinate];
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

        while (v8 < [v3 count]);
      }
    }
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)_faceprintsByAssetUUIDWithAssets:(id)a3
{
  v4 = a3;
  if ([v4 count] >= 2)
  {
    v6 = [(PXStoryAutoEditMomentsProvider *)self _faceprintDatasByAssetUUIDWithAssets:v4];
    v5 = [(PXStoryAutoEditMomentsProvider *)self _faceprintsByAssetUUIDWithAssets:v4 faceprintDatas:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_faceprintDatasByAssetUUIDWithAssets:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if ([v3 count] < 2)
  {
    v29 = 0;
    goto LABEL_23;
  }

  v5 = [v3 firstObject];
  if (objc_opt_respondsToSelector())
  {
    v29 = objc_opt_new();
    if ([v3 count] >= 1)
    {
      v27 = v5;
      v6 = 0;
      v28 = v3;
      do
      {
        v7 = objc_autoreleasePoolPush();
        v8 = [v3 objectAtIndexedSubscript:v6];
        v9 = [v8 uuid];
        if (objc_opt_respondsToSelector())
        {
          v30 = v7;
          v10 = v8;
          v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v12 = [v10 faceStrings];
          if ([v12 count])
          {
            v13 = 0;
            do
            {
              v14 = [v12 objectAtIndexedSubscript:v13];
              v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v14 options:1];
              if (v15)
              {
                [v11 addObject:v15];
              }

              ++v13;
            }

            while (v13 < [v12 count]);
          }

          [v29 setObject:v11 forKeyedSubscript:v9];

          v3 = v28;
          v7 = v30;
        }

        objc_autoreleasePoolPop(v7);
        ++v6;
      }

      while (v6 < [v3 count]);
      v5 = v27;
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

  v16 = [v5 photoLibrary];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_20;
  }

  v18 = [v16 photoLibraryForCurrentQueueQoS];

  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = [v17 librarySpecificFetchOptions];
  v20 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v19 setIncludedDetectionTypes:v20];

  v33[0] = *MEMORY[0x1E6978D60];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  [v19 setFetchPropertySets:v21];

  v22 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v3, "count")}];
  v23 = [v3 objectsAtIndexes:v22];
  v24 = [MEMORY[0x1E69787C8] fetchFacesGroupedByAssetLocalIdentifierForAssets:v23 options:v19];
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

- (id)_faceprintsByAssetUUIDWithAssets:(id)a3 faceprintDatas:(id)a4
{
  v5 = a3;
  v20 = a4;
  v6 = objc_autoreleasePoolPush();
  if ([v5 count] >= 2)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([v5 count] >= 1)
    {
      v18 = v6;
      v19 = v5;
      v8 = 0;
      do
      {
        v9 = [v5 objectAtIndexedSubscript:{v8, v18}];
        v10 = [v9 uuid];
        v11 = [v20 objectForKeyedSubscript:v10];
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

        [v7 setObject:v12 forKeyedSubscript:v10];

        ++v8;
        v5 = v19;
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

- (PXStoryAutoEditMomentsProvider)initWithConfiguration:(id)a3 assetCollection:(id)a4 displayAssets:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = PXStoryAutoEditMomentsProvider;
  v12 = [(PXStoryAutoEditMomentsProvider *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, a3);
    objc_storeStrong(&v13->_assetCollection, a4);
    objc_storeStrong(&v13->_displayAssets, a5);
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