@interface PLPrefetchConfiguration
+ (id)descriptionForPrefetchOptimizeMode:(int64_t)a3;
+ (id)overridePrefetchOptimizeMode;
+ (int64_t)_defaultPrefetchOptimizeMode;
+ (int64_t)defaultPrefetchOptimizeMode;
- (PLPrefetchConfiguration)initWithPrefetchDictionary:(id)a3;
- (int64_t)prefetchOptimizeModeForTotalSizeOfOriginalResources:(int64_t)a3 totalSizeOfLocallyAvailableOriginalResources:(int64_t)a4 availableSpace:(int64_t)a5 overrideMaximumSmallLibraryThresholdGB:(int64_t)a6 nonThumbnailsBudget:(int64_t)a7;
- (unint64_t)smallLibrarySizeThresholdForTotalSizeOfLocallyAvailableOriginalResources:(int64_t)a3 availableSpace:(int64_t)a4 overrideMaximumThresholdGB:(int64_t)a5;
- (void)updateValuesFromPrefetchDictionary:(id)a3;
- (void)updateValuesFromTrialIfNecessary;
@end

@implementation PLPrefetchConfiguration

- (int64_t)prefetchOptimizeModeForTotalSizeOfOriginalResources:(int64_t)a3 totalSizeOfLocallyAvailableOriginalResources:(int64_t)a4 availableSpace:(int64_t)a5 overrideMaximumSmallLibraryThresholdGB:(int64_t)a6 nonThumbnailsBudget:(int64_t)a7
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = [(PLPrefetchConfiguration *)self smallLibrarySizeThresholdForTotalSizeOfLocallyAvailableOriginalResources:a4 availableSpace:a5 overrideMaximumThresholdGB:a6];
  if ((a4 | a3) < 0 || (v11 = v10, v10 < a3) || a3 - a4 > a7)
  {
    v15 = objc_opt_class();

    return [v15 _defaultPrefetchOptimizeMode];
  }

  else
  {
    v12 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [PLPrefetchConfiguration descriptionForPrefetchOptimizeMode:2];
      v16 = 134218498;
      v17 = a3;
      v18 = 2048;
      v19 = v11;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Library size %lld smaller than small-size threshold %lld, setting prefetch optimize mode to %@", &v16, 0x20u);
    }

    return 2;
  }
}

- (unint64_t)smallLibrarySizeThresholdForTotalSizeOfLocallyAvailableOriginalResources:(int64_t)a3 availableSpace:(int64_t)a4 overrideMaximumThresholdGB:(int64_t)a5
{
  if (a5 < 1)
  {
    cloudResourceMaximumSmallLibraryThreshold = self->_cloudResourceMaximumSmallLibraryThreshold;
  }

  else
  {
    cloudResourceMaximumSmallLibraryThreshold = a5 << 30;
  }

  v6 = self->_cloudResourceSmallLibraryThresholdRatio * (a4 + a3);
  if (v6 >= cloudResourceMaximumSmallLibraryThreshold)
  {
    return cloudResourceMaximumSmallLibraryThreshold;
  }

  return v6;
}

