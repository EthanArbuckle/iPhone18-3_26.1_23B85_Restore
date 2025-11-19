@interface PXCuratedLibraryAnalysisStatus
+ (id)sharedStatusForLibrary:(id)a3;
- (NSString)description;
- (PXCuratedLibraryAnalysisStatus)init;
- (PXCuratedLibraryAnalysisStatus)initWithDataSourceManager:(id)a3;
- (id)_initWithDataSourceManager:(id)a3;
- (void)_updateEventsTracking;
- (void)dealloc;
- (void)didPerformChanges;
- (void)setDataSourceManager:(id)a3;
- (void)setEventTracker:(id)a3;
- (void)setIsDaysMonthsYearsStructureEnabled:(BOOL)a3;
- (void)setIsDevicePlugged:(BOOL)a3;
- (void)setLocalizedDescription:(id)a3;
- (void)setLocalizedTitle:(id)a3;
- (void)setState:(int64_t)a3;
- (void)startCyclingThroughAlternateTitles;
- (void)stopCyclingThroughAlternateTitles;
@end

@implementation PXCuratedLibraryAnalysisStatus

- (PXCuratedLibraryAnalysisStatus)init
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryAnalysisStatus;
  return [(PXCuratedLibraryAnalysisStatus *)&v3 init];
}

- (void)didPerformChanges
{
  v7 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryAnalysisStatus;
  [(PXCuratedLibraryAnalysisStatus *)&v4 didPerformChanges];
  if ([(PXCuratedLibraryAnalysisStatus *)self currentChanges])
  {
    v3 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = self;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "[CuratedLibraryAnalysisStatus] Did transition to %@", buf, 0xCu);
    }

    [(PXCuratedLibraryAnalysisStatus *)self _updateEventsTracking];
  }
}

- (void)_updateEventsTracking
{
  if ([(PXCuratedLibraryAnalysisStatus *)self state])
  {
    v3 = [(PXCuratedLibraryAnalysisStatus *)self eventTracker];
    [(PXCuratedLibraryAnalysisStatus *)self progress];
    [v3 logAnalysisProgress:?];
  }
}

- (void)setEventTracker:(id)a3
{
  v5 = a3;
  if (self->_eventTracker != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_eventTracker, a3);
    [(PXCuratedLibraryAnalysisStatus *)self _updateEventsTracking];
    v5 = v6;
  }
}

- (void)setIsDevicePlugged:(BOOL)a3
{
  if (self->_isDevicePlugged != a3)
  {
    self->_isDevicePlugged = a3;
    [(PXCuratedLibraryAnalysisStatus *)self signalChange:64];
  }
}

- (void)setIsDaysMonthsYearsStructureEnabled:(BOOL)a3
{
  if (self->_isDaysMonthsYearsStructureEnabled != a3)
  {
    self->_isDaysMonthsYearsStructureEnabled = a3;
    [(PXCuratedLibraryAnalysisStatus *)self signalChange:32];
  }
}

- (void)setLocalizedDescription:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_localizedDescription != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      localizedDescription = self->_localizedDescription;
      self->_localizedDescription = v7;

      [(PXCuratedLibraryAnalysisStatus *)self signalChange:4];
      v5 = v9;
    }
  }
}

- (void)setLocalizedTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_localizedTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      localizedTitle = self->_localizedTitle;
      self->_localizedTitle = v7;

      [(PXCuratedLibraryAnalysisStatus *)self signalChange:2];
      v5 = v9;
    }
  }
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(PXCuratedLibraryAnalysisStatus *)self signalChange:1];
  }
}

- (void)stopCyclingThroughAlternateTitles
{
  v3 = self->_numberOfRequestsToCycleThroughAlternateTitles - 1;
  self->_numberOfRequestsToCycleThroughAlternateTitles = v3;
  if (!v3)
  {
    [(NSTimer *)self->_alternateTitleTimer invalidate];
    alternateTitleTimer = self->_alternateTitleTimer;
    self->_alternateTitleTimer = 0;
  }
}

