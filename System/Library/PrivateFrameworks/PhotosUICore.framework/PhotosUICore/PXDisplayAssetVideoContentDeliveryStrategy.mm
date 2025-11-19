@interface PXDisplayAssetVideoContentDeliveryStrategy
+ (id)defaultStreamingMediumQualityStrategy;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)segmentTimeRange;
- (CGSize)targetSize;
- (NSString)identifier;
- (PXDisplayAssetVideoContentDeliveryStrategy)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setSegmentTimeRange:(id *)a3;
@end

@implementation PXDisplayAssetVideoContentDeliveryStrategy

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setSegmentTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *&self->_segmentTimeRange.duration.timescale = *&a3->var1.var1;
  *&self->_segmentTimeRange.start.epoch = v4;
  *&self->_segmentTimeRange.start.value = v3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)segmentTimeRange
{
  v3 = *&self[1].var0.var1;
  *&retstr->var0.var0 = *&self->var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var0;
  return self;
}

- (id)description
{
  v19.receiver = self;
  v19.super_class = PXDisplayAssetVideoContentDeliveryStrategy;
  v3 = [(PXDisplayAssetVideoContentDeliveryStrategy *)&v19 description];
  v4 = [(PXDisplayAssetVideoContentDeliveryStrategy *)self quality];
  if (v4 >= 6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *PXVideoContentDeliveryQualityDescription(PXVideoContentDeliveryQuality)"];
    [v16 handleFailureInFunction:v17 file:@"PXDisplayAssetVideoContentProvider.m" lineNumber:702 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v5 = off_1E772C750[v4];
  [(PXDisplayAssetVideoContentDeliveryStrategy *)self segmentTimeRange];
  v6 = PXCMTimeRangeDescription(v18);
  if ([(PXDisplayAssetVideoContentDeliveryStrategy *)self isStreamingAllowed])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v7;
  if ([(PXDisplayAssetVideoContentDeliveryStrategy *)self isNetworkAccessAllowed])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  if ([(PXDisplayAssetVideoContentDeliveryStrategy *)self isAudioAllowed])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = v11;
  [(PXDisplayAssetVideoContentDeliveryStrategy *)self targetSize];
  v13 = NSStringFromSize(v21);
  v14 = [v3 stringByAppendingFormat:@"quality: %@, segment:%@, streaming:%@, network:%@, audio:%@, targetSize:%@", v5, v6, v8, v10, v12, v13];

  return v14;
}

- (NSString)identifier
{
  [(PXDisplayAssetVideoContentDeliveryStrategy *)self segmentTimeRange];
  if ((v11 & 1) == 0 || ([(PXDisplayAssetVideoContentDeliveryStrategy *)self segmentTimeRange], (v10 & 1) == 0) || ([(PXDisplayAssetVideoContentDeliveryStrategy *)self segmentTimeRange], v9) || ([(PXDisplayAssetVideoContentDeliveryStrategy *)self segmentTimeRange], v8 < 0))
  {
    v3 = @"All";
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    [(PXDisplayAssetVideoContentDeliveryStrategy *)self segmentTimeRange];
    v6 = PXCMTimeRangeDescription(v7);
    v3 = [v5 initWithFormat:@"%@", v6];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(PXDisplayAssetVideoContentDeliveryStrategy *)self segmentTimeRange];
  v6[0] = v6[3];
  v6[1] = v6[4];
  v6[2] = v6[5];
  [v4 setSegmentTimeRange:v6];
  [v4 setIsStreamingAllowed:{-[PXDisplayAssetVideoContentDeliveryStrategy isStreamingAllowed](self, "isStreamingAllowed")}];
  [v4 setIsNetworkAccessAllowed:{-[PXDisplayAssetVideoContentDeliveryStrategy isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
  [v4 setQuality:{-[PXDisplayAssetVideoContentDeliveryStrategy quality](self, "quality")}];
  [v4 setIsAudioAllowed:{-[PXDisplayAssetVideoContentDeliveryStrategy isAudioAllowed](self, "isAudioAllowed")}];
  [(PXDisplayAssetVideoContentDeliveryStrategy *)self targetSize];
  [v4 setTargetSize:?];
  return v4;
}

- (PXDisplayAssetVideoContentDeliveryStrategy)init
{
  v5.receiver = self;
  v5.super_class = PXDisplayAssetVideoContentDeliveryStrategy;
  result = [(PXDisplayAssetVideoContentDeliveryStrategy *)&v5 init];
  if (result)
  {
    v3 = MEMORY[0x1E6960C98];
    v4 = *(MEMORY[0x1E6960C98] + 16);
    *&result->_segmentTimeRange.start.value = *MEMORY[0x1E6960C98];
    *&result->_segmentTimeRange.start.epoch = v4;
    *&result->_segmentTimeRange.duration.timescale = *(v3 + 32);
    *&result->_isNetworkAccessAllowed = 257;
  }

  return result;
}

+ (id)defaultStreamingMediumQualityStrategy
{
  v2 = objc_alloc_init(PXDisplayAssetVideoContentDeliveryStrategy);
  [(PXDisplayAssetVideoContentDeliveryStrategy *)v2 setIsStreamingAllowed:1];
  [(PXDisplayAssetVideoContentDeliveryStrategy *)v2 setQuality:3];

  return v2;
}

@end