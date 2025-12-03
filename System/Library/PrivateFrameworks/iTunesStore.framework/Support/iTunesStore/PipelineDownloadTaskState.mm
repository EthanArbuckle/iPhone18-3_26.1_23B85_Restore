@interface PipelineDownloadTaskState
- (BOOL)isEqual:(id)equal;
- (PipelineDownloadTaskState)initWithPrepareDownloadResponse:(id)response;
- (id)_overallProgress;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setFinishProgress:(double)progress;
- (void)setTransferProgress:(double)progress;
- (void)setTransferProgressWithBytesWritten:(int64_t)written totalBytesExpected:(int64_t)expected;
@end

@implementation PipelineDownloadTaskState

- (PipelineDownloadTaskState)initWithPrepareDownloadResponse:(id)response
{
  responseCopy = response;
  v10.receiver = self;
  v10.super_class = PipelineDownloadTaskState;
  v5 = [(PipelineDownloadTaskState *)&v10 init];
  if (v5)
  {
    -[PipelineDownloadTaskState setAutomaticType:](v5, "setAutomaticType:", [responseCopy automaticType]);
    bundleIdentifier = [responseCopy bundleIdentifier];
    [(PipelineDownloadTaskState *)v5 setBundleIdentifier:bundleIdentifier];

    kind = [responseCopy kind];
    [(PipelineDownloadTaskState *)v5 setKind:kind];

    downloadHandle = [responseCopy downloadHandle];
    [(PipelineDownloadTaskState *)v5 setDownloadHandle:downloadHandle];

    -[PipelineDownloadTaskState setDownloadIdentifier:](v5, "setDownloadIdentifier:", [responseCopy downloadIdentifier]);
    -[PipelineDownloadTaskState setLegacyClient:](v5, "setLegacyClient:", [responseCopy isLegacyClient]);
    -[PipelineDownloadTaskState setMediaAssetIdentifier:](v5, "setMediaAssetIdentifier:", [responseCopy mediaAssetIdentifier]);
    -[PipelineDownloadTaskState setRequiresDownloadHandler:](v5, "setRequiresDownloadHandler:", [responseCopy requiresDownloadHandler]);
    [responseCopy transferProgressFraction];
    [(PipelineDownloadTaskState *)v5 setTransferProgressFraction:?];
  }

  return v5;
}

- (void)setFinishProgress:(double)progress
{
  v3 = self->_transferProgressFraction + (1.0 - self->_transferProgressFraction) * progress;
  _overallProgress = [(PipelineDownloadTaskState *)self _overallProgress];
  [_overallProgress setCurrentValue:{(v3 * objc_msgSend(_overallProgress, "maxValue"))}];
}

- (void)setTransferProgress:(double)progress
{
  v3 = self->_transferProgressFraction * progress;
  _overallProgress = [(PipelineDownloadTaskState *)self _overallProgress];
  [_overallProgress setCurrentValue:{(v3 * objc_msgSend(_overallProgress, "maxValue"))}];
}

- (void)setTransferProgressWithBytesWritten:(int64_t)written totalBytesExpected:(int64_t)expected
{
  self->_transferBytesExpected = expected;
  self->_transferBytesWritten = written;
  if (expected >= 1)
  {
    [(PipelineDownloadTaskState *)self setTransferProgress:written / expected];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    downloadIdentifier = [(PipelineDownloadTaskState *)self downloadIdentifier];
    v6 = downloadIdentifier == [equalCopy downloadIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_automaticType;
  v6 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(DownloadHandle *)self->_downloadHandle copyWithZone:zone];
  v9 = v5[14];
  v5[14] = v8;

  v5[2] = self->_downloadIdentifier;
  v10 = [(NSString *)self->_kind copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v5[6] = self->_mediaAssetIdentifier;
  v12 = [(SSOperationProgress *)self->_overallProgress copyWithZone:zone];
  v13 = v5[7];
  v5[7] = v12;

  *(v5 + 64) = self->_requiresDownloadHandler;
  v5[9] = self->_storeItemIdentifier;
  v5[10] = self->_transferBytesExpected;
  v5[11] = self->_transferBytesWritten;
  v5[12] = *&self->_transferProgressFraction;
  return v5;
}

- (id)_overallProgress
{
  overallProgress = self->_overallProgress;
  if (!overallProgress)
  {
    v4 = objc_alloc_init(SSOperationProgress);
    v5 = self->_overallProgress;
    self->_overallProgress = v4;

    [(SSOperationProgress *)self->_overallProgress setMaxValue:1000000];
    overallProgress = self->_overallProgress;
  }

  return overallProgress;
}

@end