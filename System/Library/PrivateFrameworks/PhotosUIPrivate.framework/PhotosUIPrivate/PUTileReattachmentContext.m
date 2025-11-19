@interface PUTileReattachmentContext
- (PUDisplayVelocity)velocityForTileController:(id)a3;
- (void)setVelocity:(PUDisplayVelocity)a3 forTileController:(id)a4;
@end

@implementation PUTileReattachmentContext

- (void)setVelocity:(PUDisplayVelocity)a3 forTileController:(id)a4
{
  rotation = a3.rotation;
  scale = a3.scale;
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v11 = [(PUTileReattachmentContext *)self _tileControllerVelocities];
  if (!v11)
  {
    v11 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    objc_storeStrong(&self->__tileControllerVelocities, v11);
  }

  v10 = [MEMORY[0x1E696B098] pu_valueWithDisplayVelocity:{x, y, scale, rotation}];
  [v11 setObject:v10 forKey:v9];
}

- (PUDisplayVelocity)velocityForTileController:(id)a3
{
  v4 = a3;
  v5 = [(PUTileReattachmentContext *)self _tileControllerVelocities];
  v6 = [v5 objectForKey:v4];

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