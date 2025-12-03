@interface PUTileReattachmentContext
- (PUDisplayVelocity)velocityForTileController:(id)controller;
- (void)setVelocity:(PUDisplayVelocity)velocity forTileController:(id)controller;
@end

@implementation PUTileReattachmentContext

- (void)setVelocity:(PUDisplayVelocity)velocity forTileController:(id)controller
{
  rotation = velocity.rotation;
  scale = velocity.scale;
  y = velocity.y;
  x = velocity.x;
  controllerCopy = controller;
  _tileControllerVelocities = [(PUTileReattachmentContext *)self _tileControllerVelocities];
  if (!_tileControllerVelocities)
  {
    _tileControllerVelocities = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    objc_storeStrong(&self->__tileControllerVelocities, _tileControllerVelocities);
  }

  v10 = [MEMORY[0x1E696B098] pu_valueWithDisplayVelocity:{x, y, scale, rotation}];
  [_tileControllerVelocities setObject:v10 forKey:controllerCopy];
}

- (PUDisplayVelocity)velocityForTileController:(id)controller
{
  controllerCopy = controller;
  _tileControllerVelocities = [(PUTileReattachmentContext *)self _tileControllerVelocities];
  v6 = [_tileControllerVelocities objectForKey:controllerCopy];

  if (v6)
  {
    [v6 pu_displayVelocityValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
    v8 = 0.0;
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.rotation = v18;
  result.scale = v17;
  result.y = v16;
  result.x = v15;
  return result;
}

@end