- (void)updateValuesFromPrefetchDictionary:(id)a3
{
  v25 = [a3 objectForKeyedSubscript:@"iOS"];
  if (v25)
  {
    v4 = [v25 objectForKeyedSubscript:@"memoryMaxPrefetchPhotosCount"];

    if (v4)
    {
      v5 = [v25 objectForKeyedSubscript:@"memoryMaxPrefetchPhotosCount"];
      self->_memoryMaxPrefetchPhotosCount = [v5 integerValue];
    }

    v6 = [v25 objectForKeyedSubscript:@"memoryMaxPrefetchVideosCount"];

    if (v6)
    {
      v7 = [v25 objectForKeyedSubscript:@"memoryMaxPrefetchVideosCount"];
      self->_memoryMaxPrefetchVideosCount = [v7 integerValue];
    }

    v8 = [v25 objectForKeyedSubscript:@"memoryPrefetchLimit"];

    if (v8)
    {
      v9 = [v25 objectForKeyedSubscript:@"memoryPrefetchLimit"];
      self->_memoryPrefetchLimit = [v9 integerValue];
    }

    v10 = [v25 objectForKeyedSubscript:@"maxFileSize"];

    if (v10)
    {
      v11 = [v25 objectForKeyedSubscript:@"maxFileSize"];
      self->_cloudResourcePrefetchMaxFileSize = [v11 integerValue];
    }

    v12 = [v25 objectForKeyedSubscript:@"initialMinimumFreeDiskSpaceForOptimizeRatio"];

    if (v12)
    {
      v13 = [v25 objectForKeyedSubscript:@"initialMinimumFreeDiskSpaceForOptimizeRatio"];
      [v13 doubleValue];
      self->_cloudResourceInitialMinimumFreeDiskSpaceForOptimizeRatio = v14;
    }

    v15 = [v25 objectForKeyedSubscript:@"maximumSmallLibraryThreshold"];

    if (v15)
    {
      v16 = [v25 objectForKeyedSubscript:@"maximumSmallLibraryThreshold"];
      self->_cloudResourceMaximumSmallLibraryThreshold = [v16 integerValue];
    }

    v17 = [v25 objectForKeyedSubscript:@"memoryPrefetchAllowedIfLastViewedDateWithin"];

    if (v17)
    {
      v18 = [v25 objectForKeyedSubscript:@"memoryPrefetchAllowedIfLastViewedDateWithin"];
      self->_memoryPrefetchAllowedIfLastViewedDateWithin = [v18 integerValue];
    }

    v19 = [v25 objectForKeyedSubscript:@"memoryPrefetchIfCreationDateWithin"];

    if (v19)
    {
      v20 = [v25 objectForKeyedSubscript:@"memoryPrefetchIfCreationDateWithin"];
      self->_memoryPrefetchIfCreationDateWithin = [v20 integerValue];
    }

    v21 = [v25 objectForKeyedSubscript:@"computeSyncMaxPrefetch"];

    if (v21)
    {
      v22 = [v25 objectForKeyedSubscript:@"computeSyncMaxPrefetch"];
      self->_cloudResourceComputeSyncMaxResourcesPerFetch = [v22 integerValue];
    }

    v23 = [v25 objectForKeyedSubscript:@"optimizedNonThumbnailInitialPrefetchDateIntervalBeforeNow"];

    if (v23)
    {
      v24 = [v25 objectForKeyedSubscript:@"optimizedNonThumbnailInitialPrefetchDateIntervalBeforeNow"];
      self->_optimizedNonThumbnailInitialPrefetchDateIntervalBeforeNow = [v24 integerValue];
    }
  }
}

- (PLPrefetchConfiguration)initWithPrefetchDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PLPrefetchConfiguration;
  v5 = [(PLPrefetchConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 2) = 655460;
    *(v5 + 12) = xmmword_19C60AFA0;
    *(v5 + 14) = 10;
    *(v5 + 4) = 20971520;
    *(v5 + 5) = 1800;
    *(v5 + 3) = xmmword_19C60AFB0;
    *(v5 + 9) = 0x3FB999999999999ALL;
    *(v5 + 5) = xmmword_19C60AFC0;
    *(v5 + 6) = xmmword_19C60AFD0;
    if (v4)
    {
      [v5 updateValuesFromPrefetchDictionary:v4];
    }

    [(PLPrefetchConfiguration *)v6 updateValuesFromTrialIfNecessary];
  }

  return v6;
}

