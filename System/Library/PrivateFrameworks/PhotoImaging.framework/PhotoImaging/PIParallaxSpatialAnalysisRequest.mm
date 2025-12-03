@interface PIParallaxSpatialAnalysisRequest
- (PIParallaxSpatialAnalysisRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
@end

@implementation PIParallaxSpatialAnalysisRequest

- (id)newRenderJob
{
  v3 = [_PIParallaxSpatialAnalysisJob alloc];

  return [(_PIParallaxSpatialAnalysisJob *)v3 initWithRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = PIParallaxSpatialAnalysisRequest;
  v4 = [(NURenderRequest *)&v9 copyWithZone:zone];
  if (v4)
  {
    layout = [(PIParallaxSpatialAnalysisRequest *)self layout];
    [v4 setLayout:layout];

    [v4 setLayoutOrientation:{-[PIParallaxSpatialAnalysisRequest layoutOrientation](self, "layoutOrientation")}];
    [v4 setIsInteractive:{-[PIParallaxSpatialAnalysisRequest isInteractive](self, "isInteractive")}];
    spatialPhotoLayer = [(PIParallaxSpatialAnalysisRequest *)self spatialPhotoLayer];
    [v4 setSpatialPhotoLayer:spatialPhotoLayer];

    sceneAnalyzer = [(PIParallaxSpatialAnalysisRequest *)self sceneAnalyzer];
    [v4 setSceneAnalyzer:sceneAnalyzer];
  }

  return v4;
}

- (PIParallaxSpatialAnalysisRequest)init
{
  v3 = +[PIPhotoEditHelper newComposition];
  v4 = MEMORY[0x1E695F658];
  whiteColor = [MEMORY[0x1E695F610] whiteColor];
  v6 = [v4 imageWithColor:whiteColor];
  v7 = [PIPhotoEditHelper imageSourceWithCIImage:v6 orientation:1];

  [v3 setObject:v7 forKeyedSubscript:@"source"];
  [v3 setMediaType:1];
  v13.receiver = self;
  v13.super_class = PIParallaxSpatialAnalysisRequest;
  v8 = [(NURenderRequest *)&v13 initWithComposition:v3];
  if (v8)
  {
    v9 = PIParallaxDefaultSpatialPhotoProducer();
    createSpatialPhotoSceneAnalyzer = [v9 createSpatialPhotoSceneAnalyzer];
    sceneAnalyzer = v8->_sceneAnalyzer;
    v8->_sceneAnalyzer = createSpatialPhotoSceneAnalyzer;
  }

  return v8;
}

@end