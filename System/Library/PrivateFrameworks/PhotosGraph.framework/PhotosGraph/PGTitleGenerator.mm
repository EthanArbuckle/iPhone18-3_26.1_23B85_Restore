@interface PGTitleGenerator
- (PGTitle)subtitle;
- (PGTitle)title;
- (PGTitleGenerator)initWithMomentNode:(id)a3 referenceDateInterval:(id)a4 keyAsset:(id)a5 curatedAssetCollection:(id)a6 assetCollection:(id)a7 type:(int64_t)a8 titleGenerationContext:(id)a9;
- (PGTitleGenerator)initWithMomentNodes:(id)a3 referenceDateInterval:(id)a4 keyAsset:(id)a5 curatedAssetCollection:(id)a6 assetCollection:(id)a7 type:(int64_t)a8 titleGenerationContext:(id)a9;
- (double)_ratioOfAssetsWithoutLocation;
- (id)_addressNodeFromKeyAsset;
- (id)_addressNodesFromCuratedAssetCollection;
- (id)_defaultLocationTitle;
- (id)_defaultTimeTitle;
- (id)_defaultTitle;
- (id)_fetchAssetsFromCuratedAssetCollection;
- (id)_splitTimeTitles;
- (unint64_t)_allowedTimeTitleFormats;
- (void)_generateTitleAndSubtitle;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGTitleGenerator

- (id)_addressNodesFromCuratedAssetCollection
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_curatedAssetCollection)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    [(PGTitleGenerator *)self _fetchAssetsFromCuratedAssetCollection];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v18 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = [v9 location];
          if (v11)
          {
            v12 = [PGAssetLocationResolver closestAddressNodeFromMomentNodes:self->_momentNodes toLocation:v11 withMaximumDistance:0 allowRemoteLocations:30000.0];
            if (v12)
            {
              [v3 addObject:v12];
            }
          }

          objc_autoreleasePoolPop(v10);
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = [MEMORY[0x277CBEB98] set];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (double)_ratioOfAssetsWithoutLocation
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [(PGTitleGenerator *)self _fetchAssetsFromCuratedAssetCollection];
  v3 = [v2 count];
  if (v3)
  {
    v4 = v3;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v2;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = MEMORY[0x277D3ACD0];
          [*(*(&v16 + 1) + 8 * i) locationCoordinate];
          v8 += [v11 canUseCoordinate:?] ^ 1;
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
      v12 = v8;
    }

    else
    {
      v12 = 0.0;
    }

    v13 = v12 / v4;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_fetchAssetsFromCuratedAssetCollection
{
  curatedAssetCollection = self->_curatedAssetCollection;
  if (curatedAssetCollection)
  {
    curatedAssets = self->_curatedAssets;
    if (!curatedAssets)
    {
      v5 = [(PHAssetCollection *)curatedAssetCollection photoLibrary];
      v6 = [v5 librarySpecificFetchOptions];

      [v6 setIncludeGuestAssets:1];
      v7 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:self->_curatedAssetCollection options:v6];
      v8 = self->_curatedAssets;
      self->_curatedAssets = v7;

      curatedAssets = self->_curatedAssets;
    }

    curatedAssetCollection = curatedAssets;
  }

  return curatedAssetCollection;
}