+ (id)overridePrefetchOptimizeMode
{
  if (MEMORY[0x19EAEE230](a1, a2))
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v2 objectForKey:@"PLPrefetchOptimizeMode"];
    v4 = [v3 lowercaseString];

    if (v4)
    {
      if ([v4 isEqualToString:@"medium"])
      {
        v5 = &unk_1F0FBC0B8;
LABEL_9:
        v6 = overridePrefetchOptimizeMode_overridePrefetchOptimizeMode;
        overridePrefetchOptimizeMode_overridePrefetchOptimizeMode = v5;

        goto LABEL_10;
      }

      if ([v4 isEqualToString:@"fullsize"])
      {
        v5 = &unk_1F0FBC0D0;
        goto LABEL_9;
      }

      if ([v4 isEqualToString:@"original"])
      {
        v5 = &unk_1F0FBC0E8;
        goto LABEL_9;
      }
    }

LABEL_10:
  }

  v7 = overridePrefetchOptimizeMode_overridePrefetchOptimizeMode;

  return v7;
}

+ (id)descriptionForPrefetchOptimizeMode:(int64_t)a3
{
  v3 = @"medium";
  if (a3 == 1)
  {
    v3 = @"fullsize";
  }

  if (a3 == 2)
  {
    return @"original";
  }

  else
  {
    return v3;
  }
}

+ (int64_t)_defaultPrefetchOptimizeMode
{
  v2 = [MEMORY[0x1E69BF200] defaultDeviceConfiguration];
  v3 = [v2 logicalScreenPixelSize] > 0x3A147A;

  return v3;
}

+ (int64_t)defaultPrefetchOptimizeMode
{
  v2 = [objc_opt_class() _defaultPrefetchOptimizeMode];
  v3 = [objc_opt_class() overridePrefetchOptimizeMode];
  v4 = v3;
  if (v3)
  {
    v2 = [v3 integerValue];
  }

  return v2;
}

