@interface _PXCuratedLibraryConcreteAnalysisStatus
- (BOOL)isDeviceUnplugged;
- (_PXCuratedLibraryConcreteAnalysisStatus)initWithDataSourceManager:(id)manager;
- (float)_enrichmentProgressForDataSource:(id)source;
- (int64_t)_analyzingStateForDataSource:(id)source;
- (void)_configureBatteryMonitoring;
- (void)_updateStatusProperties;
- (void)dataSourceManagerDidChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation _PXCuratedLibraryConcreteAnalysisStatus

- (void)dataSourceManagerDidChange
{
  dataSourceManager = [(PXCuratedLibraryAnalysisStatus *)self dataSourceManager];

  if (dataSourceManager)
  {
    dataSourceManager2 = [(PXCuratedLibraryAnalysisStatus *)self dataSourceManager];
    [dataSourceManager2 registerChangeObserver:self context:CuratedLibraryAssetsDataSourceManagerObserverContext];

    [(_PXCuratedLibraryConcreteAnalysisStatus *)self _configureBatteryMonitoring];

    [(_PXCuratedLibraryConcreteAnalysisStatus *)self _updateStatusProperties];
  }
}

- (void)_configureBatteryMonitoring
{
  sharedScheduler = [off_1E7721858 sharedScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70___PXCuratedLibraryConcreteAnalysisStatus__configureBatteryMonitoring__block_invoke;
  v4[3] = &unk_1E774C648;
  v4[4] = self;
  [sharedScheduler scheduleMainQueueTask:v4];
}

- (void)_updateStatusProperties
{
  v36 = *MEMORY[0x1E69E9840];
  dataSourceManager = [(PXCuratedLibraryAnalysisStatus *)self dataSourceManager];
  if (![dataSourceManager canLoadData])
  {
    v7 = 0;
    LOBYTE(v8) = 1;
    v9 = -1.0;
    goto LABEL_20;
  }

  v4 = [dataSourceManager dataSourceManagerForZoomLevel:3];
  dataSource = [v4 dataSource];

  if ([dataSourceManager enableDays])
  {
    firstAssetCollection = [dataSource firstAssetCollection];
    if (!firstAssetCollection)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = [dataSourceManager dataSourceManagerForZoomLevel:2];
    dataSource2 = [v10 dataSource];

    firstAssetCollection = [dataSource2 firstAssetCollection];

    if (!firstAssetCollection)
    {
      goto LABEL_8;
    }
  }

  if (([firstAssetCollection isRecent] & 1) == 0)
  {
    if ([dataSource numberOfSections] < 1)
    {
      v7 = 0;
      v9 = -1.0;
    }

    else
    {
      [(_PXCuratedLibraryConcreteAnalysisStatus *)self _enrichmentProgressForDataSource:dataSource];
      v9 = v12;
      v7 = [(_PXCuratedLibraryConcreteAnalysisStatus *)self _analyzingStateForDataSource:dataSource];
    }

    v8 = 1;
    if ([(PXCuratedLibraryAnalysisStatus *)self isDaysMonthsYearsStructureEnabled])
    {
      goto LABEL_19;
    }

LABEL_14:
    v13 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"NO";
      if (v8)
      {
        v14 = @"YES";
      }

      v15 = v14;
      *buf = 138412546;
      v33 = v15;
      v34 = 2112;
      v35 = firstAssetCollection;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "[CuratedLibraryAnalysisStatus] isDaysMonthsYearsStructureEnabled %@ with firstAssetCollection: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

LABEL_8:
  v7 = 0;
  v8 = 0;
  v9 = -1.0;
  if ([(PXCuratedLibraryAnalysisStatus *)self isDaysMonthsYearsStructureEnabled])
  {
    goto LABEL_14;
  }

LABEL_19:

LABEL_20:
  isDeviceUnplugged = [(_PXCuratedLibraryConcreteAnalysisStatus *)self isDeviceUnplugged];
  hasBattery = [(_PXCuratedLibraryConcreteAnalysisStatus *)self hasBattery];
  v18 = _CuratedLibraryAnalysisStatusLocalizedTitleForState(v7, isDeviceUnplugged, [(PXCuratedLibraryAnalysisStatus *)self alternateTitleIndex]);
  v19 = _CuratedLibraryAnalysisStatusLocalizedDescriptionForState(v7, isDeviceUnplugged, hasBattery);
  if (v7 == 2)
  {
    v20 = -1.0;
  }

  else
  {
    v20 = v9;
  }

  if (v7 == 2 && (isDeviceUnplugged & 1) == 0)
  {
    v21 = v9;
    if (v9 < 0.1)
    {
      v21 = 0.1;
    }

    v20 = fmin(v21, 0.9);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __66___PXCuratedLibraryConcreteAnalysisStatus__updateStatusProperties__block_invoke;
  v24[3] = &unk_1E7741DA0;
  v26 = v19;
  v27 = v7;
  v25 = v18;
  v28 = v9;
  v29 = v20;
  v30 = v8;
  v31 = isDeviceUnplugged;
  v22 = v19;
  v23 = v18;
  [(_PXCuratedLibraryConcreteAnalysisStatus *)self performChanges:v24];
}

- (BOOL)isDeviceUnplugged
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice batteryState] == 1;

  return v3;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (CuratedLibraryAssetsDataSourceManagerObserverContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAnalysisStatus.m" lineNumber:478 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0xC) != 0)
  {
    v11 = observableCopy;
    [(_PXCuratedLibraryConcreteAnalysisStatus *)self _updateStatusProperties];
    observableCopy = v11;
  }
}

- (int64_t)_analyzingStateForDataSource:(id)source
{
  v26 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v5 = +[PXCuratedLibrarySettings sharedInstance];
  firstTimeExperienceMaxNonProcessedHighlights = [v5 firstTimeExperienceMaxNonProcessedHighlights];

  v7 = +[PXCuratedLibrarySettings sharedInstance];
  firstTimeExperienceMaxNonProcessedAssets = [v7 firstTimeExperienceMaxNonProcessedAssets];

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = v11;
    v9 += [sourceCopy numberOfSectionsWithEnrichmentState:v11];
    v10 += [sourceCopy estimatedAssetsCountWithEnrichmentState:v11];
    v14 = v9 <= firstTimeExperienceMaxNonProcessedHighlights && v10 <= firstTimeExperienceMaxNonProcessedAssets;
    v15 = v14;
    if (!v14)
    {
      break;
    }

    ++v11;
    if (v13 > 1)
    {
      goto LABEL_11;
    }
  }

  v12 = 2;
LABEL_11:
  if (v12 != [(PXCuratedLibraryAnalysisStatus *)self state])
  {
    v16 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @"analyzing";
      if (v15)
      {
        v17 = @"ready";
      }

      v18 = v17;
      v20 = 138412802;
      v21 = v18;
      v22 = 2048;
      v23 = v9;
      v24 = 2048;
      v25 = v10;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "[CuratedLibraryAnalysisStatus] State = <%@>; numberOfNonProcessedSections = <%li>; numberOfNonProcessedAssets = <%li>", &v20, 0x20u);
    }
  }

  return v12;
}

