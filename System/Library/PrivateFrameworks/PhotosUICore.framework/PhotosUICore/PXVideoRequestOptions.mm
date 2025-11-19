@interface PXVideoRequestOptions
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- (CGSize)targetSize;
- (PXVideoRequestOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)photoKitRequestOptions;
- (void)setRestrictToStreamable:(BOOL)a3;
- (void)setTimeRange:(id *)a3;
@end

@implementation PXVideoRequestOptions

- (void)setTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *&self->_timeRange.duration.timescale = *&a3->var1.var1;
  *&self->_timeRange.start.epoch = v4;
  *&self->_timeRange.start.value = v3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange
{
  v3 = *&self[2].var0.var1;
  *&retstr->var0.var0 = *&self[1].var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var1.var0;
  return self;
}

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setRestrictToStreamable:(BOOL)a3
{
  self->_restrictToStreamable = a3;
  if (a3)
  {
    [(PXVideoRequestOptions *)self setStreamingAllowed:1];

    [(PXVideoRequestOptions *)self setNetworkAccessAllowed:1];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setAllowMediumHighQuality:self->_allowMediumHighQuality];
  [v4 setDeliveryMode:self->_deliveryMode];
  [v4 setDownloadIntent:self->_downloadIntent];
  [v4 setDownloadPriority:self->_downloadPriority];
  [v4 setLiveRenderVideoIfNeeded:self->_liveRenderVideoIfNeeded];
  [v4 setNetworkAccessAllowed:self->_networkAccessAllowed];
  [v4 setProgressHandler:self->_progressHandler];
  [v4 setRestrictToPlayableOnCurrentDevice:self->_restrictToPlayableOnCurrentDevice];
  [v4 setRestrictToStreamable:self->_restrictToStreamable];
  [v4 setRestrictToEncryptedStream:self->_restrictToEncryptedStream];
  [v4 setStreamingAllowed:self->_streamingAllowed];
  [v4 setResultHandlerQueue:self->_resultHandlerQueue];
  [v4 setStreamingVideoIntent:self->_streamingVideoIntent];
  [v4 setTargetSize:{self->_targetSize.width, self->_targetSize.height}];
  v5 = *&self->_timeRange.start.epoch;
  v7[0] = *&self->_timeRange.start.value;
  v7[1] = v5;
  v7[2] = *&self->_timeRange.duration.timescale;
  [v4 setTimeRange:v7];
  [v4 setVersion:self->_version];
  [v4 setIncludeTimeRangeMapper:self->_includeTimeRangeMapper];
  return v4;
}

- (PXVideoRequestOptions)init
{
  v7.receiver = self;
  v7.super_class = PXVideoRequestOptions;
  v2 = [(PXVideoRequestOptions *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2[9] = 0;
    *(v2 + 6) = 0;
    *(v2 + 23) = 0;
    *(v2 + 15) = 0;
    v2[31] = 0;
    v4 = *(v2 + 5);
    *(v2 + 5) = 0;

    progressHandler = v3->_progressHandler;
    v3->_progressHandler = 0;

    *&v3->_restrictToPlayableOnCurrentDevice = 1;
    v3->_restrictToStreamable = 0;
  }

  return v3;
}

- (id)photoKitRequestOptions
{
  v3 = objc_alloc_init(MEMORY[0x1E6978B18]);
  [v3 setNetworkAccessAllowed:{-[PXVideoRequestOptions isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
  [v3 setVersion:{-[PXVideoRequestOptions version](self, "version")}];
  [v3 setDeliveryMode:{-[PXVideoRequestOptions deliveryMode](self, "deliveryMode")}];
  v4 = [(PXVideoRequestOptions *)self progressHandler];
  [v3 setProgressHandler:v4];

  [v3 setVideoComplementAllowed:1];
  [(PXVideoRequestOptions *)self targetSize];
  [v3 setTargetSize:?];
  [v3 setRestrictToPlayableOnCurrentDevice:{-[PXVideoRequestOptions restrictToPlayableOnCurrentDevice](self, "restrictToPlayableOnCurrentDevice")}];
  [v3 setRestrictToStreamable:{-[PXVideoRequestOptions restrictToStreamable](self, "restrictToStreamable")}];
  [v3 setRestrictToEncryptedStream:{-[PXVideoRequestOptions restrictToEncryptedStream](self, "restrictToEncryptedStream")}];
  [v3 setStreamingAllowed:{-[PXVideoRequestOptions isStreamingAllowed](self, "isStreamingAllowed")}];
  v5 = [(PXVideoRequestOptions *)self resultHandlerQueue];
  [v3 setResultHandlerQueue:v5];

  [v3 setStreamingVideoIntent:{-[PXVideoRequestOptions streamingVideoIntent](self, "streamingVideoIntent")}];
  [v3 setDownloadIntent:{-[PXVideoRequestOptions downloadIntent](self, "downloadIntent")}];
  [v3 setDownloadPriority:{-[PXVideoRequestOptions downloadPriority](self, "downloadPriority")}];
  [(PXVideoRequestOptions *)self timeRange];
  v7[0] = v7[3];
  v7[1] = v7[4];
  v7[2] = v7[5];
  [v3 setTimeRange:v7];
  [v3 setAllowMediumHighQuality:{-[PXVideoRequestOptions isMediumHighQualityAllowed](self, "isMediumHighQualityAllowed")}];
  [v3 setLiveRenderVideoIfNeeded:{-[PXVideoRequestOptions liveRenderVideoIfNeeded](self, "liveRenderVideoIfNeeded")}];
  [v3 setIncludeTimeRangeMapper:{-[PXVideoRequestOptions includeTimeRangeMapper](self, "includeTimeRangeMapper")}];

  return v3;
}

@end