@interface PXVideoSessionManagerDisplayAssetOptions
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)livePhotoLoopTimeRange;
- (NSArray)strategies;
- (PXVideoSessionManagerDisplayAssetOptions)init;
- (void)addContentDeliveryStrategyWithDeliveryQuality:(int64_t)quality segmentTimeRange:(id *)range streamingAllowed:(BOOL)allowed;
- (void)addContentDeliveryStrategyWithDeliveryQuality:(int64_t)quality segmentTimeRange:(id *)range streamingAllowed:(BOOL)allowed networkAccessAllowed:(BOOL)accessAllowed;
- (void)setLivePhotoLoopTimeRange:(id *)range;
@end

@implementation PXVideoSessionManagerDisplayAssetOptions

- (void)setLivePhotoLoopTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var1.var1;
  *&self->_livePhotoLoopTimeRange.start.epoch = *&range->var0.var3;
  *&self->_livePhotoLoopTimeRange.duration.timescale = v4;
  *&self->_livePhotoLoopTimeRange.start.value = v3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)livePhotoLoopTimeRange
{
  v3 = *&self[1].var0.var0;
  *&retstr->var0.var0 = *&self->var1.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var3;
  return self;
}

- (void)addContentDeliveryStrategyWithDeliveryQuality:(int64_t)quality segmentTimeRange:(id *)range streamingAllowed:(BOOL)allowed networkAccessAllowed:(BOOL)accessAllowed
{
  accessAllowedCopy = accessAllowed;
  allowedCopy = allowed;
  v11 = objc_alloc_init(PXDisplayAssetVideoContentDeliveryStrategy);
  [(PXDisplayAssetVideoContentDeliveryStrategy *)v11 setQuality:quality];
  v12 = *&range->var0.var3;
  v14[0] = *&range->var0.var0;
  v14[1] = v12;
  v14[2] = *&range->var1.var1;
  [(PXDisplayAssetVideoContentDeliveryStrategy *)v11 setSegmentTimeRange:v14];
  [(PXDisplayAssetVideoContentDeliveryStrategy *)v11 setIsStreamingAllowed:allowedCopy];
  [(PXDisplayAssetVideoContentDeliveryStrategy *)v11 setIsNetworkAccessAllowed:accessAllowedCopy];
  [(PXDisplayAssetVideoContentDeliveryStrategy *)v11 setIsAudioAllowed:[(PXVideoSessionManagerDisplayAssetOptions *)self isAudioAllowed]];
  strategiesStore = [(PXVideoSessionManagerDisplayAssetOptions *)self strategiesStore];
  [strategiesStore addObject:v11];
}

- (void)addContentDeliveryStrategyWithDeliveryQuality:(int64_t)quality segmentTimeRange:(id *)range streamingAllowed:(BOOL)allowed
{
  v5 = *&range->var0.var3;
  v6[0] = *&range->var0.var0;
  v6[1] = v5;
  v6[2] = *&range->var1.var1;
  [(PXVideoSessionManagerDisplayAssetOptions *)self addContentDeliveryStrategyWithDeliveryQuality:quality segmentTimeRange:v6 streamingAllowed:allowed networkAccessAllowed:1];
}

- (NSArray)strategies
{
  strategiesStore = [(PXVideoSessionManagerDisplayAssetOptions *)self strategiesStore];
  v3 = [strategiesStore copy];

  return v3;
}

- (PXVideoSessionManagerDisplayAssetOptions)init
{
  v7.receiver = self;
  v7.super_class = PXVideoSessionManagerDisplayAssetOptions;
  v2 = [(PXVideoSessionManagerDisplayAssetOptions *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_isAudioAllowed = 1;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    strategiesStore = v3->_strategiesStore;
    v3->_strategiesStore = v4;
  }

  return v3;
}

@end