@interface PNParallaxSpatialPhotoProducer
- (BOOL)isEligibleForSpatialGenerationWithPixelSize:(CGSize)size;
- (PFParallaxSpatialPhotoProducerModelDownloadHandler)modelDownloadHandler;
- (double)focalLengthPxForFocalLengthIn35mm:(double)in35mm pixelSize:(CGSize)size;
- (double)zoomInPercentage;
- (id)_spatialPhotoSceneFor:(__CVBuffer *)for cacheKey:(id)key focalLengthPx:(double)px portraitNormalizedTimeRect:(CGRect)rect landscapeNormalizedTimeRect:(CGRect)timeRect isInteractive:(BOOL)interactive error:(id *)error progressHandler:(id)self0 isCanceledHandler:(id)self1;
- (id)createSpatialPhotoSceneAnalyzer;
- (id)generateSpatialPhotoSceneForPixelBuffer:(__CVBuffer *)buffer cacheKey:(id)key focalLengthPx:(double)px portraitNormalizedTimeRect:(CGRect)rect landscapeNormalizedTimeRect:(CGRect)timeRect isInteractive:(BOOL)interactive progressHandler:(id)handler isCanceledHandler:(id)self0 error:(id *)self1;
- (id)reportDownloadDidStart;
- (void)downloadModelIfNeededWithCompletionHandler:(id)handler;
- (void)enableBackgroundDownload;
- (void)reportDownloadDidEnd:(id)end success:(BOOL)success error:(id)error;
- (void)reportDownloadProgress:(id)progress :(double)a4;
@end

@implementation PNParallaxSpatialPhotoProducer

- (double)zoomInPercentage
{
  selfCopy = self;
  PNParallaxSpatialPhotoProducer.zoomInPercentage.getter();
  v4 = v3;

  return v4;
}

- (double)focalLengthPxForFocalLengthIn35mm:(double)in35mm pixelSize:(CGSize)size
{
  selfCopy = self;
  PNParallaxSpatialPhotoProducer.focalLengthPx(forFocalLengthIn35mm:pixelSize:)();
  v6 = v5;

  return v6;
}

- (void)enableBackgroundDownload
{
  selfCopy = self;
  PNParallaxSpatialPhotoProducer.enableBackgroundDownload()();
}

- (BOOL)isEligibleForSpatialGenerationWithPixelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v6 = PNParallaxSpatialPhotoProducer.isEligibleForSpatialGeneration(withPixelSize:)(__PAIR128__(*&height, *&width));

  return v6;
}

- (id)generateSpatialPhotoSceneForPixelBuffer:(__CVBuffer *)buffer cacheKey:(id)key focalLengthPx:(double)px portraitNormalizedTimeRect:(CGRect)rect landscapeNormalizedTimeRect:(CGRect)timeRect isInteractive:(BOOL)interactive progressHandler:(id)handler isCanceledHandler:(id)self0 error:(id *)self1
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v19 = _Block_copy(handler);
  v20 = _Block_copy(canceledHandler);
  v21 = sub_1C755068C();
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  bufferCopy = buffer;
  selfCopy = self;
  v28 = PNParallaxSpatialPhotoProducer.generateSpatialPhotoScene(for:cacheKey:focalLengthPx:portraitNormalizedTime:landscapeNormalizedTime:isInteractive:progressHandler:isCanceledHandler:)(bufferCopy, v21, v23, interactive, sub_1C6FF5690, v24, sub_1C6FF5678, v25, px, x, y, width, height, timeRect.origin.x, timeRect.origin.y, timeRect.size.width, *&timeRect.size.height);

  return v28;
}

- (id)createSpatialPhotoSceneAnalyzer
{
  selfCopy = self;
  v3 = PNParallaxSpatialPhotoProducer.createSpatialPhotoSceneAnalyzer()();

  return v3;
}

- (id)_spatialPhotoSceneFor:(__CVBuffer *)for cacheKey:(id)key focalLengthPx:(double)px portraitNormalizedTimeRect:(CGRect)rect landscapeNormalizedTimeRect:(CGRect)timeRect isInteractive:(BOOL)interactive error:(id *)error progressHandler:(id)self0 isCanceledHandler:(id)self1
{
  interactiveCopy = interactive;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v19 = _Block_copy(handler);
  v20 = _Block_copy(canceledHandler);
  v21 = sub_1C755068C();
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  forCopy = for;
  selfCopy = self;
  v28 = sub_1C6FEC98C(forCopy, v21, v23, interactiveCopy, sub_1C6FF5014, v24, sub_1C6FF5024, v25, px, x, y, width, height, timeRect.origin.x, timeRect.origin.y, timeRect.size.width, *&timeRect.size.height);

  return v28;
}

- (void)downloadModelIfNeededWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1C73560C0(&unk_1C75600A8, v5);
}

- (PFParallaxSpatialPhotoProducerModelDownloadHandler)modelDownloadHandler
{
  selfCopy = self;
  v3 = sub_1C6FF26E8();

  return v3;
}

- (id)reportDownloadDidStart
{
  selfCopy = self;
  v3 = sub_1C6FF2714();

  return v3;
}

- (void)reportDownloadProgress:(id)progress :(double)a4
{
  progressCopy = progress;
  selfCopy = self;
  sub_1C6FF2B08(progressCopy, a4);
}

- (void)reportDownloadDidEnd:(id)end success:(BOOL)success error:(id)error
{
  endCopy = end;
  selfCopy = self;
  errorCopy = error;
  sub_1C6FF2EB4(endCopy, success, error);
}

@end