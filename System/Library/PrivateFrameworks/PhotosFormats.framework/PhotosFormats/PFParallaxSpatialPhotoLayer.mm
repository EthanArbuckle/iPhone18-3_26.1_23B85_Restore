@interface PFParallaxSpatialPhotoLayer
- (BOOL)saveToURL:(id)l error:(id *)error;
- (CGSize)pixelSize;
- (NSData)dataRepresentation;
- (PFParallaxSpatialPhotoLayer)initWithSceneData:(id)data scene:(id)scene frame:(CGRect)frame zPosition:(double)position identifier:(id)identifier;
- (id)fileExtension;
- (id)layerByUpdatingFrame:(CGRect)frame;
- (id)sharedScene;
@end

@implementation PFParallaxSpatialPhotoLayer

- (id)fileExtension
{
  v2 = objc_opt_class();

  return [v2 fileExtension];
}

- (BOOL)saveToURL:(id)l error:(id *)error
{
  lCopy = l;
  dataRepresentation = [(PFParallaxSpatialPhotoLayer *)self dataRepresentation];
  LOBYTE(error) = [dataRepresentation writeToURL:lCopy options:1 error:error];

  return error;
}

- (id)sharedScene
{
  WeakRetained = objc_loadWeakRetained(&self->_sharedScene);

  return WeakRetained;
}

- (NSData)dataRepresentation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sceneData = selfCopy->_sceneData;
  if (!sceneData)
  {
    scene = selfCopy->_scene;
    if (scene)
    {
      dataRepresentation = [(PFParallaxSpatialPhotoScene *)scene dataRepresentation];
      v6 = selfCopy->_sceneData;
      selfCopy->_sceneData = dataRepresentation;

      sceneData = selfCopy->_sceneData;
    }

    else
    {
      sceneData = 0;
    }
  }

  v7 = sceneData;
  objc_sync_exit(selfCopy);

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

- (id)layerByUpdatingFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [PFParallaxSpatialPhotoLayer alloc];
  sceneData = [(PFParallaxSpatialPhotoLayer *)self sceneData];
  scene = [(PFParallaxSpatialPhotoLayer *)self scene];
  [(PFParallaxLayer *)self zPosition];
  v12 = v11;
  identifier = [(PFParallaxLayer *)self identifier];
  v14 = [(PFParallaxSpatialPhotoLayer *)v8 initWithSceneData:sceneData scene:scene frame:identifier zPosition:x identifier:y, width, height, v12];

  return v14;
}

- (PFParallaxSpatialPhotoLayer)initWithSceneData:(id)data scene:(id)scene frame:(CGRect)frame zPosition:(double)position identifier:(id)identifier
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  dataCopy = data;
  sceneCopy = scene;
  v24.receiver = self;
  v24.super_class = PFParallaxSpatialPhotoLayer;
  position = [(PFParallaxLayer *)&v24 initWithFrame:identifier zPosition:x identifier:y, width, height, position];
  sceneData = position->_sceneData;
  position->_sceneData = dataCopy;
  v19 = dataCopy;

  scene = position->_scene;
  position->_scene = sceneCopy;
  v21 = sceneCopy;

  spatialPhotoScene = [(PFParallaxSpatialPhotoScene *)v21 spatialPhotoScene];

  objc_storeWeak(&position->_sharedScene, spatialPhotoScene);
  return position;
}

@end