- (void)updateValuesFromTrialIfNecessary
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DB518] clientWithIdentifier:235];
  v4 = [v3 levelForFactor:@"com.apple.photos.photolibraryservices.prefetch.trialOverride" withNamespaceName:@"PHOTOS_GENERAL"];
  v5 = [v4 BOOLeanValue];

  if (v5)
  {
    v6 = [v3 levelForFactor:@"com.apple.photos.photolibraryservices.prefetch.memoryMaxPrefetchPhotosCount" withNamespaceName:@"PHOTOS_GENERAL"];
    v7 = v6;
    if (v6)
    {
      -[PLPrefetchConfiguration setMemoryMaxPrefetchPhotosCount:](self, "setMemoryMaxPrefetchPhotosCount:", [v6 longValue]);
    }

    v8 = [v3 levelForFactor:@"com.apple.photos.photolibraryservices.prefetch.memoryMaxPrefetchVideosCount" withNamespaceName:@"PHOTOS_GENERAL"];

    if (v8)
    {
      -[PLPrefetchConfiguration setMemoryMaxPrefetchVideosCount:](self, "setMemoryMaxPrefetchVideosCount:", [v8 longValue]);
    }

    v9 = [v3 levelForFactor:@"com.apple.photos.photolibraryservices.prefetch.memoryPrefetchLimit" withNamespaceName:@"PHOTOS_GENERAL"];

    if (v9)
    {
      -[PLPrefetchConfiguration setMemoryPrefetchLimit:](self, "setMemoryPrefetchLimit:", [v9 longValue]);
    }

    v10 = [v3 levelForFactor:@"com.apple.photos.photolibraryservices.prefetch.maxFileSize" withNamespaceName:@"PHOTOS_GENERAL"];

    if (v10)
    {
      -[PLPrefetchConfiguration setCloudResourcePrefetchMaxFileSize:](self, "setCloudResourcePrefetchMaxFileSize:", [v10 longValue]);
    }

    v11 = [v3 levelForFactor:@"com.apple.photos.photolibraryservices.prefetch.initialMinimumFreeDiskSpaceForOptimizeRatio" withNamespaceName:@"PHOTOS_GENERAL"];

    if (v11)
    {
      [v11 doubleValue];
      [(PLPrefetchConfiguration *)self setCloudResourceInitialMinimumFreeDiskSpaceForOptimizeRatio:?];
    }

    v12 = [v3 levelForFactor:@"com.apple.photos.photolibraryservices.prefetch.maximumSmallLibraryThreshold" withNamespaceName:@"PHOTOS_GENERAL"];

    if (v12)
    {
      -[PLPrefetchConfiguration setCloudResourceMaximumSmallLibraryThreshold:](self, "setCloudResourceMaximumSmallLibraryThreshold:", [v12 longValue]);
    }

    v13 = [v3 levelForFactor:@"com.apple.photos.photolibraryservices.prefetch.memoryPrefetchAllowedIfLastViewedDateWithin" withNamespaceName:@"PHOTOS_GENERAL"];

    if (v13)
    {
      -[PLPrefetchConfiguration setMemoryPrefetchAllowedIfLastViewedDateWithin:](self, "setMemoryPrefetchAllowedIfLastViewedDateWithin:", [v13 longValue]);
    }

    v14 = [v3 levelForFactor:@"com.apple.photos.photolibraryservices.prefetch.memoryPrefetchIfCreationDateWithin" withNamespaceName:@"PHOTOS_GENERAL"];

    if (v14)
    {
      -[PLPrefetchConfiguration setMemoryPrefetchIfCreationDateWithin:](self, "setMemoryPrefetchIfCreationDateWithin:", [v14 longValue]);
    }

    v15 = [v3 levelForFactor:@"com.apple.photos.photolibraryservices.prefetch.computeSyncMaxPrefetch" withNamespaceName:@"PHOTOS_GENERAL"];

    if (v15)
    {
      -[PLPrefetchConfiguration setCloudResourceComputeSyncMaxResourcesPerFetch:](self, "setCloudResourceComputeSyncMaxResourcesPerFetch:", [v15 longValue]);
    }

    v16 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v21 = [(PLPrefetchConfiguration *)self memoryMaxPrefetchPhotosCount];
      v17 = [(PLPrefetchConfiguration *)self memoryMaxPrefetchVideosCount];
      v18 = [(PLPrefetchConfiguration *)self memoryPrefetchLimit];
      v19 = [(PLPrefetchConfiguration *)self cloudResourcePrefetchMaxFileSize];
      [(PLPrefetchConfiguration *)self cloudResourceInitialMinimumFreeDiskSpaceForOptimizeRatio];
      *buf = 67111168;
      v23 = v21;
      v24 = 1024;
      v25 = v17;
      v26 = 1024;
      v27 = v18;
      v28 = 2048;
      v29 = v19;
      v30 = 2048;
      v31 = v20;
      v32 = 2048;
      v33 = [(PLPrefetchConfiguration *)self cloudResourceMaximumSmallLibraryThreshold];
      v34 = 2048;
      v35 = [(PLPrefetchConfiguration *)self memoryPrefetchAllowedIfLastViewedDateWithin];
      v36 = 2048;
      v37 = [(PLPrefetchConfiguration *)self memoryPrefetchIfCreationDateWithin];
      v38 = 1024;
      v39 = [(PLPrefetchConfiguration *)self cloudResourceComputeSyncMaxResourcesPerFetch];
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "Trial Override is TRUE. Using values from Trial Experiment\n\t memoryMaxPrefetchPhotosCount:%hu\n\tmemoryMaxPrefetchVideosCount:%hu\n\tmemoryPrefetchLimit:%hu\n\tcloudResourcePrefetchMaxFileSize:%llu\n\t\n\tcloudResourceInitialMinimumFreeDiskSpaceForOptimizeRatio:%f\n\tcloudResourceMaximumSmallLibraryThreshold:%llu\n\tmemoryPrefetchAllowedIfLastViewedDateWithin:%lld\n\tmemoryPrefetchIfCreationDateWithin:%lld\n\tcloudResourceComputeSyncMaxResourcesPerFetch:%hu\n", buf, 0x4Cu);
    }
  }
}

@end