- (void)startCyclingThroughAlternateTitles
{
  numberOfRequestsToCycleThroughAlternateTitles = self->_numberOfRequestsToCycleThroughAlternateTitles;
  self->_numberOfRequestsToCycleThroughAlternateTitles = numberOfRequestsToCycleThroughAlternateTitles + 1;
  if (!numberOfRequestsToCycleThroughAlternateTitles)
  {
    v5 = +[PXFooterSettings sharedInstance];
    [v5 alternateTitleCyclingInterval];
    v7 = v6;

    [(NSTimer *)self->_alternateTitleTimer invalidate];
    v8 = [MEMORY[0x1E695DFF0] px_timerWithTimeInterval:self weakTarget:sel__handleAlternateTitleTimer_ selector:0 userInfo:1 repeats:v7];
    alternateTitleTimer = self->_alternateTitleTimer;
    self->_alternateTitleTimer = v8;

    v10 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v10 addTimer:self->_alternateTitleTimer forMode:*MEMORY[0x1E695DA28]];
  }
}

- (void)setDataSourceManager:(id)a3
{
  v8 = a3;
  v5 = self->_dataSourceManager;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXCuratedLibraryAssetsDataSourceManager *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dataSourceManager, a3);
      [(PXCuratedLibraryAnalysisStatus *)self dataSourceManagerDidChange];
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PXCuratedLibraryAnalysisStatus *)self state];
  if (v5 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E7741DC8[v5];
  }

  v7 = [(PXCuratedLibraryAnalysisStatus *)self localizedTitle];
  v8 = [(PXCuratedLibraryAnalysisStatus *)self localizedDescription];
  [(PXCuratedLibraryAnalysisStatus *)self progress];
  v10 = v9;
  [(PXCuratedLibraryAnalysisStatus *)self displayProgress];
  v12 = v11;
  v13 = [(PXCuratedLibraryAnalysisStatus *)self isDaysMonthsYearsStructureEnabled];
  v14 = @"NO";
  if (v13)
  {
    v14 = @"YES";
  }

  v15 = v14;
  v16 = [v3 stringWithFormat:@"<%@: %p state: %@; localizedTitle: %@; localizedDescription: %@; progress: %0.2f; displayProgress: %0.2f; isDaysMonthsYearsStructureEnabled: %@>", v4, self, v6, v7, v8, *&v10, *&v12, v15];;

  return v16;
}

- (void)dealloc
{
  [(NSTimer *)self->_alternateTitleTimer invalidate];
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryAnalysisStatus;
  [(PXCuratedLibraryAnalysisStatus *)&v3 dealloc];
}

- (id)_initWithDataSourceManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXCuratedLibraryAnalysisStatus;
  v6 = [(PXCuratedLibraryAnalysisStatus *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSourceManager, a3);
    [(PXCuratedLibraryAnalysisStatus *)v7 dataSourceManagerDidChange];
  }

  return v7;
}

- (PXCuratedLibraryAnalysisStatus)initWithDataSourceManager:(id)a3
{
  v4 = a3;
  v5 = +[PXMockCuratedLibraryAnalysisStatus shouldUseMock];
  v6 = off_1E7720B30;
  if (v5)
  {
    v6 = off_1E771E638;
  }

  v7 = [objc_alloc(*v6) initWithDataSourceManager:v4];

  return v7;
}

+ (id)sharedStatusForLibrary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXCuratedLibraryAnalysisStatus.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  if (sharedStatusForLibrary__onceToken != -1)
  {
    dispatch_once(&sharedStatusForLibrary__onceToken, &__block_literal_global_191936);
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__191937;
  v18 = __Block_byref_object_dispose__191938;
  v19 = 0;
  v6 = sharedStatusForLibrary__fetchersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PXCuratedLibraryAnalysisStatus_sharedStatusForLibrary___block_invoke_199;
  block[3] = &unk_1E7749A28;
  v12 = v5;
  v13 = &v14;
  v7 = v5;
  dispatch_sync(v6, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __57__PXCuratedLibraryAnalysisStatus_sharedStatusForLibrary___block_invoke_199(uint64_t a1)
{
  v2 = [sharedStatusForLibrary__sharedStatusByPhotoLibrary objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = objc_alloc_init(_PXCuratedLibraryConcreteAnalysisStatus);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = sharedStatusForLibrary__sharedStatusByPhotoLibrary;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

void __57__PXCuratedLibraryAnalysisStatus_sharedStatusForLibrary___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v1 = sharedStatusForLibrary__sharedStatusByPhotoLibrary;
  sharedStatusForLibrary__sharedStatusByPhotoLibrary = v0;

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.photos.PXCuratedLibraryAnalysisStatus-isolation-queue", v4);
  v3 = sharedStatusForLibrary__fetchersQueue;
  sharedStatusForLibrary__fetchersQueue = v2;
}

@end