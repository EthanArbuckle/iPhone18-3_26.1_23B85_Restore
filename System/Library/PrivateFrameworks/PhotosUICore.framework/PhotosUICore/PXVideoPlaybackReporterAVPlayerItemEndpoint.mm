@interface PXVideoPlaybackReporterAVPlayerItemEndpoint
+ (BOOL)isReportingAvailable;
+ (OS_dispatch_queue)reportingQueue;
- (PXVideoPlaybackReporterAVPlayerItemEndpoint)init;
- (PXVideoPlaybackReporterAVPlayerItemEndpoint)initWithPlayerItem:(id)a3;
- (id)description;
- (void)sendPayload:(_PXVideoPlaybackReporterPayload *)a3;
@end

@implementation PXVideoPlaybackReporterAVPlayerItemEndpoint

- (void)sendPayload:(_PXVideoPlaybackReporterPayload *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = [objc_opt_class() isReportingAvailable];
  v7 = PLVideoPlaybackGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [(PXVideoPlaybackReporterAVPlayerItemEndpoint *)self loggingIdentifier];
      v10 = *&a3->var2;
      *buf = *&a3->var0;
      *&buf[16] = v10;
      v11 = PXVideoPlaybackReporterPayloadDescription(buf);
      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "[VideoPlaybackReporting] %@: Sending video playback payload:\n\t%@", buf, 0x16u);
    }

    v12 = [(PXVideoPlaybackReporterAVPlayerItemEndpoint *)self playerItem];
    v13 = [objc_opt_class() reportingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PXVideoPlaybackReporterAVPlayerItemEndpoint_sendPayload___block_invoke;
    block[3] = &unk_1E774A810;
    v14 = *&a3->var2;
    v20 = *&a3->var0;
    v21 = v14;
    v22 = a2;
    block[4] = self;
    v19 = v12;
    v7 = v12;
    dispatch_async(v13, block);
  }

  else if (v8)
  {
    v15 = [(PXVideoPlaybackReporterAVPlayerItemEndpoint *)self loggingIdentifier];
    v16 = *&a3->var2;
    *buf = *&a3->var0;
    *&buf[16] = v16;
    v17 = PXVideoPlaybackReporterPayloadDescription(buf);
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v17;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "[VideoPlaybackReporting] %@: Unable to send video playback payload because reporting is not available:\n\t%@", buf, 0x16u);
  }
}

void __59__PXVideoPlaybackReporterAVPlayerItemEndpoint_sendPayload___block_invoke(void *a1)
{
  v2 = a1[9];
  switch(v2)
  {
    case 1:
      v3 = @"PhotosUiStartToSetRateMs";
      break;
    case 2:
      v3 = @"PhotosUiStartToLeaveMs";
      break;
    case 0:
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a1[10] object:a1[4] file:@"PXVideoPlaybackReporter+AVFoundation.m" lineNumber:138 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v3 = 0;
      break;
  }

  v4 = a1[5];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  [v4 setReportingValueWithNumber:v5 forKey:v3];

  v6 = a1[8];
  if (v6 >= 7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Priority PriorityForLoadingPriority(PXVideoLoadingPriority)"];
    v15 = v13;
    v16 = v14;
    v17 = 95;
    goto LABEL_14;
  }

  v7 = a1[5];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:qword_1A53815C8[v6]];
  [v7 setReportingValueWithNumber:v8 forKey:@"PhotosUiIntentPriority"];

  v9 = a1[8];
  if (v9 >= 7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"VideoIntent VideoIntentForLoadingPriority(PXVideoLoadingPriority)"];
    v15 = v13;
    v16 = v14;
    v17 = 75;
LABEL_14:
    [v15 handleFailureInFunction:v16 file:@"PXVideoPlaybackReporter+AVFoundation.m" lineNumber:v17 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = a1[5];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:qword_1A5381600[v9]];
  [v10 setReportingValueWithNumber:v11 forKey:@"PhotosUiIntent"];

  v12 = a1[5];
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:a1[7]];
  [v12 setReportingValueWithNumber:v19 forKey:@"PhotosUiStartToAssetCreationMs"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXVideoPlaybackReporterAVPlayerItemEndpoint *)self playerItem];
  v7 = [v3 initWithFormat:@"<%@ %p; Item: %@>", v5, self, v6];

  return v7;
}

- (PXVideoPlaybackReporterAVPlayerItemEndpoint)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXVideoPlaybackReporter+AVFoundation.m" lineNumber:117 description:{@"%s is not available as initializer", "-[PXVideoPlaybackReporterAVPlayerItemEndpoint init]"}];

  abort();
}

- (PXVideoPlaybackReporterAVPlayerItemEndpoint)initWithPlayerItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXVideoPlaybackReporterAVPlayerItemEndpoint;
  v6 = [(PXVideoPlaybackReporterAVPlayerItemEndpoint *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playerItem, a3);
  }

  return v7;
}

+ (OS_dispatch_queue)reportingQueue
{
  if (reportingQueue_onceToken != -1)
  {
    dispatch_once(&reportingQueue_onceToken, &__block_literal_global_36);
  }

  v3 = reportingQueue_reportingQueue;

  return v3;
}

+ (BOOL)isReportingAvailable
{
  if (isReportingAvailable_onceToken != -1)
  {
    dispatch_once(&isReportingAvailable_onceToken, &__block_literal_global_22080);
  }

  return isReportingAvailable_isAvailable;
}

uint64_t __67__PXVideoPlaybackReporterAVPlayerItemEndpoint_isReportingAvailable__block_invoke()
{
  result = [MEMORY[0x1E69880B0] instancesRespondToSelector:sel_setReportingValueWithNumber_forKey_];
  isReportingAvailable_isAvailable = result;
  if (result)
  {
    result = [MEMORY[0x1E69880B0] instancesRespondToSelector:sel_setReportingValueWithString_forKey_];
  }

  isReportingAvailable_isAvailable = result;
  return result;
}

@end