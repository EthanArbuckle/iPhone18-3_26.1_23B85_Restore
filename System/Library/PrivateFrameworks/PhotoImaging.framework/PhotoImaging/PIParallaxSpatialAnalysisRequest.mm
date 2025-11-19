@interface PIParallaxSpatialAnalysisRequest
- (PIParallaxSpatialAnalysisRequest)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newRenderJob;
@end

@implementation PIParallaxSpatialAnalysisRequest

- (id)newRenderJob
{
  v3 = [_PIParallaxSpatialAnalysisJob alloc];

  return [(_PIParallaxSpatialAnalysisJob *)v3 initWithRequest:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = PIParallaxSpatialAnalysisRequest;
  v4 = [(NURenderRequest *)&v9 copyWithZone:a3];
  if (v4)
  {
    v5 = [(PIParallaxSpatialAnalysisRequest *)self layout];
    [v4 setLayout:v5];

    [v4 setLayoutOrientation:{-[PIParallaxSpatialAnalysisRequest layoutOrientation](self, "layoutOrientation")}];
    [v4 setIsInteractive:{-[PIParallaxSpatialAnalysisRequest isInteractive](self, "isInteractive")}];
    v6 = [(PIParallaxSpatialAnalysisRequest *)self spatialPhotoLayer];
    [v4 setSpatialPhotoLayer:v6];

    v7 = [(PIParallaxSpatialAnalysisRequest *)self sceneAnalyzer];
    [v4 setSceneAnalyzer:v7];
  }

  return v4;
}

- (PIParallaxSpatialAnalysisRequest)init
{
  v3 = +[PIPhotoEditHelper newComposition];
  v4 = MEMORY[0x1E695F658];
  v5 = [MEMORY[0x1E695F610] whiteColor];
  v6 = [v4 imageWithColor:v5];
  v7 = [PIPhotoEditHelper imageSourceWithCIImage:v6 orientation:1];

  [v3 setObject:v7 forKeyedSubscript:@"source"];
  [v3 setMediaType:1];
  v13.receiver = self;
  v13.super_class = PIParallaxSpatialAnalysisRequest;
  v8 = [(NURenderRequest *)&v13 initWithComposition:v3];
  if (v8)
  {
    v9 = PIParallaxDefaultSpatialPhotoProducer();
    v10 = [v9 createSpatialPhotoSceneAnalyzer];
    sceneAnalyzer = v8->_sceneAnalyzer;
    v8->_sceneAnalyzer = v10;
  }

  return v8;
}

@end