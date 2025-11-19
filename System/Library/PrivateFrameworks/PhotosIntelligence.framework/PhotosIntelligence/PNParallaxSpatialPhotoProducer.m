@interface PNParallaxSpatialPhotoProducer
- (BOOL)isEligibleForSpatialGenerationWithPixelSize:(CGSize)a3;
- (PFParallaxSpatialPhotoProducerModelDownloadHandler)modelDownloadHandler;
- (double)focalLengthPxForFocalLengthIn35mm:(double)a3 pixelSize:(CGSize)a4;
- (double)zoomInPercentage;
- (id)_spatialPhotoSceneFor:(__CVBuffer *)a3 cacheKey:(id)a4 focalLengthPx:(double)a5 portraitNormalizedTimeRect:(CGRect)a6 landscapeNormalizedTimeRect:(CGRect)a7 isInteractive:(BOOL)a8 error:(id *)a9 progressHandler:(id)a10 isCanceledHandler:(id)a11;
- (id)createSpatialPhotoSceneAnalyzer;
- (id)generateSpatialPhotoSceneForPixelBuffer:(__CVBuffer *)a3 cacheKey:(id)a4 focalLengthPx:(double)a5 portraitNormalizedTimeRect:(CGRect)a6 landscapeNormalizedTimeRect:(CGRect)a7 isInteractive:(BOOL)a8 progressHandler:(id)a9 isCanceledHandler:(id)a10 error:(id *)a11;
- (id)reportDownloadDidStart;
- (void)downloadModelIfNeededWithCompletionHandler:(id)a3;
- (void)enableBackgroundDownload;
- (void)reportDownloadDidEnd:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)reportDownloadProgress:(id)a3 :(double)a4;
@end

@implementation PNParallaxSpatialPhotoProducer

- (double)zoomInPercentage
{
  v2 = self;
  PNParallaxSpatialPhotoProducer.zoomInPercentage.getter();
  v4 = v3;

  return v4;
}

- (double)focalLengthPxForFocalLengthIn35mm:(double)a3 pixelSize:(CGSize)a4
{
  v4 = self;
  PNParallaxSpatialPhotoProducer.focalLengthPx(forFocalLengthIn35mm:pixelSize:)();
  v6 = v5;

  return v6;
}

- (void)enableBackgroundDownload
{
  v2 = self;
  PNParallaxSpatialPhotoProducer.enableBackgroundDownload()();
}

- (BOOL)isEligibleForSpatialGenerationWithPixelSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = PNParallaxSpatialPhotoProducer.isEligibleForSpatialGeneration(withPixelSize:)(__PAIR128__(*&height, *&width));

  return v6;
}

- (id)generateSpatialPhotoSceneForPixelBuffer:(__CVBuffer *)a3 cacheKey:(id)a4 focalLengthPx:(double)a5 portraitNormalizedTimeRect:(CGRect)a6 landscapeNormalizedTimeRect:(CGRect)a7 isInteractive:(BOOL)a8 progressHandler:(id)a9 isCanceledHandler:(id)a10 error:(id *)a11
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v19 = _Block_copy(a9);
  v20 = _Block_copy(a10);
  v21 = sub_1C755068C();
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  v26 = a3;
  v27 = self;
  v28 = PNParallaxSpatialPhotoProducer.generateSpatialPhotoScene(for:cacheKey:focalLengthPx:portraitNormalizedTime:landscapeNormalizedTime:isInteractive:progressHandler:isCanceledHandler:)(v26, v21, v23, a8, sub_1C6FF5690, v24, sub_1C6FF5678, v25, a5, x, y, width, height, a7.origin.x, a7.origin.y, a7.size.width, *&a7.size.height);

  return v28;
}

- (id)createSpatialPhotoSceneAnalyzer
{
  v2 = self;
  v3 = PNParallaxSpatialPhotoProducer.createSpatialPhotoSceneAnalyzer()();

  return v3;
}

- (id)_spatialPhotoSceneFor:(__CVBuffer *)a3 cacheKey:(id)a4 focalLengthPx:(double)a5 portraitNormalizedTimeRect:(CGRect)a6 landscapeNormalizedTimeRect:(CGRect)a7 isInteractive:(BOOL)a8 error:(id *)a9 progressHandler:(id)a10 isCanceledHandler:(id)a11
{
  v12 = a8;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v19 = _Block_copy(a10);
  v20 = _Block_copy(a11);
  v21 = sub_1C755068C();
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  v26 = a3;
  v27 = self;
  v28 = sub_1C6FEC98C(v26, v21, v23, v12, sub_1C6FF5014, v24, sub_1C6FF5024, v25, a5, x, y, width, height, a7.origin.x, a7.origin.y, a7.size.width, *&a7.size.height);

  return v28;
}

- (void)downloadModelIfNeededWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1C73560C0(&unk_1C75600A8, v5);
}

- (PFParallaxSpatialPhotoProducerModelDownloadHandler)modelDownloadHandler
{
  v2 = self;
  v3 = sub_1C6FF26E8();

  return v3;
}

- (id)reportDownloadDidStart
{
  v2 = self;
  v3 = sub_1C6FF2714();

  return v3;
}

- (void)reportDownloadProgress:(id)a3 :(double)a4
{
  v6 = a3;
  v7 = self;
  sub_1C6FF2B08(v6, a4);
}

- (void)reportDownloadDidEnd:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_1C6FF2EB4(v8, a4, a5);
}

@end