- (id)_addressNodeFromKeyAsset
{
  v14 = *MEMORY[0x277D85DE8];
  keyAsset = self->_keyAsset;
  if (keyAsset)
  {
    [(PHAsset *)keyAsset setCanUseLocationCoordinateForLocation:1];
    v4 = [PGAssetLocationResolver closestAssetLocationForAsset:self->_keyAsset inAssetCollection:self->_assetCollection];
    momentNodes = self->_momentNodes;
    if (v4)
    {
      [PGAssetLocationResolver closestAddressNodeFromMomentNodes:momentNodes toLocation:v4 withMaximumDistance:0 allowRemoteLocations:1.79769313e308];
    }

    else
    {
      [PGCommonTitleUtility bestAddressNodeForMomentNodes:momentNodes];
    }
    v6 = ;
    if (!v6)
    {
      v7 = +[PGLogging sharedLogging];
      v8 = [v7 loggingConnection];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = self->_momentNodes;
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "Cannot find address node in moment node %@.", &v12, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (unint64_t)_allowedTimeTitleFormats
{
  if (self->_preferredTitleType == 1)
  {
    return 1;
  }

  else
  {
    return [(PGTitleGeneratorDateMatching *)self->_dateMatching allowedTimeTitleFormats];
  }
}

- (id)_splitTimeTitles
{
  if ((self->_preferredTitleType & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v2 = 0;
  }

  else
  {
    v4 = objc_alloc_init(PGTimeTitleOptions);
    [(PGTimeTitleOptions *)v4 setMomentNodes:self->_momentNodes];
    [(PGTimeTitleOptions *)v4 setAllowedFormats:[(PGTitleGenerator *)self _allowedTimeTitleFormats]];
    [(PGTimeTitleOptions *)v4 setLocale:self->_locale];
    [(PGTimeTitleOptions *)v4 setFilterDates:self->_preferredTitleType != 1];
    [(PGTimeTitleOptions *)v4 setFeaturedYearNodes:self->_featuredYearNodes];
    v2 = [PGTimeTitleUtility splitTimeTitleWithOptions:v4];
  }

  return v2;
}

- (id)_defaultTimeTitle
{
  if ((self->_preferredTitleType & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v2 = 0;
  }

  else
  {
    v4 = objc_alloc_init(PGTimeTitleOptions);
    [(PGTimeTitleOptions *)v4 setMomentNodes:self->_momentNodes];
    [(PGTimeTitleOptions *)v4 setAllowedFormats:[(PGTitleGenerator *)self _allowedTimeTitleFormats]];
    [(PGTimeTitleOptions *)v4 setLocale:self->_locale];
    [(PGTimeTitleOptions *)v4 setFilterDates:self->_preferredTitleType != 1];
    [(PGTimeTitleOptions *)v4 setFeaturedYearNodes:self->_featuredYearNodes];
    if (![(PGTitleGeneratorDateMatching *)self->_dateMatching type])
    {
      [(PGTimeTitleOptions *)v4 setLocationNodes:self->_usedLocationNodes];
    }

    v5 = [PGTimeTitleUtility timeTitleWithOptions:v4];
    v2 = [PGTitle titleWithString:v5 category:5];
  }

  return v2;
}

- (id)_defaultLocationTitle
{
  if (self->_preferredTitleType == 1)
  {
    v2 = 0;
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__42818;
    v18 = __Block_byref_object_dispose__42819;
    v19 = 0;
    v4 = [(PGTitleGenerator *)self _addressNodeFromKeyAsset];
    v5 = [(PGTitleGenerator *)self _addressNodesFromCuratedAssetCollection];
    v6 = v5;
    if (self->_curatedAssetCollection && ![v5 count] || (-[PGTitleGenerator _ratioOfAssetsWithoutLocation](self, "_ratioOfAssetsWithoutLocation"), v7 >= 0.9))
    {
      v2 = 0;
    }

    else
    {
      v8 = objc_alloc_init(PGLocationTitleOptions);
      [(PGLocationTitleOptions *)v8 setMomentNodes:self->_momentNodes];
      [(PGLocationTitleOptions *)v8 setKeyAssetAddressNode:v4];
      [(PGLocationTitleOptions *)v8 setCurationAddressNodes:v6];
      [(PGLocationTitleOptions *)v8 setLineBreakBehavior:self->_lineBreakBehavior];
      if (self->_isForHighlight)
      {
        [(PGLocationTitleOptions *)v8 setUseBusinessItems:1];
        [(PGLocationTitleOptions *)v8 setUseDistrict:1];
        [(PGLocationTitleOptions *)v8 setAllowFamilyHome:0];
        [(PGLocationTitleOptions *)v8 setAoiDisplayType:2];
      }

      if (self->_preferredTitleType == 3)
      {
        [(PGLocationTitleOptions *)v8 setShowAllCities:1];
      }

      v9 = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
      v10 = [(PGTitleGenerationContext *)self->_titleGenerationContext serviceManager];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __41__PGTitleGenerator__defaultLocationTitle__block_invoke;
      v13[3] = &unk_278888460;
      v13[4] = self;
      v13[5] = &v14;
      [PGLocationTitleUtility generateLocationTitleWithOptions:v8 locationHelper:v9 serviceManager:v10 result:v13];

      v11 = v15[5];
      if (v11 && [v11 length])
      {
        v2 = [PGTitle titleWithString:v15[5] category:4];
      }

      else
      {
        v2 = 0;
      }
    }

    _Block_object_dispose(&v14, 8);
  }

  return v2;
}

void __41__PGTitleGenerator__defaultLocationTitle__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(a1 + 32);
  v10 = *(v9 + 88);
  *(v9 + 88) = v6;
}

- (id)_defaultTitle
{
  v3 = self->_momentNodes;
  if ([(NSSet *)v3 count])
  {
    if (self->_preferredTitleType == 3)
    {
      v4 = [(PGTitleGenerator *)self _defaultLocationTitle];
    }

    else
    {
      v7 = [(PGTitleGenerator *)self dateMatching];
      v8 = [PGTitleGeneratorDateMatching alloc];
      v9 = [v7 type];
      v10 = [v7 referenceDateInterval];
      v11 = [(PGTitleGeneratorDateMatching *)v8 initWithType:v9 referenceDateInterval:v10 momentNodes:self->_momentNodes lineBreakBehavior:[(PGTitleGenerator *)self lineBreakBehavior] isForHighlight:self->_isForHighlight titleGenerationContext:self->_titleGenerationContext];

      v12 = [(PGTitleGeneratorDateMatching *)v11 title];
      v4 = v12;
      if (!v12 || ([v12 stringValue], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, !v14))
      {
        v15 = [(PGTitleGenerator *)self _defaultLocationTitle];

        v4 = v15;
      }
    }
  }

  else
  {
    v5 = +[PGLogging sharedLogging];
    v6 = [v5 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "Cannot generate title with no Moment Nodes", v17, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v6 = a3;
  v4 = [(PGTitleGenerator *)self _defaultTitle];
  v5 = [(PGTitleGenerator *)self _defaultTimeTitle];
  if (v6)
  {
    v6[2](v6, v4, v5);
  }
}

- (void)_generateTitleAndSubtitle
{
  v42 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__42818;
  v36 = __Block_byref_object_dispose__42819;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__42818;
  v30 = __Block_byref_object_dispose__42819;
  v31 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __45__PGTitleGenerator__generateTitleAndSubtitle__block_invoke;
  v25[3] = &unk_278884728;
  v25[4] = &v32;
  v25[5] = &v26;
  [(PGTitleGenerator *)self _generateTitleAndSubtitleWithResult:v25];
  v3 = [v33[5] stringValue];
  v4 = [v27[5] stringValue];
  if (v3 && [v3 length] || -[PGTitleGenerator _triggerDefaultTitleGenerationIfNil](self, "_triggerDefaultTitleGenerationIfNil"))
  {
    objc_storeStrong(&self->_subtitle, v27[5]);
    if (v3 && [v3 length])
    {
      v5 = v33;
LABEL_7:
      v6 = v5[5];
      title = self->_title;
      self->_title = v6;
LABEL_8:

      goto LABEL_19;
    }

    if ([(PGTitleGenerator *)self _triggerDefaultTitleGenerationIfNil])
    {
      v8 = [(PGTitleGenerator *)self _defaultTitle];
      v9 = self->_title;
      self->_title = v8;

      if (![v4 length])
      {
        v10 = [(PGTitleGenerator *)self _defaultTimeTitle];
        title = self->_subtitle;
        self->_subtitle = v10;
        goto LABEL_8;
      }
    }
  }

  else
  {
    if ([(PGTitleGenerator *)self _useSplitTimeTitlesIfNeeded])
    {
      title = [(PGTitleGenerator *)self _splitTimeTitles];
      if ([title count])
      {
        v11 = [title firstObject];
        v12 = [PGTitle titleWithString:v11 category:5];
        v13 = self->_title;
        self->_title = v12;

        if ([title count] >= 2)
        {
          v14 = [title lastObject];
          v15 = [PGTitle titleWithString:v14 category:5];
          subtitle = self->_subtitle;
          self->_subtitle = v15;
        }
      }

      goto LABEL_8;
    }

    if (v4 && [v4 length])
    {
      v5 = v27;
      goto LABEL_7;
    }
  }

LABEL_19:
  if (!self->_title && (self->_preferredTitleType & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v17 = +[PGLogging sharedLogging];
    v18 = [v17 loggingConnection];

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = v33[5];
      v24 = v27[5];
      *buf = 138412546;
      v39 = v23;
      v40 = 2112;
      v41 = v24;
      _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Title and subtitle are nil, which should never happen. %@ %@. Will use empty string for title", buf, 0x16u);
    }

    v19 = [PGTitle titleWithString:&stru_2843F5C58 category:0];
    v20 = self->_title;
    self->_title = v19;

    v21 = self->_subtitle;
    self->_subtitle = 0;
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  v22 = *MEMORY[0x277D85DE8];
}

void __45__PGTitleGenerator__generateTitleAndSubtitle__block_invoke(uint64_t a1, void *a2, void *a3)
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

- (PGTitle)subtitle
{
  if (!self->_title)
  {
    [(PGTitleGenerator *)self _generateTitleAndSubtitle];
  }

  subtitle = self->_subtitle;

  return subtitle;
}

- (PGTitle)title
{
  title = self->_title;
  if (!title)
  {
    [(PGTitleGenerator *)self _generateTitleAndSubtitle];
    title = self->_title;
  }

  return title;
}

- (PGTitleGenerator)initWithMomentNodes:(id)a3 referenceDateInterval:(id)a4 keyAsset:(id)a5 curatedAssetCollection:(id)a6 assetCollection:(id)a7 type:(int64_t)a8 titleGenerationContext:(id)a9
{
  v15 = a3;
  v16 = a4;
  v26 = a5;
  v25 = a6;
  v17 = a7;
  v18 = a9;
  v27.receiver = self;
  v27.super_class = PGTitleGenerator;
  v19 = [(PGTitleGenerator *)&v27 init];
  v20 = v19;
  if (v19)
  {
    v19->_lineBreakBehavior = 1;
    objc_storeStrong(&v19->_momentNodes, a3);
    objc_storeStrong(&v20->_assetCollection, a7);
    objc_storeStrong(&v20->_keyAsset, a5);
    objc_storeStrong(&v20->_curatedAssetCollection, a6);
    v21 = [[PGTitleGeneratorDateMatching alloc] initWithType:a8 referenceDateInterval:v16 momentNodes:v15 titleGenerationContext:v18];
    dateMatching = v20->_dateMatching;
    v20->_dateMatching = v21;

    v20->_preferredTitleType = 0;
    objc_storeStrong(&v20->_titleGenerationContext, a9);
  }

  return v20;
}

- (PGTitleGenerator)initWithMomentNode:(id)a3 referenceDateInterval:(id)a4 keyAsset:(id)a5 curatedAssetCollection:(id)a6 assetCollection:(id)a7 type:(int64_t)a8 titleGenerationContext:(id)a9
{
  v16 = MEMORY[0x277CBEB98];
  v17 = a9;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  if (a3)
  {
    [v16 setWithObject:a3];
  }

  else
  {
    [v16 set];
  }
  v22 = ;
  v23 = [(PGTitleGenerator *)self initWithMomentNodes:v22 referenceDateInterval:v21 keyAsset:v20 curatedAssetCollection:v19 assetCollection:v18 type:a8 titleGenerationContext:v17];

  return v23;
}

@end