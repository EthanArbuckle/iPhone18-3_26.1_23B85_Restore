@interface PXMockCuratedLibraryAnalysisStatus
+ (BOOL)shouldUseMock;
+ (id)_mockStatus;
- (PXMockCuratedLibraryAnalysisStatus)initWithDataSourceManager:(id)a3;
- (void)_updateStatusProperties;
- (void)dataSourceManagerDidChange;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation PXMockCuratedLibraryAnalysisStatus

- (void)_updateStatusProperties
{
  v3 = [objc_opt_class() _mockStatus];
  v4 = [v3 objectForKeyedSubscript:@"Structure"];
  v26 = v4;
  if (v4)
  {
    v25 = [v4 BOOLValue];
  }

  else
  {
    v25 = 1;
  }

  v5 = [v3 objectForKeyedSubscript:@"State"];
  v6 = v5;
  if (v5 && ([v5 isEqualToString:@"unknown"] & 1) == 0)
  {
    if ([v6 isEqualToString:@"analyzing"])
    {
      v7 = 2;
    }

    else
    {
      v7 = [v6 isEqualToString:@"ready"];
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 objectForKeyedSubscript:@"progress"];
  v9 = v8;
  if (v8)
  {
    [v8 floatValue];
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
  }

  v12 = [v3 objectForKeyedSubscript:@"Unplugged"];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 BOOLValue];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v3 objectForKeyedSubscript:@"HasBattery"];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 BOOLValue];
  }

  else
  {
    v17 = 1;
  }

  v18 = _CuratedLibraryAnalysisStatusLocalizedTitleForState(v7, v14, [(PXCuratedLibraryAnalysisStatus *)self alternateTitleIndex]);
  v19 = _CuratedLibraryAnalysisStatusLocalizedDescriptionForState(v7, v14, v17);
  if (v7 == 2)
  {
    v20 = v14;
  }

  else
  {
    v20 = 1;
  }

  v21 = -1.0;
  if (v7 != 2)
  {
    v21 = v11;
  }

  if ((v20 & 1) == 0)
  {
    v22 = v11;
    if (v11 < 0.1)
    {
      v22 = 0.1;
    }

    v21 = fmin(v22, 0.9);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __61__PXMockCuratedLibraryAnalysisStatus__updateStatusProperties__block_invoke;
  v27[3] = &unk_1E7741DA0;
  v29 = v19;
  v30 = v7;
  v28 = v18;
  v31 = v11;
  v32 = v21;
  v33 = v25;
  v34 = v14;
  v23 = v19;
  v24 = v18;
  [(PXMockCuratedLibraryAnalysisStatus *)self performChanges:v27];
}

void __61__PXMockCuratedLibraryAnalysisStatus__updateStatusProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v6 = a2;
  [v6 setState:v3];
  [v6 setLocalizedTitle:*(a1 + 32)];
  [v6 setLocalizedDescription:*(a1 + 40)];
  LODWORD(v4) = *(a1 + 56);
  [v6 setProgress:v4];
  LODWORD(v5) = *(a1 + 60);
  [v6 setDisplayProgress:v5];
  [v6 setIsDaysMonthsYearsStructureEnabled:*(a1 + 64)];
  [v6 setIsDevicePlugged:(*(a1 + 65) & 1) == 0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &_PXMockCuratedLibraryAnalysisStatusUserDefaultsContext)
  {

    [(PXMockCuratedLibraryAnalysisStatus *)self _updateStatusProperties:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = PXMockCuratedLibraryAnalysisStatus;
    [(PXMockCuratedLibraryAnalysisStatus *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)dealloc
{
  v3 = PXSharedUserDefaults();
  [v3 removeObserver:self forKeyPath:@"LibraryAnalysisStatusMock" context:&_PXMockCuratedLibraryAnalysisStatusUserDefaultsContext];

  v4.receiver = self;
  v4.super_class = PXMockCuratedLibraryAnalysisStatus;
  [(PXCuratedLibraryAnalysisStatus *)&v4 dealloc];
}

- (void)dataSourceManagerDidChange
{
  v3 = PXSharedUserDefaults();
  [v3 addObserver:self forKeyPath:@"LibraryAnalysisStatusMock" options:4 context:&_PXMockCuratedLibraryAnalysisStatusUserDefaultsContext];
}

- (PXMockCuratedLibraryAnalysisStatus)initWithDataSourceManager:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v10 = objc_opt_class();
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "%@ Using mock analysis status", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = PXMockCuratedLibraryAnalysisStatus;
  v6 = [(PXCuratedLibraryAnalysisStatus *)&v8 _initWithDataSourceManager:v4];

  return v6;
}

+ (id)_mockStatus
{
  v2 = PXSharedUserDefaults();
  v3 = [v2 objectForKey:@"LibraryAnalysisStatusMock"];

  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v3 componentsSeparatedByString:@"/"];
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    if (([v6 isEqualToString:@"unknown"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"analyzing") & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"ready"))
    {
      if ([v6 isEqualToString:@"unvavailable"])
      {
        [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"Structure"];
      }

      goto LABEL_22;
    }

    [v4 setObject:v6 forKeyedSubscript:@"State"];
    if ([v5 containsObject:@"hasbattery"])
    {
      v7 = MEMORY[0x1E695E118];
    }

    else
    {
      if (![v5 containsObject:@"hasnobattery"])
      {
        goto LABEL_12;
      }

      v7 = MEMORY[0x1E695E110];
    }

    [v4 setObject:v7 forKeyedSubscript:@"HasBattery"];
LABEL_12:
    if ([v5 containsObject:@"plugged"])
    {
      v8 = MEMORY[0x1E695E110];
    }

    else
    {
      if (![v5 containsObject:@"unplugged"])
      {
LABEL_17:
        v9 = [v5 indexOfObject:@"progress"];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL && [v5 count] > (v9 + 1))
        {
          v10 = MEMORY[0x1E696AD98];
          v11 = [v5 objectAtIndexedSubscript:?];
          [v11 floatValue];
          v12 = [v10 numberWithFloat:?];
          [v4 setObject:v12 forKeyedSubscript:@"progress"];
        }

LABEL_22:

        goto LABEL_23;
      }

      v8 = MEMORY[0x1E695E118];
    }

    [v4 setObject:v8 forKeyedSubscript:@"Unplugged"];
    goto LABEL_17;
  }

LABEL_23:

LABEL_24:

  return v4;
}

+ (BOOL)shouldUseMock
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v3 = [a1 _mockStatus];
  v4 = v3 != 0;

  return v4;
}

@end