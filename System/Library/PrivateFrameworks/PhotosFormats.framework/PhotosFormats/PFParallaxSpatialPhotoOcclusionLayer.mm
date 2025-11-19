@interface PFParallaxSpatialPhotoOcclusionLayer
- (BOOL)saveToURL:(id)a3 error:(id *)a4;
- (CGSize)pixelSize;
- (PFParallaxSpatialPhotoOcclusionLayer)initWithFrame:(CGRect)a3 zPosition:(double)a4 identifier:(id)a5;
- (id)fileExtension;
- (id)layerByUpdatingFrame:(CGRect)a3;
@end

@implementation PFParallaxSpatialPhotoOcclusionLayer

- (id)fileExtension
{
  v2 = objc_opt_class();

  return [v2 fileExtension];
}

- (BOOL)saveToURL:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [@"Spatial Photo Occlusion Layer" dataUsingEncoding:4];
  v6 = [v5 writeToURL:v4 atomically:1];

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

- (id)layerByUpdatingFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [PFParallaxSpatialPhotoOcclusionLayer alloc];
  [(PFParallaxLayer *)self zPosition];
  v10 = v9;
  v11 = [(PFParallaxLayer *)self identifier];
  v12 = [(PFParallaxSpatialPhotoOcclusionLayer *)v8 initWithFrame:v11 zPosition:x identifier:y, width, height, v10];

  return v12;
}

- (PFParallaxSpatialPhotoOcclusionLayer)initWithFrame:(CGRect)a3 zPosition:(double)a4 identifier:(id)a5
{
  v6.receiver = self;
  v6.super_class = PFParallaxSpatialPhotoOcclusionLayer;
  return [(PFParallaxLayer *)&v6 initWithFrame:a5 zPosition:a3.origin.x identifier:a3.origin.y, a3.size.width, a3.size.height, a4];
}

@end