@interface PXVideoSessionManagerDisplayAssetOptions
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)livePhotoLoopTimeRange;
- (NSArray)strategies;
- (PXVideoSessionManagerDisplayAssetOptions)init;
- (void)addContentDeliveryStrategyWithDeliveryQuality:(int64_t)a3 segmentTimeRange:(id *)a4 streamingAllowed:(BOOL)a5;
- (void)addContentDeliveryStrategyWithDeliveryQuality:(int64_t)a3 segmentTimeRange:(id *)a4 streamingAllowed:(BOOL)a5 networkAccessAllowed:(BOOL)a6;
- (void)setLivePhotoLoopTimeRange:(id *)a3;
@end

@implementation PXVideoSessionManagerDisplayAssetOptions

- (void)setLivePhotoLoopTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var1.var1;
  *&self->_livePhotoLoopTimeRange.start.epoch = *&a3->var0.var3;
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

- (void)addContentDeliveryStrategyWithDeliveryQuality:(int64_t)a3 segmentTimeRange:(id *)a4 streamingAllowed:(BOOL)a5 networkAccessAllowed:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = objc_alloc_init(PXDisplayAssetVideoContentDeliveryStrategy);
  [(PXDisplayAssetVideoContentDeliveryStrategy *)v11 setQuality:a3];
  v12 = *&a4->var0.var3;
  v14[0] = *&a4->var0.var0;
  v14[1] = v12;
  v14[2] = *&a4->var1.var1;
  [(PXDisplayAssetVideoContentDeliveryStrategy *)v11 setSegmentTimeRange:v14];
  [(PXDisplayAssetVideoContentDeliveryStrategy *)v11 setIsStreamingAllowed:v7];
  [(PXDisplayAssetVideoContentDeliveryStrategy *)v11 setIsNetworkAccessAllowed:v6];
  [(PXDisplayAssetVideoContentDeliveryStrategy *)v11 setIsAudioAllowed:[(PXVideoSessionManagerDisplayAssetOptions *)self isAudioAllowed]];
  v13 = [(PXVideoSessionManagerDisplayAssetOptions *)self strategiesStore];
  [v13 addObject:v11];
}

- (void)addContentDeliveryStrategyWithDeliveryQuality:(int64_t)a3 segmentTimeRange:(id *)a4 streamingAllowed:(BOOL)a5
{
  v5 = *&a4->var0.var3;
  v6[0] = *&a4->var0.var0;
  v6[1] = v5;
  v6[2] = *&a4->var1.var1;
  [(PXVideoSessionManagerDisplayAssetOptions *)self addContentDeliveryStrategyWithDeliveryQuality:a3 segmentTimeRange:v6 streamingAllowed:a5 networkAccessAllowed:1];
}

- (NSArray)strategies
{
  v2 = [(PXVideoSessionManagerDisplayAssetOptions *)self strategiesStore];
  v3 = [v2 copy];

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