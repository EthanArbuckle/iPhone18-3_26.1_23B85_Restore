@interface PUPhotoEditDiagnosticsManager
+ (PUPhotoEditDiagnosticsManager)diagnosticsManagerWithActionType:(int64_t)a3 delegate:(id)a4;
- (PUPhotoEditDiagnosticsDelegate)delegate;
- (PUPhotoEditDiagnosticsManager)initWithActionType:(int64_t)a3 delegate:(id)a4;
- (void)_diagnosticsTimerFired:(id)a3;
- (void)_fileRadarWithTailspinFile:(id)a3;
- (void)beginMonitoringForTimeInterval:(double)a3;
- (void)dealloc;
- (void)endMonitoring;
@end

@implementation PUPhotoEditDiagnosticsManager

- (PUPhotoEditDiagnosticsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)endMonitoring
{
  v3 = [(PUPhotoEditDiagnosticsManager *)self diagnosticsTimer];
  [v3 invalidate];

  [(PUPhotoEditDiagnosticsManager *)self setDiagnosticsTimer:0];

  [(PUPhotoEditDiagnosticsManager *)self setTailspinManager:0];
}

- (void)_fileRadarWithTailspinFile:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditDiagnosticsManager *)self delegate];
  [v5 fileRadarAndAttachFile:v4];
}

- (void)_diagnosticsTimerFired:(id)a3
{
  v4 = [(PUPhotoEditDiagnosticsManager *)self tailspinManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PUPhotoEditDiagnosticsManager__diagnosticsTimerFired___block_invoke;
  v5[3] = &unk_1E7B7E170;
  v5[4] = self;
  [v4 dumpTailspinOutputWithCompletion:v5];
}

void __56__PUPhotoEditDiagnosticsManager__diagnosticsTimerFired___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __56__PUPhotoEditDiagnosticsManager__diagnosticsTimerFired___block_invoke_2;
    v8 = &unk_1E7B80C38;
    v9 = *(a1 + 32);
    v10 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], &v5);
  }

  [*(a1 + 32) endMonitoring];
}

void __56__PUPhotoEditDiagnosticsManager__diagnosticsTimerFired___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) actionType];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_1E7B7E190 + v2);
  }

  v4 = [v3 stringByAppendingString:@"\nWould you like to file a radar with diagnostic information?"];
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Slow Action" message:v4 preferredStyle:1];
  v6 = MEMORY[0x1E69DC648];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__PUPhotoEditDiagnosticsManager__diagnosticsTimerFired___block_invoke_3;
  v12[3] = &unk_1E7B7E120;
  v7 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v7;
  v8 = [v6 actionWithTitle:@"File Radar" style:0 handler:v12];
  [v5 addAction:v8];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__PUPhotoEditDiagnosticsManager__diagnosticsTimerFired___block_invoke_4;
  v11[3] = &unk_1E7B7E148;
  v11[4] = *(a1 + 32);
  v9 = [MEMORY[0x1E69DC648] actionWithTitle:@"Continue Waiting" style:0 handler:v11];
  [v5 addAction:v9];

  v10 = [*(a1 + 32) delegate];
  [v10 presentDiagnosticAlert:v5];
}

uint64_t __56__PUPhotoEditDiagnosticsManager__diagnosticsTimerFired___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 diagnosticsAlertDismissed];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _fileRadarWithTailspinFile:v4];
}

void __56__PUPhotoEditDiagnosticsManager__diagnosticsTimerFired___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 diagnosticsAlertDismissed];
}

- (void)beginMonitoringForTimeInterval:(double)a3
{
  if (PFOSVariantHasInternalUI())
  {
    if ([(PUPhotoEditDiagnosticsManager *)self diagnosticsInProgress])
    {
      [(PUPhotoEditDiagnosticsManager *)self endMonitoring];
    }

    v5 = objc_alloc_init(MEMORY[0x1E69C4328]);
    [(PUPhotoEditDiagnosticsManager *)self setTailspinManager:v5];

    v7 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__diagnosticsTimerFired_ selector:0 userInfo:0 repeats:a3];
    [(PUPhotoEditDiagnosticsManager *)self setDiagnosticsTimer:v7];
  }

  else
  {
    v6 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "PUPhotoEditDiagnosticsManager: Not an internal build; this class is disabled.", buf, 2u);
    }
  }
}

- (void)dealloc
{
  [(PUPhotoEditDiagnosticsManager *)self endMonitoring];
  v3.receiver = self;
  v3.super_class = PUPhotoEditDiagnosticsManager;
  [(PUPhotoEditDiagnosticsManager *)&v3 dealloc];
}

- (PUPhotoEditDiagnosticsManager)initWithActionType:(int64_t)a3 delegate:(id)a4
{
  v8.receiver = self;
  v8.super_class = PUPhotoEditDiagnosticsManager;
  v5 = a4;
  v6 = [(PUPhotoEditDiagnosticsManager *)&v8 init];
  [(PUPhotoEditDiagnosticsManager *)v6 setActionType:a3, v8.receiver, v8.super_class];
  [(PUPhotoEditDiagnosticsManager *)v6 setDelegate:v5];

  return v6;
}

+ (PUPhotoEditDiagnosticsManager)diagnosticsManagerWithActionType:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithActionType:a3 delegate:v6];

  return v7;
}

@end