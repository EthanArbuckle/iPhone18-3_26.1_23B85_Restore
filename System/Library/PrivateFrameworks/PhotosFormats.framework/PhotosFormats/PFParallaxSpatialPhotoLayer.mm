@interface PFParallaxSpatialPhotoLayer
- (BOOL)saveToURL:(id)a3 error:(id *)a4;
- (CGSize)pixelSize;
- (NSData)dataRepresentation;
- (PFParallaxSpatialPhotoLayer)initWithSceneData:(id)a3 scene:(id)a4 frame:(CGRect)a5 zPosition:(double)a6 identifier:(id)a7;
- (id)fileExtension;
- (id)layerByUpdatingFrame:(CGRect)a3;
- (id)sharedScene;
@end

@implementation PFParallaxSpatialPhotoLayer

- (id)fileExtension
{
  v2 = objc_opt_class();

  return [v2 fileExtension];
}

- (BOOL)saveToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PFParallaxSpatialPhotoLayer *)self dataRepresentation];
  LOBYTE(a4) = [v7 writeToURL:v6 options:1 error:a4];

  return a4;
}

- (id)sharedScene
{
  WeakRetained = objc_loadWeakRetained(&self->_sharedScene);

  return WeakRetained;
}

- (NSData)dataRepresentation
{
  v2 = self;
  objc_sync_enter(v2);
  sceneData = v2->_sceneData;
  if (!sceneData)
  {
    scene = v2->_scene;
    if (scene)
    {
      v5 = [(PFParallaxSpatialPhotoScene *)scene dataRepresentation];
      v6 = v2->_sceneData;
      v2->_sceneData = v5;

      sceneData = v2->_sceneData;
    }

    else
    {
      sceneData = 0;
    }
  }

  v7 = sceneData;
  objc_sync_exit(v2);

  return v7;
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
  v8 = [PFParallaxSpatialPhotoLayer alloc];
  v9 = [(PFParallaxSpatialPhotoLayer *)self sceneData];
  v10 = [(PFParallaxSpatialPhotoLayer *)self scene];
  [(PFParallaxLayer *)self zPosition];
  v12 = v11;
  v13 = [(PFParallaxLayer *)self identifier];
  v14 = [(PFParallaxSpatialPhotoLayer *)v8 initWithSceneData:v9 scene:v10 frame:v13 zPosition:x identifier:y, width, height, v12];

  return v14;
}

- (PFParallaxSpatialPhotoLayer)initWithSceneData:(id)a3 scene:(id)a4 frame:(CGRect)a5 zPosition:(double)a6 identifier:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a3;
  v16 = a4;
  v24.receiver = self;
  v24.super_class = PFParallaxSpatialPhotoLayer;
  v17 = [(PFParallaxLayer *)&v24 initWithFrame:a7 zPosition:x identifier:y, width, height, a6];
  sceneData = v17->_sceneData;
  v17->_sceneData = v15;
  v19 = v15;

  scene = v17->_scene;
  v17->_scene = v16;
  v21 = v16;

  v22 = [(PFParallaxSpatialPhotoScene *)v21 spatialPhotoScene];

  objc_storeWeak(&v17->_sharedScene, v22);
  return v17;
}

@end