- (float)_enrichmentProgressForDataSource:(id)source
{
  v24 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v5 = 0;
  v6 = 3;
  do
  {
    v7 = v6;
    v5 += [sourceCopy estimatedAssetsCountWithEnrichmentState:v6++];
  }

  while (v7 < 4);
  v8 = 0;
  v9 = 1;
  v10 = 1;
  do
  {
    v11 = v9;
    v12 = [sourceCopy estimatedAssetsCountWithEnrichmentState:v10];
    v9 = 0;
    v8 += v12;
    v10 = 2;
  }

  while ((v11 & 1) != 0);
  v13 = v8 + v5 + [sourceCopy estimatedAssetsCountWithEnrichmentState:0];
  if (v13 < 1)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = (vcvts_n_f32_s64(v8, 2uLL) + v5) / v13;
  }

  [(PXCuratedLibraryAnalysisStatus *)self progress];
  if (v14 != v15)
  {
    v16 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134218496;
      v19 = v14;
      v20 = 2048;
      v21 = v5;
      v22 = 2048;
      v23 = v13;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "[CuratedLibraryAnalysisStatus] Progress = <%0.2f>; countOfProcessedAssets = <%li>; totalCountOfAssets = <%li>", &v18, 0x20u);
    }
  }

  return v14;
}

- (_PXCuratedLibraryConcreteAnalysisStatus)initWithDataSourceManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = _PXCuratedLibraryConcreteAnalysisStatus;
  return [(PXCuratedLibraryAnalysisStatus *)&v4 _initWithDataSourceManager:manager];
}

@end