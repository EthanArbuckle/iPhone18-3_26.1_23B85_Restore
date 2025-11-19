@interface OZFxPlug3DAPI
- (id)cameraMatrixAtTime:(double)a3;
- (id)layerMatrixAtTime:(double)a3;
- (id)worldToEyeMatrix;
- (id)worldToFilmMatrix;
- (id)worldToLayerMatrix;
- (id)worldToObjectMatrix;
- (void)_setCameraMatrix:(PCMatrix44Tmpl<double> *)a3;
- (void)_setLayerMatrix:(PCMatrix44Tmpl<double> *)a3;
- (void)_setWorldToEyeMatrix:(PCMatrix44Tmpl<double> *)a3;
- (void)_setWorldToFilmMatrix:(PCMatrix44Tmpl<double> *)a3;
- (void)_setWorldToLayerMatrix:(PCMatrix44Tmpl<double> *)a3;
- (void)_setWorldToObjectMatrix:(PCMatrix44Tmpl<double> *)a3;
@end

@implementation OZFxPlug3DAPI

- (void)_setCameraMatrix:(PCMatrix44Tmpl<double> *)a3
{
  v4 = get3DAPIData();
  if (v4 != a3)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v4->var0[0][j] = a3->var0[0][j];
      }

      v4 = (v4 + 32);
      a3 = (a3 + 32);
    }
  }
}

- (void)_setWorldToFilmMatrix:(PCMatrix44Tmpl<double> *)a3
{
  v4 = (get3DAPIData() + 128);
  if (v4 != a3)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v4->var0[0][j] = a3->var0[0][j];
      }

      v4 = (v4 + 32);
      a3 = (a3 + 32);
    }
  }
}

- (void)_setLayerMatrix:(PCMatrix44Tmpl<double> *)a3
{
  v4 = (get3DAPIData() + 256);
  if (v4 != a3)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v4->var0[0][j] = a3->var0[0][j];
      }

      v4 = (v4 + 32);
      a3 = (a3 + 32);
    }
  }
}

- (void)_setWorldToLayerMatrix:(PCMatrix44Tmpl<double> *)a3
{
  v4 = (get3DAPIData() + 384);
  if (v4 != a3)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v4->var0[0][j] = a3->var0[0][j];
      }

      v4 = (v4 + 32);
      a3 = (a3 + 32);
    }
  }
}

- (void)_setWorldToObjectMatrix:(PCMatrix44Tmpl<double> *)a3
{
  v4 = (get3DAPIData() + 512);
  if (v4 != a3)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v4->var0[0][j] = a3->var0[0][j];
      }

      v4 = (v4 + 32);
      a3 = (a3 + 32);
    }
  }
}

- (void)_setWorldToEyeMatrix:(PCMatrix44Tmpl<double> *)a3
{
  v4 = (get3DAPIData() + 640);
  if (v4 != a3)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v4->var0[0][j] = a3->var0[0][j];
      }

      v4 = (v4 + 32);
      a3 = (a3 + 32);
    }
  }
}

- (id)cameraMatrixAtTime:(double)a3
{
  v3 = get3DAPIData();
  v4 = MEMORY[0x277CBEA90];

  return [v4 dataWithBytes:v3 length:128];
}

- (id)worldToFilmMatrix
{
  v2 = get3DAPIData() + 128;
  v3 = MEMORY[0x277CBEA90];

  return [v3 dataWithBytes:v2 length:128];
}

- (id)layerMatrixAtTime:(double)a3
{
  v3 = get3DAPIData() + 256;
  v4 = MEMORY[0x277CBEA90];

  return [v4 dataWithBytes:v3 length:128];
}

- (id)worldToLayerMatrix
{
  v2 = get3DAPIData() + 384;
  v3 = MEMORY[0x277CBEA90];

  return [v3 dataWithBytes:v2 length:128];
}

- (id)worldToObjectMatrix
{
  v2 = get3DAPIData() + 512;
  v3 = MEMORY[0x277CBEA90];

  return [v3 dataWithBytes:v2 length:128];
}

- (id)worldToEyeMatrix
{
  v2 = get3DAPIData() + 640;
  v3 = MEMORY[0x277CBEA90];

  return [v3 dataWithBytes:v2 length:128];
}

@end