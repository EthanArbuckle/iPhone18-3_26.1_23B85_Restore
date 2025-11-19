@interface PipelineDownloadTaskState
- (BOOL)isEqual:(id)a3;
- (PipelineDownloadTaskState)initWithPrepareDownloadResponse:(id)a3;
- (id)_overallProgress;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setFinishProgress:(double)a3;
- (void)setTransferProgress:(double)a3;
- (void)setTransferProgressWithBytesWritten:(int64_t)a3 totalBytesExpected:(int64_t)a4;
@end

@implementation PipelineDownloadTaskState

- (PipelineDownloadTaskState)initWithPrepareDownloadResponse:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PipelineDownloadTaskState;
  v5 = [(PipelineDownloadTaskState *)&v10 init];
  if (v5)
  {
    -[PipelineDownloadTaskState setAutomaticType:](v5, "setAutomaticType:", [v4 automaticType]);
    v6 = [v4 bundleIdentifier];
    [(PipelineDownloadTaskState *)v5 setBundleIdentifier:v6];

    v7 = [v4 kind];
    [(PipelineDownloadTaskState *)v5 setKind:v7];

    v8 = [v4 downloadHandle];
    [(PipelineDownloadTaskState *)v5 setDownloadHandle:v8];

    -[PipelineDownloadTaskState setDownloadIdentifier:](v5, "setDownloadIdentifier:", [v4 downloadIdentifier]);
    -[PipelineDownloadTaskState setLegacyClient:](v5, "setLegacyClient:", [v4 isLegacyClient]);
    -[PipelineDownloadTaskState setMediaAssetIdentifier:](v5, "setMediaAssetIdentifier:", [v4 mediaAssetIdentifier]);
    -[PipelineDownloadTaskState setRequiresDownloadHandler:](v5, "setRequiresDownloadHandler:", [v4 requiresDownloadHandler]);
    [v4 transferProgressFraction];
    [(PipelineDownloadTaskState *)v5 setTransferProgressFraction:?];
  }

  return v5;
}

- (void)setFinishProgress:(double)a3
{
  v3 = self->_transferProgressFraction + (1.0 - self->_transferProgressFraction) * a3;
  v4 = [(PipelineDownloadTaskState *)self _overallProgress];
  [v4 setCurrentValue:{(v3 * objc_msgSend(v4, "maxValue"))}];
}

- (void)setTransferProgress:(double)a3
{
  v3 = self->_transferProgressFraction * a3;
  v4 = [(PipelineDownloadTaskState *)self _overallProgress];
  [v4 setCurrentValue:{(v3 * objc_msgSend(v4, "maxValue"))}];
}

- (void)setTransferProgressWithBytesWritten:(int64_t)a3 totalBytesExpected:(int64_t)a4
{
  self->_transferBytesExpected = a4;
  self->_transferBytesWritten = a3;
  if (a4 >= 1)
  {
    [(PipelineDownloadTaskState *)self setTransferProgress:a3 / a4];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(PipelineDownloadTaskState *)self downloadIdentifier];
    v6 = v7 == [v4 downloadIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_automaticType;
  v6 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(DownloadHandle *)self->_downloadHandle copyWithZone:a3];
  v9 = v5[14];
  v5[14] = v8;

  v5[2] = self->_downloadIdentifier;
  v10 = [(NSString *)self->_kind copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v5[6] = self->_mediaAssetIdentifier;
  v12 = [(SSOperationProgress *)self->_overallProgress copyWithZone:a3];
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