@interface PFParallaxSpatialPhotoOcclusionLayer
- (BOOL)saveToURL:(id)l error:(id *)error;
- (CGSize)pixelSize;
- (PFParallaxSpatialPhotoOcclusionLayer)initWithFrame:(CGRect)frame zPosition:(double)position identifier:(id)identifier;
- (id)fileExtension;
- (id)layerByUpdatingFrame:(CGRect)frame;
@end

@implementation PFParallaxSpatialPhotoOcclusionLayer

- (id)fileExtension
{
  v2 = objc_opt_class();

  return [v2 fileExtension];
}

- (BOOL)saveToURL:(id)l error:(id *)error
{
  lCopy = l;
  v5 = [@"Spatial Photo Occlusion Layer" dataUsingEncoding:4];
  v6 = [v5 writeToURL:lCopy atomically:1];

  return v6;
}

- (CGSize)pixelSize
{
  [(PFParallaxLayer *)self frame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (id)layerByUpdatingFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [PFParallaxSpatialPhotoOcclusionLayer alloc];
  [(PFParallaxLayer *)self zPosition];
  v10 = v9;
  identifier = [(PFParallaxLayer *)self identifier];
  v12 = [(PFParallaxSpatialPhotoOcclusionLayer *)v8 initWithFrame:identifier zPosition:x identifier:y, width, height, v10];

  return v12;
}

- (PFParallaxSpatialPhotoOcclusionLayer)initWithFrame:(CGRect)frame zPosition:(double)position identifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = PFParallaxSpatialPhotoOcclusionLayer;
  return [(PFParallaxLayer *)&v6 initWithFrame:identifier zPosition:frame.origin.x identifier:frame.origin.y, frame.size.width, frame.size.height, position];
}

@end